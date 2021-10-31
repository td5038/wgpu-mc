#version 450

layout(location=0) in vec2 v_tex_coords;

layout(location=0) out vec4 f_color;

layout(set = 0, binding = 0) uniform texture2D t_diffuse;
layout(set = 0, binding = 1) uniform sampler s_diffuse;

void main() {
    vec4 diffuse_color = texture(sampler2D(t_diffuse, s_diffuse), vec2(v_tex_coords.x, v_tex_coords.y));
    float bad_lighting = dot(normal, vec3(0.5, 0.5, 0.5))*0.5 + 0.5;

    f_color = diffuse_colorr;
}