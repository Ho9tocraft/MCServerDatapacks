# Minecraft 1.20.x (1.20.5-1.20.6) Player-vs-Player Datapack and Resource pack
English / [日本語](docs/ja_jp.md)  
This repository contains data packs and resource packs developed for Minecraft 1.20.x (specifically, 1.20.5 and later).
## Datapack
In addition to the job definitions, it also describes the behavior of the skills.  
One element common to all jobs is "armor performance netherite equivalent, unbreakable".  
Armor visual features for each jobs are implemented using the [Custom Armor Trim](https://minecraft.wiki/w/Tutorials/Adding_custom_trims).  
For this reason, 2 types of Datapack exist.
- mc120x_skill_based_pvp_data (PvP Datapack Main Unit)
- mc120x_armor_trim_data (Armor Trims)

The jobs currently scheduled for implementation are as follows. ([Reference(FF14)](https://na.finalfantasyxiv.com/jobguide/battle/?utm_source=lodestone&utm_medium=pc_banner&utm_campaign=jp_jobguide),[Reference(MoE)](https://moeread.usamimi.info/index.php?%A5%B7%A5%C3%A5%D7%2F%CA%A3%B9%E7))  
:x:Excluded from Physical Ranged DPS are "Machinist" and "Dancer", which are difficult to reproduce.  
:x:Excluded from Magical Ranged DPS are "Summoner", which are difficult to reproduce.  
:x:Excluded are Limited Jobs.  
- TANK (High Health, High DEF, Low Strength(Physical))
  - [ ] Paladin (PLD) [Progress: Work in Progress, Job ID: 0]
  - [ ] Warrior (WAR) [Progress: Pending]
  - [ ] Dark Knight (DRK) [Progress: Work in Progress, Job ID: 1]
  - [ ] Gunbreaker (GNB) [Progress: Pending]
- HEALER (Low Health, Minimum DEF, Low Strength(Magical), Healing Skills are Available)
  - [ ] White Mage (WHM) [Progress: Pending]
  - [ ] Scholar (SCH) [Progress: Pending]
  - [ ] Astrologian(AST) [Progress: Pending]
  - [ ] Sage(SGE) [Progress: Pending]
- Melee DPS (Medium Health, Low DEF, High Strength(Physical))
  - [ ] Dragoon(DRG) [Progress: Pending]
  - [ ] Reaper (RPR) [Progress: Pending]
  - [ ] Monk (MNK) [Progress: Pending]
  - [ ] Samurai (SAM) [Progress: Pending]
  - [ ] Exorcist (EXC) [Progress: Work in Progress, Job ID: 2] [^1]
  - [ ] Ninja (NIN) [Progress: Pending]
- Physical Ranged DPS (Medium Health, Minimum DEF, High Strength(Physical))
  - [ ] Bard (BRD) [Progress: Pending]
- Magical Ranged DPS (Low Health, Minimum DEF, High Strength(Magical))
  - [ ] Black Mage (BLM) [Progress: Pending]
  - [ ] Red Mage (RDM) [Progress: Pending]

[^1]: A job that uses two katana in dual wielding. It is basically the same as FF14's Samurai, but the details are different. This job doesn't exist in FF14. If I had to say, it is similar to MoE's Samurai.

## Resource Pack
In addition to my own textures, the following resource packs and resources are used for implementation.
The textures themselves (files under assets/(namespace)/textures) are excluded from this repository, including the textures folder.
- [Unique Sword](https://www.curseforge.com/minecraft/texture-packs/unique-swords)  
The texture files are renamed and diverted.  
However, since the original resource pack was implemented using OptiFine's CIT (Custom Item Textures) feature, the model data for the Custom Model Data is provided here.
- [Blade of Majestica: Restyled](https://www.planetminecraft.com/texture-pack/blades-of-majestica-restyled/)  
Texture files and model files are diverted.  
However, since the original resource pack was implemented using OptiFine's CIT (Custom Item Textures) feature, some of the model data for Custom Model Data has been prepared here.
- [FINAL FANTASY XIV Fan Kit](https://na.finalfantasyxiv.com/lodestone/special/fankit/icon/)  
The texture files have been resized (48x48 -> 32x32) and diverted.  
However, the model data for the Custom Model Data is prepared here because it was not originally created for Minecraft.
