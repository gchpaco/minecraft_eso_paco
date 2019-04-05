
// Vanilla Food Pantry doesn't think rustic foods are food. Let's convince it otherwise.
// While these are oredict entries, they're editing food recipes, so here instead oredict script. fukkit.
// And while we're at it, reptile meat is totally food, too.

val kebabmain = <ore:ingredientKebabMain>;
val kebabfill = <ore:ingredientKebabFill>;
val kebabfruit = <ore:ingredientKebabFruit>;
val kebabadventure = <ore:ingredientKebabAdventure>;
val dryableseeds = <ore:itemDryableSeed>;
val foodgoodmeat = <ore:foodGoodMeat>;
val foodgoodmeatcooked = <ore:foodGoodMeatCooked>;
val nativegame = <ore:foodNativeGameCooked>;
val fishsausagemain = <ore:ingredientFishSausageMain>;

foodgoodmeat.add(<reptilemod:croc_raw>);
foodgoodmeat.add(<reptilemod:turtle_raw>);
foodgoodmeat.add(<reptilemod:reptile_raw>);
foodgoodmeat.add(<twilightforest:raw_meef>);
foodgoodmeat.add(<twilightforest:raw_venison>);

foodgoodmeatcooked.add(<reptilemod:croc_cooked>);
foodgoodmeatcooked.add(<reptilemod:turtle_cooked>);
foodgoodmeatcooked.add(<reptilemod:reptile_cooked>);
foodgoodmeatcooked.add(<twilightforest:cooked_meef>);
foodgoodmeatcooked.add(<twilightforest:cooked_venison>);

nativegame.add(<twilightforest:cooked_venison>);

kebabmain.add(<rustic:chili_pepper>);

kebabfill.add(<rustic:tomato>);
kebabfill.add(<rustic:chili_pepper>);

kebabfruit.add(<rustic:grapes>);

kebabadventure.add(<reptilemod:turtle_raw>);
kebabadventure.add(<reptilemod:reptile_raw>);
kebabadventure.add(<twilightforest:raw_meef>);
kebabadventure.add(<twilightforest:raw_venison>);

fishsausagemain.add(<aquaculture:food:3>);


recipes.addShaped(<vanillafoodpantry:kebab:0>*4,
    [[kebabfill, kebabfill],
     [<reptilemod:croc_raw>, <vanillafoodpantry:skewers_wood>]]);


// vinegar powder recipe.
// normal is 6 apples. Let's add an alternate using grapes.

recipes.addShaped(<vanillafoodpantry:foodpowder:22>*8,
    [[<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<vanillafoodpantry:fermenting_bucket>, <vanillafoodpantry:cloth_bag>, <vanillafoodpantry:drying_agent>]]);

// Also bits of bread?



// Processing roost chicken objects into raw chickens.
// Because placing them in the world to butcher is so tedious.
recipes.addShapeless(<minecraft:chicken>,
    [<roost:chicken>, <vanillafoodpantry:flint_butcher_axe>.transformDamage()]);


// Corn meal -> flatbread.

recipes.addShapeless(<vanillafoodpantry:breads:420>,
    [<ore:foodFlourCorn>, <ore:foodFlourCorn>, <ore:foodFlourCorn>, <ore:portionWaterSmall>, <vanillafoodpantry:sand_jar>.reuse()]);
//    

// Ancient Warfare 2 food bundle. For NPC creation.
val foodbundle = <ancientwarfare:component:100>;
recipes.addShaped(foodbundle,
    [[<ore:ingredientKebabFruit>,<ore:ingredientKebabFill>,null],
     [<ore:foodBread>,<ore:foodGoodMeatCooked>,null],
     [<ore:portionWater>,<ore:foodRedMeatCooked>,null]]);
     
// ATLcraft has madness foods
//recipes.remove(<atlcraft:atlcraft_bayberry_juice>);
//recipes.remove(<atlcraft:atlcraft_fried_potatoes>);


