//pink slime
recipes.remove(<industrialforegoing:pink_slime>, false);
recipes.removeShaped(<industrialforegoing:pink_slime>);
val pinkSlime = <industrialforegoing:pink_slime>;
val pinkSlimeIngot = <industrialforegoing:pink_slime_ingot>;
recipes.addShaped("PinkSlimeFix", pinkSlime,
 [[pinkSlimeIngot,null,null],
  [null,null,null],
  [null,null,null]]);