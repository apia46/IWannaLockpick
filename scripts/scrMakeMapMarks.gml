var _m = ds_map_create();

ds_map_add_list(_m,"vis",scrMakeListFromArray(global.pmVis));
ds_map_add_list(_m,"x",scrMakeListFromArray(global.pmX));
ds_map_add_list(_m,"y",scrMakeListFromArray(global.pmY));
ds_map_add_list(_m,"type",scrMakeListFromArray(global.pmType));
ds_map_add_list(_m,"sym",scrMakeListFromArray(global.pmSymbol));
ds_map_add_list(_m,"num",scrMakeListFromArray(global.pmNum));
ds_map_add_list(_m,"str",scrMakeListFromArray(global.pmStr));
ds_map_add_list(_m,"col",scrMakeListFromArray(global.pmCol));

return _m;
