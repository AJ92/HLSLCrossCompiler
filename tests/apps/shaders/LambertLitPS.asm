//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer SharedConsts
// {
//
//   float4x4 World;                    // Offset:    0 Size:    64 [unused]
//   float4x4 View;                     // Offset:   64 Size:    64 [unused]
//   float4x4 Projection;               // Offset:  128 Size:    64 [unused]
//   float4 vLightDir[2];               // Offset:  192 Size:    32
//   float4 vLightColor[2];             // Offset:  224 Size:    32
//   float4 vOutputColor;               // Offset:  256 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// SharedConsts                      cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[16], immediateIndexed
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_temps 2
dp3 r0.x, cb0[12].xyzx, v1.xyzx
mul_sat r0.xyz, r0.xxxx, cb0[14].xyzx
dp3 r0.w, cb0[13].xyzx, v1.xyzx
mul_sat r1.xyz, r0.wwww, cb0[15].xyzx
add o0.xyz, r0.xyzx, r1.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 7 instruction slots used
