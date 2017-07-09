import minetweaker.item.IItemStack;

// Roots has some worldgen requirements that are honestly hard to consistently
// meet, especially with custom worldgen.
// Adding stuff to work around that.

// Book recipes:
recipes.addShaped(<roots:herblore_book>,
    [[<minecraft:book>,<ore:flowerRed>,null],
     [<ore:flowerYellow>,null,null],
     [null,null,null]]);

recipes.addShaped(<roots:spellcraft_book>,
    [[<minecraft:book>,<ore:rootsHerb>,null],
     [<ore:rootsHerb>,null,null],
     [null,null,null]]);

    
// Roots herb recipes, using roots alchemy.

mods.rustic.Condenser.addRecipe(<roots:moontinged_seed>,<embers:ingot_silver>,[<minecraft:sapling:0>,<minecraft:sapling:2>,<minecraft:red_flower:6>]);
mods.rustic.Condenser.addRecipe(<roots:terra_moss_spore>,<embers:ingot_lead>,[<minecraft:sapling:1>,<minecraft:sapling:1>,<minecraft:tallgrass:0>]);
mods.rustic.Condenser.addRecipe(<roots:wildroot_item>,<minecraft:iron_ingot>,[<minecraft:wheat>,<minecraft:red_flower:0>,<minecraft:potato>]);
mods.rustic.Condenser.addRecipe(<roots:pereskia_bulb>,<embers:ingot_dawnstone>,[<minecraft:double_plant:5>,<minecraft:yellow_flower:0>,<minecraft:red_flower:8>]);
mods.rustic.Condenser.addRecipe(<roots:aubergine_seeds>,<embers:ingot_copper>,[<minecraft:double_plant:1>,<minecraft:sapling:1>,<minecraft:beetroot>]);
mods.rustic.Condenser.addRecipe(<roots:spirit_herb_item>,<minecraft:gold_ingot>,[<minecraft:tallgrass:2>,<minecraft:brown_mushroom>,<minecraft:nether_wart>]);
mods.rustic.Condenser.addRecipe(<roots:spirit_herb_item>,<minecraft:gold_ingot>,[<minecraft:tallgrass:2>,<minecraft:red_mushroom>,<minecraft:nether_wart>]);


// IE plant oil from rustic crushing tub

val seedlist = <ore:listAllseed>;
seedlist.remove(<immersiveengineering:seed>);

// we used to have everything populated by Pam's. It's gone now. oops.
// adding vanilla and actadd seeds by hand.

seedlist.add(<minecraft:wheat_seeds>);
seedlist.add(<minecraft:pumpkin_seeds>);
seedlist.add(<minecraft:melon_seeds>);
seedlist.add(<minecraft:beetroot_seeds>);
seedlist.add(<actuallyadditions:item_coffee_seed>);
seedlist.add(<actuallyadditions:item_rice_seed>);
seedlist.add(<actuallyadditions:item_canola_seed>);
seedlist.add(<actuallyadditions:item_flax_seed>);



for item in <ore:listAllseed>.items {
    mods.rustic.CrushingTub.addRecipe(<liquid:plantoil>*80, null, item);
    mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:plantoil>*80,item,6400);
}
// IE thinks hemp is worth more plant oil than other seeds. Who are we to judge?
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil>*120, null, <immersiveengineering:seed:0>);

seedlist.add(<immersiveengineering:seed>);

// rustic crushing tub recipes in IE industrial squeezer
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:oliveoil>*250,<rustic:olives>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:ironberryjuice>*250,<rustic:ironberries>,6400);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:sugar>*2,<liquid:water>*250,<minecraft:reeds>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:wildberryjuice>*250,<rustic:wildberries>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:grapejuice>*250,<rustic:grapes>,6400);
mods.immersiveengineering.Squeezer.addRecipe(<rustic:apple_seeds>,<liquid:applejuice>*250,<minecraft:apple>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:honey>*250,<rustic:honeycomb>,6400);


// Vanilla Food Pantry doesn't think rustic foods are food. Let's convince it otherwise.
// While these are oredict entries, they're editing food recipes, so here instead oredict script. fukkit.

val kebabmain = <ore:ingredientKebabMain>;
val kebabfill = <ore:ingredientKebabFill>;
val kebabfruit = <ore:ingredientKebabFruit>;
val dryableseeds = <ore:itemDryableSeed>;

kebabmain.add(<rustic:chili_pepper>);

kebabfill.add(<rustic:tomato>);
kebabfill.add(<biomesoplenty:persimmon>);
kebabfill.add(<biomesoplenty:pear>);

kebabfruit.add(<rustic:grapes>);
kebabfruit.add(<biomesoplenty:pear>);
kebabfruit.add(<biomesoplenty:peach>);
kebabfruit.add(<biomesoplenty:persimmon>);

dryableseeds.add(<rustic:tomato_seeds>);


// vinegar powder recipe.
// normal is 6 apples. Let's add an alternate using grapes.

recipes.addShaped(<vanillafoodpantry:foodpowder:22>*8,
    [[<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<vanillafoodpantry:fermenting_bucket>, <vanillafoodpantry:cloth_bag>, <vanillafoodpantry:drying_agent>]]);

//.

