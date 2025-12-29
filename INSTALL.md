# Installation Guide
## The Land of Wolves RP - Horse & Wagon Sharing Script

**Thank you for using our script!**

This guide will help you install and configure the Horse & Wagon Sharing Script on your RedM server.

---

## 📦 Quick Installation (3 Steps)

### Step 1: Extract Files
1. Extract the downloaded ZIP file
2. You should see a folder named `lxr-horse-share-ride`
3. Place this folder in your server's `resources` directory

**File structure:**
```
your-server/
└── resources/
    └── lxr-horse-share-ride/
        ├── fxmanifest.lua
        ├── config.lua
        ├── LICENSE
        ├── README.md
        ├── client/
        │   └── client.lua
        └── server/
            └── server.lua
```

### Step 2: Add to server.cfg
Open your `server.cfg` file and add this line:

```cfg
ensure lxr-horse-share-ride
```

**Where to add it:**
- Add it anywhere after `ensure mapmanager`
- Add it with your other custom resources
- Make sure it's NOT inside any quotes

### Step 3: Configure & Restart
1. Edit `resources/lxr-horse-share-ride/config.lua` (see Configuration section below)
2. Restart your server or run: `refresh` then `ensure lxr-horse-share-ride`

**✅ Installation Complete!**

---

## ⚙️ Configuration Guide

Open `config.lua` and customize these settings:

### Basic Settings (Most Important)

```lua
-- Can players steal horses from NPCs?
Config.CanStealToNPC = true  -- true = yes, false = no

-- Can players steal horses from other players?
Config.CanStealToPlayer = false  -- true = yes, false = no (recommended)
```

**Recommendation:**
- Set `CanStealToNPC = true` for more freedom
- Set `CanStealToPlayer = false` to protect player horses

### Language Settings

Change the language displayed to players:

```lua
Config.Language = 'en'  -- Change 'en' to your language code
```

**Available Languages:**
- `'en'` - English
- `'es'` - Spanish (Español)
- `'fr'` - French (Français)
- `'de'` - German (Deutsch)
- `'pt'` - Portuguese (Português)
- `'it'` - Italian (Italiano)
- `'pl'` - Polish (Polski)
- `'ru'` - Russian (Русский)

### Keybind Settings

Change the key players use to mount horses:

```lua
Config.MountKey = 0x26E9DC00  -- E Key (default)
Config.MountKeyName = "E"     -- Display name
```

**Popular alternatives:**
```lua
-- F Key
Config.MountKey = 0xB2F377E8
Config.MountKeyName = "F"

-- G Key
Config.MountKey = 0x760A9C6F
Config.MountKeyName = "G"
```

[Full key list available in documentation]

### Advanced Settings (Optional)

```lua
-- Performance tuning (default values are optimal)
Config.CacheUpdateInterval = 500      -- How often to check player state (ms)
Config.PassengerCheckInterval = 2000  -- How often to check for dismount (ms)
Config.MaxInteractionDistance = 3.0   -- Max distance to mount (units)

-- Features
Config.EnablePassengerNotifications = true  -- Notify driver of passengers
Config.Debug = false                        -- Enable debug mode (for troubleshooting)
```

**Note:** Only change advanced settings if you experience issues or want to fine-tune performance.

---

## 🎮 How It Works (For Your Players)

### Mounting as Driver
1. Approach an **empty** horse or wagon
2. Press **E** (or your configured key)
3. Player becomes the driver ✅

### Mounting as Passenger
1. Approach an **occupied** horse or wagon
2. Press **E** (or your configured key)
3. Player mounts as a passenger ✅

### Dismounting
- Press **E** again or move away from the mount

**That's it!** No commands needed, no complicated mechanics.

---

## 🔧 Troubleshooting

### Script Not Starting?

**Check 1: Resource Name**
- Folder MUST be named `lxr-horse-share-ride` (exact match)
- No spaces, no extra characters

**Check 2: server.cfg**
```cfg
ensure lxr-horse-share-ride  # Correct
ensure lxr_horse_share_ride  # Wrong - underscore instead of dash
```

**Check 3: Console Errors**
- Start your server and look for error messages in the console
- If you see errors, note them and check the support section

### Players Can't Mount as Passengers?

**Solution 1: Check Config**
```lua
Config.CanStealToPlayer = false  -- Must be false
```

**Solution 2: Verify Driver is Present**
- The horse/wagon must have someone already riding it
- Empty mounts work normally (driver seat)

**Solution 3: Check Distance**
- Player must be close to the horse/wagon
- Default max distance is 3.0 units

### Performance Issues?

**This script runs at 0.00ms by default. If you see performance issues:**

1. Check for conflicts with other horse-related scripts
2. Disable other horse scripts temporarily to test
3. Ensure you're running latest FiveM artifacts
4. Enable debug mode to see what's happening:
   ```lua
   Config.Debug = true
   ```

### Script Works But Language is Wrong?

**Solution:**
```lua
Config.Language = 'en'  -- Change 'en' to your language code
```

Available: en, es, fr, de, pt, it, pl, ru

---

## 📊 Admin Commands (Debug Mode Only)

Enable debug mode first:
```lua
Config.Debug = true
```

Then use these commands in server console:

```
horseshare:status  -- Show all active mounts and passengers
horseshare:clear   -- Clear all passenger data (emergency reset)
```

**Note:** These commands only work from server console, not in-game.

---

## 🆘 Getting Support

### Before Requesting Support

1. Check this installation guide thoroughly
2. Verify your configuration is correct
3. Check for console errors
4. Try with debug mode enabled
5. Test with other scripts disabled

### How to Get Help

If you still have issues:

1. **Website:** Visit www.wolves.land
2. **Discord:** Join our Discord (link on website)
3. **Documentation:** Read the full README.md file
4. **Contact:** Use the contact form on our website

### What to Include in Support Requests

Please provide:
- Script version (1.0.0)
- Server artifacts version
- Full console errors (if any)
- Your config.lua settings
- Steps to reproduce the issue
- Screenshots/videos if applicable

---

## 🎯 Framework Compatibility

**This script works with ALL frameworks automatically!**

No configuration needed for:
- ✅ LXRCore
- ✅ RSG-Core
- ✅ VORP
- ✅ RedEM:RP
- ✅ QBCore
- ✅ Standalone (no framework)
- ✅ Any other RedM framework

The script automatically detects and works with your setup.

---

## 📈 Performance Information

You can expect:
- **Client CPU:** 0.00ms idle, 0.01ms active
- **Server CPU:** 0.00ms (event-driven only)
- **Memory Usage:** Less than 0.5 MB
- **Network Traffic:** Minimal (event-based only)

This script is production-tested and optimized for busy servers.

---

## 🔄 Updates

### How to Update

When a new version is released:

1. Download the new version
2. **Backup your config.lua**
3. Replace all files EXCEPT config.lua
4. Check if there are new config options to add
5. Restart your server

**Important:** Always backup your config before updating!

### Checking for Updates

- Check our website: www.wolves.land
- Join our Discord for update notifications
- Watch the GitHub repository (if available)

---

## 📝 Additional Resources

- **Full Documentation:** README.md (included)
- **Configuration Examples:** Check config.lua comments
- **Key Codes List:** [FiveM Docs](https://docs.fivem.net/docs/game-references/controls/)
- **Support Website:** www.wolves.land

---

## ⭐ Thank You!

Thank you for choosing The Land of Wolves RP scripts!

If you're happy with this script, please consider:
- Leaving a review ⭐
- Checking out our other scripts
- Joining our community

**Enjoy your enhanced horse sharing system!** 🐎✨

---

**The Land of Wolves RP**  
www.wolves.land  
RedM Scripts & Resources

Version: 1.0.0
