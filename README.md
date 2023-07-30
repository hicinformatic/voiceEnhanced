# voiceEnhanced
Plugin to enhance voice perimeter action with preview as a circle or sphere

DEMO : https://youtu.be/PdJdZUI4kNM

# How to install

1. download the git repository
2. uncompress in your fxserver
3. add ensure voiceEnhanced to the server.cfg

# How it works :
You need to edit "config.lua" file to change as you want

## Colors
```
Config.Colors = {
    whisper = { r = 0, g = 181, b = 255, a = 255 },
    default = { r = 60, g = 228, b = 60, a = 255 },
    shout = { r = 255, g = 0, b = 0, a = 255 },
    current = { r = 166, g = 166, b = 255, a = 255 },
}
```

| Config  | Default|
| ------------- | ------------- |
| whisper | { r = 0, g = 181, b = 255, a = 255 } |
| default | { r = 60, g = 228, b = 60, a = 255 } |
| shout | { r = 255, g = 0, b = 0, a = 255 } |
| current | { r = 166, g = 166, b = 255, a = 255 } |

## Icons
```
Config.Icons = {
    x = 0.009,
    y = 0.0,
    scale = 0.35,
    coef = 1.2,
    default = "🔉",
    shout = "🔊",
    whisper = "🔈",
    current = "🔉",
}
```

| Config  | Description | Default | 
| ------------- | ------------- | ------------- |
| x | X icon position |  0.009 |
| y | y icon position |  0.0 |
| scale | icon scale |  0.35 |
| coef | enlargement while we speak |  1.2 |
| default | icon current/default |  "🔉" |
| shout | icon shout |  "🔊" |
| whisper | icon whisper |  "🔈" |
| current | icon default/current |  "🔉" |

## Marker
```
Config.Marker = {
    enable = false,
    whisper = 3.0,
    default = 10.0,
    shout = 30.0,
    current = 30.0,
    coef = 2.0,
    type = 1,
    dirX = 0.0,
    dirY = 0.0,
    dirZ = 0.0,
    rotX = 0,
    rotY = 0.0,
    rotZ = 0.0,
    bobUpAndDown = false,
    faceCamera = true,
    p19 = 2,
    rotate = false,
    textureDict = false,
    textureName = false,
    drawOnEnts =false,
    offset = 0.0,
}
```

| Config  | Description | Default |
| ------------- | ------------- | ------------- |
| enable | enable or disable this type | false |
| whisper | whisper range | 3.0 |
| default | default range | 10.0 |
| shout | shout range | 30.0 |
| current | current range | 30.0 |
| coef | Coef to get the correct range preview | 2.0 |
| type | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 1 |
| dirX | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0.0 |
| dirY | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0.0 |
| dirZ | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0.0 |
| rotX | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0 |
| rotY | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0.0 |
| rotZ | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 0.0 |
| bobUpAndDown | https://docs.fivem.net/natives/?_0x28477EC23D892089 | false |
| faceCamera | https://docs.fivem.net/natives/?_0x28477EC23D892089 | true |
| p19 | https://docs.fivem.net/natives/?_0x28477EC23D892089 | 2 |
| rotate | https://docs.fivem.net/natives/?_0x28477EC23D892089 | false |
| textureDict | https://docs.fivem.net/natives/?_0x28477EC23D892089 | false |
| textureName | https://docs.fivem.net/natives/?_0x28477EC23D892089 | false |
| drawOnEnts | https://docs.fivem.net/natives/?_0x28477EC23D892089 | alse |
| offset | Offset to adjust | 0.0 |

## Sphere
```
Config.Sphere = {
    enable = true,
    whisper = 3.0,
    default = 10.0,
    shout = 30.0,
    current = 30.0,
    coef = 1.0,
    opacity = 0.5,
    offset = 1.0,
}
```

| Config  | Description | Default |
| ------------- | ------------- | ------------- |
| enable | enable or disable this type | true |
| whisper | range whisper | 3.0 |
| default | range default | 10.0 |
| shout | range shout | 30.0 |
| current | range current | 30.0 |
| coef | coef to get the right preview | 1.0 |
| opacity | sphere opacity | 0.5 |
| offset | offset to adjust | 1.0 |

# Next step

- Count players in perimeter

