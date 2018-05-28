#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.base.materials;

// Aetherium ore
var aetheriumData = materials.aetherium.registerPart("ore_sample").getData();
aetheriumData.addDataValue("drops", "aetherworks:aether_ore:0");

// Amber ore
var amberData = materials.amber.registerPart("ore_sample").getData();
amberData.addDataValue("drops", "thaumcraft:amber:0");

// Apatite ore
var apatiteData = materials.apatite.registerPart("ore_sample").getData();
apatiteData.addDataValue("drops", "forestry:apatite:0");

// Cinnabar ore
var cinnabarData = materials.cinnabar.registerPart("ore_sample").getData();
cinnabarData.addDataValue("drops", "thaumcraft:quicksilver:0");

// Crystal ore
var crystalData = materials.crystal.registerPart("ore_sample").getData();
crystalData.addDataValue("drops", "ebwizardry:magic_crystal:0");

// Dark ore
var darkData = materials.dark.registerPart("ore_sample").getData();
darkData.addDataValue("drops", "evilcraft:dark_gem:0");

// Natron ore
var natronData = materials.natron.registerPart("ore_sample").getData();
natronData.addDataValue("drops", "vanillafoodpantry:natron_crystals:0");

// Pyrite ore
var pyriteData = materials.pyrite.registerPart("ore_sample").getData();
pyriteData.addDataValue("drops", "magneticraft:crafting:0");

// Salt ore
var saltData = materials.salt.registerPart("ore_sample").getData();
saltData.addDataValue("drops", "vanillafoodpantry:rock_salt_crystals:0");

// Trona ore
var tronaData = materials.trona.registerPart("ore_sample").getData();
tronaData.addDataValue("drops", "vanillafoodpantry:trona_crystals:0");

// Tungsten ore
var tungstenData = materials.tungsten.registerPart("ore_sample").getData();
tungstenData.addDataValue("drops", "magneticraft:dusts:5");
