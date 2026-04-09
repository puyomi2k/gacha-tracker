<div align="center">

[![Logo](assets/Title+Slogan.svg)](#)
ein All-in-One-Tool um den Ziehungsverlauf all deiner Spiele zu importieren

[![en](https://img.shields.io/badge/en-English-orange)](/README.md) [![de](https://img.shields.io/badge/de-Deutsch-blue)](/README.de.md)

</div>

# Liste an unterstüzten Spielen

> [!WARNING]
> Dieses Tool nutzt Pull-Import-Skripts (meistens powershell-basiert) von Drittanbietern.<br>Benutzung auf eigene Gefahr!

| Unterstüzte Spiele    |      | Import-Seite(n)                             | Import-Skript   |
|-----------------------|------|---------------------------------------------|-----------------|
| [Genshin Impact]      | [✅] | [stardb.gg], [Paimon.moe]                   | [stardb/wish]   |
| [Honkai: Star Rail]   | [✅] | [stardb.gg], [Pom.moe], [Star Rail Station] | [stardb/warp]   |
| [Zenless Zone Zero]   | [✅] | [stardb.gg]                                 | [stardb/signal] |
| [Wuthering Waves]     | [✅] | [WuWaTracker `v4`]                          | [WuWaTracker]   |
| [Arknights: Endfield] | [ℹ️] | n/a                                         | n/a             |

> [!NOTE]
> Aktuell nutzt dieses Tool Skripte, die feste Links haben. Aufgrund eines Vorfalls, in dem solch ein [Skript für Arknights: Endfield durch ein bösartiges ersetzt](https://www.reddit.com/r/Endfield/comments/1rjx5v6/endfieldrecords_dot_com_pull_tracker_malware) wurde, werde ich alle URLs ersezten und ggf.  [selbst hosten](assets/scripts), um manipulationen an diesen zu verhindern und die Sicherheit dieses Tools zu gewährleisten. Alle Anbieter, die wir derzeit nutzen, gelten als sicher.

# Hol dir den Tracker
[<img src="https://img.shields.io/badge/Gacha Tracker herunterladen-dl?logo=abdownloadmanager&logoColor=white&color=orange" height="44vh"/>](releases/latest/download/Gacha-Tracker.exe)
> Alternativ kannst du dir auch die BAT [**hier herunterladen**](releases/latest/download/Gatcha-Tracker.bat)    

## In Planung/Arbeit:
- Sprachsystem, um mehrere Sprachen zu unterstützen
- Mehr Spiele hinzufügen, zb. Arknight: Endfield


<!---
End of readable part
--->

[✅]:# "Unterstüzt"
[ℹ️]:# "geplant oder zumindest in Betracht gezogen"

[Genshin Impact]:https://genshin.hoyoverse.com/home "von miHoYo/HoYoverse"
[Honkai Impact 3rd]:https://honkaiimpact3.hoyoverse.com/home "von miHoYo/HoYoverse"
[Honkai: Star Rail]:https://hsr.hoyoverse.com/home "von miHoYo/HoYoverse"
[Zenless Zone Zero]:https://zenless.hoyoverse.com/home "von miHoYo/HoYoverse"
[Wuthering Waves]:https://wutheringwaves.kurogames.com/ "von Kuro Games"
[Arknights: Endfield]:https://endfield.gryphline.com/ "von Hypergryph/Gryphline"

[stardb.gg]:https://stardb.gg
[WuWaTracker `v4`]:https://wuwatracker.com/tracker
[Star Rail Station]:https://starrailstation.com/warp
[Pom.moe]:https://pom.moe/warp
[Paimon.moe]:https://paimon.moe/wish

[WuWaTracker]:https://github.com/wuwatracker/wuwatracker/blob/d3c9f811da0890944f241201e1b67d2c1be77867/import.ps1 "Link auf speziifischen Git(Hub) Commit festgelegt (fest)"
[stardb/wish]:assets/scripts/stardb-genshin.ps1 "Selbst gehosted"
[stardb/warp]:assets/scripts/stardb-starrail.ps1  "Selbst gehosted"
[stardb/signal]:assets/scripts/stardb-zenless.ps1  "Selbst gehosted"