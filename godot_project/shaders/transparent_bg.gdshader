shader_type canvas_item;

uniform vec4 u_color_key : source_color;
uniform vec4 u_replacement_color : source_color;
uniform float tolerance : hint_range(0.0, 1.0, 0.01);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec4 col = texture(TEXTURE, UV);
    float d = distance(col.rgb, u_color_key.rgb);
    if(d < tolerance) {
        col = u_replacement_color;
    }
    COLOR = col;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
