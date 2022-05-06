# Pxel 5a LineageOS with MicroG, android auto. Build and install guide



# Install

## get microg setup

- Install the following location/lookup backends from fdroid
```
Apple UnifiedNlp Backend - you can use others but this one works reliably
NominatimNlpBackend
```

- Open MicroG settings, Self-Check

- Tap "System grants signature spoofing permission" and grant it 

- Tap "Play Store (Phonesky) has correct signature" and grant it (this is FakeStore)

- Go back to MicroG setting, open Location modules
  Enable Apple WiFi and nominatim
  *IMPORTANT* you must let them *always* have access to location for things to work reliably
  on android 11 and newer, this means tapping "Allow in settings" and choosing "Allow all the time"
  
## get android auto setup

- Install the latest android auto apk (you can find this online or get it with aurora store)
- Install google maps in the same way
- open google maps once, grant it location permissions. Just while in use is fine.
- android auto *should* just work now

if you get stuck on google maps permission, try pressing cancel instead of settings.

if you are having trouble with first time setup, I found it was helpful to setup the bluetooth connection to the car before plugging in the usb c.

## Prepare the build environment

```
cd build
./build_barbet.sh
```

# Thanks
reference repos:
https://github.com/SolidHal/lineageos-microg-oneplus-lemonade
https://github.com/tangalbert919/android_device_oneplus_lemonade
https://github.com/LineageOS/android_device_oneplus_lemonadep
