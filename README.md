# termux-teamjedi

This is an apt repository for termux that contains the packages that haven't been merged back into termux-packages mainline yet.

The packages here can be installed by:

    curl https://teamjedi.github.io/termux-teamjedi/install.sh | bash

An URL shortened version of this is available here:

    curl -L https://goo.gl/VnE1N3 | bash

This can be run via ADB as well:

If your adb is SDK 23+:

    adb shell am start -n com.termux/com.termux.app.TermuxActivity
    adb shell "input keyboard text 'curl -L https://goo.gl/VnE1N3 | bash'"
    adb shell input keyevent 66

If your adb is from SDK older than 23:

    adb shell am start -n com.termux/com.termux.app.TermuxActivity
    adb shell "input keyboard text 'curl%s-L%shttps://goo.gl/VnE1N3%s|%sbash'"
    adb shell input keyevent 66

