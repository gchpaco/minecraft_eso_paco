import crafttweaker.recipes.IFurnaceRecipe;


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



// oreberry smelting
// not currently functional

// aluminum, ardite, cobalt, copper, emerald, glowstone, gold, iron, lead, nickel, nether quartz, silver, tin, uranium
// recipes.addShaped(<minecraft:record_11>, [[<minecraft:wool:14>, <ore:dyeLightBlue>],

// [<minecraft:iron_ingot>.withTag({essence_type: "minecraft:skeleton"}).onlyWithTag({essence_type: "minecraft:skeleton"})

//, <minecraft:iron_ingot>.withTag({essence_type: "minecraft:creeper"}).onlyWithTag({essence_type: "minecraft:creeper"})]]);

/*
val aluminumCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "aluminum"}}).onlyWithTag({OreShrubVariant: {Name: "aluminum"}});
val arditeCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "ardite"}}).onlyWithTag({OreShrubVariant: {Name: "ardite"}});
val cobaltCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "cobalt"}}).onlyWithTag({OreShrubVariant: {Name: "cobalt"}});
val copperCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "copper"}}).onlyWithTag({OreShrubVariant: {Name: "copper"}});
val goldCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "gold"}}).onlyWithTag({OreShrubVariant: {Name: "gold"}});
val ironCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "iron"}}).onlyWithTag({OreShrubVariant: {Name: "iron"}});
val leadCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "lead"}}).onlyWithTag({OreShrubVariant: {Name: "lead"}});
val nickelCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "nickel"}}).onlyWithTag({OreShrubVariant: {Name: "nickel"}});
val silverCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "silver"}}).onlyWithTag({OreShrubVariant: {Name: "silver"}});
val tinCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "tin"}}).onlyWithTag({OreShrubVariant: {Name: "tin"}});
val uraniumCB = <oreshrubs:compressed_oreberries>.withTag({OreShrubVariant: {Name: "uranium"}}).onlyWithTag({OreShrubVariant: {Name: "uranium"}});

furnace.addRecipe(<embers:nugget_aluminum>*4, aluminumCB);

furnace.addRecipe(<tconstruct:nuggets:1>*4, arditeCB);

furnace.addRecipe(<tconstruct:nuggets:0>*4, cobaltCB);

furnace.addRecipe(
    <embers:nugget_copper>*4,
    copperCB);

furnace.addRecipe(
    <minecraft:gold_nugget>*4,
    goldCB);

furnace.addRecipe(
    <embers:nugget_iron>*4,
    ironCB);

furnace.addRecipe(
    <embers:nugget_lead>*4,
    leadCB);

furnace.addRecipe(
    <embers:nugget_nickel>*4,
    nickelCB);

furnace.addRecipe(
    <embers:nugget_silver>*4,
    silverCB);

furnace.addRecipe(
    <embers:nugget_tin>*4,
    tinCB);

furnace.addRecipe(
    <immersiveengineering:metal:25>*4,
    uraniumCB);
*/

// Botania: Alternate corporea net recipes

val spark = <botania:spark>;
val cspark = <botania:corporeaspark:0>;
val mcspark = <botania:corporeaspark:1>;
val mdiamond = <ore:manaDiamond>;

recipes.addShaped(cspark,
    [[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
     [spark, <ore:enderPearl>, spark],
     [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

recipes.addShaped(mcspark,
    [[mdiamond, cspark, mdiamond],
     [null, null, null],
     [mdiamond, cspark, mdiamond]]);

// vfp red flint is not as useful as it could be

recipes.addShaped(<minecraft:arrow>*4,
    [[null, <ore:itemRawFlint>, null],
     [null, <ore:stick>, null],
     [null, <ore:feather>, null]]);

recipes.addShaped(<iceandfire:stymphalian_arrow>*4,
    [[null, <ore:itemRawFlint>, null],
     [null, <ore:stick>, null],
     [null, <iceandfire:stymphalian_bird_feather>, null]]);

recipes.addShaped(<totemic:totem_whittling_knife>,
    [[null, null, <ore:ingotIron>],
     [null, <ore:stickWood>, <ore:itemRawFlint>],
     [<ore:stickWood>, null, null]]);

recipes.addShapeless(<minecraft:flint>*2,
    [<ore:itemRawFlint>,<ore:itemRawFlint>]);


// Doggy treat repricing.
val treat = <doggytalents:training_treat>;
val streat = <doggytalents:super_treat>;
val mtreat = <doggytalents:master_treat>;
val dtreat = <doggytalents:dire_treat>;

recipes.remove(streat);
recipes.addShapeless(streat*5,
    [treat, treat, treat, treat, treat, <botania:rune:8>]);
recipes.addShapeless(streat*5,
    [treat, treat, treat, treat, treat, <embers:block_dawnstone>]);
recipes.addShapeless(streat*5,
    [treat, treat, treat, treat, treat, <bloodmagic:slate:2>]);

recipes.remove(mtreat);
recipes.addShapeless(mtreat*5,
    [streat, streat, streat, streat, streat, <embers:inflictor_gem>]);
recipes.addShapeless(mtreat*5,
    [streat, streat, streat, streat, streat, <botania:manaresource:9>]);
recipes.addShapeless(mtreat*5,
    [streat, streat, streat, streat, streat, <bloodmagic:soul_gem:1>]);
recipes.addShapeless(mtreat*5,
    [streat, streat, streat, streat, streat, <iceandfire:dragon_skull:*>]);



// Earthworks block cycling

// wattle and daub
recipes.addShapeless(<earthworks:daub_cob_arrow0>, [<earthworks:daub_cob_arrow3>]);
recipes.addShapeless(<earthworks:daub_cob_arrow1>, [<earthworks:daub_cob_arrow0>]);
recipes.addShapeless(<earthworks:daub_cob_arrow2>, [<earthworks:daub_cob_arrow1>]);
recipes.addShapeless(<earthworks:daub_cob_arrow3>, [<earthworks:daub_cob_arrow2>]);

recipes.addShapeless(<earthworks:daub_cob_bottom_l>, [<earthworks:daub_cob_top_r>]);
recipes.addShapeless(<earthworks:daub_cob_bottom_r>, [<earthworks:daub_cob_bottom_l>]);
recipes.addShapeless(<earthworks:daub_cob_top_l>, [<earthworks:daub_cob_bottom_r>]);
recipes.addShapeless(<earthworks:daub_cob_top_r>, [<earthworks:daub_cob_top_l>]);

recipes.addShapeless(<earthworks:daub_cob_bottom>, [<earthworks:daub_cob_top>]);
recipes.addShapeless(<earthworks:daub_cob_left>, [<earthworks:daub_cob_bottom>]);
recipes.addShapeless(<earthworks:daub_cob_right>, [<earthworks:daub_cob_left>]);
recipes.addShapeless(<earthworks:daub_cob_top>, [<earthworks:daub_cob_right>]);

recipes.addShapeless(<earthworks:daub_cob_parallel_hor>, [<earthworks:daub_cob_parallel_vert>]);
recipes.addShapeless(<earthworks:daub_cob_parallel_vert>, [<earthworks:daub_cob_parallel_hor>]);

recipes.addShapeless(<earthworks:daub_cob_slash_back>, [<earthworks:daub_cob_slash>]);
recipes.addShapeless(<earthworks:daub_cob_slash>, [<earthworks:daub_cob_slash_back>]);

recipes.addShapeless(<earthworks:daub_cob_triangle0>, [<earthworks:daub_cob_triangle3>]);
recipes.addShapeless(<earthworks:daub_cob_triangle1>, [<earthworks:daub_cob_triangle0>]);
recipes.addShapeless(<earthworks:daub_cob_triangle2>, [<earthworks:daub_cob_triangle1>]);
recipes.addShapeless(<earthworks:daub_cob_triangle3>, [<earthworks:daub_cob_triangle2>]);

recipes.addShapeless(<earthworks:daub_cob_xbottom>, [<earthworks:daub_cob_xtop>]);
recipes.addShapeless(<earthworks:daub_cob_xleft>, [<earthworks:daub_cob_xbottom>]);
recipes.addShapeless(<earthworks:daub_cob_xright>, [<earthworks:daub_cob_xleft>]);
recipes.addShapeless(<earthworks:daub_cob_xtop>, [<earthworks:daub_cob_xright>]);


//lath and plaster
recipes.addShapeless(<earthworks:plaster_arrow0>, [<earthworks:plaster_arrow3>]);
recipes.addShapeless(<earthworks:plaster_arrow1>, [<earthworks:plaster_arrow0>]);
recipes.addShapeless(<earthworks:plaster_arrow2>, [<earthworks:plaster_arrow1>]);
recipes.addShapeless(<earthworks:plaster_arrow3>, [<earthworks:plaster_arrow2>]);

recipes.addShapeless(<earthworks:plaster_bottom_l>, [<earthworks:plaster_top_r>]);
recipes.addShapeless(<earthworks:plaster_bottom_r>, [<earthworks:plaster_bottom_l>]);
recipes.addShapeless(<earthworks:plaster_top_l>, [<earthworks:plaster_bottom_r>]);
recipes.addShapeless(<earthworks:plaster_top_r>, [<earthworks:plaster_top_l>]);

recipes.addShapeless(<earthworks:plaster_bottom>, [<earthworks:plaster_top>]);
recipes.addShapeless(<earthworks:plaster_left>, [<earthworks:plaster_bottom>]);
recipes.addShapeless(<earthworks:plaster_right>, [<earthworks:plaster_left>]);
recipes.addShapeless(<earthworks:plaster_top>, [<earthworks:plaster_right>]);

recipes.addShapeless(<earthworks:plaster_parallel_hor>, [<earthworks:plaster_parallel_vert>]);
recipes.addShapeless(<earthworks:plaster_parallel_vert>, [<earthworks:plaster_parallel_hor>]);

recipes.addShapeless(<earthworks:plaster_slash_back>, [<earthworks:plaster_slash>]);
recipes.addShapeless(<earthworks:plaster_slash>, [<earthworks:plaster_slash_back>]);

recipes.addShapeless(<earthworks:plaster_triangle0>, [<earthworks:plaster_triangle3>]);
recipes.addShapeless(<earthworks:plaster_triangle1>, [<earthworks:plaster_triangle0>]);
recipes.addShapeless(<earthworks:plaster_triangle2>, [<earthworks:plaster_triangle1>]);
recipes.addShapeless(<earthworks:plaster_triangle3>, [<earthworks:plaster_triangle2>]);

recipes.addShapeless(<earthworks:plaster_xbottom>, [<earthworks:plaster_xtop>]);
recipes.addShapeless(<earthworks:plaster_xleft>, [<earthworks:plaster_xbottom>]);
recipes.addShapeless(<earthworks:plaster_xright>, [<earthworks:plaster_xleft>]);
recipes.addShapeless(<earthworks:plaster_xtop>, [<earthworks:plaster_xright>]);

// brute-forcing the blueprint -> sketch problem

recipes.addShapeless(<architect:sketch>, [<architect:blueprint>]);


// Ice and Fire's Witherbone is cross-compatible with other mods' equivalents, but I&F itself does not use oredict.

val dragonbone = <iceandfire:dragonbone>;
val witherbone = <ore:boneWithered>;

recipes.addShapeless(<iceandfire:wither_shard>*3, [witherbone]);


recipes.addShaped(<iceandfire:dragonbone_sword>,
    [[null, dragonbone, null],
     [null, dragonbone, null],
     [null, witherbone, null]]);

recipes.addShaped(<iceandfire:dragonbone_shovel>,
    [[null, dragonbone, null],
     [null, witherbone, null],
     [null, witherbone, null]]);

recipes.addShaped(<iceandfire:dragonbone_pickaxe>,
    [[dragonbone, dragonbone, dragonbone],
     [null, witherbone, null],
     [null, witherbone, null]]);

recipes.addShaped(<iceandfire:dragonbone_hoe>,
    [[dragonbone, dragonbone, null],
     [null, witherbone, null],
     [null, witherbone, null]]);

recipes.addShaped(<iceandfire:dragonbone_axe>,
    [[dragonbone, dragonbone, null],
     [dragonbone, witherbone, null],
     [null, witherbone, null]]);

recipes.addShaped(<iceandfire:dragonbone_bow>,
    [[null, dragonbone, <ore:string>],
     [witherbone, null, <ore:string>],
     [null, dragonbone, <ore:string>]]);

// Limestone to Quicklime

recipes.addShapeless(<earthworks:item_quicklime>, [<ore:stoneLimestone>]);


// 'egyptian blue' analog

recipes.addShapeless(<thermalfoundation:dye:4>*9,
    [<minecraft:dye:15>, <ore:dustCopper>, <earthworks:item_quicklime>,
     <earthworks:item_sand>, <earthworks:item_sand>, <earthworks:item_sand>,
     <earthworks:item_sand>, <earthworks:item_sand>, <earthworks:item_sand>]);

// rustic 'tiny pile of iron dust' to TF pulverized iron

recipes.addShapeless(<thermalfoundation:material:0>,
    [<rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>,
     <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>,
     <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>]);
