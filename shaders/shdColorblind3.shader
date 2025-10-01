attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec2 newPos = vec2(ceil(v_vTexcoord.x*200.),ceil(v_vTexcoord.y*152.));
    vec4 defCol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float mult = mod(newPos.x+newPos.y,2.)*min((defCol.g)/(defCol.r+0.01),1.);
    vec4 secCol = vec4(defCol.r*(1.-mult),defCol.g*mult,defCol.b,defCol.a);
    gl_FragColor = secCol;
}
