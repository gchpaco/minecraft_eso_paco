#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
        "amber": MaterialSystem.getMaterialBuilder().setName("Amber").setColor(Color.fromHex("f4b942")).build(),
        "apatite": MaterialSystem.getMaterialBuilder().setName("Apatite").setColor(Color.fromHex("62e5fc")).build(),
        "cinnabar": MaterialSystem.getMaterialBuilder().setName("Quicksilver").setColor(Color.fromHex("d61111")).build(),
        "crystal": MaterialSystem.getMaterialBuilder().setName("Crystal").setColor(Color.fromHex("d9f2f7")).build(),
        "dark": MaterialSystem.getMaterialBuilder().setName("Dark").setColor(Color.fromHex("000000")).build(),
        "natron": MaterialSystem.getMaterialBuilder().setName("Natron").setColor(Color.fromHex("5d9eaa")).build(),
        "pyrite": MaterialSystem.getMaterialBuilder().setName("Pyrite").setColor(16776971).build(),
        "salt": MaterialSystem.getMaterialBuilder().setName("Salt").setColor(Color.fromHex("e3ebed")).build(),
        "trona": MaterialSystem.getMaterialBuilder().setName("Trona").setColor(Color.fromHex("ddab5a")).build(),
        "tungsten": MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(Color.fromHex("363837")).build(),
};
