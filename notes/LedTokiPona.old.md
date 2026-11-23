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


| Byte (Dec) | Binary (8-bit) | Word_Signal | Meaning | Category |
| :--- | :--- | :--- | :--- | :--- |
| `0` | `00000000` | `[NUL]` | Null / Idle | Control (0–31) |
| `1` | `00000001` | `[SOH]` | Start of Heading | Control |
| `2` | `00000010` | `[STX]` | Start of Text (`[START]`) | Control |
| `3` | `00000011` | `[ETX]` | End of Text (`[EOT]`) | Control |
| `4` | `00000100` | `[EOT]` | End of Transmission | Control |
| `5` | `00000101` | `[ENQ]` | Enquiry / Request status | Control |
| `6` | `00000110` | `[ACK]` | Acknowledged / Understood (`pona!`) | Control |
| `7` | `00000111` | `[BEL]` | Alert / Attention (`o!`) | Control |
| `8` | `00001000` | `[BS]` | Backspace / Delete last token | Control |
| `9` | `00001001` | `[TAB]` | Horizontal Tab | Control |
| `10` | `00001010` | `[LF]` | Line Feed / Newline (`\n`) | Control |
| `11` | `00001011` | `[VT]` | Vertical Tab | Control |
| `12` | `00001100` | `[FF]` | Form Feed / Clear screen | Control |
| `13` | `00001101` | `[CR]` | Carriage Return (`\r`) | Control |
| `14` | `00001110` | `[SO]` | Shift Out | Control |
| `15` | `00001111` | `[SI]` | Shift In | Control |
| `16` | `00010000` | `[DLE]` | Data Link Escape | Control |
| `17` | `00010001` | `[DC1]` | Device Control 1 | Control |
| `18` | `00010010` | `[DC2]` | Device Control 2 | Control |
| `19` | `00010011` | `[DC3]` | Device Control 3 | Control |
| `20` | `00010100` | `[DC4]` | Device Control 4 | Control |
| `21` | `00010101` | `[NAK]` | Negative Acknowledge / Error (`[REPEAT]`) | Control |
| `22` | `00010110` | `[SYN]` | Synchronous Idle / Clock sync | Control |
| `23` | `00010111` | `[ETB]` | End of Transmission Block | Control |
| `24` | `00011000` | `[CAN]` | Cancel / Abort message (`pake!`) | Control |
| `25` | `00011001` | `[EM]` | End of Medium | Control |
| `26` | `00011010` | `[SUB]` | Substitute | Control |
| `27` | `00011011` | `[ESC]` | Escape | Control |
| `28` | `00011100` | `[NAME_START]` | Start of proper noun (ASCII `FS`) | Control |
| `29` | `00011101` | `[NAME_END]` | End of proper noun (ASCII `GS`) | Control |
| `30` | `00011110` | `[RS]` | Record Separator / Sentence break | Control |
| `31` | `00011111` | `[US]` | Unit Separator | Control |
| | | | | |
| `32` | `00100000` | `[SPACE]` | Space (word separator) | Space (32) |
| `33` | `00100001` | `a` | (emphasis, emotion, ah!) | pu (33–155) |
| `34` | `00100010` | `akesi` | reptile, amphibian, lizard, frog | pu |
| `35` | `00100011` | `ala` | no, not, nothing, zero, none | pu |
| `36` | `00100100` | `alasa` | hunt, forage, search, gather | pu |
| `37` | `00100101` | `ale` | all, every, everything, universe | pu |
| `38` | `00100110` | `ali` | explicit variant of ale (all) | pu |
| `39` | `00100111` | `anpa` | low, bottom, down, under, humble | pu |
| `40` | `00101000` | `ante` | different, other, change, alter | pu |
| `41` | `00101001` | `anu` | or | pu |
| `42` | `00101010` | `awen` | stay, keep, remain, wait, safe | pu |
| `43` | `00101011` | `e` | (direct object marker) | pu |
| `44` | `00101100` | `en` | and (between subjects) | pu |
| `45` | `00101101` | `esun` | market, shop, trade, buy, sell | pu |
| `46` | `00101110` | `ijo` | thing, object, matter, something | pu |
| `47` | `00101111` | `ike` | bad, evil, negative, complex | pu |
| `48` | `00110000` | `ilo` | tool, machine, device, implement | pu |
| `49` | `00110001` | `insa` | inside, interior, center, stomach | pu |
| `50` | `00110010` | `jaki` | dirty, gross, trash, toxic, waste | pu |
| `51` | `00110011` | `jan` | person, human, somebody | pu |
| `52` | `00110100` | `jelo` | yellow, yellowish | pu |
| `53` | `00110101` | `jo` | have, carry, hold, contain | pu |
| `54` | `00110110` | `kala` | fish, marine animal, sea creature | pu |
| `55` | `00110111` | `kalama` | sound, noise, voice, recite | pu |
| `56` | `00111000` | `kama` | come, arrive, become, future | pu |
| `57` | `00111001` | `kasi` | plant, tree, leaf, herb, vegetation | pu |
| `58` | `00111010` | `ken` | can, able to, possible, maybe | pu |
| `59` | `00111011` | `kepeken` | use, using, with, by means of | pu |
| `60` | `00111100` | `kili` | fruit, vegetable, mushroom | pu |
| `61` | `00111101` | `kiwen` | rock, stone, metal, hard object | pu |
| `62` | `00111110` | `ko` | clay, dough, paste, powder, semi-solid | pu |
| `63` | `00111111` | `kon` | air, wind, breath, spirit, essence | pu |
| `64` | `01000000` | `kule` | color, colorful, paint | pu |
| `65` | `01000001` | `kulupu` | group, community, team, society | pu |
| `66` | `01000010` | `kute` | ear, hear, listen, obey | pu |
| `67` | `01000011` | `la` | (context / if-then marker) | pu |
| `68` | `01000100` | `lape` | sleep, rest | pu |
| `69` | `01000101` | `laso` | blue, green | pu |
| `70` | `01000110` | `lawa` | head, mind, lead, control, guide | pu |
| `71` | `01000111` | `len` | cloth, clothing, fabric, cover | pu |
| `72` | `01001000` | `lete` | cold, cool, raw, freeze | pu |
| `73` | `01001001` | `li` | (predicate / verb marker) | pu |
| `74` | `01001010` | `lili` | small, little, young, few, short | pu |
| `75` | `01001011` | `linja` | line, string, rope, thread, hair | pu |
| `76` | `01001100` | `lipu` | paper, book, page, flat object | pu |
| `77` | `01001101` | `loje` | red, reddish | pu |
| `78` | `01001110` | `lon` | at, in, on, exist, true, real | pu |
| `79` | `01001111` | `luka` | hand, arm, touch, five | pu |
| `80` | `01010000` | `lukin` | see, look, read, eye, watch | pu |
| `81` | `01010001` | `lupa` | hole, door, window, opening | pu |
| `82` | `01010010` | `ma` | land, earth, country, place, soil | pu |
| `83` | `01010011` | `mama` | parent, ancestor, creator | pu |
| `84` | `01010100` | `mani` | money, wealth, currency, livestock | pu |
| `85` | `01010101` | `meli` | woman, female, feminine | pu |
| `86` | `01010110` | `mi` | I, me, my, we, us, our | pu |
| `87` | `01010111` | `mije` | man, male, masculine | pu |
| `88` | `01011000` | `moku` | eat, drink, food, meal | pu |
| `89` | `01011001` | `moli` | dead, death, die, kill | pu |
| `90` | `01011010` | `monsi` | back, behind, rear | pu |
| `91` | `01011011` | `mu` | (animal sound: meow, moo, woof) | pu |
| `92` | `01011100` | `mun` | moon, star, night sky object | pu |
| `93` | `01011101` | `musi` | fun, game, art, play, entertain | pu |
| `94` | `01011110` | `mute` | many, very, much, quantity, more | pu |
| `95` | `01011111` | `nanpa` | number, count, (ordinal marker) | pu |
| `96` | `01100000` | `nasa` | strange, crazy, silly, drunk | pu |
| `97` | `01100001` | `nasin` | way, path, method, road, custom | pu |
| `98` | `01100010` | `nena` | bump, hill, mountain, nose, button | pu |
| `99` | `01100011` | `ni` | this, that | pu |
| `100` | `01100100` | `nimi` | word, name | pu |
| `101` | `01100101` | `noka` | foot, leg, base, bottom part | pu |
| `102` | `01100110` | `o` | (vocative / imperative marker, hey!) | pu |
| `103` | `01100111` | `olin` | love, compassion, affection | pu |
| `104` | `01101000` | `ona` | he, she, it, they | pu |
| `105` | `01101001` | `open` | open, begin, start, turn on | pu |
| `106` | `01101010` | `pakala` | broken, mistake, damage, ruin | pu |
| `107` | `01101011` | `pali` | do, make, work, build, create | pu |
| `108` | `01101100` | `palisa` | stick, rod, branch, long hard thing | pu |
| `109` | `01101101` | `pan` | bread, grain, rice, pasta, cereal | pu |
| `110` | `01101110` | `pana` | give, send, emit, put, release | pu |
| `111` | `01101111` | `pi` | of (regroups modifiers) | pu |
| `112` | `01110000` | `pilin` | feel, emotion, heart, mind | pu |
| `113` | `01110001` | `pimeja` | black, dark, shadow, night | pu |
| `114` | `01110010` | `pini` | end, finish, past, closed | pu |
| `115` | `01110011` | `pipi` | bug, insect, spider, ant | pu |
| `116` | `01110100` | `poka` | side, hip, next to, near | pu |
| `117` | `01110101` | `poki` | box, container, bowl, cup | pu |
| `118` | `01110110` | `pona` | good, simple, positive, fix | pu |
| `119` | `01110111` | `pu` | interact with official Toki Pona book | pu |
| `120` | `01111000` | `sama` | same, similar, equal, like | pu |
| `121` | `01111001` | `seli` | fire, heat, warm, cook | pu |
| `122` | `01111010` | `selo` | skin, bark, shell, outer layer | pu |
| `123` | `01111011` | `seme` | what? which? (question word) | pu |
| `124` | `01111100` | `sewi` | high, up, above, sky, sacred | pu |
| `125` | `01111101` | `sijelo` | body, physical state, torso | pu |
| `126` | `01111110` | `sike` | circle, wheel, ball, cycle, year | pu |
| `127` | `01111111` | `sin` | new, fresh, another, again | pu |
| `128` | `10000000` | `sina` | you, your | pu |
| `129` | `10000001` | `sinpin` | face, front, wall, chest | pu |
| `130` | `10000010` | `sitelen` | image, write, draw, symbol | pu |
| `131` | `10000011` | `sona` | know, knowledge, wisdom | pu |
| `132` | `10000100` | `soto` | left, left side | pu (directional) |
| `133` | `10000101` | `soweli` | land mammal, animal, beast | pu |
| `134` | `10000110` | `suli` | big, tall, heavy, important | pu |
| `135` | `10000111` | `suno` | sun, light, brightness, shine | pu |
| `136` | `10001000` | `supa` | horizontal surface, table, bed | pu |
| `137` | `10001001` | `suwi` | sweet, cute, fragrant, pleasant | pu |
| `138` | `10001010` | `tan` | from, because of, origin | pu |
| `139` | `10001011` | `taso` | but, however, only, just | pu |
| `140` | `10001100` | `tawa` | to, toward, go, move | pu |
| `141` | `10001101` | `teje` | right, right side | pu (directional) |
| `142` | `10001110` | `telo` | water, liquid, drink, wash | pu |
| `143` | `10001111` | `tenpo` | time, moment, period, duration | pu |
| `144` | `10010000` | `toki` | speak, language, message, hello | pu |
| `145` | `10010001` | `tomo` | house, building, room, shelter | pu |
| `146` | `10010010` | `tu` | two, divide, split | pu |
| `147` | `10010011` | `unpa` | sex, sexual, intimacy | pu |
| `148` | `10010100` | `uta` | mouth, lips, oral, kiss | pu |
| 149 | 10010101 | utala | fight, battle, conflict, compete | pu |
| 150 | 10010110 | walo | white, pale, light-colored | pu |
| 151 | 10010111 | wan | one, unique, unite | pu |
| 152 | 10011000 | waso | bird, flying creature | pu |
| 153 | 10011001 | wawa | strong, energy, power, intense | pu |
| 154 | 10011010 | weka | away, absent, remove | pu |
| 155 | 10011011 | wile | want, need, desire, must | pu |
| 156 | 10011100 | [RESERVED] | Reserved | Reserved |
| 157 | 10011101 | [RESERVED] | Reserved | Reserved |
| 158 | 10011110 | [RESERVED] | Reserved | Reserved |
| 159 | 10011111 | [RESERVED] | Reserved | Reserved |
| | | | | |
| 160 | 10100000 | epiku | epic, awesome, amazing | ku suli (160–176) |
| 161 | 10100001 | jasima | reflection, mirror, opposite, reverse | ku suli |
| 162 | 10100010 | kijetesantakalu | raccoon, coati, mustelid | ku suli |
| 163 | 10100011 | kin | also, too, indeed, still | ku suli |
| 164 | 10100100 | kipisi | cut, divide, slice, piece | ku suli |
| 165 | 10100101 | kokosila | speak non-Toki Pona where TP is used | ku suli |
| 166 | 10100110 | ku | interact with Toki Pona Dictionary | ku suli |
| 167 | 10100111 | lanpan | take, seize, grab, capture | ku suli |
| 168 | 10101000 | leko | block, brick, square, cube | ku suli |
| 169 | 10101001 | meso | middle, medium, average | ku suli |
| 170 | 10101010 | misikeke | medicine, medication, cure | ku suli |
| 171 | 10101011 | monsuta | fear, monster, scary, danger | ku suli |
| 172 | 10101100 | n | (interjection: um, hmm, thinking...) | ku suli |
| 173 | 10101101 | namako | spice, extra, additional, embellishment | ku suli |
| 174 | 10101110 | oko | eye, vision | ku suli |
| 175 | 10101111 | soko | mushroom, fungus | ku suli |
| 176 | 10110000 | tonsi | non-binary, trans, gender-diverse | ku suli |
| | | | | |
| 177 | 10110001 | apeja | shame, guilt, dishonor, taboo | ku lili (177–187) |
| 178 | 10110010 | isipin | think, imagine, idea | ku lili |
| 179 | 10110011 | kapesi | brown, tan, gray | ku lili |
| 180 | 10110100 | linluwi | internet, network, digital connection | ku lili |
| 181 | 10110101 | majuna | old, ancient, aged | ku lili |
| 182 | 10110110 | mulapisu | pizza | ku lili |
| 183 | 10110111 | omekapo | goodbye, farewell, eat a good fish | ku lili |
| 184 | 10111000 | pake | block, stop, prevent, brake | ku lili |
| 185 | 10111001 | powe | false, lie, pretend, illusion | ku lili |
| 186 | 10111010 | su | interact with illustrated su books | ku lili |
| 187 | 10111011 | unu | purple, violet, lilac | ku lili |
| 188 | 10111100 | [RESERVED] | Reserved | Reserved |
| 189 | 10111101 | [RESERVED] | Reserved | Reserved |
| 190 | 10111110 | [RESERVED] | Reserved | Reserved |
| 191 | 10111111 | [RESERVED] | Reserved | Reserved |
| | | | | |
| 192 | 11000000 | a (letter) | Letter A (for spelling names) | Letters (192–205) |
| 193 | 11000001 | e (letter) | Letter E (for spelling names) | Letters |
| 194 | 11000010 | i (letter) | Letter I (for spelling names) | Letters |
| 195 | 11000011 | j (letter) | Letter J (for spelling names) | Letters |
| 196 | 11000100 | k (letter) | Letter K (for spelling names) | Letters |
| 197 | 11000101 | l (letter) | Letter L (for spelling names) | Letters |
| 198 | 11000110 | m (letter) | Letter M (for spelling names) | Letters |
| 199 | 11000111 | n (letter) | Letter N (for spelling names) | Letters |
| 200 | 11001000 | o (letter) | Letter O (for spelling names) | Letters |
| 201 | 11001001 | p (letter) | Letter P (for spelling names) | Letters |
| 202 | 11001010 | s (letter) | Letter S (for spelling names) | Letters |
| 203 | 11001011 | t (letter) | Letter T (for spelling names) | Letters |
| 204 | 11001100 | u (letter) | Letter U (for spelling names) | Letters |
| 205 | 11001101 | w (letter) | Letter W (for spelling names) | Letters |
| 206 | 11001110 | 0 | Digit 0 | Digits (206–215) |
| 207 | 11001111 | 1 | Digit 1 | Digits |
| 208 | 11010000 | 2 | Digit 2 | Digits |
| 209 | 11010001 | 3 | Digit 3 | Digits |
| 210 | 11010010 | 4 | Digit 4 | Digits |
| 211 | 11010011 | 5 | Digit 5 | Digits |
| 212 | 11010100 | 6 | Digit 6 | Digits |
| 213 | 11010101 | 7 | Digit 7 | Digits |
| 214 | 11010110 | 8 | Digit 8 | Digits |
| 215 | 11010111 | 9 | Digit 9 | Digits |
| | | | | |
| 216 | 11011000 | . | Period / full stop | Punctuation (216–229) |
| 217 | 11011001 | , | Comma | Punctuation |
| 218 | 11011010 | ? | Question mark | Punctuation |
| 219 | 11011011 | ! | Exclamation mark | Punctuation |
| 220 | 11011100 | ' | Single quote / apostrophe | Punctuation |
| 221 | 11011101 | " | Double quote | Punctuation |
| 222 | 11011110 | - | Hyphen / dash | Punctuation |
| 223 | 11011111 | : | Colon | Punctuation |
| 224 | 11100000 | ( | Open parenthesis | Punctuation |
| 225 | 11100001 | ) | Close parenthesis | Punctuation |
| 226 | 11100010 | ; | Semicolon | Punctuation |
| 227 | 11100011 | / | Slash | Punctuation |
| 228 | 11100100 | + | Plus / addition sign | Punctuation |
| 229 | 11100101 | = | Equals sign | Punctuation |
| | | | | |
| 230 | 11100110 | [RESERVED] | Reserved | Reserved |
| 231 | 11100111 | [RESERVED] | Reserved | Reserved |
| 232 | 11101000 | [RESERVED] | Reserved | Reserved |
| 233 | 11101001 | [RESERVED] | Reserved | Reserved |
| 234 | 11101010 | [RESERVED] | Reserved | Reserved |
| 235 | 11101011 | [RESERVED] | Reserved | Reserved |
| 236 | 11101100 | [RESERVED] | Reserved | Reserved |
| 237 | 11101101 | [RESERVED] | Reserved | Reserved |
| 238 | 11101110 | [RESERVED] | Reserved | Reserved |
| 239 | 11101111 | [RESERVED] | Reserved | Reserved |
| 240 | 11110000 | [RESERVED] | Reserved | Reserved |
| 241 | 11110001 | [RESERVED] | Reserved | Reserved |
| 242 | 11110010 | [RESERVED] | Reserved | Reserved |
| 243 | 11110011 | [RESERVED] | Reserved | Reserved |
| 244 | 11110100 | [RESERVED] | Reserved | Reserved |
| 245 | 11110101 | [RESERVED] | Reserved | Reserved |
| 246 | 11110110 | [RESERVED] | Reserved | Reserved |
| 247 | 11110111 | [RESERVED] | Reserved | Reserved |
| 248 | 11111000 | [RESERVED] | Reserved | Reserved |
| 249 | 11111001 | [RESERVED] | Reserved | Reserved |
| 250 | 11111010 | [RESERVED] | Reserved | Reserved |
| 251 | 11111011 | [RESERVED] | Reserved | Reserved |
| 252 | 11111100 | [RESERVED] | Reserved | Reserved |
| 253 | 11111101 | [RESERVED] | Reserved | Reserved |
| 254 | 11111110 | [RESERVED] | Reserved | Reserved |
| 255 | 11111111 | [RESERVED] | Reserved | Reserved |

## Using no repeat nibbles (lash1 not equal flash2)

It reserves bytes with equal nibbles, 
    0000000 00010001 .. 11101110 11111111

### lexical order with byte values

| # | Word_Signal | Flash_1 | Flash_2 | Byte (Dec) | Meaning | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0A | `[SPACE]` | `0000` | `-` | `0` | Space (word separator) | 1-flash control |
| 0B | `[EOT]` | `1111` | `-` | `15` | End of Text (transmission end) | 1-flash control |
| 1 | `a` | `0001` | `0010` | `18` | (emphasis, emotion, ah!) | Group 1 (0001) - pu (1–123) |
| 2 | `akesi` | `0001` | `0011` | `19` | reptile, amphibian, lizard, frog | pu |
| 3 | `ala` | `0001` | `0100` | `20` | no, not, nothing, zero, none | pu |
| 4 | `alasa` | `0001` | `0101` | `21` | hunt, forage, search, gather | pu |
| 5 | `ale` | `0001` | `0110` | `22` | all, every, everything, universe | pu |
| 6 | `ali` | `0001` | `0111` | `23` | explicit variant of ale (all) | pu (variant) |
| 7 | `anpa` | `0001` | `1000` | `24` | low, bottom, down, under, humble | pu |
| 8 | `ante` | `0001` | `1001` | `25` | different, other, change, alter | pu |
| 9 | `anu` | `0001` | `1010` | `26` | or | pu |
| 10 | `awen` | `0001` | `1011` | `27` | stay, keep, remain, wait, safe | pu |
| 11 | `e` | `0001` | `1100` | `28` | (direct object marker) | pu |
| 12 | `en` | `0001` | `1101` | `29` | and (between subjects) | pu |
| 13 | `esun` | `0001` | `1110` | `30` | market, shop, trade, buy, sell | pu |
| 14 | `ijo` | `0010` | `0001` | `33` | thing, object, matter, something | Group 2 (0010) - pu |
| 15 | `ike` | `0010` | `0011` | `35` | bad, evil, negative, complex | pu |
| 16 | `ilo` | `0010` | `0100` | `36` | tool, machine, device, implement | pu |
| 17 | `insa` | `0010` | `0101` | `37` | inside, interior, center, stomach | pu |
| 18 | `jaki` | `0010` | `0110` | `38` | dirty, gross, trash, toxic, waste | pu |
| 19 | `jan` | `0010` | `0111` | `39` | person, human, somebody | pu |
| 20 | `jelo` | `0010` | `1000` | `40` | yellow, yellowish | pu |
| 21 | `jo` | `0010` | `1001` | `41` | have, carry, hold, contain | pu |
| 22 | `kala` | `0010` | `1010` | `42` | fish, marine animal, sea creature | pu |
| 23 | `kalama` | `0010` | `1011` | `43` | sound, noise, voice, recite | pu |
| 24 | `kama` | `0010` | `1100` | `44` | come, arrive, become, future | pu |
| 25 | `kasi` | `0010` | `1101` | `45` | plant, tree, leaf, herb, vegetation | pu |
| 26 | `ken` | `0010` | `1110` | `46` | can, able to, possible, maybe | pu |
| 27 | `kepeken` | `0011` | `0001` | `49` | use, using, with, by means of | Group 3 (0011) - pu |
| 28 | `kili` | `0011` | `0010` | `50` | fruit, vegetable, mushroom | pu |
| 29 | `kiwen` | `0011` | `0100` | `52` | rock, stone, metal, hard object | pu |
| 30 | `ko` | `0011` | `0101` | `53` | clay, dough, paste, powder, semi-solid | pu |
| 31 | `kon` | `0011` | `0110` | `54` | air, wind, breath, spirit, essence | pu |
| 32 | `kule` | `0011` | `0111` | `55` | color, colorful, paint | pu |
| 33 | `kulupu` | `0011` | `1000` | `56` | group, community, team, society | pu |
| 34 | `kute` | `0011` | `1001` | `57` | ear, hear, listen, obey | pu |
| 35 | `la` | `0011` | `1010` | `58` | (context / if-then marker) | pu |
| 36 | `lape` | `0011` | `1011` | `59` | sleep, rest | pu |
| 37 | `laso` | `0011` | `1100` | `60` | blue, green | pu |
| 38 | `lawa` | `0011` | `1101` | `61` | head, mind, lead, control, guide | pu |
| 39 | `len` | `0011` | `1110` | `62` | cloth, clothing, fabric, cover | pu |
| 40 | `lete` | `0100` | `0001` | `65` | cold, cool, raw, freeze | Group 4 (0100) - pu |
| 41 | `li` | `0100` | `0010` | `66` | (predicate / verb marker) | pu |
| 42 | `lili` | `0100` | `0011` | `67` | small, little, young, few, short | pu |
| 43 | `linja` | `0100` | `0101` | `69` | line, string, rope, thread, hair | pu |
| 44 | `lipu` | `0100` | `0110` | `70` | paper, book, page, flat object | pu |
| 45 | `loje` | `0100` | `0111` | `71` | red, reddish | pu |
| 46 | `lon` | `0100` | `1000` | `72` | at, in, on, exist, true, real | pu |
| 47 | `luka` | `0100` | `1001` | `73` | hand, arm, touch, five | pu |
| 48 | `lukin` | `0100` | `1010` | `74` | see, look, read, eye, watch | pu |
| 49 | `lupa` | `0100` | `1011` | `75` | hole, door, window, opening | pu |
| 50 | `ma` | `0100` | `1100` | `76` | land, earth, country, place, soil | pu |
| 51 | `mama` | `0100` | `1101` | `77` | parent, ancestor, creator | pu |
| 52 | `mani` | `0100` | `1110` | `78` | money, wealth, currency, livestock | pu |
| 53 | `meli` | `0101` | `0001` | `81` | woman, female, feminine | Group 5 (0101) - pu |
| 54 | `mi` | `0101` | `0010` | `82` | I, me, my, we, us, our | pu |
| 55 | `mije` | `0101` | `0011` | `83` | man, male, masculine | pu |
| 56 | `moku` | `0101` | `0100` | `84` | eat, drink, food, meal | pu |
| 57 | `moli` | `0101` | `0110` | `86` | dead, death, die, kill | pu |
| 58 | `monsi` | `0101` | `0111` | `87` | back, behind, rear | pu |
| 59 | `mu` | `0101` | `1000` | `88` | (animal sound: meow, moo, woof) | pu |
| 60 | `mun` | `0101` | `1001` | `89` | moon, star, night sky object | pu |
| 61 | `musi` | `0101` | `1010` | `90` | fun, game, art, play, entertain | pu |
| 62 | `mute` | `0101` | `1011` | `91` | many, very, much, quantity, more | pu |
| 63 | `nanpa` | `0101` | `1100` | `92` | number, count, (ordinal marker) | pu |
| 64 | `nasa` | `0101` | `1101` | `93` | strange, crazy, silly, drunk | pu |
| 65 | `nasin` | `0101` | `1110` | `94` | way, path, method, road, custom | pu |
| 66 | `nena` | `0110` | `0001` | `97` | bump, hill, mountain, nose, button | Group 6 (0110) - pu |
| 67 | `ni` | `0110` | `0010` | `98` | this, that | pu |
| 68 | `nimi` | `0110` | `0011` | `99` | word, name | pu |
| 69 | `noka` | `0110` | `0100` | `100` | foot, leg, base, bottom part | pu |
| 70 | `o` | `0110` | `0101` | `101` | (vocative / imperative marker, hey!) | pu |
| 71 | `olin` | `0110` | `0111` | `103` | love, compassion, affection | pu |
| 72 | `ona` | `0110` | `1000` | `104` | he, she, it, they | pu |
| 73 | `open` | `0110` | `1001` | `105` | open, begin, start, turn on | pu |
| 74 | `pakala` | `0110` | `1010` | `106` | broken, mistake, damage, ruin | pu |
| 75 | `pali` | `0110` | `1011` | `107` | do, make, work, build, create | pu |
| 76 | `palisa` | `0110` | `1100` | `108` | stick, rod, branch, long hard thing | pu |
| 77 | `pan` | `0110` | `1101` | `109` | bread, grain, rice, pasta, cereal | pu |
| 78 | `pana` | `0110` | `1110` | `110` | give, send, emit, put, release | pu |
| 79 | `pi` | `0111` | `0001` | `113` | of (regroups modifiers) | Group 7 (0111) - pu |
| 80 | `pilin` | `0111` | `0010` | `114` | feel, emotion, heart, mind | pu |
| 81 | `pimeja` | `0111` | `0011` | `115` | black, dark, shadow, night | pu |
| 82 | `pini` | `0111` | `0100` | `116` | end, finish, past, closed | pu |
| 83 | `pipi` | `0111` | `0101` | `117` | bug, insect, spider, ant | pu |
| 84 | `poka` | `0111` | `0110` | `118` | side, hip, next to, near | pu |
| 85 | `poki` | `0111` | `1000` | `120` | box, container, bowl, cup | pu |
| 86 | `pona` | `0111` | `1001` | `121` | good, simple, positive, fix | pu |
| 87 | `pu` | `0111` | `1010` | `122` | interact with official Toki Pona book | pu |
| 88 | `sama` | `0111` | `1011` | `123` | same, similar, equal, like | pu |
| 89 | `seli` | `0111` | `1100` | `124` | fire, heat, warm, cook | pu |
| 90 | `selo` | `0111` | `1101` | `125` | skin, bark, shell, outer layer | pu |
| 91 | `seme` | `0111` | `1110` | `126` | what? which? (question word) | pu |
| 92 | `sewi` | `1000` | `0001` | `129` | high, up, above, sky, sacred | Group 8 (1000) - pu |
| 93 | `sijelo` | `1000` | `0010` | `130` | body, physical state, torso | pu |
| 94 | `sike` | `1000` | `0011` | `131` | circle, wheel, ball, cycle, year | pu |
| 95 | `sin` | `1000` | `0100` | `132` | new, fresh, another, again | pu |
| 96 | `sina` | `1000` | `0101` | `133` | you, your | pu |
| 97 | `sinpin` | `1000` | `0110` | `134` | face, front, wall, chest | pu |
| 98 | `sitelen` | `1000` | `0111` | `135` | image, write, draw, symbol | pu |
| 99 | `sona` | `1000` | `1001` | `137` | know, knowledge, wisdom | pu |
| 100 | `soto` | `1000` | `1010` | `138` | left, left side | directional |
| 101 | `soweli` | `1000` | `1011` | `139` | land mammal, animal, beast | pu |
| 102 | `suli` | `1000` | `1100` | `140` | big, tall, heavy, important | pu |
| 103 | `suno` | `1000` | `1101` | `141` | sun, light, brightness, shine | pu |
| 104 | `supa` | `1000` | `1110` | `142` | horizontal surface, table, bed | pu |
| 105 | `suwi` | `1001` | `0001` | `145` | sweet, cute, fragrant, pleasant | Group 9 (1001) - pu |
| 106 | `tan` | `1001` | `0010` | `146` | from, because of, origin | pu |
| 107 | `taso` | `1001` | `0011` | `147` | but, however, only, just | pu |
| 108 | `tawa` | `1001` | `0100` | `148` | to, toward, go, move | pu |
| 109 | `teje` | `1001` | `0101` | `149` | right, right side | directional |
| 110 | `telo` | `1001` | `0110` | `150` | water, liquid, drink, wash | pu |
| 111 | `tenpo` | `1001` | `0111` | `151` | time, moment, period, duration | pu |
| 112 | `toki` | `1001` | `1000` | `152` | speak, language, message, hello | pu |
| 113 | `tomo` | `1001` | `1010` | `154` | house, building, room, shelter | pu |
| 114 | `tu` | `1001` | `1011` | `155` | two, divide, split | pu |
| 115 | `unpa` | `1001` | `1100` | `156` | sex, sexual, intimacy | pu |
| 116 | `uta` | `1001` | `1101` | `157` | mouth, lips, oral, kiss | pu |
| 117 | `utala` | `1001` | `1110` | `158` | fight, battle, conflict, compete | pu |
| 118 | `walo` | `1010` | `0001` | `161` | white, pale, light-colored | Group 10 (1010) - pu (118–123) |
| 119 | `wan` | `1010` | `0010` | `162` | one, unique, unite | pu |
| 120 | `waso` | `1010` | `0011` | `163` | bird, flying creature | pu |
| 121 | `wawa` | `1010` | `0100` | `164` | strong, energy, power, intense | pu |
| 122 | `weka` | `1010` | `0101` | `165` | away, absent, remove | pu |
| 123 | `wile` | `1010` | `0110` | `166` | want, need, desire, must | pu |
| 124 | `epiku` | `1010` | `0111` | `167` | epic, awesome, amazing | ku suli (124–140) |
| 125 | jasima | 1010 | 1000 | 168 | reflection, mirror, opposite, reverse | ku suli |
| 126 | kijetesantakalu | 1010 | 1001 | 169 | raccoon, coati, mustelid | ku suli |
| 127 | kin | 1010 | 1011 | 171 | also, too, indeed, still | ku suli |
| 128 | kipisi | 1010 | 1100 | 172 | cut, divide, slice, piece | ku suli |
| 129 | kokosila | 1010 | 1101 | 173 | speak non-Toki Pona where TP is used | ku suli |
| 130 | ku | 1010 | 1110 | 174 | interact with Toki Pona Dictionary | ku suli |
| 131 | lanpan | 1011 | 0001 | 177 | take, seize, grab, capture | Group 11 (1011) - ku suli |
| 132 | leko | 1011 | 0010 | 178 | block, brick, square, cube | ku suli |
| 133 | meso | 1011 | 0011 | 179 | middle, medium, average | ku suli |
| 134 | misikeke | 1011 | 0100 | 180 | medicine, medication, cure | ku suli |
| 135 | monsuta | 1011 | 0101 | 181 | fear, monster, scary, danger | ku suli |
| 136 | n | 1011 | 0110 | 182 | (interjection: um, hmm, thinking...) | ku suli |
| 137 | namako | 1011 | 0111 | 183 | spice, extra, additional, embellishment | ku suli |
| 138 | oko | 1011 | 1000 | 184 | eye, vision | ku suli |
| 139 | soko | 1011 | 1001 | 185 | mushroom, fungus | ku suli |
| 140 | tonsi | 1011 | 1010 | 186 | non-binary, trans, gender-diverse | ku suli |
| 141 | apeja | 1011 | 1100 | 188 | shame, guilt, dishonor, taboo | ku lili (141–151) |
| 142 | isipin | 1011 | 1101 | 189 | think, imagine, idea | ku lili |
| 143 | kapesi | 1011 | 1110 | 190 | brown, tan, gray | ku lili |
| 144 | linluwi | 1100 | 0001 | 193 | internet, network, digital connection | Group 12 (1100) - ku lili |
| 145 | majuna | 1100 | 0010 | 194 | old, ancient, aged | ku lili |
| 146 | mulapisu | 1100 | 0011 | 195 | pizza | ku lili |
| 147 | omekapo | 1100 | 0100 | 196 | goodbye, farewell, eat a good fish | ku lili |
| 148 | pake | 1100 | 0101 | 197 | block, stop, prevent, brake | ku lili |
| 149 | powe | 1100 | 0110 | 198 | false, lie, pretend, illusion | ku lili |
| 150 | su | 1100 | 0111 | 199 | interact with illustrated su books | ku lili |
| 151 | unu | 1100 | 1000 | 200 | purple, violet, lilac | ku lili |
| 152 | [NAME_START] | 1100 | 1001 | 201 | Start of proper noun | Controls (152–156) |
| 153 | [NAME_END] | 1100 | 1010 | 202 | End of proper noun | Control |
| 154 | [NEWLINE] | 1100 | 1011 | 203 | Line break (\n) | Control |
| 155 | [ACK] | 1100 | 1101 | 205 | Acknowledged / Understood (pona!) | Protocol control |
| 156 | [REPEAT] | 1100 | 1110 | 206 | Repeat last message / Error | Protocol control |
| 157 | a (letter) | 1101 | 0001 | 209 | Letter A (for spelling names) | Group 13 (1101) - Alphabet (157–169) |
| 158 | e (letter) | 1101 | 0010 | 210 | Letter E (for spelling names) | Alphabet |
| 159 | i/j (letter) | 1101 | 0011 | 211 | Letter I / J (for spelling names) | Alphabet |
| 160 | k (letter) | 1101 | 0100 | 212 | Letter K (for spelling names) | Alphabet |
| 161 | l (letter) | 1101 | 0101 | 213 | Letter L (for spelling names) | Alphabet |
| 162 | m (letter) | 1101 | 0110 | 214 | Letter M (for spelling names) | Alphabet |
| 163 | n (letter) | 1101 | 0111 | 215 | Letter N (for spelling names) | Alphabet |
| 164 | o (letter) | 1101 | 1000 | 216 | Letter O (for spelling names) | Alphabet |
| 165 | p (letter) | 1101 | 1001 | 217 | Letter P (for spelling names) | Alphabet |
| 166 | s (letter) | 1101 | 1010 | 218 | Letter S (for spelling names) | Alphabet |
| 167 | t (letter) | 1101 | 1011 | 219 | Letter T (for spelling names) | Alphabet |
| 168 | u (letter) | 1101 | 1100 | 220 | Letter U (for spelling names) | Alphabet |
| 169 | w (letter) | 1101 | 1110 | 222 | Letter W (for spelling names) | Alphabet |
| 170 | 0 | 1110 | 0001 | 225 | Digit 0 | Group 14 (1110) - Digits & Punct. (170–182) |
| 171 | 1 | 1110 | 0010 | 226 | Digit 1 | Digits (0–9) |
| 172 | 2 | 1110 | 0011 | 227 | Digit 2 | Digits (0–9) |
| 173 | 3 | 1110 | 0100 | 228 | Digit 3 | Digits (0–9) |
| 174 | 4 | 1110 | 0101 | 229 | Digit 4 | Digits (0–9) |
| 175 | 5 | 1110 | 0110 | 230 | Digit 5 | Digits (0–9) |
| 176 | 6 | 1110 | 0111 | 231 | Digit 6 | Digits (0–9) |
| 177 | 7 | 1110 | 1000 | 232 | Digit 7 | Digits (0–9) |
| 178 | 8 | 1110 | 1001 | 233 | Digit 8 | Digits (0–9) |
| 179 | 9 | 1110 | 1010 | 234 | Digit 9 | Digits (0–9) |
| 180 | . | 1110 | 1011 | 235 | Period / full stop | Punctuation (#1) |
| 181 | , | 1110 | 1100 | 236 | Comma | Punctuation (#2) |
| 182 | ? | 1110 | 1101 | 237 | Question mark | Punctuation (#3) |

## Using repeat nibbles (flash1 equal flash2)

### lexical order 

| # | Word_Signal | Flash_1 | Flash_2 | Meaning | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0A | `[SPACE]` | `0000` | `-` | Space (word separator) | 1-flash control |
| 0B | `[EOT]` | `1111` | `-` | End of Text (transmission end) | 1-flash control |
| 1 | `a` | `0001` | `0010` | (emphasis, emotion, ah!) | Group 1 (0001) - pu (skips 0001) |
| 2 | `akesi` | `0001` | `0011` | reptile, amphibian, lizard, frog | pu |
| 3 | `ala` | `0001` | `0100` | no, not, nothing, zero, none | pu |
| 4 | `alasa` | `0001` | `0101` | hunt, forage, search, gather | pu |
| 5 | `ale` | `0001` | `0110` | all, every, everything, universe | pu |
| 6 | `ali` | `0001` | `0111` | explicit variant of ale (all) | pu (variant) |
| 7 | `anpa` | `0001` | `1000` | low, bottom, down, under, humble | pu |
| 8 | `ante` | `0001` | `1001` | different, other, change, alter | pu |
| 9 | `anu` | `0001` | `1010` | or | pu |
| 10 | `awen` | `0001` | `1011` | stay, keep, remain, wait, safe | pu |
| 11 | `e` | `0001` | `1100` | (direct object marker) | pu |
| 12 | `en` | `0001` | `1101` | and (between subjects) | pu |
| 13 | `esun` | `0001` | `1110` | market, shop, trade, buy, sell | pu |
| 14 | `ijo` | `0010` | `0001` | thing, object, matter, something | Group 2 (0010) - pu (skips 0010) |
| 15 | `ike` | `0010` | `0011` | bad, evil, negative, complex | pu |
| 16 | `ilo` | `0010` | `0100` | tool, machine, device, implement | pu |
| 17 | `insa` | `0010` | `0101` | inside, interior, center, stomach | pu |
| 18 | `jaki` | `0010` | `0110` | dirty, gross, trash, toxic, waste | pu |
| 19 | `jan` | `0010` | `0111` | person, human, somebody | pu |
| 20 | `jelo` | `0010` | `1000` | yellow, yellowish | pu |
| 21 | `jo` | `0010` | `1001` | have, carry, hold, contain | pu |
| 22 | `kala` | `0010` | `1010` | fish, marine animal, sea creature | pu |
| 23 | `kalama` | `0010` | `1011` | sound, noise, voice, recite | pu |
| 24 | `kama` | `0010` | `1100` | come, arrive, become, future | pu |
| 25 | `kasi` | `0010` | `1101` | plant, tree, leaf, herb, vegetation | pu |
| 26 | `ken` | `0010` | `1110` | can, able to, possible, maybe | pu |
| 27 | `kepeken` | `0011` | `0001` | use, using, with, by means of | Group 3 (0011) - pu (skips 0011) |
| 28 | `kili` | `0011` | `0010` | fruit, vegetable, mushroom | pu |
| 29 | `kiwen` | `0011` | `0100` | rock, stone, metal, hard object | pu |
| 30 | `ko` | `0011` | `0101` | clay, dough, paste, powder, semi-solid | pu |
| 31 | `kon` | `0011` | `0110` | air, wind, breath, spirit, essence | pu |
| 32 | `kule` | `0011` | `0111` | color, colorful, paint | pu |
| 33 | `kulupu` | `0011` | `1000` | group, community, team, society | pu |
| 34 | `kute` | `0011` | `1001` | ear, hear, listen, obey | pu |
| 35 | `la` | `0011` | `1010` | (context / if-then marker) | pu |
| 36 | `lape` | `0011` | `1011` | sleep, rest | pu |
| 37 | `laso` | `0011` | `1100` | blue, green | pu |
| 38 | `lawa` | `0011` | `1101` | head, mind, lead, control, guide | pu |
| 39 | `len` | `0011` | `1110` | cloth, clothing, fabric, cover | pu |
| 40 | `lete` | `0100` | `0001` | cold, cool, raw, freeze | Group 4 (0100) - pu (skips 0100) |
| 41 | `li` | `0100` | `0010` | (predicate / verb marker) | pu |
| 42 | `lili` | `0100` | `0011` | small, little, young, few, short | pu |
| 43 | `linja` | `0100` | `0101` | line, string, rope, thread, hair | pu |
| 44 | `lipu` | `0100` | `0110` | paper, book, page, flat object | pu |
| 45 | `loje` | `0100` | `0111` | red, reddish | pu |
| 46 | `lon` | `0100` | `1000` | at, in, on, exist, true, real | pu |
| 47 | `luka` | `0100` | `1001` | hand, arm, touch, five | pu |
| 48 | `lukin` | `0100` | `1010` | see, look, read, eye, watch | pu |
| 49 | `lupa` | `0100` | `1011` | hole, door, window, opening | pu |
| 50 | `ma` | `0100` | `1100` | land, earth, country, place, soil | pu |
| 51 | `mama` | `0100` | `1101` | parent, ancestor, creator | pu |
| 52 | `mani` | `0100` | `1110` | money, wealth, currency, livestock | pu |
| 53 | `meli` | `0101` | `0001` | woman, female, feminine | Group 5 (0101) - pu (skips 0101) |
| 54 | `mi` | `0101` | `0010` | I, me, my, we, us, our | pu |
| 55 | `mije` | `0101` | `0011` | man, male, masculine | pu |
| 56 | `moku` | `0101` | `0100` | eat, drink, food, meal | pu |
| 57 | `moli` | `0101` | `0110` | dead, death, die, kill | pu |
| 58 | `monsi` | `0101` | `0111` | back, behind, rear | pu |
| 59 | `mu` | `0101` | `1000` | (animal sound: meow, moo, woof) | pu |
| 60 | `mun` | `0101` | `1001` | moon, star, night sky object | pu |
| 61 | `musi` | `0101` | `1010` | fun, game, art, play, entertain | pu |
| 62 | `mute` | `0101` | `1011` | many, very, much, quantity, more | pu |
| 63 | `nanpa` | `0101` | `1100` | number, count, (ordinal marker) | pu |
| 64 | `nasa` | `0101` | `1101` | strange, crazy, silly, drunk | pu |
| 65 | `nasin` | `0101` | `1110` | way, path, method, road, custom | pu |
| 66 | `nena` | `0110` | `0001` | bump, hill, mountain, nose, button | Group 6 (0110) - pu (skips 0110) |
| 67 | `ni` | `0110` | `0010` | this, that | pu |
| 68 | `nimi` | `0110` | `0011` | word, name | pu |
| 69 | `noka` | `0110` | `0100` | foot, leg, base, bottom part | pu |
| 70 | `o` | `0110` | `0101` | (vocative / imperative marker, hey!) | pu |
| 71 | `olin` | `0110` | `0111` | love, compassion, affection | pu |
| 72 | `ona` | `0110` | `1000` | he, she, it, they | pu |
| 73 | `open` | `0110` | `1001` | open, begin, start, turn on | pu |
| 74 | `pakala` | `0110` | `1010` | broken, mistake, damage, ruin | pu |
| 75 | `pali` | `0110` | `1011` | do, make, work, build, create | pu |
| 76 | `palisa` | `0110` | `1100` | stick, rod, branch, long hard thing | pu |
| 77 | `pan` | `0110` | `1101` | bread, grain, rice, pasta, cereal | pu |
| 78 | `pana` | `0110` | `1110` | give, send, emit, put, release | pu |
| 79 | `pi` | `0111` | `0001` | of (regroups modifiers) | Group 7 (0111) - pu (skips 0111) |
| 80 | `pilin` | `0111` | `0010` | feel, emotion, heart, mind | pu |
| 81 | `pimeja` | `0111` | `0011` | black, dark, shadow, night | pu |
| 82 | `pini` | `0111` | `0100` | end, finish, past, closed | pu |
| 83 | `pipi` | `0111` | `0101` | bug, insect, spider, ant | pu |
| 84 | `poka` | `0111` | `0110` | side, hip, next to, near | pu |
| 85 | `poki` | `0111` | `1000` | box, container, bowl, cup | pu |
| 86 | `pona` | `0111` | `1001` | good, simple, positive, fix | pu |
| 87 | `pu` | `0111` | `1010` | interact with official Toki Pona book | pu |
| 88 | `sama` | `0111` | `1011` | same, similar, equal, like | pu |
| 89 | `seli` | `0111` | `1100` | fire, heat, warm, cook | pu |
| 90 | `selo` | `0111` | `1101` | skin, bark, shell, outer layer | pu |
| 91 | `seme` | `0111` | `1110` | what? which? (question word) | pu |
| 92 | `sewi` | `1000` | `0001` | high, up, above, sky, sacred | Group 8 (1000) - pu (skips 1000) |
| 93 | `sijelo` | `1000` | `0010` | body, physical state, torso | pu |
| 94 | `sike` | `1000` | `0011` | circle, wheel, ball, cycle, year | pu |
| 95 | `sin` | `1000` | `0100` | new, fresh, another, again | pu |
| 96 | `sina` | `1000` | `0101` | you, your | pu |
| 97 | `sinpin` | `1000` | `0110` | face, front, wall, chest | pu |
| 98 | `sitelen` | `1000` | `0111` | image, write, draw, symbol | pu |
| 99 | `sona` | `1000` | `1001` | know, knowledge, wisdom | pu |
| 100 | `soto` | `1000` | `1010` | left, left side | directional |
| 101 | `soweli` | `1000` | `1011` | land mammal, animal, beast | pu |
| 102 | `suli` | `1000` | `1100` | big, tall, heavy, important | pu |
| 103 | `suno` | `1000` | `1101` | sun, light, brightness, shine | pu |
| 104 | `supa` | `1000` | `1110` | horizontal surface, table, bed | pu |
| 105 | `suwi` | `1001` | `0001` | sweet, cute, fragrant, pleasant | Group 9 (1001) - pu (skips 1001) |
| 106 | `tan` | `1001` | `0010` | from, because of, origin | pu |
| 107 | `taso` | `1001` | `0011` | but, however, only, just | pu |
| 108 | `tawa` | `1001` | `0100` | to, toward, go, move | pu |
| 109 | `teje` | `1001` | `0101` | right, right side | directional |
| 110 | `telo` | `1001` | `0110` | water, liquid, drink, wash | pu |
| 111 | `tenpo` | `1001` | `0111` | time, moment, period, duration | pu |
| 112 | `toki` | `1001` | `1000` | speak, language, message, hello | pu |
| 113 | `tomo` | `1001` | `1010` | house, building, room, shelter | pu |
| 114 | `tu` | `1001` | `1011` | two, divide, split | pu |
| 115 | `unpa` | `1001` | `1100` | sex, sexual, intimacy | pu |
| 116 | `uta` | `1001` | `1101` | mouth, lips, oral, kiss | pu |
| 117 | `utala` | `1001` | `1110` | fight, battle, conflict, compete | pu |
| 118 | `walo` | `1010` | `0001` | white, pale, light-colored | Group 10 (1010) - pu & ku suli |
| 119 | `wan` | `1010` | `0010` | one, unique, unite | pu |
| 120 | `waso` | `1010` | `0011` | bird, flying creature | pu |
| 121 | `wawa` | `1010` | `0100` | strong, energy, power, intense | pu |
| 122 | `weka` | `1010` | `0101` | away, absent, remove | pu |
| 123 | `wile` | `1010` | `0110` | want, need, desire, must | pu |
| 124 | `epiku` | `1010` | `0111` | epic, awesome, amazing | ku suli |
| 125 | `jasima` | `1010` | `1000` | reflection, mirror, opposite, reverse | ku suli |
| 126 | `kijetesantakalu` | `1010` | `1001` | raccoon, coati, mustelid | ku suli |
| 127 | `kin` | `1010` | `1011` | also, too, indeed, still | ku suli (skips 1010) |
| 128 | `kipisi` | `1010` | `1100` | cut, divide, slice, piece | ku suli |
| 129 | `kokosila` | `1010` | `1101` | speak non-Toki Pona where TP is used | ku suli |
| 130 | `ku` | `1010` | `1110` | interact with Toki Pona Dictionary | ku suli |
| 131 | `lanpan` | `1011` | `0001` | take, seize, grab, capture | Group 11 (1011) - ku suli & ku lili |
| 132 | `leko` | `1011` | `0010` | block, brick, square, cube | ku suli |
| 133 | `meso` | `1011` | `0011` | middle, medium, average | ku suli |
| 134 | `misikeke` | `1011` | `0100` | medicine, medication, cure | ku suli |
| 135 | monsuta | 1011 | 0101 | fear, monster, scary, danger | ku suli |
| 136 | n | 1011 | 0110 | (interjection: um, hmm, thinking...) | ku suli |
| 137 | namako | 1011 | 0111 | spice, extra, additional, embellishment | ku suli |
| 138 | oko | 1011 | 1000 | eye, vision | ku suli |
| 139 | soko | 1011 | 1001 | mushroom, fungus | ku suli |
| 140 | tonsi | 1011 | 1010 | non-binary, trans, gender-diverse | ku suli |
| 141 | apeja | 1011 | 1100 | shame, guilt, dishonor, taboo | ku lili (skips 1011) |
| 142 | isipin | 1011 | 1101 | think, imagine, idea | ku lili |
| 143 | kapesi | 1011 | 1110 | brown, tan, gray | ku lili |
| 144 | linluwi | 1100 | 0001 | internet, network, digital connection | Group 12 (1100) - ku lili & Controls |
| 145 | majuna | 1100 | 0010 | old, ancient, aged | ku lili |
| 146 | mulapisu | 1100 | 0011 | pizza | ku lili |
| 147 | omekapo | 1100 | 0100 | goodbye, farewell, eat a good fish | ku lili |
| 148 | pake | 1100 | 0101 | block, stop, prevent, brake | ku lili |
| 149 | powe | 1100 | 0110 | false, lie, pretend, illusion | ku lili |
| 150 | su | 1100 | 0111 | interact with illustrated su books | ku lili |
| 151 | unu | 1100 | 1000 | purple, violet, lilac | ku lili |
| 152 | [NAME_START] | 1100 | 1001 | Start of proper noun | Control |
| 153 | [NAME_END] | 1100 | 1010 | End of proper noun | Control |
| 154 | [NEWLINE] | 1100 | 1011 | Line break (\n) | Control |
| 155 | [ACK] | 1100 | 1101 | Acknowledged / Understood (pona!) | Control (skips 1100) |
| 156 | [REPEAT] | 1100 | 1110 | Repeat last message / Error | Control |
| 157 | a (letter) | 1101 | 0001 | Letter A (for spelling names) | Group 13 (1101) - Letters |
| 158 | e (letter) | 1101 | 0010 | Letter E (for spelling names) | Letters |
| 159 | i/j (letter) | 1101 | 0011 | Letter I / J (for spelling names) | Letters |
| 160 | k (letter) | 1101 | 0100 | Letter K (for spelling names) | Letters |
| 161 | l (letter) | 1101 | 0101 | Letter L (for spelling names) | Letters |
| 162 | m (letter) | 1101 | 0110 | Letter M (for spelling names) | Letters |
| 163 | n (letter) | 1101 | 0111 | Letter N (for spelling names) | Letters |
| 164 | o (letter) | 1101 | 1000 | Letter O (for spelling names) | Letters |
| 165 | p (letter) | 1101 | 1001 | Letter P (for spelling names) | Letters |
| 166 | s (letter) | 1101 | 1010 | Letter S (for spelling names) | Letters |
| 167 | t (letter) | 1101 | 1011 | Letter T (for spelling names) | Letters |
| 168 | u (letter) | 1101 | 1100 | Letter U (for spelling names) | Letters |
| 169 | w (letter) | 1101 | 1110 | Letter W (for spelling names) | Letters (skips 1101) |
| 170 | 0 | 1110 | 0001 | Digit 0 | Group 14 (1110) - Digits & Punctuation |
| 171 | 1 | 1110 | 0010 | Digit 1 | Digits |
| 172 | 2 | 1110 | 0011 | Digit 2 | Digits |
| 173 | 3 | 1110 | 0100 | Digit 3 | Digits |
| 174 | 4 | 1110 | 0101 | Digit 4 | Digits |
| 175 | 5 | 1110 | 0110 | Digit 5 | Digits |
| 176 | 6 | 1110 | 0111 | Digit 6 | Digits |
| 177 | 7 | 1110 | 1000 | Digit 7 | Digits |
| 178 | 8 | 1110 | 1001 | Digit 8 | Digits |
| 179 | 9 | 1110 | 1010 | Digit 9 | Digits |
| 180 | . | 1110 | 1011 | Period / full stop | Punctuation |
| 181 | , | 1110 | 1100 | Comma | Punctuation |
| 182 | ? | 1110 | 1101 | Question mark | Punctuation (skips 1110) |

## Using repeat nibbles flash1 equal flash2 

### lexical order (en)

| # | Word_Signal | Flash_1 | Flash_2 | Meaning | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0A | `[SPACE]` | `0000` | `-` | Space (word separator) | 1-flash control |
| 0B | `[EOT]` | `1111` | `-` | End of Text (transmission end) | 1-flash control |
| 1 | `a` | `0001` | `0001` | (emphasis, emotion, ah!) | Group 1 (0001) - pu |
| 2 | `akesi` | `0001` | `0010` | reptile, amphibian, lizard, frog | pu |
| 3 | `ala` | `0001` | `0011` | no, not, nothing, zero, none | pu |
| 4 | `alasa` | `0001` | `0100` | hunt, forage, search, gather | pu |
| 5 | `ale` | `0001` | `0101` | all, every, everything, universe | pu |
| 6 | `ali` | `0001` | `0110` | explicit variant of ale (all) | pu (variant) |
| 7 | `anpa` | `0001` | `0111` | low, bottom, down, under, humble | pu |
| 8 | `ante` | `0001` | `1000` | different, other, change, alter | pu |
| 9 | `anu` | `0001` | `1001` | or | pu |
| 10 | `awen` | `0001` | `1010` | stay, keep, remain, wait, safe | pu |
| 11 | `e` | `0001` | `1011` | (direct object marker) | pu |
| 12 | `en` | `0001` | `1100` | and (between subjects) | pu |
| 13 | `esun` | `0001` | `1101` | market, shop, trade, buy, sell | pu |
| 14 | `ijo` | `0001` | `1110` | thing, object, matter, something | pu |
| 15 | `ike` | `0010` | `0001` | bad, evil, negative, complex | Group 2 (0010) - pu |
| 16 | `ilo` | `0010` | `0010` | tool, machine, device, implement | pu |
| 17 | `insa` | `0010` | `0011` | inside, interior, center, stomach | pu |
| 18 | `jaki` | `0010` | `0100` | dirty, gross, trash, toxic, waste | pu |
| 19 | `jan` | `0010` | `0101` | person, human, somebody | pu |
| 20 | `jelo` | `0010` | `0110` | yellow, yellowish | pu |
| 21 | `jo` | `0010` | `0111` | have, carry, hold, contain | pu |
| 22 | `kala` | `0010` | `1000` | fish, marine animal, sea creature | pu |
| 23 | `kalama` | `0010` | `1001` | sound, noise, voice, recite | pu |
| 24 | `kama` | `0010` | `1010` | come, arrive, become, future | pu |
| 25 | `kasi` | `0010` | `1011` | plant, tree, leaf, herb, vegetation | pu |
| 26 | `ken` | `0010` | `1100` | can, able to, possible, maybe | pu |
| 27 | `kepeken` | `0010` | `1101` | use, using, with, by means of | pu |
| 28 | `kili` | `0010` | `1110` | fruit, vegetable, mushroom | pu |
| 29 | `kiwen` | `0011` | `0001` | rock, stone, metal, hard object | Group 3 (0011) - pu |
| 30 | `ko` | `0011` | `0010` | clay, dough, paste, powder, semi-solid | pu |
| 31 | `kon` | `0011` | `0011` | air, wind, breath, spirit, essence | pu |
| 32 | `kule` | `0011` | `0100` | color, colorful, paint | pu |
| 33 | `kulupu` | `0011` | `0101` | group, community, team, society | pu |
| 34 | `kute` | `0011` | `0110` | ear, hear, listen, obey | pu |
| 35 | `la` | `0011` | `0111` | (context / if-then marker) | pu |
| 36 | `lape` | `0011` | `1000` | sleep, rest | pu |
| 37 | `laso` | `0011` | `1001` | blue, green | pu |
| 38 | `lawa` | `0011` | `1010` | head, mind, lead, control, guide | pu |
| 39 | `len` | `0011` | `1011` | cloth, clothing, fabric, cover | pu |
| 40 | `lete` | `0011` | `1100` | cold, cool, raw, freeze | pu |
| 41 | `li` | `0011` | `1101` | (predicate / verb marker) | pu |
| 42 | `lili` | `0011` | `1110` | small, little, young, few, short | pu |
| 43 | `linja` | `0100` | `0001` | line, string, rope, thread, hair | Group 4 (0100) - pu |
| 44 | `lipu` | `0100` | `0010` | paper, book, page, flat object | pu |
| 45 | `loje` | `0100` | `0011` | red, reddish | pu |
| 46 | `lon` | `0100` | `0100` | at, in, on, exist, true, real | pu |
| 47 | `luka` | `0100` | `0101` | hand, arm, touch, five | pu |
| 48 | `lukin` | `0100` | `0110` | see, look, read, eye, watch | pu |
| 49 | `lupa` | `0100` | `0111` | hole, door, window, opening | pu |
| 50 | `ma` | `0100` | `1000` | land, earth, country, place, soil | pu |
| 51 | `mama` | `0100` | `1001` | parent, ancestor, creator | pu |
| 52 | `mani` | `0100` | `1010` | money, wealth, currency, livestock | pu |
| 53 | `meli` | `0100` | `1011` | woman, female, feminine | pu |
| 54 | `mi` | `0100` | `1100` | I, me, my, we, us, our | pu |
| 55 | `mije` | `0100` | `1101` | man, male, masculine | pu |
| 56 | `moku` | `0100` | `1110` | eat, drink, food, meal | pu |
| 57 | `moli` | `0101` | `0001` | dead, death, die, kill | Group 5 (0101) - pu |
| 58 | `monsi` | `0101` | `0010` | back, behind, rear | pu |
| 59 | `mu` | `0101` | `0011` | (animal sound: meow, moo, woof) | pu |
| 60 | `mun` | `0101` | `0100` | moon, star, night sky object | pu |
| 61 | `musi` | `0101` | `0101` | fun, game, art, play, entertain | pu |
| 62 | `mute` | `0101` | `0110` | many, very, much, quantity, more | pu |
| 63 | `nanpa` | `0101` | `0111` | number, count, (ordinal marker) | pu |
| 64 | `nasa` | `0101` | `1000` | strange, crazy, silly, drunk | pu |
| 65 | `nasin` | `0101` | `1001` | way, path, method, road, custom | pu |
| 66 | `nena` | `0101` | `1010` | bump, hill, mountain, nose, button | pu |
| 67 | `ni` | `0101` | `1011` | this, that | pu |
| 68 | `nimi` | `0101` | `1100` | word, name | pu |
| 69 | `noka` | `0101` | `1101` | foot, leg, base, bottom part | pu |
| 70 | `o` | `0101` | `1110` | (vocative / imperative marker, hey!) | pu |
| 71 | `olin` | `0110` | `0001` | love, compassion, affection | Group 6 (0110) - pu |
| 72 | `ona` | `0110` | `0010` | he, she, it, they | pu |
| 73 | `open` | `0110` | `0011` | open, begin, start, turn on | pu |
| 74 | `pakala` | `0110` | `0100` | broken, mistake, damage, ruin | pu |
| 75 | `pali` | `0110` | `0101` | do, make, work, build, create | pu |
| 76 | `palisa` | `0110` | `0110` | stick, rod, branch, long hard thing | pu |
| 77 | `pan` | `0110` | `0111` | bread, grain, rice, pasta, cereal | pu |
| 78 | `pana` | `0110` | `1000` | give, send, emit, put, release | pu |
| 79 | `pi` | `0110` | `1001` | of (regroups modifiers) | pu |
| 80 | `pilin` | `0110` | `1010` | feel, emotion, heart, mind | pu |
| 81 | `pimeja` | `0110` | `1011` | black, dark, shadow, night | pu |
| 82 | `pini` | `0110` | `1100` | end, finish, past, closed | pu |
| 83 | `pipi` | `0110` | `1101` | bug, insect, spider, ant | pu |
| 84 | `poka` | `0110` | `1110` | side, hip, next to, near | pu |
| 85 | `poki` | `0111` | `0001` | box, container, bowl, cup | Group 7 (0111) - pu |
| 86 | `pona` | `0111` | `0010` | good, simple, positive, fix | pu |
| 87 | `pu` | `0111` | `0011` | interact with official Toki Pona book | pu |
| 88 | `sama` | `0111` | `0100` | same, similar, equal, like | pu |
| 89 | `seli` | `0111` | `0101` | fire, heat, warm, cook | pu |
| 90 | `selo` | `0111` | `0110` | skin, bark, shell, outer layer | pu |
| 91 | `seme` | `0111` | `0111` | what? which? (question word) | pu |
| 92 | `sewi` | `0111` | `1000` | high, up, above, sky, sacred | pu |
| 93 | `sijelo` | `0111` | `1001` | body, physical state, torso | pu |
| 94 | `sike` | `0111` | `1010` | circle, wheel, ball, cycle, year | pu |
| 95 | `sin` | `0111` | `1011` | new, fresh, another, again | pu |
| 96 | `sina` | `0111` | `1100` | you, your | pu |
| 97 | `sinpin` | `0111` | `1101` | face, front, wall, chest | pu |
| 98 | `sitelen` | `0111` | `1110` | image, write, draw, symbol | pu |
| 99 | `sona` | `1000` | `0001` | know, knowledge, wisdom | Group 8 (1000) - pu |
| 100 | `soto` | `1000` | `0010` | left, left side | directional |
| 101 | `soweli` | `1000` | `0011` | land mammal, animal, beast | pu |
| 102 | `suli` | `1000` | `0100` | big, tall, heavy, important | pu |
| 103 | `suno` | `1000` | `0101` | sun, light, brightness, shine | pu |
| 104 | `supa` | `1000` | `0110` | horizontal surface, table, bed | pu |
| 105 | `suwi` | `1000` | `0111` | sweet, cute, fragrant, pleasant | pu |
| 106 | `tan` | `1000` | `1000` | from, because of, origin | pu |
| 107 | `taso` | `1000` | `1001` | but, however, only, just | pu |
| 108 | `tawa` | `1000` | `1010` | to, toward, go, move | pu |
| 109 | `teje` | `1000` | `1011` | right, right side | directional |
| 110 | `telo` | `1000` | `1100` | water, liquid, drink, wash | pu |
| 111 | `tenpo` | `1000` | `1101` | time, moment, period, duration | pu |
| 112 | `toki` | `1000` | `1110` | speak, language, message, hello | pu |
| 113 | `tomo` | `1001` | `0001` | house, building, room, shelter | Group 9 (1001) - pu |
| 114 | `tu` | `1001` | `0010` | two, divide, split | pu |
| 115 | `unpa` | `1001` | `0011` | sex, sexual, intimacy | pu |
| 116 | `uta` | `1001` | `0100` | mouth, lips, oral, kiss | pu |
| 117 | `utala` | `1001` | `0101` | fight, battle, conflict, compete | pu |
| 118 | `walo` | `1001` | `0110` | white, pale, light-colored | pu |
| 119 | `wan` | `1001` | `0111` | one, unique, unite | pu |
| 120 | `waso` | `1001` | `1000` | bird, flying creature | pu |
| 121 | `wawa` | `1001` | `1001` | strong, energy, power, intense | pu |
| 122 | `weka` | `1001` | `1010` | away, absent, remove | pu |
| 123 | `wile` | `1001` | `1011` | want, need, desire, must | pu |
| 124 | `[NAME_START]` | `1001` | `1100` | Start of proper noun | Control (124) |
| 125 | `[NAME_END]` | `1001` | `1101` | End of proper noun | Control (125) |
| 126 | `[NEWLINE]` | `1001` | `1110` | Line break (`\n`) | Control (126) |
| 127 | `kijetesantakalu` | `1010` | `0001` | raccoon, coati, mustelid | Group 10 (1010) - ku suli (A–Z) |
| 128 | `kin` | `1010` | `0010` | also, too, indeed, still | ku suli |
| 129 | `kipisi` | `1010` | `0011` | cut, divide, slice, piece | ku suli |
| 130 | `ku` | `1010` | `0100` | interact with Toki Pona Dictionary | ku suli |
| 131 | `lanpan` | `1010` | `0101` | take, seize, grab, capture | ku suli |
| 132 | `leko` | `1010` | `0110` | block, brick, square, cube | ku suli |
| 133 | `meso` | `1010` | `0111` | middle, medium, average | ku suli |
| 134 | `misikeke` | `1010` | `1000` | medicine, medication, cure | ku suli |
| 135 | `monsuta` | `1010` | `1001` | fear, monster, scary, danger | ku suli |
| 136 | `n` | `1010` | `1010` | (interjection: um, hmm, thinking...) | ku suli |
| 137 | `namako` | `1010` | `1011` | spice, extra, additional, embellishment | ku suli |
| 138 | oko | 1010 | 1100 | eye, vision | ku suli |
| 139 | soko | 1010 | 1101 | mushroom, fungus | ku suli |
| 140 | tonsi | 1010 | 1110 | non-binary, trans, gender-diverse | ku suli |
| 141 | apeja | 1011 | 0001 | shame, guilt, dishonor, taboo | Group 11 (1011) - ku suli/lili (A–Z) |
| 142 | epiku | 1011 | 0010 | epic, awesome, amazing | ku suli |
| 143 | isipin | 1011 | 0011 | think, imagine, idea | ku lili |
| 144 | jasima | 1011 | 0100 | reflection, mirror, opposite, reverse | ku suli |
| 145 | kapesi | 1011 | 0101 | brown, tan, gray | ku lili |
| 146 | kokosila | 1011 | 0110 | speak non-Toki Pona where TP is used | ku suli |
| 147 | linluwi | 1011 | 0111 | internet, network, digital connection | ku lili |
| 148 | majuna | 1011 | 1000 | old, ancient, aged | ku lili |
| 149 | mulapisu | 1011 | 1001 | pizza | ku lili |
| 150 | omekapo | 1011 | 1010 | goodbye, farewell, eat a good fish | ku lili |
| 151 | pake | 1011 | 1011 | block, stop, prevent, brake | ku lili |
| 152 | powe | 1011 | 1100 | false, lie, pretend, illusion | ku lili |
| 153 | su | 1011 | 1101 | interact with illustrated su books | ku lili |
| 154 | unu | 1011 | 1110 | purple, violet, lilac | ku lili |
| 155 | a (letter) | 1100 | 0001 | Letter A (for spelling names) | Group 12 (1100) - Alphabet (A–Z) |
| 156 | e (letter) | 1100 | 0010 | Letter E (for spelling names) | Alphabet |
| 157 | i (letter) | 1100 | 0011 | Letter I (for spelling names) | Alphabet |
| 158 | j (letter) | 1100 | 0100 | Letter J (for spelling names) | Alphabet |
| 159 | k (letter) | 1100 | 0101 | Letter K (for spelling names) | Alphabet |
| 160 | l (letter) | 1100 | 0110 | Letter L (for spelling names) | Alphabet |
| 161 | m (letter) | 1100 | 0111 | Letter M (for spelling names) | Alphabet |
| 162 | n (letter) | 1100 | 1000 | Letter N (for spelling names) | Alphabet |
| 163 | o (letter) | 1100 | 1001 | Letter O (for spelling names) | Alphabet |
| 164 | p (letter) | 1100 | 1010 | Letter P (for spelling names) | Alphabet |
| 165 | s (letter) | 1100 | 1011 | Letter S (for spelling names) | Alphabet |
| 166 | t (letter) | 1100 | 1100 | Letter T (for spelling names) | Alphabet |
| 167 | u (letter) | 1100 | 1101 | Letter U (for spelling names) | Alphabet |
| 168 | w (letter) | 1100 | 1110 | Letter W (for spelling names) | Alphabet |
| 169 | 0 | 1101 | 0001 | Digit 0 | Group 13 (1101) - Digits & Controls |
| 170 | 1 | 1101 | 0010 | Digit 1 | Digits (0–9) |
| 171 | 2 | 1101 | 0011 | Digit 2 | Digits (0–9) |
| 172 | 3 | 1101 | 0100 | Digit 3 | Digits (0–9) |
| 173 | 4 | 1101 | 0101 | Digit 4 | Digits (0–9) |
| 174 | 5 | 1101 | 0110 | Digit 5 | Digits (0–9) |
| 175 | 6 | 1101 | 0111 | Digit 6 | Digits (0–9) |
| 176 | 7 | 1101 | 1000 | Digit 7 | Digits (0–9) |
| 177 | 8 | 1101 | 1001 | Digit 8 | Digits (0–9) |
| 178 | 9 | 1101 | 1010 | Digit 9 | Digits (0–9) |
| 179 | [ACK] | 1101 | 1011 | Acknowledged / Understood (pona!) | Protocol control |
| 180 | [NAK] | 1101 | 1100 | Error / Not understood | Protocol control |
| 181 | [REPEAT] | 1101 | 1101 | Repeat last message | Protocol control |
| 182 | [START] | 1101 | 1110 | Sync / Start of transmission | Protocol control |
| 183 | . | 1110 | 0001 | Period / full stop | Group 14 (1110) - Punctuation (#1) |
| 184 | , | 1110 | 0010 | Comma | Punctuation (#2) |
| 185 | ? | 1110 | 0011 | Question mark | Punctuation (#3) |
| 186 | ! | 1110 | 0100 | Exclamation mark | Punctuation (#4) |
| 187 | ' | 1110 | 0101 | Single quote / apostrophe | Punctuation |
| 188 | " | 1110 | 0110 | Double quote | Punctuation |
| 189 | - | 1110 | 0111 | Hyphen / dash | Punctuation |
| 190 | : | 1110 | 1000 | Colon | Punctuation |
| 191 | ( | 1110 | 1001 | Open parenthesis | Punctuation |
| 192 | ) | 1110 | 1010 | Close parenthesis | Punctuation |
| 193 | ; | 1110 | 1011 | Semicolon | Punctuation |
| 194 | / | 1110 | 1100 | Slash | Punctuation |
| 195 | + | 1110 | 1101 | Plus / addition sign | Symbol |
| 196 | = | 1110 | 1110 | Equals sign | Symbol |

## lexical order (br)

| # | Palavra_Sinal | Flash_1 | Flash_2 | Significado | Notas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0A | `[SPACE]` | `0000` | `-` | Espaço (separador de palavras) | Controle 1-flash |
| 0B | `[EOT]` | `1111` | `-` | Fim de Texto (encerramento) | Controle 1-flash |
| 1 | `a` | `0001` | `0001` | (ênfase, emoção, ah!) | Grupo 1 (0001) - pu |
| 2 | `akesi` | `0001` | `0010` | réptil, anfíbio, lagarto, sapo | pu |
| 3 | `ala` | `0001` | `0011` | não, nada, zero, nenhum | pu |
| 4 | `alasa` | `0001` | `0100` | caçar, procurar, buscar, colher | pu |
| 5 | `ale` | `0001` | `0101` | tudo, todos, universo, completo | pu |
| 6 | `ali` | `0001` | `0110` | variante explícita de ale (tudo) | pu (variante) |
| 7 | `anpa` | `0001` | `0111` | baixo, fundo, abaixo, humilde | pu |
| 8 | `ante` | `0001` | `1000` | diferente, outro, mudar, alterar | pu |
| 9 | `anu` | `0001` | `1001` | ou | pu |
| 10 | `awen` | `0001` | `1010` | ficar, manter, esperar, seguro | pu |
| 11 | `e` | `0001` | `1011` | (marcador de objeto direto) | pu |
| 12 | `en` | `0001` | `1100` | e (entre sujeitos) | pu |
| 13 | `esun` | `0001` | `1101` | mercado, loja, comércio, comprar | pu |
| 14 | `ijo` | `0001` | `1110` | coisa, objeto, assunto, algo | pu |
| 15 | `ike` | `0010` | `0001` | mau, ruim, negativo, complexo | Grupo 2 (0010) - pu |
| 16 | `ilo` | `0010` | `0010` | ferramenta, máquina, aparelho | pu |
| 17 | `insa` | `0010` | `0011` | dentro, interior, centro, estômago | pu |
| 18 | `jaki` | `0010` | `0100` | sujo, nojento, lixo, tóxico | pu |
| 19 | `jan` | `0010` | `0101` | pessoa, ser humano, alguém | pu |
| 20 | `jelo` | `0010` | `0110` | amarelo, amarelado | pu |
| 21 | `jo` | `0010` | `0111` | ter, possuir, carregar, conter | pu |
| 22 | `kala` | `0010` | `1000` | peixe, animal marinho | pu |
| 23 | `kalama` | `0010` | `1001` | som, barulho, voz, recitar | pu |
| 24 | `kama` | `0010` | `1010` | vir, chegar, tornar-se, futuro | pu |
| 25 | `kasi` | `0010` | `1011` | planta, árvore, folha, erva | pu |
| 26 | `ken` | `0010` | `1100` | poder, conseguir, possível, talvez | pu |
| 27 | `kepeken` | `0010` | `1101` | usar, com, por meio de | pu |
| 28 | `kili` | `0010` | `1110` | fruta, legume, verdura, cogumelo | pu |
| 29 | `kiwen` | `0011` | `0001` | pedra, rocha, metal, objeto duro | Grupo 3 (0011) - pu |
| 30 | `ko` | `0011` | `0010` | barro, massa, pasta, pó, creme | pu |
| 31 | `kon` | `0011` | `0011` | ar, vento, respiração, espírito | pu |
| 32 | `kule` | `0011` | `0100` | cor, colorido, pintar | pu |
| 33 | `kulupu` | `0011` | `0101` | grupo, comunidade, equipe, sociedade | pu |
| 34 | `kute` | `0011` | `0110` | ouvido, orelha, ouvir, escutar | pu |
| 35 | `la` | `0011` | `0111` | (marcador de contexto / se-então) | pu |
| 36 | `lape` | `0011` | `1000` | dormir, descansar, sono | pu |
| 37 | `laso` | `0011` | `1001` | azul, verde | pu |
| 38 | `lawa` | `0011` | `1010` | cabeça, liderar, controlar, guiar | pu |
| 39 | `len` | `0011` | `1011` | roupa, tecido, pano, cobertura | pu |
| 40 | `lete` | `0011` | `1100` | frio, gelado, cru, congelar | pu |
| 41 | `li` | `0011` | `1101` | (marcador de predicado / verbo) | pu |
| 42 | `lili` | `0011` | `1110` | pequeno, pouco, jovem, curto | pu |
| 43 | `linja` | `0100` | `0001` | linha, fio, corda, cabelo | Grupo 4 (0100) - pu |
| 44 | `lipu` | `0100` | `0010` | papel, livro, página, documento | pu |
| 45 | `loje` | `0100` | `0011` | vermelho, avermelhado | pu |
| 46 | `lon` | `0100` | `0100` | em, no, na, existir, verdadeiro | pu |
| 47 | `luka` | `0100` | `0101` | mão, braço, tocar, cinco | pu |
| 48 | `lukin` | `0100` | `0110` | ver, olhar, ler, olho, procurar | pu |
| 49 | `lupa` | `0100` | `0111` | buraco, porta, janela, abertura | pu |
| 50 | `ma` | `0100` | `1000` | terra, país, lugar, solo, mundo | pu |
| 51 | `mama` | `0100` | `1001` | pai, mãe, ancestral, criador | pu |
| 52 | `mani` | `0100` | `1010` | dinheiro, riqueza, moeda, gado | pu |
| 53 | `meli` | `0100` | `1011` | mulher, fêmea, feminino | pu |
| 54 | `mi` | `0100` | `1100` | eu, mim, meu, nós, nosso | pu |
| 55 | `mije` | `0100` | `1101` | homem, macho, masculino | pu |
| 56 | `moku` | `0100` | `1110` | comer, beber, comida, alimento | pu |
| 57 | `moli` | `0101` | `0001` | morto, morte, morrer, matar | Grupo 5 (0101) - pu |
| 58 | `monsi` | `0101` | `0010` | costas, trás, traseira, atrás | pu |
| 59 | `mu` | `0101` | `0011` | (som de animal: miau, muu, au) | pu |
| 60 | `mun` | `0101` | `0100` | lua, estrela, astro noturno | pu |
| 61 | `musi` | `0101` | `0101` | diversão, jogo, arte, brincar | pu |
| 62 | `mute` | `0101` | `0110` | muito, muitos, quantidade, mais | pu |
| 63 | `nanpa` | `0101` | `0111` | número, contar, (marcador ordinal) | pu |
| 64 | `nasa` | `0101` | `1000` | estranho, louco, bobo, bêbado | pu |
| 65 | `nasin` | `0101` | `1001` | caminho, modo, método, estrada | pu |
| 66 | `nena` | `0101` | `1010` | morro, montanha, nariz, botão | pu |
| 67 | `ni` | `0101` | `1011` | este, esta, isso, aquele | pu |
| 68 | `nimi` | `0101` | `1100` | palavra, nome | pu |
| 69 | `noka` | `0101` | `1101` | pé, perna, base, parte de baixo | pu |
| 70 | `o` | `0101` | `1110` | (vocativo / imperativo, ó!) | pu |
| 71 | `olin` | `0110` | `0001` | amar, amor, compaixão, carinho | Grupo 6 (0110) - pu |
| 72 | `ona` | `0110` | `0010` | ele, ela, eles, elas | pu |
| 73 | `open` | `0110` | `0011` | abrir, começar, iniciar, ligar | pu |
| 74 | `pakala` | `0110` | `0100` | quebrado, erro, dano, estragar | pu |
| 75 | `pali` | `0110` | `0101` | fazer, trabalhar, criar, construir | pu |
| 76 | `palisa` | `0110` | `0110` | vara, bastão, galho, objeto longo | pu |
| 77 | `pan` | `0110` | `0111` | pão, grão, arroz, massa, cereal | pu |
| 78 | `pana` | `0110` | `1000` | dar, enviar, emitir, colocar | pu |
| 79 | `pi` | `0110` | `1001` | de (reagrupa modificadores) | pu |
| 80 | `pilin` | `0110` | `1010` | sentir, sentimento, coração, mente | pu |
| 81 | `pimeja` | `0110` | `1011` | preto, escuro, sombra, noite | pu |
| 82 | `pini` | `0110` | `1100` | fim, terminar, passado, fechado | pu |
| 83 | `pipi` | `0110` | `1101` | inseto, aranha, formiga, bicho | pu |
| 84 | `poka` | `0110` | `1110` | lado, quadril, perto de, ao lado | pu |
| 85 | `poki` | `0111` | `0001` | caixa, recipiente, tigela, copo | Grupo 7 (0111) - pu |
| 86 | `pona` | `0111` | `0010` | bom, simples, positivo, consertar | pu |
| 87 | `pu` | `0111` | `0011` | interagir com o livro oficial Toki Pona | pu |
| 88 | `sama` | `0111` | `0100` | igual, mesmo, semelhante, como | pu |
| 89 | `seli` | `0111` | `0101` | fogo, calor, quente, cozinhar | pu |
| 90 | `selo` | `0111` | `0110` | pele, casca, concha, camada externa | pu |
| 91 | `seme` | `0111` | `0111` | o quê? qual? (palavra interrogativa) | pu |
| 92 | `sewi` | `0111` | `1000` | alto, cima, céu, sagrado, divino | pu |
| 93 | `sijelo` | `0111` | `1001` | corpo, físico, tronco, saúde | pu |
| 94 | `sike` | `0111` | `1010` | círculo, roda, bola, ciclo, ano | pu |
| 95 | `sin` | `0111` | `1011` | novo, fresco, outro, novamente | pu |
| 96 | `sina` | `0111` | `1100` | você, tu, seu, vocês | pu |
| 97 | `sinpin` | `0111` | `1101` | rosto, frente, parede, peito | pu |
| 98 | `sitelen` | `0111` | `1110` | imagem, escrever, desenhar, símbolo | pu |
| 99 | `sona` | `1000` | `0001` | saber, conhecimento, sabedoria | Grupo 8 (1000) - pu |
| 100 | `soto` | `1000` | `0010` | esquerda, lado esquerdo | direcional |
| 101 | `soweli` | `1000` | `0011` | animal terrestre, mamífero, bicho | pu |
| 102 | `suli` | `1000` | `0100` | grande, alto, pesado, importante | pu |
| 103 | `suno` | `1000` | `0101` | sol, luz, brilho, brilhar | pu |
| 104 | `supa` | `1000` | `0110` | superfície horizontal, mesa, cama | pu |
| 105 | `suwi` | `1000` | `0111` | doce, fofo, cheiroso, agradável | pu |
| 106 | `tan` | `1000` | `1000` | de, desde, por causa de, origem | pu |
| 107 | `taso` | `1000` | `1001` | mas, porém, apenas, somente | pu |
| 108 | `tawa` | `1000` | `1010` | para, ir, mover-se, em direção a | pu |
| 109 | `teje` | `1000` | `1011` | direita, lado direito | direcional |
| 110 | `telo` | `1000` | `1100` | água, líquido, bebida, lavar | pu |
| 111 | `tenpo` | `1000` | `1101` | tempo, momento, época, duração | pu |
| 112 | `toki` | `1000` | `1110` | falar, idioma, mensagem, olá | pu |
| 113 | `tomo` | `1001` | `0001` | casa, prédio, quarto, abrigo | Grupo 9 (1001) - pu |
| 114 | `tu` | `1001` | `0010` | dois, dividir, separar | pu |
| 115 | `unpa` | `1001` | `0011` | sexo, sexual, relação íntima | pu |
| 116 | `uta` | `1001` | `0100` | boca, lábios, oral, beijar | pu |
| 117 | `utala` | `1001` | `0101` | lutar, batalha, conflito, competir | pu |
| 118 | `walo` | `1001` | `0110` | branco, pálido, claro | pu |
| 119 | `wan` | `1001` | `0111` | um, único, unir | pu |
| 120 | `waso` | `1001` | `1000` | pássaro, ave, animal voador | pu |
| 121 | `wawa` | `1001` | `1001` | forte, energia, poder, intenso | pu |
| 122 | `weka` | `1001` | `1010` | longe, ausente, remover, tirar | pu |
| 123 | `wile` | `1001` | `1011` | querer, precisar, desejar, dever | pu |
| 124 | `[NAME_START]` | `1001` | `1100` | Início de nome próprio | Controle (124) |
| 125 | `[NAME_END]` | `1001` | `1101` | Fim de nome próprio | Controle (125) |
| 126 | `[NEWLINE]` | `1001` | `1110` | Quebra de linha (`\n`) | Controle (126) |
| 127 | `kijetesantakalu` | `1010` | `0001` | guaxinim, quati, mustelídeo | Grupo 10 (1010) - ku suli (A–Z) |
| 128 | `kin` | `1010` | `0010` | também, ainda, de fato, mesmo | ku suli |
| 129 | `kipisi` | `1010` | `0011` | cortar, dividir, fatia, pedaço | ku suli |
| 130 | `ku` | `1010` | `0100` | interagir com o dicionário Toki Pona | ku suli |
| 131 | `lanpan` | `1010` | `0101` | pegar, agarrar, tomar, capturar | ku suli |
| 132 | `leko` | `1010` | `0110` | bloco, tijolo, quadrado, cubo | ku suli |
| 133 | `meso` | `1010` | `0111` | meio, médio, intermediário | ku suli |
| 134 | misikeke | 1010 | 1000 | remédio, medicamento, cura | ku suli |
| 135 | monsuta | 1010 | 1001 | medo, monstro, assustador, perigo | ku suli |
| 136 | n | 1010 | 1010 | (interjeição: hum, pensando...) | ku suli |
| 137 | namako | 1010 | 1011 | tempero, extra, adicional, enfeite | ku suli |
| 138 | oko | 1010 | 1100 | olho, visão | ku suli |
| 139 | soko | 1010 | 1101 | cogumelo, fungo | ku suli |
| 140 | tonsi | 1010 | 1110 | não-binário, trans, gênero diverso | ku suli |
| 141 | apeja | 1011 | 0001 | vergonha, culpa, desonra, tabu | Grupo 11 (1011) - ku suli/lili (A–Z) |
| 142 | epiku | 1011 | 0010 | épico, incrível, maravilhoso | ku suli |
| 143 | isipin | 1011 | 0011 | pensar, imaginar, ideia | ku lili |
| 144 | jasima | 1011 | 0100 | reflexo, espelho, oposto, inverter | ku suli |
| 145 | kapesi | 1011 | 0101 | marrom, castanho, cinza | ku lili |
| 146 | kokosila | 1011 | 0110 | falar outro idioma onde se usa Toki Pona | ku suli |
| 147 | linluwi | 1011 | 0111 | internet, rede, conexão digital | ku lili |
| 148 | majuna | 1011 | 1000 | velho, antigo, envelhecido | ku lili |
| 149 | mulapisu | 1011 | 1001 | pizza | ku lili |
| 150 | omekapo | 1011 | 1010 | tchau, adeus, coma um bom peixe | ku lili |
| 151 | pake | 1011 | 1011 | bloquear, impedir, parar, frear | ku lili |
| 152 | powe | 1011 | 1100 | falso, mentira, fingir, ilusão | ku lili |
| 153 | su | 1011 | 1101 | interagir com os livros ilustrados su | ku lili |
| 154 | unu | 1011 | 1110 | roxo, violeta, lilás | ku lili |
| 155 | a (letra) | 1100 | 0001 | Letra A (para soletrar nomes) | Grupo 12 (1100) - Alfabeto (A–Z) |
| 156 | e (letra) | 1100 | 0010 | Letra E (para soletrar nomes) | Alfabeto |
| 157 | i (letra) | 1100 | 0011 | Letra I (para soletrar nomes) | Alfabeto |
| 158 | j (letra) | 1100 | 0100 | Letra J (para soletrar nomes) | Alfabeto |
| 159 | k (letra) | 1100 | 0101 | Letra K (para soletrar nomes) | Alfabeto |
| 160 | l (letra) | 1100 | 0110 | Letra L (para soletrar nomes) | Alfabeto |
| 161 | m (letra) | 1100 | 0111 | Letra M (para soletrar nomes) | Alfabeto |
| 162 | n (letra) | 1100 | 1000 | Letra N (para soletrar nomes) | Alfabeto |
| 163 | o (letra) | 1100 | 1001 | Letra O (para soletrar nomes) | Alfabeto |
| 164 | p (letra) | 1100 | 1010 | Letra P (para soletrar nomes) | Alfabeto |
| 165 | s (letra) | 1100 | 1011 | Letra S (para soletrar nomes) | Alfabeto |
| 166 | t (letra) | 1100 | 1100 | Letra T (para soletrar nomes) | Alfabeto |
| 167 | u (letra) | 1100 | 1101 | Letra U (para soletrar nomes) | Alfabeto |
| 168 | w (letra) | 1100 | 1110 | Letra W (para soletrar nomes) | Alfabeto |
| 169 | 0 | 1101 | 0001 | Algarismo 0 | Grupo 13 (1101) - Algarismos |
| 170 | 1 | 1101 | 0010 | Algarismo 1 | Algarismos (0-9) |
| 171 | 2 | 1101 | 0011 | Algarismo 2 | Algarismos (0-9) |
| 172 | 3 | 1101 | 0100 | Algarismo 3 | Algarismos (0-9) |
| 173 | 4 | 1101 | 0101 | Algarismo 4 | Algarismos (0-9) |
| 174 | 5 | 1101 | 0110 | Algarismo 5 | Algarismos (0-9) |
| 175 | 6 | 1101 | 0111 | Algarismo 6 | Algarismos (0-9) |
| 176 | 7 | 1101 | 1000 | Algarismo 7 | Algarismos (0-9) |
| 177 | 8 | 1101 | 1001 | Algarismo 8 | Algarismos (0-9) |
| 178 | 9 | 1101 | 1010 | Algarismo 9 | Algarismos (0-9) |
| 179 | [ACK] | 1101 | 1011 | Recebido / Entendido (pona!) | Controle de protocolo |
| 180 | [NAK] | 1101 | 1100 | Erro / Não entendido | Controle de protocolo |
| 181 | [REPEAT] | 1101 | 1101 | Repetir última mensagem | Controle de protocolo |
| 182 | [START] | 1101 | 1110 | Sincronização / Início de transmissão | Controle de protocolo |
| 183 | `.` | `1110` | `0001` | Ponto final | Grupo 14 (1110) - Pontuação (#1) |
| 184 | `,` | `1110` | `0010` | Vírgula | Pontuação (#2) |
| 185 | `?` | `1110` | `0011` | Ponto de interrogação | Pontuação (#3) |
| 186 | `!` | `1110` | `0100` | Ponto de exclamação | Pontuação (#4) |
| 187 | `'` | `1110` | `0101` | Aspas simples / apóstrofo | Pontuação |
| 188 | `"` | `1110` | `0110` | Aspas duplas | Pontuação |
| 189 | `-` | `1110` | `0111` | Hífen / traço | Pontuação |
| 190 | `:` | `1110` | `1000` | Dois-pontos | Pontuação |
| 191 | `(` | `1110` | `1001` | Abre parênteses | Pontuação |
| 192 | `)` | `1110` | `1010` | Fecha parênteses | Pontuação |
| 193 | `;` | `1110` | `1011` | Ponto e vírgula | Pontuação |
| 194 | `/` | `1110` | `1100` | Barra | Pontuação |
| 195 | `+` | `1110` | `1101` | Sinal de mais / adição | Símbolo |
| 196 | `=` | `1110` | `1110` | Sinal de igual | Símbolo |


## most frequent order

| # | Palavra_Sinal | Flash_1 | Flash_2 | Significado | Notas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0A | `[SPACE]` | `0000` | `-` | Espaço (separador de palavras) | Controle 1-flash |
| 0B | `[EOT]` | `1111` | `-` | Fim de Texto (encerramento) | Controle 1-flash |
| 1 | `li` | `0001` | `0001` | (marcador de predicado / verbo) | Grupo 1 (0001) - pu |
| 2 | `mi` | `0001` | `0010` | eu, mim, meu, nós, nosso | pu |
| 3 | `e` | `0001` | `0011` | (marcador de objeto direto) | pu |
| 4 | `a` | `0001` | `0100` | (ênfase, emoção, ah!) | pu |
| 5 | `pona` | `0001` | `0101` | bom, simples, positivo, consertar | pu |
| 6 | `toki` | `0001` | `0110` | falar, idioma, mensagem, olá | pu |
| 7 | `ni` | `0001` | `0111` | este, esta, isso, aquele | pu |
| 8 | `la` | `0001` | `1000` | (marcador de contexto / se-então) | pu |
| 9 | `ala` | `0001` | `1001` | não, nada, zero, nenhum | pu |
| 10 | `sina` | `0001` | `1010` | você, tu, seu, vocês | pu |
| 11 | `jan` | `0001` | `1011` | pessoa, ser humano, alguém | pu |
| 12 | `o` | `0001` | `1100` | (vocativo / imperativo, ó!) | pu |
| 13 | `lon` | `0001` | `1101` | em, no, na, existir, verdadeiro | pu |
| 14 | `pi` | `0001` | `1110` | de (reagrupa modificadores) | pu |
| 15 | `tawa` | `0010` | `0001` | para, ir, mover-se, em direção a | Grupo 2 (0010) - pu |
| 16 | `sona` | `0010` | `0010` | saber, conhecimento, sabedoria | pu |
| 17 | `ona` | `0010` | `0011` | ele, ela, eles, elas | pu |
| 18 | `tenpo` | `0010` | `0100` | tempo, momento, época, duração | pu |
| 19 | `wile` | `0010` | `0101` | querer, precisar, desejar, dever | pu |
| 20 | `mute` | `0010` | `0110` | muito, muitos, quantidade, mais | pu |
| 21 | `taso` | `0010` | `0111` | mas, porém, apenas, somente | pu |
| 22 | `kama` | `0010` | `1000` | vir, chegar, tornar-se, futuro | pu |
| 23 | `ken` | `0010` | `1001` | poder, conseguir, possível, talvez | pu |
| 24 | `pilin` | `0010` | `1010` | sentir, sentimento, coração, mente | pu |
| 25 | `ike` | `0010` | `1011` | mau, ruim, negativo, complexo | pu |
| 26 | `nimi` | `0010` | `1100` | palavra, nome | pu |
| 27 | `tan` | `0010` | `1101` | de, desde, por causa de, origem | pu |
| 28 | `lili` | `0010` | `1110` | pequeno, pouco, jovem, curto | pu |
| 29 | `pali` | `0011` | `0001` | fazer, trabalhar, criar, construir | Grupo 3 (0011) - pu |
| 30 | `tomo` | `0011` | `0010` | casa, prédio, quarto, abrigo | pu |
| 31 | `ma` | `0011` | `0011` | terra, país, lugar, solo, mundo | pu |
| 32 | `kepeken` | `0011` | `0100` | usar, com, por meio de | pu |
| 33 | `sitelen` | `0011` | `0101` | imagem, escrever, desenhar, símbolo | pu |
| 34 | `musi` | `0011` | `0110` | diversão, jogo, arte, brincar | pu |
| 35 | `lukin` | `0011` | `0111` | ver, olhar, ler, olho, procurar | pu |
| 36 | `jo` | `0011` | `1000` | ter, possuir, carregar, conter | pu |
| 37 | `moku` | `0011` | `1001` | comer, beber, comida, alimento | pu |
| 38 | `sama` | `0011` | `1010` | igual, mesmo, semelhante, como | pu |
| 39 | `seme` | `0011` | `1011` | o quê? qual? (palavra interrogativa) | pu |
| 40 | `telo` | `0011` | `1100` | água, líquido, bebida, lavar | pu |
| 41 | `ale` | `0011` | `1101` | tudo, todos, universo, completo | pu |
| 42 | `lape` | `0011` | `1110` | dormir, descansar, sono | pu |
| 43 | `suli` | `0100` | `0001` | grande, alto, pesado, importante | Grupo 4 (0100) - pu |
| 44 | `ilo` | `0100` | `0010` | ferramenta, máquina, aparelho | pu |
| 45 | `ijo` | `0100` | `0011` | coisa, objeto, assunto, algo | pu |
| 46 | `pini` | `0100` | `0100` | fim, terminar, passado, fechado | pu |
| 47 | `ante` | `0100` | `0101` | diferente, outro, mudar, alterar | pu |
| 48 | `anu` | `0100` | `0110` | ou | pu |
| 49 | `nasa` | `0100` | `0111` | estranho, louco, bobo, bêbado | pu |
| 50 | `pana` | `0100` | `1000` | dar, enviar, emitir, colocar | pu |
| 51 | `kulupu` | `0100` | `1001` | grupo, comunidade, equipe, sociedade | pu |
| 52 | `suno` | `0100` | `1010` | sol, luz, brilho, brilhar | pu |
| 53 | `kalama` | `0100` | `1011` | som, barulho, voz, recitar | pu |
| 54 | `nasin` | `0100` | `1100` | caminho, modo, método, estrada | pu |
| 55 | `lipu` | `0100` | `1101` | papel, livro, página, documento | pu |
| 56 | `en` | `0100` | `1110` | e (entre sujeitos) | pu |
| 57 | `tu` | `0101` | `0001` | dois, dividir, separar | Grupo 5 (0101) - pu |
| 58 | `sin` | `0101` | `0010` | novo, fresco, outro, novamente | pu |
| 59 | `pakala` | `0101` | `0011` | quebrado, erro, dano, estragar | pu |
| 60 | `olin` | `0101` | `0100` | amar, amor, compaixão, carinho | pu |
| 61 | `wawa` | `0101` | `0101` | forte, energia, poder, intenso | pu |
| 62 | `awen` | `0101` | `0110` | ficar, manter, esperar, seguro | pu |
| 63 | `lawa` | `0101` | `0111` | cabeça, liderar, controlar, guiar | pu |
| 64 | `sewi` | `0101` | `1000` | alto, cima, céu, sagrado, divino | pu |
| 65 | `soweli` | `0101` | `1001` | animal terrestre, mamífero, bicho | pu |
| 66 | `seli` | `0101` | `1010` | fogo, calor, quente, cozinhar | pu |
| 67 | `kon` | `0101` | `1011` | ar, vento, respiração, espírito | pu |
| 68 | `wan` | `0101` | `1100` | um, único, unir | pu |
| 69 | `weka` | `0101` | `1101` | longe, ausente, remover, tirar | pu |
| 70 | `mu` | `0101` | `1110` | (som de animal: miau, muu, au) | pu |
| 71 | `nanpa` | `0110` | `0001` | número, contar, (marcador ordinal) | Grupo 6 (0110) - pu |
| 72 | `lete` | `0110` | `0010` | frio, gelado, cru, congelar | pu |
| 73 | `sike` | `0110` | `0011` | círculo, roda, bola, ciclo, ano | pu |
| 74 | `moli` | `0110` | `0100` | morto, morte, morrer, matar | pu |
| 75 | `kasi` | `0110` | `0101` | planta, árvore, folha, erva | pu |
| 76 | `kute` | `0110` | `0110` | ouvido, orelha, ouvir, escutar | pu |
| 77 | `suwi` | `0110` | `0111` | doce, fofo, cheiroso, agradável | pu |
| 78 | `utala` | `0110` | `1000` | lutar, batalha, conflito, competir | pu |
| 79 | `pimeja` | `0110` | `1001` | preto, escuro, sombra, noite | pu |
| 80 | `mama` | `0110` | `1010` | pai, mãe, ancestral, criador | pu |
| 81 | `sijelo` | `0110` | `1011` | corpo, físico, tronco, saúde | pu |
| 82 | `luka` | `0110` | `1100` | mão, braço, tocar, cinco | pu |
| 83 | `open` | `0110` | `1101` | abrir, começar, iniciar, ligar | pu |
| 84 | `pan` | `0110` | `1110` | pão, grão, arroz, massa, cereal | pu |
| 85 | `uta` | `0111` | `0001` | boca, lábios, oral, beijar | Grupo 7 (0111) - pu |
| 86 | `insa` | `0111` | `0010` | dentro, interior, centro, estômago | pu |
| 87 | `jaki` | `0111` | `0011` | sujo, nojento, lixo, tóxico | pu |
| 88 | `ko` | `0111` | `0100` | barro, massa, pasta, pó, creme | pu |
| 89 | `kala` | `0111` | `0101` | peixe, animal marinho | pu |
| 90 | `pu` | `0111` | `0110` | interagir com o livro oficial Toki Pona | pu |
| 91 | `meli` | `0111` | `0111` | mulher, fêmea, feminino | pu |
| 92 | `mije` | `0111` | `1000` | homem, macho, masculino | pu |
| 93 | `kili` | `0111` | `1001` | fruta, legume, verdura, cogumelo | pu |
| 94 | `kiwen` | `0111` | `1010` | pedra, rocha, metal, objeto duro | pu |
| 95 | `poka` | `0111` | `1011` | lado, quadril, perto de, ao lado | pu |
| 96 | `lupa` | `0111` | `1100` | buraco, porta, janela, abertura | pu |
| 97 | `poki` | `0111` | `1101` | caixa, recipiente, tigela, copo | pu |
| 98 | `monsi` | `0111` | `1110` | costas, trás, traseira, atrás | pu |
| 99 | `anpa` | `1000` | `0001` | baixo, fundo, abaixo, humilde | Grupo 8 (1000) - pu |
| 100 | `sinpin` | `1000` | `0010` | rosto, frente, parede, peito | pu |
| 101 | `supa` | `1000` | `0011` | superfície horizontal, mesa, cama | pu |
| 102 | `len` | `1000` | `0100` | roupa, tecido, pano, cobertura | pu |
| 103 | `noka` | `1000` | `0101` | pé, perna, base, parte de baixo | pu |
| 104 | `waso` | `1000` | `0110` | pássaro, ave, animal voador | pu |
| 105 | `walo` | `1000` | `0111` | branco, pálido, claro | pu |
| 106 | `laso` | `1000` | `1000` | azul, verde | pu |
| 107 | `loje` | `1000` | `1001` | vermelho, avermelhado | pu |
| 108 | `kule` | `1000` | `1010` | cor, colorido, pintar | pu |
| 109 | `jelo` | `1000` | `1011` | amarelo, amarelado | pu |
| 110 | `mani` | `1000` | `1100` | dinheiro, riqueza, moeda, gado | pu |
| 111 | `mun` | `1000` | `1101` | lua, estrela, astro noturno | pu |
| 112 | `esun` | `1000` | `1110` | mercado, loja, comércio, comprar | pu |
| 113 | `pipi` | `1001` | `0001` | inseto, aranha, formiga, bicho | Grupo 9 (1001) - pu |
| 114 | `linja` | `1001` | `0010` | linha, fio, corda, cabelo | pu |
| 115 | `akesi` | `1001` | `0011` | réptil, anfíbio, lagarto, sapo | pu |
| 116 | `alasa` | `1001` | `0100` | caçar, procurar, buscar, colher | pu |
| 117 | `palisa` | `1001` | `0101` | vara, bastão, galho, objeto longo | pu |
| 118 | `nena` | `1001` | `0110` | morro, montanha, nariz, botão | pu |
| 119 | `selo` | `1001` | `0111` | pele, casca, concha, camada externa | pu |
| 120 | `unpa` | `1001` | `1000` | sexo, sexual, relação íntima | pu |
| 121 | `ali` | `1001` | `1001` | variante explícita de ale (tudo) | pu (variante) |
| 122 | `teje` | `1001` | `1010` | direita, lado direito | direcional |
| 123 | `soto` | `1001` | `1011` | esquerda, lado esquerdo | direcional |
| 124 | `[NAME_START]` | `1001` | `1100` | Início de nome próprio | Controle (124) |
| 125 | `[NAME_END]` | `1001` | `1101` | Fim de nome próprio | Controle (125) |
| 126 | `[NEWLINE]` | `1001` | `1110` | Quebra de linha (`\n`) | Controle (126) |
| 127 | `kin` | `1010` | `0001` | também, ainda, de fato, mesmo | Grupo 10 (1010) - ku suli |
| 128 | `namako` | `1010` | `0010` | tempero, extra, adicional, enfeite | ku suli |
| 129 | `tonsi` | `1010` | `0011` | não-binário, trans, gênero diverso | ku suli |
| 130 | `kipisi` | `1010` | `0100` | cortar, dividir, fatia, pedaço | ku suli |
| 131 | `oko` | `1010` | `0101` | olho, visão | ku suli |
| 132 | `monsuta` | `1010` | `0110` | medo, monstro, assustador, perigo | ku suli |
| 133 | `ku` | `1010` | `0111` | interagir com o dicionário Toki Pona | ku suli |
| 134 | `leko` | `1010` | `1000` | bloco, tijolo, quadrado, cubo | ku suli |
| 135 | soko | 1010 | 1001 | cogumelo, fungo | ku suli |
| 136 | kijetesantakalu | 1010 | 1010 | guaxinim, quati, mustelídeo | ku suli |
| 137 | n | 1010 | 1011 | (interjeição: hum, pensando...) | ku suli |
| 138 | misikeke | 1010 | 1100 | remédio, medicamento, cura | ku suli |
| 139 | lanpan | 1010 | 1101 | pegar, agarrar, tomar, capturar | ku suli |
| 140 | meso | 1010 | 1110 | meio, médio, intermediário | ku suli |
| 141 | jasima | 1011 | 0001 | reflexo, espelho, oposto, inverter | Grupo 11 (1011) - ku suli |
| 142 | epiku | 1011 | 0010 | épico, incrível, maravilhoso | ku suli |
| 143 | kokosila | 1011 | 0011 | falar outro idioma onde se usa Toki Pona | ku suli |
| 144 | apeja | 1011 | 0100 | vergonha, culpa, desonra, tabu | ku lili |
| 145 | majuna | 1011 | 0101 | velho, antigo, envelhecido | ku lili |
| 146 | pake | 1011 | 0110 | bloquear, impedir, parar, frear | ku lili |
| 147 | powe | 1011 | 0111 | falso, mentira, fingir, ilusão | ku lili |
| 148 | linluwi | 1011 | 1000 | internet, rede, conexão digital | ku lili |
| 149 | kapesi | 1011 | 1001 | marrom, castanho, cinza | ku lili |
| 150 | unu | 1011 | 1010 | roxo, violeta, lilás | ku lili |
| 151 | su | 1011 | 1011 | interagir com os livros ilustrados su | ku lili |
| 152 | isipin | 1011 | 1100 | pensar, imaginar, ideia | ku lili |
| 153 | mulapisu | 1011 | 1101 | pizza | ku lili |
| 154 | omekapo | 1011 | 1110 | tchau, adeus, coma um bom peixe | ku lili |
| 155 | a (letra) | 1100 | 0001 | Letra A (para soletrar nomes) | Grupo 12 (1100) - Alfabeto |
| 156 | i (letra) | 1100 | 0010 | Letra I (para soletrar nomes) | Alfabeto |
| 157 | n (letra) | 1100 | 0011 | Letra N (para soletrar nomes) | Alfabeto |
| 158 | e (letra) | 1100 | 0100 | Letra E (para soletrar nomes) | Alfabeto |
| 159 | o (letra) | 1100 | 0101 | Letra O (para soletrar nomes) | Alfabeto |
| 160 | l (letra) | 1100 | 0110 | Letra L (para soletrar nomes) | Alfabeto |
| 161 | t (letra) | 1100 | 0111 | Letra T (para soletrar nomes) | Alfabeto |
| 162 | s (letra) | 1100 | 1000 | Letra S (para soletrar nomes) | Alfabeto |
| 163 | k (letra) | 1100 | 1001 | Letra K (para soletrar nomes) | Alfabeto |
| 164 | p (letra) | 1100 | 1010 | Letra P (para soletrar nomes) | Alfabeto |
| 165 | u (letra) | 1100 | 1011 | Letra U (para soletrar nomes) | Alfabeto |
| 166 | m (letra) | 1100 | 1100 | Letra M (para soletrar nomes) | Alfabeto |
| 167 | w (letra) | 1100 | 1101 | Letra W (para soletrar nomes) | Alfabeto |
| 168 | j (letra) | 1100 | 1110 | Letra J (para soletrar nomes) | Alfabeto |
| 169 | 0 | 1101 | 0001 | Algarismo 0 | Grupo 13 (1101) - Algarismos |
| 170 | 1 | 1101 | 0010 | Algarismo 1 | Algarismos (0-9) |
| 171 | 2 | 1101 | 0011 | Algarismo 2 | Algarismos (0-9) |
| 172 | 3 | 1101 | 0100 | Algarismo 3 | Algarismos (0-9) |
| 173 | 4 | 1101 | 0101 | Algarismo 4 | Algarismos (0-9) |
| 174 | 5 | 1101 | 0110 | Algarismo 5 | Algarismos (0-9) |
| 175 | 6 | 1101 | 0111 | Algarismo 6 | Algarismos (0-9) |
| 176 | 7 | 1101 | 1000 | Algarismo 7 | Algarismos (0-9) |
| 177 | 8 | 1101 | 1001 | Algarismo 8 | Algarismos (0-9) |
| 178 | 9 | 1101 | 1010 | Algarismo 9 | Algarismos (0-9) |
| 179 | [ACK] | 1101 | 1011 | Recebido / Entendido (pona!) | Controle de protocolo |
| 180 | [NAK] | 1101 | 1100 | Erro / Não entendido | Controle de protocolo |
| 181 | [REPEAT] | 1101 | 1101 | Repetir última mensagem | Controle de protocolo |
| 182 | [START] | 1101 | 1110 | Sincronização / Início de transmissão | Controle de protocolo |
| 183 | ! | 1110 | 0001 | Ponto de exclamação | Grupo 14 (1110) - Pontuação |
| 184 | : | 1110 | 0010 | Dois-pontos | Pontuação |
| 185 | ; | 1110 | 0011 | Ponto e vírgula | Pontuação |
| 186 | " | 1110 | 0100 | Aspas duplas | Pontuação |
| 187 | ' | 1110 | 0101 | Aspas simples / apóstrofo | Pontuação |
| 188 | ( | 1110 | 0110 | Abre parênteses | Pontuação |
| 189 | ) | 1110 | 0111 | Fecha parênteses | Pontuação |
| 190 | - | 1110 | 1000 | Hífen / traço | Pontuação |
| 191 | / | 1110 | 1001 | Barra | Pontuação |
| 192 | + | 1110 | 1010 | Sinal de mais / adição | Símbolo |
| 193 | = | 1110 | 1011 | Sinal de igual | Símbolo |
| 194 | . | 1110 | 1100 | Ponto final | Pontuação (194) |
| 195 | , | 1110 | 1101 | Vírgula | Pontuação (195) |
| 196 | ? | 1110 | 1110 | Ponto de interrogação | Pontuação (196) |

