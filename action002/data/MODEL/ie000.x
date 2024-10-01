xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 696;
 -12.03021;-6.22642;2.74672;,
 -12.03021;-11.22640;2.74672;,
 -12.03021;-11.22640;5.64250;,
 -12.03021;-6.22642;5.64250;,
 -11.80105;-5.80324;-0.24372;,
 -12.12003;-5.80324;-0.24372;,
 -12.12003;-5.80324;-6.21683;,
 -11.80105;-5.80324;-6.21683;,
 -12.12003;-5.49832;-6.21683;,
 -11.80105;-5.49832;-6.21683;,
 -12.12003;-5.49832;-0.24372;,
 -11.80105;-5.49832;-0.24372;,
 -11.80105;-8.16237;-0.24372;,
 -12.11713;-8.16237;-0.24372;,
 -12.11713;-8.16237;-6.21683;,
 -11.80105;-8.16237;-6.21683;,
 -12.11713;-7.85745;-6.21683;,
 -11.80105;-7.85745;-6.21683;,
 -12.11713;-7.85745;-0.24372;,
 -11.80105;-7.85745;-0.24372;,
 0.46410;-8.16237;-8.09205;,
 0.46410;-8.16237;-8.40812;,
 6.43721;-8.16237;-8.40812;,
 6.43721;-8.16237;-8.09205;,
 6.43721;-7.85745;-8.40812;,
 6.43721;-7.85745;-8.09205;,
 0.46410;-7.85745;-8.40812;,
 0.46410;-7.85745;-8.09205;,
 0.46410;-3.37364;-8.09205;,
 0.46410;-3.37364;-8.40812;,
 6.43721;-3.37364;-8.40812;,
 6.43721;-3.37364;-8.09205;,
 6.43721;-3.06873;-8.40812;,
 6.43721;-3.06873;-8.09205;,
 0.46410;-3.06873;-8.40812;,
 0.46410;-3.06873;-8.09205;,
 -11.80105;-7.96979;-6.39744;,
 -12.11713;-7.96979;-6.39744;,
 -12.11713;-3.16659;-6.39744;,
 -11.80105;-3.16659;-6.39744;,
 -12.11713;-3.16659;-6.09252;,
 -11.80105;-3.16659;-6.09252;,
 -12.11713;-7.96979;-6.09252;,
 -11.80105;-7.96979;-6.09252;,
 -11.80105;-3.37364;-0.24372;,
 -12.11713;-3.37364;-0.24372;,
 -12.11713;-3.37364;-6.21683;,
 -11.80105;-3.37364;-6.21683;,
 -12.11713;-3.06873;-6.21683;,
 -11.80105;-3.06873;-6.21683;,
 -12.11713;-3.06873;-0.24372;,
 -11.80105;-3.06873;-0.24372;,
 12.00640;-11.20604;-8.12893;,
 0.00001;-11.20604;-8.12893;,
 0.00001;-2.80402;-8.12893;,
 12.00640;-2.79684;-8.12893;,
 -12.00635;-11.20604;-8.12893;,
 -12.00635;-2.80402;-8.12893;,
 0.00001;3.13373;-8.12893;,
 12.00640;3.13373;-8.12893;,
 -12.00635;3.13373;-8.12893;,
 0.00001;10.83605;0.00006;,
 12.00640;10.83605;0.00006;,
 -12.00635;10.83605;0.00006;,
 0.00001;3.13373;8.12894;,
 12.00640;3.13373;8.12894;,
 -12.00635;3.13373;8.12894;,
 0.00001;-2.80402;8.12894;,
 12.00640;-2.79684;8.12894;,
 -12.00635;-2.80402;8.12894;,
 0.00001;-11.20604;8.12894;,
 12.00640;-11.20604;8.12894;,
 -12.00635;-11.20604;8.12894;,
 0.00001;-11.20604;0.00006;,
 12.00640;-11.20604;0.00006;,
 -12.00635;-11.20604;0.00006;,
 -12.00635;-2.80402;0.00006;,
 12.00640;-2.79684;0.00006;,
 -11.37025;-11.21581;-8.52612;,
 -12.27557;-11.21581;-8.52612;,
 -12.27557;3.65121;-8.52612;,
 -11.37025;3.65121;-8.52612;,
 -12.27557;3.65121;-7.62080;,
 -11.37025;3.65121;-7.62080;,
 -12.27557;-11.21581;-7.62080;,
 -11.37025;-11.21581;-7.62080;,
 -12.05846;5.80993;1.81316;,
 -12.05846;0.64453;1.81316;,
 -12.05846;0.64453;5.74746;,
 -12.05846;2.62537;5.74746;,
 -11.80105;-7.96979;-3.41025;,
 -12.11713;-7.96979;-3.41025;,
 -12.11713;-3.16659;-3.41025;,
 -11.80105;-3.16659;-3.41025;,
 -12.11713;-3.16659;-3.10532;,
 -11.80105;-3.16659;-3.10532;,
 -12.11713;-7.96979;-3.10532;,
 -11.80105;-7.96979;-3.10532;,
 -3.62026;-7.96979;7.95200;,
 -3.62026;-7.96979;8.26807;,
 -3.62026;-3.16659;8.26807;,
 -3.62026;-3.16659;7.95200;,
 -3.31534;-3.16659;8.26807;,
 -3.31534;-3.16659;7.95200;,
 -3.31534;-7.96979;8.26807;,
 -3.31534;-7.96979;7.95200;,
 -0.61542;-7.96979;7.95200;,
 -0.61542;-7.96979;8.26807;,
 -0.61542;-3.16659;8.26807;,
 -0.61542;-3.16659;7.95200;,
 -0.31051;-3.16659;8.26807;,
 -0.31051;-3.16659;7.95200;,
 -0.31051;-7.96979;8.26807;,
 -0.31051;-7.96979;7.95200;,
 -11.80105;-7.96979;-0.40541;,
 -12.11713;-7.96979;-0.40541;,
 -12.11713;-3.16659;-0.40541;,
 -11.80105;-3.16659;-0.40541;,
 -12.11713;-3.16659;-0.10049;,
 -11.80105;-3.16659;-0.10049;,
 -12.11713;-7.96979;-0.10049;,
 -11.80105;-7.96979;-0.10049;,
 11.84925;0.45615;1.91681;,
 12.16532;0.45615;1.91681;,
 12.16532;6.10874;1.91681;,
 11.84925;6.10874;1.91681;,
 12.16532;6.10874;1.61189;,
 11.84925;6.10874;1.61189;,
 12.16532;0.45615;1.61189;,
 11.84925;0.45615;1.61189;,
 11.84925;0.46106;1.70092;,
 12.16532;0.46106;1.70092;,
 12.16532;0.46106;5.82051;,
 11.84925;0.46106;5.82051;,
 12.16532;0.76597;5.82051;,
 11.84925;0.76597;5.82051;,
 12.16532;0.76597;1.70092;,
 11.84925;0.76597;1.70092;,
 -11.80105;0.45615;-1.63032;,
 -12.11713;0.45615;-1.63032;,
 -12.11713;6.10874;-1.63032;,
 -11.80105;6.10874;-1.63032;,
 -12.11713;6.10874;-1.32541;,
 -11.80105;6.10874;-1.32541;,
 -12.11713;0.45615;-1.32541;,
 -11.80105;0.45615;-1.32541;,
 11.84925;0.48719;6.04453;,
 12.16532;0.48719;6.04453;,
 12.16532;2.60044;6.04453;,
 11.84925;2.60044;6.04453;,
 12.16532;2.60044;5.73961;,
 11.84925;2.60044;5.73961;,
 12.16532;0.48719;5.73961;,
 11.84925;0.48719;5.73961;,
 11.84925;5.91253;1.62867;,
 12.16532;5.91253;1.62867;,
 12.16532;2.38245;5.83359;,
 11.84925;2.38245;5.83359;,
 12.16532;2.61599;6.02965;,
 11.84925;2.61599;6.02965;,
 12.16532;6.14606;1.82472;,
 11.84925;6.14606;1.82472;,
 0.46410;-5.80324;-8.09205;,
 0.46410;-5.80324;-8.40812;,
 6.43721;-5.80324;-8.40812;,
 6.43721;-5.80324;-8.09205;,
 6.43721;-5.49832;-8.40812;,
 6.43721;-5.49832;-8.09205;,
 0.46410;-5.49832;-8.40812;,
 0.46410;-5.49832;-8.09205;,
 -12.11713;0.48719;6.04436;,
 -11.80105;0.48719;6.04436;,
 -11.80105;2.60044;6.04436;,
 -12.11713;2.60044;6.04436;,
 -11.80105;2.60044;5.73944;,
 -12.11713;2.60044;5.73944;,
 -11.80105;0.48719;5.73944;,
 -12.11713;0.48719;5.73944;,
 -12.11713;5.91253;1.62850;,
 -11.80105;5.91253;1.62850;,
 -11.80105;2.38245;5.83343;,
 -12.11713;2.38245;5.83343;,
 -11.80105;2.61599;6.02948;,
 -12.11713;2.61599;6.02948;,
 -11.80105;6.14606;1.82455;,
 -12.11713;6.14606;1.82455;,
 -12.11713;0.46106;1.70075;,
 -11.80105;0.46106;1.70075;,
 -11.80105;0.46106;5.82034;,
 -12.11713;0.46106;5.82034;,
 -11.80105;0.76597;5.82034;,
 -12.11713;0.76597;5.82034;,
 -11.80105;0.76597;1.70075;,
 -12.11713;0.76597;1.70075;,
 12.10663;2.38014;5.79351;,
 12.10663;0.64453;5.79351;,
 12.10663;0.64453;1.85921;,
 12.10663;5.83578;1.85921;,
 -11.80105;5.91253;-1.34219;,
 -12.11713;5.91253;-1.34219;,
 -12.11713;2.38245;-5.54711;,
 -11.80105;2.38245;-5.54711;,
 -12.11713;2.61599;-5.74316;,
 -11.80105;2.61599;-5.74316;,
 -12.11713;6.14606;-1.53824;,
 -11.80105;6.14606;-1.53824;,
 -12.05846;2.38014;-5.50702;,
 -12.05846;0.64453;-5.50702;,
 -12.05846;0.64453;-1.57273;,
 -12.05846;5.83578;-1.57273;,
 -11.80105;0.46106;-1.41444;,
 -12.11713;0.46106;-1.41444;,
 -12.11713;0.46106;-5.53402;,
 -11.80105;0.46106;-5.53402;,
 -12.11713;0.76597;-5.53402;,
 -11.80105;0.76597;-5.53402;,
 -12.11713;0.76597;-1.41444;,
 -11.80105;0.76597;-1.41444;,
 -12.03762;-3.31960;-6.18466;,
 -12.03762;-7.78586;-6.18466;,
 -12.03762;-7.78586;-0.29113;,
 -12.03762;-3.31960;-0.29113;,
 12.28891;-11.21581;-8.61391;,
 11.38359;-11.21581;-8.61391;,
 11.38359;3.65121;-8.61391;,
 12.28891;3.65121;-8.61391;,
 11.38359;3.65121;-7.70860;,
 12.28891;3.65121;-7.70860;,
 11.38359;-11.21581;-7.70860;,
 12.28891;-11.21581;-7.70860;,
 -12.27410;-8.53323;3.37833;,
 -12.27410;-8.54053;3.39265;,
 -12.28995;-8.49898;3.42283;,
 -12.28995;-8.48439;3.39420;,
 -12.27410;-8.55189;3.40401;,
 -12.28995;-8.52170;3.44556;,
 -12.27410;-8.56620;3.41130;,
 -12.28995;-8.55033;3.46014;,
 -12.27410;-8.58207;3.41382;,
 -12.28995;-8.58207;3.46517;,
 -12.27410;-8.59794;3.41130;,
 -12.28995;-8.61381;3.46014;,
 -12.27410;-8.61226;3.40401;,
 -12.28995;-8.64244;3.44556;,
 -12.27410;-8.62362;3.39265;,
 -12.28995;-8.66517;3.42283;,
 -12.27410;-8.63091;3.37833;,
 -12.28995;-8.67976;3.39420;,
 -12.27410;-8.63343;3.36246;,
 -12.28995;-8.68479;3.36246;,
 -12.27410;-8.63091;3.34659;,
 -12.28995;-8.67976;3.33072;,
 -12.27410;-8.62362;3.33228;,
 -12.28995;-8.66517;3.30209;,
 -12.27410;-8.61226;3.32091;,
 -12.28995;-8.64244;3.27937;,
 -12.27410;-8.59794;3.31362;,
 -12.28995;-8.61381;3.26478;,
 -12.27410;-8.58207;3.31111;,
 -12.28995;-8.58207;3.25975;,
 -12.27410;-8.56620;3.31362;,
 -12.28995;-8.55033;3.26478;,
 -12.27410;-8.55189;3.32091;,
 -12.28995;-8.52170;3.27937;,
 -12.27410;-8.54053;3.33228;,
 -12.28995;-8.49898;3.30209;,
 -12.27410;-8.53323;3.34659;,
 -12.28995;-8.48439;3.33072;,
 -12.27410;-8.53072;3.36246;,
 -12.28995;-8.47937;3.36246;,
 -12.30911;-8.45744;3.45302;,
 -12.30911;-8.43555;3.41007;,
 -12.30911;-8.49152;3.48710;,
 -12.30911;-8.53446;3.50899;,
 -12.30911;-8.58207;3.51653;,
 -12.30911;-8.62968;3.50899;,
 -12.30911;-8.67263;3.48710;,
 -12.30911;-8.70672;3.45302;,
 -12.30911;-8.72860;3.41007;,
 -12.30911;-8.73614;3.36246;,
 -12.30911;-8.72860;3.31485;,
 -12.30911;-8.70672;3.27190;,
 -12.30911;-8.67263;3.23782;,
 -12.30911;-8.62968;3.21594;,
 -12.30911;-8.58207;3.20840;,
 -12.30911;-8.53446;3.21594;,
 -12.30911;-8.49152;3.23782;,
 -12.30911;-8.45744;3.27190;,
 -12.30911;-8.43555;3.31485;,
 -12.30911;-8.42801;3.36246;,
 -12.27059;-8.44861;3.45943;,
 -12.27059;-8.42518;3.41343;,
 -12.27059;-8.48511;3.49592;,
 -12.27059;-8.53110;3.51935;,
 -12.27059;-8.58207;3.52743;,
 -12.27059;-8.63305;3.51935;,
 -12.27059;-8.67904;3.49592;,
 -12.27059;-8.71553;3.45943;,
 -12.27059;-8.73896;3.41343;,
 -12.27059;-8.74704;3.36246;,
 -12.27059;-8.73896;3.31148;,
 -12.27059;-8.71553;3.26550;,
 -12.27059;-8.67904;3.22900;,
 -12.27059;-8.63305;3.20557;,
 -12.27059;-8.58207;3.19750;,
 -12.27059;-8.53110;3.20557;,
 -12.27059;-8.48511;3.22900;,
 -12.27059;-8.44861;3.26550;,
 -12.27059;-8.42518;3.31148;,
 -12.27059;-8.41711;3.36246;,
 -12.23206;-8.44393;3.46283;,
 -12.23206;-8.41968;3.41523;,
 -12.23206;-8.48171;3.50060;,
 -12.23206;-8.52931;3.52485;,
 -12.23206;-8.58207;3.53321;,
 -12.23206;-8.63484;3.52485;,
 -12.23206;-8.68244;3.50060;,
 -12.23206;-8.72021;3.46283;,
 -12.23206;-8.74447;3.41523;,
 -12.23206;-8.75282;3.36246;,
 -12.23206;-8.74447;3.30970;,
 -12.23206;-8.72021;3.26210;,
 -12.23206;-8.68244;3.22432;,
 -12.23206;-8.63484;3.20007;,
 -12.23206;-8.58207;3.19172;,
 -12.23206;-8.52931;3.20007;,
 -12.23206;-8.48171;3.22432;,
 -12.23206;-8.44393;3.26210;,
 -12.23206;-8.41968;3.30970;,
 -12.23206;-8.41133;3.36246;,
 -12.19355;-8.44581;3.46146;,
 -12.19355;-8.42189;3.41451;,
 -12.19355;-8.48307;3.49872;,
 -12.19355;-8.53003;3.52264;,
 -12.19355;-8.58207;3.53089;,
 -12.19355;-8.63412;3.52264;,
 -12.19355;-8.68107;3.49872;,
 -12.19355;-8.71833;3.46146;,
 -12.19355;-8.74226;3.41451;,
 -12.19355;-8.75050;3.36246;,
 -12.19355;-8.74226;3.31041;,
 -12.19355;-8.71833;3.26346;,
 -12.19355;-8.68107;3.22620;,
 -12.19355;-8.63412;3.20228;,
 -12.19355;-8.58207;3.19404;,
 -12.19355;-8.53003;3.20228;,
 -12.19355;-8.48307;3.22620;,
 -12.19355;-8.44581;3.26346;,
 -12.19355;-8.42189;3.31041;,
 -12.19355;-8.41365;3.36246;,
 -12.14951;-8.46445;3.45452;,
 -12.14951;-8.44379;3.41086;,
 -12.14951;-8.49661;3.48917;,
 -12.14951;-8.53714;3.51142;,
 -12.14951;-8.58207;3.51908;,
 -12.14951;-8.62700;3.51142;,
 -12.14951;-8.66754;3.48917;,
 -12.14951;-8.69971;3.45452;,
 -12.14951;-8.72036;3.41086;,
 -12.14951;-8.72747;3.36246;,
 -12.14951;-8.72036;3.31406;,
 -12.14951;-8.69971;3.27040;,
 -12.14951;-8.66754;3.23575;,
 -12.14951;-8.62700;3.21351;,
 -12.14951;-8.58207;3.20584;,
 -12.14951;-8.53714;3.21351;,
 -12.14951;-8.49661;3.23575;,
 -12.14951;-8.46445;3.27040;,
 -12.14951;-8.44379;3.31406;,
 -12.14951;-8.43667;3.36246;,
 -12.11375;-8.50452;3.42316;,
 -12.11375;-8.49090;3.39437;,
 -12.11375;-8.52572;3.44601;,
 -12.11375;-8.55245;3.46067;,
 -12.11375;-8.58207;3.46573;,
 -12.11375;-8.61170;3.46067;,
 -12.11375;-8.63842;3.44601;,
 -12.11375;-8.65963;3.42316;,
 -12.11375;-8.67325;3.39437;,
 -12.11375;-8.67794;3.36246;,
 -12.11375;-8.67325;3.33055;,
 -12.11375;-8.65963;3.30176;,
 -12.11375;-8.63842;3.27892;,
 -12.11375;-8.61170;3.26425;,
 -12.11375;-8.58207;3.25920;,
 -12.11375;-8.55245;3.26425;,
 -12.11375;-8.52572;3.27892;,
 -12.11375;-8.50452;3.30176;,
 -12.11375;-8.49090;3.33055;,
 -12.11375;-8.48621;3.36246;,
 -12.07800;-8.54611;3.39060;,
 -12.07800;-8.53980;3.37726;,
 -12.07800;-8.55595;3.40119;,
 -12.07800;-8.56834;3.40799;,
 -12.07800;-8.58207;3.41034;,
 -12.07800;-8.59581;3.40799;,
 -12.07800;-8.60820;3.40119;,
 -12.07800;-8.61803;3.39060;,
 -12.07800;-8.62434;3.37726;,
 -12.07800;-8.62652;3.36246;,
 -12.07800;-8.62434;3.34767;,
 -12.07800;-8.61803;3.33432;,
 -12.07800;-8.60820;3.32373;,
 -12.07800;-8.59581;3.31693;,
 -12.07800;-8.58207;3.31458;,
 -12.07800;-8.56834;3.31693;,
 -12.07800;-8.55595;3.32373;,
 -12.07800;-8.54611;3.33432;,
 -12.07800;-8.53980;3.34767;,
 -12.07800;-8.53763;3.36246;,
 -12.04224;-8.54611;3.39060;,
 -12.04224;-8.53980;3.37726;,
 -12.04224;-8.55595;3.40119;,
 -12.04224;-8.56834;3.40799;,
 -12.04224;-8.58207;3.41034;,
 -12.04224;-8.59581;3.40799;,
 -12.04224;-8.60820;3.40119;,
 -12.04224;-8.61803;3.39060;,
 -12.04224;-8.62434;3.37726;,
 -12.04224;-8.62652;3.36246;,
 -12.04224;-8.62434;3.34767;,
 -12.04224;-8.61803;3.33432;,
 -12.04224;-8.60820;3.32373;,
 -12.04224;-8.59581;3.31693;,
 -12.04224;-8.58207;3.31458;,
 -12.04224;-8.56834;3.31693;,
 -12.04224;-8.55595;3.32373;,
 -12.04224;-8.54611;3.33432;,
 -12.04224;-8.53980;3.34767;,
 -12.04224;-8.53763;3.36246;,
 -12.00648;-8.54611;3.39060;,
 -12.00648;-8.53980;3.37726;,
 -12.00648;-8.55595;3.40119;,
 -12.00648;-8.56834;3.40799;,
 -12.00648;-8.58207;3.41034;,
 -12.00648;-8.59581;3.40799;,
 -12.00648;-8.60820;3.40119;,
 -12.00648;-8.61803;3.39060;,
 -12.00648;-8.62434;3.37726;,
 -12.00648;-8.62652;3.36246;,
 -12.00648;-8.62434;3.34767;,
 -12.00648;-8.61803;3.33432;,
 -12.00648;-8.60820;3.32373;,
 -12.00648;-8.59581;3.31693;,
 -12.00648;-8.58207;3.31458;,
 -12.00648;-8.56834;3.31693;,
 -12.00648;-8.55595;3.32373;,
 -12.00648;-8.54611;3.33432;,
 -12.00648;-8.53980;3.34767;,
 -12.00648;-8.53763;3.36246;,
 -12.00648;-8.55810;3.38122;,
 -12.00648;-8.55389;3.37232;,
 -12.00648;-8.56466;3.38828;,
 -12.00648;-8.57292;3.39282;,
 -12.00648;-8.58207;3.39438;,
 -12.00648;-8.59123;3.39282;,
 -12.00648;-8.59949;3.38828;,
 -12.00648;-8.60605;3.38122;,
 -12.00648;-8.61025;3.37232;,
 -12.00648;-8.61170;3.36246;,
 -12.00648;-8.61025;3.35260;,
 -12.00648;-8.60605;3.34370;,
 -12.00648;-8.59949;3.33664;,
 -12.00648;-8.59123;3.33211;,
 -12.00648;-8.58207;3.33054;,
 -12.00648;-8.57292;3.33211;,
 -12.00648;-8.56466;3.33664;,
 -12.00648;-8.55810;3.34370;,
 -12.00648;-8.55389;3.35260;,
 -12.00648;-8.55244;3.36246;,
 -12.00648;-8.57009;3.37184;,
 -12.00648;-8.56798;3.36739;,
 -12.00648;-8.57336;3.37537;,
 -12.00648;-8.57749;3.37764;,
 -12.00648;-8.58207;3.37842;,
 -12.00648;-8.58665;3.37764;,
 -12.00648;-8.59078;3.37537;,
 -12.00648;-8.59406;3.37184;,
 -12.00648;-8.59616;3.36739;,
 -12.00648;-8.59689;3.36246;,
 -12.00648;-8.59616;3.35753;,
 -12.00648;-8.59406;3.35308;,
 -12.00648;-8.59078;3.34955;,
 -12.00648;-8.58665;3.34728;,
 -12.00648;-8.58207;3.34650;,
 -12.00648;-8.57749;3.34728;,
 -12.00648;-8.57336;3.34955;,
 -12.00648;-8.57009;3.35308;,
 -12.00648;-8.56798;3.35753;,
 -12.00648;-8.56726;3.36246;,
 -12.27410;-8.58207;3.36246;,
 -12.00648;-8.58207;3.36246;,
 12.28891;-11.21581;7.57796;,
 11.38359;-11.21581;7.57796;,
 11.38359;3.65121;7.57796;,
 12.28891;3.65121;7.57796;,
 11.38359;3.65121;8.48327;,
 12.28891;3.65121;8.48327;,
 11.38359;-11.21581;8.48327;,
 12.28891;-11.21581;8.48327;,
 -11.80105;0.48719;-5.75804;,
 -12.11713;0.48719;-5.75804;,
 -12.11713;2.60044;-5.75804;,
 -11.80105;2.60044;-5.75804;,
 -12.11713;2.60044;-5.45312;,
 -11.80105;2.60044;-5.45312;,
 -12.11713;0.48719;-5.45312;,
 -11.80105;0.48719;-5.45312;,
 11.97439;-7.96979;2.55709;,
 12.29046;-7.96979;2.55709;,
 12.29046;-3.16659;2.55709;,
 11.97439;-3.16659;2.55709;,
 12.29046;-3.16659;2.25217;,
 11.97439;-3.16659;2.25217;,
 12.29046;-7.96979;2.25217;,
 11.97439;-7.96979;2.25217;,
 11.97439;-7.96979;5.54429;,
 12.29046;-7.96979;5.54429;,
 12.29046;-3.16659;5.54429;,
 11.97439;-3.16659;5.54429;,
 12.29046;-3.16659;5.23937;,
 11.97439;-3.16659;5.23937;,
 12.29046;-7.96979;5.23937;,
 11.97439;-7.96979;5.23937;,
 12.21095;-3.31960;5.33151;,
 12.21095;-7.78586;5.33151;,
 12.21095;-7.78586;-0.56203;,
 12.21095;-3.31960;-0.56203;,
 -0.45374;-5.80324;7.95200;,
 -0.45374;-5.80324;8.26807;,
 -6.42682;-5.80324;8.26807;,
 -6.42682;-5.80324;7.95200;,
 -6.42682;-5.49832;8.26807;,
 -6.42682;-5.49832;7.95200;,
 -0.45374;-5.49832;8.26807;,
 -0.45374;-5.49832;7.95200;,
 -0.45374;-8.16237;7.95200;,
 -0.45374;-8.16237;8.26807;,
 -6.42682;-8.16237;8.26807;,
 -6.42682;-8.16237;7.95200;,
 -6.42682;-7.85745;8.26807;,
 -6.42682;-7.85745;7.95200;,
 -0.45374;-7.85745;8.26807;,
 -0.45374;-7.85745;7.95200;,
 -0.45374;-3.37364;7.95200;,
 -0.45374;-3.37364;8.26807;,
 -6.42682;-3.37364;8.26807;,
 -6.42682;-3.37364;7.95200;,
 -6.42682;-3.06873;8.26807;,
 -6.42682;-3.06873;7.95200;,
 -0.45374;-3.06873;8.26807;,
 -0.45374;-3.06873;7.95200;,
 11.97439;-5.80324;-0.60944;,
 12.29046;-5.80324;-0.60944;,
 12.29046;-5.80324;5.36367;,
 11.97439;-5.80324;5.36367;,
 12.29046;-5.49832;5.36367;,
 11.97439;-5.49832;5.36367;,
 12.29046;-5.49832;-0.60944;,
 11.97439;-5.49832;-0.60944;,
 11.97439;-8.16237;-0.60944;,
 12.29046;-8.16237;-0.60944;,
 12.29046;-8.16237;5.36367;,
 11.97439;-8.16237;5.36367;,
 12.29046;-7.85745;5.36367;,
 11.97439;-7.85745;5.36367;,
 12.29046;-7.85745;-0.60944;,
 11.97439;-7.85745;-0.60944;,
 -6.60743;-7.96979;7.95200;,
 -6.60743;-7.96979;8.26807;,
 -6.60743;-3.16659;8.26807;,
 -6.60743;-3.16659;7.95200;,
 -6.30253;-3.16659;8.26807;,
 -6.30253;-3.16659;7.95200;,
 -6.30253;-7.96979;8.26807;,
 -6.30253;-7.96979;7.95200;,
 -6.39467;-3.31960;8.18856;,
 -6.39467;-7.78586;8.18856;,
 -0.50115;-7.78586;8.18856;,
 -0.50115;-3.31960;8.18856;,
 11.97439;-7.96979;-0.44776;,
 12.29046;-7.96979;-0.44776;,
 12.29046;-3.16659;-0.44776;,
 11.97439;-3.16659;-0.44776;,
 12.29046;-3.16659;-0.75267;,
 11.97439;-3.16659;-0.75267;,
 12.29046;-7.96979;-0.75267;,
 11.97439;-7.96979;-0.75267;,
 11.97439;-3.37364;-0.60944;,
 12.29046;-3.37364;-0.60944;,
 12.29046;-3.37364;5.36367;,
 11.97439;-3.37364;5.36367;,
 12.29046;-3.06873;5.36367;,
 11.97439;-3.06873;5.36367;,
 12.29046;-3.06873;-0.60944;,
 11.97439;-3.06873;-0.60944;,
 0.62578;-7.96979;-8.09205;,
 0.62578;-7.96979;-8.40812;,
 0.62578;-3.16659;-8.40812;,
 0.62578;-3.16659;-8.09205;,
 0.32087;-3.16659;-8.40812;,
 0.32087;-3.16659;-8.09205;,
 0.32087;-7.96979;-8.40812;,
 0.32087;-7.96979;-8.09205;,
 3.63061;-7.96979;-8.09205;,
 3.63061;-7.96979;-8.40812;,
 3.63061;-3.16659;-8.40812;,
 3.63061;-3.16659;-8.09205;,
 3.32570;-3.16659;-8.40812;,
 3.32570;-3.16659;-8.09205;,
 3.32570;-7.96979;-8.40812;,
 3.32570;-7.96979;-8.09205;,
 6.61784;-7.96979;-8.09205;,
 6.61784;-7.96979;-8.40812;,
 6.61784;-3.16659;-8.40812;,
 6.61784;-3.16659;-8.09205;,
 6.31291;-3.16659;-8.40812;,
 6.31291;-3.16659;-8.09205;,
 6.31291;-7.96979;-8.40812;,
 6.31291;-7.96979;-8.09205;,
 6.40506;-3.31960;-8.32861;,
 6.40506;-7.78586;-8.32861;,
 0.51151;-7.78586;-8.32861;,
 0.51151;-3.31960;-8.32861;,
 12.09701;5.80993;-1.51532;,
 12.09701;0.64453;-1.51532;,
 12.09701;0.64453;-5.44961;,
 12.09701;2.62537;-5.44961;,
 12.15570;0.45615;-1.61879;,
 11.83962;0.45615;-1.61879;,
 11.83962;6.10874;-1.61879;,
 12.15570;6.10874;-1.61879;,
 11.83962;6.10874;-1.31387;,
 12.15570;6.10874;-1.31387;,
 11.83962;0.45615;-1.31387;,
 12.15570;0.45615;-1.31387;,
 12.15570;0.46106;-1.40290;,
 11.83962;0.46106;-1.40290;,
 11.83962;0.46106;-5.52248;,
 12.15570;0.46106;-5.52248;,
 11.83962;0.76597;-5.52248;,
 12.15570;0.76597;-5.52248;,
 11.83962;0.76597;-1.40290;,
 12.15570;0.76597;-1.40290;,
 12.15570;0.48719;-5.74650;,
 11.83962;0.48719;-5.74650;,
 11.83962;2.60044;-5.74650;,
 12.15570;2.60044;-5.74650;,
 11.83962;2.60044;-5.44159;,
 12.15570;2.60044;-5.44159;,
 11.83962;0.48719;-5.44159;,
 12.15570;0.48719;-5.44159;,
 12.15570;5.91253;-1.33065;,
 11.83962;5.91253;-1.33065;,
 11.83962;2.38245;-5.53557;,
 12.15570;2.38245;-5.53557;,
 11.83962;2.61599;-5.73162;,
 12.15570;2.61599;-5.73162;,
 11.83962;6.14606;-1.52670;,
 12.15570;6.14606;-1.52670;,
 -12.11713;0.45615;1.91663;,
 -11.80105;0.45615;1.91663;,
 -11.80105;6.10874;1.91663;,
 -12.11713;6.10874;1.91663;,
 -11.80105;6.10874;1.61172;,
 -12.11713;6.10874;1.61172;,
 -11.80105;0.45615;1.61172;,
 -12.11713;0.45615;1.61172;,
 -11.37025;-11.21581;7.60705;,
 -12.27557;-11.21581;7.60705;,
 -12.27557;3.65121;7.60705;,
 -11.37025;3.65121;7.60705;,
 -12.27557;3.65121;8.51236;,
 -11.37025;3.65121;8.51236;,
 -12.27557;-11.21581;8.51236;,
 -11.37025;-11.21581;8.51236;,
 14.74380;-1.04559;-12.55899;,
 -14.74380;-1.04559;-12.55899;,
 -14.74380;0.07390;-12.55899;,
 14.74381;0.07390;-12.55899;,
 -14.74380;5.92927;-6.27943;,
 14.74380;5.92927;-6.27943;,
 -14.74380;11.22640;0.00006;,
 14.74381;11.22640;0.00007;,
 -14.74381;5.92927;6.27957;,
 14.74381;5.92927;6.27957;,
 -14.74380;0.07390;12.55897;,
 14.74380;0.07390;12.55899;,
 -14.74380;-1.04559;12.55899;,
 14.74381;-1.04559;12.55899;,
 -14.74380;4.80977;6.27957;,
 14.74380;4.80977;6.27957;,
 -14.74380;10.10690;0.00006;,
 14.74381;10.10690;0.00006;,
 -14.74380;4.80977;-6.27944;,
 14.74381;4.80977;-6.27945;;
 
 607;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,5,4;,
 4;5,10,8,6;,
 4;11,4,7,9;,
 4;12,13,14,15;,
 4;15,14,16,17;,
 4;17,16,18,19;,
 4;19,18,13,12;,
 4;13,18,16,14;,
 4;19,12,15,17;,
 4;20,21,22,23;,
 4;23,22,24,25;,
 4;25,24,26,27;,
 4;27,26,21,20;,
 4;21,26,24,22;,
 4;27,20,23,25;,
 4;28,29,30,31;,
 4;31,30,32,33;,
 4;33,32,34,35;,
 4;35,34,29,28;,
 4;29,34,32,30;,
 4;35,28,31,33;,
 4;36,37,38,39;,
 4;39,38,40,41;,
 4;41,40,42,43;,
 4;43,42,37,36;,
 4;37,42,40,38;,
 4;43,36,39,41;,
 4;44,45,46,47;,
 4;47,46,48,49;,
 4;49,48,50,51;,
 4;51,50,45,44;,
 4;45,50,48,46;,
 4;51,44,47,49;,
 4;52,53,54,55;,
 4;53,56,57,54;,
 4;55,54,58,59;,
 4;54,57,60,58;,
 4;59,58,61,62;,
 4;58,60,63,61;,
 4;62,61,64,65;,
 4;61,63,66,64;,
 4;65,64,67,68;,
 4;64,66,69,67;,
 4;68,67,70,71;,
 4;67,69,72,70;,
 4;71,70,73,74;,
 4;70,72,75,73;,
 4;74,73,53,52;,
 4;73,75,56,53;,
 4;75,72,69,76;,
 4;56,75,76,57;,
 4;76,69,66,63;,
 4;57,76,63,60;,
 4;71,74,77,68;,
 4;74,52,55,77;,
 4;68,77,62,65;,
 4;77,55,59,62;,
 4;78,79,80,81;,
 4;81,80,82,83;,
 4;83,82,84,85;,
 4;85,84,79,78;,
 4;79,84,82,80;,
 4;85,78,81,83;,
 4;86,87,88,89;,
 4;90,91,92,93;,
 4;93,92,94,95;,
 4;95,94,96,97;,
 4;97,96,91,90;,
 4;91,96,94,92;,
 4;97,90,93,95;,
 4;98,99,100,101;,
 4;101,100,102,103;,
 4;103,102,104,105;,
 4;105,104,99,98;,
 4;99,104,102,100;,
 4;105,98,101,103;,
 4;106,107,108,109;,
 4;109,108,110,111;,
 4;111,110,112,113;,
 4;113,112,107,106;,
 4;107,112,110,108;,
 4;113,106,109,111;,
 4;114,115,116,117;,
 4;117,116,118,119;,
 4;119,118,120,121;,
 4;121,120,115,114;,
 4;115,120,118,116;,
 4;121,114,117,119;,
 4;122,123,124,125;,
 4;125,124,126,127;,
 4;127,126,128,129;,
 4;129,128,123,122;,
 4;123,128,126,124;,
 4;129,122,125,127;,
 4;130,131,132,133;,
 4;133,132,134,135;,
 4;135,134,136,137;,
 4;137,136,131,130;,
 4;131,136,134,132;,
 4;137,130,133,135;,
 4;138,139,140,141;,
 4;141,140,142,143;,
 4;143,142,144,145;,
 4;145,144,139,138;,
 4;139,144,142,140;,
 4;145,138,141,143;,
 4;146,147,148,149;,
 4;149,148,150,151;,
 4;151,150,152,153;,
 4;153,152,147,146;,
 4;147,152,150,148;,
 4;153,146,149,151;,
 4;154,155,156,157;,
 4;157,156,158,159;,
 4;159,158,160,161;,
 4;161,160,155,154;,
 4;155,160,158,156;,
 4;161,154,157,159;,
 4;162,163,164,165;,
 4;165,164,166,167;,
 4;167,166,168,169;,
 4;169,168,163,162;,
 4;163,168,166,164;,
 4;169,162,165,167;,
 4;4,5,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,5,4;,
 4;5,10,8,6;,
 4;11,4,7,9;,
 4;170,171,172,173;,
 4;173,172,174,175;,
 4;175,174,176,177;,
 4;177,176,171,170;,
 4;171,176,174,172;,
 4;177,170,173,175;,
 4;178,179,180,181;,
 4;181,180,182,183;,
 4;183,182,184,185;,
 4;185,184,179,178;,
 4;179,184,182,180;,
 4;185,178,181,183;,
 4;186,187,188,189;,
 4;189,188,190,191;,
 4;191,190,192,193;,
 4;193,192,187,186;,
 4;187,192,190,188;,
 4;193,186,189,191;,
 4;194,195,196,197;,
 4;198,199,200,201;,
 4;201,200,202,203;,
 4;203,202,204,205;,
 4;205,204,199,198;,
 4;199,204,202,200;,
 4;205,198,201,203;,
 4;206,207,208,209;,
 4;210,211,212,213;,
 4;213,212,214,215;,
 4;215,214,216,217;,
 4;217,216,211,210;,
 4;211,216,214,212;,
 4;217,210,213,215;,
 4;218,219,220,221;,
 4;4,5,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,5,4;,
 4;5,10,8,6;,
 4;11,4,7,9;,
 4;222,223,224,225;,
 4;225,224,226,227;,
 4;227,226,228,229;,
 4;229,228,223,222;,
 4;223,228,226,224;,
 4;229,222,225,227;,
 4;230,231,232,233;,
 4;231,234,235,232;,
 4;234,236,237,235;,
 4;236,238,239,237;,
 4;238,240,241,239;,
 4;240,242,243,241;,
 4;242,244,245,243;,
 4;244,246,247,245;,
 4;246,248,249,247;,
 4;248,250,251,249;,
 4;250,252,253,251;,
 4;252,254,255,253;,
 4;254,256,257,255;,
 4;256,258,259,257;,
 4;258,260,261,259;,
 4;260,262,263,261;,
 4;262,264,265,263;,
 4;264,266,267,265;,
 4;266,268,269,267;,
 4;268,230,233,269;,
 4;233,232,270,271;,
 4;232,235,272,270;,
 4;235,237,273,272;,
 4;237,239,274,273;,
 4;239,241,275,274;,
 4;241,243,276,275;,
 4;243,245,277,276;,
 4;245,247,278,277;,
 4;247,249,279,278;,
 4;249,251,280,279;,
 4;251,253,281,280;,
 4;253,255,282,281;,
 4;255,257,283,282;,
 4;257,259,284,283;,
 4;259,261,285,284;,
 4;261,263,286,285;,
 4;263,265,287,286;,
 4;265,267,288,287;,
 4;267,269,289,288;,
 4;269,233,271,289;,
 4;271,270,290,291;,
 4;270,272,292,290;,
 4;272,273,293,292;,
 4;273,274,294,293;,
 4;274,275,295,294;,
 4;275,276,296,295;,
 4;276,277,297,296;,
 4;277,278,298,297;,
 4;278,279,299,298;,
 4;279,280,300,299;,
 4;280,281,301,300;,
 4;281,282,302,301;,
 4;282,283,303,302;,
 4;283,284,304,303;,
 4;284,285,305,304;,
 4;285,286,306,305;,
 4;286,287,307,306;,
 4;287,288,308,307;,
 4;288,289,309,308;,
 4;289,271,291,309;,
 4;291,290,310,311;,
 4;290,292,312,310;,
 4;292,293,313,312;,
 4;293,294,314,313;,
 4;294,295,315,314;,
 4;295,296,316,315;,
 4;296,297,317,316;,
 4;297,298,318,317;,
 4;298,299,319,318;,
 4;299,300,320,319;,
 4;300,301,321,320;,
 4;301,302,322,321;,
 4;302,303,323,322;,
 4;303,304,324,323;,
 4;304,305,325,324;,
 4;305,306,326,325;,
 4;306,307,327,326;,
 4;307,308,328,327;,
 4;308,309,329,328;,
 4;309,291,311,329;,
 4;311,310,330,331;,
 4;310,312,332,330;,
 4;312,313,333,332;,
 4;313,314,334,333;,
 4;314,315,335,334;,
 4;315,316,336,335;,
 4;316,317,337,336;,
 4;317,318,338,337;,
 4;318,319,339,338;,
 4;319,320,340,339;,
 4;320,321,341,340;,
 4;321,322,342,341;,
 4;322,323,343,342;,
 4;323,324,344,343;,
 4;324,325,345,344;,
 4;325,326,346,345;,
 4;326,327,347,346;,
 4;327,328,348,347;,
 4;328,329,349,348;,
 4;329,311,331,349;,
 4;331,330,350,351;,
 4;330,332,352,350;,
 4;332,333,353,352;,
 4;333,334,354,353;,
 4;334,335,355,354;,
 4;335,336,356,355;,
 4;336,337,357,356;,
 4;337,338,358,357;,
 4;338,339,359,358;,
 4;339,340,360,359;,
 4;340,341,361,360;,
 4;341,342,362,361;,
 4;342,343,363,362;,
 4;343,344,364,363;,
 4;344,345,365,364;,
 4;345,346,366,365;,
 4;346,347,367,366;,
 4;347,348,368,367;,
 4;348,349,369,368;,
 4;349,331,351,369;,
 4;351,350,370,371;,
 4;350,352,372,370;,
 4;352,353,373,372;,
 4;353,354,374,373;,
 4;354,355,375,374;,
 4;355,356,376,375;,
 4;356,357,377,376;,
 4;357,358,378,377;,
 4;358,359,379,378;,
 4;359,360,380,379;,
 4;360,361,381,380;,
 4;361,362,382,381;,
 4;362,363,383,382;,
 4;363,364,384,383;,
 4;364,365,385,384;,
 4;365,366,386,385;,
 4;366,367,387,386;,
 4;367,368,388,387;,
 4;368,369,389,388;,
 4;369,351,371,389;,
 4;371,370,390,391;,
 4;370,372,392,390;,
 4;372,373,393,392;,
 4;373,374,394,393;,
 4;374,375,395,394;,
 4;375,376,396,395;,
 4;376,377,397,396;,
 4;377,378,398,397;,
 4;378,379,399,398;,
 4;379,380,400,399;,
 4;380,381,401,400;,
 4;381,382,402,401;,
 4;382,383,403,402;,
 4;383,384,404,403;,
 4;384,385,405,404;,
 4;385,386,406,405;,
 4;386,387,407,406;,
 4;387,388,408,407;,
 4;388,389,409,408;,
 4;389,371,391,409;,
 4;391,390,410,411;,
 4;390,392,412,410;,
 4;392,393,413,412;,
 4;393,394,414,413;,
 4;394,395,415,414;,
 4;395,396,416,415;,
 4;396,397,417,416;,
 4;397,398,418,417;,
 4;398,399,419,418;,
 4;399,400,420,419;,
 4;400,401,421,420;,
 4;401,402,422,421;,
 4;402,403,423,422;,
 4;403,404,424,423;,
 4;404,405,425,424;,
 4;405,406,426,425;,
 4;406,407,427,426;,
 4;407,408,428,427;,
 4;408,409,429,428;,
 4;409,391,411,429;,
 4;411,410,430,431;,
 4;410,412,432,430;,
 4;412,413,433,432;,
 4;413,414,434,433;,
 4;414,415,435,434;,
 4;415,416,436,435;,
 4;416,417,437,436;,
 4;417,418,438,437;,
 4;418,419,439,438;,
 4;419,420,440,439;,
 4;420,421,441,440;,
 4;421,422,442,441;,
 4;422,423,443,442;,
 4;423,424,444,443;,
 4;424,425,445,444;,
 4;425,426,446,445;,
 4;426,427,447,446;,
 4;427,428,448,447;,
 4;428,429,449,448;,
 4;429,411,431,449;,
 4;431,430,450,451;,
 4;430,432,452,450;,
 4;432,433,453,452;,
 4;433,434,454,453;,
 4;434,435,455,454;,
 4;435,436,456,455;,
 4;436,437,457,456;,
 4;437,438,458,457;,
 4;438,439,459,458;,
 4;439,440,460,459;,
 4;440,441,461,460;,
 4;441,442,462,461;,
 4;442,443,463,462;,
 4;443,444,464,463;,
 4;444,445,465,464;,
 4;445,446,466,465;,
 4;446,447,467,466;,
 4;447,448,468,467;,
 4;448,449,469,468;,
 4;449,431,451,469;,
 4;451,450,470,471;,
 4;450,452,472,470;,
 4;452,453,473,472;,
 4;453,454,474,473;,
 4;454,455,475,474;,
 4;455,456,476,475;,
 4;456,457,477,476;,
 4;457,458,478,477;,
 4;458,459,479,478;,
 4;459,460,480,479;,
 4;460,461,481,480;,
 4;461,462,482,481;,
 4;462,463,483,482;,
 4;463,464,484,483;,
 4;464,465,485,484;,
 4;465,466,486,485;,
 4;466,467,487,486;,
 4;467,468,488,487;,
 4;468,469,489,488;,
 4;469,451,471,489;,
 3;231,230,490;,
 3;234,231,490;,
 3;236,234,490;,
 3;238,236,490;,
 3;240,238,490;,
 3;242,240,490;,
 3;244,242,490;,
 3;246,244,490;,
 3;248,246,490;,
 3;250,248,490;,
 3;252,250,490;,
 3;254,252,490;,
 3;256,254,490;,
 3;258,256,490;,
 3;260,258,490;,
 3;262,260,490;,
 3;264,262,490;,
 3;266,264,490;,
 3;268,266,490;,
 3;230,268,490;,
 3;471,470,491;,
 3;470,472,491;,
 3;472,473,491;,
 3;473,474,491;,
 3;474,475,491;,
 3;475,476,491;,
 3;476,477,491;,
 3;477,478,491;,
 3;478,479,491;,
 3;479,480,491;,
 3;480,481,491;,
 3;481,482,491;,
 3;482,483,491;,
 3;483,484,491;,
 3;484,485,491;,
 3;485,486,491;,
 3;486,487,491;,
 3;487,488,491;,
 3;488,489,491;,
 3;489,471,491;,
 4;492,493,494,495;,
 4;495,494,496,497;,
 4;497,496,498,499;,
 4;499,498,493,492;,
 4;493,498,496,494;,
 4;499,492,495,497;,
 4;500,501,502,503;,
 4;503,502,504,505;,
 4;505,504,506,507;,
 4;507,506,501,500;,
 4;501,506,504,502;,
 4;507,500,503,505;,
 4;508,509,510,511;,
 4;511,510,512,513;,
 4;513,512,514,515;,
 4;515,514,509,508;,
 4;509,514,512,510;,
 4;515,508,511,513;,
 4;516,517,518,519;,
 4;519,518,520,521;,
 4;521,520,522,523;,
 4;523,522,517,516;,
 4;517,522,520,518;,
 4;523,516,519,521;,
 4;524,525,526,527;,
 4;528,529,530,531;,
 4;531,530,532,533;,
 4;533,532,534,535;,
 4;535,534,529,528;,
 4;529,534,532,530;,
 4;535,528,531,533;,
 4;536,537,538,539;,
 4;539,538,540,541;,
 4;541,540,542,543;,
 4;543,542,537,536;,
 4;537,542,540,538;,
 4;543,536,539,541;,
 4;544,545,546,547;,
 4;547,546,548,549;,
 4;549,548,550,551;,
 4;551,550,545,544;,
 4;545,550,548,546;,
 4;551,544,547,549;,
 4;552,553,554,555;,
 4;555,554,556,557;,
 4;557,556,558,559;,
 4;559,558,553,552;,
 4;553,558,556,554;,
 4;559,552,555,557;,
 4;560,561,562,563;,
 4;563,562,564,565;,
 4;565,564,566,567;,
 4;567,566,561,560;,
 4;561,566,564,562;,
 4;567,560,563,565;,
 4;568,569,570,571;,
 4;571,570,572,573;,
 4;573,572,574,575;,
 4;575,574,569,568;,
 4;569,574,572,570;,
 4;575,568,571,573;,
 4;576,577,578,579;,
 4;580,581,582,583;,
 4;583,582,584,585;,
 4;585,584,586,587;,
 4;587,586,581,580;,
 4;581,586,584,582;,
 4;587,580,583,585;,
 4;588,589,590,591;,
 4;591,590,592,593;,
 4;593,592,594,595;,
 4;595,594,589,588;,
 4;589,594,592,590;,
 4;595,588,591,593;,
 4;596,597,598,599;,
 4;599,598,600,601;,
 4;601,600,602,603;,
 4;603,602,597,596;,
 4;597,602,600,598;,
 4;603,596,599,601;,
 4;604,605,606,607;,
 4;607,606,608,609;,
 4;609,608,610,611;,
 4;611,610,605,604;,
 4;605,610,608,606;,
 4;611,604,607,609;,
 4;612,613,614,615;,
 4;615,614,616,617;,
 4;617,616,618,619;,
 4;619,618,613,612;,
 4;613,618,616,614;,
 4;619,612,615,617;,
 4;620,621,622,623;,
 4;624,625,626,627;,
 4;628,629,630,631;,
 4;631,630,632,633;,
 4;633,632,634,635;,
 4;635,634,629,628;,
 4;629,634,632,630;,
 4;635,628,631,633;,
 4;636,637,638,639;,
 4;639,638,640,641;,
 4;641,640,642,643;,
 4;643,642,637,636;,
 4;637,642,640,638;,
 4;643,636,639,641;,
 4;644,645,646,647;,
 4;647,646,648,649;,
 4;649,648,650,651;,
 4;651,650,645,644;,
 4;645,650,648,646;,
 4;651,644,647,649;,
 4;652,653,654,655;,
 4;655,654,656,657;,
 4;657,656,658,659;,
 4;659,658,653,652;,
 4;653,658,656,654;,
 4;659,652,655,657;,
 4;660,661,662,663;,
 4;663,662,664,665;,
 4;665,664,666,667;,
 4;667,666,661,660;,
 4;661,666,664,662;,
 4;667,660,663,665;,
 4;668,669,670,671;,
 4;671,670,672,673;,
 4;673,672,674,675;,
 4;675,674,669,668;,
 4;669,674,672,670;,
 4;675,668,671,673;,
 4;676,677,678,679;,
 4;679,678,680,681;,
 4;681,680,682,683;,
 4;683,682,684,685;,
 4;685,684,686,687;,
 4;687,686,688,689;,
 4;689,688,690,691;,
 4;691,690,692,693;,
 4;693,692,694,695;,
 4;695,694,677,676;,
 4;690,688,686,684;,
 4;692,690,684,682;,
 4;694,692,682,680;,
 4;677,694,680,678;,
 4;689,691,685,687;,
 4;691,693,683,685;,
 4;693,695,681,683;,
 4;695,676,679,681;;
 
 MeshMaterialList {
  7;
  607;
  1,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  3,
  3,
  3,
  3,
  3,
  3,
  4,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  0,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  0,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  6,
  5,
  5,
  6,
  6,
  6,
  6,
  6,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  5,
  5,
  5,
  6,
  5,
  5,
  4,
  6,
  6,
  6,
  6,
  6,
  6,
  3,
  3,
  3,
  3,
  3,
  3,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  3,
  3,
  3,
  3,
  3,
  3,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  0,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  0,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  3,
  3,
  3,
  3,
  3,
  3,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.460800;0.307200;0.181600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.072000;0.024000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.351200;0.336000;0.307200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.072000;0.024000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.351200;0.800000;0.752800;0.700000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.176000;0.056800;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
}