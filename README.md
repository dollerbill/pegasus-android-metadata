# Work in progress, only for testing purposes!

<img src="https://github.com/dragoonDorise/RP-epic-noir/blob/main/screenshots/hero-odin.jpg?raw=true">

## Android - Pegasus metadata pack

Component used on Pegasus Installer for configuration & installation automation for Pegasus Frontend.

Website: [Pegasus Installer](https://www.pegasus-installer.com)

## Pegasus Metadata

This pack offers support for the following systems with their respective emulators, you'll need to download them on your own.

| System                    | Emulator                             |
| ------------------------- | ------------------------------------ |
| 3DO                       | Retroarch 1.9 Opera core             |
| Atari 2600                | Retroarch 1.9 Stella core            |
| Atari Lynx                | Retroarch 1.9 Beetle Lynx core       |
| DooM                      | Retroarch 1.9 PrBoom core            |
| GameBoy                   | Retroarch 1.9 Gambatte core          |
| GameBoy Color             | Retroarch 1.9 Gambatte core          |
| GameBoy Advance           | Retroarch 1.5 mGBA core              |
| Gamecube                  | Dolphin                              |
| Dos                       | Retroarch 1.9 DOSBox core            |
| Dreamcast                 | Reddream                             |
| Final Burn Alpha          | Retroarch 1.9 Fba 2020 core          |
| Final Burn Neo            | Retroarch 1.9 Fbn core               |
| Mame 2003 Plus            | Retroarch 1.9 Mame 2003 Plus core    |
| Master System             | Retroarch 1.9 Genesis Plus GX core   |
| Neo Geo                   | Retroarch 1.9 Fba 2020 Neo Geo core  |
| Neo Geo CD                | Retroarch 1.9 Fbn core               |
| Neo Geo Pocket & Color    | Retroarch 1.9 Beetle NeoPop          |
| Nintendo DS               | Drastic                              |
| Nintendo 3DS              | Citra                                |
| Nintendo NES              | Retroarch 1.9 Nestopia core          |
| Nintendo 64               | Mupen64plus FZ                       |
| Nintendo Gamecube         | Mupen64plus FZ                       |
| PC engine                 | Retroarch 1.9 Mednafen pce fast core |
| Playstation               | Retroarch 1.9 PCSX Rearmed core      |
| Playstation 2             | Aether SX2                           |
| Pokemon Mini              | Retroarch 1.9 PokeMini core          |
| PSP                       | PPSSPP                               |
| ScummVM                   | Retroarch 1.9 Scummvm core           |
| Sega 32X                  | Retroarch 1.9 PicoDrive core         |
| Sega CD                   | Retroarch 1.9 Genesis Plus GX core   |
| Sega Game Gear            | Retroarch 1.9 Genesis Plus GX core   |
| Sega Genesis / Mega Drive | Retroarch 1.9 Genesis Plus GX core   |
| Sega Saturn               | Yaba Sanshiro 2 Pro                  |
| Super Nintendo            | Retroarch 1.9 Snes9x Current core    |
| Wonderswan & Color        | Retroarch 1.9 Beetle Cygne core      |

Keep in mind not all Android Handhelds are powerful enough to run all those systems. You can check your device compatibility in these Community maintained guides:

[RG552 Compatibility List](https://tinyurl.com/RG552GameSettings)

[Retroid Pocket 2+ Compatibility List](https://tinyurl.com/RP2PlusGameSettings)

[Powkiddy X18S Compatibility List](https://tinyurl.com/X18SGameSettings)

## Retroarch configuration

We're also including a Retroarch configuration preset that will do the following:

- Set the right aspect ratio (1:1) for Handhelds & Mame Systems
- Set the right aspect ratio (4:3 )for SNES and NES
- Install LCD3 Shader for all Handhelds
- Hide the load content splash screen
- AutoSave and AutoLoad State
- Bezel overlays
- 351Elec Hotkeys [Cheatsheet](https://ia802301.us.archive.org/17/items/351-elec-shortcuts-cheatsheet_20210809/351ELEC%20shortcuts%20cheatsheet.pdf)

This configuration is based on [RGC RG552 Linux Setup](https://retrogamecorps.com/2021/12/27/anbernic-rg552-linux-setup-guide/)

# Installing this pack

Just follow the steps on [Pegasus Installer Website](https://www.pegasus-installer.com)

# Some Tips

There are some some tips that can help you manage your collection Better.

- Use CHD format
- Clean your Mame roms
- Scrape your own artwork

## Use CHD format

Stop using ISO format for CD systems, you can save tons of space using the CHD format.

1 Download [CHDMAN](https://archive.org/download/chdman/CHDMAN.zip)
And put it into your ISO rom folder

2 Create a convert.bat file in the very same folder and copy this code inside that create.bat file

    for /r %%i in (_.cue, _.gdi, \*.iso) do chdman createcd -i "%%i" -o "%%~ni.chd"

3 Execute create.bat, in some minutes/hours you'll see how your old ISO roms are now in CHD format and that they now take a lot less space.

## Clean up your Mame roms

Mame romsets are usually full of clones and roms that we don't want, follow this [guide](https://www.youtube.com/watch?v=GZfoOTckURA) to fix that.

Thanks to:

Duimon for the [Reatroarch Overlays](https://github.com/Duimon/Retroarch-Overlays)
ÁlvaroMG for [Reatroarch Overlays](https://forums.launchbox-app.com/files/file/1180-handhelds-overlays-designed-by-álvaromg/)
Retro Game Corps [RG552 Linux Setup](https://retrogamecorps.com/2021/12/27/anbernic-rg552-linux-setup-guide/)
