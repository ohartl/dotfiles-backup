# Windows

## Setup

### Fix Keyboard inputs via Putty

Change the "Terminal-type string" setting for every Putty Session you use.

![Screenshot: Putty Configuration](README.assets/1544618587289.png)

### Putty Theme

Execute `putty_solarized_dark.reg`

### Adding Pageant to Autostart

1. Enter `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup` in Explorer
2. Create a shortcut to your `pageant.exe`  (Might be deployed via your company)
3. Modify shortcut
   - Target: `"C:\....\pageant.exe" id_rsa.ppk second.ppk third.ppk`
   - Start In: `%HOMEPATH%\.ssh` (Path to your .ssh directory)

