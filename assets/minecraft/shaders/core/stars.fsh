#version 330

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

in vec3 starPos;

out vec4 fragColor;

void main() {
    vec4 color = ColorModulator;
    float twinkle = cos((GameTime * 3000.0) + starPos.x + starPos.z);

    // Alpha = Brightness
    color.a += twinkle * 0.25;

    fragColor = color;
}
