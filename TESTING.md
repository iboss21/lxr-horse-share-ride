# Testing Checklist
## The Land of Wolves RP - Horse & Wagon Sharing Script v1.1.0

**www.wolves.land**

This document provides a comprehensive testing checklist for all features.

---

## 🧪 Core Features (v1.0.0)

### Horse Mounting
- [ ] Player can mount empty horse as driver
- [ ] Player can mount occupied horse as passenger (if stealing disabled)
- [ ] Player can steal NPC horse (if stealing enabled)
- [ ] Player receives appropriate notifications
- [ ] Passenger is properly attached to horse
- [ ] Distance check works correctly

### Wagon Mounting
- [ ] Player can mount empty wagon as driver
- [ ] Player can mount occupied wagon as passenger
- [ ] Multiple passengers can mount wagon (up to limit)
- [ ] Passengers are assigned to vehicle seats
- [ ] All passengers can see each other

### Dismounting
- [ ] Player can dismount by pressing E
- [ ] Player can dismount by moving away
- [ ] Dismount is properly synced to all clients
- [ ] State is cleaned up after dismount
- [ ] Driver is notified when passenger leaves (if enabled)

### Multi-Language
- [ ] English translations work
- [ ] Spanish translations work
- [ ] Other languages display correctly
- [ ] Notifications show in selected language

---

## 🎨 New Features (v1.1.0)

### Custom Animations Per Seat
- [ ] Wagon seat 0 plays configured animation
- [ ] Wagon seat 1 plays configured animation
- [ ] Wagon seat 2 plays configured animation
- [ ] Wagon seat 3 plays configured animation
- [ ] Fallback animation works if custom fails
- [ ] Horse passenger animation still works

**Test Steps:**
1. Configure different animations in Config.WagonSeatAnimations
2. Mount wagon with multiple passengers
3. Verify each passenger plays their seat-specific animation

---

### Vehicle (Car/Truck) Support
- [ ] Can mount occupied car as passenger
- [ ] Can mount occupied truck as passenger
- [ ] Vehicle passenger limit is respected
- [ ] Passengers assigned to available seats
- [ ] AllowAllVehicles=true allows any vehicle
- [ ] AllowedVehicles whitelist works when AllowAllVehicles=false
- [ ] Vehicle dismount syncs properly
- [ ] Statistics track vehicle mounts separately

**Test Steps:**
1. Enable Config.EnableVehicleSharing = true
2. Get in a car as driver
3. Have another player mount as passenger
4. Verify passenger enters available seat
5. Test with whitelist (AllowAllVehicles = false)

---

### Permissions System
- [ ] ACE permissions grant/deny mount access
- [ ] ACE permissions grant/deny admin access
- [ ] Permission denial shows proper message
- [ ] Permission system can be disabled
- [ ] Players without permission cannot mount
- [ ] Players without permission cannot use admin commands

**Test Steps:**
1. Set Config.EnablePermissions = true
2. Remove horseshare.mount permission from player
3. Try to mount - should be denied
4. Add permission back
5. Mount should now work
6. Test admin commands with/without admin permission

---

### Admin Commands

#### /horseshare:getstats [playerID]
- [ ] Command works in-game for admins
- [ ] Command works in console
- [ ] Shows correct total mounts
- [ ] Shows correct distance traveled
- [ ] Shows correct time spent
- [ ] Shows favorite mount breakdown
- [ ] Denies non-admins (if permissions enabled)
- [ ] Logs to Discord (if enabled)

**Test Steps:**
1. Mount as passenger several times
2. Run command on yourself
3. Verify stats are accurate
4. Try as non-admin (should fail if permissions enabled)

#### /horseshare:tp [playerID]
- [ ] Command teleports admin to player
- [ ] Works with passengers
- [ ] Works with drivers
- [ ] Denies non-admins (if permissions enabled)
- [ ] Logs to Discord (if enabled)

**Test Steps:**
1. Player A mounts as passenger
2. Admin B uses /horseshare:tp [playerA_id]
3. Admin B should teleport to Player A

#### /horseshare:dismount [playerID]
- [ ] Command force dismounts passenger
- [ ] Passenger is detached properly
- [ ] State is cleaned up
- [ ] Other clients are notified
- [ ] Works from console
- [ ] Works in-game for admins
- [ ] Denies non-admins (if permissions enabled)
- [ ] Shows error if player not a passenger
- [ ] Logs to Discord (if enabled)

**Test Steps:**
1. Player mounts as passenger
2. Admin uses /horseshare:dismount [playerID]
3. Player should immediately dismount
4. Verify clean state

#### /horseshare:list
- [ ] Shows all active passengers
- [ ] Shows mount network IDs
- [ ] Shows seat assignments
- [ ] Works in console
- [ ] Works in-game for admins
- [ ] Denies non-admins (if permissions enabled)
- [ ] Updates in real-time

**Test Steps:**
1. Have multiple players mount as passengers
2. Run /horseshare:list
3. Verify all passengers are listed with correct info

---

### Statistics Tracking
- [ ] Total mounts increments correctly
- [ ] Distance is tracked while passenger
- [ ] Time is tracked while passenger
- [ ] Favorite mount type updates
- [ ] Stats persist during session
- [ ] Stats are sent to server on dismount
- [ ] Stats can be viewed with admin command
- [ ] Stats reset properly on resource restart

**Test Steps:**
1. Enable Config.EnableStatistics = true
2. Mount as passenger on horse
3. Travel a distance and dismount
4. Check stats with /horseshare:getstats
5. Mount on wagon, travel, dismount
6. Verify stats updated correctly
7. Check favorite mount type

---

### Discord Logging
- [ ] Webhook URL validates
- [ ] Mount events are logged
- [ ] Dismount events are logged
- [ ] Admin commands are logged
- [ ] Logs include correct player info
- [ ] Logs include timestamps
- [ ] Logs have correct colors (green/red/purple)
- [ ] Log types can be disabled individually
- [ ] Logs don't block gameplay (async)

**Test Steps:**
1. Set Config.EnableDiscordLogs = true
2. Configure valid Discord webhook
3. Mount as passenger - check Discord for green log
4. Dismount - check Discord for red log
5. Use admin command - check Discord for purple log
6. Disable specific log types, verify they don't appear

---

## 🔧 Configuration Testing

### Config.EnableVehicleSharing
- [ ] true: Vehicles work
- [ ] false: Vehicles don't allow passengers

### Config.MaxVehiclePassengers
- [ ] Limit is enforced
- [ ] Players receive "full" message when limit reached

### Config.AllowAllVehicles
- [ ] true: All vehicles work
- [ ] false: Only whitelist works

### Config.EnablePermissions
- [ ] true: Permission checks active
- [ ] false: Everyone can use features

### Config.EnableStatistics
- [ ] true: Stats are tracked
- [ ] false: Stats are not tracked

### Config.EnableDiscordLogs
- [ ] true: Discord logs sent
- [ ] false: No logs sent

### Config.WagonSeatAnimations
- [ ] Animations can be customized per seat
- [ ] Invalid animations fall back gracefully

---

## 🚀 Performance Testing

### Client Performance
- [ ] Resmon shows ~0.00ms idle
- [ ] Resmon shows ~0.01ms active (as passenger)
- [ ] No performance spikes
- [ ] No frame drops
- [ ] Memory stays under 1 MB

### Server Performance
- [ ] Server CPU usage negligible
- [ ] No console errors
- [ ] Events process quickly
- [ ] Multiple passengers don't cause lag
- [ ] Discord requests are non-blocking

### Stress Testing
- [ ] 10+ simultaneous passengers
- [ ] Rapid mount/dismount cycles
- [ ] Multiple admin commands in quick succession
- [ ] Long distance travel as passenger
- [ ] Extended time as passenger

---

## 🐛 Error Handling

### Invalid Input
- [ ] Invalid player ID in admin commands
- [ ] Missing webhook URL (Discord)
- [ ] Invalid network ID
- [ ] Non-existent entity
- [ ] Out of range interactions

### Edge Cases
- [ ] Player disconnects while passenger
- [ ] Driver leaves while passengers mounted
- [ ] Entity deleted while passenger
- [ ] Resource restart while passengers active
- [ ] Multiple rapid mount attempts
- [ ] Mount attempt on moving vehicle

### Network Issues
- [ ] High latency doesn't break sync
- [ ] Packet loss doesn't duplicate passengers
- [ ] Network ID sync issues handled gracefully

---

## 🔄 Compatibility Testing

### Framework Compatibility
- [ ] Works without any framework (standalone)
- [ ] Works with LXRCore
- [ ] Works with RSG-Core
- [ ] Works with VORP
- [ ] Works with RedEM:RP
- [ ] Works with QBCore (if RedM version exists)

### Other Resources
- [ ] Doesn't conflict with other horse scripts
- [ ] Doesn't conflict with vehicle scripts
- [ ] Doesn't conflict with permission scripts
- [ ] Doesn't conflict with Discord logging scripts

---

## 📝 Documentation Testing

### README.md
- [ ] All features documented
- [ ] Configuration examples work
- [ ] Admin commands listed correctly
- [ ] Permission setup clear

### NEW_FEATURES.md
- [ ] All new features explained
- [ ] Examples are accurate
- [ ] Troubleshooting helps
- [ ] Configuration guide works

### CHANGELOG.md
- [ ] Version number correct
- [ ] All changes listed
- [ ] Dates accurate

### API.md
- [ ] Events documented
- [ ] Parameters correct
- [ ] Examples work

---

## ✅ Final Validation

Before marking as complete:
- [ ] All tests pass
- [ ] No console errors
- [ ] No client errors
- [ ] Performance acceptable
- [ ] Documentation accurate
- [ ] Backward compatible
- [ ] Code reviewed
- [ ] Clean git history

---

## 📊 Test Results Template

```
Date: ___________
Tester: ___________
Version: 1.1.0
Server Version: ___________
Framework: ___________

Core Features: PASS / FAIL
Custom Animations: PASS / FAIL
Vehicle Support: PASS / FAIL
Permissions: PASS / FAIL
Admin Commands: PASS / FAIL
Statistics: PASS / FAIL
Discord Logging: PASS / FAIL
Performance: PASS / FAIL
Error Handling: PASS / FAIL

Overall: PASS / FAIL

Notes:
_________________________________
_________________________________
_________________________________
```

---

## 🆘 Troubleshooting During Testing

### Issue: Feature not working
1. Check Config.Enable[Feature] is true
2. Verify dependencies installed
3. Check console for errors
4. Enable Config.Debug = true

### Issue: Permission errors
1. Verify ACE permissions in server.cfg
2. Check Config.EnablePermissions setting
3. Test with permissions disabled first

### Issue: Discord not logging
1. Verify webhook URL is correct
2. Check Config.DiscordLogTypes
3. Ensure Config.EnableDiscordLogs = true
4. Test webhook with curl/Postman

### Issue: Statistics not tracking
1. Verify Config.EnableStatistics = true
2. Check Config.TrackStats settings
3. Mount and dismount to trigger tracking
4. Use admin command to view stats

---

**The Land of Wolves RP**  
www.wolves.land

*Happy Testing! 🐎✨*
