function [adjMatrix,nodeNames] = getDAG()
nodeNames{1} = 'protein';
nodeNames{2} = 'udb';
nodeNames{3} = 'ksort';
nodeNames{4} = 'spndx';
nodeNames{5} = 'srtprot';
nodeNames{6} = 'nprot';
nodeNames{7} = 'tkv';
nodeNames{8} = 'slt22';
nodeNames{9} = 's2225';
nodeNames{10} = 'frspdag';
nodeNames{11} = 'tkvs';
nodeNames{12} = 'saamng';
nodeNames{13} = 'jordinf';
nodeNames{14} = 'partigerm';
nodeNames{15} = 'markgrm';
nodeNames{16} = 'saakern';
nodeNames{17} = 'sorttkv';
nodeNames{18} = 'antplnt';
nodeNames{19} = 'aks_m2';
nodeNames{20} = 'ntilg';
nodeNames{21} = 'sort';
nodeNames{22} = 'srtsize';
nodeNames{23} = 'aks_vgt';
nodeNames{24} = 'keraks';
nodeNames{25} = 's2528';
nodeNames{26} = 'rokap';
nodeNames{27} = 'dgv5980';
nodeNames{28} = 'dgv1059';
nodeNames{29} = 'bgbyg';
nodeNames{30} = 'nedbarea';
nodeNames{31} = 'komm';
nodeNames{32} = 'jordtype';
nodeNames{33} = 'pesticid';
nodeNames{34} = 'potnmin';
nodeNames{35} = 'aar_mod';
nodeNames{36} = 'nmin';
nodeNames{37} = 'mod_nmin';
nodeNames{38} = 'exptgens';
nodeNames{39} = 'forfrugt';
nodeNames{40} = 'jordn';
nodeNames{41} = 'nopt';
nodeNames{42} = 'ngodnn';
nodeNames{43} = 'ngodnt';
nodeNames{44} = 'saatid';
nodeNames{45} = 'dg25';
nodeNames{46} = 'nplac';
nodeNames{47} = 'ngodn';
nodeNames{48} = 'ngtilg';
adjMatrix = zeros(length(nodeNames));
adjMatrix(3,1) = 1;
adjMatrix(5,1) = 1;
adjMatrix(6,1) = 1;
adjMatrix(28,1) = 1;
adjMatrix(19,2) = 1;
adjMatrix(23,2) = 1;
adjMatrix(22,3) = 1;
adjMatrix(23,3) = 1;
adjMatrix(24,3) = 1;
adjMatrix(3,4) = 1;
adjMatrix(20,4) = 1;
adjMatrix(27,4) = 1;
adjMatrix(21,5) = 1;
adjMatrix(40,6) = 1;
adjMatrix(47,6) = 1;
adjMatrix(17,7) = 1;
adjMatrix(19,7) = 1;
adjMatrix(20,7) = 1;
adjMatrix(24,7) = 1;
adjMatrix(22,8) = 1;
adjMatrix(23,8) = 1;
adjMatrix(24,8) = 1;
adjMatrix(22,9) = 1;
adjMatrix(23,9) = 1;
adjMatrix(24,9) = 1;
adjMatrix(44,10) = 1;
adjMatrix(10,13) = 1;
adjMatrix(13,15) = 1;
adjMatrix(14,15) = 1;
adjMatrix(11,16) = 1;
adjMatrix(12,16) = 1;
adjMatrix(21,17) = 1;
adjMatrix(15,18) = 1;
adjMatrix(16,18) = 1;
adjMatrix(17,19) = 1;
adjMatrix(18,19) = 1;
adjMatrix(20,19) = 1;
adjMatrix(28,19) = 1;
adjMatrix(40,20) = 1;
adjMatrix(48,20) = 1;
adjMatrix(21,22) = 1;
adjMatrix(19,23) = 1;
adjMatrix(20,23) = 1;
adjMatrix(27,23) = 1;
adjMatrix(19,24) = 1;
adjMatrix(20,24) = 1;
adjMatrix(28,24) = 1;
adjMatrix(22,25) = 1;
adjMatrix(23,25) = 1;
adjMatrix(24,25) = 1;
adjMatrix(32,26) = 1;
adjMatrix(26,27) = 1;
adjMatrix(26,28) = 1;
adjMatrix(44,28) = 1;
adjMatrix(27,29) = 1;
adjMatrix(28,29) = 1;
adjMatrix(31,30) = 1;
adjMatrix(32,34) = 1;
adjMatrix(39,34) = 1;
adjMatrix(31,35) = 1;
adjMatrix(32,35) = 1;
adjMatrix(30,36) = 1;
adjMatrix(32,36) = 1;
adjMatrix(35,37) = 1;
adjMatrix(36,37) = 1;
adjMatrix(32,38) = 1;
adjMatrix(33,38) = 1;
adjMatrix(39,38) = 1;
adjMatrix(34,40) = 1;
adjMatrix(35,40) = 1;
adjMatrix(36,40) = 1;
adjMatrix(33,41) = 1;
adjMatrix(38,41) = 1;
adjMatrix(40,42) = 1;
adjMatrix(41,42) = 1;
adjMatrix(37,43) = 1;
adjMatrix(38,43) = 1;
adjMatrix(39,43) = 1;
adjMatrix(44,45) = 1;
adjMatrix(42,47) = 1;
adjMatrix(43,47) = 1;
adjMatrix(45,48) = 1;
adjMatrix(46,48) = 1;
adjMatrix(47,48) = 1;
P = topologicalPermutation(adjMatrix);
adjMatrix = adjMatrix(P,P);
nodeNames = nodeNames(P);
