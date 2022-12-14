Create DATABASE MOCK
USE [MOCK]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 4/2/2022 6:38:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_title] [nvarchar](max) NULL,
	[author] [nvarchar](max) NULL,
	[brief] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[genre] [nvarchar](250) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookCase]    Script Date: 4/2/2022 6:38:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCase](
	[book_case_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[book_id] [int] NULL,
	[book_case_name] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_BookCase] PRIMARY KEY CLUSTERED 
(
	[book_case_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookChapter]    Script Date: 4/2/2022 6:38:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookChapter](
	[book_id] [int] NULL,
	[chapter_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 4/2/2022 6:38:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/2/2022 6:38:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[isAdmin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (1, N'The Wind in the Willows', N'Kenneth Grahame', N'The setting is set in the English countryside and the content revolves around the exciting adventures of animals living by the river. Grahame''s use of simple language and brilliant imagination make the book a spiritual treat for both adults and children.', N'https://kbimages1-a.akamaihd.net/bb8173ed-542c-4204-b8e6-56bb2d265c1a/1200/1200/False/the-wind-in-the-willows-220.jpg', N'Drammar')
INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (2, N'Lord of the Flies', N'William Golding', N'The story is about a group of young people isolated on a deserted island, isolated from the outside world. There, they established a new society with extremely brutal and strict principles. Golding uses language that is dramatic and engaging, making readers feel like they''re inside the story.', N'https://bizweb.dktcdn.net/100/326/228/products/lordoftheflieswilliamgolding.jpg?v=1540290999563', N'Action')
INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (3, N' The Old Man and the Sea', N'Ernest Hemingway', N'The story is about a brave old Cuban fisherman, and the battle against Marlin the giant fish.', N'https://cdn-amz.fadoglobal.io/images/I/6156MReb60L.jpg', N'Comedy')
INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (4, N'The Giver', N'Lois Lowry', N'The Giver is about a world where everything is perfect in a “uniform” way. All human beings are born with their respective positions arranged by the elders. Everything follows the law, there is no dispute, there is no riot, and there is no deception.', N'https://images-na.ssl-images-amazon.com/images/I/819XiIZg59L.jpg', N'Comedy')
INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (5, N'Charlotte’s Web', N'E. B. White', N'The content is about Wilbur the pig that was almost killed but was saved by the spider Charlotte.
The content is about Wilbur the pig that was almost killed but was saved by the spider Charlotte.
Nội dung kể về chú lợn Wilbur suýt bị giết nhưng được nhện Charlotte cứu.
The content is about Wilbur the pig who was almost killed but was rescued by the spider Charlotte.
Nội dung kể về chú lợn Wilbur suýt bị giết nhưng được nhện Charlotte cứu.
 Thanks to her intelligence, Charlotte knitted the spider''s web with messages of welcome to the pig, causing an owner to let him live.', N'https://cdn0.fahasa.com/media/catalog/product/9/7/9780064410939.jpg', N'Drammar')
INSERT [dbo].[Book] ([book_id], [book_title], [author], [brief], [image], [genre]) VALUES (6, N'Adventures of Huckleberry Finn', N'Mark Twain', N'The story follows a boy named Huckleberry Finn who is adopted by a wealthy family. However, he did not feel happy living in an environment full of rules and rituals of the rich.', N'https://images-na.ssl-images-amazon.com/images/I/91cIE3bCZHL.jpg', N'Action')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (1, 1)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (1, 2)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (1, 3)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (1, 4)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (2, 5)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (2, 6)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (2, 7)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (3, 8)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (3, 9)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (3, 10)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (4, 11)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (4, 12)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (5, 13)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (5, 14)
INSERT [dbo].[BookChapter] ([book_id], [chapter_id]) VALUES (6, 15)
GO
SET IDENTITY_INSERT [dbo].[Chapter] ON 

INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (1, N'Chapter 1', N'The warmth from behind slowly surrounds, hot breath in the ear: "Afraid?"

The strange breath around the ears makes people so cold that they don''t dare to speak.

Lam Tu Lap felt like the man had slowed down a bit, then his voice sounded again: "It''s still time to regret it."

She nervously clenched her fists, shook her head: "I don''t regret ..."

She is in her prime, but…

This night is painful but long…

Finally, at midnight, the man got up and went to the bathroom. Only then did Lam Tu La pull his tired body and get dressed out of the room.

Downstairs of the hotel, there was a middle-aged woman who introduced this job to her standing there, saw Lam Tu Lap coming, she gave her a black bag: "This is your remuneration."

Lam Tu Lap accepted it almost without hesitation, took the money and quickly ran away, not even caring about the pain in his body, just wanted to go to the hospital as soon as possible.

The sky was still not bright, so the corridor was very quiet, on the ground in front of the operating room there were two ambulance stretchers, because they did not pay, they were not allowed to enter the operating room.

Lam Tu Lap looked at her heartbroken, sobbing and said: "I have money, hurry to save my mother and younger brother..." She choked on the money in her hand to the doctor, the doctor glanced at it and gave it to the nurse. inventory, then ask staff to bring the injured into the operating room.

Lam Tu Lap did not see them push his brother in, quickly jumped up to catch the doctor and begged: "And my brother too, please save him..."

The doctor sighed: "It''s too embarrassing, your brother can''t be saved anymore..."

“Can''t save anymore?!

This word was like a thunderclap that hit the head of Lam Tu Lap, making her eyes black...

Pain, chest pain like being harassed by a knife, painful to shiver sitting curled up on the ground, eight years ago, she was ten years old, her father had an affair, abandoned her mother, kicked her pregnant mother and she went abroad. strange.

After that, her brother was born. At the age of three, she was found to have autism. Life was already poor. Her brother''s illness was in constant trouble. She and her mother went to work for other people everywhere to live. day by day. But a traffic accident, in a foreign country with no relatives, no money, no one to help, makes her feel what is the same way.

Forced to the end, she sold herself and could not save her brother.

There was a pain, it wasn''t intense, but it made people feel uncomfortable, breathing was difficult, the sky was gray, but she had to accept it, she had to accept it with a smile, because she was still alive. mom.

Mom needs you.

After receiving treatment, her mother''s health improved, but when she learned that her brother was dead, she collapsed.

It was Lam Tu Lap who hugged her and cried, "Mom, you still have children, try to live a good life for me."

During a month at the hospital, Trang Kha Nguyet often sat by the bed, Lam Tu La knew that she missed her brother. If it weren''t for me, I''m afraid that her mother would have followed her brother, because she had to take care of her mother, she would have been expelled from school, but her mother''s wound had changed for the better.

She carried food to the hospital, reached the door of the hospital room, when she raised her hand and was about to open the door, she heard a voice inside...

She was very used to it, even after eight years, she still clearly remembered the look of him forcing her mother to divorce her.

After bringing them here, he never came to see them, what does it mean to suddenly appear here today?

"Kha Nguyet, in the past, she and the landlady of the Tong family were like sisters. They decided to be engaged from a young age, according to morality, the marriage she decided should be made by her daughter..."')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (2, N'Chapter 2', N'"Lin Vien Trung, what do you mean?!" Trang Kha Nguyet''s body was thin and thin, despite having wounds on her body, she struggled to get up to hit him, is he still human?

Arranged for her and her daughter to stay in this strange strange place, never cared about their life and death, today want her daughter to get married?

"The eldest son of the Tong family is also her good friend''s son, good-looking, you know that from the Tong family lineage, you can only enjoy being married there..." As he spoke behind, his voice softened.

The eldest son of the Tong family is really noble, handsome and polite, but a month ago, he went abroad to work and was bitten by a venomous snake, paralyzed, unable to act, can''t even do that. .

Marrying there is like being a widow.

"I take."

Lam Tu Lap suddenly pushed open the door, she stood in front of the door, her hands clasped tightly holding the rice box in her hand: "You can get married, but I have one condition."

Lam Vien Trung looked out the door and saw this eight-year-old daughter he hadn''t seen, panicking for a few seconds. When she brought her here, she was still a child of ten years old, now an adult, her skin is white, and very thin, her small face is not as big as the palm of her hand, dry and not bright. anyway, like not so well developed.

Doesn''t make people like the little girl in the house.

The unwillingness in her heart also decreased, anyway her appearance was not very beautiful, even if she married a husband who could not do that, she would not be too upset.

Thinking like that, Lam Vien Trung did not see anything bad: "What conditions, say it."

"I returned home with my mother, returned all of her mother''s things to us, I agreed to get married." Lam Tu Lap repeatedly clenched his fists, and gradually calmed down.

Although she is not in the country every year, she has heard of the Tong family of B city, a huge family with millions of millions in wealth, and the owner of the Tong family is naturally noble. Lam Tu Lap did not feel that such a good thing would come to him, maybe the eldest son of the Tong family was very ugly, or there was a defect in his body.

But even so, this is also a very good opportunity to return to her home country, make good use of it, and even regain the property that was her mother''s dowry.

"Lala ..." Trang Kha Nguyet wanted to advise her, big things like marriage can''t be played with.

She followed her grandmother and endured a lot of hardship, she couldn''t let her bring marriage in.

Lam Vien Trung heard that, worried that Lam Tu Lap, persuaded by Trang Kha Nguyet, would not want to get married, quickly said: "Okay, as long as you marry, I will let you go home."

"What about my mother''s dowry?" Lam Tu La looked at the father in his name, his voice was extremely cold.

Before, when Trang Kha Nguyet married him, he really had a lot of dowry, which is a large amount, now asking Lam Vien Trung to take it out makes him very uncomfortable.

“Dad, maybe my other sister is very beautiful, she should have something better, if she marries a man who has flaws in her body, her whole life will be over, not to mention he and my mother are divorced. , you should also return the money she took to the Lam family, right?"

Lam Vien Trung timidly avoided looking at her directly.

How do you know that the eldest son of the Tong family is an imperfect person?

Lam Vien Trung who knows Lam Tu La is just guessing.

Thinking that she had to marry an unusual man, Lam Vien Trung gritted his teeth: "I''ll give it to you when you get married."

His little daughter is like a flower like a pearl, how can you marry a man who can''t do that?

No matter how noble, not being able to do marriage is like a disabled person?

Thinking of this, Lam Vien Trung is not so upset anymore.

But in his heart, he hates Lam Tu La more than a few parts, only thinking about taking money from his hand.

Lam Vien Trung coldly looked at her: "Your mother really didn''t teach you properly, didn''t know how to be polite at all!"

Lam Tu Lap really wants to say that a father is not responsible? Throwing her here never mind.

But at this moment she can''t say, her advantage is too weak, angering Lam Vien Trung is not beneficial to her.

"Prepare a little, come back tomorrow." Lam Vien Trung waved his sleeve and left the hospital room.')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (3, N'Chapter 3', N'"Lala, marriage is a big deal in life, I won''t let you do that." More or less Trang Kha Nguyet also knows Lam Tu La''s intentions.

Lam Tu Lap put the lunch box on the nightstand, took it out and said: "I don''t even marry outsiders, isn''t it the son of your mother''s friend."

"She died early, I don''t understand her son, even if I break my word, I want you to marry the person you like, not use marriage as an advantage, so, I''d rather stay here at all. life.”

The person I like?

Even if she could meet her anyway, she wouldn''t have the qualifications.

She lowered her head, it didn''t matter who she married, the important thing was to get back everything that was taken away.

Trang Kha Nguyet could not convince Lam Tu La to change his mind, the next day they immediately returned home.

Lam Vien Trung hates their mother and children, does not allow them to enter the door of the Lam family, but rents them a room outside, waiting for the wedding day, when Lam Tu La comes back.

Just or Lam Tu Lap doesn''t want to go back, returning, mother will have to face the concubine who destroys her marriage, compared to losing nature is not as good as staying here.

Quiet.

Trang Kha Nguyet is still very worried: "Lap Lap, if this was a good marriage, it wouldn''t have come to you, even though mother and grandmother used to have ... reciprocal affection."

Lam Tu Lap didn''t want to talk about these things with his mother, so he changed the subject: "Mom, hurry up and eat something."

Trang Kha Nguyet sighed, obviously Lam Tu Lap did not want to talk about this, she followed her to suffer, now even marriage has to be sacrificed.

Lam Tu Lap held chopsticks in his hand, but had no appetite and was still nauseous.

"Aren''t you comfortable?" Trang Kha Nguyet asked interested.

She did not want to worry her grandmother, saying that she had no appetite after sitting on the plane.

Put down your chopsticks and go to your room.

The room door closed, she leaned on the door panel, although she had never been pregnant, but she had seen the appearance when her mother was pregnant, she was also nauseated and did not eat well.

And her current situation is the same.

More than a month ago that night, her red light day was also ten days late…

She didn''t dare to think about it anymore, that night was already humiliating. If it weren''t for her mother and brother, she wouldn''t have sold herself.

She shivered…

"You''re pregnant, six weeks."

Out of the hospital, Lam Tu Lap''s mind still replayed the doctor''s words that she was pregnant.

Lam Tu La tricked Trang Kha Nguyet to go to the hospital to check, then the result was like that, her mood was very confused, I don''t know what to do now, give birth, or break?

Her hand couldn''t help but cover her stomach, surprised, even humiliating, but she still couldn''t help it.

There is a sense of joy, and anticipation, when first becoming a mother.

She panicked.

Returning to the residence, Lam Tu Lap hid the ultrasound paper B, then pushed the door open.

But Lam Vien Trung was also there, her face suddenly darkened.

What did he come to do?

Lam Vien Trung''s face was also not very good, it seems that because he did not see her, he made him wait for a long time, coldly said: "Go change clothes."

Lam Tu La frowned: "Why?"

"If you have to marry to the Tong family, you and the eldest son of the Tong family must also meet." Lam Vien Trung observed her from top to bottom: "Are you going to meet him dressed like this? Want to make me lose face?”')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (4, N'Chapter 4', N'It seems that Lam Vien Trung also thought of this, with a slightly embarrassed expression: "Let''s go, the Tong family is coming soon, it''s not convenient for them to wait."

"Lap ..." Trang Kha Nguyet was worried, still wanted to advise Lam Tu Lap, she had already lost her son, now she just wants to take good care of her daughter, money is no longer important.

I also don''t want my daughter to enter the Lam family, or the Tong family.

The rich are complicated, and they don''t even know what the eldest son of the Tong family looks like.

She worried.

"Mom." Lam Tu Lap gave her a comforting look, making her feel more secure.

"Hurry up." Lam Vien Trung impatiently urged, afraid that Lam Tu Lap would change his mind, he even pushed her.

Lam Vien Trung does not like her, she also has no feelings for this father.

Eight years, all blood ties are gone.

Lam Tu Lap''s clothes are really old, again having to meet the Tong family, Lam Vien Trung takes her to a luxury women''s clothing store, buys a makeshift outfit for her.

Entering the shop, there was also a staff member to welcome, Lam Vien Trung pushed Lam Tu Lap forward: "Get whatever she can wear."

The staff looked at her once, probably knew what number she was wearing: "Follow me."

The staff member held a long light blue dress and handed it to her: "You go to the fitting room and see."

Lam Tu La took it and went to the fitting room.

"Bai, do you have to marry the daughter of the Lam family?" The woman''s voice was vaguely filled with resentment.

Lam Tu Lap suddenly heard the voice, so she looked across the next room, through the gap in the door, she saw the woman hugging the man''s neck: "Can you not marry another girl? ?”

Tong Zhanbai looked at the woman, his eyes seemed to carry helplessness, this was the marriage decision his mother made for him, he couldn''t change his mind.

But thinking about that night, he couldn''t bear to let her down: "Was it painful that night?"

More than a month ago, he went abroad to a backward country to survey an item, the result was that he was bitten by a snake, its venom is very strong, if not poured out on a woman, it will dry up and die.

And Bach Lo Khiet, made the antidote for him.

He himself knew that at that time he could not control how much.

Everyone says that a woman''s first time is very painful, and he is merciless, can imagine how much it hurts.

But she resigned like that, never said a single word, only trembling in his heart.

Qin Lo Khiet liked him, he always knew, but never gave her a chance.

One is that he doesn''t love her, the other is because his mother has already decided to marry him.

But she was always by his side, from then on, he felt that he should give this woman a status.

To this day, he still clearly remembers how brilliant that red mark was.

Qin Lo Khiet buried in his arms, eyes slightly drooping, hummed shyly.')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (5, N'Chapter 1', N'sach 2 chap 2')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (6, N'Chapter 2', N'sach 2 chap 3')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (7, N'Chapter 3', N'sach 2 chap 4')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (8, N'Chapter 1', N't1')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (9, N'Chapter 2', N't2')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (10, N'Chapter 3', N't3')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (11, N'Chapter 1', N'content 1')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (12, N'Chapter 2', N'content 2')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (13, N'Chapter 1', N'abc')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (14, N'Chapter 2', N'bcd')
INSERT [dbo].[Chapter] ([id], [title], [content]) VALUES (15, N'Chapter 1', N'bg')
SET IDENTITY_INSERT [dbo].[Chapter] OFF
GO
ALTER TABLE [dbo].[BookCase]  WITH CHECK ADD  CONSTRAINT [FK_BookCase_Book] FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([book_id])
GO
ALTER TABLE [dbo].[BookCase] CHECK CONSTRAINT [FK_BookCase_Book]
GO
ALTER TABLE [dbo].[BookCase]  WITH CHECK ADD  CONSTRAINT [FK_BookCase_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[BookCase] CHECK CONSTRAINT [FK_BookCase_User]
GO
