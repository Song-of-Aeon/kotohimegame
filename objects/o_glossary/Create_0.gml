c_input();
entries = [];
pos = 0;
count = 0;
c_flash(global.surfaces.HUD, 120, c_white);
//log("your mom");

function glentry(name_, sprite_, info_, desc_) constructor {
	name = name_;
	sprite = sprite_;
	info = info_;
	desc = desc_;
	array_push(o_glossary.entries, self);
}

nu glentry("Kaguya Houraisan", s_kaguya, @"Lunarian; Hourai
Capable of manipulation of eternity", "The famed woman behind the Tale of the Bamboo-cutter. When she first came to Earth, she became a rich woman with many suitors, even to the point of the emperor taking an interest in her. She turned them all away, and eventually was forcefully returned to the moon.\nSome time later, she created and subsequently drank the Hourai Elixir, a concoction that distinguishes one's soul from their body, and provides endless regeneration and immortality.\nShe presently lives in the remote estate known as \"Eientei\".");

nu glentry("Reisen Udongein Inaba", s_reisen16, @"Lunarian
Capable of manipulation of insanity", "A person of various occupations who lives within Eientei. She once lived on the moon, but fled for her own reasons. Allies herself with Gensokyo's humans to resolve incidents on occasion.\nSomehow, she looks different when compared to everyone else. I wonder why that is...?");

nu glentry("Chiyuri Kitashirakawa", s_chiyurii, @"Human
Capable of seeing reflections", "A normal human who practices magic casually. She is fairly clever, and a trustworthy confidant. A long time ago, she met her twin from the outside world's future. For this reason, she is dubbed \"ChiyurII\" by Kotohime.");

nu glentry("Elly", s_elly, @"Youkai; Reaper
Capable of intangibility", "A wandering reaper who isn't needed. She enjoys taking odd jobs and fighting at full force, but has trouble finding opportunities for both. She thought her ability would make for interesting danmaku battles, but all her opponents she used it against said it was \"annoying, like what the shrine maiden does\".");

nu glentry("Eientei", s_glos2, @"Location; Bamboo Forest of the Lost", "The residence for a collection of refugees and exiles from the Lunar Capital. It used to be hidden by a spell of stagnation, but now is only hidden by the dense bamboo. The house's lady is Kaguya Houraisan, but it's operated by Eirin Yagokoro.\nKotohime is employed with the task of collecting a USB drive from Sumireko Usami and delivering it to Eientei about once a month to stave off Kaguya's boredom. It contains video games and television hand-selected by Sumireko. Without being invited, she also decided to join the princess in the entertainment, and Kaguya began to appreciate the company.");

nu glentry("Twilight Bar", s_glos1, @"Location; Off the beaten path", "A secluded bar of western design built against a hillside that serves wanderers of all types. Individuals involved in recent incidents before the spellcard rules were established met here, and many became close friends. The upper floor has a lounge, which is connected to a small study and a few rooms to sleep in. An engineer known as \"Rika\" lives at and operates the bar, with her friend Chiyuri stepping in when she's unavailable.\nIt holds a secret connection to another place, but only Rika and those on its other side know about.");

nu glentry("Kotohime", s_kotohime, @"Human
Has a good memory", @"A vagrant claiming to be a princess.");