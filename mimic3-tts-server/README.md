# Home Assistant Add-on: mimic3 tts server
![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

A [Mimic3](https://github.com/MycroftAI/mimic3) local tts server for Home Assistant.
Once installed, use the marytts integration and point it at your port (default is 59125).

## Example configuration.yaml entry
```yaml
  tts:

  - platform: marytts
    host: "192.168.1.235"
    port: 59125
    voice: en_US/hifi-tts_low
```

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg