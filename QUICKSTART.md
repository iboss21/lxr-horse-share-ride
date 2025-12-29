# Quick Start Guide
## The Land of Wolves RP - Horse & Wagon Sharing Script

**For Server Administrators**

---

## ⚡ 30-Second Install

```bash
# 1. Copy to resources folder
cp -r lxr-horse-share-ride /path/to/your/server/resources/

# 2. Add to server.cfg
echo "ensure lxr-horse-share-ride" >> server.cfg

# 3. Restart server
# Done!
```

---

## 🎯 Essential Config (config.lua)

```lua
-- Most important settings:

Config.CanStealToNPC = true      -- Can steal NPC horses?
Config.CanStealToPlayer = false  -- Can steal player horses?
Config.Language = 'en'           -- Language: en, es, fr, de, pt, it, pl, ru
Config.MountKey = 0x26E9DC00     -- E Key (or change it)
```

---

## 🎮 Player Instructions

**Mounting:**
- Empty mount → Press E → Become driver
- Occupied mount → Press E → Become passenger

**That's it!**

---

## 🔧 Common Customizations

### Change Language
```lua
Config.Language = 'es'  -- Spanish
```

### Change Mount Key to F
```lua
Config.MountKey = 0xB2F377E8
Config.MountKeyName = "F"
```

### Protect All Horses
```lua
Config.CanStealToNPC = false
Config.CanStealToPlayer = false
```

---

## 🐛 Troubleshooting

**Not working?**
1. Check folder name: `lxr-horse-share-ride` (exact)
2. Check server.cfg: `ensure lxr-horse-share-ride`
3. Check console for errors

**Still stuck?**
- See INSTALL.md for detailed guide
- Enable debug: `Config.Debug = true`
- Visit: www.wolves.land

---

## 📊 Performance

Expected:
- Client: 0.00ms (idle)
- Server: 0.00ms (event-only)
- Memory: < 0.5 MB

If higher, check for script conflicts.

---

## 🎯 Framework Compatibility

✅ Works with ALL frameworks automatically
- LXRCore, RSG-Core, VORP, RedEM:RP, QBCore, Standalone, etc.

No framework configuration needed!

---

## 📱 Support

- **Website:** www.wolves.land
- **Full Docs:** README.md
- **Install Guide:** INSTALL.md
- **Changes:** CHANGELOG.md

---

**The Land of Wolves RP**  
Premium RedM Scripts

Happy riding! 🐎✨
