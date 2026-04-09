<div align="center">

[![Logo](assets/Title+Slogan.svg)](#)
[![en](https://img.shields.io/badge/en-English-blue)](/README.md) [![de](https://img.shields.io/badge/de-Deutsch-orange)](/README.de.md)

</div>

# List of supported games

> [!WARNING]
> This tool uses pull import scripts (usually powershell) not provided by me.<br>Using at your own risk!

| Supported Games       |      | Import Sites                                | Import Script   |
|-----------------------|------|---------------------------------------------|-----------------|
| [Genshin Impact]      | [✅] | [stardb.gg], [Paimon.moe]                   | [stardb/wish]   |
| [Honkai: Star Rail]   | [✅] | [stardb.gg], [Pom.moe], [Star Rail Station] | [stardb/warp]   |
| [Zenless Zone Zero]   | [✅] | [stardb.gg]                                 | [stardb/signal] |
| [Wuthering Waves]     | [✅] | [WuWaTracker `v4`]                          | [WuWaTracker]   |
| [Arknights: Endfield] | [ℹ️] | n/a                                         | n/a             |

> [!NOTE]
> Currently, this tool retrieves import scripts from URLs provided by the sites developers, and most of the underlying files can be replaced. Due to the recent [incident involving a malicious pull import script for Arknights: Endfield](https://www.reddit.com/r/Endfield/comments/1rjx5v6/endfieldrecords_dot_com_pull_tracker_malware/), I will replace all mutable links in future updates and, if necessary, [selfhost](assets/scripts) these scripts to prevent tampering to ensure the safety of this tool. All the providers this tool currently uses are considered safe.

# Get the Tracker
[<img src="https://img.shields.io/badge/Download latest-dl?logo=abdownloadmanager&logoColor=white&color=orange" height="44vh"/>](releases/latest/download/Gacha-Tracker.exe)
> Alternatively get the Batch script [**directly**](releases/latest/download/Gatcha-Tracker.bat)    

## ToDo List/WIP:
- Language system to support different languages
- Supporting more game plattforms - e.g. Arknights: Endfield


<!---
End of readable part
--->

[✅]:# "supported"
[ℹ️]:# "planned or at least considered"

[Genshin Impact]:https://genshin.hoyoverse.com/home "by miHoYo/HoYoverse"
[Honkai Impact 3rd]:https://honkaiimpact3.hoyoverse.com/home "by miHoYo/HoYoverse"
[Honkai: Star Rail]:https://hsr.hoyoverse.com/home "by miHoYo/HoYoverse"
[Zenless Zone Zero]:https://zenless.hoyoverse.com/home "by miHoYo/HoYoverse"
[Wuthering Waves]:https://wutheringwaves.kurogames.com/ "by Kuro Games"
[Arknights: Endfield]:https://endfield.gryphline.com/ "by Hypergryph/Gryphline"

[stardb.gg]:https://stardb.gg
[WuWaTracker `v4`]:https://wuwatracker.com/tracker
[Star Rail Station]:https://starrailstation.com/warp
[Pom.moe]:https://pom.moe/warp
[Paimon.moe]:https://paimon.moe/wish

[WuWaTracker]:https://github.com/wuwatracker/wuwatracker/blob/d3c9f811da0890944f241201e1b67d2c1be77867/import.ps1 "Immutable link since its bound to a specific git commit"
[stardb/wish]:assets/scripts/stardb-genshin.ps1 "Selfhosted due to their link being mutable"
[stardb/warp]:assets/scripts/stardb-starrail.ps1  "Selfhosted due to their link being mutable"
[stardb/signal]:assets/scripts/stardb-zenless.ps1  "Selfhosted due to their link being mutable"