#version 330

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;

out vec3 starPos;

void main() {
    starPos = Position;
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
}
