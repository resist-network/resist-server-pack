//iron gear
val iron = <minecraft:iron_ingot>;
val ironGear = <thermalfoundation:material:24>;
val woodGear = <thermalfoundation:material:23>;
recipes.addShaped("IronGear", ironGear,
 [[null,iron,null],
  [iron,woodGear,iron],
  [null,iron,null]]);
//pink slime
val pinkSlime = <industrialforegoing:pink_slime>;
val pinkSlimeIngot = <industrialforegoing:pink_slime_ingot>;
recipes.addShaped("PinkSlimeFix", pinkSlime,
 [[pinkSlimeIngot,null,null],
  [null,null,null],
  [null,null,null]]);
