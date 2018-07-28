import crafttweaker.events.IEventManager; 
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import mods.AAMarkerAPI;


//Clicking (left- or right-) on a the specified blocks with an Antique Atlas item in-hand will add a marker to that atlas
//Clicking on a spawner will add a marker with the "skull" icon, and the diamond ore will use the "diamond" icon

events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){ 
    
    if (<antiqueatlas:antique_atlas:*>.matches(event.player.currentItem)) { 

        val samplearray = [
                <geolosys:ore_sample_vanilla:0>, // coal
                <geolosys:ore_sample_vanilla:1>, // cinnabar
                <geolosys:ore_sample_vanilla:2>, // gold
                <geolosys:ore_sample_vanilla:3>, // lapis lazuli
                <geolosys:ore_sample_vanilla:4>, // quartz
                <geolosys:ore_sample_vanilla:5>, // kimberlite (diamond)
                <geolosys:ore_sample_vanilla:6>, // beryl (emerald)
                <geolosys:ore_sample:0>, // hematite (iron)
                <geolosys:ore_sample:1>, // limonite (iron/nickel)
                <geolosys:ore_sample:2>, // malachite (copper)
                <geolosys:ore_sample:3>, // azurite (copper)
                <geolosys:ore_sample:4>, // cassiterite (tin) 
                <geolosys:ore_sample:5>, // teallite (tin) 
                <geolosys:ore_sample:6>, // galena (lead/silver)
                <geolosys:ore_sample:7>, // bauxite (aluminum)
                <geolosys:ore_sample:8>, // platinum
                <geolosys:ore_sample:9>, // autunite (uranium)
                <geolosys:ore_sample:10>,  // sphalerite (zinc)
                <contenttweaker:sub_block_holder_0:0>, // TC amber
                <contenttweaker:sub_block_holder_0:1>, // vfp trona
                <contenttweaker:sub_block_holder_0:2>, // MgC tungsten
                <contenttweaker:sub_block_holder_0:3>, // quicksilver
                <contenttweaker:sub_block_holder_0:4>, // vfp natron
                <contenttweaker:sub_block_holder_0:5>, // ec dark gem
                <contenttweaker:sub_block_holder_0:6>, // eb crystal ore
                <contenttweaker:sub_block_holder_0:7>, // pyrite
                <contenttweaker:sub_block_holder_0:8>, // apatite
                <contenttweaker:sub_block_holder_0:9>, // vfp rock salt
                <contenttweaker:sub_block_holder_0:10>, // aetherium (not currently present)
                <forestry:beehives:0>, // forest hive
                <forestry:beehives:1>, // meadow hive
                <forestry:beehives:2>, // modest hive
                <forestry:beehives:3>, // tropical hive
                <forestry:beehives:4>, // ender hive
                <forestry:beehives:5>, // wintry hive
                <forestry:beehives:6>, // marshy hive
                <magicbees:hiveblock:0>, // curious hive
                <magicbees:hiveblock:1>, // unusual hive
                <magicbees:hiveblock:2>, // resonant hive
                <magicbees:hiveblock:3>, // deep hive
                <magicbees:hiveblock:4>, // infernal hive
                <magicbees:hiveblock:5> // oblivion hive
            ] as IItemStack[];

        val metalarray = [ 
                <minecraft:gold_ore>,
                <minecraft:iron_ore>,
                <geolosys:ore:0>, // hematite (iron)
                <geolosys:ore:1>, // limonite (iron/nickel)
                <geolosys:ore:2>, // malachite (copper)
                <geolosys:ore:3>, // azurite (copper)
                <geolosys:ore:4>, // cassiterite (tin)
                <geolosys:ore:5>, // teallite (tin)
                <geolosys:ore:6>, // galena (lead/silver)
                <geolosys:ore:7>, // bauxite (aluminum)
                <geolosys:ore:8>, // platinum
                <geolosys:ore:9>, // autunite (uranium)
                <geolosys:ore:10>,  // sphalerite (zinc)
                <geolosys:ore_vanilla:2>, // gold
                <iceandfire:silver_ore>, 
                <thaumcraft:ore_cinnabar>, 
                <magneticraft:ores:3>, // tungsten
                <magneticraft:ores:4>, // pyrite
                <tconstruct:ore:0>, // cobalt
                <tconstruct:ore:1>, // ardite
                <thebetweenlands:octine_ore>,
                <thebetweenlands:syrmorite_ore>
                
            ] as IItemStack[];
            
        val gemarray = [
                <minecraft:diamond_ore>,
                <minecraft:emerald_ore>,
                <minecraft:lapis_ore>,
                <astralsorcery:blockcustomsandore>,
                <deepresonance:resonating_ore>,
                <iceandfire:sapphire_ore>,
                <geolosys:ore_vanilla:3>, // lapis
                <geolosys:ore_vanilla:5>, // kimberlite (diamond)
                <geolosys:ore_vanilla:6>,  // beryl (emerald)
                <nex:amethyst_ore>,
                <nex:rime_ore>,
                <thaumcraft:crystal_aer:*>,
                <thaumcraft:crystal_ignis:*>,
                <thaumcraft:crystal_aqua:*>,
                <thaumcraft:crystal_terra:*>,
                <thaumcraft:crystal_ordo:*>,
                <thaumcraft:crystal_perditio:*>,
                <thaumcraft:crystal_vitium:*>,
                <thebetweenlands:aqua_middle_gem_ore>,
                <thebetweenlands:crimson_middle_gem_ore>,
                <thebetweenlands:green_middle_gem_ore>,
                <thebetweenlands:valonite_ore>,
                <thebetweenlands:life_crystal_stalactite>,
                <rftools:dimensional_shard_ore:*>
            ] as IItemStack[];

        val bulkarray = [
                <minecraft:coal_ore>,
                <minecraft:quartz_ore>,
                <geolosys:ore_vanilla:0>, // coal
                <geolosys:ore_vanilla:1>, // cinnabar (redstone)
                <geolosys:ore_vanilla:4>, // quartz
                <thaumcraft:ore_amber:0>,
                <vanillafoodpantry:rock_salt_ore:0>,
                <vanillafoodpantry:rock_salt_ore_nether:0>,
                <vanillafoodpantry:natron_ore:0>,
                <vanillafoodpantry:trona_ore:0>,
                <forestry:resources:0>, // apatite, bane of backpacks
                <evilcraft:dark_ore:0>, // dark gems, to be specific
                <ebwizardry:crystal_ore:0>,
                <nex:quartz_ore:0>, // fiery quartz
                <nex:quartz_ore:1>, // icy quartz
                <nex:quartz_ore:2>, // lively quartz
                <nex:quartz_ore:3>, // gloomy quartz
                <quark:biotite_ore>,
                <thebetweenlands:sulfur_ore>,
                <thebetweenlands:slimy_bone_ore>,
                <astralsorcery:blockmarble:*>,
                <quark:limestone:*>
            ] as IItemStack[];
                
        val fluidarray = [
                <thermalfoundation:ore_fluid:0>, // oil sand
                <thermalfoundation:ore_fluid:1>, // oil shale
                <thermalfoundation:ore_fluid:2>, // destabilized redstone
                <thermalfoundation:ore_fluid:3>, // energized netherrack
                <thermalfoundation:ore_fluid:4>, // resonant end stone
                <thermalfoundation:ore_fluid:5> // red oil sand
            ] as IItemStack[];
    
        var ismarkable = false as bool;
        
        var atlasID as int; 
        var x as double;
        var z as double;
        var y as int;
        
        var thisname = "" as string;
        var thisicon = "" as string;

        if (!event.world.isRemote()){
            atlasID = event.player.currentItem.metadata; 
            x = event.player.x;
            z = event.player.z;
            y = event.player.y as int;

            for item in samplearray {
                if ( (item.asBlock()) in (event.block) ) {
                    ismarkable = true;
                    thisname = item.displayName as string;
                    thisicon = "google";
                }
            }

            for item in metalarray {
                if ( (item.asBlock()) in (event.block) ) {
                    ismarkable = true;
                    thisname = item.displayName as string;
                    thisicon = "pickaxe";
                }
            }

            for item in bulkarray {
                if ( (item.asBlock()) in (event.block) ) {
                    ismarkable = true;
                    thisname = item.displayName as string;
                    thisicon = "pickaxe";
                }
            }

            for item in gemarray {
                if ( (item.asBlock()) in (event.block) ) {
                    ismarkable = true;
                    thisname = item.displayName as string;
                    thisicon = "diamond";
                }
            }

            for item in fluidarray {
                if ( (item.asBlock()) in (event.block) ) {
                    ismarkable = true;
                    thisname = item.displayName as string;
                    thisicon = "google";
                }
            }
            
            if (ismarkable == true) {
                mods.AAMarkerAPI.putMarker(event.world, false, atlasID, thisicon, thisname + " at Y=" + y as string, x, z);
                event.player.sendMessage(thisname + " marked at Y=" + y as string);
                event.cancel();
            }

            if ((<minecraft:mob_spawner>.asBlock()) in (event.block)){ 
                mods.AAMarkerAPI.putMarker(event.world, false, atlasID, "skull", event.block.displayName , x, z); 
                event.player.sendMessage("Marker added");
                event.cancel();
            }
        }
    }
});