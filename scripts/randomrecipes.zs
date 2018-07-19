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
val ironingot = <ore:ingotIron>;
val itemstring = <ore:string>;


recipes.addShaped(<magneticraft:steam_boiler>,
    [[ironingot, ironplate, ironingot],
     [ironingot, null, ironingot],
     [ironingot, ironplate, ironingot]]);

recipes.addShaped(ironmesh,
    [[ironplate, itemstring, ironplate],
     [itemstring, ironplate, itemstring],
     [ironplate, itemstring, ironplate]]);

// cofh doesn't support advgen syngas for unclear reasons.

mods.thermalexpansion.Refinery.addRecipe(<liquid:diesel>*100, null, <liquid:syngas>*100, 5000);




// Akashic Tome Tests


//<akashictome:tome>.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}}})

//<akashictome:tome>.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}}})

// recipes.addShapeless("tometests",<akashictome:tome>, [<akashictome:tome>.marked("tome"), <ore:dustRedstone>], function(output, inputs, crafting) {
//     return inputs.tome.withTag({"akashictome:data": {deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}}}).withTag(inputs.tome.tag);
// }, null);



// palimpsest mimicry.

recipes.addShapeless(<minecraft:book>, [<minecraft:redstone>, <botania:lexicon>]);
recipes.addShapeless(<minecraft:book>, [<minecraft:redstone>, <evilcraft:origins_of_darkness>]);


// Hooked recipes.

val ironhook = <hooked:hook:1>;
val diamondhook = <hooked:hook:2>;
val redhook = <hooked:hook:3>;
val enderhook = <hooked:hook:4>;

// No more diamond hook!
recipes.removeShaped(diamondhook);

// red and ender hooks get new recipes.
recipes.removeShaped(redhook);
recipes.addShaped(redhook,
    [[<minecraft:piston>, <ore:dustRedstone>, <ore:blockRedstone>],
     [null, ironhook, <minecraft:redstone>],
     [<minecraft:comparator>, null, <minecraft:piston>]]);
     
recipes.removeShaped(enderhook);
recipes.addShaped(enderhook,
    [[<ore:enderpearl>, <ore:rodBlaze>, <ore:ingotEnderium>],
     [null, ironhook, <ore:rodBlaze>],
     [<ore:dustBlaze>, null, <ore:enderpearl>]]);


