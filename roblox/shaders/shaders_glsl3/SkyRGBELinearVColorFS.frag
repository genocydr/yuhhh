#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    float f1 = f0.w;
    vec3 f2 = (f0.xyz + vec3(0.00196078442968428134918212890625)) * exp2((floor(f1 * 255.0) * 0.125) - 16.0);
    bvec3 f3 = bvec3(f1 > 0.0);
    vec3 f4 = vec3(f3.x ? f2.x : vec3(0.0).x, f3.y ? f2.y : vec3(0.0).y, f3.z ? f2.z : vec3(0.0).z);
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec4 f8 = f7;
    f8.w = 1.0;
    _entryPointOutput = vec4(f8.xyz * 1.0, 1.0);
}

//$$DiffuseMapTexture=s0
