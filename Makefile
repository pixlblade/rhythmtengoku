#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

CPP := $(CC) -E
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -I . -iquote include -nostdinc -undef

include $(DEVKITARM)/base_rules

#include $(DEVKITARM)/gba_rules
CROSS := arm-none-eabi-
OBJCOPY := $(CROSS)objcopy
LD := $(CROSS)ld
AS := $(CROSS)as
CC1 := tools/agbcc/bin/agbcc
CFLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm


#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# INCLUDES is a list of directories containing extra header files
# DATA is a list of directories containing binary data
# GRAPHICS is a list of directories containing files to be processed by grit
#
# All directories are specified relative to the project directory where
# the makefile is found
#
#---------------------------------------------------------------------------------
TARGET		:= rhythmtengoku
BUILD		:= build
SOURCES		:= src
ASM         := asm
INCLUDES	:= include
DATA		:= data
BIN		    := bin
AUDIO		:= audio
MUSIC		:= $(AUDIO)/music
SFX         := $(AUDIO)/sfx
BUILD_DIRS  := $(BUILD) $(BUILD)/$(DATA) $(BUILD)/$(ASM) $(BUILD)/$(SOURCES) $(BUILD)/$(BIN) $(BUILD)/$(MUSIC) $(BUILD)/$(SFX)
LD_SCRIPT   := rt.ld

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
#ARCH	:=	-mthumb -mthumb-interwork
#
#CFLAGS	:=	-g -Wall -O2\
#		-mcpu=arm7tdmi -mtune=arm7tdmi\
#		$(ARCH)
#
#CFLAGS	+=	$(INCLUDE)
#
#CXXFLAGS	:=	$(CFLAGS) -fno-rtti -fno-exceptions
#
#ASFLAGS	:=	-g $(ARCH)
#LDFLAGS	=	-g $(ARCH) -Wl,-Map,$(notdir $*.map)

#---------------------------------------------------------------------------------
# any extra libraries we wish to link with the project
#---------------------------------------------------------------------------------
#LIBS	:= -lmm -lgba


#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
#LIBDIRS	:=	$(LIBGBA)

#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------


#ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

export DEPSDIR	:=	$(CURDIR)/$(BUILD)

CFILES		:=	$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.c))  $(foreach dir,$(AUDIO),$(wildcard $(dir)/*.c))
CPPFILES	:=	$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.cpp))
SFILES		:=	$(foreach dir,$(ASM),$(wildcard $(dir)/*.s)) $(foreach dir,$(DATA),$(wildcard $(dir)/*.s))
BINFILES	:=	$(foreach dir,$(BIN),$(wildcard $(dir)/*.bin)) $(foreach dir,$(MUSIC),$(wildcard $(dir)/*.mid))
WAVFILES    :=  $(foreach dir,$(SFX),$(wildcard $(dir)/*.wav))

export OFILES_BIN := $(addprefix $(BUILD)/,$(addsuffix .o,$(BINFILES))) $(addprefix $(BUILD)/,$(WAVFILES:.wav=.pcm.o))

export OFILES_SOURCES := $(addprefix $(BUILD)/,$(addsuffix .o,$(SFILES))) $(addprefix $(BUILD)/,$(addsuffix .o,$(CFILES)))

export OFILES := $(OFILES_BIN) $(OFILES_SOURCES)

export INCLUDE	:=	-I $(foreach dir,$(INCLUDES),$(wildcard $(dir)/*.h)) \
					-I $(foreach dir,$(LIBDIRS),-I $(dir)/include) \
					-I $(CURDIR)/$(BUILD)

#export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

ifeq (,$(wildcard baserom.gba))
    $(error No ROM provided. Please place an unmodified ROM named "baserom.gba" in the root folder)
endif

ifneq ($(shell sha1sum -t baserom.gba), 67f8adacff79c15d028fffd90de3a77d9ad0602d  baserom.gba)
    $(error Provided ROM is not correct)
endif

.PHONY: default clean
.SECONDARY:

#---------------------------------------------------------------------------------
default: $(OUTPUT).gba
	@diff baserom.gba $(OUTPUT).gba && (echo "$(TARGET).gba: OK") || (echo "The build succeeded, but did not match the official ROM.")

#---------------------------------------------------------------------------------
clean:
	@echo clean ...
	@rm -fr $(BUILD)


#---------------------------------------------------------------------------------


#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(BUILD_DIRS):
	@echo "Creating /$@"
	@mkdir -p $@

$(OUTPUT).gba	:	$(OUTPUT).elf
	@$(OBJCOPY) --pad-to=0x1000000 --gap-fill=0x00 -O binary $< $@
	@echo "ROM Assembled!"

$(OUTPUT).elf	:	$(OFILES)
	@echo "Building ROM..."
	@$(LD) $(OFILES) tools/agbcc/lib/libgcc.a -T $(LD_SCRIPT) -Map $(@:.elf=.map) -o $@


# Binary data
$(BUILD)/%.bin.o	$(BUILD)/%.bin.h :	%.bin | $(BUILD_DIRS)
	@echo "Copying $< to $<.o"
	@bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o
    
# MIDI files
$(BUILD)/%.mid.o	$(BUILD)/%.mid.h :	%.mid | $(BUILD_DIRS)
	@echo "Copying $<"
	@bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# WAV files
$(BUILD)/%.pcm.o	$(BUILD)/%.pcm.h :	$(BUILD)/%.pcm | $(BUILD_DIRS)
	@bin2s -a 4 -H $<.h $< | $(AS) -o $<.o

$(BUILD)/%.pcm : %.wav | $(BUILD_DIRS)
	@echo "Converting $< to raw PCM audio"
	@ffmpeg -y -loglevel quiet -i $< -f s8 $@

# C files
$(BUILD)/%.c.o : %.c | $(BUILD_DIRS)
	@echo "Compiling $< to $@"
	@$(CPP) $(CPPFLAGS) $< -o $(BUILD)/$*.i
	@$(CC1) $(CFLAGS) $(BUILD)/$*.i -o $(BUILD)/$*.s
	@$(AS) -MD  $(BUILD)/$*.d -march=armv4t -o $@ $(BUILD)/$*.s

# ASM files
$(BUILD)/%.s.o : %.s | $(BUILD_DIRS)
	@echo "Assembling $< to $(basename $<).o"
	@$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $<

-include $(DEPSDIR)/*.d
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
