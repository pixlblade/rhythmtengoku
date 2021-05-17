.section .text
.syntax unified

.include "include/gba.inc"

glabel D_0804f300
@ Used in boot.s for interrupt jumptable
/* 0804f300 */ .word 0x08049144 + 1 @ INTERRUPT_DMA2
/* 0804f304 */ .word (func_08001380 + 1) @ INTERRUPT_VBLANK
/* 0804f308 */ .word (func_080091a4 + 1) @ INTERRUPT_HBLANK
/* 0804f30c */ .word (func_08009268 + 1) @ INTERRUPT_VCOUNT
/* 0804f310 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER0
/* 0804f314 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER1
/* 0804f318 */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER2
/* 0804f31c */ .word (func_080001f4_stub + 1) @ INTERRUPT_TIMER3
/* 0804f320 */ .word (func_080001f4_stub + 1) @ INTERRUPT_COMM
/* 0804f324 */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA0
/* 0804f328 */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA1
/* 0804f32c */ .word (func_080001f4_stub + 1) @ INTERRUPT_DMA3
/* 0804f330 */ .word (func_080001f4_stub + 1) @ INTERRUPT_BUTTON
/* 0804f334 */ .word (func_080001f4_stub + 1)
@ above is dma'd to D_03004460

/* 0804f338 */
.asciz "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
.balign 4, 0

glabel D_0804f370
.asciz "＿"
.balign 4, 0

glabel D_0804f374
.asciz "！"
.balign 4, 0

glabel D_0804f378
.asciz "？"
.balign 4, 0

glabel D_0804f37c
.asciz "，"
.balign 4, 0

glabel D_0804f380
.asciz "−"
.balign 4, 0

@ Notification from the Rhythm Reference Room
glabel D_0804f384
.asciz "　リズム資料室からお知らせ"
.balign 4, 0

@ You have recieved [_______]
glabel D_0804f3a0
.asciz "　　　　　　　　　　　　　　　　　　　　を入荷しました。"
.balign 4, 0

glabel D_0804f3dc
.asciz "「　"
.balign 4, 0

glabel D_0804f3e4
.asciz "　」"
.balign 4, 0

@ See you later.
/* 0804f3ec */
.asciz "\n\nでは　また。\n\n"
.balign 4, 0

@ I'm still unpacking boxes, so
@ please come back in a bit.
/* 0804f400 */
.asciz "\nいま　ちょっと　しこみ中なので\nまた　あとで　きてくださいね。\n\n"
.balign 4, 0

@ I'm pretty good at Rhythm Games.
@ If you need help, <come to the Cafe>.
/* 0804f444 */
.ascii "\nわたしに　できることが　あれば、\n"
.text_gold
.ascii "ちからに　なりますよ"
.text_normal
.asciz "。\n\n"
.balign 4, 0

@ This is the Cafe.
@ <When you can't finish a game>,
@ or when you just want a break,
@ please come here and relax.
/* 0804f488 */
.ascii "\nここは　いわゆる　キッサ店です。\nゲームが　"
.text_gold
.ascii "うまくできないとき"
.text_normal
.asciz "や\nつかれたときにでも　おいで下さい。"
.balign 4, 0

@ Welcome. This is your
@ first time here, isn't it?
/* 0804f4f4 */
.asciz "\nいらっしゃいませ。\nこちらに　来たのは　はじめてですね？\n\n"
.balign 4, 0

@ Come back in a while!
/* 0804f530 */
.asciz "\n\nしばらく　してから　きてね〜。\n\n"
.balign 4, 0

@ Don't let it frustrate you.
@ You're supposed to enjoy yourself.
/* 0804f554 */
.asciz "\nあまり　ムキに　ならずに\n楽しんで下さいね…\n\n"
.balign 4, 0

@ Just keep moving to the music,
@ and you'll have fun doing it, too.
/* 0804f584 */
.asciz "\nそれと同時に　音楽に　ノるのが\n楽しくなるとも思うんです。\n\n"
.balign 4, 0

@ You know, after a few tries
@ I think you'll manage that superb.
/* 0804f5c4 */
.asciz "\nなんどか　やるうちに　コツが\nつかめると　思いますよ。\n\n"
.balign 4, 0

@ Please try your best
@ for those Perfects.
@ See you soon!
/* 0804f600 */
.asciz "\nパーフェクト　がんばってくださいね。\nではまた。\n\n"
.balign 4, 0

@ Sorry for yelling. I just got
@ a little too excited there.
/* 0804f634 */
.asciz "\n大きい声をだして　すみません。\nなんだか　うれしかったものですから…\n\n"
.balign 4, 0

@ Please enjoy the
@ game. See you!
/* 0804f67c */
.asciz "\nゲーム　楽しんでくださいね。\nではまた。\n\n"
.balign 4, 0

@ Is that right? Loose lips can sink
@ friendships... please forgive me.
/* 0804f6a8 */
.asciz "\nそうですか。\nウワサ話なんて　してしまい\nしつれいしました。"
.balign 4, 0

@ Had enough, I suppose? Go
@ get some rest. I'll be waiting.
/* 0804f6e4 */
.asciz "\nおつかれでしょう？\n少し　休んでくださいネ。\nでは　また。"
.balign 4, 0

@ Wow. It looks like you've
@ mastered the game. Not bad.
/* 0804f720 */
.asciz "\nいやいや、しかし　なんと　まぁ\nコンプリートですか。\nやりますな〜。"
.balign 4, 0

@ Well, in celebration I've added
@ more songs to the studio.
/* 0804f764 */
.asciz "\nそうそう、\nお祝いに　ささやかでは　ありますが\nスタジオの曲をふやしておきました。\n"
.balign 4, 0

@ Oh, I'm so happy I think
@ I might just start to cry.
/* 0804f7b8 */
.asciz "\nなんだか　私も、すっごく\nうれしくって　ウルウルです…\n\n"
.balign 4, 0

@ You must have excellent rhythm
@ sense to have gotten this far.
/* 0804f7f4 */
.asciz "\nもう、そこまで　やりこんだら\nリズム感　かなり　良くなって\nいるでしょうネ！"
.balign 4, 0

@ <Unbelievable!!>
/* 0804f840 */
.text_large
.text_gold
.ascii "\n\nアンビリーバボー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Good job!!>
/* 0804f868 */
.text_large
.text_gold
.ascii "\n\nグッド　ジョブ!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Congratulations!!>
/* 0804f88c */
.text_large
.text_gold
.ascii "\n\nおめでとー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <You're good!!>
/* 0804f8ac */
.text_large
.text_gold
.ascii "\n\nやるじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Not too bad!!>
/* 0804f8d0 */
.text_large
.text_gold
.ascii "\n\nすごいじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <I was moved!>
/* 0804f8f8 */
.text_large
.text_gold
.ascii "\n\n感動したー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Good luck!>
/* 0804f918 */
.text_large
.text_gold
.ascii "\n\nグッド　ラック！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go! Go!>
/* 0804f93c */
.text_large
.text_gold
.ascii "\n\nイケイケー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Fight!>
/* 0804f95c */
.text_large
.text_gold
.ascii "\n\nファイトー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go for it!>
/* 0804f97c */
.text_large
.text_gold
.ascii "\n\nがんばれー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Maybe I should try a little harder
@ to get good at Rhythm Heaven...
/* 0804f99c */
.asciz "\n\n私も　ゲーム　してみようかな…\n\n"
.balign 4, 0

@ But you'll be a bit happier once you
@ find your Rhythm Sense, I'm sure.
/* 0804f9c0 */
.asciz "\nでも、リズム感が　よくなると　きっと　ちょっと　ハッピーに　なるんでしょうね。"
.balign 4, 0

@ Well, not that I'm very
@ aware of it myself.
/* 0804fa10 */
.asciz "\nま、私なんかは　あんまり\nいしきすることも　ないんですがね。\n\n"
.balign 4, 0

@ By the way, I wonder how
@ Rhythm Sense is for humans?
/* 0804fa50 */
.asciz "\nそれはそうと、リズム感って　人間にとって　どういうものなんでしょうねぇ。\n\n"
.balign 4, 0

@ Did you know that already?
@ Sorry if it seems like I'm
@ talking down to you.
@ Anyways, see you again.
/* 0804fa9c */
.asciz "\nまぁ、そういうモン　らしいです。\nテキトーで　ごめんなさいネ。\nでは　また。"
.balign 4, 0

@ Halfway between one clap
@ and the next (the "onbeats")
@ is called the "offbeat".
@ At least, so I understand.
/* 0804fae8 */
.asciz "\nその　手びょうしと手びょうしの\nちょうど　まん中のタイミングが\n「ウラ」なんだそうです。"
.balign 4, 0

@ How do I explain it...
@ Well, you naturally clap
@ your hands to music, right?
/* 0804fb40 */
.asciz "\nたとえば、音楽にあわせて\n自然に手をたたくとしますね。\n\n"
.balign 4, 0

@ Honestly, I wasn't sure
@ what it meant either.
@ So, the other day I looked
@ up the definition.
/* 0804fb7c */
.asciz "\nま、私も　それほど　詳しくはないので　アレなんですけどネ。\n\n"
.balign 4, 0

@ I hear the word "offbeat" often. 
@ Do you know what an "offbeat" is?
/* 0804fbbc */
.asciz "\nそれはそうと、この世界でよく聞く\n「ウラ」って　どういうものか\n知ってますか？"
.balign 4, 0

@ Well, nothing we can do but practice.
@ Take care for now.
/* 0804fc0c */
.asciz "\nま、ぼちぼち　やっていきましょうネ。\nでは　また。\n\n"
.balign 4, 0

@ Counting to yourself is hard, isn't it?
@ I always go too fast or lose my place.
/* 0804fc44 */
.asciz "\n空白を　カウントするってのは\nムズいもんですね〜。\n\n"
.balign 4, 0

@ I always have trouble with
@ the rests in the second test.
/* 0804fc7c */
.asciz "\nなかなか　どうして　２つめのテストが　うまく　できないんですヨ。\n\n"
.balign 4, 0

@ I just tried it again yesterday, but
@ 65 points seems to be my limit...
/* 0804fcc0 */
.asciz "\n私も　ときどき　やるんですけど\n６５点くらいが　限界なんですよねぇ…\n\n"
.balign 4, 0

@ Say, when was the last time you
@ checked your "Rhythm Test" score?
/* 0804fd08 */
.asciz "\nそれはそうと、\n最近　「リズム感測定」してます？\n\n"
.balign 4, 0

@ Maybe it's for the best.
@ For musical instruments, you
@ just have to keep at it.
@ You should try your best, too.
/* 0804fd3c */
.asciz "\nま、楽器は　すぐには　うまくならないでしょうし、じっくりと　つきあってみましょうかね…"
.balign 4, 0

@ You'll find it's hard to quit
@ once you start a lesson.
/* 0804fd94 */
.asciz "\nレッスンを　やりだすと　これが\nなかなか　やめられないんですよね〜。\n\n"
.balign 4, 0

@ The teacher is really strict.
@ I asked him for an easier
@ lesson, but he told me to
@ just keep on trying my best.
/* 0804fddc */
.asciz "\n先生が、こういうのは　すききらいが\nあるから、ムリして　しないでネって\n言ってましたけど、"
.balign 4, 0

@ I take lessons once a week, but
@ I don't really seem to improve.
/* 0804fe38 */
.asciz "\n私は　週に１回だけ　レッスンを\nうけてるんですが、なかなか\n上達しませんねぇ。"
.balign 4, 0

@ Let me ask... have you tried the
@ Drum Lessons in the Prize Corner?
/* 0804fe88 */
.asciz "\nそれはそうと、おまけコーナーの　ドラムレッスンって　やったことあります？\n\n"
.balign 4, 0

@ Learn from me, and don't forget
@ to take a break every so often.
@ Anyway, see you again.
/* 0804fed4 */
.asciz "\nこんど　ドライブでも　行きませんか？\nま、よかったら　ですけどネ。\nでは　また。"
.balign 4, 0

@ What? Oh, I was talking to myself.
@ It was a monologue... sorry.
/* 0804ff24 */
.asciz "\nあ、いや、こっちの話です。\nひとりごとですので…　すみませんね。\n\n"
.balign 4, 0

@ I was up all last night playing.
@ I just couldn't stop myself...
/* 0804ff68 */
.asciz "\n\nきのう　おそくまで　遊んでたからなぁ…\n\n"
.balign 4, 0

@ By the way, right now
@ I'm terribly tired...
/* 0804ff94 */
.asciz "\nそれはそうと、\nなんだか　今　すごく　ねむいのです…\n\n"
.balign 4, 0

@ All I can do is pour
@ the coffee, but... heh.
/* 0804ffcc */
.asciz "\n私は、コーヒーを　入れるだけしか\nできませんが…　ははは…\n\n"
.balign 4, 0

@ Well... he isn't a talkative person,
@ but you seem to be getting along.
/* 0805000c */
.asciz "\nま、まぁ　無口な方ですが\nなかよくしたいんじゃないですか？\n\n"
.balign 4, 0

@ Hm? You didn't order it?
@ Ah, I see. This is actually
@ for the guy next to you...
/* 0805004c */
.asciz "\nえ？　たのんでないって？　あぁ、これは　おとなりから　なんですが…\n\n"
.balign 4, 0

@ By the way, here's the
@ coffee you ordered.
/* 08050094 */
.asciz "\nそれはそうと、\nコーヒー　入りましたヨ。\n\n"
.balign 4, 0

@ Hey, you're a human, right?
@ Well, despite our species I still
@ hope that we can get along
/* 080500c0 */
.asciz "\nお客さんは　人間ですよね？\nまぁ、私は　犬ですが　これからも\nなかよくしてくださいネ〜。"
.balign 4, 0

@ When you get to be my age,
@ time really does seem to fly.
/* 08050118 */
.asciz "\nいやはや、このトシになると\n時がたつのが　はやいですねぇ。\n\n"
.balign 4, 0

@ I'm not one of those young pups,
@ either. I'm nine years old.
/* 08050158 */
.asciz "\nかれこれ　９才で　もう　けっこう\nいいトシなんです。\n\n"
.balign 4, 0

@ By the way, if you hadn't
@ noticed, I'm actually a dog.
/* 08050190 */
.asciz "\nそれはそうと、\n実は　私　犬なんですヨ。\n\n"
.balign 4, 0

@ Just don't think that good
@ rhythm makes you qualified
@ to be a doctor, ha ha ha.
/* 080501bc */
.asciz "\nまぁ、私には　詳しい理屈なんて\nわからないですけどネ。ははは。\n\n"
.balign 4, 0

@ Music is strange, isn't it?
@ It has this mysterious
@ power to heal the heart.
/* 08050200 */
.asciz "\n音楽って　フシギですよね〜。\nどうして　あんなにも　心を\nゆさぶるんでしょうね。"
.balign 4, 0

@ Taking out a good old record and
@ reminiscing about the past
@ always makes me feel better.
/* 08050250 */
.asciz "\nけっこう古いレコードなんかを　出してきて　当時を　思い出したりすると、ホッとするんです。"
.balign 4, 0

@ By the way, what do
@ you do when you're sad?
@ I always listen to music.
/* 080502ac */
.asciz "\nそれはそうと、悲しいときって\nどうしてますか？\n私は　もっぱら　音楽を　ききますねぇ。"
.balign 4, 0

@ Then again, if we gave speeches
@ with bongos or the neighbors
@ argued with trumpets, it'd get
@ noisy, don't you think? Ha ha ha.
/* 08050304 */
.asciz "\nでも　もし、ドラムで　選挙演説とか\nボンゴで　夫婦ゲンカとかあったら\nやかましそうですネ。ははは。"
.balign 4, 0

@ I learned it from another
@ customer, and now I want
@ to try it for myself.
/* 08050368 */
.asciz "\nこのまえ　いらっしゃった　お客さんが\n教えてくれたんですけど、ちょっと\n面白そうじゃないですか？"
.balign 4, 0

@ For example... you could play
@ a drum beat to ask "How are
@ you?" or say "Please come
@ visit!" even from far away.
/* 080503c8 */
.asciz "\nタイコの大きな音で　リズムをきざんで\nはなれた人と　コミュニケーションを\nとるらしいんですヨ。"
.balign 4, 0

@ By attaching words and meanings
@ to certain beats, you can have a
@ conversation without speaking.
/* 08050428 */
.asciz "\nリズムパターンに　言葉や　意味を　対応させて、会話をするんだそうです。\n\n"
.balign 4, 0

@ Say... did you know that you can
@ have a conversation with rhythm?
/* 08050474 */
.asciz "\nそれはそうと、リズムで\n会話ができるって　知ってました？\n\n"
.balign 4, 0

@ Oh... but if you already knew that,
@ I'm sorry if I bored you.
@ See you later.
/* 080504b0 */
.asciz "\nご存知でしたら　つまらない話でしたネ。\nすみません。ではまた。\n\n"
.balign 4, 0

@ Collecting lots of medals will
@ unlock all sorts of prizes that
@ you can play with. Please do your
@ best to collect them all!
/* 080504f4 */
.asciz "\nメダルを　集めると　いろいろな\nおまけが　遊べるようになるので\nがんばって　集めてくださいネ。"
.balign 4, 0

@ If you get a "Superb",
@ you'll even get a medal.
/* 08050554 */
.asciz "\nで、「ハイレベル」をとると\nメダルが　もらえるんです。\n\n"
.balign 4, 0

@ There are three grades, you know:
@ "Try Again", "OK" and "Superb".
/* 08050590 */
.asciz "\nゲームの成績は「やりなおし」「平凡」「ハイレベル」の３つが、あるんですヨ。\n\n"
.balign 4, 0

@ By the way, have you ever
@ gotten a "Superb" rating on a game?
/* 080505e0 */
.asciz "\nそれはそうと、ゲームで\n「ハイレベル」っていう成績を\nとったことありますか？"
.balign 4, 0

@ Oh! You're here, you're here!
@ I've been waiting, you know!!
glabel D_0805062c
.asciz "\nお、きたきた！\n待ってたヨ〜！！\n\n"
.balign 4, 0

@ Are you making progress?
@ Please do your best!
glabel D_08050650
.asciz "\nゲーム　すすんでますか？\nがんばって　くださいね〜。\n\n"
.balign 4, 0

@ Aren't you getting tired?
@ Don't forget to rest now and then.
glabel D_08050688
.asciz "\nだいぶ　つかれたのでは　ないですか？\nときどき　休んだほうが　よいですよ。\n\n"
.balign 4, 0

@ You've been at this a while,
@ haven't you? Please rest a little.
glabel D_080506d8
.asciz "\nかなり　はまってますねぇ。\nすこしは　休んでくださいね。\n\n"
.balign 4, 0

glabel D_08050714
.asciz ""
.balign 4, 0

glabel D_08050718
.asciz "\n"
.balign 4, 0
 
 @ Was that you on <
glabel D_0805071c
.asciz "そうそう、"
.balign 4, 0

glabel D_08050728
.text_gold
.asciz ""
.balign 4, 0

@ >?
glabel D_08050730
.text_normal
.asciz "で\n"
.balign 4, 0

@ I heard you just got a Perfect!?
glabel D_08050738
.asciz "パーフェクト　だしたんだって！？"
.balign 4, 0

@ You're still on ______
glabel D_0805075c
.asciz "そういえば、"
.balign 4, 0

@ Are you having trouble?
glabel D_0805076c
.asciz "行きづまってませんか？\n\n"
.balign 4, 0

@ Hmmm... is
glabel D_08050788
.asciz "う〜む…　"
.balign 4, 0

@ giving
glabel D_08050794
.text_normal
.asciz "に\n"
.balign 4, 0

@ you trouble earning that medal?
glabel D_0805079c
.asciz "てこずってるんですねぇ。\n\n"
.balign 4, 0

@ Rumor has it
glabel D_080507b8
.asciz "ウワサを　きいたんですけど、\n"
.balign 4, 0

@ was doing a perfect campaign.
glabel D_080507d8
.text_normal
.asciz "　ばかり\n"
.balign 4, 0

@ Weren't you playing it just now?
glabel D_080507e8
.asciz "してるみたいですね。"
.balign 4, 0

@ Ah! Wait, I remember!
glabel D_08050800
.asciz "\n\nあ、　ちょっと　思い出しました！\n\n"
.balign 4, 0

@ Hey, here's a tip!
@ Soon
glabel D_08050828
.asciz "そうそう、\nもうすぐ"
.balign 4, 0

@ is going
@ to be having a perfect campaign.
glabel D_0805083c
.text_normal
.asciz "で、\nパーフェクトキャンペーンを\nするそうですヨ。"
.balign 4, 0

@ Please keep on working hard.
@ I'll be here rooting for you~!
glabel D_08050874
.asciz "\nこれからも　がんばってね。\nおうえん　してるからね〜！\n\n"
.balign 4, 0

@ If you like, I could let you
@ <skip that game> if you want to...
@
@ "Please skip it."
@ "No, thank you."
glabel D_080508b0
.ascii "う〜ん、もし　よければ　なんだけどね、\n"
.text_gold
.ascii "進めるようにしておく"
.text_normal
.asciz "けど…？\n\n　　　　　　　　「おねがいします」\n　　　　　　　　「けっこうです」"
.balign 4, 0

@ <Leave it to me!>
glabel D_08050944
.ascii "\n\n"
.text_large
.text_gold
.ascii "まかせとき！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Oh, is that so?
@ You're determined to beat
@ it with your own strength.
@ Excellent!
glabel D_08050964
.asciz "そうですか。\nじぶんの　チカラで\nがんばるんですね。\nエライ！！"
.balign 4, 0

@ I hope the next game will go
@ much better for you.
@ Tell me about it next time.
glabel D_080509a4
.asciz "\n次のゲーム　どんなのでしょうね。\nうまくできると　いいね〜。\nではまた。"
.balign 4, 0

@ Well then, please
@ do your best!
glabel D_080509ec
.asciz "\n\nでは　がんばってくださいね〜。\n\n"
.balign 4, 0

@ Were you practicing for the
@ <Perfect Campaign>?
@
@         "That's right."
@         "Not right now."
glabel D_08050a10
.text_gold
.ascii "パーフェクト　キャンペーン"
.text_normal
.asciz "　に　そなえて　れんしゅうですか？\n\n　　　　　　　　「そうなんです」\n　　　　　　　　「ちがいますヨ」"
.balign 4, 0

@ Just try your best and
@ go get that Perfect!
glabel D_08050a98
.asciz "\nがんばって　パーフェクト、\nとってくださいネ！\n\n"
.balign 4, 0

@ At long last...
@ You have completed
@ the Perfect Campaign!
glabel D_08050acc
.asciz "\nとうとう、\nパーフェクト　キャンペーンを\nコンプリートしたんだって！？"
.balign 4, 0

@ <Crazy awesome!!>
glabel D_08050b14
.text_large
.text_gold
.ascii "\n\nめちゃすごーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Gameplay Logs
glabel D_08050b38
.asciz "ゲームプレイ履歴"
.balign 4, 0

glabel D_08050b4c
.asciz "  "
.balign 4, 0

glabel D_08050b50
.asciz "No. "
.balign 4, 0

glabel D_08050b58
.asciz "---"
.balign 4, 0

@ Average points: 
glabel D_08050b5c
.asciz "平均点 "
.balign 4, 0

@  (Out of 1000 points)
glabel D_08050b64
.asciz " (1000点満点)"
.balign 4, 0

@ Number of times played: 
glabel D_08050b74
.asciz "遊んだ回数 "
.balign 4, 0

@ (x) times
glabel D_08050b80
.asciz "回"
.balign 4, 0

@ (First OK: 
glabel D_08050b84
.asciz "  ( 初合格: "
.balign 4, 0

@ not yet
glabel D_08050b94
.asciz "まだ"
.balign 4, 0

@ th time
glabel D_08050b9c
.asciz "回目"
.balign 4, 0

@ First Superb: 
glabel D_08050ba4
.asciz "  初大合格: "
.balign 4, 0

@ not yet )
glabel D_08050bb4
.asciz "まだ )"
.balign 4, 0

@ th time )
glabel D_08050bbc
.asciz "回目 )"
.balign 4, 0

glabel D_08050bc4
.asciz ""
.balign 4, 0

glabel D_08050bc8
.asciz "???"
.balign 4, 0

glabel D_08050bcc
.asciz ""
.balign 4, 0

@ New Game
glabel D_08050bd0
.asciz "新ゲーム"
.balign 4, 0

glabel D_08050bdc
.asciz "ただいま「"
.balign 4, 0

@ Get a perfect on this
glabel D_08050be8
.asciz "」でパーフェクトを達成すると"
.balign 4, 0

@ game, and you'll recieve
glabel D_08050c08
.asciz "もれなく"
.balign 4, 0

glabel D_08050c14
.asciz "「"
.balign 4, 0

glabel D_08050c18
.asciz "」"
.balign 4, 0

@ 's song
glabel D_08050c1c
.asciz "の曲"
.balign 4, 0

@ recieved as a present!!
glabel D_08050c24
.asciz "をプレゼント!!"
.balign 4, 0

/* 08050c34 */ .word D_08c8ede0
/* 08050c38 */ .word 0x06000000
/* 08050c3c */ .word 0xffffffff
/* 08050c40 */ .word D_08c8f214
/* 08050c44 */ .word 0x0600e800
/* 08050c48 */ .word 0xffffffff
/* 08050c4c */ .word D_088fed8c
/* 08050c50 */ .word 0x03004b64
/* 08050c54 */ .word 0x00000140
/* 08050c58 */ .word 0x00000000
/* 08050c5c */ .word 0x00000000
/* 08050c60 */ .word 0x00000000

/* 08050c64 */ .word D_08c8ede0
/* 08050c68 */ .word 0x06000000
/* 08050c6c */ .word 0xffffffff
/* 08050c70 */ .word D_08c8f094
/* 08050c74 */ .word 0x0600e800
/* 08050c78 */ .word 0xffffffff
/* 08050c7c */ .word D_088fed8c
/* 08050c80 */ .word 0x03004b64
/* 08050c84 */ .word 0x00000140
/* 08050c88 */ .word 0x00000000
/* 08050c8c */ .word 0x00000000
/* 08050c90 */ .word 0x00000000

/* 08050c94 */ .word D_08c8ede0
/* 08050c98 */ .word 0x06000000
/* 08050c9c */ .word 0xffffffff
/* 08050ca0 */ .word D_08c8ef24
/* 08050ca4 */ .word 0x0600e800
/* 08050ca8 */ .word 0xffffffff
/* 08050cac */ .word D_088fed8c
/* 08050cb0 */ .word 0x03004b64
/* 08050cb4 */ .word 0x00000140
/* 08050cb8 */ .word 0x00000000
/* 08050cbc */ .word 0x00000000
/* 08050cc0 */ .word 0x00000000

/* 08050cc4 */ .word D_08c98078
/* 08050cc8 */ .word 0x06000000
/* 08050ccc */ .word 0xffffffff
/* 08050cd0 */ .word D_08c98448
/* 08050cd4 */ .word 0x0600e800
/* 08050cd8 */ .word 0xffffffff
/* 08050cdc */ .word D_088ff2ac
/* 08050ce0 */ .word 0x03004b64
/* 08050ce4 */ .word 0x00000140
/* 08050ce8 */ .word 0x00000000
/* 08050cec */ .word 0x00000000
/* 08050cf0 */ .word 0x00000000

/* 08050cf4 */ .word D_08c98078
/* 08050cf8 */ .word 0x06000000
/* 08050cfc */ .word 0xffffffff
/* 08050d00 */ .word D_08c982d0
/* 08050d04 */ .word 0x0600e800
/* 08050d08 */ .word 0xffffffff
/* 08050d0c */ .word D_088ff2ac
/* 08050d10 */ .word 0x03004b64
/* 08050d14 */ .word 0x00000140
/* 08050d18 */ .word 0x00000000
/* 08050d1c */ .word 0x00000000
/* 08050d20 */ .word 0x00000000

/* 08050d24 */ .word D_08c98078
/* 08050d28 */ .word 0x06000000
/* 08050d2c */ .word 0xffffffff
/* 08050d30 */ .word D_08c98188
/* 08050d34 */ .word 0x0600e800
/* 08050d38 */ .word 0xffffffff
/* 08050d3c */ .word D_088ff2ac
/* 08050d40 */ .word 0x03004b64
/* 08050d44 */ .word 0x00000140
/* 08050d48 */ .word 0x00000000
/* 08050d4c */ .word 0x00000000
/* 08050d50 */ .word 0x00000000

/* 08050d54 */ .word D_08c992d8
/* 08050d58 */ .word 0x06000000
/* 08050d5c */ .word 0xffffffff
/* 08050d60 */ .word D_08c996f4
/* 08050d64 */ .word 0x0600e800
/* 08050d68 */ .word 0xffffffff
/* 08050d6c */ .word D_088ff2ec
/* 08050d70 */ .word 0x03004b64
/* 08050d74 */ .word 0x00000140
/* 08050d78 */ .word 0x00000000
/* 08050d7c */ .word 0x00000000
/* 08050d80 */ .word 0x00000000

/* 08050d84 */ .word D_08c992d8
/* 08050d88 */ .word 0x06000000
/* 08050d8c */ .word 0xffffffff
/* 08050d90 */ .word 0x08c99580
/* 08050d94 */ .word 0x0600e800
/* 08050d98 */ .word 0xffffffff
/* 08050d9c */ .word D_088ff2ec
/* 08050da0 */ .word 0x03004b64
/* 08050da4 */ .word 0x00000140
/* 08050da8 */ .word 0x00000000
/* 08050dac */ .word 0x00000000
/* 08050db0 */ .word 0x00000000

/* 08050db4 */ .word D_08c992d8
/* 08050db8 */ .word 0x06000000
/* 08050dbc */ .word 0xffffffff
/* 08050dc0 */ .word 0x08c99420
/* 08050dc4 */ .word 0x0600e800
/* 08050dc8 */ .word 0xffffffff
/* 08050dcc */ .word D_088ff2ec
/* 08050dd0 */ .word 0x03004b64
/* 08050dd4 */ .word 0x00000140
/* 08050dd8 */ .word 0x00000000
/* 08050ddc */ .word 0x00000000
/* 08050de0 */ .word 0x00000000

/* 08050de4 */ .word 0x08c9f1e0
/* 08050de8 */ .word 0x06000000
/* 08050dec */ .word 0xffffffff
/* 08050df0 */ .word 0x08c9f4e4
/* 08050df4 */ .word 0x0600e800
/* 08050df8 */ .word 0xffffffff
/* 08050dfc */ .word D_088ff44c
/* 08050e00 */ .word 0x03004b64
/* 08050e04 */ .word 0x00000140
/* 08050e08 */ .word 0x00000000
/* 08050e0c */ .word 0x00000000
/* 08050e10 */ .word 0x00000000

/* 08050e14 */ .word 0x08c9f1e0
/* 08050e18 */ .word 0x06000000
/* 08050e1c */ .word 0xffffffff
/* 08050e20 */ .word 0x08c9f394
/* 08050e24 */ .word 0x0600e800
/* 08050e28 */ .word 0xffffffff
/* 08050e2c */ .word D_088ff44c
/* 08050e30 */ .word 0x03004b64
/* 08050e34 */ .word 0x00000140
/* 08050e38 */ .word 0x00000000
/* 08050e3c */ .word 0x00000000
/* 08050e40 */ .word 0x00000000

/* 08050e44 */ .word 0x08c9f1e0
/* 08050e48 */ .word 0x06000000
/* 08050e4c */ .word 0xffffffff
/* 08050e50 */ .word 0x08c9f2a0
/* 08050e54 */ .word 0x0600e800
/* 08050e58 */ .word 0xffffffff
/* 08050e5c */ .word D_088ff44c
/* 08050e60 */ .word 0x03004b64
/* 08050e64 */ .word 0x00000140
/* 08050e68 */ .word 0x00000000
/* 08050e6c */ .word 0x00000000
/* 08050e70 */ .word 0x00000000

/* 08050e74 */ .word 0x08c91cd0
/* 08050e78 */ .word 0x06000000
/* 08050e7c */ .word 0xffffffff
/* 08050e80 */ .word 0x08c92084
/* 08050e84 */ .word 0x0600e800
/* 08050e88 */ .word 0xffffffff
/* 08050e8c */ .word 0x088fee0c
/* 08050e90 */ .word 0x03004b64
/* 08050e94 */ .word 0x00000140
/* 08050e98 */ .word 0x00000000
/* 08050e9c */ .word 0x00000000
/* 08050ea0 */ .word 0x00000000

/* 08050ea4 */ .word 0x08c91cd0
/* 08050ea8 */ .word 0x06000000
/* 08050eac */ .word 0xffffffff
/* 08050eb0 */ .word 0x08c91f04
/* 08050eb4 */ .word 0x0600e800
/* 08050eb8 */ .word 0xffffffff
/* 08050ebc */ .word 0x088fee0c
/* 08050ec0 */ .word 0x03004b64
/* 08050ec4 */ .word 0x00000140
/* 08050ec8 */ .word 0x00000000
/* 08050ecc */ .word 0x00000000
/* 08050ed0 */ .word 0x00000000

/* 08050ed4 */ .word 0x08c91cd0
/* 08050ed8 */ .word 0x06000000
/* 08050edc */ .word 0xffffffff
/* 08050ee0 */ .word 0x08c91e20
/* 08050ee4 */ .word 0x0600e800
/* 08050ee8 */ .word 0xffffffff
/* 08050eec */ .word 0x088fee0c
/* 08050ef0 */ .word 0x03004b64
/* 08050ef4 */ .word 0x00000140
/* 08050ef8 */ .word 0x00000000
/* 08050efc */ .word 0x00000000
/* 08050f00 */ .word 0x00000000

/* 08050f04 */ .word 0x08c9582c
/* 08050f08 */ .word 0x06000000
/* 08050f0c */ .word 0xffffffff
/* 08050f10 */ .word 0x08c95c8c
/* 08050f14 */ .word 0x0600e800
/* 08050f18 */ .word 0xffffffff
/* 08050f1c */ .word 0x088ff04c
/* 08050f20 */ .word 0x03004b64
/* 08050f24 */ .word 0x00000140
/* 08050f28 */ .word 0x00000000
/* 08050f2c */ .word 0x00000000
/* 08050f30 */ .word 0x00000000

/* 08050f34 */ .word 0x08c9582c
/* 08050f38 */ .word 0x06000000
/* 08050f3c */ .word 0xffffffff
/* 08050f40 */ .word 0x08c95b24
/* 08050f44 */ .word 0x0600e800
/* 08050f48 */ .word 0xffffffff
/* 08050f4c */ .word 0x088ff04c
/* 08050f50 */ .word 0x03004b64
/* 08050f54 */ .word 0x00000140
/* 08050f58 */ .word 0x00000000
/* 08050f5c */ .word 0x00000000
/* 08050f60 */ .word 0x00000000

/* 08050f64 */ .word 0x08c9582c
/* 08050f68 */ .word 0x06000000
/* 08050f6c */ .word 0xffffffff
/* 08050f70 */ .word 0x08c959ac
/* 08050f74 */ .word 0x0600e800
/* 08050f78 */ .word 0xffffffff
/* 08050f7c */ .word 0x088ff04c
/* 08050f80 */ .word 0x03004b64
/* 08050f84 */ .word 0x00000140
/* 08050f88 */ .word 0x00000000
/* 08050f8c */ .word 0x00000000
/* 08050f90 */ .word 0x00000000

/* 08050f94 */ .word 0x08cbcbd8
/* 08050f98 */ .word 0x06000000
/* 08050f9c */ .word 0xffffffff
/* 08050fa0 */ .word 0x08cbcf98
/* 08050fa4 */ .word 0x0600e800
/* 08050fa8 */ .word 0xffffffff
/* 08050fac */ .word 0x088fff4c
/* 08050fb0 */ .word 0x03004b64
/* 08050fb4 */ .word 0x00000140
/* 08050fb8 */ .word 0x00000000
/* 08050fbc */ .word 0x00000000
/* 08050fc0 */ .word 0x00000000

/* 08050fc4 */ .word 0x08cbcbd8
/* 08050fc8 */ .word 0x06000000
/* 08050fcc */ .word 0xffffffff
/* 08050fd0 */ .word 0x08cbce60
/* 08050fd4 */ .word 0x0600e800
/* 08050fd8 */ .word 0xffffffff
/* 08050fdc */ .word 0x088fff4c
/* 08050fe0 */ .word 0x03004b64
/* 08050fe4 */ .word 0x00000140
/* 08050fe8 */ .word 0x00000000
/* 08050fec */ .word 0x00000000
/* 08050ff0 */ .word 0x00000000

/* 08050ff4 */ .word 0x08cbcbd8
/* 08050ff8 */ .word 0x06000000
/* 08050ffc */ .word 0xffffffff
/* 08051000 */ .word 0x08cbcd28
/* 08051004 */ .word 0x0600e800
/* 08051008 */ .word 0xffffffff
/* 0805100c */ .word 0x088fff4c
/* 08051010 */ .word 0x03004b64
/* 08051014 */ .word 0x00000140
/* 08051018 */ .word 0x00000000
/* 0805101c */ .word 0x00000000
/* 08051020 */ .word 0x00000000

/* 08051024 */ .word 0x08c93cfc
/* 08051028 */ .word 0x06000000
/* 0805102c */ .word 0xffffffff
/* 08051030 */ .word 0x08c94064
/* 08051034 */ .word 0x0600e800
/* 08051038 */ .word 0xffffffff
/* 0805103c */ .word 0x088ff02c
/* 08051040 */ .word 0x03004b64
/* 08051044 */ .word 0x00000140
/* 08051048 */ .word 0x00000000
/* 0805104c */ .word 0x00000000
/* 08051050 */ .word 0x00000000

/* 08051054 */ .word 0x08c93cfc
/* 08051058 */ .word 0x06000000
/* 0805105c */ .word 0xffffffff
/* 08051060 */ .word 0x08c93f48
/* 08051064 */ .word 0x0600e800
/* 08051068 */ .word 0xffffffff
/* 0805106c */ .word 0x088ff02c
/* 08051070 */ .word 0x03004b64
/* 08051074 */ .word 0x00000140
/* 08051078 */ .word 0x00000000
/* 0805107c */ .word 0x00000000
/* 08051080 */ .word 0x00000000

/* 08051084 */ .word 0x08c93cfc
/* 08051088 */ .word 0x06000000
/* 0805108c */ .word 0xffffffff
/* 08051090 */ .word 0x08c93e18
/* 08051094 */ .word 0x0600e800
/* 08051098 */ .word 0xffffffff
/* 0805109c */ .word 0x088ff02c
/* 080510a0 */ .word 0x03004b64
/* 080510a4 */ .word 0x00000140
/* 080510a8 */ .word 0x00000000
/* 080510ac */ .word 0x00000000
/* 080510b0 */ .word 0x00000000

/* 080510b4 */ .word 0x08cb28a4
/* 080510b8 */ .word 0x06000000
/* 080510bc */ .word 0xffffffff
/* 080510c0 */ .word 0x08cb2ccc
/* 080510c4 */ .word 0x0600e800
/* 080510c8 */ .word 0xffffffff
/* 080510cc */ .word 0x088ffc4c
/* 080510d0 */ .word 0x03004b64
/* 080510d4 */ .word 0x00000140
/* 080510d8 */ .word 0x00000000
/* 080510dc */ .word 0x00000000
/* 080510e0 */ .word 0x00000000

/* 080510e4 */ .word 0x08cb28a4
/* 080510e8 */ .word 0x06000000
/* 080510ec */ .word 0xffffffff
/* 080510f0 */ .word 0x08cb2b54
/* 080510f4 */ .word 0x0600e800
/* 080510f8 */ .word 0xffffffff
/* 080510fc */ .word 0x088ffc4c
/* 08051100 */ .word 0x03004b64
/* 08051104 */ .word 0x00000140
/* 08051108 */ .word 0x00000000
/* 0805110c */ .word 0x00000000
/* 08051110 */ .word 0x00000000

/* 08051114 */ .word 0x08cb28a4
/* 08051118 */ .word 0x06000000
/* 0805111c */ .word 0xffffffff
/* 08051120 */ .word 0x08cb2a08
/* 08051124 */ .word 0x0600e800
/* 08051128 */ .word 0xffffffff
/* 0805112c */ .word 0x088ffc4c
/* 08051130 */ .word 0x03004b64
/* 08051134 */ .word 0x00000140
/* 08051138 */ .word 0x00000000
/* 0805113c */ .word 0x00000000
/* 08051140 */ .word 0x00000000

/* 08051144 */ .word 0x08cb38ac
/* 08051148 */ .word 0x06000000
/* 0805114c */ .word 0xffffffff
/* 08051150 */ .word 0x08cb3c48
/* 08051154 */ .word 0x0600e800
/* 08051158 */ .word 0xffffffff
/* 0805115c */ .word 0x088ffc6c
/* 08051160 */ .word 0x03004b64
/* 08051164 */ .word 0x00000140
/* 08051168 */ .word 0x00000000
/* 0805116c */ .word 0x00000000
/* 08051170 */ .word 0x00000000

/* 08051174 */ .word 0x08cb38ac
/* 08051178 */ .word 0x06000000
/* 0805117c */ .word 0xffffffff
/* 08051180 */ .word 0x08cb3b10
/* 08051184 */ .word 0x0600e800
/* 08051188 */ .word 0xffffffff
/* 0805118c */ .word 0x088ffc6c
/* 08051190 */ .word 0x03004b64
/* 08051194 */ .word 0x00000140
/* 08051198 */ .word 0x00000000
/* 0805119c */ .word 0x00000000
/* 080511a0 */ .word 0x00000000

/* 080511a4 */ .word 0x08cb38ac
/* 080511a8 */ .word 0x06000000
/* 080511ac */ .word 0xffffffff
/* 080511b0 */ .word 0x08cb39d0
/* 080511b4 */ .word 0x0600e800
/* 080511b8 */ .word 0xffffffff
/* 080511bc */ .word 0x088ffc6c
/* 080511c0 */ .word 0x03004b64
/* 080511c4 */ .word 0x00000140
/* 080511c8 */ .word 0x00000000
/* 080511cc */ .word 0x00000000
/* 080511d0 */ .word 0x00000000

/* 080511d4 */ .word 0x08c89a70
/* 080511d8 */ .word 0x06000000
/* 080511dc */ .word 0xffffffff
/* 080511e0 */ .word 0x08c89dd4
/* 080511e4 */ .word 0x0600e800
/* 080511e8 */ .word 0xffffffff
/* 080511ec */ .word 0x088fe8cc
/* 080511f0 */ .word 0x03004b64
/* 080511f4 */ .word 0x00000140
/* 080511f8 */ .word 0x00000000
/* 080511fc */ .word 0x00000000
/* 08051200 */ .word 0x00000000

/* 08051204 */ .word 0x08c89a70
/* 08051208 */ .word 0x06000000
/* 0805120c */ .word 0xffffffff
/* 08051210 */ .word 0x08c89cb0
/* 08051214 */ .word 0x0600e800
/* 08051218 */ .word 0xffffffff
/* 0805121c */ .word 0x088fe8cc
/* 08051220 */ .word 0x03004b64
/* 08051224 */ .word 0x00000140
/* 08051228 */ .word 0x00000000
/* 0805122c */ .word 0x00000000
/* 08051230 */ .word 0x00000000

/* 08051234 */ .word 0x08c89a70
/* 08051238 */ .word 0x06000000
/* 0805123c */ .word 0xffffffff
/* 08051240 */ .word 0x08c89ba4
/* 08051244 */ .word 0x0600e800
/* 08051248 */ .word 0xffffffff
/* 0805124c */ .word 0x088fe8cc
/* 08051250 */ .word 0x03004b64
/* 08051254 */ .word 0x00000140
/* 08051258 */ .word 0x00000000
/* 0805125c */ .word 0x00000000
/* 08051260 */ .word 0x00000000

/* 08051264 */ .word 0x08c9a4d4
/* 08051268 */ .word 0x06000000
/* 0805126c */ .word 0xffffffff
/* 08051270 */ .word 0x08c9a890
/* 08051274 */ .word 0x0600e800
/* 08051278 */ .word 0xffffffff
/* 0805127c */ .word 0x088ff30c
/* 08051280 */ .word 0x03004b64
/* 08051284 */ .word 0x00000140
/* 08051288 */ .word 0x00000000
/* 0805128c */ .word 0x00000000
/* 08051290 */ .word 0x00000000

/* 08051294 */ .word 0x08c9a4d4
/* 08051298 */ .word 0x06000000
/* 0805129c */ .word 0xffffffff
/* 080512a0 */ .word 0x08c9a71c
/* 080512a4 */ .word 0x0600e800
/* 080512a8 */ .word 0xffffffff
/* 080512ac */ .word 0x088ff30c
/* 080512b0 */ .word 0x03004b64
/* 080512b4 */ .word 0x00000140
/* 080512b8 */ .word 0x00000000
/* 080512bc */ .word 0x00000000
/* 080512c0 */ .word 0x00000000

/* 080512c4 */ .word 0x08c9a4d4
/* 080512c8 */ .word 0x06000000
/* 080512cc */ .word 0xffffffff
/* 080512d0 */ .word 0x08c9a610
/* 080512d4 */ .word 0x0600e800
/* 080512d8 */ .word 0xffffffff
/* 080512dc */ .word 0x088ff30c
/* 080512e0 */ .word 0x03004b64
/* 080512e4 */ .word 0x00000140
/* 080512e8 */ .word 0x00000000
/* 080512ec */ .word 0x00000000
/* 080512f0 */ .word 0x00000000

/* 080512f4 */ .word 0x08c8ac68
/* 080512f8 */ .word 0x06000000
/* 080512fc */ .word 0xffffffff
/* 08051300 */ .word 0x08c8b14c
/* 08051304 */ .word 0x0600e800
/* 08051308 */ .word 0xffffffff
/* 0805130c */ .word 0x088feacc
/* 08051310 */ .word 0x03004b64
/* 08051314 */ .word 0x00000140
/* 08051318 */ .word 0x00000000
/* 0805131c */ .word 0x00000000
/* 08051320 */ .word 0x00000000

/* 08051324 */ .word 0x08c8ac68
/* 08051328 */ .word 0x06000000
/* 0805132c */ .word 0xffffffff
/* 08051330 */ .word 0x08c8afd0
/* 08051334 */ .word 0x0600e800
/* 08051338 */ .word 0xffffffff
/* 0805133c */ .word 0x088feacc
/* 08051340 */ .word 0x03004b64
/* 08051344 */ .word 0x00000140
/* 08051348 */ .word 0x00000000
/* 0805134c */ .word 0x00000000
/* 08051350 */ .word 0x00000000

/* 08051354 */ .word 0x08c8ac68
/* 08051358 */ .word 0x06000000
/* 0805135c */ .word 0xffffffff
/* 08051360 */ .word 0x08c8ae7c
/* 08051364 */ .word 0x0600e800
/* 08051368 */ .word 0xffffffff
/* 0805136c */ .word 0x088feacc
/* 08051370 */ .word 0x03004b64
/* 08051374 */ .word 0x00000140
/* 08051378 */ .word 0x00000000
/* 0805137c */ .word 0x00000000
/* 08051380 */ .word 0x00000000

/* 08051384 */ .word 0x08cb5fdc
/* 08051388 */ .word 0x06000000
/* 0805138c */ .word 0xffffffff
/* 08051390 */ .word 0x08cb6394
/* 08051394 */ .word 0x0600e800
/* 08051398 */ .word 0xffffffff
/* 0805139c */ .word 0x088ffcac
/* 080513a0 */ .word 0x03004b64
/* 080513a4 */ .word 0x00000140
/* 080513a8 */ .word 0x00000000
/* 080513ac */ .word 0x00000000
/* 080513b0 */ .word 0x00000000

/* 080513b4 */ .word 0x08cb5fdc
/* 080513b8 */ .word 0x06000000
/* 080513bc */ .word 0xffffffff
/* 080513c0 */ .word 0x08cb6244
/* 080513c4 */ .word 0x0600e800
/* 080513c8 */ .word 0xffffffff
/* 080513cc */ .word 0x088ffcac
/* 080513d0 */ .word 0x03004b64
/* 080513d4 */ .word 0x00000140
/* 080513d8 */ .word 0x00000000
/* 080513dc */ .word 0x00000000
/* 080513e0 */ .word 0x00000000

/* 080513e4 */ .word 0x08cb5fdc
/* 080513e8 */ .word 0x06000000
/* 080513ec */ .word 0xffffffff
/* 080513f0 */ .word 0x08cb60f0
/* 080513f4 */ .word 0x0600e800
/* 080513f8 */ .word 0xffffffff
/* 080513fc */ .word 0x088ffcac
/* 08051400 */ .word 0x03004b64
/* 08051404 */ .word 0x00000140
/* 08051408 */ .word 0x00000000
/* 0805140c */ .word 0x00000000
/* 08051410 */ .word 0x00000000

/* 08051414 */ .word 0x08cb7644
/* 08051418 */ .word 0x06000000
/* 0805141c */ .word 0xffffffff
/* 08051420 */ .word 0x08cb7ab8
/* 08051424 */ .word 0x0600e800
/* 08051428 */ .word 0xffffffff
/* 0805142c */ .word 0x088ffcec
/* 08051430 */ .word 0x03004b64
/* 08051434 */ .word 0x00000140
/* 08051438 */ .word 0x00000000
/* 0805143c */ .word 0x00000000
/* 08051440 */ .word 0x00000000

/* 08051444 */ .word 0x08cb7644
/* 08051448 */ .word 0x06000000
/* 0805144c */ .word 0xffffffff
/* 08051450 */ .word 0x08cb793c
/* 08051454 */ .word 0x0600e800
/* 08051458 */ .word 0xffffffff
/* 0805145c */ .word 0x088ffcec
/* 08051460 */ .word 0x03004b64
/* 08051464 */ .word 0x00000140
/* 08051468 */ .word 0x00000000
/* 0805146c */ .word 0x00000000
/* 08051470 */ .word 0x00000000

/* 08051474 */ .word 0x08cb7644
/* 08051478 */ .word 0x06000000
/* 0805147c */ .word 0xffffffff
/* 08051480 */ .word 0x08cb77bc
/* 08051484 */ .word 0x0600e800
/* 08051488 */ .word 0xffffffff
/* 0805148c */ .word 0x088ffcec
/* 08051490 */ .word 0x03004b64
/* 08051494 */ .word 0x00000140
/* 08051498 */ .word 0x00000000
/* 0805149c */ .word 0x00000000
/* 080514a0 */ .word 0x00000000

/* 080514a4 */ .word 0x08c9d2e8
/* 080514a8 */ .word 0x06000000
/* 080514ac */ .word 0xffffffff
/* 080514b0 */ .word 0x08c9d740
/* 080514b4 */ .word 0x0600e800
/* 080514b8 */ .word 0xffffffff
/* 080514bc */ .word 0x088ff40c
/* 080514c0 */ .word 0x03004b64
/* 080514c4 */ .word 0x00000140
/* 080514c8 */ .word 0x00000000
/* 080514cc */ .word 0x00000000
/* 080514d0 */ .word 0x00000000

/* 080514d4 */ .word 0x08c9d2e8
/* 080514d8 */ .word 0x06000000
/* 080514dc */ .word 0xffffffff
/* 080514e0 */ .word 0x08c9d5c0
/* 080514e4 */ .word 0x0600e800
/* 080514e8 */ .word 0xffffffff
/* 080514ec */ .word 0x088ff40c
/* 080514f0 */ .word 0x03004b64
/* 080514f4 */ .word 0x00000140
/* 080514f8 */ .word 0x00000000
/* 080514fc */ .word 0x00000000
/* 08051500 */ .word 0x00000000

/* 08051504 */ .word 0x08c9d2e8
/* 08051508 */ .word 0x06000000
/* 0805150c */ .word 0xffffffff
/* 08051510 */ .word 0x08c9d450
/* 08051514 */ .word 0x0600e800
/* 08051518 */ .word 0xffffffff
/* 0805151c */ .word 0x088ff40c
/* 08051520 */ .word 0x03004b64
/* 08051524 */ .word 0x00000140
/* 08051528 */ .word 0x00000000
/* 0805152c */ .word 0x00000000
/* 08051530 */ .word 0x00000000

/* 08051534 */ .word 0x08c9e338
/* 08051538 */ .word 0x06000000
/* 0805153c */ .word 0xffffffff
/* 08051540 */ .word 0x08c9e744
/* 08051544 */ .word 0x0600e800
/* 08051548 */ .word 0xffffffff
/* 0805154c */ .word 0x088ff42c
/* 08051550 */ .word 0x03004b64
/* 08051554 */ .word 0x00000140
/* 08051558 */ .word 0x00000000
/* 0805155c */ .word 0x00000000
/* 08051560 */ .word 0x00000000

/* 08051564 */ .word 0x08c9e338
/* 08051568 */ .word 0x06000000
/* 0805156c */ .word 0xffffffff
/* 08051570 */ .word 0x08c9e5c4
/* 08051574 */ .word 0x0600e800
/* 08051578 */ .word 0xffffffff
/* 0805157c */ .word 0x088ff42c
/* 08051580 */ .word 0x03004b64
/* 08051584 */ .word 0x00000140
/* 08051588 */ .word 0x00000000
/* 0805158c */ .word 0x00000000
/* 08051590 */ .word 0x00000000

/* 08051594 */ .word 0x08c9e338
/* 08051598 */ .word 0x06000000
/* 0805159c */ .word 0xffffffff
/* 080515a0 */ .word 0x08c9e484
/* 080515a4 */ .word 0x0600e800
/* 080515a8 */ .word 0xffffffff
/* 080515ac */ .word 0x088ff42c
/* 080515b0 */ .word 0x03004b64
/* 080515b4 */ .word 0x00000140
/* 080515b8 */ .word 0x00000000
/* 080515bc */ .word 0x00000000
/* 080515c0 */ .word 0x00000000

/* 080515c4 */ .word 0x08cbdd28
/* 080515c8 */ .word 0x06000000
/* 080515cc */ .word 0xffffffff
/* 080515d0 */ .word 0x08cbe0f8
/* 080515d4 */ .word 0x0600e800
/* 080515d8 */ .word 0xffffffff
/* 080515dc */ .word 0x088fff6c
/* 080515e0 */ .word 0x03004b64
/* 080515e4 */ .word 0x00000140
/* 080515e8 */ .word 0x00000000
/* 080515ec */ .word 0x00000000
/* 080515f0 */ .word 0x00000000

/* 080515f4 */ .word 0x08cbdd28
/* 080515f8 */ .word 0x06000000
/* 080515fc */ .word 0xffffffff
/* 08051600 */ .word 0x08cbdf84
/* 08051604 */ .word 0x0600e800
/* 08051608 */ .word 0xffffffff
/* 0805160c */ .word 0x088fff6c
/* 08051610 */ .word 0x03004b64
/* 08051614 */ .word 0x00000140
/* 08051618 */ .word 0x00000000
/* 0805161c */ .word 0x00000000
/* 08051620 */ .word 0x00000000

/* 08051624 */ .word 0x08cbdd28
/* 08051628 */ .word 0x06000000
/* 0805162c */ .word 0xffffffff
/* 08051630 */ .word 0x08cbde58
/* 08051634 */ .word 0x0600e800
/* 08051638 */ .word 0xffffffff
/* 0805163c */ .word 0x088fff6c
/* 08051640 */ .word 0x03004b64
/* 08051644 */ .word 0x00000140
/* 08051648 */ .word 0x00000000
/* 0805164c */ .word 0x00000000
/* 08051650 */ .word 0x00000000

/* 08051654 */ .word 0x08ca23c0
/* 08051658 */ .word 0x06000000
/* 0805165c */ .word 0xffffffff
/* 08051660 */ .word 0x08ca29f0
/* 08051664 */ .word 0x0600e800
/* 08051668 */ .word 0xffffffff
/* 0805166c */ .word 0x088ff5cc
/* 08051670 */ .word 0x03004b64
/* 08051674 */ .word 0x00000140
/* 08051678 */ .word 0x00000000
/* 0805167c */ .word 0x00000000
/* 08051680 */ .word 0x00000000

/* 08051684 */ .word 0x08ca23c0
/* 08051688 */ .word 0x06000000
/* 0805168c */ .word 0xffffffff
/* 08051690 */ .word 0x08ca27d0
/* 08051694 */ .word 0x0600e800
/* 08051698 */ .word 0xffffffff
/* 0805169c */ .word 0x088ff5cc
/* 080516a0 */ .word 0x03004b64
/* 080516a4 */ .word 0x00000140
/* 080516a8 */ .word 0x00000000
/* 080516ac */ .word 0x00000000
/* 080516b0 */ .word 0x00000000

/* 080516b4 */ .word 0x08ca23c0
/* 080516b8 */ .word 0x06000000
/* 080516bc */ .word 0xffffffff
/* 080516c0 */ .word 0x08ca25b4
/* 080516c4 */ .word 0x0600e800
/* 080516c8 */ .word 0xffffffff
/* 080516cc */ .word 0x088ff5cc
/* 080516d0 */ .word 0x03004b64
/* 080516d4 */ .word 0x00000140
/* 080516d8 */ .word 0x00000000
/* 080516dc */ .word 0x00000000
/* 080516e0 */ .word 0x00000000

/* 080516e4 */ .word 0x08c96e80
/* 080516e8 */ .word 0x06000000
/* 080516ec */ .word 0xffffffff
/* 080516f0 */ .word 0x08c972dc
/* 080516f4 */ .word 0x0600e800
/* 080516f8 */ .word 0xffffffff
/* 080516fc */ .word 0x088ff0ac
/* 08051700 */ .word 0x03004b64
/* 08051704 */ .word 0x00000140
/* 08051708 */ .word 0x00000000
/* 0805170c */ .word 0x00000000
/* 08051710 */ .word 0x00000000

/* 08051714 */ .word 0x08c96e80
/* 08051718 */ .word 0x06000000
/* 0805171c */ .word 0xffffffff
/* 08051720 */ .word 0x08c9715c
/* 08051724 */ .word 0x0600e800
/* 08051728 */ .word 0xffffffff
/* 0805172c */ .word 0x088ff0ac
/* 08051730 */ .word 0x03004b64
/* 08051734 */ .word 0x00000140
/* 08051738 */ .word 0x00000000
/* 0805173c */ .word 0x00000000
/* 08051740 */ .word 0x00000000

/* 08051744 */ .word 0x08c96e80
/* 08051748 */ .word 0x06000000
/* 0805174c */ .word 0xffffffff
/* 08051750 */ .word 0x08c96ff4
/* 08051754 */ .word 0x0600e800
/* 08051758 */ .word 0xffffffff
/* 0805175c */ .word 0x088ff0ac
/* 08051760 */ .word 0x03004b64
/* 08051764 */ .word 0x00000140
/* 08051768 */ .word 0x00000000
/* 0805176c */ .word 0x00000000
/* 08051770 */ .word 0x00000000

/* 08051774 */ .word 0x08c9b9fc
/* 08051778 */ .word 0x06000000
/* 0805177c */ .word 0xffffffff
/* 08051780 */ .word 0x08c9be48
/* 08051784 */ .word 0x0600e800
/* 08051788 */ .word 0xffffffff
/* 0805178c */ .word 0x088ff3ac
/* 08051790 */ .word 0x03004b64
/* 08051794 */ .word 0x00000140
/* 08051798 */ .word 0x00000000
/* 0805179c */ .word 0x00000000
/* 080517a0 */ .word 0x00000000

/* 080517a4 */ .word 0x08c9b9fc
/* 080517a8 */ .word 0x06000000
/* 080517ac */ .word 0xffffffff
/* 080517b0 */ .word 0x08c9bcd0
/* 080517b4 */ .word 0x0600e800
/* 080517b8 */ .word 0xffffffff
/* 080517bc */ .word 0x088ff3ac
/* 080517c0 */ .word 0x03004b64
/* 080517c4 */ .word 0x00000140
/* 080517c8 */ .word 0x00000000
/* 080517cc */ .word 0x00000000
/* 080517d0 */ .word 0x00000000

/* 080517d4 */ .word 0x08c9b9fc
/* 080517d8 */ .word 0x06000000
/* 080517dc */ .word 0xffffffff
/* 080517e0 */ .word 0x08c9bb60
/* 080517e4 */ .word 0x0600e800
/* 080517e8 */ .word 0xffffffff
/* 080517ec */ .word 0x088ff3ac
/* 080517f0 */ .word 0x03004b64
/* 080517f4 */ .word 0x00000140
/* 080517f8 */ .word 0x00000000
/* 080517fc */ .word 0x00000000
/* 08051800 */ .word 0x00000000

/* 08051804 */ .word 0x08cb8de4
/* 08051808 */ .word 0x06000000
/* 0805180c */ .word 0xffffffff
/* 08051810 */ .word 0x08cb9264
/* 08051814 */ .word 0x0600e800
/* 08051818 */ .word 0xffffffff
/* 0805181c */ .word 0x088ffd0c
/* 08051820 */ .word 0x03004b64
/* 08051824 */ .word 0x00000140
/* 08051828 */ .word 0x00000000
/* 0805182c */ .word 0x00000000
/* 08051830 */ .word 0x00000000

/* 08051834 */ .word 0x08cb8de4
/* 08051838 */ .word 0x06000000
/* 0805183c */ .word 0xffffffff
/* 08051840 */ .word 0x08cb90e4
/* 08051844 */ .word 0x0600e800
/* 08051848 */ .word 0xffffffff
/* 0805184c */ .word 0x088ffd0c
/* 08051850 */ .word 0x03004b64
/* 08051854 */ .word 0x00000140
/* 08051858 */ .word 0x00000000
/* 0805185c */ .word 0x00000000
/* 08051860 */ .word 0x00000000

/* 08051864 */ .word 0x08cb8de4
/* 08051868 */ .word 0x06000000
/* 0805186c */ .word 0xffffffff
/* 08051870 */ .word 0x08cb8f64
/* 08051874 */ .word 0x0600e800
/* 08051878 */ .word 0xffffffff
/* 0805187c */ .word 0x088ffd0c
/* 08051880 */ .word 0x03004b64
/* 08051884 */ .word 0x00000140
/* 08051888 */ .word 0x00000000
/* 0805188c */ .word 0x00000000
/* 08051890 */ .word 0x00000000

/* 08051894 */ .word 0x08cb9fd8
/* 08051898 */ .word 0x06000000
/* 0805189c */ .word 0xffffffff
/* 080518a0 */ .word 0x08cba3ec
/* 080518a4 */ .word 0x0600e800
/* 080518a8 */ .word 0xffffffff
/* 080518ac */ .word 0x088fff0c
/* 080518b0 */ .word 0x03004b64
/* 080518b4 */ .word 0x00000140
/* 080518b8 */ .word 0x00000000
/* 080518bc */ .word 0x00000000
/* 080518c0 */ .word 0x00000000

/* 080518c4 */ .word 0x08cb9fd8
/* 080518c8 */ .word 0x06000000
/* 080518cc */ .word 0xffffffff
/* 080518d0 */ .word 0x08cba28c
/* 080518d4 */ .word 0x0600e800
/* 080518d8 */ .word 0xffffffff
/* 080518dc */ .word 0x088fff0c
/* 080518e0 */ .word 0x03004b64
/* 080518e4 */ .word 0x00000140
/* 080518e8 */ .word 0x00000000
/* 080518ec */ .word 0x00000000
/* 080518f0 */ .word 0x00000000

/* 080518f4 */ .word 0x08cb9fd8
/* 080518f8 */ .word 0x06000000
/* 080518fc */ .word 0xffffffff
/* 08051900 */ .word 0x08cba154
/* 08051904 */ .word 0x0600e800
/* 08051908 */ .word 0xffffffff
/* 0805190c */ .word 0x088fff0c
/* 08051910 */ .word 0x03004b64
/* 08051914 */ .word 0x00000140
/* 08051918 */ .word 0x00000000
/* 0805191c */ .word 0x00000000
/* 08051920 */ .word 0x00000000

/* 08051924 */ .word 0x08ca5684
/* 08051928 */ .word 0x06000000
/* 0805192c */ .word 0xffffffff
/* 08051930 */ .word 0x08ca59d0
/* 08051934 */ .word 0x0600e800
/* 08051938 */ .word 0xffffffff
/* 0805193c */ .word 0x088ff80c
/* 08051940 */ .word 0x03004b64
/* 08051944 */ .word 0x00000140
/* 08051948 */ .word 0x00000000
/* 0805194c */ .word 0x00000000
/* 08051950 */ .word 0x00000000

/* 08051954 */ .word 0x08ca5684
/* 08051958 */ .word 0x06000000
/* 0805195c */ .word 0xffffffff
/* 08051960 */ .word 0x08ca5884
/* 08051964 */ .word 0x0600e800
/* 08051968 */ .word 0xffffffff
/* 0805196c */ .word 0x088ff80c
/* 08051970 */ .word 0x03004b64
/* 08051974 */ .word 0x00000140
/* 08051978 */ .word 0x00000000
/* 0805197c */ .word 0x00000000
/* 08051980 */ .word 0x00000000

/* 08051984 */ .word 0x08ca5684
/* 08051988 */ .word 0x06000000
/* 0805198c */ .word 0xffffffff
/* 08051990 */ .word 0x08ca5784
/* 08051994 */ .word 0x0600e800
/* 08051998 */ .word 0xffffffff
/* 0805199c */ .word 0x088ff80c
/* 080519a0 */ .word 0x03004b64
/* 080519a4 */ .word 0x00000140
/* 080519a8 */ .word 0x00000000
/* 080519ac */ .word 0x00000000
/* 080519b0 */ .word 0x00000000

/* 080519b4 */ .word 0x08cbb530
/* 080519b8 */ .word 0x06000000
/* 080519bc */ .word 0xffffffff
/* 080519c0 */ .word 0x08cbb938
/* 080519c4 */ .word 0x0600e800
/* 080519c8 */ .word 0xffffffff
/* 080519cc */ .word 0x088fff2c
/* 080519d0 */ .word 0x03004b64
/* 080519d4 */ .word 0x00000140
/* 080519d8 */ .word 0x00000000
/* 080519dc */ .word 0x00000000
/* 080519e0 */ .word 0x00000000

/* 080519e4 */ .word 0x08cbb530
/* 080519e8 */ .word 0x06000000
/* 080519ec */ .word 0xffffffff
/* 080519f0 */ .word 0x08cbb7bc
/* 080519f4 */ .word 0x0600e800
/* 080519f8 */ .word 0xffffffff
/* 080519fc */ .word 0x088fff2c
/* 08051a00 */ .word 0x03004b64
/* 08051a04 */ .word 0x00000140
/* 08051a08 */ .word 0x00000000
/* 08051a0c */ .word 0x00000000
/* 08051a10 */ .word 0x00000000

/* 08051a14 */ .word 0x08cbb530
/* 08051a18 */ .word 0x06000000
/* 08051a1c */ .word 0xffffffff
/* 08051a20 */ .word 0x08cbb67c
/* 08051a24 */ .word 0x0600e800
/* 08051a28 */ .word 0xffffffff
/* 08051a2c */ .word 0x088fff2c
/* 08051a30 */ .word 0x03004b64
/* 08051a34 */ .word 0x00000140
/* 08051a38 */ .word 0x00000000
/* 08051a3c */ .word 0x00000000
/* 08051a40 */ .word 0x00000000

/* 08051a44 */ .word 0x08c92fc0
/* 08051a48 */ .word 0x06000000
/* 08051a4c */ .word 0xffffffff
/* 08051a50 */ .word 0x08c93340
/* 08051a54 */ .word 0x0600e800
/* 08051a58 */ .word 0xffffffff
/* 08051a5c */ .word 0x088ff00c
/* 08051a60 */ .word 0x03004b64
/* 08051a64 */ .word 0x00000140
/* 08051a68 */ .word 0x00000000
/* 08051a6c */ .word 0x00000000
/* 08051a70 */ .word 0x00000000

/* 08051a74 */ .word 0x08c92fc0
/* 08051a78 */ .word 0x06000000
/* 08051a7c */ .word 0xffffffff
/* 08051a80 */ .word 0x08c931c0
/* 08051a84 */ .word 0x0600e800
/* 08051a88 */ .word 0xffffffff
/* 08051a8c */ .word 0x088ff00c
/* 08051a90 */ .word 0x03004b64
/* 08051a94 */ .word 0x00000140
/* 08051a98 */ .word 0x00000000
/* 08051a9c */ .word 0x00000000
/* 08051aa0 */ .word 0x00000000

/* 08051aa4 */ .word 0x08c92fc0
/* 08051aa8 */ .word 0x06000000
/* 08051aac */ .word 0xffffffff
/* 08051ab0 */ .word 0x08c930c4
/* 08051ab4 */ .word 0x0600e800
/* 08051ab8 */ .word 0xffffffff
/* 08051abc */ .word 0x088ff00c
/* 08051ac0 */ .word 0x03004b64
/* 08051ac4 */ .word 0x00000140
/* 08051ac8 */ .word 0x00000000
/* 08051acc */ .word 0x00000000
/* 08051ad0 */ .word 0x00000000

/* 08051ad4 */ .word 0x08cb4fbc
/* 08051ad8 */ .word 0x06000000
/* 08051adc */ .word 0xffffffff
/* 08051ae0 */ .word 0x08cb542c
/* 08051ae4 */ .word 0x0600e800
/* 08051ae8 */ .word 0xffffffff
/* 08051aec */ .word 0x088ffc8c
/* 08051af0 */ .word 0x03004b64
/* 08051af4 */ .word 0x00000140
/* 08051af8 */ .word 0x00000000
/* 08051afc */ .word 0x00000000
/* 08051b00 */ .word 0x00000000

/* 08051b04 */ .word 0x08cb4fbc
/* 08051b08 */ .word 0x06000000
/* 08051b0c */ .word 0xffffffff
/* 08051b10 */ .word 0x08cb52ac
/* 08051b14 */ .word 0x0600e800
/* 08051b18 */ .word 0xffffffff
/* 08051b1c */ .word 0x088ffc8c
/* 08051b20 */ .word 0x03004b64
/* 08051b24 */ .word 0x00000140
/* 08051b28 */ .word 0x00000000
/* 08051b2c */ .word 0x00000000
/* 08051b30 */ .word 0x00000000

/* 08051b34 */ .word 0x08cb4fbc
/* 08051b38 */ .word 0x06000000
/* 08051b3c */ .word 0xffffffff
/* 08051b40 */ .word 0x08cb513c
/* 08051b44 */ .word 0x0600e800
/* 08051b48 */ .word 0xffffffff
/* 08051b4c */ .word 0x088ffc8c
/* 08051b50 */ .word 0x03004b64
/* 08051b54 */ .word 0x00000140
/* 08051b58 */ .word 0x00000000
/* 08051b5c */ .word 0x00000000
/* 08051b60 */ .word 0x00000000

/* 08051b64 */ .word 0x08c904a0
/* 08051b68 */ .word 0x06000000
/* 08051b6c */ .word 0xffffffff
/* 08051b70 */ .word 0x08c90910
/* 08051b74 */ .word 0x0600e800
/* 08051b78 */ .word 0xffffffff
/* 08051b7c */ .word 0x088fedcc
/* 08051b80 */ .word 0x03004b64
/* 08051b84 */ .word 0x00000140
/* 08051b88 */ .word 0x00000000
/* 08051b8c */ .word 0x00000000
/* 08051b90 */ .word 0x00000000

/* 08051b94 */ .word 0x08c904a0
/* 08051b98 */ .word 0x06000000
/* 08051b9c */ .word 0xffffffff
/* 08051ba0 */ .word 0x08c907a0
/* 08051ba4 */ .word 0x0600e800
/* 08051ba8 */ .word 0xffffffff
/* 08051bac */ .word 0x088fedcc
/* 08051bb0 */ .word 0x03004b64
/* 08051bb4 */ .word 0x00000140
/* 08051bb8 */ .word 0x00000000
/* 08051bbc */ .word 0x00000000
/* 08051bc0 */ .word 0x00000000

/* 08051bc4 */ .word 0x08c904a0
/* 08051bc8 */ .word 0x06000000
/* 08051bcc */ .word 0xffffffff
/* 08051bd0 */ .word 0x08c90620
/* 08051bd4 */ .word 0x0600e800
/* 08051bd8 */ .word 0xffffffff
/* 08051bdc */ .word 0x088fedcc
/* 08051be0 */ .word 0x03004b64
/* 08051be4 */ .word 0x00000140
/* 08051be8 */ .word 0x00000000
/* 08051bec */ .word 0x00000000
/* 08051bf0 */ .word 0x00000000

/* 08051bf4 */ .word 0x08ca37cc
/* 08051bf8 */ .word 0x06000000
/* 08051bfc */ .word 0xffffffff
/* 08051c00 */ .word 0x08ca3b88
/* 08051c04 */ .word 0x0600e800
/* 08051c08 */ .word 0xffffffff
/* 08051c0c */ .word 0x088ff7cc
/* 08051c10 */ .word 0x03004b64
/* 08051c14 */ .word 0x00000140
/* 08051c18 */ .word 0x00000000
/* 08051c1c */ .word 0x00000000
/* 08051c20 */ .word 0x00000000

/* 08051c24 */ .word 0x08ca37cc
/* 08051c28 */ .word 0x06000000
/* 08051c2c */ .word 0xffffffff
/* 08051c30 */ .word 0x08ca3a08
/* 08051c34 */ .word 0x0600e800
/* 08051c38 */ .word 0xffffffff
/* 08051c3c */ .word 0x088ff7cc
/* 08051c40 */ .word 0x03004b64
/* 08051c44 */ .word 0x00000140
/* 08051c48 */ .word 0x00000000
/* 08051c4c */ .word 0x00000000
/* 08051c50 */ .word 0x00000000

/* 08051c54 */ .word 0x08ca37cc
/* 08051c58 */ .word 0x06000000
/* 08051c5c */ .word 0xffffffff
/* 08051c60 */ .word 0x08ca38fc
/* 08051c64 */ .word 0x0600e800
/* 08051c68 */ .word 0xffffffff
/* 08051c6c */ .word 0x088ff7cc
/* 08051c70 */ .word 0x03004b64
/* 08051c74 */ .word 0x00000140
/* 08051c78 */ .word 0x00000000
/* 08051c7c */ .word 0x00000000
/* 08051c80 */ .word 0x00000000

/* 08051c84 */ .word 0x08ca48dc
/* 08051c88 */ .word 0x06000000
/* 08051c8c */ .word 0xffffffff
/* 08051c90 */ .word 0x08ca4c84
/* 08051c94 */ .word 0x0600e800
/* 08051c98 */ .word 0xffffffff
/* 08051c9c */ .word 0x088ff7ec
/* 08051ca0 */ .word 0x03004b64
/* 08051ca4 */ .word 0x00000140
/* 08051ca8 */ .word 0x00000000
/* 08051cac */ .word 0x00000000
/* 08051cb0 */ .word 0x00000000

/* 08051cb4 */ .word 0x08ca48dc
/* 08051cb8 */ .word 0x06000000
/* 08051cbc */ .word 0xffffffff
/* 08051cc0 */ .word 0x08ca4b08
/* 08051cc4 */ .word 0x0600e800
/* 08051cc8 */ .word 0xffffffff
/* 08051ccc */ .word 0x088ff7ec
/* 08051cd0 */ .word 0x03004b64
/* 08051cd4 */ .word 0x00000140
/* 08051cd8 */ .word 0x00000000
/* 08051cdc */ .word 0x00000000
/* 08051ce0 */ .word 0x00000000

/* 08051ce4 */ .word 0x08ca48dc
/* 08051ce8 */ .word 0x06000000
/* 08051cec */ .word 0xffffffff
/* 08051cf0 */ .word 0x08ca4a00
/* 08051cf4 */ .word 0x0600e800
/* 08051cf8 */ .word 0xffffffff
/* 08051cfc */ .word 0x088ff7ec
/* 08051d00 */ .word 0x03004b64
/* 08051d04 */ .word 0x00000140
/* 08051d08 */ .word 0x00000000
/* 08051d0c */ .word 0x00000000
/* 08051d10 */ .word 0x00000000

/* 08051d14 */ .word 0x08ca0ee0
/* 08051d18 */ .word 0x06000000
/* 08051d1c */ .word 0xffffffff
/* 08051d20 */ .word 0x08ca1324
/* 08051d24 */ .word 0x0600e800
/* 08051d28 */ .word 0xffffffff
/* 08051d2c */ .word 0x088ff56c
/* 08051d30 */ .word 0x03004b64
/* 08051d34 */ .word 0x00000140
/* 08051d38 */ .word 0x00000000
/* 08051d3c */ .word 0x00000000
/* 08051d40 */ .word 0x00000000

/* 08051d44 */ .word 0x08ca0ee0
/* 08051d48 */ .word 0x06000000
/* 08051d4c */ .word 0xffffffff
/* 08051d50 */ .word 0x08ca11a8
/* 08051d54 */ .word 0x0600e800
/* 08051d58 */ .word 0xffffffff
/* 08051d5c */ .word 0x088ff56c
/* 08051d60 */ .word 0x03004b64
/* 08051d64 */ .word 0x00000140
/* 08051d68 */ .word 0x00000000
/* 08051d6c */ .word 0x00000000
/* 08051d70 */ .word 0x00000000

/* 08051d74 */ .word 0x08ca0ee0
/* 08051d78 */ .word 0x06000000
/* 08051d7c */ .word 0xffffffff
/* 08051d80 */ .word 0x08ca103c
/* 08051d84 */ .word 0x0600e800
/* 08051d88 */ .word 0xffffffff
/* 08051d8c */ .word 0x088ff56c
/* 08051d90 */ .word 0x03004b64
/* 08051d94 */ .word 0x00000140
/* 08051d98 */ .word 0x00000000
/* 08051d9c */ .word 0x00000000
/* 08051da0 */ .word 0x00000000

/* 08051da4 */ .word 0x08c8d650
/* 08051da8 */ .word 0x06000000
/* 08051dac */ .word 0xffffffff
/* 08051db0 */ .word 0x08c8da08
/* 08051db4 */ .word 0x0600e800
/* 08051db8 */ .word 0xffffffff
/* 08051dbc */ .word 0x088fecec
/* 08051dc0 */ .word 0x03004b64
/* 08051dc4 */ .word 0x00000140
/* 08051dc8 */ .word 0x00000000
/* 08051dcc */ .word 0x00000000
/* 08051dd0 */ .word 0x00000000

/* 08051dd4 */ .word 0x08c8d650
/* 08051dd8 */ .word 0x06000000
/* 08051ddc */ .word 0xffffffff
/* 08051de0 */ .word 0x08c8d8a8
/* 08051de4 */ .word 0x0600e800
/* 08051de8 */ .word 0xffffffff
/* 08051dec */ .word 0x088fecec
/* 08051df0 */ .word 0x03004b64
/* 08051df4 */ .word 0x00000140
/* 08051df8 */ .word 0x00000000
/* 08051dfc */ .word 0x00000000
/* 08051e00 */ .word 0x00000000

/* 08051e04 */ .word 0x08c8d650
/* 08051e08 */ .word 0x06000000
/* 08051e0c */ .word 0xffffffff
/* 08051e10 */ .word 0x08c8d7d0
/* 08051e14 */ .word 0x0600e800
/* 08051e18 */ .word 0xffffffff
/* 08051e1c */ .word 0x088fecec
/* 08051e20 */ .word 0x03004b64
/* 08051e24 */ .word 0x00000140
/* 08051e28 */ .word 0x00000000
/* 08051e2c */ .word 0x00000000
/* 08051e30 */ .word 0x00000000

/* 08051e34 */ .word 0x08c8c564
/* 08051e38 */ .word 0x06000000
/* 08051e3c */ .word 0xffffffff
/* 08051e40 */ .word 0x08c8c95c
/* 08051e44 */ .word 0x0600e800
/* 08051e48 */ .word 0xffffffff
/* 08051e4c */ .word 0x088feccc
/* 08051e50 */ .word 0x03004b64
/* 08051e54 */ .word 0x00000140
/* 08051e58 */ .word 0x00000000
/* 08051e5c */ .word 0x00000000
/* 08051e60 */ .word 0x00000000

/* 08051e64 */ .word 0x08c8c564
/* 08051e68 */ .word 0x06000000
/* 08051e6c */ .word 0xffffffff
/* 08051e70 */ .word 0x08c8c7e4
/* 08051e74 */ .word 0x0600e800
/* 08051e78 */ .word 0xffffffff
/* 08051e7c */ .word 0x088feccc
/* 08051e80 */ .word 0x03004b64
/* 08051e84 */ .word 0x00000140
/* 08051e88 */ .word 0x00000000
/* 08051e8c */ .word 0x00000000
/* 08051e90 */ .word 0x00000000

/* 08051e94 */ .word 0x08c8c564
/* 08051e98 */ .word 0x06000000
/* 08051e9c */ .word 0xffffffff
/* 08051ea0 */ .word 0x08c8c694
/* 08051ea4 */ .word 0x0600e800
/* 08051ea8 */ .word 0xffffffff
/* 08051eac */ .word 0x088feccc
/* 08051eb0 */ .word 0x03004b64
/* 08051eb4 */ .word 0x00000140
/* 08051eb8 */ .word 0x00000000
/* 08051ebc */ .word 0x00000000
/* 08051ec0 */ .word 0x00000000

/* 08051ec4 */ .word 0x08ca66dc
/* 08051ec8 */ .word 0x06000000
/* 08051ecc */ .word 0xffffffff
/* 08051ed0 */ .word 0x08ca69c8
/* 08051ed4 */ .word 0x0600e800
/* 08051ed8 */ .word 0xffffffff
/* 08051edc */ .word 0x088ffa0c
/* 08051ee0 */ .word 0x03004b64
/* 08051ee4 */ .word 0x00000140
/* 08051ee8 */ .word 0x00000000
/* 08051eec */ .word 0x00000000
/* 08051ef0 */ .word 0x00000000

/* 08051ef4 */ .word 0x08ca66dc
/* 08051ef8 */ .word 0x06000000
/* 08051efc */ .word 0xffffffff
/* 08051f00 */ .word 0x08ca6868
/* 08051f04 */ .word 0x0600e800
/* 08051f08 */ .word 0xffffffff
/* 08051f0c */ .word 0x088ffa0c
/* 08051f10 */ .word 0x03004b64
/* 08051f14 */ .word 0x00000140
/* 08051f18 */ .word 0x00000000
/* 08051f1c */ .word 0x00000000
/* 08051f20 */ .word 0x00000000

/* 08051f24 */ .word 0x08ca66dc
/* 08051f28 */ .word 0x06000000
/* 08051f2c */ .word 0xffffffff
/* 08051f30 */ .word 0x08ca676c
/* 08051f34 */ .word 0x0600e800
/* 08051f38 */ .word 0xffffffff
/* 08051f3c */ .word 0x088ffa0c
/* 08051f40 */ .word 0x03004b64
/* 08051f44 */ .word 0x00000140
/* 08051f48 */ .word 0x00000000
/* 08051f4c */ .word 0x00000000
/* 08051f50 */ .word 0x00000000

/* 08051f54 */ .word 0x08ca7cbc
/* 08051f58 */ .word 0x06000000
/* 08051f5c */ .word 0xffffffff
/* 08051f60 */ .word 0x08ca82dc
/* 08051f64 */ .word 0x0600e800
/* 08051f68 */ .word 0xffffffff
/* 08051f6c */ .word 0x088ffa2c
/* 08051f70 */ .word 0x03004b64
/* 08051f74 */ .word 0x00000140
/* 08051f78 */ .word 0x00000000
/* 08051f7c */ .word 0x00000000
/* 08051f80 */ .word 0x00000000

/* 08051f84 */ .word 0x08ca7cbc
/* 08051f88 */ .word 0x06000000
/* 08051f8c */ .word 0xffffffff
/* 08051f90 */ .word 0x08ca80c0
/* 08051f94 */ .word 0x0600e800
/* 08051f98 */ .word 0xffffffff
/* 08051f9c */ .word 0x088ffa2c
/* 08051fa0 */ .word 0x03004b64
/* 08051fa4 */ .word 0x00000140
/* 08051fa8 */ .word 0x00000000
/* 08051fac */ .word 0x00000000
/* 08051fb0 */ .word 0x00000000

/* 08051fb4 */ .word 0x08ca7cbc
/* 08051fb8 */ .word 0x06000000
/* 08051fbc */ .word 0xffffffff
/* 08051fc0 */ .word 0x08ca7ecc
/* 08051fc4 */ .word 0x0600e800
/* 08051fc8 */ .word 0xffffffff
/* 08051fcc */ .word 0x088ffa2c
/* 08051fd0 */ .word 0x03004b64
/* 08051fd4 */ .word 0x00000140
/* 08051fd8 */ .word 0x00000000
/* 08051fdc */ .word 0x00000000
/* 08051fe0 */ .word 0x00000000

/* 08051fe4 */ .word 0x08ca94f0
/* 08051fe8 */ .word 0x06000000
/* 08051fec */ .word 0xffffffff
/* 08051ff0 */ .word 0x08ca9afc
/* 08051ff4 */ .word 0x0600e800
/* 08051ff8 */ .word 0xffffffff
/* 08051ffc */ .word 0x088ffa8c
/* 08052000 */ .word 0x03004b64
/* 08052004 */ .word 0x00000140
/* 08052008 */ .word 0x00000000
/* 0805200c */ .word 0x00000000
/* 08052010 */ .word 0x00000000

/* 08052014 */ .word 0x08ca94f0
/* 08052018 */ .word 0x06000000
/* 0805201c */ .word 0xffffffff
/* 08052020 */ .word 0x08ca98f8
/* 08052024 */ .word 0x0600e800
/* 08052028 */ .word 0xffffffff
/* 0805202c */ .word 0x088ffa8c
/* 08052030 */ .word 0x03004b64
/* 08052034 */ .word 0x00000140
/* 08052038 */ .word 0x00000000
/* 0805203c */ .word 0x00000000
/* 08052040 */ .word 0x00000000

/* 08052044 */ .word 0x08ca94f0
/* 08052048 */ .word 0x06000000
/* 0805204c */ .word 0xffffffff
/* 08052050 */ .word 0x08ca96e4
/* 08052054 */ .word 0x0600e800
/* 08052058 */ .word 0xffffffff
/* 0805205c */ .word 0x088ffa8c
/* 08052060 */ .word 0x03004b64
/* 08052064 */ .word 0x00000140
/* 08052068 */ .word 0x00000000
/* 0805206c */ .word 0x00000000
/* 08052070 */ .word 0x00000000

/* 08052074 */ .word 0x08caaf8c
/* 08052078 */ .word 0x06000000
/* 0805207c */ .word 0xffffffff
/* 08052080 */ .word 0x08cab5bc
/* 08052084 */ .word 0x0600e800
/* 08052088 */ .word 0xffffffff
/* 0805208c */ .word 0x088ffaac
/* 08052090 */ .word 0x03004b64
/* 08052094 */ .word 0x00000140
/* 08052098 */ .word 0x00000000
/* 0805209c */ .word 0x00000000
/* 080520a0 */ .word 0x00000000

/* 080520a4 */ .word 0x08caaf8c
/* 080520a8 */ .word 0x06000000
/* 080520ac */ .word 0xffffffff
/* 080520b0 */ .word 0x08cab3ac
/* 080520b4 */ .word 0x0600e800
/* 080520b8 */ .word 0xffffffff
/* 080520bc */ .word 0x088ffaac
/* 080520c0 */ .word 0x03004b64
/* 080520c4 */ .word 0x00000140
/* 080520c8 */ .word 0x00000000
/* 080520cc */ .word 0x00000000
/* 080520d0 */ .word 0x00000000

/* 080520d4 */ .word 0x08caaf8c
/* 080520d8 */ .word 0x06000000
/* 080520dc */ .word 0xffffffff
/* 080520e0 */ .word 0x08cab1a8
/* 080520e4 */ .word 0x0600e800
/* 080520e8 */ .word 0xffffffff
/* 080520ec */ .word 0x088ffaac
/* 080520f0 */ .word 0x03004b64
/* 080520f4 */ .word 0x00000140
/* 080520f8 */ .word 0x00000000
/* 080520fc */ .word 0x00000000
/* 08052100 */ .word 0x00000000

/* 08052104 */ .word 0x08cac550
/* 08052108 */ .word 0x06000000
/* 0805210c */ .word 0xffffffff
/* 08052110 */ .word 0x08cac908
/* 08052114 */ .word 0x0600e800
/* 08052118 */ .word 0xffffffff
/* 0805211c */ .word 0x088ffb0c
/* 08052120 */ .word 0x03004b64
/* 08052124 */ .word 0x00000140
/* 08052128 */ .word 0x00000000
/* 0805212c */ .word 0x00000000
/* 08052130 */ .word 0x00000000

/* 08052134 */ .word 0x08cac550
/* 08052138 */ .word 0x06000000
/* 0805213c */ .word 0xffffffff
/* 08052140 */ .word 0x08cac7e0
/* 08052144 */ .word 0x0600e800
/* 08052148 */ .word 0xffffffff
/* 0805214c */ .word 0x088ffb0c
/* 08052150 */ .word 0x03004b64
/* 08052154 */ .word 0x00000140
/* 08052158 */ .word 0x00000000
/* 0805215c */ .word 0x00000000
/* 08052160 */ .word 0x00000000

/* 08052164 */ .word 0x08cac550
/* 08052168 */ .word 0x06000000
/* 0805216c */ .word 0xffffffff
/* 08052170 */ .word 0x08cac6ac
/* 08052174 */ .word 0x0600e800
/* 08052178 */ .word 0xffffffff
/* 0805217c */ .word 0x088ffb0c
/* 08052180 */ .word 0x03004b64
/* 08052184 */ .word 0x00000140
/* 08052188 */ .word 0x00000000
/* 0805218c */ .word 0x00000000
/* 08052190 */ .word 0x00000000

/* 08052194 */ .word 0x08cad9f4
/* 08052198 */ .word 0x06000000
/* 0805219c */ .word 0xffffffff
/* 080521a0 */ .word 0x08cadff0
/* 080521a4 */ .word 0x0600e800
/* 080521a8 */ .word 0xffffffff
/* 080521ac */ .word 0x088ffb2c
/* 080521b0 */ .word 0x03004b64
/* 080521b4 */ .word 0x00000140
/* 080521b8 */ .word 0x00000000
/* 080521bc */ .word 0x00000000
/* 080521c0 */ .word 0x00000000

/* 080521c4 */ .word 0x08cad9f4
/* 080521c8 */ .word 0x06000000
/* 080521cc */ .word 0xffffffff
/* 080521d0 */ .word 0x08caddf8
/* 080521d4 */ .word 0x0600e800
/* 080521d8 */ .word 0xffffffff
/* 080521dc */ .word 0x088ffb2c
/* 080521e0 */ .word 0x03004b64
/* 080521e4 */ .word 0x00000140
/* 080521e8 */ .word 0x00000000
/* 080521ec */ .word 0x00000000
/* 080521f0 */ .word 0x00000000

/* 080521f4 */ .word 0x08cad9f4
/* 080521f8 */ .word 0x06000000
/* 080521fc */ .word 0xffffffff
/* 08052200 */ .word 0x08cadbe0
/* 08052204 */ .word 0x0600e800
/* 08052208 */ .word 0xffffffff
/* 0805220c */ .word 0x088ffb2c
/* 08052210 */ .word 0x03004b64
/* 08052214 */ .word 0x00000140
/* 08052218 */ .word 0x00000000
/* 0805221c */ .word 0x00000000
/* 08052220 */ .word 0x00000000

/* 08052224 */ .word 0x08caf878
/* 08052228 */ .word 0x06000000
/* 0805222c */ .word 0xffffffff
/* 08052230 */ .word 0x08cafce8
/* 08052234 */ .word 0x0600e800
/* 08052238 */ .word 0xffffffff
/* 0805223c */ .word 0x088ffb8c
/* 08052240 */ .word 0x03004b64
/* 08052244 */ .word 0x00000140
/* 08052248 */ .word 0x00000000
/* 0805224c */ .word 0x00000000
/* 08052250 */ .word 0x00000000

/* 08052254 */ .word 0x08caf878
/* 08052258 */ .word 0x06000000
/* 0805225c */ .word 0xffffffff
/* 08052260 */ .word 0x08cafb68
/* 08052264 */ .word 0x0600e800
/* 08052268 */ .word 0xffffffff
/* 0805226c */ .word 0x088ffb8c
/* 08052270 */ .word 0x03004b64
/* 08052274 */ .word 0x00000140
/* 08052278 */ .word 0x00000000
/* 0805227c */ .word 0x00000000
/* 08052280 */ .word 0x00000000

/* 08052284 */ .word 0x08caf878
/* 08052288 */ .word 0x06000000
/* 0805228c */ .word 0xffffffff
/* 08052290 */ .word 0x08caf9f4
/* 08052294 */ .word 0x0600e800
/* 08052298 */ .word 0xffffffff
/* 0805229c */ .word 0x088ffb8c
/* 080522a0 */ .word 0x03004b64
/* 080522a4 */ .word 0x00000140
/* 080522a8 */ .word 0x00000000
/* 080522ac */ .word 0x00000000
/* 080522b0 */ .word 0x00000000

/* 080522b4 */ .word 0x08cb14f8
/* 080522b8 */ .word 0x06000000
/* 080522bc */ .word 0xffffffff
/* 080522c0 */ .word 0x08cb1b08
/* 080522c4 */ .word 0x0600e800
/* 080522c8 */ .word 0xffffffff
/* 080522cc */ .word 0x088ffbec
/* 080522d0 */ .word 0x03004b64
/* 080522d4 */ .word 0x00000140
/* 080522d8 */ .word 0x00000000
/* 080522dc */ .word 0x00000000
/* 080522e0 */ .word 0x00000000

/* 080522e4 */ .word 0x08cb14f8
/* 080522e8 */ .word 0x06000000
/* 080522ec */ .word 0xffffffff
/* 080522f0 */ .word 0x08cb18ec
/* 080522f4 */ .word 0x0600e800
/* 080522f8 */ .word 0xffffffff
/* 080522fc */ .word 0x088ffbec
/* 08052300 */ .word 0x03004b64
/* 08052304 */ .word 0x00000140
/* 08052308 */ .word 0x00000000
/* 0805230c */ .word 0x00000000
/* 08052310 */ .word 0x00000000

/* 08052314 */ .word 0x08cb14f8
/* 08052318 */ .word 0x06000000
/* 0805231c */ .word 0xffffffff
/* 08052320 */ .word 0x08cb16f0
/* 08052324 */ .word 0x0600e800
/* 08052328 */ .word 0xffffffff
/* 0805232c */ .word 0x088ffbec
/* 08052330 */ .word 0x03004b64
/* 08052334 */ .word 0x00000140
/* 08052338 */ .word 0x00000000
/* 0805233c */ .word 0x00000000
/* 08052340 */ .word 0x00000000

/* 08052344 */ .word 0x08cbe458
/* 08052348 */ .word 0x06000000
/* 0805234c */ .word 0xffffffff
/* 08052350 */ .word 0x08cbe730
/* 08052354 */ .word 0x0600e800
/* 08052358 */ .word 0xffffffff
/* 0805235c */ .word 0x088fffec
/* 08052360 */ .word 0x03004b64
/* 08052364 */ .word 0x00000140
/* 08052368 */ .word 0x00000000
/* 0805236c */ .word 0x00000000
/* 08052370 */ .word 0x00000000

/* 08052374 */ .word 0x08cbe458
/* 08052378 */ .word 0x06000000
/* 0805237c */ .word 0xffffffff
/* 08052380 */ .word 0x08cbe634
/* 08052384 */ .word 0x0600e800
/* 08052388 */ .word 0xffffffff
/* 0805238c */ .word 0x088fffec
/* 08052390 */ .word 0x03004b64
/* 08052394 */ .word 0x00000140
/* 08052398 */ .word 0x00000000
/* 0805239c */ .word 0x00000000
/* 080523a0 */ .word 0x00000000

/* 080523a4 */ .word 0x08cbe458
/* 080523a8 */ .word 0x06000000
/* 080523ac */ .word 0xffffffff
/* 080523b0 */ .word 0x08cbe54c
/* 080523b4 */ .word 0x0600e800
/* 080523b8 */ .word 0xffffffff
/* 080523bc */ .word 0x088fffec
/* 080523c0 */ .word 0x03004b64
/* 080523c4 */ .word 0x00000140
/* 080523c8 */ .word 0x00000000
/* 080523cc */ .word 0x00000000
/* 080523d0 */ .word 0x00000000

/* 080523d4 */ .word 0x08c9113c
/* 080523d8 */ .word 0x06000000
/* 080523dc */ .word 0xffffffff
/* 080523e0 */ .word 0x08c913b4
/* 080523e4 */ .word 0x0600e800
/* 080523e8 */ .word 0xffffffff
/* 080523ec */ .word 0x088fedec
/* 080523f0 */ .word 0x03004b64
/* 080523f4 */ .word 0x00000140
/* 080523f8 */ .word 0x00000000
/* 080523fc */ .word 0x00000000
/* 08052400 */ .word 0x00000000

/* 08052404 */ .word 0x08c9113c
/* 08052408 */ .word 0x06000000
/* 0805240c */ .word 0xffffffff
/* 08052410 */ .word 0x08c912dc
/* 08052414 */ .word 0x0600e800
/* 08052418 */ .word 0xffffffff
/* 0805241c */ .word 0x088fedec
/* 08052420 */ .word 0x03004b64
/* 08052424 */ .word 0x00000140
/* 08052428 */ .word 0x00000000
/* 0805242c */ .word 0x00000000
/* 08052430 */ .word 0x00000000

/* 08052434 */ .word 0x08c9113c
/* 08052438 */ .word 0x06000000
/* 0805243c */ .word 0xffffffff
/* 08052440 */ .word 0x08c91208
/* 08052444 */ .word 0x0600e800
/* 08052448 */ .word 0xffffffff
/* 0805244c */ .word 0x088fedec
/* 08052450 */ .word 0x03004b64
/* 08052454 */ .word 0x00000140
/* 08052458 */ .word 0x00000000
/* 0805245c */ .word 0x00000000
/* 08052460 */ .word 0x00000000

/* 08052464 */
/* 08052464 */ .word 0x8d837683
/* 08052468 */ .word 0x85836683
/* 0805246c */ .word 0x54835b81
/* 08052470 */ .word 0x75815b81
/* 08052474 */ .word 0xbf82a482
/* 08052478 */ .word 0x4181c582
/* 0805247c */ .word 0x93834b83
/* 08052480 */ .word 0xc1826f83
/* 08052484 */ .word 0xdd82c482
/* 08052488 */ .word 0xa282c882
/* 0805248c */ .word 0x76814881
/* 08052490 */ .word 0x00000000

/* 08052494 */
/* 08052494 */ .word 0x5b814983
/* 08052498 */ .word 0x5b816983
/* 0805249c */ .word 0x4c837581
/* 080524a0 */ .word 0x41817e83
/* 080524a4 */ .word 0xa982c882
/* 080524a8 */ .word 0xa982c882
/* 080524ac */ .word 0x83588320
/* 080524b0 */ .word 0x82a08257
/* 080524b4 */ .word 0x818883e9
/* 080524b8 */ .word 0x00000076

/* 080524bc */
/* 080524bc */ .word 0xce82a882
/* 080524c0 */ .word 0xe182bf82
/* 080524c4 */ .word 0x7581f182
/* 080524c8 */ .word 0xbd82dc82
/* 080524cc */ .word 0xac82c282
/* 080524d0 */ .word 0xaa824181
/* 080524d4 */ .word 0xce82f182
/* 080524d8 */ .word 0xc882e882
/* 080524dc */ .word 0x4981e682
/* 080524e0 */ .word 0x00007681

/* 080524e4 */
/* 080524e4 */ .word 0x43838983
/* 080524e8 */ .word 0xc9827583
/* 080524ec */ .word 0x89896f8f
/* 080524f0 */ .word 0x4981be82
/* 080524f4 */ .word 0x834c830a
/* 080524f8 */ .word 0x83cc827e
/* 080524fc */ .word 0x8359838a
/* 08052500 */ .word 0x82b48a80
/* 08052504 */ .word 0xe6820acd
/* 08052508 */ .word 0xc682a282
/* 0805250c */ .word 0xa482768e
/* 08052510 */ .word 0xe782a982
/* 08052514 */ .word 0x82c7820a
/* 08052518 */ .word 0x82bc82a4
/* 0805251c */ .word 0x8a438ba8
/* 08052520 */ .word 0x81c98279
/* 08052524 */ .word 0x00000060

/* 08052528 */
/* 08052528 */ .word 0x43838983
/* 0805252c */ .word 0x00007583

/* 08052530 */
/* 08052530 */ .word 0xb582e082
/* 08052534 */ .word 0x82e68220
/* 08052538 */ .word 0x82c182a9
/* 0805253c */ .word 0x0ae782bd
/* 08052540 */ .word 0xc482a98c
/* 08052544 */ .word 0xc482dd82
/* 08052548 */ .word 0x42816c83
/* 0805254c */ .word 0x82b1820a
/* 08052550 */ .word 0x815183cc
/* 08052554 */ .word 0x8280835b
/* 08052558 */ .word 0x58830acc
/* 0805255c */ .word 0x62835e83
/* 08052560 */ .word 0xbd827483
/* 08052564 */ .word 0xc582bf82
/* 08052568 */ .word 0x4281b782
/* 0805256c */ .word 0x00000000

/* 08052570 */
/* 08052570 */ .word 0x5e835883
/* 08052574 */ .word 0x74836283
/* 08052578 */ .word 0x00000000

/* 0805257c */
/* 0805257c */ .word 0x5f838183
/* 08052580 */ .word 0xf0828b83
/* 08052584 */ .word 0x82a08220
/* 08052588 */ .word 0x82df82c2
/* 0805258c */ .word 0x68830ac4
/* 08052590 */ .word 0x80838983
/* 08052594 */ .word 0x8c83cc82
/* 08052598 */ .word 0x58836283
/* 0805259c */ .word 0xf0829383
/* 080525a0 */ .word 0x82a4820a
/* 080525a4 */ .word 0x82c482af
/* 080525a8 */ .word 0x82e682dd
/* 080525ac */ .word 0x0a4281a4
/* 080525b0 */ .word 0xe88ee38f
/* 080525b4 */ .word 0xc882c982
/* 080525b8 */ .word 0xc482c182
/* 080525bc */ .word 0x49816c83
/* 080525c0 */ .word 0x00000000
/* 080525c4 */ .word 0x89836883
/* 080525c8 */ .word 0x8c838083
/* 080525cc */ .word 0x58836283
/* 080525d0 */ .word 0x00009383
/* 080525d4 */ .word 0x5f838183
/* 080525d8 */ .word 0xf0828b83
/* 080525dc */ .word 0x82a08220
/* 080525e0 */ .word 0x82df82c2
/* 080525e4 */ .word 0xc6820ac4
/* 080525e8 */ .word 0xd782ad82
/* 080525ec */ .word 0xc882c282
/* 080525f0 */ .word 0x5b815183
/* 080525f4 */ .word 0xc9828083
/* 080525f8 */ .word 0x90a7920a
/* 080525fc */ .word 0x82b582ed
/* 08052600 */ .word 0x82dd82c4
/* 08052604 */ .word 0x816c83c4
/* 08052608 */ .word 0xa2820a49
/* 0805260c */ .word 0xc282ad82
/* 08052610 */ .word 0xa082a982
/* 08052614 */ .word 0x8883e982
/* 08052618 */ .word 0x00004281
/* 0805261c */ .word 0x5b815183
/* 08052620 */ .word 0x00008083
/* 08052624 */ .word 0x5f838183
/* 08052628 */ .word 0xf0828b83
/* 0805262c */ .word 0x82a08220
/* 08052630 */ .word 0x82df82c2
/* 08052634 */ .word 0xb9890ac4
/* 08052638 */ .word 0xc582cc82
/* 0805263c */ .word 0xa882e982
/* 08052640 */ .word 0xbf82e082
/* 08052644 */ .word 0xc582e182
/* 08052648 */ .word 0x82a0820a
/* 0805264c */ .word 0x82f182bb
/* 08052650 */ .word 0x82dd82c5
/* 08052654 */ .word 0x816c83c4
/* 08052658 */ .word 0xa2820a49
/* 0805265c */ .word 0xc282ad82
/* 08052660 */ .word 0xa082a982
/* 08052664 */ .word 0x8883e982
/* 08052668 */ .word 0x00004281
/* 0805266c */ .word 0xe082a882
/* 08052670 */ .word 0xe182bf82
/* 08052674 */ .word 0x00000000
/* 08052678 */ .word 0xdf8bc58d
/* 0805267c */ .word 0xb292cc82
/* 08052680 */ .word 0x8220718e
/* 08052684 */ .word 0x81a482c7
/* 08052688 */ .word 0xc8820a48
/* 0805268c */ .word 0xa982c982
/* 08052690 */ .word 0xc982438b
/* 08052694 */ .word 0xea82c882
/* 08052698 */ .word 0x820ace82
/* 0805269c */ .word 0x82b182b1
/* 080526a0 */ .word 0x928a91c5
/* 080526a4 */ .word 0x0af0826b
/* 080526a8 */ .word 0xc482b582
/* 080526ac */ .word 0xe682dd82
/* 080526b0 */ .word 0x4281a482
/* 080526b4 */ .word 0x00000000
/* 080526b8 */ .word 0x8392698b
/* 080526bc */ .word 0x45834a83
/* 080526c0 */ .word 0x5a839383
/* 080526c4 */ .word 0x00008b83
/* 080526c8 */ .word 0xf189a18d
/* 080526cc */ .word 0x6883cc82
/* 080526d0 */ .word 0x43838983
/* 080526d4 */ .word 0x81207583
/* 080526d8 */ .word 0xc6822046
/* 080526dc */ .word 0xc482c182
/* 080526e0 */ .word 0x7591e082
/* 080526e4 */ .word 0x4981f589
/* 080526e8 */ .word 0x00004981
/* 080526ec */ .word 0xf189a18d
/* 080526f0 */ .word 0x6883cc82
/* 080526f4 */ .word 0x43838983
/* 080526f8 */ .word 0x81207583
/* 080526fc */ .word 0xdc822046
/* 08052700 */ .word 0xdc82be82
/* 08052704 */ .word 0xa982be82
/* 08052708 */ .word 0xe982a982
/* 0805270c */ .word 0x9f82c882
/* 08052710 */ .word 0x00000000
/* 08052714 */ .word 0xf189a18d
/* 08052718 */ .word 0x6883cc82
/* 0805271c */ .word 0x43838983
/* 08052720 */ .word 0x81207583
/* 08052724 */ .word 0xf1822046
/* 08052728 */ .word 0xa382e082
/* 0805272c */ .word 0x00006381
/* 08052730 */ .word 0x7e838a83
/* 08052734 */ .word 0x4e836283
/* 08052738 */ .word 0x82205883
/* 0805273c */ .word 0x00000057
/* 08052740 */ .word 0xf189a18d
/* 08052744 */ .word 0xab82cc82
/* 08052748 */ .word 0xa482e582
/* 0805274c */ .word 0xe382e882
/* 08052750 */ .word 0x8120a482
/* 08052754 */ .word 0x798a2046
/* 08052758 */ .word 0xb782b582
/* 0805275c */ .word 0x6081ac82
/* 08052760 */ .word 0x49814981
/* 08052764 */ .word 0x00000000
/* 08052768 */ .word 0xf189a18d
/* 0805276c */ .word 0xab82cc82
/* 08052770 */ .word 0xa482e582
/* 08052774 */ .word 0xe382e882
/* 08052778 */ .word 0x8120a482
/* 0805277c */ .word 0xd9822046
/* 08052780 */ .word 0xda82cc82
/* 08052784 */ .word 0x0000cc82
/* 08052788 */ .word 0xf189a18d
/* 0805278c */ .word 0xab82cc82
/* 08052790 */ .word 0xa482e582
/* 08052794 */ .word 0xe382e882
/* 08052798 */ .word 0x8120a482
/* 0805279c */ .word 0xa2822046
/* 080527a0 */ .word 0xed82b682
/* 080527a4 */ .word 0x0000e982
/* 080527a8 */ .word 0x7e838a83
/* 080527ac */ .word 0x4e836283
/* 080527b0 */ .word 0x82205883
/* 080527b4 */ .word 0x00000056
/* 080527b8 */ .word 0xf189a18d
/* 080527bc */ .word 0xe093cc82
/* 080527c0 */ .word 0x81206597
/* 080527c4 */ .word 0x41832046
/* 080527c8 */ .word 0x72839383
/* 080527cc */ .word 0x5b818a83
/* 080527d0 */ .word 0x7b836f83
/* 080527d4 */ .word 0xc8825b81
/* 080527d8 */ .word 0x93834a83
/* 080527dc */ .word 0x49815783
/* 080527e0 */ .word 0x00004981
/* 080527e4 */ .word 0xf189a18d
/* 080527e8 */ .word 0xe093cc82
/* 080527ec */ .word 0x81206597
/* 080527f0 */ .word 0xd3882046
/* 080527f4 */ .word 0xc8824f8a
/* 080527f8 */ .word 0x93834a83
/* 080527fc */ .word 0x00005783
/* 08052800 */ .word 0xf189a18d
/* 08052804 */ .word 0xe093cc82
/* 08052808 */ .word 0x81206597
/* 0805280c */ .word 0xe2822046
/* 08052810 */ .word 0xb382e282
/* 08052814 */ .word 0xb582dd82
/* 08052818 */ .word 0x4a83a282
/* 0805281c */ .word 0x57839383
/* 08052820 */ .word 0x00000000
/* 08052824 */ .word 0x7e838a83
/* 08052828 */ .word 0x4e836283
/* 0805282c */ .word 0x82205883
/* 08052830 */ .word 0x00000055
/* 08052834 */ .word 0xf189a18d
/* 08052838 */ .word 0xd382cc82
/* 0805283c */ .word 0xe882bd82
/* 08052840 */ .word 0x20468120
/* 08052844 */ .word 0xb9824b8d
/* 08052848 */ .word 0xc882c982
/* 0805284c */ .word 0xdc82e882
/* 08052850 */ .word 0xbd82b582
/* 08052854 */ .word 0x0000f481
/* 08052858 */ .word 0xf189a18d
/* 0805285c */ .word 0xd382cc82
/* 08052860 */ .word 0xe882bd82
/* 08052864 */ .word 0x20468120
/* 08052868 */ .word 0xcc82b182
/* 0805286c */ .word 0xab82b382
/* 08052870 */ .word 0x60834181
/* 08052874 */ .word 0x62838783
/* 08052878 */ .word 0x73956783
/* 0805287c */ .word 0xa982c088
/* 08052880 */ .word 0x6381e082
/* 08052884 */ .word 0x00000000
/* 08052888 */ .word 0xf189a18d
/* 0805288c */ .word 0xd382cc82
/* 08052890 */ .word 0xe882bd82
/* 08052894 */ .word 0x20468120
/* 08052898 */ .word 0x83835783
/* 0805289c */ .word 0xb3827d83
/* 080528a0 */ .word 0xc482ea82
/* 080528a4 */ .word 0xdc82b582
/* 080528a8 */ .word 0xbd82c182
/* 080528ac */ .word 0x00004981
/* 080528b0 */ .word 0x7e838a83
/* 080528b4 */ .word 0x4e836283
/* 080528b8 */ .word 0x82205883
/* 080528bc */ .word 0x00000054
/* 080528c0 */ .word 0xf189a18d
/* 080528c4 */ .word 0x5693cc82
/* 080528c8 */ .word 0x8120438b
/* 080528cc */ .word 0x6e832046
/* 080528d0 */ .word 0x73836283
/* 080528d4 */ .word 0xc8825b81
/* 080528d8 */ .word 0xea82b090
/* 080528dc */ .word 0x49814981
/* 080528e0 */ .word 0x00000000
/* 080528e4 */ .word 0xf189a18d
/* 080528e8 */ .word 0x5693cc82
/* 080528ec */ .word 0x8120438b
/* 080528f0 */ .word 0xad822046
/* 080528f4 */ .word 0xe882e082
/* 080528f8 */ .word 0x00000000
/* 080528fc */ .word 0xf189a18d
/* 08052900 */ .word 0x5693cc82
/* 08052904 */ .word 0x8120438b
/* 08052908 */ .word 0x4a892046
/* 0805290c */ .word 0x00000000
/* 08052910 */ .word 0x7e838a83
/* 08052914 */ .word 0x4e836283
/* 08052918 */ .word 0x82205883
/* 0805291c */ .word 0x00000053
/* 08052920 */ .word 0xf189a18d
/* 08052924 */ .word 0x8983cc82
/* 08052928 */ .word 0x81207583
/* 0805292c */ .word 0x89832046
/* 08052930 */ .word 0x89837583
/* 08052934 */ .word 0xc5827583
/* 08052938 */ .word 0xb7825b81
/* 0805293c */ .word 0x49814981
/* 08052940 */ .word 0x00000000
/* 08052944 */ .word 0xf189a18d
/* 08052948 */ .word 0x8983cc82
/* 0805294c */ .word 0x81207583
/* 08052950 */ .word 0xc6822046
/* 08052954 */ .word 0xc482c182
/* 08052958 */ .word 0x7483e082
/* 0805295c */ .word 0x93838c83
/* 08052960 */ .word 0x8a836883
/* 08052964 */ .word 0xc8825b81
/* 08052968 */ .word 0xb682b48a
/* 0805296c */ .word 0x0000f481
/* 08052970 */ .word 0xf189a18d
/* 08052974 */ .word 0x8983cc82
/* 08052978 */ .word 0x81207583
/* 0805297c */ .word 0x75832046
/* 08052980 */ .word 0x5b818d83
/* 08052984 */ .word 0x93834e83
/* 08052988 */ .word 0x5b816e83
/* 0805298c */ .word 0xa9826783
/* 08052990 */ .word 0x6381e082
/* 08052994 */ .word 0x00000000
/* 08052998 */ .word 0x7e838a83
/* 0805299c */ .word 0x4e836283
/* 080529a0 */ .word 0x82205883
/* 080529a4 */ .word 0x00000052
/* 080529a8 */ .word 0xf189a18d
/* 080529ac */ .word 0x4d94cc82
/* 080529b0 */ .word 0x8120438b
/* 080529b4 */ .word 0xb7822046
/* 080529b8 */ .word 0xa282b282
/* 080529bc */ .word 0xef89e591
/* 080529c0 */ .word 0x78838c83
/* 080529c4 */ .word 0x49818b83
/* 080529c8 */ .word 0x00004981
/* 080529cc */ .word 0xf189a18d
/* 080529d0 */ .word 0x4d94cc82
/* 080529d4 */ .word 0x8120438b
/* 080529d8 */ .word 0x798a2046
/* 080529dc */ .word 0xad82b582
/* 080529e0 */ .word 0x83834c83
/* 080529e4 */ .word 0x60836283
/* 080529e8 */ .word 0x5b817b83
/* 080529ec */ .word 0x8c838b83
/* 080529f0 */ .word 0x8b837883
/* 080529f4 */ .word 0x00000000
/* 080529f8 */ .word 0xf189a18d
/* 080529fc */ .word 0x4d94cc82
/* 08052a00 */ .word 0x8120438b
/* 08052a04 */ .word 0xd0822046
/* 08052a08 */ .word 0xe882c682
/* 08052a0c */ .word 0xfb97c582
/* 08052a10 */ .word 0x8c834b8f
/* 08052a14 */ .word 0x8b837883
/* 08052a18 */ .word 0x00000000
/* 08052a1c */ .word 0x7e838a83
/* 08052a20 */ .word 0x4e836283
/* 08052a24 */ .word 0x82205883
/* 08052a28 */ .word 0x00000051
/* 08052a2c */ .word 0xf189a18d
/* 08052a30 */ .word 0x6683cc82
/* 08052a34 */ .word 0x81204c83
/* 08052a38 */ .word 0xc8822046
/* 08052a3c */ .word 0xc682f182
/* 08052a40 */ .word 0x83204181
/* 08052a44 */ .word 0x83428366
/* 08052a48 */ .word 0x835b8169
/* 08052a4c */ .word 0x8389834e
/* 08052a50 */ .word 0x81498158
/* 08052a54 */ .word 0x00000049
/* 08052a58 */ .word 0xf189a18d
/* 08052a5c */ .word 0x6683cc82
/* 08052a60 */ .word 0x81204c83
/* 08052a64 */ .word 0xa9922046
/* 08052a68 */ .word 0x4e834890
/* 08052a6c */ .word 0x58838983
/* 08052a70 */ .word 0x00000000
/* 08052a74 */ .word 0xf189a18d
/* 08052a78 */ .word 0x6683cc82
/* 08052a7c */ .word 0x81204c83
/* 08052a80 */ .word 0x4c942046
/* 08052a84 */ .word 0xa882cc82
/* 08052a88 */ .word 0xc282e282
/* 08052a8c */ .word 0x89834e83
/* 08052a90 */ .word 0x00005883
/* 08052a94 */ .word 0x7e834c83
/* 08052a98 */ .word 0xc08ecc82
/* 08052a9c */ .word 0xf082cd97
/* 08052aa0 */ .word 0x828e8e0a
/* 08052aa4 */ .word 0x82c482b5
/* 08052aa8 */ .word 0x82c482dd
/* 08052aac */ .word 0x81e982dd
/* 08052ab0 */ .word 0xb1820a48
/* 08052ab4 */ .word 0xdc82ea82
/* 08052ab8 */ .word 0xcc82c582
/* 08052abc */ .word 0xb18c6f8c
/* 08052ac0 */ .word 0x830aaa82
/* 08052ac4 */ .word 0x826d8382
/* 08052ac8 */ .word 0x82be8cf0
/* 08052acc */ .word 0x818883a4
/* 08052ad0 */ .word 0x00498160
/* 08052ad4 */ .word 0x7e838a83
/* 08052ad8 */ .word 0x4e836283
/* 08052adc */ .word 0x82205883
/* 08052ae0 */ .word 0x00000050
/* 08052ae4 */ .word 0x93837b83
/* 08052ae8 */ .word 0x93835f83
/* 08052aec */ .word 0xc1825883
/* 08052af0 */ .word 0x8220c482
/* 08052af4 */ .word 0x82b282b7
/* 08052af8 */ .word 0x82798aad
/* 08052afc */ .word 0x82a282b5
/* 08052b00 */ .word 0x816c83e6
/* 08052b04 */ .word 0x0049815b
/* 08052b08 */ .word 0x5b81a482
/* 08052b0c */ .word 0x4181f182
/* 08052b10 */ .word 0xaa824a89
/* 08052b14 */ .word 0xc182d382
/* 08052b18 */ .word 0xab82c482
/* 08052b1c */ .word 0xe182bf82
/* 08052b20 */ .word 0xbd82c182
/* 08052b24 */ .word 0x00004281
/* 08052b28 */ .word 0xa482e082
/* 08052b2c */ .word 0xe282a282
/* 08052b30 */ .word 0x00006381
/* 08052b34 */ .word 0xea82b182
/* 08052b38 */ .word 0x8220aa82
/* 08052b3c */ .word 0x82dc82a2
/* 08052b40 */ .word 0x82ab82c7
/* 08052b44 */ .word 0xda820acc
/* 08052b48 */ .word 0xa882f182
/* 08052b4c */ .word 0xe882c782
/* 08052b50 */ .word 0x830a4981
/* 08052b54 */ .word 0x838a836d
/* 08052b58 */ .word 0x828a836d
/* 08052b5c */ .word 0x818883be
/* 08052b60 */ .word 0x43830a49
/* 08052b64 */ .word 0x5b814683
/* 08052b68 */ .word 0x49814383
/* 08052b6c */ .word 0x00000000
/* 08052b70 */ .word 0x93837b83
/* 08052b74 */ .word 0x93835f83
/* 08052b78 */ .word 0x00005883
/* 08052b7c */ .word 0x5b81a082
/* 08052b80 */ .word 0x798a4181
/* 08052b84 */ .word 0xa982b582
/* 08052b88 */ .word 0xbd82c182
/* 08052b8c */ .word 0x00004981
/* 08052b90 */ .word 0xf182b982
/* 08052b94 */ .word 0xa482b182
/* 08052b98 */ .word 0xce89d489
/* 08052b9c */ .word 0xc482c182
/* 08052ba0 */ .word 0xb9824181
/* 08052ba4 */ .word 0xc882c282
/* 08052ba8 */ .word 0xcb82a282
/* 08052bac */ .word 0x00004281
/* 08052bb0 */ .word 0xde82b382
/* 08052bb4 */ .word 0xed82a282
/* 08052bb8 */ .word 0x00006381
/* 08052bbc */ .word 0xf182da82
/* 08052bc0 */ .word 0xc782a882
/* 08052bc4 */ .word 0xcc82e882
/* 08052bc8 */ .word 0x82a4820a
/* 08052bcc */ .word 0x20c982bd
/* 08052bd0 */ .word 0xed82a082
/* 08052bd4 */ .word 0xc482b982
/* 08052bd8 */ .word 0x8370830a
/* 08052bdc */ .word 0x82628393
/* 08052be0 */ .word 0xe88e20c6
/* 08052be4 */ .word 0x820af082
/* 08052be8 */ .word 0x82bd82bd
/* 08052bec */ .word 0x82dc82ab
/* 08052bf0 */ .word 0x82e582b5
/* 08052bf4 */ .word 0x004281a4
/* 08052bf8 */ .word 0x99815583
/* 08052bfc */ .word 0xf182da82
/* 08052c00 */ .word 0xc782a882
/* 08052c04 */ .word 0x0000e882
/* 08052c08 */ .word 0x458aa290
/* 08052c0c */ .word 0x738db797
/* 08052c10 */ .word 0x82e08220
/* 08052c14 */ .word 0x82c182e7
/* 08052c18 */ .word 0x82e182bf
/* 08052c1c */ .word 0x81bd82c1
/* 08052c20 */ .word 0x00000049
/* 08052c24 */ .word 0xf1899f8e
/* 08052c28 */ .word 0xfc8cc982
/* 08052c2c */ .word 0xc482af82
/* 08052c30 */ .word 0x8bd79520
/* 08052c34 */ .word 0x954181ad
/* 08052c38 */ .word 0x81ad8bd7
/* 08052c3c */ .word 0x7a7a5a63
/* 08052c40 */ .word 0x00000000
/* 08052c44 */ .word 0x4181dc82
/* 08052c48 */ .word 0x82b18220
/* 08052c4c */ .word 0x82c882f1
/* 08052c50 */ .word 0x82cc82e0
/* 08052c54 */ .word 0x004281b3
/* 08052c58 */ .word 0xef89698e
/* 08052c5c */ .word 0xcc82d28e
/* 08052c60 */ .word 0x810a4181
/* 08052c64 */ .word 0x82bd8275
/* 08052c68 */ .word 0x82a282bd
/* 08052c6c */ .word 0x90f189bd
/* 08052c70 */ .word 0x82768194
/* 08052c74 */ .word 0x96930af0
/* 08052c78 */ .word 0xe982c482
/* 08052c7c */ .word 0x93834a83
/* 08052c80 */ .word 0x93835e83
/* 08052c84 */ .word 0x830ac882
/* 08052c88 */ .word 0x8343834e
/* 08052c8c */ .word 0x82c58259
/* 08052c90 */ .word 0x004281b7
/* 08052c94 */ .word 0x43834e83
/* 08052c98 */ .word 0x00005983
/* 08052c9c */ .word 0xa482bb82
/* 08052ca0 */ .word 0xa482bb82
/* 08052ca4 */ .word 0x83528320
/* 08052ca8 */ .word 0x8352838c
/* 08052cac */ .word 0x8241818c
/* 08052cb0 */ .word 0x82ea82b1
/* 08052cb4 */ .word 0x81ed82e2
/* 08052cb8 */ .word 0x8149815b
/* 08052cbc */ .word 0x83438349
/* 08052cc0 */ .word 0x835b8146
/* 08052cc4 */ .word 0x00498143
/* 08052cc8 */ .word 0xf182c882
/* 08052ccc */ .word 0x8220a982
/* 08052cd0 */ .word 0x82e582bf
/* 08052cd4 */ .word 0x20c682c1
/* 08052cd8 */ .word 0x7d834383
/* 08052cdc */ .word 0x60834383
/* 08052ce0 */ .word 0xe082a982
/* 08052ce4 */ .word 0x49816381
/* 08052ce8 */ .word 0x00000000
/* 08052cec */ .word 0xf182b182
/* 08052cf0 */ .word 0xf182c882
/* 08052cf4 */ .word 0x82bf8220
/* 08052cf8 */ .word 0x82a482e1
/* 08052cfc */ .word 0x819f82ed
/* 08052d00 */ .word 0x00000063
/* 08052d04 */ .word 0xcc82a082
/* 08052d08 */ .word 0x62838983
/* 08052d0c */ .word 0x81837683
/* 08052d10 */ .word 0xc9829383
/* 08052d14 */ .word 0x8389830a
/* 08052d18 */ .word 0x836f8343
/* 08052d1c */ .word 0x93aa828b
/* 08052d20 */ .word 0x82ea8f6f
/* 08052d24 */ .word 0x0a4981be
/* 08052d28 */ .word 0x85834c83
/* 08052d2c */ .word 0x67835b81
/* 08052d30 */ .word 0x7b83c882
/* 08052d34 */ .word 0x58834383
/* 08052d38 */ .word 0x820ac982
/* 08052d3c */ .word 0x20a482e0
/* 08052d40 */ .word 0x8d838183
/* 08052d44 */ .word 0x8d838183
/* 08052d48 */ .word 0x00004981
/* 08052d4c */ .word 0x62838983
/* 08052d50 */ .word 0x45837683
/* 08052d54 */ .word 0x81834383
/* 08052d58 */ .word 0x00009383
/* 08052d5c */ .word 0xea82b182
/* 08052d60 */ .word 0xe782a982
/* 08052d64 */ .word 0x8220e082
/* 08052d68 */ .word 0x82eb82e6
/* 08052d6c */ .word 0x20ad82b5
/* 08052d70 */ .word 0xcc82bd82
/* 08052d74 */ .word 0xdc82f182
/* 08052d78 */ .word 0xb982c182
/* 08052d7c */ .word 0x49815b81
/* 08052d80 */ .word 0x00004981
/* 08052d84 */ .word 0x46836083
/* 08052d88 */ .word 0x42816283
/* 08052d8c */ .word 0x82c88220
/* 08052d90 */ .word 0x20a982f1
/* 08052d94 */ .word 0x718eb292
/* 08052d98 */ .word 0xe982ed82
/* 08052d9c */ .word 0xed82a282
/* 08052da0 */ .word 0x42819f82
/* 08052da4 */ .word 0x00000000
/* 08052da8 */ .word 0x8c834983
/* 08052dac */ .word 0xbf82bd82
/* 08052db0 */ .word 0x83204181
/* 08052db4 */ .word 0x8254835f
/* 08052db8 */ .word 0x82e282a2
/* 08052dbc */ .word 0x006381f1
/* 08052dc0 */ .word 0x5b814e83
/* 08052dc4 */ .word 0xc8828b83
/* 08052dc8 */ .word 0xbd82d382
/* 08052dcc */ .word 0x6791e882
/* 08052dd0 */ .word 0x820aaa82
/* 08052dd4 */ .word 0x82c182e2
/* 08052dd8 */ .word 0x82ab82c4
/* 08052ddc */ .word 0x0a4981bd
/* 08052de0 */ .word 0x63834183
/* 08052de4 */ .word 0x8983a282
/* 08052de8 */ .word 0x76836283
/* 08052dec */ .word 0x910ac582
/* 08052df0 */ .word 0x815283e5
/* 08052df4 */ .word 0x8374835b
/* 08052df8 */ .word 0x82be8293
/* 08052dfc */ .word 0x004981ba
/* 08052e00 */ .word 0x62838983
/* 08052e04 */ .word 0x81837683
/* 08052e08 */ .word 0x00009383
/* 08052e0c */ .word 0x4e837b83
/* 08052e10 */ .word 0xbf82bd82
/* 08052e14 */ .word 0x8320cd82
/* 08052e18 */ .word 0x835b8158
/* 08052e1c */ .word 0x835b8170
/* 08052e20 */ .word 0x83588352
/* 08052e24 */ .word 0x83588382
/* 08052e28 */ .word 0x825b815e
/* 08052e2c */ .word 0x814981b3
/* 08052e30 */ .word 0x00000049
/* 08052e34 */ .word 0xc882a082
/* 08052e38 */ .word 0xbd82bd82
/* 08052e3c */ .word 0xc182bf82
/* 08052e40 */ .word 0x8220c482
/* 08052e44 */ .word 0x82f182b1
/* 08052e48 */ .word 0x82e082c8
/* 08052e4c */ .word 0x82c882cc
/* 08052e50 */ .word 0x004881cc
/* 08052e54 */ .word 0x4181a882
/* 08052e58 */ .word 0xed82a882
/* 08052e5c */ .word 0xbe82e882
/* 08052e60 */ .word 0x49815b81
/* 08052e64 */ .word 0x00004981
/* 08052e68 */ .word 0x88924689
/* 08052e6c */ .word 0xe391f082
/* 08052e70 */ .word 0xb7825c95
/* 08052e74 */ .word 0x830ae982
/* 08052e78 */ .word 0x8393835f
/* 08052e7c */ .word 0x825b8154
/* 08052e80 */ .word 0x81bf82bd
/* 08052e84 */ .word 0x4c830a49
/* 08052e88 */ .word 0xbd828c83
/* 08052e8c */ .word 0xab82ae93
/* 08052e90 */ .word 0x820ac982
/* 08052e94 */ .word 0x82ac82ad
/* 08052e98 */ .word 0x82af82c3
/* 08052e9c */ .word 0x81b782c5
/* 08052ea0 */ .word 0x00498149
/* 08052ea4 */ .word 0x58835283
/* 08052ea8 */ .word 0x5f838283
/* 08052eac */ .word 0x58839383
/* 08052eb0 */ .word 0x00000000
/* 08052eb4 */ .word 0x4e837b83
/* 08052eb8 */ .word 0xbf82bd82
/* 08052ebc */ .word 0x8320cd82
/* 08052ec0 */ .word 0x81798358
/* 08052ec4 */ .word 0x8358835b
/* 08052ec8 */ .word 0x835b8158
/* 08052ecc */ .word 0x835b8170
/* 08052ed0 */ .word 0x815e8358
/* 08052ed4 */ .word 0x8149815b
/* 08052ed8 */ .word 0x00000049
/* 08052edc */ .word 0xcc82a082
/* 08052ee0 */ .word 0xcc82af90
/* 08052ee4 */ .word 0xa482e682
/* 08052ee8 */ .word 0x8220c982
/* 08052eec */ .word 0x82aa82a9
/* 08052ef0 */ .word 0x82ab82e2
/* 08052ef4 */ .word 0x82a282bd
/* 08052ef8 */ .word 0x006381c8
/* 08052efc */ .word 0x41817583
/* 08052f00 */ .word 0x83758320
/* 08052f04 */ .word 0x83628389
/* 08052f08 */ .word 0x817a834e
/* 08052f0c */ .word 0x828b835b
/* 08052f10 */ .word 0x815b81be
/* 08052f14 */ .word 0x00498149
/* 08052f18 */ .word 0xb182b182
/* 08052f1c */ .word 0xb396cd82
/* 08052f20 */ .word 0xcd97648f
/* 08052f24 */ .word 0x4689cc82
/* 08052f28 */ .word 0x42818892
/* 08052f2c */ .word 0x82c5820a
/* 08052f30 */ .word 0x204181e0
/* 08052f34 */ .word 0xc782a882
/* 08052f38 */ .word 0xa482eb82
/* 08052f3c */ .word 0x49818883
/* 08052f40 */ .word 0x838c830a
/* 08052f44 */ .word 0x83638362
/* 08052f48 */ .word 0x81798358
/* 08052f4c */ .word 0x8358835b
/* 08052f50 */ .word 0x8393835f
/* 08052f54 */ .word 0x00498158
/* 08052f58 */ .word 0x79835883
/* 08052f5c */ .word 0x58835b81
/* 08052f60 */ .word 0x93835f83
/* 08052f64 */ .word 0x00005883
/* 08052f68 */ .word 0xc182e282
/* 08052f6c */ .word 0x4981bd82
/* 08052f70 */ .word 0x82204981
/* 08052f74 */ .word 0x82718ba8
/* 08052f78 */ .word 0x20f182b3
/* 08052f7c */ .word 0xb582798a
/* 08052f80 */ .word 0xc582f182
/* 08052f84 */ .word 0xea82ad82
/* 08052f88 */ .word 0x5b81bd82
/* 08052f8c */ .word 0x49814981
/* 08052f90 */ .word 0x00000000
/* 08052f94 */ .word 0x4e837b83
/* 08052f98 */ .word 0xbf82bd82
/* 08052f9c */ .word 0x82b18220
/* 08052fa0 */ .word 0x82c882f1
/* 08052fa4 */ .word 0x82f182e0
/* 08052fa8 */ .word 0x82e182b6
/* 08052fac */ .word 0x82a282c8
/* 08052fb0 */ .word 0x81b882cd
/* 08052fb4 */ .word 0x00000063
/* 08052fb8 */ .word 0x718ba882
/* 08052fbc */ .word 0xf182b382
/* 08052fc0 */ .word 0x82204181
/* 08052fc4 */ .word 0x82b182a8
/* 08052fc8 */ .word 0x82c482c1
/* 08052fcc */ .word 0x816c83bd
/* 08052fd0 */ .word 0x00000063
/* 08052fd4 */ .word 0x93837983
/* 08052fd8 */ .word 0x93834d83
/* 08052fdc */ .word 0xbd824e8c
/* 08052fe0 */ .word 0xcc82bf82
/* 08052fe4 */ .word 0x8356830a
/* 08052fe8 */ .word 0x835b8187
/* 08052fec */ .word 0x8343835e
/* 08052ff0 */ .word 0x0aaa8280
/* 08052ff4 */ .word 0xb682cd82
/* 08052ff8 */ .word 0xe982dc82
/* 08052ffc */ .word 0x49818883
/* 08053000 */ .word 0x81ed820a
/* 08053004 */ .word 0x82a2825b
/* 08053008 */ .word 0x825b81ed
/* 0805300c */ .word 0x004981a2
/* 08053010 */ .word 0x87835683
/* 08053014 */ .word 0x5e835b81
/* 08053018 */ .word 0x80834383
/* 0805301c */ .word 0x00000000
/* 08053020 */ .word 0x93835283
/* 08053024 */ .word 0x6c837283
/* 08053028 */ .word 0x56835b81
/* 0805302c */ .word 0x93838783
/* 08053030 */ .word 0x836f8320
/* 08053034 */ .word 0x83608362
/* 08053038 */ .word 0x81498156
/* 0805303c */ .word 0x00000049
/* 08053040 */ .word 0xe382bf82
/* 08053044 */ .word 0xc682a482
/* 08053048 */ .word 0x93836e83
/* 0805304c */ .word 0xc5827083
/* 08053050 */ .word 0xbd82b582
/* 08053054 */ .word 0x00006381
/* 08053058 */ .word 0xb582e591
/* 0805305c */ .word 0xcf82c182
/* 08053060 */ .word 0xbe82a282
/* 08053064 */ .word 0x49816081
/* 08053068 */ .word 0x00004981
/* 0805306c */ .word 0xac82b182
/* 08053070 */ .word 0xcb82c282
/* 08053074 */ .word 0x89836783
/* 08053078 */ .word 0x41819383
/* 0805307c */ .word 0x82bb820a
/* 08053080 */ .word 0x83c482b5
/* 08053084 */ .word 0x838a837c
/* 08053088 */ .word 0x0acc8293
/* 0805308c */ .word 0x4e834183
/* 08053090 */ .word 0x6f838d83
/* 08053094 */ .word 0x42836583
/* 08053098 */ .word 0x4e836283
/* 0805309c */ .word 0x87835683
/* 080530a0 */ .word 0xaa825b81
/* 080530a4 */ .word 0xb682cd82
/* 080530a8 */ .word 0xe982dc82
/* 080530ac */ .word 0x49818883
/* 080530b0 */ .word 0x00000000
/* 080530b4 */ .word 0x89836783
/* 080530b8 */ .word 0xc6829383
/* 080530bc */ .word 0x8a837c83
/* 080530c0 */ .word 0x00009383
/* 080530c4 */ .word 0xf182dd82
/* 080530c8 */ .word 0x4181c882
/* 080530cc */ .word 0x82e68220
/* 080530d0 */ .word 0x82c182a9
/* 080530d4 */ .word 0x816c83bd
/* 080530d8 */ .word 0x00000049
/* 080530dc */ .word 0x5b816083
/* 080530e0 */ .word 0x82205983
/* 080530e4 */ .word 0x82a282a8
/* 080530e8 */ .word 0x82a282b5
/* 080530ec */ .word 0x004281cb
/* 080530f0 */ .word 0x5b816083
/* 080530f4 */ .word 0x90205983
/* 080530f8 */ .word 0x82d78248
/* 080530fc */ .word 0x82a282bd
/* 08053100 */ .word 0x816081e6
/* 08053104 */ .word 0x00000063
/* 08053108 */ .word 0xc882a082
/* 0805310c */ .word 0xcd82bd82
/* 08053110 */ .word 0x59836c83
/* 08053114 */ .word 0x42817e83
/* 08053118 */ .word 0x83e5910a
/* 0805311c */ .word 0x824c8358
/* 08053120 */ .word 0x816083c8
/* 08053124 */ .word 0x8259835b
/* 08053128 */ .word 0xdf820af0
/* 0805312c */ .word 0xb582b482
/* 08053130 */ .word 0x830ac482
/* 08053134 */ .word 0x83678358
/* 08053138 */ .word 0x81768362
/* 0805313c */ .word 0x81538395
/* 08053140 */ .word 0x8149815b
/* 08053144 */ .word 0x00000049
/* 08053148 */ .word 0xc182b182
/* 0805314c */ .word 0xe882bb82
/* 08053150 */ .word 0x83898320
/* 08053154 */ .word 0x00678362
/* 08053158 */ .word 0xad8bc58d
/* 0805315c */ .word 0x93838183
/* 08053160 */ .word 0x5b816f83
/* 08053164 */ .word 0xbd82cc82
/* 08053168 */ .word 0xb682f182
/* 0805316c */ .word 0xa482e582
/* 08053170 */ .word 0x5b81be82
/* 08053174 */ .word 0x49814981
/* 08053178 */ .word 0x00000000
/* 0805317c */ .word 0x8d837b83
/* 08053180 */ .word 0x8d837b83
/* 08053184 */ .word 0x4083be82
/* 08053188 */ .word 0x49816081
/* 0805318c */ .word 0x00000000
/* 08053190 */ .word 0x58836783
/* 08053194 */ .word 0x5b817b83
/* 08053198 */ .word 0x59834383
/* 0805319c */ .word 0x00518220
/* 080531a0 */ .word 0x5795da96
/* 080531a4 */ .word 0x4181cd82
/* 080531a8 */ .word 0x83678320
/* 080531ac */ .word 0x8aa29058
/* 080531b0 */ .word 0x8e499145
/* 080531b4 */ .word 0x20a08ce8
/* 080531b8 */ .word 0x9f8f4497
/* 080531bc */ .word 0x5b81be82
/* 080531c0 */ .word 0x49814981
/* 080531c4 */ .word 0x00000000
/* 080531c8 */ .word 0xbe82dc82
/* 080531cc */ .word 0xbe82dc82
/* 080531d0 */ .word 0xc182e082
/* 080531d4 */ .word 0xe38fc682
/* 080531d8 */ .word 0xc982e88e
/* 080531dc */ .word 0xab82c582
/* 080531e0 */ .word 0xcd82e982
/* 080531e4 */ .word 0x4981b882
/* 080531e8 */ .word 0x00000000
/* 080531ec */ .word 0x81835f83
/* 080531f0 */ .word 0x81835f83
/* 080531f4 */ .word 0x4083be82
/* 080531f8 */ .word 0x49816081
/* 080531fc */ .word 0x00000000
/* 08053200 */ .word 0xa982c882
/* 08053204 */ .word 0xb582e682
/* 08053208 */ .word 0x6c905282
/* 0805320c */ .word 0x41816791
/* 08053210 */ .word 0x82ba900a
/* 08053214 */ .word 0x82a982f0
/* 08053218 */ .word 0x82a082af
/* 0805321c */ .word 0x82c882a2
/* 08053220 */ .word 0x0ae782aa
/* 08053224 */ .word 0xc282a282
/* 08053228 */ .word 0x798ae082
/* 0805322c */ .word 0xad82b582
/* 08053230 */ .word 0x58836783
/* 08053234 */ .word 0x970acc82
/* 08053238 */ .word 0x824b8ffb
/* 0805323c */ .word 0x82c482b5
/* 08053240 */ .word 0x81b782dc
/* 08053244 */ .word 0x00000042
/* 08053248 */ .word 0x58836783
/* 0805324c */ .word 0x5b817b83
/* 08053250 */ .word 0x59834383
/* 08053254 */ .word 0x00000000
/* 08053258 */ .word 0x59838a83
/* 0805325c */ .word 0xa8828083
/* 08053260 */ .word 0x9a8e4b8f
/* 08053264 */ .word 0x00518220
/* 08053268 */ .word 0x4b8fa882
/* 0805326c */ .word 0xc1829a8e
/* 08053270 */ .word 0x8320c482
/* 08053274 */ .word 0x838a836d
/* 08053278 */ .word 0x828a836d
/* 0805327c */ .word 0x816c83be
/* 08053280 */ .word 0x00498149
/* 08053284 */ .word 0x4b8fa882
/* 08053288 */ .word 0xf0829a8e
/* 0805328c */ .word 0x82e08220
/* 08053290 */ .word 0x8ac682c1
/* 08053294 */ .word 0x82b58279
/* 08053298 */ .word 0x81a482e0
/* 0805329c */ .word 0x00000049
/* 080532a0 */ .word 0x6081d382
/* 080532a4 */ .word 0x20206381
/* 080532a8 */ .word 0x4a834183
/* 080532ac */ .word 0xed829383
/* 080532b0 */ .word 0x00004281
/* 080532b4 */ .word 0xf0824d95
/* 080532b8 */ .word 0xc182678e
/* 080532bc */ .word 0xfa93c482
/* 080532c0 */ .word 0xea8c7b96
/* 080532c4 */ .word 0x8f0af082
/* 080532c8 */ .word 0x82ab8291
/* 080532cc */ .word 0x81b782dc
/* 080532d0 */ .word 0xa0820a42
/* 080532d4 */ .word 0xbd82c882
/* 080532d8 */ .word 0xb782aa82
/* 080532dc */ .word 0xcc82e982
/* 080532e0 */ .word 0x830acd82
/* 080532e4 */ .word 0x83438349
/* 080532e8 */ .word 0x82438356
/* 080532ec */ .word 0x82b182c6
/* 080532f0 */ .word 0x81af82be
/* 080532f4 */ .word 0x00000042
/* 080532f8 */ .word 0x59838a83
/* 080532fc */ .word 0xa8828083
/* 08053300 */ .word 0x9a8e4b8f
/* 08053304 */ .word 0x00000000
/* 08053308 */ .word 0xce89d489
/* 0805330c */ .word 0xb182cc82
/* 08053310 */ .word 0xc882c682
/* 08053314 */ .word 0x4983e782
/* 08053318 */ .word 0xc9828c83
/* 0805331c */ .word 0xa982dc82
/* 08053320 */ .word 0xeb82b982
/* 08053324 */ .word 0x49814981
/* 08053328 */ .word 0x00000000
/* 0805332c */ .word 0xa982c882
/* 08053330 */ .word 0xa982c882
/* 08053334 */ .word 0x6683cc82
/* 08053338 */ .word 0xbe824c83
/* 0805333c */ .word 0x4981ba82
/* 08053340 */ .word 0x00000000
/* 08053344 */ .word 0x7a835183
/* 08053348 */ .word 0x7a835183
/* 0805334c */ .word 0x63816283
/* 08053350 */ .word 0x94b88e20
/* 08053354 */ .word 0x00428173
/* 08053358 */ .word 0xc682c489
/* 0805335c */ .word 0xa682a282
/* 08053360 */ .word 0xb382ce82
/* 08053364 */ .word 0x820a4181
/* 08053368 */ .word 0x82c182e2
/* 0805336c */ .word 0x89d489cf
/* 08053370 */ .word 0x82a982ce
/* 08053374 */ .word 0x0a4881c8
/* 08053378 */ .word 0xa0824690
/* 0805337c */ .word 0xe282b482
/* 08053380 */ .word 0xc982a982
/* 08053384 */ .word 0x82c5910a
/* 08053388 */ .word 0x82e38fbf
/* 0805338c */ .word 0x82e682b0
/* 08053390 */ .word 0x004981a4
/* 08053394 */ .word 0xce89d489
/* 08053398 */ .word 0x00000000
/* 0805339c */ .word 0xf182dc82
/* 080533a0 */ .word 0x49815f93
/* 080533a4 */ .word 0x00004981
/* 080533a8 */ .word 0x6e928592
/* 080533ac */ .word 0xb88ecd82
/* 080533b0 */ .word 0xb5827394
/* 080533b4 */ .word 0xe182bf82
/* 080533b8 */ .word 0xbd82c182
/* 080533bc */ .word 0x00006381
/* 080533c0 */ .word 0xc9828e8c
/* 080533c4 */ .word 0xe882418b
/* 080533c8 */ .word 0x6081bd82
/* 080533cc */ .word 0x4981a282
/* 080533d0 */ .word 0x00000000
/* 080533d4 */ .word 0x83835783
/* 080533d8 */ .word 0x76839383
/* 080533dc */ .word 0xbe93aa82
/* 080533e0 */ .word 0xc882d388
/* 080533e4 */ .word 0x8292940a
/* 080533e8 */ .word 0x834583a2
/* 080533ec */ .word 0x824d8354
/* 080533f0 */ .word 0x81f182b3
/* 080533f4 */ .word 0x72830a42
/* 080533f8 */ .word 0x67835b81
/* 080533fc */ .word 0xcc82c982
/* 08053400 */ .word 0xc482c182
/* 08053404 */ .word 0x82438a0a
/* 08053408 */ .word 0x82ed82f0
/* 0805340c */ .word 0x82eb82bd
/* 08053410 */ .word 0x004981a4
/* 08053414 */ .word 0x54834583
/* 08053418 */ .word 0xc6824d83
/* 0805341c */ .word 0x0000d182
/* 08053420 */ .word 0x5b81ed82
/* 08053424 */ .word 0x4181a282
/* 08053428 */ .word 0x82ed8220
/* 0805342c */ .word 0x20b582bd
/* 08053430 */ .word 0xa482e082
/* 08053434 */ .word 0x82b38220
/* 08053438 */ .word 0x82b582dd
/* 0805343c */ .word 0x82c882ad
/* 08053440 */ .word 0x818883a2
/* 08053444 */ .word 0x00000049
/* 08053448 */ .word 0xc182e082
/* 0805344c */ .word 0x8920c682
/* 08053450 */ .word 0x82aa82d4
/* 08053454 */ .word 0x82ad82b3
/* 08053458 */ .word 0xa48220c6
/* 0805345c */ .word 0xb582ea82
/* 08053460 */ .word 0xc882a282
/* 08053464 */ .word 0x42816081
/* 08053468 */ .word 0x00000000
/* 0805346c */ .word 0xf182b182
/* 08053470 */ .word 0xcc82c882
/* 08053474 */ .word 0x5f838483
/* 08053478 */ .word 0x41816081
/* 0805347c */ .word 0x82b18220
/* 08053480 */ .word 0x83a282ed
/* 08053484 */ .word 0x81608188
/* 08053488 */ .word 0x00000049
/* 0805348c */ .word 0xc882a082
/* 08053490 */ .word 0xcd82bd82
/* 08053494 */ .word 0xd982dc82
/* 08053498 */ .word 0x678ea482
/* 0805349c */ .word 0x4281a282
/* 080534a0 */ .word 0x82b3820a
/* 080534a4 */ .word 0x82b582dd
/* 080534a8 */ .word 0x82e882aa
/* 080534ac */ .word 0x0acc82e2
/* 080534b0 */ .word 0xb682a882
/* 080534b4 */ .word 0xa482e582
/* 080534b8 */ .word 0xe182bf82
/* 080534bc */ .word 0xc982f182
/* 080534c0 */ .word 0xf082d489
/* 080534c4 */ .word 0x8376830a
/* 080534c8 */ .word 0x835b838c
/* 080534cc */ .word 0x82678393
/* 080534d0 */ .word 0x82e682b5
/* 080534d4 */ .word 0x004281a4
/* 080534d8 */ .word 0xd982dc82
/* 080534dc */ .word 0xc282a482
/* 080534e0 */ .word 0xa282a982
/* 080534e4 */ .word 0x00000000
/* 080534e8 */ .word 0xd982b282
/* 080534ec */ .word 0xd182a482
/* 080534f0 */ .word 0x4181c982
/* 080534f4 */ .word 0xf182b182
/* 080534f8 */ .word 0xcc82c882
/* 080534fc */ .word 0xe782e082
/* 08053500 */ .word 0xc482c182
/* 08053504 */ .word 0xdc82b582
/* 08053508 */ .word 0xbd82c182
/* 0805350c */ .word 0x49814981
/* 08053510 */ .word 0x00000000
/* 08053514 */ .word 0xc182ae82
/* 08053518 */ .word 0x82204981
/* 0805351c */ .word 0x82c182e0
/* 08053520 */ .word 0x834a83c6
/* 08053524 */ .word 0x82528362
/* 08053528 */ .word 0x82ad82e6
/* 0805352c */ .word 0x82c782a8
/* 08053530 */ .word 0x82c882e7
/* 08053534 */ .word 0x82ea82af
/* 08053538 */ .word 0x004981ce
/* 0805353c */ .word 0x4181b182
/* 08053540 */ .word 0xea82b182
/* 08053544 */ .word 0xcd82c582
/* 08053548 */ .word 0x43834181
/* 0805354c */ .word 0x93834a83
/* 08053550 */ .word 0xa4824981
/* 08053554 */ .word 0xde826081
/* 08053558 */ .word 0x00006381
/* 0805355c */ .word 0x6990738d
/* 08053560 */ .word 0xb782f082
/* 08053564 */ .word 0xcc82e982
/* 08053568 */ .word 0x4281be82
/* 0805356c */ .word 0x82b1820a
/* 08053570 */ .word 0x82c782f1
/* 08053574 */ .word 0x20cd82cc
/* 08053578 */ .word 0xe582bf82
/* 0805357c */ .word 0xc682c182
/* 08053580 */ .word 0x8365830a
/* 08053584 */ .word 0x836a834e
/* 08053588 */ .word 0x828b834a
/* 0805358c */ .word 0x0a4981be
/* 08053590 */ .word 0xf182aa82
/* 08053594 */ .word 0xe882ce82
/* 08053598 */ .word 0xdc82bd82
/* 0805359c */ .word 0x4281a682
/* 080535a0 */ .word 0x00000000
/* 080535a4 */ .word 0x5b817d83
/* 080535a8 */ .word 0x83836083
/* 080535ac */ .word 0x00518220
/* 080535b0 */ .word 0x88924689
/* 080535b4 */ .word 0xcc826c90
/* 080535b8 */ .word 0x6f8f7e8b
/* 080535bc */ .word 0xe5914181
/* 080535c0 */ .word 0xf78cac90
/* 080535c4 */ .word 0x49814981
/* 080535c8 */ .word 0x00000000
/* 080535cc */ .word 0xfa93a18d
/* 080535d0 */ .word 0x4394cc82
/* 080535d4 */ .word 0xcd82b196
/* 080535d8 */ .word 0xa8824181
/* 080535dc */ .word 0xa482bb82
/* 080535e0 */ .word 0xc582b682
/* 080535e4 */ .word 0xb7825b81
/* 080535e8 */ .word 0x0000f481
/* 080535ec */ .word 0x9f82ed82
/* 080535f0 */ .word 0x4981c182
/* 080535f4 */ .word 0xa282a882
/* 080535f8 */ .word 0xaf82c482
/* 080535fc */ .word 0xe882da82
/* 08053600 */ .word 0xea82b382
/* 08053604 */ .word 0x4981bd82
/* 08053608 */ .word 0x00000000
/* 0805360c */ .word 0x6990738d
/* 08053610 */ .word 0xb782f082
/* 08053614 */ .word 0xcc82e982
/* 08053618 */ .word 0x4281be82
/* 0805361c */ .word 0x82a9820a
/* 08053620 */ .word 0x82c482c1
/* 08053624 */ .word 0x93738dc8
/* 08053628 */ .word 0x83cd82ae
/* 0805362c */ .word 0x835b8160
/* 08053630 */ .word 0x83f08280
/* 08053634 */ .word 0x8281835f
/* 08053638 */ .word 0x82b782c9
/* 0805363c */ .word 0x0a4981e9
/* 08053640 */ .word 0xf182aa82
/* 08053644 */ .word 0xe882ce82
/* 08053648 */ .word 0xdc82bd82
/* 0805364c */ .word 0x4281a682
/* 08053650 */ .word 0x00000000
/* 08053654 */ .word 0x5b817d83
/* 08053658 */ .word 0x83836083
/* 0805365c */ .word 0x00000000
/* 08053660 */ .word 0xcc82b182
/* 08053664 */ .word 0x9d8e438b
/* 08053668 */ .word 0x4181bf82
/* 0805366c */ .word 0xdc82c682
/* 08053670 */ .word 0xc882e782
/* 08053674 */ .word 0xa2825b81
/* 08053678 */ .word 0x00004981
/* 0805367c */ .word 0x6081a482
/* 08053680 */ .word 0x6381f182
/* 08053684 */ .word 0x82b78220
/* 08053688 */ .word 0x20b582b1
/* 0805368c */ .word 0xaa82bf82
/* 08053690 */ .word 0x4a83a482
/* 08053694 */ .word 0x57839383
/* 08053698 */ .word 0x00006381
/* 0805369c */ .word 0x5b814b83
/* 080536a0 */ .word 0x49819383
/* 080536a4 */ .word 0x00000000
/* 080536a8 */ .word 0x8b835483
/* 080536ac */ .word 0x7083aa82
/* 080536b0 */ .word 0x5b818f83
/* 080536b4 */ .word 0x62834183
/* 080536b8 */ .word 0x49817683
/* 080536bc */ .word 0x82a0820a
/* 080536c0 */ .word 0x82bd82c8
/* 080536c4 */ .word 0xa98220cd
/* 080536c8 */ .word 0xe782ea82
/* 080536cc */ .word 0x820ac982
/* 080536d0 */ .word 0x82a282c2
/* 080536d4 */ .word 0x82a282c4
/* 080536d8 */ .word 0x82e982af
/* 080536dc */ .word 0x814981a9
/* 080536e0 */ .word 0xdc820a48
/* 080536e4 */ .word 0xe982af82
/* 080536e8 */ .word 0x6081c882
/* 080536ec */ .word 0x00004981
/* 080536f0 */ .word 0x5b815883
/* 080536f4 */ .word 0x5b817083
/* 080536f8 */ .word 0x62835e83
/* 080536fc */ .word 0x00007683
/* 08053700 */ .word 0xaa95438b
/* 08053704 */ .word 0x8220cd82
/* 08053708 */ .word 0x81a482e0
/* 0805370c */ .word 0x83548341
/* 08053710 */ .word 0x81528343
/* 08053714 */ .word 0x8149815b
/* 08053718 */ .word 0x00000049
/* 0805371c */ .word 0xe582bf82
/* 08053720 */ .word 0xc682c182
/* 08053724 */ .word 0x83204181
/* 08053728 */ .word 0x82938377
/* 0805372c */ .word 0x836783c8
/* 08053730 */ .word 0x82a08252
/* 08053734 */ .word 0x82bd82c1
/* 08053738 */ .word 0x83c782af
/* 0805373c */ .word 0x0049816c
/* 08053740 */ .word 0x4f94b396
/* 08053744 */ .word 0xed82be82
/* 08053748 */ .word 0x00004281
/* 0805374c */ .word 0xc882a082
/* 08053750 */ .word 0xcd82bd82
/* 08053754 */ .word 0xcc82978f
/* 08053758 */ .word 0x4281718e
/* 0805375c */ .word 0x82c6820a
/* 08053760 */ .word 0x82e882c8
/* 08053764 */ .word 0x835483cc
/* 08053768 */ .word 0x82bd828b
/* 0805376c */ .word 0x0ac982bf
/* 08053770 */ .word 0xed82878d
/* 08053774 */ .word 0xc482b982
/* 08053778 */ .word 0x62835e83
/* 0805377c */ .word 0xf0827683
/* 08053780 */ .word 0x82ab820a
/* 08053784 */ .word 0x83de82b4
/* 08053788 */ .word 0x81588362
/* 0805378c */ .word 0x00000049
/* 08053790 */ .word 0x62835e83
/* 08053794 */ .word 0x5f837683
/* 08053798 */ .word 0x59839383
/* 0805379c */ .word 0x00000000
/* 080537a0 */ .word 0xf182dd82
/* 080537a4 */ .word 0x4181c882
/* 080537a8 */ .word 0xc482a98c
/* 080537ac */ .word 0xc482a98c
/* 080537b0 */ .word 0x49815b81
/* 080537b4 */ .word 0x00000000
/* 080537b8 */ .word 0xf182b182
/* 080537bc */ .word 0xc682c882
/* 080537c0 */ .word 0xeb82b182
/* 080537c4 */ .word 0x8f20c582
/* 080537c8 */ .word 0x82ed8249
/* 080537cc */ .word 0x82c882ea
/* 080537d0 */ .word 0x004981a2
/* 080537d4 */ .word 0x6a836983
/* 080537d8 */ .word 0x8b835883
/* 080537dc */ .word 0x66836d83
/* 080537e0 */ .word 0x4a835883
/* 080537e4 */ .word 0x49815b81
/* 080537e8 */ .word 0x00000000
/* 080537ec */ .word 0x5b815983
/* 080537f0 */ .word 0xf0828083
/* 080537f4 */ .word 0xc982ab82
/* 080537f8 */ .word 0xe982b782
/* 080537fc */ .word 0x4981c882
/* 08053800 */ .word 0x8253900a
/* 08053804 */ .word 0x817b83c5
/* 08053808 */ .word 0x828b835b
/* 0805380c */ .word 0x82c591f0
/* 08053810 */ .word 0x0a4981c4
/* 08053814 */ .word 0x6f8a8b8e
/* 08053818 */ .word 0x8a97c982
/* 0805381c */ .word 0xc882e982
/* 08053820 */ .word 0x970a4981
/* 08053824 */ .word 0x82e082dc
/* 08053828 */ .word 0x82ad82d3
/* 0805382c */ .word 0x816081c8
/* 08053830 */ .word 0x00000049
/* 08053834 */ .word 0x41834783
/* 08053838 */ .word 0x6f835b81
/* 0805383c */ .word 0x5e836283
/* 08053840 */ .word 0x82205b81
/* 08053844 */ .word 0x00000051
/* 08053848 */ .word 0xf182b182
/* 0805384c */ .word 0xcc82c882
/* 08053850 */ .word 0x82e08220
/* 08053854 */ .word 0x82c182e7
/* 08053858 */ .word 0x82e182bf
/* 0805385c */ .word 0x81bd82c1
/* 08053860 */ .word 0x0049815b
/* 08053864 */ .word 0xe782b382
/* 08053868 */ .word 0xe38fc982
/* 0805386c */ .word 0xda96f082
/* 08053870 */ .word 0xb582778e
/* 08053874 */ .word 0xfb97c482
/* 08053878 */ .word 0xbe824b8f
/* 0805387c */ .word 0x00004981
/* 08053880 */ .word 0xea82b182
/* 08053884 */ .word 0x8220c582
/* 08053888 */ .word 0x82e982e4
/* 0805388c */ .word 0x82c482b5
/* 08053890 */ .word 0x82be82ad
/* 08053894 */ .word 0x81a282b3
/* 08053898 */ .word 0x00000042
/* 0805389c */ .word 0x5b815983
/* 080538a0 */ .word 0xf0828083
/* 080538a4 */ .word 0xc982ab82
/* 080538a8 */ .word 0xe982b782
/* 080538ac */ .word 0x4981c882
/* 080538b0 */ .word 0x8253900a
/* 080538b4 */ .word 0x817b83c5
/* 080538b8 */ .word 0x828b835b
/* 080538bc */ .word 0x82c591f0
/* 080538c0 */ .word 0x0a4981c4
/* 080538c4 */ .word 0x6f8a8b8e
/* 080538c8 */ .word 0x8a97c982
/* 080538cc */ .word 0xc882e982
/* 080538d0 */ .word 0x820a4981
/* 080538d4 */ .word 0x82f182c7
/* 080538d8 */ .word 0x82738dc6
/* 080538dc */ .word 0x816081af
/* 080538e0 */ .word 0x00000049
/* 080538e4 */ .word 0x41834783
/* 080538e8 */ .word 0x6f835b81
/* 080538ec */ .word 0x5e836283
/* 080538f0 */ .word 0x00005b81
/* 080538f4 */ .word 0xea82d890
/* 080538f8 */ .word 0xb682a082
/* 080538fc */ .word 0x83204181
/* 08053900 */ .word 0x83438354
/* 08053904 */ .word 0x825b8152
/* 08053908 */ .word 0x814981be
/* 0805390c */ .word 0x00000049
/* 08053910 */ .word 0xe782b382
/* 08053914 */ .word 0xb890c982
/* 08053918 */ .word 0x69816990
/* 0805391c */ .word 0xe582b582
/* 08053920 */ .word 0xb682a482
/* 08053924 */ .word 0x6a81f182
/* 08053928 */ .word 0xd782b782
/* 0805392c */ .word 0x4981b582
/* 08053930 */ .word 0x00000000
/* 08053934 */ .word 0xb1826e90
/* 08053938 */ .word 0xea82da82
/* 0805393c */ .word 0xbf82b582
/* 08053940 */ .word 0xc182dc82
/* 08053944 */ .word 0x4981bd82
/* 08053948 */ .word 0x00000000
/* 0805394c */ .word 0xb182bb82
/* 08053950 */ .word 0xaf82cc82
/* 08053954 */ .word 0x82bb8220
/* 08053958 */ .word 0x82cc82b1
/* 0805395c */ .word 0x7a930aaf
/* 08053960 */ .word 0xaa82e782
/* 08053964 */ .word 0xe982ca92
/* 08053968 */ .word 0x820a4281
/* 0805396c */ .word 0x82ca82a8
/* 08053970 */ .word 0x20cd82b5
/* 08053974 */ .word 0x80835483
/* 08053978 */ .word 0x43838983
/* 0805397c */ .word 0x8e0a4181
/* 08053980 */ .word 0x8ee88261
/* 08053984 */ .word 0x20c482cc
/* 08053988 */ .word 0xc696e48c
/* 0805398c */ .word 0x00004981
/* 08053990 */ .word 0xa082ee82
/* 08053994 */ .word 0x618ed082
/* 08053998 */ .word 0x0000e882
/* 0805399c */ .word 0xf182dd82
/* 080539a0 */ .word 0x4181c882
/* 080539a4 */ .word 0xc88fbd94
/* 080539a8 */ .word 0xc482b582
/* 080539ac */ .word 0x49816c83
/* 080539b0 */ .word 0x00000000
/* 080539b4 */ .word 0xce82a882
/* 080539b8 */ .word 0x7581af82
/* 080539bc */ .word 0x41816983
/* 080539c0 */ .word 0x93836983
/* 080539c4 */ .word 0x88835f83
/* 080539c8 */ .word 0x76816081
/* 080539cc */ .word 0x00000000
/* 080539d0 */ .word 0xed82a482
/* 080539d4 */ .word 0x49815b81
/* 080539d8 */ .word 0x82e28220
/* 080539dc */ .word 0x82ea82e7
/* 080539e0 */ .word 0x82a482d9
/* 080539e4 */ .word 0x82a282be
/* 080539e8 */ .word 0x004981be
/* 080539ec */ .word 0xa2829294
/* 080539f0 */ .word 0x63838483
/* 080539f4 */ .word 0x8220aa82
/* 080539f8 */ .word 0x82bf82b1
/* 080539fc */ .word 0x0af082e7
/* 08053a00 */ .word 0x81836983
/* 08053a04 */ .word 0xc182ab82
/* 08053a08 */ .word 0xa282c482
/* 08053a0c */ .word 0x4981e982
/* 08053a10 */ .word 0x8380830a
/* 08053a14 */ .word 0x8380834a
/* 08053a18 */ .word 0x835b814a
/* 08053a1c */ .word 0x81498162
/* 08053a20 */ .word 0xb1820a49
/* 08053a24 */ .word 0xb582e782
/* 08053a28 */ .word 0xbf82df82
/* 08053a2c */ .word 0xa882e182
/* 08053a30 */ .word 0x4981a482
/* 08053a34 */ .word 0x00000000
/* 08053a38 */ .word 0xeb82b582
/* 08053a3c */ .word 0xa882a282
/* 08053a40 */ .word 0xaf82ce82
/* 08053a44 */ .word 0x00518220
/* 08053a48 */ .word 0xc182a282
/* 08053a4c */ .word 0xa282cf82
/* 08053a50 */ .word 0x82b58220
/* 08053a54 */ .word 0x82df82c6
/* 08053a58 */ .word 0x814981bd
/* 08053a5c */ .word 0x00000049
/* 08053a60 */ .word 0xc682b582
/* 08053a64 */ .word 0xbd82df82
/* 08053a68 */ .word 0x00004981
/* 08053a6c */ .word 0xb082a693
/* 08053a70 */ .word 0x8483bd82
/* 08053a74 */ .word 0xc9826383
/* 08053a78 */ .word 0x5e834383
/* 08053a7c */ .word 0x89835983
/* 08053a80 */ .word 0xea82b382
/* 08053a84 */ .word 0x4981bd82
/* 08053a88 */ .word 0x00000000
/* 08053a8c */ .word 0xa2829294
/* 08053a90 */ .word 0x63838483
/* 08053a94 */ .word 0x8220aa82
/* 08053a98 */ .word 0x82bf82b1
/* 08053a9c */ .word 0x0af082e7
/* 08053aa0 */ .word 0x4a836f83
/* 08053aa4 */ .word 0xb582c982
/* 08053aa8 */ .word 0xa282c482
/* 08053aac */ .word 0x4981e982
/* 08053ab0 */ .word 0x8380830a
/* 08053ab4 */ .word 0x835b814c
/* 08053ab8 */ .word 0x81498162
/* 08053abc */ .word 0xb1820a49
/* 08053ac0 */ .word 0xb582e782
/* 08053ac4 */ .word 0xbf82df82
/* 08053ac8 */ .word 0xa882e182
/* 08053acc */ .word 0x4981a482
/* 08053ad0 */ .word 0x00000000
/* 08053ad4 */ .word 0xeb82b582
/* 08053ad8 */ .word 0xa882a282
/* 08053adc */ .word 0xaf82ce82
/* 08053ae0 */ .word 0x00000000
/* 08053ae4 */ .word 0x6b834983
/* 08053ae8 */ .word 0xcd825683
/* 08053aec */ .word 0xa282ad8b
/* 08053af0 */ .word 0xa8824281
/* 08053af4 */ .word 0xb9824b8d
/* 08053af8 */ .word 0x6381c982
/* 08053afc */ .word 0x00004981
/* 08053b00 */ .word 0xde82a482
/* 08053b04 */ .word 0x58834181
/* 08053b08 */ .word 0xcd825783
/* 08053b0c */ .word 0xa282c797
/* 08053b10 */ .word 0x4281c882
/* 08053b14 */ .word 0xf182aa82
/* 08053b18 */ .word 0xea82ce82
/* 08053b1c */ .word 0x00004981
/* 08053b20 */ .word 0xaf82dc82
/* 08053b24 */ .word 0xc882e982
/* 08053b28 */ .word 0x82204981
/* 08053b2c */ .word 0x82dc82a8
/* 08053b30 */ .word 0x97aa82a6
/* 08053b34 */ .word 0x82e8828a
/* 08053b38 */ .word 0x82cc82c8
/* 08053b3c */ .word 0x815b81be
/* 08053b40 */ .word 0x00498149
/* 08053b44 */ .word 0x8c834983
/* 08053b48 */ .word 0xb682cc82
/* 08053b4c */ .word 0xbf82a282
/* 08053b50 */ .word 0xf182e182
/* 08053b54 */ .word 0x820acc82
/* 08053b58 */ .word 0x82a282b6
/* 08053b5c */ .word 0x82e182bf
/* 08053b60 */ .word 0x0acc82f1
/* 08053b64 */ .word 0xa282b682
/* 08053b68 */ .word 0xe182bf82
/* 08053b6c */ .word 0xcd82f182
/* 08053b70 */ .word 0x8e45940a
/* 08053b74 */ .word 0x82c882d2
/* 08053b78 */ .word 0x82be82f1
/* 08053b7c */ .word 0x004281ba
/* 08053b80 */ .word 0xd28e4594
/* 08053b84 */ .word 0x718ecc82
/* 08053b88 */ .word 0x0000b791
/* 08053b8c */ .word 0x62834183
/* 08053b90 */ .word 0x8c837083
/* 08053b94 */ .word 0xc482c182
/* 08053b98 */ .word 0x82be8c20
/* 08053b9c */ .word 0x82ea82ed
/* 08053ba0 */ .word 0x82e182bf
/* 08053ba4 */ .word 0x83bd82c1
/* 08053ba8 */ .word 0x8149815b
/* 08053bac */ .word 0x00000049
/* 08053bb0 */ .word 0x6d836783
/* 08053bb4 */ .word 0x82204981
/* 08053bb8 */ .word 0x82df82b2
/* 08053bbc */ .word 0x82c882f1
/* 08053bc0 */ .word 0x826081b3
/* 08053bc4 */ .word 0x004281a2
/* 08053bc8 */ .word 0x62835183
/* 08053bcc */ .word 0x83204981
/* 08053bd0 */ .word 0x826d8367
/* 08053bd4 */ .word 0xab8220aa
/* 08053bd8 */ .word 0xc282ba82
/* 08053bdc */ .word 0xc482b582
/* 08053be0 */ .word 0x4981e982
/* 08053be4 */ .word 0x00004981
/* 08053be8 */ .word 0x508f4793
/* 08053bec */ .word 0x82c48228
/* 08053bf0 */ .word 0x82b582ab
/* 08053bf4 */ .word 0x29a482e3
/* 08053bf8 */ .word 0x4981be82
/* 08053bfc */ .word 0x8e5c8f0a
/* 08053c00 */ .word 0x837b839a
/* 08053c04 */ .word 0x8293835e
/* 08053c08 */ .word 0x7b8341c6
/* 08053c0c */ .word 0x93835e83
/* 08053c10 */ .word 0x9e89c582
/* 08053c14 */ .word 0x8228ed90
/* 08053c18 */ .word 0x82a482a8
/* 08053c1c */ .word 0x29f182b9
/* 08053c20 */ .word 0x4981be82
/* 08053c24 */ .word 0x8374830a
/* 08053c28 */ .word 0x83848357
/* 08053c2c */ .word 0x8269817d
/* 08053c30 */ .word 0x82b682d3
/* 08053c34 */ .word 0x81f182b3
/* 08053c38 */ .word 0x8149816a
/* 08053c3c */ .word 0x00000049
/* 08053c40 */ .word 0xd28e4594
/* 08053c44 */ .word 0x00000000
/* 08053c48 */ .word 0xad82e782
/* 08053c4c */ .word 0xf182bf82
/* 08053c50 */ .word 0x82e78220
/* 08053c54 */ .word 0x82bf82ad
/* 08053c58 */ .word 0x00f481f1
/* 08053c5c */ .word 0xa982c882
/* 08053c60 */ .word 0xa982c882
/* 08053c64 */ .word 0x82aa8220
/* 08053c68 */ .word 0x82ce82f1
/* 08053c6c */ .word 0x82c482c1
/* 08053c70 */ .word 0x83bd82a2
/* 08053c74 */ .word 0x0049816c
/* 08053c78 */ .word 0x5b814783
/* 08053c7c */ .word 0x49819383
/* 08053c80 */ .word 0x82b58220
/* 08053c84 */ .word 0x82cf82c1
/* 08053c88 */ .word 0x814981a2
/* 08053c8c */ .word 0x00000049
/* 08053c90 */ .word 0xf182c682
/* 08053c94 */ .word 0xad82c582
/* 08053c98 */ .word 0xdb8ae982
/* 08053c9c */ .word 0xca8ba282
/* 08053ca0 */ .word 0x820a4281
/* 08053ca4 */ .word 0x82f182d9
/* 08053ca8 */ .word 0x83c982c6
/* 08053cac */ .word 0x82438343
/* 08053cb0 */ .word 0x0ac282e2
/* 08053cb4 */ .word 0xf182c882
/* 08053cb8 */ .word 0xb782c582
/* 08053cbc */ .word 0x60818883
/* 08053cc0 */ .word 0x970a4281
/* 08053cc4 */ .word 0x82c6828e
/* 08053cc8 */ .word 0x82c882b3
/* 08053ccc */ .word 0x83c582a2
/* 08053cd0 */ .word 0x0049816c
/* 08053cd4 */ .word 0x62837a83
/* 08053cd8 */ .word 0x93837383
/* 08053cdc */ .word 0x8d834f83
/* 08053ce0 */ .word 0x68835b81
/* 08053ce4 */ .word 0x00005182
/* 08053ce8 */ .word 0xf182a982
/* 08053cec */ .word 0xf182bd82
/* 08053cf0 */ .word 0x82a98220
/* 08053cf4 */ .word 0x82bd82f1
/* 08053cf8 */ .word 0x00f481f1
/* 08053cfc */ .word 0xc182af82
/* 08053d00 */ .word 0xa482b182
/* 08053d04 */ .word 0x8320c882
/* 08053d08 */ .word 0x83938352
/* 08053d0c */ .word 0x816c8372
/* 08053d10 */ .word 0x8356835b
/* 08053d14 */ .word 0x82938387
/* 08053d18 */ .word 0x82c182be
/* 08053d1c */ .word 0x816c83bd
/* 08053d20 */ .word 0x00000049
/* 08053d24 */ .word 0xa982c882
/* 08053d28 */ .word 0xa982c882
/* 08053d2c */ .word 0x83808320
/* 08053d30 */ .word 0x834a8359
/* 08053d34 */ .word 0x815b8156
/* 08053d38 */ .word 0x00000049
/* 08053d3c */ .word 0xf182c682
/* 08053d40 */ .word 0xad82c582
/* 08053d44 */ .word 0xdb8ae982
/* 08053d48 */ .word 0xca8ba282
/* 08053d4c */ .word 0x820a4281
/* 08053d50 */ .word 0x82ea82a0
/* 08053d54 */ .word 0x834383cd
/* 08053d58 */ .word 0x82e28243
/* 08053d5c */ .word 0x82c582c2
/* 08053d60 */ .word 0x0a4281b7
/* 08053d64 */ .word 0xc6828e97
/* 08053d68 */ .word 0xc882b382
/* 08053d6c */ .word 0xc582a282
/* 08053d70 */ .word 0x49816c83
/* 08053d74 */ .word 0x00000000
/* 08053d78 */ .word 0x62837a83
/* 08053d7c */ .word 0x93837383
/* 08053d80 */ .word 0x8d834f83
/* 08053d84 */ .word 0x68835b81
/* 08053d88 */ .word 0x00000000
/* 08053d8c */ .word 0xcc82e082
/* 08053d90 */ .word 0xb282b782
/* 08053d94 */ .word 0x4e83a282
/* 08053d98 */ .word 0x8a835883
/* 08053d9c */ .word 0xc582aa82
/* 08053da0 */ .word 0xbd82ab82
/* 08053da4 */ .word 0x49814981
/* 08053da8 */ .word 0x00000000
/* 08053dac */ .word 0x7394b88e
/* 08053db0 */ .word 0xac90cd82
/* 08053db4 */ .word 0xcc82f78c
/* 08053db8 */ .word 0xc682e082
/* 08053dbc */ .word 0x82834a83
/* 08053dc0 */ .word 0x00004981
/* 08053dc4 */ .word 0x868ba48c
/* 08053dc8 */ .word 0xb88ecd82
/* 08053dcc */ .word 0xbe827394
/* 08053dd0 */ .word 0x00004281
/* 08053dd4 */ .word 0xe88e958f
/* 08053dd8 */ .word 0xe782a982
/* 08053ddc */ .word 0x6d92cc82
/* 08053de0 */ .word 0xb982e782
/* 08053de4 */ .word 0x9175810a
/* 08053de8 */ .word 0x82cf95e5
/* 08053dec */ .word 0x81b782c5
/* 08053df0 */ .word 0x6f830a49
/* 08053df4 */ .word 0x4c834383
/* 08053df8 */ .word 0xad949383
/* 08053dfc */ .word 0xc582b690
/* 08053e00 */ .word 0x4981b782
/* 08053e04 */ .word 0x900a4981
/* 08053e08 */ .word 0x81b690e6
/* 08053e0c */ .word 0x82bd8241
/* 08053e10 */ .word 0x82af82b7
/* 08053e14 */ .word 0x816081c4
/* 08053e18 */ .word 0x00000076
/* 08053e1c */ .word 0x43836f83
/* 08053e20 */ .word 0x93834c83
/* 08053e24 */ .word 0x82cd8220
/* 08053e28 */ .word 0x00b982a9
/* 08053e2c */ .word 0x62835883
/* 08053e30 */ .word 0x8a834c83
/* 08053e34 */ .word 0xa482bb82
/* 08053e38 */ .word 0xa282a982
/* 08053e3c */ .word 0x8b204981
/* 08053e40 */ .word 0x82438bf3
/* 08053e44 */ .word 0x82a482aa
/* 08053e48 */ .word 0x82b782dc
/* 08053e4c */ .word 0x814981ac
/* 08053e50 */ .word 0x00000049
/* 08053e54 */ .word 0xa982b582
/* 08053e58 */ .word 0xc882b582
/* 08053e5c */ .word 0xc582f182
/* 08053e60 */ .word 0x82a48220
/* 08053e64 */ .word 0x83cc82bf
/* 08053e68 */ .word 0x83548384
/* 08053e6c */ .word 0x82be8243
/* 08053e70 */ .word 0x20c982af
/* 08053e74 */ .word 0xaa82d196
/* 08053e78 */ .word 0x48816381
/* 08053e7c */ .word 0x00000000
/* 08053e80 */ .word 0xf182c882
/* 08053e84 */ .word 0x9620c582
/* 08053e88 */ .word 0x20aa82d1
/* 08053e8c */ .word 0xa682cd82
/* 08053e90 */ .word 0xf182e982
/* 08053e94 */ .word 0x5b81be82
/* 08053e98 */ .word 0x48814981
/* 08053e9c */ .word 0x00000000
/* 08053ea0 */ .word 0xbd82dc82
/* 08053ea4 */ .word 0xc482b582
/* 08053ea8 */ .word 0xb690e082
/* 08053eac */ .word 0xc482a682
/* 08053eb0 */ .word 0xe982ad82
/* 08053eb4 */ .word 0x82a4820a
/* 08053eb8 */ .word 0x82c682c1
/* 08053ebc */ .word 0x82b582a4
/* 08053ec0 */ .word 0x967581a2
/* 08053ec4 */ .word 0x817681d1
/* 08053ec8 */ .word 0xca820a49
/* 08053ecc */ .word 0xbf82a282
/* 08053ed0 */ .word 0xa682e182
/* 08053ed4 */ .word 0x0a204181
/* 08053ed8 */ .word 0xa282ca82
/* 08053edc */ .word 0xe182bf82
/* 08053ee0 */ .word 0x4981a682
/* 08053ee4 */ .word 0x00000000
/* 08053ee8 */ .word 0x59838a83
/* 08053eec */ .word 0x45928083
/* 08053ef0 */ .word 0x8220d196
/* 08053ef4 */ .word 0x00000051
/* 08053ef8 */ .word 0x62835883
/* 08053efc */ .word 0x8a834c83
/* 08053f00 */ .word 0xa482bb82
/* 08053f04 */ .word 0xa282a982
/* 08053f08 */ .word 0x8b204981
/* 08053f0c */ .word 0x82438bf3
/* 08053f10 */ .word 0x82a482aa
/* 08053f14 */ .word 0x81a282dc
/* 08053f18 */ .word 0x00498149
/* 08053f1c */ .word 0xf182c882
/* 08053f20 */ .word 0x8220c582
/* 08053f24 */ .word 0x82bf82a4
/* 08053f28 */ .word 0x838483cc
/* 08053f2c */ .word 0x82438354
/* 08053f30 */ .word 0xd19620cd
/* 08053f34 */ .word 0xcd82aa82
/* 08053f38 */ .word 0xe982a682
/* 08053f3c */ .word 0xbe82f182
/* 08053f40 */ .word 0x00004881
/* 08053f44 */ .word 0xea82b182
/* 08053f48 */ .word 0xe182b682
/* 08053f4c */ .word 0x82849420
/* 08053f50 */ .word 0x82e082e8
/* 08053f54 */ .word 0x20c982cc
/* 08053f58 */ .word 0xe782c882
/* 08053f5c */ .word 0x4981f182
/* 08053f60 */ .word 0x00000000
/* 08053f64 */ .word 0xf182c782
/* 08053f68 */ .word 0xf182c782
/* 08053f6c */ .word 0xa682b690
/* 08053f70 */ .word 0xad82c482
/* 08053f74 */ .word 0x820ae982
/* 08053f78 */ .word 0x82c182a4
/* 08053f7c */ .word 0x82a482c6
/* 08053f80 */ .word 0x81a282b5
/* 08053f84 */ .word 0x81d19675
/* 08053f88 */ .word 0x0a498176
/* 08053f8c */ .word 0xa282ca82
/* 08053f90 */ .word 0xe182bf82
/* 08053f94 */ .word 0x4181a682
/* 08053f98 */ .word 0xca820a20
/* 08053f9c */ .word 0xbf82a282
/* 08053fa0 */ .word 0xa682e182
/* 08053fa4 */ .word 0x00004981
/* 08053fa8 */ .word 0x59838a83
/* 08053fac */ .word 0x45928083
/* 08053fb0 */ .word 0x0000d196
/* 08053fb4 */ .word 0xbd82af90
/* 08053fb8 */ .word 0xc682bf82
/* 08053fbc */ .word 0x82a88220
/* 08053fc0 */ .word 0x82e082c6
/* 08053fc4 */ .word 0x82bf82be
/* 08053fc8 */ .word 0x818883be
/* 08053fcc */ .word 0x00000049
/* 08053fd0 */ .word 0x9795e996
/* 08053fd4 */ .word 0x8220aa82
/* 08053fd8 */ .word 0x82c182c6
/* 08053fdc */ .word 0x20e082c4
/* 08053fe0 */ .word 0xe082ab82
/* 08053fe4 */ .word 0xa282bf82
/* 08053fe8 */ .word 0xc882a282
/* 08053fec */ .word 0x00004281
/* 08053ff0 */ .word 0xd082a482
/* 08053ff4 */ .word 0x5b81e182
/* 08053ff8 */ .word 0x82204981
/* 08053ffc */ .word 0x82c182b5
/* 08054000 */ .word 0x82a282cf
/* 08054004 */ .word 0x82bf82b5
/* 08054008 */ .word 0x82c182e1
/* 0805400c */ .word 0x814981bd
/* 08054010 */ .word 0x00000049
/* 08054014 */ .word 0x798ab989
/* 08054018 */ .word 0xa082c982
/* 0805401c */ .word 0xb982ed82
/* 08054020 */ .word 0x830ac482
/* 08054024 */ .word 0x83838357
/* 08054028 */ .word 0x82768393
/* 0805402c */ .word 0x83c482b5
/* 08054030 */ .word 0x0a49816c
/* 08054034 */ .word 0x8a837283
/* 08054038 */ .word 0x8a837283
/* 0805403c */ .word 0x49834583
/* 08054040 */ .word 0x8b0ac982
/* 08054044 */ .word 0x82f08243
/* 08054048 */ .word 0x82af82c2
/* 0805404c */ .word 0x81a482e6
/* 08054050 */ .word 0x00000042
/* 08054054 */ .word 0x43836983
/* 08054058 */ .word 0x45836783
/* 0805405c */ .word 0x5b814883
/* 08054060 */ .word 0x82204e83
/* 08054064 */ .word 0x00000051
/* 08054068 */ .word 0xbd82af90
/* 0805406c */ .word 0xaa82bf82
/* 08054070 */ .word 0x82a98220
/* 08054074 */ .word 0x82b082f1
/* 08054078 */ .word 0x82b582a2
/* 0805407c */ .word 0x83e982c4
/* 08054080 */ .word 0x00498188
/* 08054084 */ .word 0xf38be996
/* 08054088 */ .word 0x8220cc82
/* 0805408c */ .word 0x82b382a8
/* 08054090 */ .word 0x81db82f1
/* 08054094 */ .word 0xbd822041
/* 08054098 */ .word 0xb582cc82
/* 0805409c */ .word 0xc882a282
/* 080540a0 */ .word 0x00004281
/* 080540a4 */ .word 0xac82c282
/* 080540a8 */ .word 0x8220cd82
/* 080540ac */ .word 0x82c182e0
/* 080540b0 */ .word 0xaa8220c6
/* 080540b4 */ .word 0xce82f182
/* 080540b8 */ .word 0xc482c182
/* 080540bc */ .word 0x63816c83
/* 080540c0 */ .word 0x00000000
/* 080540c4 */ .word 0x798ab989
/* 080540c8 */ .word 0xa082c982
/* 080540cc */ .word 0xb982ed82
/* 080540d0 */ .word 0x830ac482
/* 080540d4 */ .word 0x83838357
/* 080540d8 */ .word 0x82768393
/* 080540dc */ .word 0x83c482b5
/* 080540e0 */ .word 0x0a49816c
/* 080540e4 */ .word 0xbd82af90
/* 080540e8 */ .word 0xaa82bf82
/* 080540ec */ .word 0x82a08220
/* 080540f0 */ .word 0x82dc82c2
/* 080540f4 */ .word 0x0ac482c1
/* 080540f8 */ .word 0xc882a082
/* 080540fc */ .word 0xe082bd82
/* 08054100 */ .word 0xf38be996
/* 08054104 */ .word 0x6381d682
/* 08054108 */ .word 0x00000000
/* 0805410c */ .word 0x43836983
/* 08054110 */ .word 0x45836783
/* 08054114 */ .word 0x5b814883
/* 08054118 */ .word 0x00004e83
/* 0805411c */ .word 0xa282d490
/* 08054120 */ .word 0x6d838283
/* 08054124 */ .word 0x8220f082
/* 08054128 */ .word 0x82e182b6
/* 0805412c */ .word 0x82b682f1
/* 08054130 */ .word 0x90f182e1
/* 08054134 */ .word 0x82598eb6
/* 08054138 */ .word 0x82bf82b5
/* 0805413c */ .word 0x83a482e1
/* 08054140 */ .word 0x81498188
/* 08054144 */ .word 0x00000049
/* 08054148 */ .word 0xc182e082
/* 0805414c */ .word 0xe082c682
/* 08054150 */ .word 0xc682c182
/* 08054154 */ .word 0x82d49020
/* 08054158 */ .word 0x838283a2
/* 0805415c */ .word 0x20f0826d
/* 08054160 */ .word 0x598eb690
/* 08054164 */ .word 0x4981be82
/* 08054168 */ .word 0x00000000
/* 0805416c */ .word 0xa282d490
/* 08054170 */ .word 0x6d838283
/* 08054174 */ .word 0xe0824181
/* 08054178 */ .word 0xc682c182
/* 0805417c */ .word 0x598eb690
/* 08054180 */ .word 0xc882b582
/* 08054184 */ .word 0xe182ab82
/* 08054188 */ .word 0x00006381
/* 0805418c */ .word 0xea82b182
/* 08054190 */ .word 0xb68dbc82
/* 08054194 */ .word 0xc6934589
/* 08054198 */ .word 0x4981a797
/* 0805419c */ .word 0x8365830a
/* 080541a0 */ .word 0x827c8393
/* 080541a4 */ .word 0x20ad82e6
/* 080541a8 */ .word 0xc882b182
/* 080541ac */ .word 0xc482b582
/* 080541b0 */ .word 0x838c830a
/* 080541b4 */ .word 0x20638362
/* 080541b8 */ .word 0x8a837c83
/* 080541bc */ .word 0x59838a83
/* 080541c0 */ .word 0x49818083
/* 080541c4 */ .word 0x8343830a
/* 080541c8 */ .word 0x835b8146
/* 080541cc */ .word 0x00498143
/* 080541d0 */ .word 0x8a837c83
/* 080541d4 */ .word 0x59838a83
/* 080541d8 */ .word 0x82208083
/* 080541dc */ .word 0x00000051
/* 080541e0 */ .word 0xa282d490
/* 080541e4 */ .word 0x6d838283
/* 080541e8 */ .word 0x9020f082
/* 080541ec */ .word 0x82598eb6
/* 080541f0 */ .word 0x82dc82b5
/* 080541f4 */ .word 0x82e882ad
/* 080541f8 */ .word 0x816c83be
/* 080541fc */ .word 0x00498149
/* 08054200 */ .word 0xf182c782
/* 08054204 */ .word 0xf182c782
/* 08054208 */ .word 0x82d49020
/* 0805420c */ .word 0x838283a2
/* 08054210 */ .word 0x20f0826d
/* 08054214 */ .word 0x598eb690
/* 08054218 */ .word 0x4981be82
/* 0805421c */ .word 0x00000000
/* 08054220 */ .word 0xa282d490
/* 08054224 */ .word 0x6d838283
/* 08054228 */ .word 0xca974181
/* 0805422c */ .word 0xcd82598e
/* 08054230 */ .word 0x82bd8220
/* 08054234 */ .word 0x82d682a2
/* 08054238 */ .word 0x82be82f1
/* 0805423c */ .word 0x819f82c8
/* 08054240 */ .word 0x00000063
/* 08054244 */ .word 0x9a8e5c8f
/* 08054248 */ .word 0x5e837b83
/* 0805424c */ .word 0xc6829383
/* 08054250 */ .word 0x7b836082
/* 08054254 */ .word 0x93835e83
/* 08054258 */ .word 0xaf93cc82
/* 0805425c */ .word 0x9f899e8e
/* 08054260 */ .word 0xf082b582
/* 08054264 */ .word 0x58837d83
/* 08054268 */ .word 0x5b815e83
/* 0805426c */ .word 0x4981be82
/* 08054270 */ .word 0xc182af82
/* 08054274 */ .word 0xa482b182
/* 08054278 */ .word 0x93834a83
/* 0805427c */ .word 0x93835e83
/* 08054280 */ .word 0x4281be82
/* 08054284 */ .word 0xd482bd82
/* 08054288 */ .word 0x6381f182
/* 0805428c */ .word 0x00000000
/* 08054290 */ .word 0x8a837c83
/* 08054294 */ .word 0x59838a83
/* 08054298 */ .word 0x00008083
/* 0805429c */ .word 0x7383a791
/* 080542a0 */ .word 0x5e836283
/* 080542a4 */ .word 0xc5828a83
/* 080542a8 */ .word 0xb7825b81
/* 080542ac */ .word 0x83204981
/* 080542b0 */ .word 0x81468343
/* 080542b4 */ .word 0x8143835b
/* 080542b8 */ .word 0x00000049
/* 080542bc */ .word 0xc682a082
/* 080542c0 */ .word 0x87836083
/* 080542c4 */ .word 0x67836283
/* 080542c8 */ .word 0xf182c882
/* 080542cc */ .word 0xaf82be82
/* 080542d0 */ .word 0xcb82c782
/* 080542d4 */ .word 0x00006381
/* 080542d8 */ .word 0x83834c83
/* 080542dc */ .word 0x49815b81
/* 080542e0 */ .word 0x82e48220
/* 080542e4 */ .word 0x82b582e9
/* 080542e8 */ .word 0x815b81c4
/* 080542ec */ .word 0x00498149
/* 080542f0 */ .word 0x74838983
/* 080542f4 */ .word 0xc182be82
/* 080542f8 */ .word 0xde94bd82
/* 080542fc */ .word 0xaa82e782
/* 08054300 */ .word 0x836f830a
/* 08054304 */ .word 0x82c1828a
/* 08054308 */ .word 0x815883c6
/* 0805430c */ .word 0x8263835b
/* 08054310 */ .word 0x85920af0
/* 08054314 */ .word 0xab82c482
/* 08054318 */ .word 0x8883bd82
/* 0805431c */ .word 0x830a4981
/* 08054320 */ .word 0x8362834a
/* 08054324 */ .word 0x83438352
/* 08054328 */ .word 0x81498143
/* 0805432c */ .word 0x00000049
/* 08054330 */ .word 0x8a836f83
/* 08054334 */ .word 0x8a836f83
/* 08054338 */ .word 0x6c904f8e
/* 0805433c */ .word 0x00004f8f
/* 08054340 */ .word 0xcc82b182
/* 08054344 */ .word 0x6c904f8e
/* 08054348 */ .word 0x41814f8f
/* 0805434c */ .word 0x83a79120
/* 08054350 */ .word 0x83628373
/* 08054354 */ .word 0x828a835e
/* 08054358 */ .word 0x814981be
/* 0805435c */ .word 0x00000049
/* 08054360 */ .word 0xab919e96
/* 08054364 */ .word 0xe982b782
/* 08054368 */ .word 0xcd82cc82
/* 0805436c */ .word 0x82dc8220
/* 08054370 */ .word 0x828191be
/* 08054374 */ .word 0x82a982a2
/* 08054378 */ .word 0x81cb82e0
/* 0805437c */ .word 0x00000042
/* 08054380 */ .word 0xd48a8792
/* 08054384 */ .word 0x418baa82
/* 08054388 */ .word 0xbf82c182
/* 0805438c */ .word 0xc182e182
/* 08054390 */ .word 0x4981bd82
/* 08054394 */ .word 0x00000000
/* 08054398 */ .word 0xd494878f
/* 0805439c */ .word 0x8f94c982
/* 080543a0 */ .word 0xf082e88e
/* 080543a4 */ .word 0xe982b782
/* 080543a8 */ .word 0x49818883
/* 080543ac */ .word 0x82a0820a
/* 080543b0 */ .word 0x82bd82c8
/* 080543b4 */ .word 0x945282cd
/* 080543b8 */ .word 0x81da96d4
/* 080543bc */ .word 0x4f910a42
/* 080543c0 */ .word 0x9032cc82
/* 080543c4 */ .word 0x82f0826c
/* 080543c8 */ .word 0x8cad82e6
/* 080543cc */ .word 0x83c482a9
/* 080543d0 */ .word 0x0049816c
/* 080543d4 */ .word 0x60837083
/* 080543d8 */ .word 0x60837083
/* 080543dc */ .word 0x6c904f8e
/* 080543e0 */ .word 0x00004f8f
/* 080543e4 */ .word 0xc182b482
/* 080543e8 */ .word 0x8220c682
/* 080543ec */ .word 0x82f182b1
/* 080543f0 */ .word 0x838283c8
/* 080543f4 */ .word 0x82be8293
/* 080543f8 */ .word 0x815b81ba
/* 080543fc */ .word 0x00498149
/* 08054400 */ .word 0x4181dc82
/* 08054404 */ .word 0xc482b382
/* 08054408 */ .word 0xab82a882
/* 0805440c */ .word 0x82204281
/* 08054410 */ .word 0x82cd82b2
/* 08054414 */ .word 0x489020f1
/* 08054418 */ .word 0xe682d782
/* 0805441c */ .word 0x4981a482
/* 08054420 */ .word 0x00000000
/* 08054424 */ .word 0x93836583
/* 08054428 */ .word 0xaa827c83
/* 0805442c */ .word 0x82c88220
/* 08054430 */ .word 0x81be82f1
/* 08054434 */ .word 0x8149815b
/* 08054438 */ .word 0x00000049
/* 0805443c */ .word 0xf182c682
/* 08054440 */ .word 0xad82c582
/* 08054444 */ .word 0x8283e982
/* 08054448 */ .word 0xf0826d83
/* 0805444c */ .word 0x7b83410a
/* 08054450 */ .word 0x93835e83
/* 08054454 */ .word 0x7083c582
/* 08054458 */ .word 0x60839383
/* 0805445c */ .word 0x820a4981
/* 08054460 */ .word 0x81e082c5
/* 08054464 */ .word 0x58832041
/* 08054468 */ .word 0x5b817383
/* 0805446c */ .word 0xaa826883
/* 08054470 */ .word 0x8377830a
/* 08054474 */ .word 0x83658393
/* 08054478 */ .word 0x83be8252
/* 0805447c */ .word 0x00428188
/* 08054480 */ .word 0x89834a83
/* 08054484 */ .word 0xc6896583
/* 08054488 */ .word 0x00518220
/* 0805448c */ .word 0xf182b182
/* 08054490 */ .word 0xc982c882
/* 08054494 */ .word 0x83758320
/* 08054498 */ .word 0x82c68262
/* 0805449c */ .word 0x82b582ce
/* 080544a0 */ .word 0x82e182bf
/* 080544a4 */ .word 0x81bd82c1
/* 080544a8 */ .word 0x00498149
/* 080544ac */ .word 0xe882c682
/* 080544b0 */ .word 0xa682a082
/* 080544b4 */ .word 0x4181b882
/* 080544b8 */ .word 0xcd82b282
/* 080544bc */ .word 0x9020f182
/* 080544c0 */ .word 0x82d78248
/* 080544c4 */ .word 0x82b182c6
/* 080544c8 */ .word 0x004981a4
/* 080544cc */ .word 0xfa93be96
/* 080544d0 */ .word 0x8220aa82
/* 080544d4 */ .word 0x82e982a0
/* 080544d8 */ .word 0x004281b3
/* 080544dc */ .word 0xf182c682
/* 080544e0 */ .word 0xad82c582
/* 080544e4 */ .word 0x8283e982
/* 080544e8 */ .word 0xf0826d83
/* 080544ec */ .word 0x7b83410a
/* 080544f0 */ .word 0x93835e83
/* 080544f4 */ .word 0x7083c582
/* 080544f8 */ .word 0x60839383
/* 080544fc */ .word 0x820a4981
/* 08054500 */ .word 0x82ad82e6
/* 08054504 */ .word 0x83e982a0
/* 08054508 */ .word 0x835b8151
/* 0805450c */ .word 0x0a488180
/* 08054510 */ .word 0xa9826381
/* 08054514 */ .word 0xcb82e082
/* 08054518 */ .word 0x00004281
/* 0805451c */ .word 0x89834a83
/* 08054520 */ .word 0xc6896583
/* 08054524 */ .word 0x09060900
/* 08054528 */ .word 0xff0b090a
/* 0805452c */ .word 0x0b0902ff
/* 08054530 */ .word 0x020a0902
/* 08054534 */ .word 0x09020909
/* 08054538 */ .word 0x07090208
/* 0805453c */ .word 0xff060902
/* 08054540 */ .word 0x0a080608
/* 08054544 */ .word 0xffff0b08
/* 08054548 */ .word 0x020b0802
/* 0805454c */ .word 0x08020a08
/* 08054550 */ .word 0x08080209
/* 08054554 */ .word 0x02070802
/* 08054558 */ .word 0x07ff0608
/* 0805455c */ .word 0x070a0706
/* 08054560 */ .word 0x02ffff0b
/* 08054564 */ .word 0x07020b07
/* 08054568 */ .word 0x0907020a
/* 0805456c */ .word 0x02080702
/* 08054570 */ .word 0x07020707
/* 08054574 */ .word 0x0606ff06
/* 08054578 */ .word 0x0b060a06
/* 0805457c */ .word 0x0602ffff
/* 08054580 */ .word 0x0a06020b
/* 08054584 */ .word 0x02090602
/* 08054588 */ .word 0x06020806
/* 0805458c */ .word 0x06060207
/* 08054590 */ .word 0x050605ff
/* 08054594 */ .word 0xff0b050a
/* 08054598 */ .word 0x0b0502ff
/* 0805459c */ .word 0x020a0502
/* 080545a0 */ .word 0x05020905
/* 080545a4 */ .word 0x07050208
/* 080545a8 */ .word 0xff060502
/* 080545ac */ .word 0x0a040604
/* 080545b0 */ .word 0xffff0b04
/* 080545b4 */ .word 0x020b0402
/* 080545b8 */ .word 0x04020a04
/* 080545bc */ .word 0x08040209
/* 080545c0 */ .word 0x02070402
/* 080545c4 */ .word 0x03ff0604
/* 080545c8 */ .word 0x030a0306
/* 080545cc */ .word 0x02ffff0b
/* 080545d0 */ .word 0x03020b03
/* 080545d4 */ .word 0x0903020a
/* 080545d8 */ .word 0x02080302
/* 080545dc */ .word 0x03020703
/* 080545e0 */ .word 0x0602ff06
/* 080545e4 */ .word 0x08020702
/* 080545e8 */ .word 0x0a020902
/* 080545ec */ .word 0x0b01ffff
/* 080545f0 */ .word 0x0102ffff
/* 080545f4 */ .word 0x0609ff0b
/* 080545f8 */ .word 0x0b090909
/* 080545fc */ .word 0x0904ffff
/* 08054600 */ .word 0x0608ff0b
/* 08054604 */ .word 0x0b080908
/* 08054608 */ .word 0x0804ffff
/* 0805460c */ .word 0x0607ff0b
/* 08054610 */ .word 0x0b070907
/* 08054614 */ .word 0x0704ffff
/* 08054618 */ .word 0x0606ff0b
/* 0805461c */ .word 0x0b060906
/* 08054620 */ .word 0x0604ffff
/* 08054624 */ .word 0x0605ff0b
/* 08054628 */ .word 0x0b050905
/* 0805462c */ .word 0x0504ffff
/* 08054630 */ .word 0x0604ff0b
/* 08054634 */ .word 0x0b040904
/* 08054638 */ .word 0x0404ffff
/* 0805463c */ .word 0x0603ff0b
/* 08054640 */ .word 0x0b030903
/* 08054644 */ .word 0x0304ffff
/* 08054648 */ .word 0x0602ff0b
/* 0805464c */ .word 0xffff0902
/* 08054650 */ .word 0xff0b0204
/* 08054654 */ .word 0xffff0a01
/* 08054658 */ .word 0xff0a0102
/* 0805465c */ .word 0x08090609
/* 08054660 */ .word 0xffff0b09
/* 08054664 */ .word 0xff0a0904
/* 08054668 */ .word 0x08080608
/* 0805466c */ .word 0xffff0b08
/* 08054670 */ .word 0xff0a0804
/* 08054674 */ .word 0x08070607
/* 08054678 */ .word 0xffff0b07
/* 0805467c */ .word 0xff0a0704
/* 08054680 */ .word 0x08060606
/* 08054684 */ .word 0xffff0b06
/* 08054688 */ .word 0xff0a0604
/* 0805468c */ .word 0x08050605
/* 08054690 */ .word 0xffff0b05
/* 08054694 */ .word 0xff0a0504
/* 08054698 */ .word 0x08040604
/* 0805469c */ .word 0xffff0b04
/* 080546a0 */ .word 0xff0a0404
/* 080546a4 */ .word 0x08030603
/* 080546a8 */ .word 0xffff0b03
/* 080546ac */ .word 0xff0a0304
/* 080546b0 */ .word 0x08020602
/* 080546b4 */ .word 0x0204ffff
/* 080546b8 */ .word 0x0901ff0a
/* 080546bc */ .word 0x0102ffff
/* 080546c0 */ .word 0x0609ff09
/* 080546c4 */ .word 0x0b090709
/* 080546c8 */ .word 0x0904ffff
/* 080546cc */ .word 0x0608ff09
/* 080546d0 */ .word 0x0b080708
/* 080546d4 */ .word 0x0804ffff
/* 080546d8 */ .word 0x0607ff09
/* 080546dc */ .word 0x0b070707
/* 080546e0 */ .word 0x0704ffff
/* 080546e4 */ .word 0x0606ff09
/* 080546e8 */ .word 0x0b060706
/* 080546ec */ .word 0x0604ffff
/* 080546f0 */ .word 0x0605ff09
/* 080546f4 */ .word 0x0b050705
/* 080546f8 */ .word 0x0504ffff
/* 080546fc */ .word 0x0604ff09
/* 08054700 */ .word 0x0b040704
/* 08054704 */ .word 0x0404ffff
/* 08054708 */ .word 0x0603ff09
/* 0805470c */ .word 0x0b030703
/* 08054710 */ .word 0x0304ffff
/* 08054714 */ .word 0x0602ff09
/* 08054718 */ .word 0xffff0702
/* 0805471c */ .word 0xff090204
/* 08054720 */ .word 0xffff0801
/* 08054724 */ .word 0xff080102
/* 08054728 */ .word 0x0b090609
/* 0805472c */ .word 0x0904ffff
/* 08054730 */ .word 0x0608ff08
/* 08054734 */ .word 0xffff0b08
/* 08054738 */ .word 0xff080804
/* 0805473c */ .word 0x0b070607
/* 08054740 */ .word 0x0704ffff
/* 08054744 */ .word 0x0606ff08
/* 08054748 */ .word 0xffff0b06
/* 0805474c */ .word 0xff080604
/* 08054750 */ .word 0x0b050605
/* 08054754 */ .word 0x0504ffff
/* 08054758 */ .word 0x0604ff08
/* 0805475c */ .word 0xffff0b04
/* 08054760 */ .word 0xff080404
/* 08054764 */ .word 0x0b030603
/* 08054768 */ .word 0x0304ffff
/* 0805476c */ .word 0x0602ff08
/* 08054770 */ .word 0x0204ffff
/* 08054774 */ .word 0x0601ff08
/* 08054778 */ .word 0xffff0b09
/* 0805477c */ .word 0x04070904
/* 08054780 */ .word 0x09040809
/* 08054784 */ .word 0x0a090409
/* 08054788 */ .word 0xff0b0904
/* 0805478c */ .word 0xff060804
/* 08054790 */ .word 0x07090609
/* 08054794 */ .word 0x09090809
/* 08054798 */ .word 0x0b080a09
/* 0805479c */ .word 0xffff0b09
/* 080547a0 */ .word 0x04070804
/* 080547a4 */ .word 0x08040808
/* 080547a8 */ .word 0x0a080409
/* 080547ac */ .word 0xff0b0804
/* 080547b0 */ .word 0xff060704
/* 080547b4 */ .word 0x07010608
/* 080547b8 */ .word 0x08080708
/* 080547bc */ .word 0x0a080908
/* 080547c0 */ .word 0x0b080b07
/* 080547c4 */ .word 0x0704ffff
/* 080547c8 */ .word 0x08070407
/* 080547cc */ .word 0x04090704
/* 080547d0 */ .word 0x07040a07
/* 080547d4 */ .word 0x0604ff0b
/* 080547d8 */ .word 0x0607ff06
/* 080547dc */ .word 0x08070707
/* 080547e0 */ .word 0x0a070907
/* 080547e4 */ .word 0x0b070b06
/* 080547e8 */ .word 0x0604ffff
/* 080547ec */ .word 0x08060407
/* 080547f0 */ .word 0x04090604
/* 080547f4 */ .word 0x06040a06
/* 080547f8 */ .word 0x0504ff0b
/* 080547fc */ .word 0x0606ff06
/* 08054800 */ .word 0x08060706
/* 08054804 */ .word 0x0a060906
/* 08054808 */ .word 0x0b060b05
/* 0805480c */ .word 0x0504ffff
/* 08054810 */ .word 0x08050407
/* 08054814 */ .word 0x04090504
/* 08054818 */ .word 0x05040a05
/* 0805481c */ .word 0x0404ff0b
/* 08054820 */ .word 0x0605ff06
/* 08054824 */ .word 0x08050705
/* 08054828 */ .word 0x0a050905
/* 0805482c */ .word 0x0b050b04
/* 08054830 */ .word 0x0404ffff
/* 08054834 */ .word 0x08040407
/* 08054838 */ .word 0x04090404
/* 0805483c */ .word 0x04040a04
/* 08054840 */ .word 0x0304ff0b
/* 08054844 */ .word 0x0604ff06
/* 08054848 */ .word 0x08040704
/* 0805484c */ .word 0x0a040904
/* 08054850 */ .word 0x0b040b03
/* 08054854 */ .word 0x0304ffff
/* 08054858 */ .word 0x08030407
/* 0805485c */ .word 0x04090304
/* 08054860 */ .word 0x03040a03
/* 08054864 */ .word 0x0102ff0b
/* 08054868 */ .word 0x0601ff06
/* 0805486c */ .word 0x08010701
/* 08054870 */ .word 0x0a010901
/* 08054874 */ .word 0xffff0b01
/* 08054878 */ .word 0x04070204
/* 0805487c */ .word 0x02040802
/* 08054880 */ .word 0x0a020409
/* 08054884 */ .word 0xff0b0204
/* 08054888 */ .word 0xff0b0202
/* 0805488c */ .word 0x07030603
/* 08054890 */ .word 0x09030803
/* 08054894 */ .word 0x0b030a03
/* 08054898 */ .word 0x0904ffff
/* 0805489c */ .word 0x0204ff06
/* 080548a0 */ .word 0x0000ff06
/* 080548a4 */ .word 0x30013002
/* 080548a8 */ .word 0x35013105
/* 080548ac */ .word 0x93838983
/* 080548b0 */ .word 0x02204e83
/* 080548b4 */ .word 0x05320132
/* 080548b8 */ .word 0x83370133
/* 080548bc */ .word 0x8343836e
/* 080548c0 */ .word 0x8378838c
/* 080548c4 */ .word 0x0000008b
/* 080548c8 */ .word 0x30013002
/* 080548cc */ .word 0x35013105
/* 080548d0 */ .word 0x93838983
/* 080548d4 */ .word 0x02204e83
/* 080548d8 */ .word 0x05320132
/* 080548dc */ .word 0x95370133
/* 080548e0 */ .word 0x007d96bd
/* 080548e4 */ .word 0x00000000
/* 080548e8 */ .word 0x01fe0100
/* 080548ec */ .word 0xff180218
/* 080548f0 */ .word 0x02010500
/* 080548f4 */ .word 0x02030202
/* 080548f8 */ .word 0x02050204
/* 080548fc */ .word 0x02070206
/* 08054900 */ .word 0x05080508
/* 08054904 */ .word 0x02060207
/* 08054908 */ .word 0x02040205
/* 0805490c */ .word 0x02020203
/* 08054910 */ .word 0x05000201
/* 08054914 */ .word 0x050204ff
/* 08054918 */ .word 0x07020602
/* 0805491c */ .word 0x08050802
/* 08054920 */ .word 0x06020705
/* 08054924 */ .word 0x04020502
/* 08054928 */ .word 0x0b020c02
/* 0805492c */ .word 0x09020a02
/* 08054930 */ .word 0x0a050905
/* 08054934 */ .word 0x0c020b02
/* 08054938 */ .word 0x2800ff02
/* 0805493c */ .word 0x03020301
/* 08054940 */ .word 0x03040303
/* 08054944 */ .word 0x010300ff
/* 08054948 */ .word 0x03030203
/* 0805494c */ .word 0x0000ff03

.end
