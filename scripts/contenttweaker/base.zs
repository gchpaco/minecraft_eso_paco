#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
        "aetherium": MaterialSystem.getMaterialBuilder().setName("Aetherium").setColor(1394311).build(),
        "amber": MaterialSystem.getMaterialBuilder().setName("Amber").setColor(16038210).build(),
        "apatite": MaterialSystem.getMaterialBuilder().setName("Apatite").setColor(6481404).build(),
        "cinnabar": MaterialSystem.getMaterialBuilder().setName("Quicksilver").setColor(14027531).build(),
        "crystal": MaterialSystem.getMaterialBuilder().setName("Crystal").setColor(14283511).build(),
        "dark": MaterialSystem.getMaterialBuilder().setName("Dark").setColor(0).build(),
        "natron": MaterialSystem.getMaterialBuilder().setName("Natron").setColor(6135466).build(),
        "pyrite": MaterialSystem.getMaterialBuilder().setName("Pyrite").setColor(16776971).build(),
        "salt": MaterialSystem.getMaterialBuilder().setName("Salt").setColor(14937069).build(),
        "trona": MaterialSystem.getMaterialBuilder().setName("Trona").setColor(14527322).build(),
        "tungsten": MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(3553335).build(),
};
