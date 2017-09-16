import crafttweaker.item.IIngredient; 

// Embers doesn't add its quartz ore to the appropriate oredict.

val quartz = <ore:oreQuartz>;

quartz.add(<embers:ore_quartz>);


val seedlist = <ore:listAllseed>;

seedlist.add(<rustic:grape_stem>);
seedlist.add(<rustic:apple_seeds>);
seedlist.add(<rustic:tomato_seeds>);
seedlist.add(<rustic:chili_pepper_seeds>);

// adding the 'dye' oredict to all the dyes.

val dye = <ore:dye>;

val dyecolors = 
    [<ore:dyeBlack>, <ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBrown>,
     <ore:dyeBlue>, <ore:dyePurple>, <ore:dyeCyan>, <ore:dyeLightGray>,
     <ore:dyeGray>, <ore:dyePink>, <ore:dyeLime>, <ore:dyeYellow>,
     <ore:dyeLightBlue>, <ore:dyeMagenta>, <ore:dyeOrange>,
     <ore:dyeWhite>] as IIngredient[];
     
for thiscolor in dyecolors {
    for thisitem in thiscolor.items {
        dye.add(thisitem);
    }
}


// Magneticraft thinks they're special.

val ingotaluminum = <ore:ingotAluminum>;
val dustiron = <ore:dustIron>;
val dustgold = <ore:dustGold>;
val dustcopper = <ore:dustCopper>;
val dustlead = <ore:dustLead>;
val dustcobalt = <ore:dustCobalt>;
val dusttungsten = <ore:dustTungsten>;
val duststeel = <ore:dustSteel>;
val dustaluminum = <ore:dustAluminum>;
val dustmithril = <ore:dustMithril>;
val dustnickel = <ore:dustNickel>;
val dustosmium = <ore:dustOsmium>;
val dustsilver = <ore:dustSilver>;
val dusttin = <ore:dustTin>;
val dustzinc = <ore:dustZinc>;

ingotaluminum.add(<magneticraft:ingots:7>);

dustiron.add(<magneticraft:dusts:0>);
dustgold.add(<magneticraft:dusts:1>);
dustcopper.add(<magneticraft:dusts:2>);
dustlead.add(<magneticraft:dusts:3>);
dustcobalt.add(<magneticraft:dusts:4>);
dusttungsten.add(<magneticraft:dusts:5>);
duststeel.add(<magneticraft:dusts:6>);
dustaluminum.add(<magneticraft:dusts:7>);
dustmithril.add(<magneticraft:dusts:9>);
dustnickel.add(<magneticraft:dusts:10>);
dustosmium.add(<magneticraft:dusts:11>);
dustsilver.add(<magneticraft:dusts:12>);
dusttin.add(<magneticraft:dusts:13>);
dustzinc.add(<magneticraft:dusts:14>);

