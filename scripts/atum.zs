import mods.roots.Mortar;

Mortar.addRecipe(<atum:emmer_flour>, [<atum:emmer>]);

recipes.addShapeless(<atum:emmer_dough>, [<ore:portionWater>, <atum:emmer_flour>]);

val dryableseeds = <ore:itemDryableSeed>;
val allseeds = <ore:listAllseed>;

dryableseeds.add(<atum:emmer_seeds>);
dryableseeds.add(<atum:flax_seeds>);

allseeds.add(<atum:emmer_seeds>);
allseeds.add(<atum:flax_seeds>);