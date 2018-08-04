// Ways of converting coal ore to amber ore.

mods.thaumcraft.Crucible.registerRecipe("coaltoamber", "", <thaumcraft:ore_amber>, <minecraft:coal_ore>,
    [<aspect:vitreus>*10, <aspect:vinculum>*10, <aspect:terra>*5]);

<minecraft:ice>.setAspects(<aspect:gelum>*20);
<minecraft:packed_ice>.setAspects([<aspect:gelum>*15,<aspect:ordo>*5]);
<minecraft:snow>.setAspects(<aspect:gelum>*3);
<minecraft:snow_layer>.setAspects(<aspect:gelum>);
<minecraft:snowball>.setAspects(<aspect:gelum>);
