

// Rope ladders are neat, but cost too much vine per block

recipes.removeShaped(<ropebridge:rope>);
recipes.addShaped(<ropebridge:rope>*6,
    [[<ore:string>,<ore:vine>,null],
     [<ore:vine>,<ore:string>,null],
     [<ore:string>,<ore:vine>,null]]);
     