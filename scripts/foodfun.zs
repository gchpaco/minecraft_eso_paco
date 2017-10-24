
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
kebabfill.add(<biomesoplenty:persimmon>);
kebabfill.add(<biomesoplenty:pear>);

kebabfruit.add(<rustic:grapes>);
kebabfruit.add(<biomesoplenty:pear>);
kebabfruit.add(<biomesoplenty:peach>);
kebabfruit.add(<biomesoplenty:persimmon>);

kebabadventure.add(<reptilemod:turtle_raw>);
kebabadventure.add(<reptilemod:reptile_raw>);
kebabadventure.add(<twilightforest:raw_meef>);
kebabadventure.add(<twilightforest:raw_venison>);

recipes.addShaped(<vanillafoodpantry:kebab:0>*4,
    [[kebabfill, kebabfill],
     [<reptilemod:croc_raw>, <vanillafoodpantry:skewers_wood>]]);


// vinegar powder recipe.
// normal is 6 apples. Let's add an alternate using grapes.

recipes.addShaped(<vanillafoodpantry:foodpowder:22>*8,
    [[<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<vanillafoodpantry:fermenting_bucket>, <vanillafoodpantry:cloth_bag>, <vanillafoodpantry:drying_agent>]]);

// Abyssalcraft likes to take over fried eggs from VFP.
// We can fix this by cross-adding the appropriate oredicts.
val friedegg = <ore:foodFriedEgg>;
val eggfried = <ore:foodEggFried>;
eggfried.add(<abyssalcraft:friedegg>);
friedegg.add(<vanillafoodpantry:fried_egg>);

// actadd rice bread is totes bread.
val breads = <ore:foodBread>;
breads.add(<actuallyadditions:item_food:17>);

// Processing roost chicken objects into raw chickens.
// Because placing them in the world to butcher is so tedious.
recipes.addShapeless(<minecraft:chicken>,
    [<roost:chicken>, <vanillafoodpantry:flint_butcher_axe>.transformDamage()]);
