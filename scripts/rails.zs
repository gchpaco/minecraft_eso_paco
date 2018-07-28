// Signals' limiter rail recipe is inexplicably the same as Extra Rails' comparator rail recipe.

recipes.removeShaped(<signals:limiter_rail>);
recipes.addShaped(<signals:limiter_rail>,
    [[<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>],
     [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>],
     [<ore:ingotIron>, null, <ore:ingotIron>]]);

     
// Alternate rails recipes.

recipes.addShaped(<minecraft:rail>*12,
    [[<ore:ingotBronze>, null, <ore:ingotBronze>],
     [<ore:ingotBronze>, <ore:stickWood>, <ore:ingotBronze>],
     [<ore:ingotBronze>, null, <ore:ingotBronze>]]);

recipes.addShaped(<minecraft:rail>*24,
    [[<ore:ingotSteel>, null, <ore:ingotSteel>],
     [<ore:ingotSteel>, <ore:stickWood>, <ore:ingotSteel>],
     [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
     

//Carpenter
//OutputStack, InputArray, [InputFluid], Time in Ticks, [BoxStack]
mods.forestry.Carpenter.addRecipe(<minecraft:rail>*16, 
    [[<ore:ingotBronze>, null, <ore:ingotBronze>],
     [<ore:ingotBronze>, <ore:plankWood>, <ore:ingotBronze>],
     [<ore:ingotBronze>, null, <ore:ingotBronze>]], 50,<liquid:creosote>*500);

mods.forestry.Carpenter.addRecipe(<minecraft:rail>*20, 
    [[<ore:ingotIron>, null, <ore:ingotIron>],
     [<ore:ingotIron>, <ore:plankWood>, <ore:ingotIron>],
     [<ore:ingotIron>, null, <ore:ingotIron>]], 50,<liquid:creosote>*500);

mods.forestry.Carpenter.addRecipe(<minecraft:rail>*32, 
    [[<ore:ingotSteel>, null, <ore:ingotSteel>],
     [<ore:ingotSteel>, <ore:plankWood>, <ore:ingotSteel>],
     [<ore:ingotSteel>, null, <ore:ingotSteel>]], 50,<liquid:creosote>*500);
     
// less immersive railroading.

val cart = <minecraft:minecart>;
val steel_plate = <ore:plateSteel>;
val steel_block = <ore:blockSteel>;
val steel_rod = <immersiveengineering:material:2>;
val wood_crate = <immersiveengineering:wooden_device0:0>;
val reinf_crate = <immersiveengineering:wooden_device0:5>;
val wood_barrel = <immersiveengineering:wooden_device0:1>;
val metal_barrel = <immersiveengineering:metal_device0:4>;
val rs_engineering_block =<immersiveengineering:metal_decoration0:3>;
val engine_furnace = <embers:boiler>;
val mgc_boiler = <magneticraft:steam_boiler>;
val handcar = <immersiverailroading:item_rolling_stock>.withTag(
    {defID:"rolling_stock/hand_car/hand_car_1.json",gauge:0.632d,display:{Name:"§rHand Car"}});
val locomotive = <immersiverailroading:item_rolling_stock>.withTag(
    {defID:"rolling_stock/locomotives/cooke_mogul.json",gauge:0.632d,display:{Name:"§rDSP&P Mogul"}});
val tender = <immersiverailroading:item_rolling_stock>.withTag(
    {defID:"rolling_stock/tender/cooke_tender.json",gauge:0.632d,display:{Name:"§rCooke Tender"}});
val freight = <immersiverailroading:item_rolling_stock>.withTag(
    {defID:"rolling_stock/freight/70t_hopper_slsf.json",gauge:0.632d,display:{Name:"§r70T Hopper SLSF"}});
val tanker = <immersiverailroading:item_rolling_stock>.withTag(
    {defID:"rolling_stock/tank/kamx_t.json",gauge:0.632d,display:{Name:"§rKamx T"}});
val railsegment = <immersiverailroading:item_rail_part>.withTag({gauge:0.632d,display:{Name:"Rail Segment",Lore:["Five blocks worth of rail.","Don't forget treated planks!"]}});
    

// minecraft gauge hand car
recipes.addShaped(handcar,
    [[null, null, null],
     [null, steel_rod, null],
     [cart, steel_plate, cart]]);
    
// minecraft gauge locomotive
recipes.addShaped(locomotive,
    [[steel_block, mgc_boiler, mgc_boiler],
     [steel_block, engine_furnace, steel_block],
     [cart, steel_plate, cart]]);

// minecraft gauge tender
recipes.addShaped(tender,
    [[steel_plate, wood_barrel, steel_plate],
     [steel_plate, wood_crate, steel_plate],
     [cart, steel_plate, cart]]);

// minecraft gauge freight wagon
recipes.addShaped(freight,
    [[steel_plate, reinf_crate, steel_plate],
     [steel_plate, reinf_crate, steel_plate],
     [cart, steel_plate, cart]]);


// minecraft gauge fluid wagon
recipes.addShaped(tanker,
    [[steel_plate, metal_barrel, steel_plate],
     [steel_plate, metal_barrel, steel_plate],
     [cart, steel_plate, cart]]);


// minecraft gauge track segment
// Note: Each minecraft gauge rail segment can produce up to FIVE blocks of length
// so six steel will produce 25 blocks worth of rail if you stick to multiples of 5

recipes.addShaped(railsegment*8,
    [[steel_rod, null, null],
     [steel_rod, null, null],
     [steel_rod, null, null]]);

// speed retarder
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:0,gauge:0.632d})*5,
    [[null, <ore:sand>, null],
     [null, railsegment, null],
     [null, null, null]]);

// locomotive control
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:2,gauge:0.632d})*5,
    [[null, rs_engineering_block, null],
     [null, railsegment, null],
     [null, null, null]]);

// item loader
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:3,gauge:0.632d})*5,
    [[null, <wopper:wopper>, null],
     [null, railsegment, null],
     [null, null, null]]);

// item unloader
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:4,gauge:0.632d})*5,
    [[null, null, null],
     [null, railsegment, null],
     [null, <wopper:wopper>, null]]);

// fluid loader
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:5,gauge:0.632d})*5,
    [[null, <minecraft:bucket>, null],
     [null, railsegment, null],
     [null, null, null]]);

// fluid unloader
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:6,gauge:0.632d})*5,
    [[null, null, null],
     [null, railsegment, null],
     [null, <minecraft:bucket>, null]]);

// detector
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:7,gauge:0.632d})*5,
    [[null, <minecraft:comparator>, null],
     [null, railsegment, null],
     [null, null, null]]);

// coupler
recipes.addShaped(<immersiverailroading:item_augment>.withTag({augment:8,gauge:0.632d})*5,
    [[null, <minecraft:tripwire_hook>, null],
     [null, railsegment, null],
     [null, null, null]]);
