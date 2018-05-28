import crafttweaker.item.IItemStack;

// IE plant oil from rustic crushing tub

val seedlist = <ore:listAllseed>;
seedlist.remove(<immersiveengineering:seed>);

// we used to have everything populated by Pam's. It's gone now. oops.
// adding vanilla and actadd seeds by hand.

seedlist.add(<minecraft:wheat_seeds>);
seedlist.add(<minecraft:pumpkin_seeds>);
seedlist.add(<minecraft:melon_seeds>);
seedlist.add(<minecraft:beetroot_seeds>);


for item in <ore:listAllseed>.items {
    mods.rustic.CrushingTub.addRecipe(<liquid:plantoil>*80, null, item);
    mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:plantoil>*80,item,6400);
}
// IE thinks hemp is worth more plant oil than other seeds. Who are we to judge?
mods.rustic.CrushingTub.addRecipe(<liquid:plantoil>*120, null, <immersiveengineering:seed:0>);

seedlist.add(<immersiveengineering:seed>);

val dryableseeds = <ore:itemDryableSeed>;
dryableseeds.addAll(<ore:listAllseed>);

// rustic crushing tub recipes in IE industrial squeezer
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:oliveoil>*250,<rustic:olives>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:ironberryjuice>*250,<rustic:ironberries>,6400);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:sugar>*2,<liquid:water>*250,<minecraft:reeds>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:wildberryjuice>*250,<rustic:wildberries>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:grapejuice>*250,<rustic:grapes>,6400);
mods.immersiveengineering.Squeezer.addRecipe(<rustic:apple_seeds>,<liquid:applejuice>*250,<minecraft:apple>,6400);
mods.immersiveengineering.Squeezer.addRecipe(null,<liquid:honey>*250,<rustic:honeycomb>,6400);


// VFP compacted seeds should be more permissive.

recipes.addShapeless(<vanillafoodpantry:compacted_seeds>,
    [<vanillafoodpantry:weighted_plate>, seedlist, seedlist,
     seedlist, seedlist, seedlist,
     seedlist, seedlist, seedlist]);
