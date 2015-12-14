GoSub, inc
InputBox, GM, Moon?, Moon?
ListLines, On
MsgBox, Press The Accent key (`` located above the Tab key) to roll a new character.`nPress the Esc key to bring up the exit dialogue.`nPress Shift and the Accent key (Shift+~) to save your character.
GoSub, Menu
ListLines, On
Return

ClearCharacter:
ListLines, Off
Age =
EyeColor =
Gender =
Deity =
HairColor =
HairLength =
Height =
JobClass =
Level =
N1 =
N2 =
Name =
Race =
Return

Menu:
ListLines, Off
GoSub, ClearCharacter
GUI, 1:Destroy
Gui, 1:+Label1 +AlwaysOnTop
Gui, 1:Add, Text, section, First Name:
Gui, 1:Add, Text, , Last Name:
Gui, 1:Add, Text, , Age:
Gui, 1:Add, Text, , Gender:
Gui, 1:Add, Text, , Race:
Gui, 1:Add, Text, , Height:
Gui, 1:Add, Text, , Eye Color:
Gui, 1:Add, Text, , Hair Color:
Gui, 1:Add, Text, , Hair Length:
Gui, 1:Add, Text, , Hair Style:
Gui, 1:Add, Text, , Job Class:
Gui, 1:Add, Text, , Deity:
Gui, 1:Add, Text, , Level:
Gui, 1:Add, Edit, ys +vN1
Gui, 1:Add, Edit, +vN2
Gui, 1:Add, Edit, +Number
Random, Age, 13, 200 ; New
Gui, 1:Add, UpDown, +vAge +Range13-200, %Age% ; New
Random, Gender, 1, 3 ; New
Gui, 1:Add, DropDownList, +vGender +Sort +Choose%Gender%, Female|Hermaphrodite|Male ; New
Random, Race, 1, 23 ; New
Gui, 1:Add, DropDownList, +vRace +Sort +Choose%Race%, Brownie|Centaur|Demonic|Dragonic|Dryad|Dwarven|Elvaan|Faerie|Faun|FeyFolk|Giant|Goblin|God|Human|Incubus|Minotaur|Reptilian|Orcish|Rift-Being|Pixie|Succubus|Vampire|Wulffen ; New
Gui, 1:Add, Edit, +vHeight
Gui, 1:Add, Edit, +vEyeColor
Gui, 1:Add, Edit, +vHairColor
Gui, 1:Add, Edit, +vHairLength
Gui, 1:Add, Edit, +vHairStyle
Gui, 1:Add, Edit, +vJobClass
Gui, 1:Add, Edit, +vDeity
Gui, 1:Add, Edit, +Number
Gui, 1:Add, UpDown, +vLv +Range1-10, 1
Gui, 1:Add, Button, gOk1, OK
Gui, 1:Show, AutoSize Center Restore, Character:
Gui, 1:Submit
Gui, 1:Show, AutoSize Center Restore, Character:
Return

Ok1:
Gui, 1:Submit
ListLines, Off
If N1 =
{
	MsgBox, The First Name field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If N2 =
{
	MsgBox, The Last Name field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Age =
{
	MsgBox, The Age field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Gender =
{
	MsgBox, The Gender field was detected as empty.`nPlease fill in the field before continuing.`nAnd please stop hacking my game.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Race =
{
	MsgBox, The Race field was detected as empty.`nPlease fill in the field before continuing.`nAnd please stop hacking my game.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Height =
{
	MsgBox, The Height field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If EyeColor =
{
	MsgBox, The Eye Color field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If HairColor =
{
	MsgBox, The Hair Color field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If HairLength =
{
	MsgBox, The Hair Length field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If HairStyle =
{
	MsgBox, The Hair style field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If JobClass =
{
	MsgBox, The Job Class field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Deity =
{
	MsgBox, The Deity field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else If Lv =
{
	MsgBox, The Level field was detected as empty.`nPlease fill in the field before continuing.
	Gui, 1:Show, AutoSize Center Restore, Character:
	Return
}
Else
{
	Sleep, 10
	Level = %Lv%
	Sleep, 10
	Lv = %Level%
	Sleep, 10
	Level =
	Sleep, 10
	If Lv is Number
	{
		Level = %Lv%
		Sleep, 10
		Round (Level, 0)
		Lv =
	}
	Else
	{
		Gui, 1:Show, AutoSize Center Restore, Character:
		MsgBox, The Level field was detected as something besides a number.`n%Lv%`nPlease fill in the field properly before continuing.
		Return
	}
	Name = %N1% %N2%
	Loop 5
	{
		StringReplace, Height, Height, `", `"%A_space%, all ; New
		StringReplace, Height, Height, `', `'%A_space%, all ; New
		StringReplace, Height, Height, %A_space%%A_space%, %A_space%, all
		StringReplace, Height, Height, Feet, `', all
		StringReplace, Height, Height, Foot, `', all
		StringReplace, Height, Height, Ft, `', all
		StringReplace, Height, Height, Inches, `", all ; "
		StringReplace, Height, Height, Inch, `", all ; "
		StringReplace, Height, Height, In, `", all ; "
		StringReplace, Height, Height, ., , all
		StringReplace, Height, Height, %A_space%`', `', all
		StringReplace, Height, Height, %A_space%`", `", all
		StringReplace, Height, Height, `"`", `", all ; "
		StringReplace, Height, Height, `'`', `', all
	}
	Clean = %Height% ; New
	Height = %Clean% ; New
	Clean = ; New
	Loop 5
	{
		StringReplace, HairLength, HairLength, `", `"%A_space%, all ; New
		StringReplace, HairLength, HairLength, `', `'%A_space%, all ; New
		StringReplace, HairLength, HairLength, %A_space%%A_space%, %A_space%, all
		StringReplace, HairLength, HairLength, Feet, `', all
		StringReplace, HairLength, HairLength, Foot, `', all
		StringReplace, HairLength, HairLength, Ft, `', all
		StringReplace, HairLength, HairLength, Inches, `", all ; "
		StringReplace, HairLength, HairLength, Inch, `", all ; "
		StringReplace, HairLength, HairLength, In, `", all ; "
		StringReplace, HairLength, HairLength, ., , all
		StringReplace, HairLength, HairLength, %A_space%`', `', all
		StringReplace, HairLength, HairLength, %A_space%`", `", all
		StringReplace, HairLength, HairLength, `"`", `", all ; "
		StringReplace, HairLength, HairLength, `'`', `', all
	}
	Clean = %HairLength% ; New
	HairLength = %Clean% ; New
	Clean = ; New
	ListLines, On
	GoSub, Start
	ListLines, Off
}
Return

Start:
ListLines, Off
GoSub, Clear
ListLines, On
GoSub, Moon
ListLines, On
GoSub, Stats
ListLines, On
GoSub, Final
ListLines, Off
Return

Moon:
ListLines, Off
Random, R1, 1, 10
Random, R2, 1, 10
Random, R3, 1, 10
If R1 > 4
{
	If R2 > 6
	{
		If R3 > 7
		{
			Moon = Blessed
			Return
		}
		Else If R3 < 8
		{
			Moon = Strained
			Return
		}
		Else
		{
			MsgBox, Error!, Critical Error during Moon Calculations!`nRestarting the Script.`nMoon = %Moon%`nR1 = %R1%`nR2 = %R2%`nR3 = %R3%
			GoSub, Clear
			#SingleInstance Force
			Reload
		}
	}
	Else If R2 < 7
	{
		Moon = Normal
		Return
	}
	Else
	{
		MsgBox, Error!, Critical Error during Moon Calculations!`nRestarting the Script.`nMoon = %Moon%`nR1 = %R1%`nR2 = %R2%`nR3 = %R3%
		GoSub, Clear
		#SingleInstance Force
		Reload
	}
	Return
}
Else If R1 < 5
{
	Moon = Bad
	Return
}
Else
{
	MsgBox, Error!, Critical Error during Moon Calculations!`nRestarting the Script.`nMoon = %Moon%`nR1 = %R1%`nR2 = %R2%`nR3 = %R3%
	GoSub, Clear
	#SingleInstance Force
	Reload
}
Return

Stats:
ListLines, Off
If Moon = Bad
{
	GoSub, BadMoon
}
Else If Moon = Normal
{
	GoSub, NormalMoon
}
Else If Moon = Strained
{
	GoSub, StrainedMoon
}
Else If Moon = Blessed
{
	GoSub, BlessedMoon
}
Else
{
	MsgBox, Error!, Critical Error during Stats Calculations!`nRestarting the Script.`nMoon = %Moon%`nR1 = %R1%`nR2 = %R2%`nR3 = %R3%
	GoSub, Clear
	#SingleInstance Force
	Reload
}
If GM is integer
{
	If GM = 1
	{
		GoSub, BadMoon
	}
	Else If GM = 2
	{
		GoSub, NormalMoon
	}
	Else If GM = 3
	{
		GoSub, StrainedMoon
	}
	Else If GM = 4
	{
		GoSub, BlessedMoon
	}
	Else If GM = 5
	{
		Moon = Blessed
		M1 = 200
		M2 = 220
		HPMin = 130
		HPMax = 140
		FMax = 140
		FMin = 120
		StMax = 14
		StMin = 12
		AMax = 14
		AMin = 12
		SpMax = 14
		SpMin = 12
		PMax = 14
		PMin = 12
		ShMax = 14
		ShMin = 12
		CMax = 14
		CMin = 12
		WMax = 14
		WMin = 12
		LMax = 8
		LMin = 7
	}
}
Round (Level, 0)
If Level > 1
{
	Lv = 1
	While Lv < Level
	{
		HPMin *= 1.2
		HPMax *= 1.3
		FMin *= 1.2
		FMax *= 1.3
		StMin *= 1.2
		StMax *= 1.3
		AMin *= 1.2
		AMax *= 1.3
		SpMin *= 1.2
		SpMax *= 1.3
		PMin *= 1.2
		PMax *= 1.3
		ShMin *= 1.2
		ShMax *= 1.3
		CMin *= 1.2
		CMax *= 1.3
		WMin *= 1.2
		WMax *= 1.3
		LMin *= 1.0
		LMax *= 1.1
		Lv += 1
		GoSub, Round
	}
}
Random, HP, %HPMin%, %HPMax%
Random, F, %FMin%, %FMax%
Random, St, %StMin%, %StMax%
Random, A, %AMin%, %AMax%
Random, Sp, %SpMin%, %SpMax%
Random, P, %PMin%, %PMax%
Random, Sh, %ShMin%, %ShMax%
Random, C, %CMin%, %CMax%
Random, W, %WMin%, %WMax%
Random, L, %LMin%, %LMax%
GoSub, Money
BR += 0
FF += 0
Gold += 0
PG += 0
PM += 0
Slaves += 0
GoSub, Round
Money = %Money%`nBlood Rubies: %BR%`nFey Flowers: %FF%`nGold: %Gold%`nPrecious Gems: %PG%`nPrecious Metals: %PM%`nSlaves: %Slaves%
Lv =
Return

Round:
ListLines, Off
Round (A, 0)
Round (AMax, 0)
Round (AMin, 0)
Round (BR, 0)
Round (C, 0)
Round (CMax, 0)
Round (CMin, 0)
Round (Exp, 0)
Round (F, 0)
Round (FF, 0)
Round (FMax, 0)
Round (FMin, 0)
Round (Gold, 0)
Round (HP, 0)
Round (HPMax, 0)
Round (HPMin, 0)
Round (L, 0)
Round (Level, 0)
Round (LMax, 0)
Round (LMin, 0)
Round (P, 0)
Round (PG, 0)
Round (PM, 0)
Round (PMax, 0)
Round (PMin, 0)
Round (Sh, 0)
Round (ShMax, 0)
Round (ShMin, 0)
Round (Slaves, 0)
Round (Sp, 0)
Round (SpMax, 0)
Round (SpMin, 0)
Round (St, 0)
Round (StMax, 0)
Round (StMin, 0)
Round (W, 0)
Round (WMax, 0)
Round (WMin, 0)
SetFormat, Float, 01.0
SetFormat, Integer, D
A += 0
AMax += 0
AMin += 0
BR += 0
C += 0
CMax += 0
CMin += 0
Exp += 0
F += 0
FF += 0
FMax += 0
FMin += 0
Gold += 0
HP += 0
HPMax += 0
HPMin += 0
L += 0
Level += 0
LMax += 0
LMin += 0
P += 0
PG += 0
PM += 0
PMax += 0
PMin += 0
Sh += 0
ShMax += 0
ShMin += 0
Slaves += 0
Sp += 0
SpMax += 0
SpMin += 0
St += 0
StMax += 0
StMin += 0
W += 0
WMax += 0
WMin += 0
SetFormat, Float, 01.6
SetFormat, Integer, D
Return

Money:
ListLines, Off
; Money: BR|FF|Gold|PG|PM|Slaves
; Races: Brownie|Centaur|Demonic|Dragonic|Dryad|Dwarven|Elvaan|Faerie|Faun|FeyFolk|Giant|Goblin|God|Human|Incubus|Minotaur|Reptilian|Orcish|Rift-Being|Pixie|Possessed-Being|Succubus|Vampire|Wulffen
If Race = Brownie
{
GoSub, FF
FF *= 2
GoSub, PM
PM *= 0.5
GoSub, Slaves
Slaves *= 0.5
}
If Race = Centaur
{
GoSub, FF
FF *= 2
GoSub, PG
PG *= 2
GoSub, Slaves
If Gender = Hermaphrodite
{
	Slaves *= 4
	}
Else If Gender = Male
{
	Slaves *= 0.5
	}
Else If Gender = Female
{
	Slaves *= 2
	}
}
If Race = Demonic
{
GoSub, Gold
GoSub, BR
BR *= 2.5
GoSub, PG
PG *= 2.5
GoSub, Slaves
Slaves *= 2
}
If Race = Dragonic
{
GoSub, BR
BR *= 2
GoSub, FF
FF *= 1
GoSub, PG
PG *= 1.5
GoSub, Slaves
Slaves *= 1.5
}
If Race = Dryad
{
GoSub, FF
FF *= 4
}
If Race = Dwarven
{
GoSub, BR
BR *= 1.5
GoSub, Gold
Gold *= 1.5
GoSub, PG
PG *= 1.5
GoSub, PM
PM *= 2
}
If Race = Elvaan
{
GoSub, BR
BR *= 1.75
GoSub, FF
FF *= 2
GoSub, Gold
Gold *= 0.5
GoSub, PG
PG *= 2
GoSub, PM
PM *= 1.5
}
If Race = Faerie
{
GoSub, FF
FF *= 2
GoSub, Gold
Gold *= 0.5
}
If Race = Faun
{
GoSub, FF
FF *= 2.5
GoSub, Gold
Gold *= 2
GoSub, PG
PG *= 2
GoSub, Slaves
Slaves *= 1
}
If Race = FeyFolk
{
GoSub, FF
FF *= 2
GoSub, PG
PG *= 1
GoSub, Slaves
Slaves *= 0.5
}
If Race = Giant
{
GoSub, BR
BR *= 0.5
GoSub, FF
FF *= 0.5
GoSub, Gold
Gold *= 0.5
GoSub, PG
PG *= 0.5
GoSub, PM
PM *= 0.5
GoSub, Slaves
Slaves *= 2
}
If Race = Goblin
{
GoSub, Gold
Gold *= 1.5
GoSub, PG
PG *= 1.5
GoSub, PM
PM *= 1.5
}
If Race = God
{
GoSub, PG
PG *= 10
GoSub, PM
PM *= 5
GoSub, Slaves
Slaves *= 5
}
If Race = Human
{
GoSub, Gold
GoSub, PG
GoSub, PM
GoSub, Slaves
}
If Race = Incubus
{
GoSub, BR
BR *= 0.5
GoSub, FF
FF *= 0.5
GoSub, Gold
Gold *= 0.5
GoSub, PG
PG *= 1
GoSub, PM
PM *= 0.75
GoSub, Slaves
Slaves *= 2
}
If Race = Minotaur
{
GoSub, BR
BR *= 2
GoSub, PG
PG *= 1.5
GoSub, Slaves
Slaves *= 2
}
If Race = Reptilian
{
GoSub, Gold
Gold *= 1
GoSub, PG
PG *= 1.5
GoSub, PM
PM *= 1.5
}
If Race = Orcish
{
GoSub, BR
BR *= 2
GoSub, PM
PM *= 0.5
GoSub, Slaves
Slaves *= 1
}
If Race = Rift-Being
{
GoSub, BR
BR *= 2
GoSub, PG
PG *= 2
GoSub, PM
PM *= 5
GoSub, Slaves
Slaves *= 2
}
If Race = Pixie
{
GoSub, FF
FF *= 3
GoSub, Gold
Gold *= 0.5
GoSub, Slaves
Slaves *= 1
}
If Race = Possessed-Being
{
GoSub, Slaves
Slaves *= 3
}
If Race = Succubus
{
GoSub, Slaves
Slaves *= 5
}
If Race = Vampire
{
GoSub, BR
BR *= 5
GoSub, Gold
Gold *= 5
GoSub, PG
PG *= 5
GoSub, Slaves
Slaves *= 0.5
}
If Race = Wulffen
{
GoSub, BR
BR *= 2
GoSub, PG
PG *= 1.5
GoSub, PM
PM *= 2
GoSub, Slaves
Slaves *= 0.5
}
Return

BR:
ListLines, Off
Random, BR, M1, M2
Return

FF:
ListLines, Off
Random, FF, M1, M2
Return

Gold:
ListLines, Off
Random, Gold, M1, M2
Return

PG:
ListLines, Off
Random, PG, M1, M2
Return

PM:
ListLines, Off
Random, PM, M1, M2
Return

Slaves:
ListLines, Off
Random, Slaves, M1, M2
Slaves /= 10
Return

Final:
ListLines, Off
GoSub, Round
Readout =
Setup = Your new Character's stats are as follows:`nName: %Name%`nAge: %Age%`nGender: %Gender%`nRace: %Race%`nHeight: %Height%`nEye Color: %EyeColor%`nHair Color: %HairColor%`nHair Length: %HairLength%`nHair Style: %HairStyle%`nJob Class: %JobClass%`nDeity: %Deity%`nBio{`n%A_Tab%}`nExp: %Exp% / 1,000`nLevel: %Level%`nYou were born under a %Moon% Moon.%Money%`nHP: %HP%`nFatigue: %F%`nStrength: %St%`nAgility: %A%`nSpeed: %Sp%`nPerception: %P%`nSharpness: %Sh%`nCharisma: %C%`nWill: %W%`nLuck: %L%
Readout = %Setup%
Setup =
ListLines, On
MsgBox, %Readout%
ListLines, Off
Return

*+~::
ListLines, Off
Suspend, On
GoSub, Save
Suspend, Off
ListLines, Off
Return

Save:
ListLines, Off
If Readout !=
{
	BlockInput, On
	FileDelete, %A_ScriptDir%\Character - %N2% - %N1%.txt ; New
	FileAppend, %Readout%, %A_ScriptDir%\Character - %N2% - %N1%.txt ; New
	Run, %A_ScriptDir%\Character - %N2% - %N1%.txt ; New
 ;	Old, replaced by 3 lines
 ;	{
 ;	Run C:\Windows\Notepad.exe
 ;	WinWait, Untitled - Notepad
 ;	WinActivate, Untitled - Notepad
 ;	WinWaitActive, Untitled - Notepad
 ;	WinMaximize, Untitled - Notepad
 ;	StringReplace, copy, Readout, `n, {Enter}
 ;	Send, %copy%{LAlt}FA
 ;	copy =
 ;	Sleep, 2000
 ;	Send, %A_ScriptDir%\Character - %N2% - %N1%.txt{Enter}
 ;	}
	BlockInput, Off
}
Return

Clear:
ListLines, Off
A =
AMax =
AMin =
BR =
C =
CMax =
CMin =
copy =
Exp =
F =
FF =
FMax =
FMin =
Gold =
HP =
HPMax =
HPMin =
L =
LMax =
LMin =
Lv =
Money =
Moon =
P =
PG =
PM =
PMax =
PMin =
Readout =
Sh =
ShMax =
ShMin =
Slaves =
Sp =
SpMax =
SpMin =
St =
StMax =
StMin =
W =
WMax =
WMin =
Return

BadMoon:
ListLines, Off
M1 = 60
M2 = 100
HPMin = 60
HPMax = 80
Random, FMax, 60, 80
Random, FMin, 20, 30
Random, StMax, 6, 8
Random, StMin, 2, 3
Random, AMax, 6, 8
Random, AMin, 2, 3
Random, SpMax, 6, 8
Random, SpMin, 2, 3
Random, PMax, 6, 8
Random, PMin, 2, 3
Random, ShMax, 6, 8
Random, ShMin, 2, 3
Random, CMax, 6, 8
Random, CMin, 2, 3
Random, WMax, 6, 8
Random, WMin, 2, 3
Random, LMax, 4, 6
Random, LMin, 1, 2
Return

NormalMoon:
ListLines, Off
M1 = 100
M2 = 140
HPMin = 80
HPMax = 120
Random, FMax, 80, 120
Random, FMin, 30, 50
Random, StMax, 8, 12
Random, StMin, 3, 5
Random, AMax, 8, 12
Random, AMin, 3, 5
Random, SpMax, 8, 12
Random, SpMin, 3, 5
Random, PMax, 8, 12
Random, PMin, 3, 5
Random, ShMax, 8, 12
Random, ShMin, 3, 5
Random, CMax, 8, 12
Random, CMin, 3, 5
Random, WMax, 8, 12
Random, WMin, 3, 5
Random, LMax, 6, 8
Random, LMin, 2, 3
Return

StrainedMoon:
ListLines, Off
M1 = 140
M2 = 180
HPMin = 100
HPMax = 120
Random, FMax, 100, 120
Random, FMin, 60, 80
Random, StMax, 10, 12
Random, StMin, 6, 8
Random, AMax, 10, 12
Random, AMin, 6, 8
Random, SpMax, 10, 12
Random, SpMin, 6, 8
Random, PMax, 10, 12
Random, PMin, 6, 8
Random, ShMax, 10, 12
Random, ShMin, 6, 8
Random, CMax, 10, 12
Random, CMin, 6, 8
Random, WMax, 10, 12
Random, WMin, 6, 8
Random, LMax, 5, 7
Random, LMin, 3, 4
Return

BlessedMoon:
ListLines, Off
M1 = 180
M2 = 220
HPMin = 120
HPMax = 140
Random, FMax, 120, 140
Random, FMin, 80, 100
Random, StMax, 12, 14
Random, StMin, 8, 10
Random, AMax, 12, 14
Random, AMin, 8, 10
Random, SpMax, 12, 14
Random, SpMin, 8, 10
Random, PMax, 12, 14
Random, PMin, 8, 10
Random, ShMax, 12, 14
Random, ShMin, 8, 10
Random, CMax, 12, 14
Random, CMin, 8, 10
Random, WMax, 12, 14
Random, WMin, 8, 10
Random, LMax, 6, 8
Random, LMin, 4, 5
Return

inc:
#include %A_ScriptDir%\Inc\Inc.ahk
return
