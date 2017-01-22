// Chisel additions

// Adding Quarried Block (not the raw uncooked stone) to the Chisel Marble group

mods.chisel.Groups.removeGroup("RCQuarriedBlock");
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:0>);
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:1>);
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:2>);
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:3>);
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:4>);
mods.chisel.Groups.addVariation("marble", <Railcraft:brick.quarried:5>);
mods.chisel.Groups.addVariation("marble_slab", <Railcraft:slab:10>);
mods.chisel.Groups.addVariation("marble_slab", <Railcraft:slab:17>);
mods.chisel.Groups.addVariation("marble_slab", <Railcraft:slab:25>);
mods.chisel.Groups.addVariation("marble_slab", <Railcraft:slab:33>);
mods.chisel.Groups.addVariation("marble", <Artifice:tile.artifice.marble:0>);
mods.chisel.Groups.addVariation("marble", <Artifice:tile.artifice.marble:2>);
mods.chisel.Groups.addVariation("marble", <Artifice:tile.artifice.marble:3>);
mods.chisel.Groups.addVariation("marble", <Artifice:tile.artifice.marble:4>);
mods.chisel.Groups.addVariation("marble", <Artifice:tile.artifice.marble:5>);

// Add Quark marble to chisel marble group
mods.chisel.Groups.addVariation("marble", <quark:marble>);

// Add quark basalt to basalt group
mods.chisel.Groups.addVariation("basalt", <quark:basalt>);

// Add quark limestone to limestone group
mods.chisel.Groups.addVariation("limestone", <quark:limestone>);
