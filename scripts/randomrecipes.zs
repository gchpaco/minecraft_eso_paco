
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
// at present, the only shaped recipe for blaze rod extant in our mod list is vanilla food pantry.
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

     
// Liquid concrete for fun and profit

val bucket = <forge:bucketfilled>;
val bucketwithconcrete = bucket.withTag({FluidName:"concrete",Amount:1000});
val bucketwithclay = bucket.withTag({FluidName:"clay",Amount:1000});

recipes.addShapeless(bucketwithconcrete,
    [<ore:sand>, <ore:sand>, <ore:sand>,
     <ore:sand>, <ore:gravel>, <ore:gravel>,
     <ore:gravel>, <minecraft:bucket>, bucketwithclay]);
     
     
// Reptile hide is leather. Probably. I mean, if rabbit hide can promote to cow leather, why not?


recipes.addShapeless(<minecraft:leather>,
    [<reptilemod:reptile_hide>, <reptilemod:reptile_hide>, <reptilemod:reptile_hide>]);
    
recipes.addShapeless(<minecraft:leather>,
    [<reptilemod:turtle_hide>, <reptilemod:turtle_hide>, <reptilemod:turtle_hide>, <reptilemod:turtle_hide>]);

    recipes.addShapeless(<minecraft:leather>,
    [<reptilemod:croc_hide>]);

// Magneticraft adds oredicts to plates, does not use oredict in recipes. why.

val ironmesh = <magneticraft:crafting:5>;
val ironplate = <ore:plateIron>;
val itemstring = <ore:string>;

recipes.addShaped(ironmesh,
    [[ironplate, itemstring, ironplate],
     [itemstring, ironplate, itemstring],
     [ironplate, itemstring, ironplate]]);

// cofh doesn't support advgen syngas for unclear reasons.

mods.thermalexpansion.Refinery.addRecipe(<liquid:diesel>*100, null, <liquid:syngas>*100, 5000);

// Signals' limiter rail recipe is inexplicably the same as Extra Rails' comparator rail recipe.

recipes.removeShaped(<signals:limiter_rail>);
recipes.addShaped(<signals:limiter_rail>,
    [[<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>],
     [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>],
     [<ore:ingotIron>, null, <ore:ingotIron>]]);

     
     
// Akashic Tome Tests


//<akashictome:tome>.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}}})

//<akashictome:tome>.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}}})

// recipes.addShapeless("tometests",<akashictome:tome>, [<akashictome:tome>.marked("tome"), <ore:dustRedstone>], function(output, inputs, crafting) {
//     return inputs.tome.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}}}).withTag(inputs.tome.tag);
// }, null);

