local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=8) then if (v86<=3) then if (v86<=1) then if (v86==0) then v83[v85[2]]=v83[v85[3]][v83[v85[4]]];else v83[v85[2]]={};end elseif (v86>2) then local v115=v85[2];local v116={v83[v115](v83[v115 + 1 ])};local v117=0;for v159=v115,v85[4] do v117=v117 + 1 ;v83[v159]=v116[v117];end else v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];end elseif (v86<=5) then if (v86==4) then local v122=v85[2];local v123=v85[4];local v124=v122 + 2 ;local v125={v83[v122](v83[v122 + 1 ],v83[v124])};for v162=1,v123 do v83[v124 + v162 ]=v125[v162];end local v126=v125[1];if v126 then v83[v124]=v126;v77=v85[3];else v77=v77 + 1 ;end else local v127;local v128;v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v128=v85[2];v127=v83[v85[3]];v83[v128 + 1 ]=v127;v83[v128]=v127[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v128=v85[2];v83[v128](v13(v83,v128 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86<=6) then do return;end elseif (v86==7) then v83[v85[2]][v85[3]]=v85[4];else v83[v85[2]]=v83[v85[3]];end elseif (v86<=13) then if (v86<=10) then if (v86>9) then v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v83[v85[4]]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];else v83[v85[2]]=v85[3];end elseif (v86<=11) then v83[v85[2]]=v59[v85[3]];elseif (v86==12) then v83[v85[2]]=v85[3]~=0 ;elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=15) then if (v86>14) then local v150=v85[2];local v151=v83[v85[3]];v83[v150 + 1 ]=v151;v83[v150]=v151[v85[4]];else local v155=v85[2];v83[v155](v13(v83,v155 + 1 ,v85[3]));end elseif (v86<=16) then v77=v85[3];elseif (v86>17) then v83[v85[2]]=v83[v85[3]][v85[4]];elseif (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!163O00024O00D90453410100023O00E6702FA541022O0080204A60DC412O01022O00A0C4CFCBF141023O00C0298C6741022O0080888B65D241023O0054346F9D41022O00604A610CEE41023O000DBB0CD641022O00105897BFF341023O005426B3A741022O0030B9DE21F341023O004689EBC44103043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203063O0055736572496403053O00706169727303043O004B69636B032A3O00596F7520617265206E6F7420617574686F72697A656420746F207573652074686973207363726970742E002B4O00025O000D00304O0001000200304O0003000200304O0004000500304O0006000500304O0007000200304O0008000500304O0009000500304O000A000500304O000B00050030073O000C000500300A3O000D000500304O000E000500304O000F000500122O000100103O00202O00010001001100202O00010001001200202O0002000100134O00033O000200122O000400146O00056O00030004000200060004103O001F000100120B000900103O0020120009000900110020120009000900120020120009000900130006110009001F000100080004103O001F00012O000C000300013O0004103O0021000100060400040017000100020004103O0017000100060D0003002A000100010004103O002A000100120B000400103O00200500040004001100202O00040004001200202O00040004001500122O000600166O0004000600016O00014O00063O00017O00",v9(),...);