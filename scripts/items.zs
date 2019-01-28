//iron gear
recipes.removeShaped(<thermalfoundation:material:24>);
val iron = <minecraft:iron_ingot>;
val ironGear = <thermalfoundation:material:24>;
val woodGear = <thermalfoundation:material:23>;
recipes.addShaped("IronGear", ironGear,
 [[null,iron,null],
  [iron,woodGear,iron],
  [null,iron,null]]);

recipes.remove(<industrialforegoing:pink_slime>, false);
recipes.remove(<projecte:condenser_mk1>, false);
recipes.remove(<projecte:item.pe_philosophers_stone>, false);

//pink slime
val pinkSlime = <industrialforegoing:pink_slime>;
val pinkSlimeIngot = <industrialforegoing:pink_slime_ingot>;
recipes.addShaped("PinkSlimeFix", pinkSlime,
 [[pinkSlimeIngot,null,null],
  [null,null,null],
  [null,null,null]]);



