#persistent

list1= aGreeting1.wav, aGreeting2.wav, aGreeting3.wav
listA:=strSplit(list1, ",") ; A = Array

list2= zFarewell1.wav, zFarewell2.wav, zFarewell3.wav, zFarewell4.wav
listB:=strSplit(list2, ",") ; B = Array

#F1::
	random, choice, 1, % listA.maxIndex() ; random between 1 and the total item count.
	response:=trim(listA[choice])
	SoundPlay, %response%
return
#F2::SoundPlay, cancel.wav
#Space::SoundPlay, cancel.wav
#F3::
	random, choice, 1, % listB.maxIndex() ; random between 1 and the total item count.
	response:=trim(listB[choice])
	SoundPlay, %response%
return
