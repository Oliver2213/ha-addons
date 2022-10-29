# My Homeassistant Addons

These are various scripts and tools published by others I have packaged up for use as Home Assistant addons. I generally try to keep images up-to-date with changes, so you should be able to add the repository to your instance and be able to quickly install if you wish to use them.
* [rtl_tcp](rtl_tcp/README.md) - plug an rtl sdr into your suporvised homeassistant instance and install this add-on to allow other add-ons (or anything) to access it on port 1234.
* [metermon](metermon/README.md) - An add-on version of [this](https://github.com/seanauff/metermon), slightly modified for homeassistant usage. Outputs each meter's messages that rtlamr detects to metermon/meeter-id topics, ready for your mqtt sensor platform entries in config to bring them in to ha.
* [Mimic3-tts-server](mimic3-tts-server/README.md) - A [Mimic3](https://github.com/MycroftAI/mimic3) local tts server for Home Assistant.
