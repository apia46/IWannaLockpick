var _rw, _rh, _bgid, _bg, _bgw, _bgh, _bgx, _bgy, _bgxs, _bgys, _bgxt, _bgyt, _bgb, _bga;
_rw = room_width
_rh = room_height
_bgid = argument0
_bg = background_index[_bgid]
_bgw = background_get_width(_bg)
_bgh = background_get_height(_bg)
_bgx = background_x[_bgid]
_bgy = background_y[_bgid]
_bgxs = background_xscale[_bgid]
_bgys = background_yscale[_bgid]
_bgxt = background_htiled[_bgid]
_bgyt = background_vtiled[_bgid]
_bgb = background_blend[_bgid]
_bga = background_alpha[_bgid]
if (_bgxt && _bgyt)
    draw_background_tiled_ext(_bg, _bgx, _bgy, _bgxs, _bgys, _bgb, _bga)
else if _bgxt
{
    for (_scrX = (_bgx - _rw); _scrX < _rw; _scrX += (_bgw * _bgxs))
        draw_background_ext(_bg, _scrX, _bgy, _bgxs, _bgys, 0, _bgb, _bga)
}
else if _bgyt
{
    for (_scrY = (_bgy - _rh); _scrY < _rh; _scrY += (_bgh * _bgys))
        draw_background_ext(_bg, _bgx, _scrY, _bgxs, _bgys, 0, _bgb, _bga)
}
else
    draw_background_ext(_bg, _bgx, _bgy, _bgxs, _bgys, 0, _bgb, _bga)
