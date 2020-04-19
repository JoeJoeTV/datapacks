# JoeJoeTV's Datapacks
My Minecraft Datapacks

# List of Datapacks

* **[PistonLib](https://github.com/JoeJoeTV/datapacks/tree/master/pistonlib)**
  * **Version:** 1.5.0
  * **Description:** A "library" datapack for all of my other datapacks with some useful functions.
  * **MC Version:** 1.14.x, 1.15.x
* **[Crafting+](https://github.com/JoeJoeTV/datapacks/tree/master/craftingplus)**
  * **Version:** 1.0.2
  * **Description:** A datapack that adds 2 new crafting stations that can be used by other datapacks for custom crafting and enchanting.
  * **Dependencies:** PistonLib
  * **MC Version:** 1.14.x, 1.15.x
* **[TPlus](https://github.com/JoeJoeTV/datapacks/tree/master/tplus)**
  * **Version:** 1.0.8
  * **Description:** A datapack that adds various teleport-related custom commands using `/trigger` like a home system, a tpa system, etc.
  * **Dependencies:** PistonLib
  * **MC Version:** 1.14.x, 1.15.x
* **[RandomTweaks](https://github.com/JoeJoeTV/datapacks/tree/master/randomtweaks)**
  * **Version:** 1.0.2
  * **Description:** A datapack that changes/tweaks some things in Minecraft like crafting recipes, dispensers place seeds, etc.
  * **MC Version:** 1.14.x, 1.15.x
  * **Dependencies:** PistonLib
* **[RandomThings](https://github.com/JoeJoeTV/datapacks/tree/master/randomthings)**
  * **Version:** 1.0.2
  * **Description:** This datapack adds verious items, blocks and features to Minecraft, like a magic wand with spells, hammers, a way to                      get spawners in survival, etc.
  * **Dependencies:** PistonLib; CraftingPlus
  * **MC Version:** 1.14.x, 1.15.x
  
**If you see any issues regarding 1.15.x compatability, please repot them, by making an [Issue](https://github.com/JoeJoeTV/datapacks/issues).**

# Installing
To install any of the datapacks, you firstly need to check the dependencies, because all of my datapacks depend on PistonLib and some of them on CraftingPlus. Then you donload the datapacks you want to install from this Github Repo and their dependencies and put them in the datapacks folder of your world. To finsish the installation, go into the world or if you're already in, run ```/reload```. In chat you will see a Message, which shows all installed datapacks.
If the datapack needs a Resourcepack, also download that and put it in your resourcepacks folder and activate it when using the datapack.

# Uninstalling
To uninstall any of the datapacks, you need to have access to the ```/function``` command(op).
To uninstall all datapacks at the same time run ```/function pistonlib:uninstall```.
To uninstall only one datapack, run ```/function <datapack name>:uninstall```, where ```<datapack name>``` is replaced with e.g. tplus, randomthings, craftingplus, etc.
