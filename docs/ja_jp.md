# Minecraft 1.20.x (1.20.5-1.20.6) Player-vs-Player Datapack and Resource pack
[English](../README.md) / 日本語  
このリポジトリはMinecraft 1.20.x(特に、1.20.5以降)向けに開発されたデータパックとリソースパックを内包します。
## Datapack
ジョブの定義に加え、スキルの挙動などが書かれています。  
全ジョブ共通の要素として、「防具性能ネザライト相当、不可壊」があります。  
ジョブごとの防具の見た目は、[カスタム防具装飾](https://minecraft.fandom.com/ja/wiki/%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E9%98%B2%E5%85%B7%E8%A3%85%E9%A3%BE)の機能を用いて実装しています。  
その都合上、データパックは2種類存在します。
- mc120x_skill_based_pvp_data (PvPデータパック本体)
- mc120x_armor_trim_data (防具装飾を定義するデータパック)

現在実装予定のジョブは以下の通りになっています。([参考元(FF14)](https://jp.finalfantasyxiv.com/jobguide/battle/?utm_source=lodestone&utm_medium=pc_banner&utm_campaign=jp_jobguide),[参考元(Master of Epic)](https://moeread.usamimi.info/index.php?%A5%B7%A5%C3%A5%D7%2F%CA%A3%B9%E7))  
:x:遠隔物理DPSのうち、再現が困難な「機工士」「踊り子」は除外しています。  
:x:遠隔魔法DPSのうち、再現が困難な「召喚士」は除外しています。  
:x:リミテッドジョブは除外しています。  
- タンク(高HP、高防御力、低火力)
  - [x] ナイト(Paladin / PLD / ナ) [Progress: Release Candidate, Job ID: 0]
  - [ ] 戦士(Warrior / WAR / 戦) [Progress: Pending]
  - [x] 暗黒騎士(Dark Knight / DRK / 暗) [Progress: Beta Builds, Job ID: 1]
  - [ ] ガンブレイカー(Gunbreaker / GNB / ガ) [Progress: Pending]
- ヒーラー(低HP、最低保障防御力、低火力、回復スキルあり)
  - [ ] 白魔道士(White Mage / WHM / 白) [Progress: Pending]
  - [ ] 学者(Scholar / SCH / 学) [Progress: Pending]
  - [ ] 占星術師(Astrologian / AST / 占) [Progress: Pending]
  - [ ] 賢者(Sage / SGE / 賢) [Progress: Pending]
- 近接DPS(中HP、低防御力、高火力)
  - [ ] 竜騎士(Dragoon / DRG / 竜) [Progress: Pending]
  - [ ] リーパー(Reaper / RPR / リ) [Progress: Pending]
  - [ ] モンク(Monk / MNK / モ) [Progress: Pending]
  - [ ] 侍(Samurai / SAM / 侍) [Progress: Pending]
  - [x] 巫覡(Exorcist / EXC / 覡) [Progress: Release Candidate, Job ID: 2] [^1]
  - [ ] 忍者(Ninja / NIN / 忍) [Progress: Pending]
- 遠隔物理DPS(中HP、最低保障防御力、高火力)
  - [ ] 吟遊詩人(Bard / BRD / 詩) [Progress: Work in Progress, Job ID: 3]
- 遠隔魔法DPS(低HP、最低保障防御力、高火力)
  - [ ] 黒魔道士(Black Mage / BLM / 黒) [Progress: Pending]
  - [ ] 赤魔道士(Red Mage / RDM / 赤) [Progress: Pending]

[^1]: 刀を二刀流で使用するジョブ。侍と基本的には同じだが、子細が異なる。FF14に存在しないジョブ。強いて言うならMaster of Epicのサムライが近いか。

## Resource Pack
自作テクスチャの他、以下のリソースパックおよびリソースを流用して実装しています。
テクスチャ本体(assets/(namespace)/textures以下のファイル)はtexturesフォルダごとこのリポジトリから除外しています。
- [Unique Sword](https://www.curseforge.com/minecraft/texture-packs/unique-swords)  
テクスチャファイルの名前を変更した上で流用しています。  
ただし、元々のリソースパックがOptiFineのCIT(Custom Item Textures)の機能を用いて実装していたため、カスタムモデルデータ用のモデルデータはこちらで用意しています。
- [Blade of Majestica: Restyled](https://www.planetminecraft.com/texture-pack/blades-of-majestica-restyled/)  
テクスチャファイル、およびモデルファイルを流用しています。  
ただし、元々のリソースパックがOptiFineのCIT(Custom Item Textures)の機能を用いて実装していたため、一部はこちらでカスタムモデルデータ用のモデルデータを用意しています。
- [FINAL FANTASY XIV ファンキット](https://jp.finalfantasyxiv.com/lodestone/special/fankit/icon/)  
テクスチャファイルのリサイズ(any→32x32)を行った上で流用しています。  
ただし、元々Minecraft向けにつくられている訳ではないため、カスタムモデルデータ用のモデルデータはこちらで用意しています。
- [Moon Diamond tools (Netherite](https://www.planetminecraft.com/texture-pack/moon-diamond-tools-netherite/)  
テクスチャファイルの名前を変更した上で流用しています。  
ただし、元々のリソースパックがネザライト装備をそのまま上書きするものであったため、カスタムモデルデータ用のモデルデータはこちらで用意しています。
