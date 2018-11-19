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

val rail = <ore:rail>;

rail.add(<botania:ghostrail>);
// rail.add(<expindustry:rail_bridge>);
// rail.add(<expindustry:type_rail>);
// rail.add(<expindustry:rail_bridge_powered>);
rail.add(<extrarails:locking_rail>);
rail.add(<extrarails:direction_rail>);
rail.add(<extrarails:teleporting_rail>);
rail.add(<extrarails:comparator_rail>);
rail.add(<extrarails:wooden_rail>);
rail.add(<tconstruct:wood_rail>);
rail.add(<tconstruct:wood_rail_trapdoor>);
