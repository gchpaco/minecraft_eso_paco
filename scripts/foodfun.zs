
// Vanilla Food Pantry doesn't think rustic foods are food. Let's convince it otherwise.
// While these are oredict entries, they're editing food recipes, so here instead oredict script. fukkit.
// And while we're at it, reptile meat is totally food, too.

val kebabmain = <ore:ingredientKebabMain>;
val kebabfill = <ore:ingredientKebabFill>;
val kebabfruit = <ore:ingredientKebabFruit>;
val kebabadventure = <ore:ingredientKebabAdventure>;
val dryableseeds = <ore:itemDryableSeed>;
val foodgoodmeat = <ore:foodGoodMeat>;

foodgoodmeat.add(<reptilemod:croc_raw>);
foodgoodmeat.add(<reptilemod:turtle_raw>);
foodgoodmeat.add(<reptilemod:reptile_raw>);
foodgoodmeat.add(<reptilemod:croc_cooked>);
foodgoodmeat.add(<reptilemod:turtle_cooked>);
foodgoodmeat.add(<reptilemod:reptile_cooked>);

kebabmain.add(<rustic:chili_pepper>);

kebabfill.add(<rustic:tomato>);
kebabfill.add(<biomesoplenty:persimmon>);
kebabfill.add(<biomesoplenty:pear>);

kebabfruit.add(<rustic:grapes>);
kebabfruit.add(<biomesoplenty:pear>);
kebabfruit.add(<biomesoplenty:peach>);
kebabfruit.add(<biomesoplenty:persimmon>);

kebabadventure.add(<reptilemod:turtle_raw>);
kebabadventure.add(<reptilemod:reptile_raw>);

dryableseeds.add(<rustic:tomato_seeds>);

recipes.addShaped(<vanillafoodpantry:kebab:0>*4,
    [[kebabfill, kebabfill],
     [<reptilemod:croc_raw>, <vanillafoodpantry:skewers_wood>]]);


// vinegar powder recipe.
// normal is 6 apples. Let's add an alternate using grapes.

recipes.addShaped(<vanillafoodpantry:foodpowder:22>*8,
    [[<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<rustic:grapes>, <rustic:grapes>, <rustic:grapes>],
     [<vanillafoodpantry:fermenting_bucket>, <vanillafoodpantry:cloth_bag>, <vanillafoodpantry:drying_agent>]]);

//.

