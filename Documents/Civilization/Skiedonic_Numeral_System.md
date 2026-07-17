---
title: Skiedonic Numeral System
---

The Skiedonic numeral system is the counting system [[Skiedon|Skiedons]] use, written in [[Skiedonic_Language|Skiedonic words]] or with special glyphs. It is a **base-sixteen (hexadecimal) positional system**: every number is built from sixteen digit-words and a set of place markers, then spoken or written as a single hyphenated compound. This page covers how to read a Skiedonic number, count in Skiedonic, and construct numbers of your own.

It is thought that this counting system corresponds to the number of digits Skiedons have on their hands and feet combined: four fingers on two arms each, four toes on two legs each. Historical records do not exist to verify this.

![[NumberAtlas.png|500]]

## The Sixteen Digits

Every number is built from sixteen digits, valued 0 through 15.

| Value | Base-16 | Base Word | | Value | Base-16 | Base Word |
|---|---|---|---|---|---|---|
| 0 | 0 | nit | | 8 | 8 | tor'nit |
| 1 | 1 | ton | | 9 | 9 | tor'ton |
| 2 | 2 | rii | | 10 | A | tor'rii |
| 3 | 3 | eka | | 11 | B | tor'eka |
| 4 | 4 | tek | | 12 | C | tor'tek |
| 5 | 5 | qiva | | 13 | D | tor'qiva |
| 6 | 6 | zir | | 14 | E | tor'zir |
| 7 | 7 | kata | | 15 | F | avok |

The first eight digits (0–7) are unique roots. Digits **8 through 14** are formed with the prefix **tor'** attached to the root of the value eight less: 8 is `tor'` + `nit` (0), 9 is `tor'` + `ton` (1), and so on to 14, `tor'` + `zir` (6). 

The digit **15** breaks the pattern with its own word, **avok**, rather than the expected `tor'kata`. It is theorized that this form of the digit 15 was once in use, but it does not seem to be anymore.

In writing, Skiedons use these glyphs to refer to each value in its place, remarkably similar to how base-16 is written on Earth. 

![[num0.png|20]] `0x0`  ![[num1.png|20]] `0x1`  ![[num2.png|20]] `0x2`  ![[num3.png|20]] `0x3`  ![[num4.png|20]] `0x4`  ![[num5.png|20]] `0x5`  ![[num6.png|20]] `0x6`  ![[num7.png|20]] `0x7`  
![[num8.png|20]] `0x8`  ![[num9.png|20]] `0x9`  ![[num-a.png|20]] `0xA`  ![[num-b.png|20]] `0xB`  ![[num-c.png|20]] `0xC`  ![[num-d.png|20]] `0xD`  ![[num-e.png|20]] `0xE`  ![[num-f.png|20]] `0xF`  

## Place Values

Beyond 15, numbers gain positions, each worth sixteen times the one before it. Increasingly higher positions are always placed to the left of the number construction. Every position from the sixteens upward has its own **place-name**, which must have a **digit suffix** attached to it:


| Position | Value | Place-name |
|---|---|---|
| 16¹ | 16 | toni |
| 16² | 256 | rini |
| 16³ | 4,096 | eki |
| 16⁴ | 65,536 | teni |
| 16⁵ | 1,048,576 | qini |
| 16⁶ | 16,777,216 | ziri |
| 16⁷ | 268,435,456 | kai |

The place-names echo the digit roots one through seven: *toni* from *ton* (1), *rini* from *rii* (2), *eki* from *eka* (3), and onward. This means the name itself tells you the position: the first power uses the root of 1, the second the root of 2, up to the seventh with the root of 7.

## Digit Suffixes

In any position above the units digit, those requiring a place-name (16 or higher), the digit there is always marked by a **suffix** joined to the place-name. The suffix depends only on the digit's value:

| Digit | Suffix | | Digit | Suffix |
|---|---|---|---|---|
| 1 | t | | 8 | t'ni |
| 2 | 'ri | | 9 | t'to |
| 3 | 'eka | | A | t'ri |
| 4 | 'te | | B | t'eka |
| 5 | 'qi | | C | t'te |
| 6 | 'zi | | D | t'qi |
| 7 | 'ka | | E | t'zi |
| | | | F | t'vok |

A place-word is simply **place-name + suffix**, run together:

- `16 (0x10) one sixteen`: *toni* + *t* = **tonit**
- `80 (0x50) five sixteens`: *toni* + *'qi* = **toni'qi**
- `128 (0x80) eight sixteens`: *toni* + *t'ni* = **tonit'ni**
- `3,840 (0xF00) fifteen two-hundred-fifty-sixes`: *rini* + *t'vok* = **rinit'vok** 

As with the standalone digits, the suffixes for 8–15 carry a leading **t'**, the same "plus-eight" marker as *tor'*.

## Punctuation

- An **apostrophe** ( ' ) joins pieces *within* a single position: a place-name to its suffix, or the *tor'* marker to a root.
- A **hyphen** ( - ) separates one position from the next.

## Building a Number

1. Express the number in **base sixteen**.
	- `0x1D07E`
2. Write the **units digit** (the rightmost) as its plain digit-word.
	- `1D07` `tor'zir`
3. Turn every higher **nonzero** digit into a place-word: place-name + suffix.
	- `tenit` `ekit'qi` `0` `toni'ka` `tor'zir`
4. **Drop any zero digit**, whether in the middle of the number or trailing at the end.
	- `tenit` `ekit'qi` `toni'ka` `tor'zir`
5. Join the surviving words with hyphens, **largest position first**.
	- `tenit-ekit'qi-toni'ka-tor'zir`

A number below sixteen is a single digit, written as its digit-word alone.

## Reading a Number

Reverse the process:

1. Split the compound number at its **hyphens** into positions.
	- `tenit` `ekit'qi` `toni'ka` `tor'zir`
2. The word with no place-name, the last or rightmost one, is the **units** digit and can be directly translated to its corresponding base-16 digit.
	- `tenit` `ekit'qi` `toni'ka` `E`
3. For every other word, strip the place-name (*toni, rini, eki, …*) to find the position, then read the remaining suffix as the digit.
	- `(teni = 4)(t = 1)` `(eki = 3)(t'qi = D)` `(toni = 1)('ka = 7)` `E`
4. Find any missing zeroes dropped from the compound number, and convert to base-16.
	- `position 4: 1` `position 3: D` `position 2 missing: 0` `position 1: 7` `E`
	- `1` `D` `0` `7` `E`
5. Convert from base-16 to decimal. Multiply each digit by its place value and add.
	- `65,536(16⁴) * 1` + `4,096(16³) * 13(D)` + `256(16²) * 0` + `16(16¹) * 7` + `14(E)` = 118,910

## Examples

| Decimal | Base-16 | Skiedonic | Composition |
|---|---|---|---|
| 5 | 5 | qiva | single digit |
| 12 | C | tor'tek | tor' + 4 |
| 21 | 15 | tonit-qiva | 1×16 + 5 |
| 82 | 52 | toni'qi-rii | 5×16 + 2 |
| 255 | FF | tonit'vok-avok | 15×16 + 15 |
| 256 | 100 | rinit | 1×256 (trailing zeros dropped) |
| 3,855 | F0F | rinit'vok-avok | 15×256 + **0** + 15 (middle zero dropped) |
| 2,103 | 837 | rinit'ni-toni'eka-kata | 8×256 + 3×16 + 7 |

Reading the last in full, **rinit'ni-toni'eka-kata**:

- *rinit'ni* → place-name *rini* (256) + suffix *t'ni* (digit 8) → 8 × 256 = 2,048
- *toni'eka* → place-name *toni* (16) + suffix *'eka* (digit 3) → 3 × 16 = 48
- *kata* → no place-name, so the units digit → 7
- Total: 2,048 + 48 + 7 = **2,103**

## Counting from Zero

0 nit, 1 ton, 2 rii, 3 eka, 4 tek, 5 qiva, 6 zir, 7 kata, 8 tor'nit, 9 tor'ton, 10 tor'rii, 11 tor'eka, 12 tor'tek, 13 tor'qiva, 14 tor'zir, 15 avok, 16 tonit

After **avok** or 15 (0xF) the units roll over and the sixteens position opens. 16 (0x10) is **tonit**, 17 (0x11) **tonit-ton**, on to 31 (0x1F) **tonit-avok**, then 32 (0x20) **toni'ri**. The same rollover repeats at every power: 255 (0xFF) **tonit'vok-avok** advances to 256 (0x100) **rinit**.

## Infinity

A special word, **avokaii**, is used to denote an uncountable sum and seems to be used interchangably with the concept of infinity. It is an extension of *avok*, the greatest single digit.
