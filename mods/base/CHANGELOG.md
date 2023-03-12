# SuperBLT Changelog

This lists the changes between different versions of the SuperBLT basemod,
which controls things like the mod update menu. Note this does not contain the
changes for the DLL.

## v1.1.6.0

- Add Polish translation - Alister The Hedgehog
- Fix the BLT menus not appearing after update 198 - Luffy - See !30
- Add macro support for custom localisations - DorentuZ - See !23
- Fixed not being able to unbind keybinds - Offyerrocker - See !28
- Removed misleading blt_version check, with the intention of later adding a minimum version field - Luffy - See !27
- Add an initial BLT asset manager, allowing the use of recoding Windows assets for Linux - ZNix
- Fix entry scripts running when their mod is disabled - ZNix
- Fix dependency checks for long chains - TdlQ
- Fix the XML tweaker appending nodes in reverse order - Snh20 - See !19
- Add error details to the XML tweaker - Snh20 - See !20 and !22
- Don't load native modules for a disabled mod - ZNix

## v1.1.5.1

- Improve formatting of the supermod.xml unknown tag name error
- Log errors encountered during asset loading
- Add automatic XML asset conversion
- Don't load assets for a disabled mod
- Menu items now also can have non-localized descriptions (thanks, Ludor)
- Don't apply an tweak multiple times under some conditions - Fixes #4

## v1.1.5.0

- Add graphical indications in the mod manager and mod info pages about the progress of mod update checking
- Fix mod updates with invalid URLs from getting stuck on the update check
- Block updates for mods under version control, to prevent developers' work from being deleted by accidentally updating
- Add hide mod icons and hide libraries options to the mod manager
- Fix wildcard scripts crashing when run
- Add BLTCustomComponent (thanks, Luffy - see !11)
- Add MenuHelper:AddComponent
- Correct grammar in the Swedish translation (thanks, BreakinBenny)
- Add Wren-based native module loading support
- Add entry scripts
- Add native module loading support
- Add exists function for custom localizations (thanks, Sebastian)

## v1.1.4.2

- Add automatic update support for the WSOCK32.dll hook option on Windows

## v1.1.4.1

- Fix dependency downloading
- Correct the XAudio world scale so stuff sounds the correct distance away

## v1.1.4.0

- Fix persist scripts, fixing #1 (see v1.1.1.0)
- When a player is not available, use the camera for correct audio positioning
- Add option to XAudioSource to allow music playback while the game is paused
- Add Swedish translation (thanks, BreakinBenny)

## v1.1.3.1

- Fix mod options not appearing in VR

## v1.1.3.0

- When available, use asynchronous hashing to vastly reduce the freeze when update data is received
- Improve loading times for the mod menu icons
- Add warning when assets have failed to load
- Add debugging mode to asset loader

## v1.1.2.0

- Don't run custom assets through the XML tweak system
- Add `AssetLoader:FreeAssetGroup` method, allowing mods to unload assets they have loaded

## v1.1.1.0

- Fix `mod:GetSuperMod()` always returning `nil`
- Fix custom update metadata being set to the wrong tag
- Sort mod options alphabetically
- Prevent persist scripts from running if their parent mod is disabled (Caused bug #1)
- Allow mouse wheel movements to be used for mod keybinds (thanks, TdlQ and BangL)
- Improve `Utils:GetCrosshairRay()` to be more reliable and fix several crash bugs (thanks, TdlQ and BangL)
- Fixed file locking on Windows causing mods to be deleted instead of updated (thanks, TdlQ and BangL)
- Fixed crashing when toggling fullscreen
- Add a getter to the BLTMod class to get the asset loader instance
- Add the global ModInstance variable, similar to ModPath
- Add substitution functionality to `supermod.xml` properties
- Clean up the `base_path` functionality of the asset loader

## v1.1.0.0

- Add XML-based Lua hook support, as an alternative to the `hooks` tag in `mod.txt`
- Improve error reporting in `supermod.xml`
- Add the SuperBLT asset loader

## v1.0.2.1

- Update details in `mod.txt` list it as SuperBLT rather than vanilla BLT

## v1.0.2.0

- Create downloads, logs and saves directories on startup if they are missing
- Move temporary directory for mod downloads to the downloads folder
- Fix `XAudioSource:is_relative` being named `is_looping`

## v1.0.1.0

- Add `relative` and `looping` properties to `XAudioSource`

## v1.0.0

- Add XAudio API
- Add custom updates system
- Add the XML Tweaker, and it's `supermod.xml` file

