# Send-audio-to-sound-device
This solution is simple and wonderful (and complete) for anyone hoping to easily make a soundboard-type script.

The purpose of this AHK script is to play soundfiles as input into your microphone while being able to still utilize your microphone for normal speech. This script can be used for various soundboard use-cases or help-desk type positions where repetitive speech is required (eg. "Thank you for calling, how may I help you?" or for example, leaving voicemails.

The soundfiles should be saved in the active directory and should be .wav. They will be played at random when pressing a hotkey of your choice, for the purpose of the script I utilized F1. 

Do not create a soundfile called cancel.wav. This is assigned to F2 so in the event that the soundfile that is playing through your input needs to be stopped, you can press this hotkey that actives cancel.wav, which doesn't exist. 

In order to allow utilization of the microphone while playing these soundfiles, your input/output configurations need to be altered. Follow the steps below to configure.

- Download Virtual Audio Cable from this page: https://vb-audio.com/Cable/index.htm
- Install Virtual Audio Cable – do NOT touch the software after the install
- Go to your Windows RECORDING DEVICES – do NOT touch your PLAYBACK DEVICES
- Double click on each Microphone you want to use, click the SOUNDS TAB, click LISTEN TO THIS DEVICE and set the drop down to "CABLE-Input (VB-Audio Virtual Cable)"
- In RECORDING DEVICES, right click on "CABLE-Input (VB-Audio Virtual Cable)" and set it to DEFAULT
- Make sure that the software yo are using is set to use either your Windows Default Recording Device OR "CABLE-Input (VB-Audio Virtual Cable)"


Once VAC is completed, you must configure autohotkey through windows sound settings to utilize it for input/output. 
Right click on the volume icon in the system tray and Open Sound Settings - scroll down and click App volume and device preferences.
If AutoHotkey doesn't show up on this list, create a script that plays a soundfile (you can use the one provided given you have soundfiles in your active directory, or just use the soundbeep command built into AHK, with a long enough duration that allows you to enable the input/output on the windows sound settings). Once "AutoHotkey Unicode 64-bit" shows up in the list of device preferences set its default output and input to VAC.

Occasionally, sound settings isn't in device preferences or the script randomly stops working. Play a sound, get it in the list, and then change the playback device to something else and it should begin working again.


If anyone wants to add to this code, it doesn't have any built in capability to show when a soundfile is playing. I currently use windows sound settings and watch the microphone input level bar that shows activity when a soundfile is playing, but it would be better if something was built into the script itself.
