//ee watch
recipes.replaceAllOccurences(<projecte:item.pe_matter>, <projecte:item.pe_klein_star:5>, <projecte:item.pe_time_watch>);
//recipes.removeShaped(<projecte:item.pe_time_watch>);
//recipes.addShaped("WatchFix", <projecte:item.pe_time_watch>,
// [[<projecte:item.pe_klein_star:5>,<minecraft:glowstone_block>,<projecte:item.pe_klein_star:5>],
//  [<minecraft:obsidian>,<minecraft:clock>,<minecraft:obsidian>],
//  [<projecte:item.pe_klein_star:5>,<minecraft:glowstone_block>,<projecte:item.pe_klein_star:5>]]);

//ee klein
recipes.replaceAllOccurences(<ore:gemDiamond>, <projecte:matter_block:1>, <projecte:item.pe_klein_star>);
//recipes.removeShaped(<projecte:item.pe_klein_star>);
//recipes.addShaped("KleinStarFix", <projecte:pe_klein_star>,
// [[<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>],
//  [<projecte:item.pe_fuel:1>,<projecte:matter_block:1>,<projecte:item.pe_fuel:1>],
//  [<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>]]);

//mk1
//recipes.replaceAllOccurences(<ore:gemDiamond>, <ore:blockDiamond>, <projecte:condenser_mk1>);
recipes.removeShaped(<projecte:condenser_mk1>);
recipes.addShaped("MK1Fix", <projecte:condenser_mk1>,
 [[<minecraft:obsidian>,<minecraft:diamond_block>,<minecraft:obsidian>],
  [<minecraft:diamond_block>,<projecte:alchemical_chest>,<minecraft:diamond_block>],
  [<minecraft:obsidian>,<minecraft:diamond_block>,<minecraft:obsidian>]]);

//philoshophers stone
//recipes.replaceAllOccurences(<ore:gemDiamond>, <avaritia:block_resource:2>, <projecte:item.pe_philosophers_stone>);
recipes.removeShaped(<projecte:item.pe_philosophers_stone>);
recipes.addShaped("PhilosphersStoneFix", <projecte:item.pe_philosophers_stone>,
 [[<minecraft:redstone>,<minecraft:glowstone>,<minecraft:redstone>],
  [<minecraft:glowstone>,<avaritia:block_resource:2>,<minecraft:glowstone>],
  [<minecraft:redstone>,<minecraft:glowstone>,<minecraft:redstone>]]);
