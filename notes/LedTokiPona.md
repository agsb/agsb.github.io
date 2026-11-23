# Led flash toki pona 

@Gemini, @agsb 23/22/2026

"Here is the complete 198-entry unified protocol table (2 single-flash controls + 196 two-flash entries) in clean Markdown table format."

_this file is a draft, a stub for ideas_

## Toki Pona

What is Toki-Pone https://sona.pona.la/wiki/Toki_Pona

For Toki Pona characters and glyphs see https://sitelenpona.net/common.html

For Toki-Pona Wiki and texts https://sona.pona.la/wiki/Main_Page

For a Toki-Pona Self Music https://www.youtube.com/watch?v=U_w0-VUMh2o

## Using a standart ASCII table with replacements

Using all 8 bits (0–255) gives 256 total byte slots, allowing you to keep ASCII 0–31 for controls, 32 for [SPACE], and place every single pu, ku suli, and ku lili word, all 14 Toki Pona letters, all 10 digits, and 14 punctuation marks sequentially from 33 to 221 with zero words dropped and 34 spare slots (225–255) left over, available for future words, emojis, or custom hardware commands.


 | `Byte (Dec)` | `Binary (8-bit)` | `Word_Signal` | `Meaning` | `Category` | 
 | :--- | :--- | :--- | :--- | :--- | 
 | `0` | `00000000` | `[NUL]` | `Null / Idle` | `Control (0–31)` | 
 | `1` | `00000001` | `[SOH]` | `Start of Heading` | `Control` | 
 | `2` | `00000010` | `[STX]` | `Start of Text (`[START]`)` | `Control` | 
 | `3` | `00000011` | `[ETX]` | `End of Text (`[EOT]`)` | `Control` | 
 | `4` | `00000100` | `[EOT]` | `End of Transmission` | `Control` | 
 | `5` | `00000101` | `[ENQ]` | `Enquiry / Request status` | `Control` | 
 | `6` | `00000110` | `[ACK]` | `Acknowledged / Understood (`pona!`)` | `Control` | 
 | `7` | `00000111` | `[BEL]` | `Alert / Attention (`o!`)` | `Control` | 
 | `8` | `00001000` | `[BS]` | `Backspace / Delete last token` | `Control` | 
 | `9` | `00001001` | `[TAB]` | `Horizontal Tab` | `Control` | 
 | `10` | `00001010` | `[LF]` | `Line Feed / Newline (`\n`)` | `Control` | 
 | `11` | `00001011` | `[VT]` | `Vertical Tab` | `Control` | 
 | `12` | `00001100` | `[FF]` | `Form Feed / Clear screen` | `Control` | 
 | `13` | `00001101` | `[CR]` | `Carriage Return (`\r`)` | `Control` | 
 | `14` | `00001110` | `[SO]` | `Shift Out` | `Control` | 
 | `15` | `00001111` | `[SI]` | `Shift In` | `Control` | 
 | `16` | `00010000` | `[DLE]` | `Data Link Escape` | `Control` | 
 | `17` | `00010001` | `[DC1]` | `Device Control 1` | `Control` | 
 | `18` | `00010010` | `[DC2]` | `Device Control 2` | `Control` | 
 | `19` | `00010011` | `[DC3]` | `Device Control 3` | `Control` | 
 | `20` | `00010100` | `[DC4]` | `Device Control 4` | `Control` | 
 | `21` | `00010101` | `[NAK]` | `Negative Acknowledge / Error (`[REPEAT]`)` | `Control` | 
 | `22` | `00010110` | `[SYN]` | `Synchronous Idle / Clock sync` | `Control` | 
 | `23` | `00010111` | `[ETB]` | `End of Transmission Block` | `Control` | 
 | `24` | `00011000` | `[CAN]` | `Cancel / Abort message (`pake!`)` | `Control` | 
 | `25` | `00011001` | `[EM]` | `End of Medium` | `Control` | 
 | `26` | `00011010` | `[SUB]` | `Substitute` | `Control` | 
 | `27` | `00011011` | `[ESC]` | `Escape` | `Control` | 
 | `28` | `00011100` | `[NAME_START]` | `Start of proper noun (ASCII `FS`)` | `Control` | 
 | `29` | `00011101` | `[NAME_END]` | `End of proper noun (ASCII `GS`)` | `Control` | 
 | `30` | `00011110` | `[RS]` | `Record Separator / Sentence break` | `Control` | 
 | `31` | `00011111` | `[US]` | `Unit Separator` | `Control` | 
 | `32` | `00100000` | `[SPACE]` | `Space (word separator)` | `Space (32)` | 
 | `33` | `00100001` | `a` | `(emphasis, emotion, ah!)` | `pu (33–155)` | 
 | `34` | `00100010` | `akesi` | `reptile, amphibian, lizard, frog` | `pu` | 
 | `35` | `00100011` | `ala` | `no, not, nothing, zero, none` | `pu` | 
 | `36` | `00100100` | `alasa` | `hunt, forage, search, gather` | `pu` | 
 | `37` | `00100101` | `ale` | `all, every, everything, universe` | `pu` | 
 | `38` | `00100110` | `ali` | `explicit variant of ale (all)` | `pu` | 
 | `39` | `00100111` | `anpa` | `low, bottom, down, under, humble` | `pu` | 
 | `40` | `00101000` | `ante` | `different, other, change, alter` | `pu` | 
 | `41` | `00101001` | `anu` | `or` | `pu` | 
 | `42` | `00101010` | `awen` | `stay, keep, remain, wait, safe` | `pu` | 
 | `43` | `00101011` | `e` | `(direct object marker)` | `pu` | 
 | `44` | `00101100` | `en` | `and (between subjects)` | `pu` | 
 | `45` | `00101101` | `esun` | `market, shop, trade, buy, sell` | `pu` | 
 | `46` | `00101110` | `ijo` | `thing, object, matter, something` | `pu` | 
 | `47` | `00101111` | `ike` | `bad, evil, negative, complex` | `pu` | 
 | `48` | `00110000` | `ilo` | `tool, machine, device, implement` | `pu` | 
 | `49` | `00110001` | `insa` | `inside, interior, center, stomach` | `pu` | 
 | `50` | `00110010` | `jaki` | `dirty, gross, trash, toxic, waste` | `pu` | 
 | `51` | `00110011` | `jan` | `person, human, somebody` | `pu` | 
 | `52` | `00110100` | `jelo` | `yellow, yellowish` | `pu` | 
 | `53` | `00110101` | `jo` | `have, carry, hold, contain` | `pu` | 
 | `54` | `00110110` | `kala` | `fish, marine animal, sea creature` | `pu` | 
 | `55` | `00110111` | `kalama` | `sound, noise, voice, recite` | `pu` | 
 | `56` | `00111000` | `kama` | `come, arrive, become, future` | `pu` | 
 | `57` | `00111001` | `kasi` | `plant, tree, leaf, herb, vegetation` | `pu` | 
 | `58` | `00111010` | `ken` | `can, able to, possible, maybe` | `pu` | 
 | `59` | `00111011` | `kepeken` | `use, using, with, by means of` | `pu` | 
 | `60` | `00111100` | `kili` | `fruit, vegetable, mushroom` | `pu` | 
 | `61` | `00111101` | `kiwen` | `rock, stone, metal, hard object` | `pu` | 
 | `62` | `00111110` | `ko` | `clay, dough, paste, powder, semi-solid` | `pu` | 
 | `63` | `00111111` | `kon` | `air, wind, breath, spirit, essence` | `pu` | 
 | `64` | `01000000` | `kule` | `color, colorful, paint` | `pu` | 
 | `65` | `01000001` | `kulupu` | `group, community, team, society` | `pu` | 
 | `66` | `01000010` | `kute` | `ear, hear, listen, obey` | `pu` | 
 | `67` | `01000011` | `la` | `(context / if-then marker)` | `pu` | 
 | `68` | `01000100` | `lape` | `sleep, rest` | `pu` | 
 | `69` | `01000101` | `laso` | `blue, green` | `pu` | 
 | `70` | `01000110` | `lawa` | `head, mind, lead, control, guide` | `pu` | 
 | `71` | `01000111` | `len` | `cloth, clothing, fabric, cover` | `pu` | 
 | `72` | `01001000` | `lete` | `cold, cool, raw, freeze` | `pu` | 
 | `73` | `01001001` | `li` | `(predicate / verb marker)` | `pu` | 
 | `74` | `01001010` | `lili` | `small, little, young, few, short` | `pu` | 
 | `75` | `01001011` | `linja` | `line, string, rope, thread, hair` | `pu` | 
 | `76` | `01001100` | `lipu` | `paper, book, page, flat object` | `pu` | 
 | `77` | `01001101` | `loje` | `red, reddish` | `pu` | 
 | `78` | `01001110` | `lon` | `at, in, on, exist, true, real` | `pu` | 
 | `79` | `01001111` | `luka` | `hand, arm, touch, five` | `pu` | 
 | `80` | `01010000` | `lukin` | `see, look, read, eye, watch` | `pu` | 
 | `81` | `01010001` | `lupa` | `hole, door, window, opening` | `pu` | 
 | `82` | `01010010` | `ma` | `land, earth, country, place, soil` | `pu` | 
 | `83` | `01010011` | `mama` | `parent, ancestor, creator` | `pu` | 
 | `84` | `01010100` | `mani` | `money, wealth, currency, livestock` | `pu` | 
 | `85` | `01010101` | `meli` | `woman, female, feminine` | `pu` | 
 | `86` | `01010110` | `mi` | `I, me, my, we, us, our` | `pu` | 
 | `87` | `01010111` | `mije` | `man, male, masculine` | `pu` | 
 | `88` | `01011000` | `moku` | `eat, drink, food, meal` | `pu` | 
 | `89` | `01011001` | `moli` | `dead, death, die, kill` | `pu` | 
 | `90` | `01011010` | `monsi` | `back, behind, rear` | `pu` | 
 | `91` | `01011011` | `mu` | `(animal sound: meow, moo, woof)` | `pu` | 
 | `92` | `01011100` | `mun` | `moon, star, night sky object` | `pu` | 
 | `93` | `01011101` | `musi` | `fun, game, art, play, entertain` | `pu` | 
 | `94` | `01011110` | `mute` | `many, very, much, quantity, more` | `pu` | 
 | `95` | `01011111` | `nanpa` | `number, count, (ordinal marker)` | `pu` | 
 | `96` | `01100000` | `nasa` | `strange, crazy, silly, drunk` | `pu` | 
 | `97` | `01100001` | `nasin` | `way, path, method, road, custom` | `pu` | 
 | `98` | `01100010` | `nena` | `bump, hill, mountain, nose, button` | `pu` | 
 | `99` | `01100011` | `ni` | `this, that` | `pu` | 
 | `100` | `01100100` | `nimi` | `word, name` | `pu` | 
 | `101` | `01100101` | `noka` | `foot, leg, base, bottom part` | `pu` | 
 | `102` | `01100110` | `o` | `(vocative / imperative marker, hey!)` | `pu` | 
 | `103` | `01100111` | `olin` | `love, compassion, affection` | `pu` | 
 | `104` | `01101000` | `ona` | `he, she, it, they` | `pu` | 
 | `105` | `01101001` | `open` | `open, begin, start, turn on` | `pu` | 
 | `106` | `01101010` | `pakala` | `broken, mistake, damage, ruin` | `pu` | 
 | `107` | `01101011` | `pali` | `do, make, work, build, create` | `pu` | 
 | `108` | `01101100` | `palisa` | `stick, rod, branch, long hard thing` | `pu` | 
 | `109` | `01101101` | `pan` | `bread, grain, rice, pasta, cereal` | `pu` | 
 | `110` | `01101110` | `pana` | `give, send, emit, put, release` | `pu` | 
 | `111` | `01101111` | `pi` | `of (regroups modifiers)` | `pu` | 
 | `112` | `01110000` | `pilin` | `feel, emotion, heart, mind` | `pu` | 
 | `113` | `01110001` | `pimeja` | `black, dark, shadow, night` | `pu` | 
 | `114` | `01110010` | `pini` | `end, finish, past, closed` | `pu` | 
 | `115` | `01110011` | `pipi` | `bug, insect, spider, ant` | `pu` | 
 | `116` | `01110100` | `poka` | `side, hip, next to, near` | `pu` | 
 | `117` | `01110101` | `poki` | `box, container, bowl, cup` | `pu` | 
 | `118` | `01110110` | `pona` | `good, simple, positive, fix` | `pu` | 
 | `119` | `01110111` | `pu` | `interact with official Toki Pona book` | `pu` | 
 | `120` | `01111000` | `sama` | `same, similar, equal, like` | `pu` | 
 | `121` | `01111001` | `seli` | `fire, heat, warm, cook` | `pu` | 
 | `122` | `01111010` | `selo` | `skin, bark, shell, outer layer` | `pu` | 
 | `123` | `01111011` | `seme` | `what? which? (question word)` | `pu` | 
 | `124` | `01111100` | `sewi` | `high, up, above, sky, sacred` | `pu` | 
 | `125` | `01111101` | `sijelo` | `body, physical state, torso` | `pu` | 
 | `126` | `01111110` | `sike` | `circle, wheel, ball, cycle, year` | `pu` | 
 | `127` | `01111111` | `sin` | `new, fresh, another, again` | `pu` | 
 | `128` | `10000000` | `sina` | `you, your` | `pu` | 
 | `129` | `10000001` | `sinpin` | `face, front, wall, chest` | `pu` | 
 | `130` | `10000010` | `sitelen` | `image, write, draw, symbol` | `pu` | 
 | `131` | `10000011` | `sona` | `know, knowledge, wisdom` | `pu` | 
 | `132` | `10000100` | `soto` | `left, left side` | `pu (directional)` | 
 | `133` | `10000101` | `soweli` | `land mammal, animal, beast` | `pu` | 
 | `134` | `10000110` | `suli` | `big, tall, heavy, important` | `pu` | 
 | `135` | `10000111` | `suno` | `sun, light, brightness, shine` | `pu` | 
 | `136` | `10001000` | `supa` | `horizontal surface, table, bed` | `pu` | 
 | `137` | `10001001` | `suwi` | `sweet, cute, fragrant, pleasant` | `pu` | 
 | `138` | `10001010` | `tan` | `from, because of, origin` | `pu` | 
 | `139` | `10001011` | `taso` | `but, however, only, just` | `pu` | 
 | `140` | `10001100` | `tawa` | `to, toward, go, move` | `pu` | 
 | `141` | `10001101` | `teje` | `right, right side` | `pu (directional)` | 
 | `142` | `10001110` | `telo` | `water, liquid, drink, wash` | `pu` | 
 | `143` | `10001111` | `tenpo` | `time, moment, period, duration` | `pu` | 
 | `144` | `10010000` | `toki` | `speak, language, message, hello` | `pu` | 
 | `145` | `10010001` | `tomo` | `house, building, room, shelter` | `pu` | 
 | `146` | `10010010` | `tu` | `two, divide, split` | `pu` | 
 | `147` | `10010011` | `unpa` | `sex, sexual, intimacy` | `pu` | 
 | `148` | `10010100` | `uta` | `mouth, lips, oral, kiss` | `pu` | 
 | `149` | `10010101` | `utala` | `fight, battle, conflict, compete` | `pu` | 
 | `150` | `10010110` | `walo` | `white, pale, light-colored` | `pu` | 
 | `151` | `10010111` | `wan` | `one, unique, unite` | `pu` | 
 | `152` | `10011000` | `waso` | `bird, flying creature` | `pu` | 
 | `153` | `10011001` | `wawa` | `strong, energy, power, intense` | `pu` | 
 | `154` | `10011010` | `weka` | `away, absent, remove` | `pu` | 
 | `155` | `10011011` | `wile` | `want, need, desire, must` | `pu` | 
 | `156` | `10011100` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `157` | `10011101` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `158` | `10011110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `159` | `10011111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `160` | `10100000` | `epiku` | `epic, awesome, amazing` | `ku suli (160–176)` | 
 | `161` | `10100001` | `jasima` | `reflection, mirror, opposite, reverse` | `ku suli` | 
 | `162` | `10100010` | `kijetesantakalu` | `raccoon, coati, mustelid` | `ku suli` | 
 | `163` | `10100011` | `kin` | `also, too, indeed, still` | `ku suli` | 
 | `164` | `10100100` | `kipisi` | `cut, divide, slice, piece` | `ku suli` | 
 | `165` | `10100101` | `kokosila` | `speak non-Toki Pona where TP is used` | `ku suli` | 
 | `166` | `10100110` | `ku` | `interact with Toki Pona Dictionary` | `ku suli` | 
 | `167` | `10100111` | `lanpan` | `take, seize, grab, capture` | `ku suli` | 
 | `168` | `10101000` | `leko` | `block, brick, square, cube` | `ku suli` | 
 | `169` | `10101001` | `meso` | `middle, medium, average` | `ku suli` | 
 | `170` | `10101010` | `misikeke` | `medicine, medication, cure` | `ku suli` | 
 | `171` | `10101011` | `monsuta` | `fear, monster, scary, danger` | `ku suli` | 
 | `172` | `10101100` | `n` | `(interjection: um, hmm, thinking...)` | `ku suli` | 
 | `173` | `10101101` | `namako` | `spice, extra, additional, embellishment` | `ku suli` | 
 | `174` | `10101110` | `oko` | `eye, vision` | `ku suli` | 
 | `175` | `10101111` | `soko` | `mushroom, fungus` | `ku suli` | 
 | `176` | `10110000` | `tonsi` | `non-binary, trans, gender-diverse` | `ku suli` | 
 | `177` | `10110001` | `apeja` | `shame, guilt, dishonor, taboo` | `ku lili (177–187)` | 
 | `178` | `10110010` | `isipin` | `think, imagine, idea` | `ku lili` | 
 | `179` | `10110011` | `kapesi` | `brown, tan, gray` | `ku lili` | 
 | `180` | `10110100` | `linluwi` | `internet, network, digital connection` | `ku lili` | 
 | `181` | `10110101` | `majuna` | `old, ancient, aged` | `ku lili` | 
 | `182` | `10110110` | `mulapisu` | `pizza` | `ku lili` | 
 | `183` | `10110111` | `omekapo` | `goodbye, farewell, eat a good fish` | `ku lili` | 
 | `184` | `10111000` | `pake` | `block, stop, prevent, brake` | `ku lili` | 
 | `185` | `10111001` | `powe` | `false, lie, pretend, illusion` | `ku lili` | 
 | `186` | `10111010` | `su` | `interact with illustrated su books` | `ku lili` | 
 | `187` | `10111011` | `unu` | `purple, violet, lilac` | `ku lili` | 
 | `188` | `10111100` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `189` | `10111101` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `190` | `10111110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `191` | `10111111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `192` | `11000000` | `a (letter)` | `Letter A (for spelling names)` | `Letters (192–205)` | 
 | `193` | `11000001` | `e (letter)` | `Letter E (for spelling names)` | `Letters` | 
 | `194` | `11000010` | `i (letter)` | `Letter I (for spelling names)` | `Letters` | 
 | `195` | `11000011` | `j (letter)` | `Letter J (for spelling names)` | `Letters` | 
 | `196` | `11000100` | `k (letter)` | `Letter K (for spelling names)` | `Letters` | 
 | `197` | `11000101` | `l (letter)` | `Letter L (for spelling names)` | `Letters` | 
 | `198` | `11000110` | `m (letter)` | `Letter M (for spelling names)` | `Letters` | 
 | `199` | `11000111` | `n (letter)` | `Letter N (for spelling names)` | `Letters` | 
 | `200` | `11001000` | `o (letter)` | `Letter O (for spelling names)` | `Letters` | 
 | `201` | `11001001` | `p (letter)` | `Letter P (for spelling names)` | `Letters` | 
 | `202` | `11001010` | `s (letter)` | `Letter S (for spelling names)` | `Letters` | 
 | `203` | `11001011` | `t (letter)` | `Letter T (for spelling names)` | `Letters` | 
 | `204` | `11001100` | `u (letter)` | `Letter U (for spelling names)` | `Letters` | 
 | `205` | `11001101` | `w (letter)` | `Letter W (for spelling names)` | `Letters` | 
 | `206` | `11001110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `207` | `11001111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `208` | `11010000` | `0` | `Digit 0` | `Digits (208–217)` | 
 | `209` | `11010001` | `1` | `Digit 1` | `Digits` | 
 | `210` | `11010010` | `2` | `Digit 2` | `Digits` | 
 | `211` | `11010011` | `3` | `Digit 3` | `Digits` | 
 | `212` | `11010100` | `4` | `Digit 4` | `Digits` | 
 | `213` | `11010101` | `5` | `Digit 5` | `Digits` | 
 | `214` | `11010110` | `6` | `Digit 6` | `Digits` | 
 | `215` | `11010111` | `7` | `Digit 7` | `Digits` | 
 | `216` | `11011000` | `8` | `Digit 8` | `Digits` | 
 | `217` | `11011001` | `9` | `Digit 9` | `Digits` | 
 | `218` | `11011010` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `219` | `11011011` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `220` | `11011100` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `221` | `11011101` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `222` | `11011110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `223` | `11011111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `224` | `11100000` | `.` | `Period / full stop` | `Punctuation (224–237)` | 
 | `225` | `11100001` | `,` | `Comma` | `Punctuation` | 
 | `226` | `11100010` | `?` | `Question mark` | `Punctuation` | 
 | `227` | `11100011` | `!` | `Exclamation mark` | `Punctuation` | 
 | `228` | `11100100` | `'` | `Single quote / apostrophe` | `Punctuation` | 
 | `229` | `11100101` | `"` | `Double quote` | `Punctuation` | 
 | `230` | `11100110` | `-` | `Hyphen / dash` | `Punctuation` | 
 | `231` | `11100111` | `:` | `Colon` | `Punctuation` | 
 | `232` | `11101000` | `(` | `Open parenthesis` | `Punctuation` | 
 | `233` | `11101001` | `)` | `Close parenthesis` | `Punctuation` | 
 | `234` | `11101010` | `;` | `Semicolon` | `Punctuation` | 
 | `235` | `11101011` | `/` | `Slash` | `Punctuation` | 
 | `236` | `11101100` | `+` | `Plus / addition sign` | `Punctuation` | 
 | `237` | `11101101` | `=` | `Equals sign` | `Punctuation` | 
 | `238` | `11101110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `239` | `11101111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `240` | `11110000` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `241` | `11110001` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `242` | `11110010` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `243` | `11110011` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `244` | `11110100` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `245` | `11110101` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `246` | `11110110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `247` | `11110111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `248` | `11111000` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `249` | `11111001` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `250` | `11111010` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `251` | `11111011` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `252` | `11111100` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `253` | `11111101` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `254` | `11111110` | `[RESERVED]` | `Reserved` | `Reserved` | 
 | `255` | `11111111` | `[RESERVED]` | `Reserved` | `Reserved` | 
 
