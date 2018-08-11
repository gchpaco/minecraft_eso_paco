import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;


// ore tripling: thaumcraft purified ore -> embers melter

mods.embers.Melter.add(<liquid:iron> * 432, <thaumcraft:cluster:0>);
mods.embers.Melter.add(<liquid:gold> * 432, <thaumcraft:cluster:1>);
mods.embers.Melter.add(<liquid:copper> * 432, <thaumcraft:cluster:2>);
mods.embers.Melter.add(<liquid:tin> * 432, <thaumcraft:cluster:3>);
mods.embers.Melter.add(<liquid:tin> * 432, <thaumcraft:cluster:4>);
mods.embers.Melter.add(<liquid:lead> * 432, <thaumcraft:cluster:5>);
mods.embers.Melter.add(<liquid:aluminum> * 432, <jaopca:item_clusteraluminium>);
mods.embers.Melter.add(<liquid:ardite> * 432, <jaopca:item_clusterardite>);
mods.embers.Melter.add(<liquid:astral_starmetal> * 432, <jaopca:item_clusterastralstarmetal>);
mods.embers.Melter.add(<liquid:cobalt> * 432, <jaopca:item_clustercobalt>);
mods.embers.Melter.add(<liquid:nickel> * 432, <jaopca:item_clusternickel>);
mods.embers.Melter.add(<liquid:octine> * 432, <jaopca:item_clusteroctine>);
mods.embers.Melter.add(<liquid:platinum> * 432, <jaopca:item_clusterplatinum>);
mods.embers.Melter.add(<liquid:syrmorite> * 432, <jaopca:item_clustersyrmorite>);
mods.embers.Melter.add(<liquid:tungsten> * 432, <jaopca:item_clustertungsten>);
mods.embers.Melter.add(<liquid:zinc> * 432, <jaopca:item_clusterzinc>);
mods.embers.Melter.add(<liquid:uranium> * 432, <jaopca:item_clusteruranium>);


//mods.embers.Stamper.add(<output>,<liquid>,<stamp>,<input>);

mods.embers.Stamper.add(<minecraft:blaze_powder>*4,null,<embers:stamp_flat>,<minecraft:blaze_rod>);

// invar ingot and plate
mods.embers.Stamper.add(<thermalfoundation:material:162>,<liquid:invar>*144,<embers:stamp_bar>,null);
mods.embers.Stamper.add(<thermalfoundation:material:354>,<liquid:invar>*144,<embers:stamp_plate>,null);

// constantan ingot and plate
mods.embers.Stamper.add(<immersiveengineering:metal:6>,<liquid:constantan>*144,<embers:stamp_bar>,null);
mods.embers.Stamper.add(<immersiveengineering:metal:36>,<liquid:constantan>*144,<embers:stamp_plate>,null);


//mods.embers.Mixer.add(<outputfluid>,[<inputfluid1>,<inputfluid2>,<inputfluid3>,...]);

// invar alloying
mods.embers.Mixer.add(<liquid:invar> * 144, 
    [<liquid:iron> * 96, <liquid:nickel> * 48]);

// constantan alloying    
mods.embers.Mixer.add(<liquid:constantan> * 2, 
    [<liquid:copper> * 1, <liquid:nickel> * 1]);

