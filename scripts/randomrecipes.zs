
// Jellyfish are useless. Let's make them less so.
recipes.addShapeless(<minecraft:slime_ball>*2,[<aquaculture:fish:16>]);

// In need of a sleeping bag. Stone of Meditation will do.
// Its default crafting process will not.

recipes.addShaped(<botanicaladdons:sleep_stone>,
    [[null, null, null],
     [<botania:manaresource:16>,<botania:manaresource:16>,<botania:temperancestone>],
     [<botania:manaresource:22>,<botania:manaresource:22>,<botania:manaresource:22>]]);
     

// Tinkering with exu2 drum costs

// stone drum
recipes.removeShaped(<extrautils2:drum:0>);
recipes.addShaped(<extrautils2:drum:0>,
    [[<ore:cobblestone>,<ore:slabCobblestone>,<ore:cobblestone>],
     [<ore:cobblestone>,<ore:itemEmptyBucket>,<ore:cobblestone>],
     [<ore:cobblestone>,<ore:slabCobblestone>,<ore:cobblestone>]]);
recipes.addShaped(<extrautils2:drum:0>,
    [[<ore:cobblestone>,<minecraft:stone_slab>,<ore:cobblestone>],
     [<ore:cobblestone>,<ore:itemEmptyBucket>,<ore:cobblestone>],
     [<ore:cobblestone>,<minecraft:stone_slab>,<ore:cobblestone>]]);

// iron drum

recipes.removeShaped(<extrautils2:drum:1>);
recipes.addShaped(<extrautils2:drum:1>,
    [[<ore:ingotSteel>,<ore:blockIron>,<ore:ingotSteel>],
     [<ore:ingotSteel>,<minecraft:cauldron>,<ore:ingotSteel>],
     [<ore:ingotSteel>,<ore:blockIron>,<ore:ingotSteel>]]);



// reworking the blaze rod recipe from Vanilla Food Pantry

// attempts to remove only the VFP shaped recipe failed, so we remove all shaped recipes for blaze rods.
// at present, the only shaped recipe extant in our mod list is vanilla food pantry.
// We may want to check again if we add novel mods in the future which may or may not add their own blaze rod recipes.
recipes.removeShaped(<minecraft:blaze_rod>);

recipes.addShaped(<minecraft:blaze_rod>,
    [[null, null, <vanillafoodpantry:lava_sand_block>],
     [null, <ore:nuggetDiamond>, null],
     [<vanillafoodpantry:lava_sand_block>,null,null]]);

recipes.addShaped(<minecraft:blaze_rod>*4,
    [[<vanillafoodpantry:lava_sand_block>, <vanillafoodpantry:lava_sand_block>, <vanillafoodpantry:lava_sand_block>],
     [<vanillafoodpantry:lava_sand_block>, <ore:gemEmerald>, <vanillafoodpantry:lava_sand_block>],
     [<vanillafoodpantry:lava_sand_block>,<vanillafoodpantry:lava_sand_block>,<vanillafoodpantry:lava_sand_block>]]);

recipes.addShaped(<minecraft:blaze_rod>*4,
    [[<vanillafoodpantry:lava_sand_block>, <vanillafoodpantry:lava_sand_block>, <vanillafoodpantry:lava_sand_block>],
     [<vanillafoodpantry:lava_sand_block>, <ore:gemSapphire>, <vanillafoodpantry:lava_sand_block>],
     [<vanillafoodpantry:lava_sand_block>,<vanillafoodpantry:lava_sand_block>,<vanillafoodpantry:lava_sand_block>]]);

     
