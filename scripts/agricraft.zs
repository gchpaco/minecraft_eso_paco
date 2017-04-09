// Add unobtainable seed from Agricraft
 
vanilla.seeds.addSeed( <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "sugarcane_plant", agri_growth: 1 as byte}).weight(10));
vanilla.seeds.addSeed( <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "cactus_plant", agri_growth: 1 as byte}).weight(10));
vanilla.seeds.addSeed(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "potato_plant", agri_growth: 1 as byte}).weight(10));

// TODO Maybe a recipe to produce seeds from mushrooms, rather than just adding them to the seed table?

vanilla.seeds.addSeed( <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "redshroom_plant", agri_growth: 1 as byte}).weight(10));
vanilla.seeds.addSeed(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "brownshroom_plant", agri_growth: 1 as byte}).weight(10));
