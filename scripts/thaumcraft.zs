// Ways of converting coal ore to amber ore.

mods.thaumcraft.Crucible.registerRecipe("coaltoamber", "", <thaumcraft:ore_amber>, <minecraft:coal_ore>,
    [<aspect:vitreus>*10, <aspect:vinculum>*10, <aspect:terra>*5]);

<minecraft:ice>.setAspects(<aspect:gelum>*20);
<minecraft:packed_ice>.setAspects([<aspect:gelum>*15,<aspect:ordo>*5]);
<minecraft:snow>.setAspects(<aspect:gelum>*3);
<minecraft:snow_layer>.setAspects(<aspect:gelum>);
<minecraft:snowball>.setAspects(<aspect:gelum>);


//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

mods.tconstruct.Casting.addTableRecipe(<thaumcraft:ingot:0>, <tconstruct:cast_custom:0>, <liquid:thaumium>, 144);
mods.tconstruct.Casting.addTableRecipe(<thaumcraft:nugget:6>, <tconstruct:cast_custom:1>, <liquid:thaumium>, 144);
mods.tconstruct.Casting.addTableRecipe(<thaumcraft:plate:2>, <tconstruct:cast_custom:3>, <liquid:thaumium>, 144);


//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addBasinRecipe(<thaumcraft:metal_thaumium>, null, <liquid:thaumium>, 1296);

