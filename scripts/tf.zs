//iron gear
recipes.remove(<thermalfoundation:material:24>);
recipes.removeShaped(<thermalfoundation:material:24>);
val iron = <minecraft:iron_ingot>;
val ironGear = <thermalfoundation:material:24>;
val woodGear = <thermalfoundation:material:23>;
recipes.addShaped("IronGear", ironGear,
 [[null,iron,null],
  [iron,woodGear,iron],
  [null,iron,null]]);


