

As root:

	adb shell am startservice -n com.termux/com.termux.app.TermuxService -a com.termux.service_execute -d /data/data/com.termux/files/home/.shortcuts/script.sh

As user:

	# Open a Termux shell
	adb shell am start -n com.termux/com.termux.app.TermuxActivity
	# Types in the path/script-name
	adb shell input text '/data/data/com.termux/files/home/.shortcuts/script.sh'
	# Presses the enter key
	adb shell input keyevent 66

Stopping any running processes:

	adb shell am force-stop com.termux

# termux-teamjedi
