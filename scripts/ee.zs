//ee watch
recipes.removeShaped(<projecte:item.pe_time_watch>);
recipes.addShaped("WatchFix", <projecte:item.pe_time_watch>,
 [[<projecte:item.pe_kleinstar:5>,<minecraft:glowstone_block>,<projecte:item.pe_kleinstar:5>],
  [<minecraft:obsidian>,<minecraft:clock>,<minecraft:obsidian>],
  [<projecte:item.pe_kleinstar:5>,<minecraft:glowstone_block>,<projecte:item.pe_kleinstar:5>]]);

//ee klein
recipes.removeShaped(<projecte:pe_kleinstar>);
recipes.addShaped("KleinStarFix", <projecte:pe_kleinstar>,
 [[<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>],
  [<projecte:item.pe_fuel:1>,<projecte:matter_block:1>,<projecte:item.pe_fuel:1>],
  [<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>,<projecte:item.pe_fuel:1>]]);

//mk1
recipes.removeShaped(<projecte:condenser_mk1>);
recipes.addShaped("MK1Fix", <projecte:condenser_mk1>,
 [[<minecraft:obsidian>,<minecraft:diamond_block>,<minecraft:obsidian>],
  [<minecraft:diamond_block>,<projecte:alchemical_chest>,<minecraft:diamond_block>],
  [<minecraft:obsidian>,<minecraft:diamond_block>,<minecraft:obsidian>]]);

//philoshophers stone
recipes.removeShaped(<projecte:item.pe_philosophers_stone>);
recipes.addShaped("PhilosphersStoneFix", <projecte:item.pe_philosophers_stone>,
 [[<minecraft:redstone>,<minecraft:glowstone>,<minecraft:redstone>],
  [<minecraft:glowstone>,<avaritia:block_resource:2>,<minecraft:glowstone>],
  [<minecraft:redstone>,<minecraft:glowstone>,<minecraft:redstone>]]);
