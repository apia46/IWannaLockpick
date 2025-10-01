///scrMakeListFromArray(array);
var _l;

_l = ds_list_create();
for(var i = 0; i < array_length_1d(argument0); i+=1){
    ds_list_add(_l,argument0[i]);
}

return _l;
