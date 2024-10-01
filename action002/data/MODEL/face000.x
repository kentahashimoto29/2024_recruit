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
 459;
 0.05491;0.47270;-8.16868;,
 -1.24960;7.72510;-7.55784;,
 1.24960;7.72510;-7.55784;,
 -2.89680;7.41270;-7.55784;,
 -4.45880;6.78791;-7.55784;,
 -5.52380;5.70873;-7.55784;,
 -5.92329;4.58693;-7.55784;,
 -6.10323;2.76933;-7.55784;,
 -6.01259;1.32092;-7.55784;,
 -5.83533;-0.69548;-7.55784;,
 -5.49632;-2.48468;-7.55784;,
 -4.90063;-4.27388;-7.55784;,
 -3.87357;-5.52348;-7.55784;,
 -1.84376;-6.58644;-7.55784;,
 0.00000;-6.89885;-7.55784;,
 1.84376;-6.58644;-7.55784;,
 3.87357;-5.52348;-7.55784;,
 4.90063;-4.27388;-7.55784;,
 5.49632;-2.48468;-7.55784;,
 5.83533;-0.69548;-7.55784;,
 6.01259;1.32092;-7.55784;,
 6.10323;2.76933;-7.55784;,
 5.92329;4.58693;-7.55784;,
 5.52380;5.70873;-7.55784;,
 4.45880;6.78791;-7.55784;,
 2.89680;7.41270;-7.55784;,
 -9.00560;9.04668;-6.19807;,
 -7.26929;10.80610;-6.12110;,
 7.26929;10.80610;-6.12110;,
 9.00560;9.04668;-6.19807;,
 -4.72273;11.82471;-6.12110;,
 4.72273;11.82471;-6.12110;,
 -2.03726;12.33401;-6.12110;,
 2.03726;12.33401;-6.12110;,
 9.65689;7.21778;-6.17733;,
 -9.65689;7.21778;-6.17733;,
 9.95025;4.25450;-5.94583;,
 -9.95025;4.25450;-5.94583;,
 9.80247;1.89313;-5.80692;,
 -9.80247;1.89313;-5.80692;,
 9.51348;-1.39426;-5.80692;,
 -9.51348;-1.39426;-5.80692;,
 8.96079;-4.31124;-5.80692;,
 -8.96079;-4.31124;-5.80692;,
 7.98963;-8.05084;-5.39561;,
 -7.98963;-8.05084;-5.39561;,
 6.31519;-10.08810;-5.39561;,
 3.00593;-11.82106;-5.39561;,
 -3.00593;-11.82106;-5.39561;,
 -6.31519;-10.08810;-5.39561;,
 0.00000;-12.33038;-5.39561;,
 -10.40707;10.59130;-3.43364;,
 -8.40055;12.66549;-3.43364;,
 8.40055;12.66549;-3.43364;,
 10.40707;10.59130;-3.43364;,
 -5.45769;13.86633;-3.43364;,
 5.45769;13.86633;-3.43364;,
 -2.35430;14.46676;-3.43364;,
 2.35430;14.46676;-3.43364;,
 11.15972;8.43519;-3.43364;,
 -11.15972;8.43519;-3.43364;,
 11.49873;4.94175;-3.43364;,
 -11.49873;4.94175;-3.43364;,
 11.32796;2.15792;-3.43364;,
 -11.32796;2.15792;-3.43364;,
 10.99398;-1.10065;-3.43364;,
 -10.99398;-1.10065;-3.43364;,
 10.35529;-4.53950;-3.43364;,
 -10.35529;-4.53950;-3.43364;,
 9.23299;-7.87553;-3.43364;,
 -9.23299;-7.87553;-3.43364;,
 7.29797;-10.27727;-3.43364;,
 3.47371;-13.04007;-3.43364;,
 -3.47371;-13.04007;-3.43364;,
 -7.29797;-10.27727;-3.43364;,
 0.00000;-13.64051;-3.43364;,
 -10.83071;11.43681;-0.76271;,
 -8.74251;13.68331;-0.76271;,
 8.74251;13.68331;-0.76271;,
 10.83071;11.43681;-0.76271;,
 -5.67985;14.98390;-0.76271;,
 5.67985;14.98390;-0.76271;,
 -2.45013;15.63421;-0.76271;,
 2.45013;15.63421;-0.76271;,
 11.61400;9.10159;-0.76271;,
 -11.61400;9.10159;-0.76271;,
 11.73043;5.31795;-0.76271;,
 -11.73043;5.31795;-0.76271;,
 11.44152;2.30286;-0.76271;,
 -11.44152;2.30286;-0.76271;,
 10.99398;-0.40361;-0.76271;,
 -10.99398;-0.40361;-0.76271;,
 10.35529;-4.12814;-0.76271;,
 -10.35529;-4.12814;-0.76271;,
 9.23299;-7.54418;-0.76271;,
 -9.23299;-7.54418;-0.76271;,
 7.15381;-10.14544;-0.76271;,
 3.40510;-12.56376;-0.76271;,
 -3.40510;-12.56376;-0.76271;,
 -7.15381;-10.14544;-0.76271;,
 0.00000;-13.21408;-0.76271;,
 -10.93929;11.53985;1.03859;,
 -8.83016;13.80887;1.03859;,
 8.83016;13.80887;1.03859;,
 10.93929;11.53985;1.03859;,
 -5.73679;15.12250;1.03859;,
 5.73679;15.12250;1.03859;,
 -2.47470;15.77933;1.03859;,
 2.47470;15.77933;1.03859;,
 11.73043;9.18121;1.03859;,
 -11.73043;9.18121;1.03859;,
 11.84803;5.35965;1.03859;,
 -11.84803;5.35965;1.03859;,
 11.55622;2.31433;1.03859;,
 -11.55622;2.31433;1.03859;,
 11.10419;-0.21362;1.03859;,
 -11.10419;-0.21362;1.03859;,
 10.45910;-3.97548;1.03859;,
 -10.45910;-3.97548;1.03859;,
 9.32555;-7.27462;1.03859;,
 -9.32555;-7.27462;1.03859;,
 7.15381;-9.90196;1.03859;,
 3.40510;-12.13685;1.03859;,
 -3.40510;-12.13685;1.03859;,
 -7.15381;-9.90196;1.03859;,
 0.00000;-12.79369;1.03859;,
 -10.66986;11.64392;3.54950;,
 -8.61268;13.93568;3.54950;,
 8.61268;13.93568;3.54950;,
 10.66986;11.64392;3.54950;,
 -5.59550;15.26248;3.54950;,
 5.59550;15.26248;3.54950;,
 -2.41375;15.92590;3.54950;,
 2.41375;15.92590;3.54950;,
 11.44152;9.26164;3.54950;,
 -11.44152;9.26164;3.54950;,
 11.21552;5.40176;3.54950;,
 -11.21552;5.40176;3.54950;,
 10.93929;2.32592;3.54950;,
 -10.93929;2.32592;3.54950;,
 10.51139;0.02763;3.54950;,
 -10.51139;0.02763;3.54950;,
 9.60884;-3.77195;3.54950;,
 -9.60884;-3.77195;3.54950;,
 8.56744;-6.90314;3.54950;,
 -8.56744;-6.90314;3.54950;,
 6.57226;-9.55682;3.54950;,
 3.12829;-11.66036;3.54950;,
 -3.12829;-11.66036;3.54950;,
 -6.57226;-9.55682;3.54950;,
 0.00000;-12.32378;3.54950;,
 -10.15075;11.38848;5.89666;,
 -8.19365;13.62381;5.89666;,
 8.19365;13.62381;5.89666;,
 10.15075;11.38848;5.89666;,
 -5.32327;14.91793;5.89666;,
 5.32327;14.91793;5.89666;,
 -2.29631;15.56500;5.89666;,
 2.29631;15.56500;5.89666;,
 10.88486;9.06488;5.89666;,
 -10.88486;9.06488;5.89666;,
 10.66986;5.30007;5.89666;,
 -10.66986;5.30007;5.89666;,
 10.40707;2.29998;5.89666;,
 -10.40707;2.29998;5.89666;,
 9.99999;0.06739;5.89666;,
 -9.99999;0.06739;5.89666;,
 8.69660;-3.63860;5.89666;,
 -8.69660;-3.63860;5.89666;,
 7.75408;-6.67954;5.89666;,
 -7.75408;-6.67954;5.89666;,
 6.12900;-9.26785;5.89666;,
 2.91730;-11.16206;5.89666;,
 -2.91730;-11.46956;5.89666;,
 -6.12900;-9.26785;5.89666;,
 0.00000;-11.80914;5.89666;,
 -8.87185;9.85403;8.44236;,
 -7.16133;11.74069;8.44236;,
 7.16133;11.74069;8.44236;,
 8.87185;9.85403;8.44236;,
 -4.65259;12.83296;8.44236;,
 4.65259;12.83296;8.44236;,
 -2.00700;13.37910;8.44236;,
 2.00700;13.37910;8.44236;,
 9.51347;8.54550;8.44236;,
 -9.51347;8.54550;8.44236;,
 9.51347;5.34997;8.44236;,
 -9.51347;5.34997;8.44236;,
 9.18706;2.68834;8.44236;,
 -9.18706;2.68834;8.44236;,
 8.65334;0.49286;8.44236;,
 -8.65334;0.49286;8.44236;,
 7.87097;-2.79505;8.44236;,
 -7.87097;-2.79505;8.44236;,
 7.01792;-4.86179;8.44236;,
 -7.01792;-4.86179;8.44236;,
 5.54713;-7.15811;8.44236;,
 2.64034;-8.87050;8.44236;,
 -2.64034;-8.87050;8.44236;,
 -5.54713;-7.15811;8.44236;,
 0.00000;-9.44457;8.44236;,
 -5.57918;6.55987;10.05015;,
 -4.50350;7.74042;10.05015;,
 4.50350;7.74042;10.05015;,
 5.57918;6.55987;10.05015;,
 -2.92584;8.42389;10.05015;,
 2.92584;8.42389;10.05015;,
 -1.26213;8.76563;10.05015;,
 1.26213;8.76563;10.05015;,
 5.98268;5.33270;10.05015;,
 -5.98268;5.33270;10.05015;,
 6.16441;3.34438;10.05015;,
 -6.16441;3.34438;10.05015;,
 5.89382;1.75993;10.05015;,
 -5.89382;1.75993;10.05015;,
 5.72006;0.33766;10.05015;,
 -5.72006;0.33766;10.05015;,
 4.97451;-1.05404;10.05015;,
 -5.12563;-1.05404;10.05015;,
 4.17770;-2.75423;10.05015;,
 -4.17770;-2.75423;10.05015;,
 3.30215;-4.12122;10.05015;,
 1.57177;-5.28401;10.05015;,
 -1.57177;-5.28401;10.05015;,
 -3.30215;-4.12122;10.05015;,
 0.00000;-5.62575;10.05015;,
 0.10409;1.59745;10.67740;,
 -4.99030;4.90788;-24.52277;,
 -4.63311;4.80740;-24.87997;,
 -4.99030;4.80740;-25.02791;,
 -4.48515;4.80740;-24.52277;,
 -4.63311;4.80740;-24.16557;,
 -4.99030;4.80740;-24.01762;,
 -5.34749;4.80740;-24.16557;,
 -5.49545;4.80740;-24.52277;,
 -5.34749;4.80740;-24.87997;,
 -4.33029;4.52126;-25.18278;,
 -4.99030;4.52126;-25.45616;,
 -4.05691;4.52126;-24.52277;,
 -4.33029;4.52126;-23.86275;,
 -4.99030;4.52126;-23.58938;,
 -5.65031;4.52126;-23.86275;,
 -5.92369;4.52126;-24.52277;,
 -5.65031;4.52126;-25.18278;,
 -4.12796;4.09302;-25.38511;,
 -4.99030;4.09302;-25.74230;,
 -3.77077;4.09302;-24.52277;,
 -4.12796;4.09302;-23.66043;,
 -4.99030;4.09302;-23.30324;,
 -5.85264;4.09302;-23.66043;,
 -6.20984;4.09302;-24.52277;,
 -5.85264;4.09302;-25.38511;,
 -4.05691;3.58787;-25.45616;,
 -4.99030;3.58787;-25.84278;,
 -3.67029;3.58787;-24.52277;,
 -4.05691;3.58787;-23.58938;,
 -4.99030;3.58787;-23.20276;,
 -5.92369;3.58787;-23.58938;,
 -6.31032;3.58787;-24.52277;,
 -5.92369;3.58787;-25.45616;,
 -4.12796;3.08272;-25.38511;,
 -4.99030;3.08272;-25.74230;,
 -3.77077;3.08272;-24.52277;,
 -4.12796;3.08272;-23.66043;,
 -4.99030;3.08272;-23.30324;,
 -5.85264;3.08272;-23.66043;,
 -6.20984;3.08272;-24.52277;,
 -5.85264;3.08272;-25.38511;,
 -4.33029;2.65448;-25.18278;,
 -4.99030;2.65448;-25.45616;,
 -4.05691;2.65448;-24.52277;,
 -4.33029;2.65448;-23.86275;,
 -4.99030;2.65448;-23.58938;,
 -5.65031;2.65448;-23.86275;,
 -5.92369;2.65448;-24.52277;,
 -5.65031;2.65448;-25.18278;,
 -4.63311;2.36833;-24.87997;,
 -4.99030;2.36833;-25.02791;,
 -4.48515;2.36833;-24.52277;,
 -4.63311;2.36833;-24.16557;,
 -4.99030;2.36833;-24.01762;,
 -5.34749;2.36833;-24.16557;,
 -5.49545;2.36833;-24.52277;,
 -5.34749;2.36833;-24.87997;,
 -4.99030;2.26785;-24.52277;,
 4.99000;4.90800;-24.52271;,
 5.34719;4.80752;-24.87991;,
 4.99000;4.80752;-25.02786;,
 5.49515;4.80752;-24.52271;,
 5.34719;4.80752;-24.16552;,
 4.99000;4.80752;-24.01757;,
 4.63281;4.80752;-24.16552;,
 4.48485;4.80752;-24.52271;,
 4.63281;4.80752;-24.87991;,
 5.65001;4.52138;-25.18273;,
 4.99000;4.52138;-25.45611;,
 5.92339;4.52138;-24.52271;,
 5.65001;4.52138;-23.86270;,
 4.99000;4.52138;-23.58932;,
 4.32999;4.52138;-23.86270;,
 4.05661;4.52138;-24.52271;,
 4.32999;4.52138;-25.18273;,
 5.85234;4.09313;-25.38506;,
 4.99000;4.09313;-25.74225;,
 6.20953;4.09313;-24.52271;,
 5.85234;4.09313;-23.66037;,
 4.99000;4.09313;-23.30318;,
 4.12766;4.09313;-23.66037;,
 3.77047;4.09313;-24.52271;,
 4.12766;4.09313;-25.38506;,
 5.92339;3.58799;-25.45611;,
 4.99000;3.58799;-25.84272;,
 6.31001;3.58799;-24.52271;,
 5.92339;3.58799;-23.58932;,
 4.99000;3.58799;-23.20271;,
 4.05661;3.58799;-23.58932;,
 3.66998;3.58799;-24.52271;,
 4.05661;3.58799;-25.45611;,
 5.85234;3.08284;-25.38506;,
 4.99000;3.08284;-25.74225;,
 6.20953;3.08284;-24.52271;,
 5.85234;3.08284;-23.66037;,
 4.99000;3.08284;-23.30318;,
 4.12766;3.08284;-23.66037;,
 3.77047;3.08284;-24.52271;,
 4.12766;3.08284;-25.38506;,
 5.65001;2.65459;-25.18273;,
 4.99000;2.65459;-25.45611;,
 5.92339;2.65459;-24.52271;,
 5.65001;2.65459;-23.86270;,
 4.99000;2.65459;-23.58932;,
 4.32999;2.65459;-23.86270;,
 4.05661;2.65459;-24.52271;,
 4.32999;2.65459;-25.18273;,
 5.34719;2.36845;-24.87991;,
 4.99000;2.36845;-25.02786;,
 5.49515;2.36845;-24.52271;,
 5.34719;2.36845;-24.16552;,
 4.99000;2.36845;-24.01757;,
 4.63281;2.36845;-24.16552;,
 4.48485;2.36845;-24.52271;,
 4.63281;2.36845;-24.87991;,
 4.99000;2.26797;-24.52271;,
 -4.99927;4.26072;-25.47324;,
 -4.85299;4.21958;-25.61951;,
 -4.99927;4.21958;-25.68010;,
 -4.79240;4.21958;-25.47324;,
 -4.85299;4.21958;-25.32695;,
 -4.99927;4.21958;-25.26636;,
 -5.14555;4.21958;-25.32695;,
 -5.20613;4.21958;-25.47324;,
 -5.14555;4.21958;-25.61951;,
 -4.72898;4.10239;-25.74352;,
 -4.99927;4.10239;-25.85548;,
 -4.61702;4.10239;-25.47323;,
 -4.72898;4.10239;-25.20295;,
 -4.99927;4.10239;-25.09099;,
 -5.26955;4.10239;-25.20295;,
 -5.38151;4.10239;-25.47324;,
 -5.26955;4.10239;-25.74352;,
 -4.64612;3.92702;-25.82638;,
 -4.99927;3.92702;-25.97266;,
 -4.49984;3.92702;-25.47323;,
 -4.64612;3.92702;-25.12009;,
 -4.99927;3.92702;-24.97381;,
 -5.35241;3.92702;-25.12009;,
 -5.49869;3.92702;-25.47324;,
 -5.35241;3.92702;-25.82638;,
 -4.61702;3.72015;-25.85548;,
 -4.99927;3.72015;-26.01381;,
 -4.45870;3.72015;-25.47323;,
 -4.61702;3.72015;-25.09099;,
 -4.99927;3.72015;-24.93266;,
 -5.38151;3.72015;-25.09099;,
 -5.53984;3.72015;-25.47324;,
 -5.38151;3.72015;-25.85548;,
 -4.64612;3.51328;-25.82638;,
 -4.99927;3.51328;-25.97266;,
 -4.49984;3.51328;-25.47323;,
 -4.64612;3.51328;-25.12009;,
 -4.99927;3.51328;-24.97381;,
 -5.35241;3.51328;-25.12009;,
 -5.49869;3.51328;-25.47324;,
 -5.35241;3.51328;-25.82638;,
 -4.72898;3.33791;-25.74352;,
 -4.99927;3.33791;-25.85548;,
 -4.61702;3.33791;-25.47323;,
 -4.72898;3.33791;-25.20295;,
 -4.99927;3.33791;-25.09099;,
 -5.26955;3.33791;-25.20295;,
 -5.38151;3.33791;-25.47324;,
 -5.26955;3.33791;-25.74352;,
 -4.85299;3.22073;-25.61951;,
 -4.99927;3.22073;-25.68010;,
 -4.79240;3.22073;-25.47324;,
 -4.85299;3.22073;-25.32695;,
 -4.99927;3.22073;-25.26636;,
 -5.14555;3.22073;-25.32695;,
 -5.20614;3.22073;-25.47324;,
 -5.14555;3.22073;-25.61951;,
 -4.99927;3.17958;-25.47324;,
 4.99900;4.26100;-25.47371;,
 5.14528;4.21985;-25.61999;,
 4.99900;4.21985;-25.68058;,
 5.20587;4.21985;-25.47371;,
 5.14528;4.21985;-25.32743;,
 4.99900;4.21985;-25.26684;,
 4.85272;4.21985;-25.32743;,
 4.79213;4.21985;-25.47371;,
 4.85272;4.21985;-25.61999;,
 5.26929;4.10267;-25.74399;,
 4.99900;4.10267;-25.85596;,
 5.38124;4.10267;-25.47371;,
 5.26929;4.10267;-25.20343;,
 4.99900;4.10267;-25.09146;,
 4.72871;4.10267;-25.20343;,
 4.61676;4.10267;-25.47371;,
 4.72871;4.10267;-25.74399;,
 5.35215;3.92730;-25.82686;,
 4.99900;3.92730;-25.97313;,
 5.49842;3.92730;-25.47371;,
 5.35215;3.92730;-25.12057;,
 4.99900;3.92730;-24.97429;,
 4.64585;3.92730;-25.12057;,
 4.49958;3.92730;-25.47371;,
 4.64585;3.92730;-25.82686;,
 5.38124;3.72043;-25.85596;,
 4.99900;3.72043;-26.01428;,
 5.53957;3.72043;-25.47371;,
 5.38124;3.72043;-25.09146;,
 4.99900;3.72043;-24.93314;,
 4.61676;3.72043;-25.09146;,
 4.45843;3.72043;-25.47371;,
 4.61676;3.72043;-25.85596;,
 5.35215;3.51356;-25.82686;,
 4.99900;3.51356;-25.97313;,
 5.49842;3.51356;-25.47371;,
 5.35215;3.51356;-25.12057;,
 4.99900;3.51356;-24.97429;,
 4.64585;3.51356;-25.12057;,
 4.49958;3.51356;-25.47371;,
 4.64585;3.51356;-25.82686;,
 5.26929;3.33819;-25.74399;,
 4.99900;3.33819;-25.85596;,
 5.38124;3.33819;-25.47371;,
 5.26929;3.33819;-25.20343;,
 4.99900;3.33819;-25.09146;,
 4.72871;3.33819;-25.20343;,
 4.61676;3.33819;-25.47371;,
 4.72871;3.33819;-25.74399;,
 5.14528;3.22100;-25.61999;,
 4.99900;3.22100;-25.68058;,
 5.20587;3.22100;-25.47371;,
 5.14528;3.22100;-25.32743;,
 4.99900;3.22100;-25.26684;,
 4.85272;3.22100;-25.32743;,
 4.79213;3.22100;-25.47371;,
 4.85272;3.22100;-25.61999;,
 4.99900;3.17986;-25.47371;;
 
 506;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,9,8;,
 3;0,10,9;,
 3;0,11,10;,
 3;0,12,11;,
 3;0,13,12;,
 3;0,14,13;,
 3;0,15,14;,
 3;0,16,15;,
 3;0,17,16;,
 3;0,18,17;,
 3;0,19,18;,
 3;0,20,19;,
 3;0,21,20;,
 3;0,22,21;,
 3;0,23,22;,
 3;0,24,23;,
 3;0,25,24;,
 3;0,2,25;,
 4;26,27,4,5;,
 4;28,29,23,24;,
 4;27,30,3,4;,
 4;31,28,24,25;,
 4;30,32,1,3;,
 4;33,31,25,2;,
 4;32,33,2,1;,
 4;29,34,22,23;,
 4;35,26,5,6;,
 4;34,36,21,22;,
 4;37,35,6,7;,
 4;36,38,20,21;,
 4;39,37,7,8;,
 4;38,40,19,20;,
 4;41,39,8,9;,
 4;40,42,18,19;,
 4;43,41,9,10;,
 4;42,44,17,18;,
 4;45,43,10,11;,
 4;46,47,15,16;,
 4;44,46,16,17;,
 4;48,49,12,13;,
 4;49,45,11,12;,
 4;50,48,13,14;,
 4;47,50,14,15;,
 4;51,52,27,26;,
 4;53,54,29,28;,
 4;52,55,30,27;,
 4;56,53,28,31;,
 4;55,57,32,30;,
 4;58,56,31,33;,
 4;57,58,33,32;,
 4;54,59,34,29;,
 4;60,51,26,35;,
 4;59,61,36,34;,
 4;62,60,35,37;,
 4;61,63,38,36;,
 4;64,62,37,39;,
 4;63,65,40,38;,
 4;66,64,39,41;,
 4;65,67,42,40;,
 4;68,66,41,43;,
 4;67,69,44,42;,
 4;70,68,43,45;,
 4;71,72,47,46;,
 4;69,71,46,44;,
 4;73,74,49,48;,
 4;74,70,45,49;,
 4;75,73,48,50;,
 4;72,75,50,47;,
 4;76,77,52,51;,
 4;78,79,54,53;,
 4;77,80,55,52;,
 4;81,78,53,56;,
 4;80,82,57,55;,
 4;83,81,56,58;,
 4;82,83,58,57;,
 4;79,84,59,54;,
 4;85,76,51,60;,
 4;84,86,61,59;,
 4;87,85,60,62;,
 4;86,88,63,61;,
 4;89,87,62,64;,
 4;88,90,65,63;,
 4;91,89,64,66;,
 4;90,92,67,65;,
 4;93,91,66,68;,
 4;92,94,69,67;,
 4;95,93,68,70;,
 4;96,97,72,71;,
 4;94,96,71,69;,
 4;98,99,74,73;,
 4;99,95,70,74;,
 4;100,98,73,75;,
 4;97,100,75,72;,
 4;101,102,77,76;,
 4;103,104,79,78;,
 4;102,105,80,77;,
 4;106,103,78,81;,
 4;105,107,82,80;,
 4;108,106,81,83;,
 4;107,108,83,82;,
 4;104,109,84,79;,
 4;110,101,76,85;,
 4;109,111,86,84;,
 4;112,110,85,87;,
 4;111,113,88,86;,
 4;114,112,87,89;,
 4;113,115,90,88;,
 4;116,114,89,91;,
 4;115,117,92,90;,
 4;118,116,91,93;,
 4;117,119,94,92;,
 4;120,118,93,95;,
 4;121,122,97,96;,
 4;119,121,96,94;,
 4;123,124,99,98;,
 4;124,120,95,99;,
 4;125,123,98,100;,
 4;122,125,100,97;,
 4;126,127,102,101;,
 4;128,129,104,103;,
 4;127,130,105,102;,
 4;131,128,103,106;,
 4;130,132,107,105;,
 4;133,131,106,108;,
 4;132,133,108,107;,
 4;129,134,109,104;,
 4;135,126,101,110;,
 4;134,136,111,109;,
 4;137,135,110,112;,
 4;136,138,113,111;,
 4;139,137,112,114;,
 4;138,140,115,113;,
 4;141,139,114,116;,
 4;140,142,117,115;,
 4;143,141,116,118;,
 4;142,144,119,117;,
 4;145,143,118,120;,
 4;146,147,122,121;,
 4;144,146,121,119;,
 4;148,149,124,123;,
 4;149,145,120,124;,
 4;150,148,123,125;,
 4;147,150,125,122;,
 4;151,152,127,126;,
 4;153,154,129,128;,
 4;152,155,130,127;,
 4;156,153,128,131;,
 4;155,157,132,130;,
 4;158,156,131,133;,
 4;157,158,133,132;,
 4;154,159,134,129;,
 4;160,151,126,135;,
 4;159,161,136,134;,
 4;162,160,135,137;,
 4;161,163,138,136;,
 4;164,162,137,139;,
 4;163,165,140,138;,
 4;166,164,139,141;,
 4;165,167,142,140;,
 4;168,166,141,143;,
 4;167,169,144,142;,
 4;170,168,143,145;,
 4;171,172,147,146;,
 4;169,171,146,144;,
 4;173,174,149,148;,
 4;174,170,145,149;,
 4;175,173,148,150;,
 4;172,175,150,147;,
 4;176,177,152,151;,
 4;178,179,154,153;,
 4;177,180,155,152;,
 4;181,178,153,156;,
 4;180,182,157,155;,
 4;183,181,156,158;,
 4;182,183,158,157;,
 4;179,184,159,154;,
 4;185,176,151,160;,
 4;184,186,161,159;,
 4;187,185,160,162;,
 4;186,188,163,161;,
 4;189,187,162,164;,
 4;188,190,165,163;,
 4;191,189,164,166;,
 4;190,192,167,165;,
 4;193,191,166,168;,
 4;192,194,169,167;,
 4;195,193,168,170;,
 4;196,197,172,171;,
 4;194,196,171,169;,
 4;198,199,174,173;,
 4;199,195,170,174;,
 4;200,198,173,175;,
 4;197,200,175,172;,
 4;201,202,177,176;,
 4;203,204,179,178;,
 4;202,205,180,177;,
 4;206,203,178,181;,
 4;205,207,182,180;,
 4;208,206,181,183;,
 4;207,208,183,182;,
 4;204,209,184,179;,
 4;210,201,176,185;,
 4;209,211,186,184;,
 4;212,210,185,187;,
 4;211,213,188,186;,
 4;214,212,187,189;,
 4;213,215,190,188;,
 4;216,214,189,191;,
 4;215,217,192,190;,
 4;218,216,191,193;,
 4;217,219,194,192;,
 4;220,218,193,195;,
 4;221,222,197,196;,
 4;219,221,196,194;,
 4;223,224,199,198;,
 4;224,220,195,199;,
 4;225,223,198,200;,
 4;222,225,200,197;,
 3;226,208,207;,
 3;226,207,205;,
 3;226,205,202;,
 3;226,202,201;,
 3;226,201,210;,
 3;226,210,212;,
 3;226,212,214;,
 3;226,214,216;,
 3;226,216,218;,
 3;226,218,220;,
 3;226,220,224;,
 3;226,224,223;,
 3;226,223,225;,
 3;226,225,222;,
 3;226,222,221;,
 3;226,219,217;,
 3;226,221,219;,
 3;226,217,215;,
 3;226,215,213;,
 3;226,213,211;,
 3;226,211,209;,
 3;226,209,204;,
 3;226,204,203;,
 3;226,203,206;,
 3;226,206,208;,
 3;227,228,229;,
 3;227,230,228;,
 3;227,231,230;,
 3;227,232,231;,
 3;227,233,232;,
 3;227,234,233;,
 3;227,235,234;,
 3;227,229,235;,
 4;229,228,236,237;,
 4;228,230,238,236;,
 4;230,231,239,238;,
 4;231,232,240,239;,
 4;232,233,241,240;,
 4;233,234,242,241;,
 4;234,235,243,242;,
 4;235,229,237,243;,
 4;237,236,244,245;,
 4;236,238,246,244;,
 4;238,239,247,246;,
 4;239,240,248,247;,
 4;240,241,249,248;,
 4;241,242,250,249;,
 4;242,243,251,250;,
 4;243,237,245,251;,
 4;245,244,252,253;,
 4;244,246,254,252;,
 4;246,247,255,254;,
 4;247,248,256,255;,
 4;248,249,257,256;,
 4;249,250,258,257;,
 4;250,251,259,258;,
 4;251,245,253,259;,
 4;253,252,260,261;,
 4;252,254,262,260;,
 4;254,255,263,262;,
 4;255,256,264,263;,
 4;256,257,265,264;,
 4;257,258,266,265;,
 4;258,259,267,266;,
 4;259,253,261,267;,
 4;261,260,268,269;,
 4;260,262,270,268;,
 4;262,263,271,270;,
 4;263,264,272,271;,
 4;264,265,273,272;,
 4;265,266,274,273;,
 4;266,267,275,274;,
 4;267,261,269,275;,
 4;269,268,276,277;,
 4;268,270,278,276;,
 4;270,271,279,278;,
 4;271,272,280,279;,
 4;272,273,281,280;,
 4;273,274,282,281;,
 4;274,275,283,282;,
 4;275,269,277,283;,
 3;277,276,284;,
 3;276,278,284;,
 3;278,279,284;,
 3;279,280,284;,
 3;280,281,284;,
 3;281,282,284;,
 3;282,283,284;,
 3;283,277,284;,
 3;285,286,287;,
 3;285,288,286;,
 3;285,289,288;,
 3;285,290,289;,
 3;285,291,290;,
 3;285,292,291;,
 3;285,293,292;,
 3;285,287,293;,
 4;287,286,294,295;,
 4;286,288,296,294;,
 4;288,289,297,296;,
 4;289,290,298,297;,
 4;290,291,299,298;,
 4;291,292,300,299;,
 4;292,293,301,300;,
 4;293,287,295,301;,
 4;295,294,302,303;,
 4;294,296,304,302;,
 4;296,297,305,304;,
 4;297,298,306,305;,
 4;298,299,307,306;,
 4;299,300,308,307;,
 4;300,301,309,308;,
 4;301,295,303,309;,
 4;303,302,310,311;,
 4;302,304,312,310;,
 4;304,305,313,312;,
 4;305,306,314,313;,
 4;306,307,315,314;,
 4;307,308,316,315;,
 4;308,309,317,316;,
 4;309,303,311,317;,
 4;311,310,318,319;,
 4;310,312,320,318;,
 4;312,313,321,320;,
 4;313,314,322,321;,
 4;314,315,323,322;,
 4;315,316,324,323;,
 4;316,317,325,324;,
 4;317,311,319,325;,
 4;319,318,326,327;,
 4;318,320,328,326;,
 4;320,321,329,328;,
 4;321,322,330,329;,
 4;322,323,331,330;,
 4;323,324,332,331;,
 4;324,325,333,332;,
 4;325,319,327,333;,
 4;327,326,334,335;,
 4;326,328,336,334;,
 4;328,329,337,336;,
 4;329,330,338,337;,
 4;330,331,339,338;,
 4;331,332,340,339;,
 4;332,333,341,340;,
 4;333,327,335,341;,
 3;335,334,342;,
 3;334,336,342;,
 3;336,337,342;,
 3;337,338,342;,
 3;338,339,342;,
 3;339,340,342;,
 3;340,341,342;,
 3;341,335,342;,
 3;343,344,345;,
 3;343,346,344;,
 3;343,347,346;,
 3;343,348,347;,
 3;343,349,348;,
 3;343,350,349;,
 3;343,351,350;,
 3;343,345,351;,
 4;345,344,352,353;,
 4;344,346,354,352;,
 4;346,347,355,354;,
 4;347,348,356,355;,
 4;348,349,357,356;,
 4;349,350,358,357;,
 4;350,351,359,358;,
 4;351,345,353,359;,
 4;353,352,360,361;,
 4;352,354,362,360;,
 4;354,355,363,362;,
 4;355,356,364,363;,
 4;356,357,365,364;,
 4;357,358,366,365;,
 4;358,359,367,366;,
 4;359,353,361,367;,
 4;361,360,368,369;,
 4;360,362,370,368;,
 4;362,363,371,370;,
 4;363,364,372,371;,
 4;364,365,373,372;,
 4;365,366,374,373;,
 4;366,367,375,374;,
 4;367,361,369,375;,
 4;369,368,376,377;,
 4;368,370,378,376;,
 4;370,371,379,378;,
 4;371,372,380,379;,
 4;372,373,381,380;,
 4;373,374,382,381;,
 4;374,375,383,382;,
 4;375,369,377,383;,
 4;377,376,384,385;,
 4;376,378,386,384;,
 4;378,379,387,386;,
 4;379,380,388,387;,
 4;380,381,389,388;,
 4;381,382,390,389;,
 4;382,383,391,390;,
 4;383,377,385,391;,
 4;385,384,392,393;,
 4;384,386,394,392;,
 4;386,387,395,394;,
 4;387,388,396,395;,
 4;388,389,397,396;,
 4;389,390,398,397;,
 4;390,391,399,398;,
 4;391,385,393,399;,
 3;393,392,400;,
 3;392,394,400;,
 3;394,395,400;,
 3;395,396,400;,
 3;396,397,400;,
 3;397,398,400;,
 3;398,399,400;,
 3;399,393,400;,
 3;401,402,403;,
 3;401,404,402;,
 3;401,405,404;,
 3;401,406,405;,
 3;401,407,406;,
 3;401,408,407;,
 3;401,409,408;,
 3;401,403,409;,
 4;403,402,410,411;,
 4;402,404,412,410;,
 4;404,405,413,412;,
 4;405,406,414,413;,
 4;406,407,415,414;,
 4;407,408,416,415;,
 4;408,409,417,416;,
 4;409,403,411,417;,
 4;411,410,418,419;,
 4;410,412,420,418;,
 4;412,413,421,420;,
 4;413,414,422,421;,
 4;414,415,423,422;,
 4;415,416,424,423;,
 4;416,417,425,424;,
 4;417,411,419,425;,
 4;419,418,426,427;,
 4;418,420,428,426;,
 4;420,421,429,428;,
 4;421,422,430,429;,
 4;422,423,431,430;,
 4;423,424,432,431;,
 4;424,425,433,432;,
 4;425,419,427,433;,
 4;427,426,434,435;,
 4;426,428,436,434;,
 4;428,429,437,436;,
 4;429,430,438,437;,
 4;430,431,439,438;,
 4;431,432,440,439;,
 4;432,433,441,440;,
 4;433,427,435,441;,
 4;435,434,442,443;,
 4;434,436,444,442;,
 4;436,437,445,444;,
 4;437,438,446,445;,
 4;438,439,447,446;,
 4;439,440,448,447;,
 4;440,441,449,448;,
 4;441,435,443,449;,
 4;443,442,450,451;,
 4;442,444,452,450;,
 4;444,445,453,452;,
 4;445,446,454,453;,
 4;446,447,455,454;,
 4;447,448,456,455;,
 4;448,449,457,456;,
 4;449,443,451,457;,
 3;451,450,458;,
 3;450,452,458;,
 3;452,453,458;,
 3;453,454,458;,
 3;454,455,458;,
 3;455,456,458;,
 3;456,457,458;,
 3;457,451,458;;
 
 MeshMaterialList {
  3;
  506;
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
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
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