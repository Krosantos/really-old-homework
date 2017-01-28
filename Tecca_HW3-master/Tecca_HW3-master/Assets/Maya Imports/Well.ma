//Maya ASCII 2011 scene
//Name: Well.ma
//Last modified: Wed, Feb 19, 2014 04:54:40 PM
//Codeset: 1252
requires maya "2011";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 x64";
fileInfo "cutIdentifier" "201003190311-771506";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.0188153012036016 23.383997223141805 -24.170801307121842 ;
	setAttr ".r" -type "double3" -42.600444136178446 186.79999999999288 0 ;
	setAttr ".rp" -type "double3" 0 2.541098841762901e-020 3.5527136788005009e-015 ;
	setAttr ".rpt" -type "double3" -1.8420769854886767e-015 -5.1708152104180505e-015 
		-4.7474602506761579e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 33.069291176493351;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.13662171363830566 1 2.384185791015625e-007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".r" -type "double3" 0 0 180 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 142 ".uvst[0].uvsp[0:141]" -type "float2" 0.26480687 0.8150124 
		0.26480687 0.68983567 0.29238382 0.68983567 0.29238382 0.8150124 0.26480687 0.56465894 
		0.29238382 0.56465894 0.31996077 0.68983567 0.31996077 0.8150124 0.26480687 0.49805376 
		0.29238382 0.49805376 0.31996077 0.56465894 0.31996077 0.49805376 0.32609609 0.61341727 
		0.32609609 0.49805376 0.35367301 0.49805376 0.35367301 0.61341727 0.38124999 0.49805376 
		0.38124999 0.61341727 0.32609609 0.74460381 0.35367301 0.74460381 0.38124999 0.74460381 
		0.32609609 0.83022976 0.35367301 0.83022976 0.38124999 0.83022976 0.087074436 0.63126409 
		0.087074436 0.49805376 0.11465142 0.49805376 0.11465142 0.63126409 0.14222841 0.49805376 
		0.14222841 0.63126409 0.087074436 0.73330909 0.11465142 0.73330909 0.14222841 0.73330909 
		0.17427792 0.80392897 0.17427792 0.93511546 0.14670099 0.93511546 0.14670099 0.80392897 
		0.11912406 0.93511546 0.11912406 0.80392897 0.71956122 0.56465894 0.76512182 0.68983567 
		0.5703814 0.68983567 0.71956134 0.8150124 0.60419774 0.49805382 0.60419774 0.88161761 
		0.47301117 0.52118552 0.47301123 0.85848588 0.38738525 0.62323052 0.38738528 0.75644088 
		0.23681593 0.24796438 0.48671025 0.24796438 0.42824608 0.40859339 0.42824614 0.087335423 
		0.2802096 0.49406227 0.28020966 0.0018664885 0.11186872 0.46437922 0.11186878 0.031549469 
		0.0019920322 0.33343324 0.0019920615 0.16249545 0.88156497 0.49805376 0.88156497 
		0.65868276 0.85398805 0.65868276 0.85398805 0.49805376 0.88156497 0.81931174 0.85398805 
		0.81931174 0.82641107 0.65868276 0.82641107 0.49805376 0.88156497 0.90478069 0.85398805 
		0.90478069 0.82641107 0.81931174 0.79883409 0.65868276 0.79883409 0.49805376 0.82641107 
		0.90478069 0.79883409 0.81931174 0.77125716 0.65868276 0.77125716 0.49805376 0.79883409 
		0.90478069 0.77125716 0.81931174 0.77125716 0.90478069 0.88770032 0.64609027 0.88770032 
		0.49805382 0.91527724 0.49805382 0.91527724 0.64609027 0.94285417 0.49805382 0.94285417 
		0.64609027 0.88770032 0.81443113 0.91527724 0.81443113 0.97043109 0.49805382 0.97043109 
		0.64609027 0.94285417 0.81443113 0.88770032 0.92430776 0.91527724 0.92430776 0.99800801 
		0.49805382 0.99800801 0.64609027 0.97043109 0.81443113 0.94285417 0.92430776 0.99800801 
		0.81443113 0.97043109 0.92430776 0.99800801 0.92430776 0.25867155 0.62899977 0.25867155 
		0.79993755 0.23109461 0.79993755 0.23109461 0.62899977 0.20351765 0.79993755 0.20351765 
		0.62899977 0.25867155 0.49805376 0.23109461 0.49805376 0.17594069 0.79993755 0.17594069 
		0.62899977 0.20351765 0.49805376 0.14836374 0.79993755 0.14836374 0.62899977 0.17594069 
		0.49805376 0.14836374 0.49805376 0.11229986 0.73730057 0.11229986 0.9056415 0.084722899 
		0.9056415 0.084722899 0.73730057 0.057145946 0.9056415 0.057145946 0.73730057 0.029568993 
		0.9056415 0.029568993 0.73730057 0.0019920368 0.9056415 0.0019920368 0.73730057 0.91957694 
		0.087335452 0.97804111 0.24796444 0.92288715 0.24796444 0.87732655 0.12278773 0.919577 
		0.40859339 0.87732667 0.37314114 0.77154046 0.0018665472 0.76196313 0.05618256 0.77154052 
		0.49406233 0.76196313 0.43974635 0.6031996 0.031549588 0.63077652 0.079314291 0.60319966 
		0.46437931 0.63077658 0.41661465 0.49332291 0.16249557 0.54515064 0.18135931 0.49332291 
		0.33343336 0.54515064 0.31456965;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 73 ".vt[0:72]"  3.5308542 -1 -2.220446e-016 2.7047913 -1 
		-2.2695894 0.61312628 -1 -3.4772129 -1.7654276 -1 -3.0578096 -3.3179183 -1 -1.2076229 
		-3.3179181 -1 1.2076241 -1.7654269 -1 3.0578103 0.61312723 -1 3.4772134 2.7047925 
		-1 2.2695892 3.5308542 -0.5 -1.110223e-016 2.7047913 -0.5 -2.2695894 0.61312628 -0.5 
		-3.4772129 -1.7654276 -0.5 -3.0578096 -3.3179183 -0.5 -1.2076229 -3.3179181 -0.5 
		1.2076241 -1.7654269 -0.5 3.0578103 0.61312723 -0.5 3.4772134 2.7047925 -0.5 2.2695892 
		3.5308542 0 0 2.7047913 0 -2.2695894 0.61312628 0 -3.4772129 -1.7654276 0 -3.0578096 
		-3.3179183 0 -1.2076229 -3.3179181 0 1.2076241 -1.7654269 0 3.0578103 0.61312723 
		0 3.4772134 2.7047925 0 2.2695892 0 0.83333588 0 4.5308542 1 2.220446e-016 3.4708357 
		1 -2.9123771 0.7867744 1 -4.4620204 -2.2654276 1 -3.9238348 -4.2576108 1 -1.5496429 
		-4.2576103 1 1.5496444 -2.2654266 1 3.9238358 0.78677571 1 4.4620209 3.4708371 1 
		2.9123766 4.5308542 0.5 1.110223e-016 3.4708357 0.5 -2.9123771 0.7867744 0.5 -4.4620204 
		-2.2654276 0.5 -3.9238348 -4.2576108 0.5 -1.5496429 -4.2576103 0.5 1.5496444 -2.2654266 
		0.5 3.9238358 0.78677571 0.5 4.4620209 3.4708371 0.5 2.9123766 4.5308542 0 0 3.4708357 
		0 -2.9123771 0.7867744 0 -4.4620204 -2.2654276 0 -3.9238348 -4.2576108 0 -1.5496429 
		-4.2576103 0 1.5496444 -2.2654266 0 3.9238358 0.78677571 0 4.4620209 3.4708371 0 
		2.9123766 4.5308542 -0.5 -1.110223e-016 3.4708357 -0.5 -2.9123771 0.7867744 -0.5 
		-4.4620204 -2.2654276 -0.5 -3.9238348 -4.2576108 -0.5 -1.5496429 -4.2576103 -0.5 
		1.5496444 -2.2654266 -0.5 3.9238358 0.78677571 -0.5 4.4620209 3.4708371 -0.5 2.9123766 
		4.5308542 -1 -2.220446e-016 3.4708357 -1 -2.9123771 0.7867744 -1 -4.4620204 -2.2654276 
		-1 -3.9238348 -4.2576108 -1 -1.5496429 -4.2576103 -1 1.5496444 -2.2654266 -1 3.9238358 
		0.78677571 -1 4.4620209 3.4708371 -1 2.9123766;
	setAttr -s 153 ".ed[0:152]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 8 1 8 0 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 16 1 16 17 1 17 9 1 
		18 19 1 19 20 1 20 21 1 21 22 1 
		22 23 1 23 24 1 24 25 1 25 26 1 
		26 18 1 28 29 1 29 30 1 30 31 1 
		31 32 1 32 33 1 33 34 1 34 35 1 
		35 36 1 36 28 1 37 38 1 38 39 1 
		39 40 1 40 41 1 41 42 1 42 43 1 
		43 44 1 44 45 1 45 37 1 46 47 1 
		47 48 1 48 49 1 49 50 1 50 51 1 
		51 52 1 52 53 1 53 54 1 54 46 1 
		55 56 1 56 57 1 57 58 1 58 59 1 
		59 60 1 60 61 1 61 62 1 62 63 1 
		63 55 1 64 65 1 65 66 1 66 67 1 
		67 68 1 68 69 1 69 70 1 70 71 1 
		71 72 1 72 64 1 0 9 0 1 10 0 
		2 11 0 3 12 0 4 13 0 5 14 0 
		6 15 0 7 16 0 8 17 0 9 18 0 
		10 19 0 11 20 0 12 21 0 13 22 0 
		14 23 0 15 24 0 16 25 0 17 26 0 
		18 27 0 19 27 0 20 27 0 21 27 0 
		22 27 0 23 27 0 24 27 0 25 27 0 
		26 27 0 27 28 1 27 29 1 27 30 1 
		27 31 1 27 32 1 27 33 1 27 34 1 
		27 35 1 27 36 1 28 37 0 29 38 0 
		30 39 0 31 40 0 32 41 0 33 42 0 
		34 43 0 35 44 0 36 45 0 37 46 0 
		38 47 0 39 48 0 40 49 0 41 50 0 
		42 51 0 43 52 0 44 53 0 45 54 0 
		46 55 0 47 56 0 48 57 0 49 58 0 
		50 59 0 51 60 0 52 61 0 53 62 0 
		54 63 0 55 64 0 56 65 0 57 66 0 
		58 67 0 59 68 0 60 69 0 61 70 0 
		62 71 0 63 72 0 64 0 1 65 1 1 
		66 2 1 67 3 1 68 4 1 69 5 1 
		70 6 1 71 7 1 72 8 1;
	setAttr -s 81 ".fc[0:80]" -type "polyFaces" 
		f 4 -1 72 9 -74 
		mu 0 4 0 1 2 3 
		f 4 -2 73 10 -75 
		mu 0 4 12 13 14 15 
		f 4 -3 74 11 -76 
		mu 0 4 18 12 15 19 
		f 4 -4 75 12 -77 
		mu 0 4 21 18 19 22 
		f 4 -5 76 13 -78 
		mu 0 4 24 25 26 27 
		f 4 -6 77 14 -79 
		mu 0 4 30 24 27 31 
		f 4 -7 78 15 -80 
		mu 0 4 33 34 35 36 
		f 4 -8 79 16 -81 
		mu 0 4 4 8 9 5 
		f 4 -9 80 17 -73 
		mu 0 4 1 4 5 2 
		f 4 -10 81 18 -83 
		mu 0 4 3 2 6 7 
		f 4 -11 82 19 -84 
		mu 0 4 15 14 16 17 
		f 4 -12 83 20 -85 
		mu 0 4 19 15 17 20 
		f 4 -13 84 21 -86 
		mu 0 4 22 19 20 23 
		f 4 -14 85 22 -87 
		mu 0 4 27 26 28 29 
		f 4 -15 86 23 -88 
		mu 0 4 31 27 29 32 
		f 4 -16 87 24 -89 
		mu 0 4 36 35 37 38 
		f 4 -17 88 25 -90 
		mu 0 4 5 9 11 10 
		f 4 -18 89 26 -82 
		mu 0 4 2 5 10 6 
		f 3 -19 90 -92 
		mu 0 3 39 40 41 
		f 3 -20 91 -93 
		mu 0 3 43 39 41 
		f 3 -21 92 -94 
		mu 0 3 45 43 41 
		f 3 -22 93 -95 
		mu 0 3 47 45 41 
		f 3 -23 94 -96 
		mu 0 3 48 47 41 
		f 3 -24 95 -97 
		mu 0 3 46 48 41 
		f 3 -25 96 -98 
		mu 0 3 44 46 41 
		f 3 -26 97 -99 
		mu 0 3 42 44 41 
		f 3 -27 98 -91 
		mu 0 3 40 42 41 
		f 3 99 27 -101 
		mu 0 3 49 50 51 
		f 3 100 28 -102 
		mu 0 3 49 51 53 
		f 3 101 29 -103 
		mu 0 3 49 53 55 
		f 3 102 30 -104 
		mu 0 3 49 55 57 
		f 3 103 31 -105 
		mu 0 3 49 57 58 
		f 3 104 32 -106 
		mu 0 3 49 58 56 
		f 3 105 33 -107 
		mu 0 3 49 56 54 
		f 3 106 34 -108 
		mu 0 3 49 54 52 
		f 3 107 35 -100 
		mu 0 3 49 52 50 
		f 4 -28 108 36 -110 
		mu 0 4 59 60 61 62 
		f 4 -29 109 37 -111 
		mu 0 4 79 80 81 82 
		f 4 -30 110 38 -112 
		mu 0 4 85 79 82 86 
		f 4 -31 111 39 -113 
		mu 0 4 90 85 86 91 
		f 4 -32 112 40 -114 
		mu 0 4 99 100 101 102 
		f 4 -33 113 41 -115 
		mu 0 4 105 99 102 106 
		f 4 -34 114 42 -116 
		mu 0 4 114 115 116 117 
		f 4 -35 115 43 -117 
		mu 0 4 63 67 68 64 
		f 4 -36 116 44 -109 
		mu 0 4 60 63 64 61 
		f 4 -37 117 45 -119 
		mu 0 4 62 61 65 66 
		f 4 -38 118 46 -120 
		mu 0 4 82 81 83 84 
		f 4 -39 119 47 -121 
		mu 0 4 86 82 84 89 
		f 4 -40 120 48 -122 
		mu 0 4 91 86 89 95 
		f 4 -41 121 49 -123 
		mu 0 4 102 101 103 104 
		f 4 -42 122 50 -124 
		mu 0 4 106 102 104 109 
		f 4 -43 123 51 -125 
		mu 0 4 117 116 118 119 
		f 4 -44 124 52 -126 
		mu 0 4 64 68 72 69 
		f 4 -45 125 53 -118 
		mu 0 4 61 64 69 65 
		f 4 -46 126 54 -128 
		mu 0 4 66 65 70 71 
		f 4 -47 127 55 -129 
		mu 0 4 84 83 87 88 
		f 4 -48 128 56 -130 
		mu 0 4 89 84 88 94 
		f 4 -49 129 57 -131 
		mu 0 4 95 89 94 97 
		f 4 -50 130 58 -132 
		mu 0 4 104 103 107 108 
		f 4 -51 131 59 -133 
		mu 0 4 109 104 108 112 
		f 4 -52 132 60 -134 
		mu 0 4 119 118 120 121 
		f 4 -53 133 61 -135 
		mu 0 4 69 72 76 73 
		f 4 -54 134 62 -127 
		mu 0 4 65 69 73 70 
		f 4 -55 135 63 -137 
		mu 0 4 71 70 74 75 
		f 4 -56 136 64 -138 
		mu 0 4 88 87 92 93 
		f 4 -57 137 65 -139 
		mu 0 4 94 88 93 96 
		f 4 -58 138 66 -140 
		mu 0 4 97 94 96 98 
		f 4 -59 139 67 -141 
		mu 0 4 108 107 110 111 
		f 4 -60 140 68 -142 
		mu 0 4 112 108 111 113 
		f 4 -61 141 69 -143 
		mu 0 4 121 120 122 123 
		f 4 -62 142 70 -144 
		mu 0 4 73 76 78 77 
		f 4 -63 143 71 -136 
		mu 0 4 70 73 77 74 
		f 4 -64 144 0 -146 
		mu 0 4 124 125 126 127 
		f 4 -65 145 1 -147 
		mu 0 4 130 124 127 131 
		f 4 -66 146 2 -148 
		mu 0 4 134 130 131 135 
		f 4 -67 147 3 -149 
		mu 0 4 138 134 135 139 
		f 4 -68 148 4 -150 
		mu 0 4 140 138 139 141 
		f 4 -69 149 5 -151 
		mu 0 4 136 140 141 137 
		f 4 -70 150 6 -152 
		mu 0 4 132 136 137 133 
		f 4 -71 151 7 -153 
		mu 0 4 128 132 133 129 
		f 4 -72 152 8 -145 
		mu 0 4 125 128 129 126 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".duv" yes;
createNode transform -n "pPipe1_reference";
	setAttr ".tmp" yes;
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".r" -type "double3" 0 0 180 ;
createNode mesh -n "pPipeShape1_reference" -p "pPipe1_reference";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 142 ".uvst[0].uvsp[0:141]" -type "float2" 0.26480687 0.8150124 
		0.26480687 0.68983567 0.29238382 0.68983567 0.29238382 0.8150124 0.26480687 0.56465894 
		0.29238382 0.56465894 0.31996077 0.68983567 0.31996077 0.8150124 0.26480687 0.49805376 
		0.29238382 0.49805376 0.31996077 0.56465894 0.31996077 0.49805376 0.32609609 0.61341727 
		0.32609609 0.49805376 0.35367301 0.49805376 0.35367301 0.61341727 0.38124999 0.49805376 
		0.38124999 0.61341727 0.32609609 0.74460381 0.35367301 0.74460381 0.38124999 0.74460381 
		0.32609609 0.83022976 0.35367301 0.83022976 0.38124999 0.83022976 0.087074436 0.63126409 
		0.087074436 0.49805376 0.11465142 0.49805376 0.11465142 0.63126409 0.14222841 0.49805376 
		0.14222841 0.63126409 0.087074436 0.73330909 0.11465142 0.73330909 0.14222841 0.73330909 
		0.17427792 0.80392897 0.17427792 0.93511546 0.14670099 0.93511546 0.14670099 0.80392897 
		0.11912406 0.93511546 0.11912406 0.80392897 0.71956122 0.56465894 0.76512182 0.68983567 
		0.5703814 0.68983567 0.71956134 0.8150124 0.60419774 0.49805382 0.60419774 0.88161761 
		0.47301117 0.52118552 0.47301123 0.85848588 0.38738525 0.62323052 0.38738528 0.75644088 
		0.23681593 0.24796438 0.48671025 0.24796438 0.42824608 0.40859339 0.42824614 0.087335423 
		0.2802096 0.49406227 0.28020966 0.0018664885 0.11186872 0.46437922 0.11186878 0.031549469 
		0.0019920322 0.33343324 0.0019920615 0.16249545 0.88156497 0.49805376 0.88156497 
		0.65868276 0.85398805 0.65868276 0.85398805 0.49805376 0.88156497 0.81931174 0.85398805 
		0.81931174 0.82641107 0.65868276 0.82641107 0.49805376 0.88156497 0.90478069 0.85398805 
		0.90478069 0.82641107 0.81931174 0.79883409 0.65868276 0.79883409 0.49805376 0.82641107 
		0.90478069 0.79883409 0.81931174 0.77125716 0.65868276 0.77125716 0.49805376 0.79883409 
		0.90478069 0.77125716 0.81931174 0.77125716 0.90478069 0.88770032 0.64609027 0.88770032 
		0.49805382 0.91527724 0.49805382 0.91527724 0.64609027 0.94285417 0.49805382 0.94285417 
		0.64609027 0.88770032 0.81443113 0.91527724 0.81443113 0.97043109 0.49805382 0.97043109 
		0.64609027 0.94285417 0.81443113 0.88770032 0.92430776 0.91527724 0.92430776 0.99800801 
		0.49805382 0.99800801 0.64609027 0.97043109 0.81443113 0.94285417 0.92430776 0.99800801 
		0.81443113 0.97043109 0.92430776 0.99800801 0.92430776 0.25867155 0.62899977 0.25867155 
		0.79993755 0.23109461 0.79993755 0.23109461 0.62899977 0.20351765 0.79993755 0.20351765 
		0.62899977 0.25867155 0.49805376 0.23109461 0.49805376 0.17594069 0.79993755 0.17594069 
		0.62899977 0.20351765 0.49805376 0.14836374 0.79993755 0.14836374 0.62899977 0.17594069 
		0.49805376 0.14836374 0.49805376 0.11229986 0.73730057 0.11229986 0.9056415 0.084722899 
		0.9056415 0.084722899 0.73730057 0.057145946 0.9056415 0.057145946 0.73730057 0.029568993 
		0.9056415 0.029568993 0.73730057 0.0019920368 0.9056415 0.0019920368 0.73730057 0.91957694 
		0.087335452 0.97804111 0.24796444 0.92288715 0.24796444 0.87732655 0.12278773 0.919577 
		0.40859339 0.87732667 0.37314114 0.77154046 0.0018665472 0.76196313 0.05618256 0.77154052 
		0.49406233 0.76196313 0.43974635 0.6031996 0.031549588 0.63077652 0.079314291 0.60319966 
		0.46437931 0.63077658 0.41661465 0.49332291 0.16249557 0.54515064 0.18135931 0.49332291 
		0.33343336 0.54515064 0.31456965;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 73 ".vt[0:72]"  3.5308542 -1 -2.220446e-016 2.7047913 -1 
		-2.2695894 0.61312628 -1 -3.4772129 -1.7654276 -1 -3.0578096 -3.3179183 -1 -1.2076229 
		-3.3179181 -1 1.2076241 -1.7654269 -1 3.0578103 0.61312723 -1 3.4772134 2.7047925 
		-1 2.2695892 3.5308542 -0.5 -1.110223e-016 2.7047913 -0.5 -2.2695894 0.61312628 -0.5 
		-3.4772129 -1.7654276 -0.5 -3.0578096 -3.3179183 -0.5 -1.2076229 -3.3179181 -0.5 
		1.2076241 -1.7654269 -0.5 3.0578103 0.61312723 -0.5 3.4772134 2.7047925 -0.5 2.2695892 
		3.5308542 0 0 2.7047913 0 -2.2695894 0.61312628 0 -3.4772129 -1.7654276 0 -3.0578096 
		-3.3179183 0 -1.2076229 -3.3179181 0 1.2076241 -1.7654269 0 3.0578103 0.61312723 
		0 3.4772134 2.7047925 0 2.2695892 0 0.83333588 0 4.5308542 1 2.220446e-016 3.4708357 
		1 -2.9123771 0.7867744 1 -4.4620204 -2.2654276 1 -3.9238348 -4.2576108 1 -1.5496429 
		-4.2576103 1 1.5496444 -2.2654266 1 3.9238358 0.78677571 1 4.4620209 3.4708371 1 
		2.9123766 4.5308542 0.5 1.110223e-016 3.4708357 0.5 -2.9123771 0.7867744 0.5 -4.4620204 
		-2.2654276 0.5 -3.9238348 -4.2576108 0.5 -1.5496429 -4.2576103 0.5 1.5496444 -2.2654266 
		0.5 3.9238358 0.78677571 0.5 4.4620209 3.4708371 0.5 2.9123766 4.5308542 0 0 3.4708357 
		0 -2.9123771 0.7867744 0 -4.4620204 -2.2654276 0 -3.9238348 -4.2576108 0 -1.5496429 
		-4.2576103 0 1.5496444 -2.2654266 0 3.9238358 0.78677571 0 4.4620209 3.4708371 0 
		2.9123766 4.5308542 -0.5 -1.110223e-016 3.4708357 -0.5 -2.9123771 0.7867744 -0.5 
		-4.4620204 -2.2654276 -0.5 -3.9238348 -4.2576108 -0.5 -1.5496429 -4.2576103 -0.5 
		1.5496444 -2.2654266 -0.5 3.9238358 0.78677571 -0.5 4.4620209 3.4708371 -0.5 2.9123766 
		4.5308542 -1 -2.220446e-016 3.4708357 -1 -2.9123771 0.7867744 -1 -4.4620204 -2.2654276 
		-1 -3.9238348 -4.2576108 -1 -1.5496429 -4.2576103 -1 1.5496444 -2.2654266 -1 3.9238358 
		0.78677571 -1 4.4620209 3.4708371 -1 2.9123766;
	setAttr -s 153 ".ed[0:152]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 8 1 8 0 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 16 1 16 17 1 17 9 1 
		18 19 1 19 20 1 20 21 1 21 22 1 
		22 23 1 23 24 1 24 25 1 25 26 1 
		26 18 1 28 29 1 29 30 1 30 31 1 
		31 32 1 32 33 1 33 34 1 34 35 1 
		35 36 1 36 28 1 37 38 1 38 39 1 
		39 40 1 40 41 1 41 42 1 42 43 1 
		43 44 1 44 45 1 45 37 1 46 47 1 
		47 48 1 48 49 1 49 50 1 50 51 1 
		51 52 1 52 53 1 53 54 1 54 46 1 
		55 56 1 56 57 1 57 58 1 58 59 1 
		59 60 1 60 61 1 61 62 1 62 63 1 
		63 55 1 64 65 1 65 66 1 66 67 1 
		67 68 1 68 69 1 69 70 1 70 71 1 
		71 72 1 72 64 1 0 9 0 1 10 0 
		2 11 0 3 12 0 4 13 0 5 14 0 
		6 15 0 7 16 0 8 17 0 9 18 0 
		10 19 0 11 20 0 12 21 0 13 22 0 
		14 23 0 15 24 0 16 25 0 17 26 0 
		18 27 0 19 27 0 20 27 0 21 27 0 
		22 27 0 23 27 0 24 27 0 25 27 0 
		26 27 0 27 28 1 27 29 1 27 30 1 
		27 31 1 27 32 1 27 33 1 27 34 1 
		27 35 1 27 36 1 28 37 0 29 38 0 
		30 39 0 31 40 0 32 41 0 33 42 0 
		34 43 0 35 44 0 36 45 0 37 46 0 
		38 47 0 39 48 0 40 49 0 41 50 0 
		42 51 0 43 52 0 44 53 0 45 54 0 
		46 55 0 47 56 0 48 57 0 49 58 0 
		50 59 0 51 60 0 52 61 0 53 62 0 
		54 63 0 55 64 0 56 65 0 57 66 0 
		58 67 0 59 68 0 60 69 0 61 70 0 
		62 71 0 63 72 0 64 0 1 65 1 1 
		66 2 1 67 3 1 68 4 1 69 5 1 
		70 6 1 71 7 1 72 8 1;
	setAttr -s 81 ".fc[0:80]" -type "polyFaces" 
		f 4 -1 72 9 -74 
		mu 0 4 0 1 2 3 
		f 4 -2 73 10 -75 
		mu 0 4 12 13 14 15 
		f 4 -3 74 11 -76 
		mu 0 4 18 12 15 19 
		f 4 -4 75 12 -77 
		mu 0 4 21 18 19 22 
		f 4 -5 76 13 -78 
		mu 0 4 24 25 26 27 
		f 4 -6 77 14 -79 
		mu 0 4 30 24 27 31 
		f 4 -7 78 15 -80 
		mu 0 4 33 34 35 36 
		f 4 -8 79 16 -81 
		mu 0 4 4 8 9 5 
		f 4 -9 80 17 -73 
		mu 0 4 1 4 5 2 
		f 4 -10 81 18 -83 
		mu 0 4 3 2 6 7 
		f 4 -11 82 19 -84 
		mu 0 4 15 14 16 17 
		f 4 -12 83 20 -85 
		mu 0 4 19 15 17 20 
		f 4 -13 84 21 -86 
		mu 0 4 22 19 20 23 
		f 4 -14 85 22 -87 
		mu 0 4 27 26 28 29 
		f 4 -15 86 23 -88 
		mu 0 4 31 27 29 32 
		f 4 -16 87 24 -89 
		mu 0 4 36 35 37 38 
		f 4 -17 88 25 -90 
		mu 0 4 5 9 11 10 
		f 4 -18 89 26 -82 
		mu 0 4 2 5 10 6 
		f 3 -19 90 -92 
		mu 0 3 39 40 41 
		f 3 -20 91 -93 
		mu 0 3 43 39 41 
		f 3 -21 92 -94 
		mu 0 3 45 43 41 
		f 3 -22 93 -95 
		mu 0 3 47 45 41 
		f 3 -23 94 -96 
		mu 0 3 48 47 41 
		f 3 -24 95 -97 
		mu 0 3 46 48 41 
		f 3 -25 96 -98 
		mu 0 3 44 46 41 
		f 3 -26 97 -99 
		mu 0 3 42 44 41 
		f 3 -27 98 -91 
		mu 0 3 40 42 41 
		f 3 99 27 -101 
		mu 0 3 49 50 51 
		f 3 100 28 -102 
		mu 0 3 49 51 53 
		f 3 101 29 -103 
		mu 0 3 49 53 55 
		f 3 102 30 -104 
		mu 0 3 49 55 57 
		f 3 103 31 -105 
		mu 0 3 49 57 58 
		f 3 104 32 -106 
		mu 0 3 49 58 56 
		f 3 105 33 -107 
		mu 0 3 49 56 54 
		f 3 106 34 -108 
		mu 0 3 49 54 52 
		f 3 107 35 -100 
		mu 0 3 49 52 50 
		f 4 -28 108 36 -110 
		mu 0 4 59 60 61 62 
		f 4 -29 109 37 -111 
		mu 0 4 79 80 81 82 
		f 4 -30 110 38 -112 
		mu 0 4 85 79 82 86 
		f 4 -31 111 39 -113 
		mu 0 4 90 85 86 91 
		f 4 -32 112 40 -114 
		mu 0 4 99 100 101 102 
		f 4 -33 113 41 -115 
		mu 0 4 105 99 102 106 
		f 4 -34 114 42 -116 
		mu 0 4 114 115 116 117 
		f 4 -35 115 43 -117 
		mu 0 4 63 67 68 64 
		f 4 -36 116 44 -109 
		mu 0 4 60 63 64 61 
		f 4 -37 117 45 -119 
		mu 0 4 62 61 65 66 
		f 4 -38 118 46 -120 
		mu 0 4 82 81 83 84 
		f 4 -39 119 47 -121 
		mu 0 4 86 82 84 89 
		f 4 -40 120 48 -122 
		mu 0 4 91 86 89 95 
		f 4 -41 121 49 -123 
		mu 0 4 102 101 103 104 
		f 4 -42 122 50 -124 
		mu 0 4 106 102 104 109 
		f 4 -43 123 51 -125 
		mu 0 4 117 116 118 119 
		f 4 -44 124 52 -126 
		mu 0 4 64 68 72 69 
		f 4 -45 125 53 -118 
		mu 0 4 61 64 69 65 
		f 4 -46 126 54 -128 
		mu 0 4 66 65 70 71 
		f 4 -47 127 55 -129 
		mu 0 4 84 83 87 88 
		f 4 -48 128 56 -130 
		mu 0 4 89 84 88 94 
		f 4 -49 129 57 -131 
		mu 0 4 95 89 94 97 
		f 4 -50 130 58 -132 
		mu 0 4 104 103 107 108 
		f 4 -51 131 59 -133 
		mu 0 4 109 104 108 112 
		f 4 -52 132 60 -134 
		mu 0 4 119 118 120 121 
		f 4 -53 133 61 -135 
		mu 0 4 69 72 76 73 
		f 4 -54 134 62 -127 
		mu 0 4 65 69 73 70 
		f 4 -55 135 63 -137 
		mu 0 4 71 70 74 75 
		f 4 -56 136 64 -138 
		mu 0 4 88 87 92 93 
		f 4 -57 137 65 -139 
		mu 0 4 94 88 93 96 
		f 4 -58 138 66 -140 
		mu 0 4 97 94 96 98 
		f 4 -59 139 67 -141 
		mu 0 4 108 107 110 111 
		f 4 -60 140 68 -142 
		mu 0 4 112 108 111 113 
		f 4 -61 141 69 -143 
		mu 0 4 121 120 122 123 
		f 4 -62 142 70 -144 
		mu 0 4 73 76 78 77 
		f 4 -63 143 71 -136 
		mu 0 4 70 73 77 74 
		f 4 -64 144 0 -146 
		mu 0 4 124 125 126 127 
		f 4 -65 145 1 -147 
		mu 0 4 130 124 127 131 
		f 4 -66 146 2 -148 
		mu 0 4 134 130 131 135 
		f 4 -67 147 3 -149 
		mu 0 4 138 134 135 139 
		f 4 -68 148 4 -150 
		mu 0 4 140 138 139 141 
		f 4 -69 149 5 -151 
		mu 0 4 136 140 141 137 
		f 4 -70 150 6 -152 
		mu 0 4 132 136 137 133 
		f 4 -71 151 7 -153 
		mu 0 4 128 132 133 129 
		f 4 -72 152 8 -145 
		mu 0 4 125 128 129 126 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "Well_Mat";
	setAttr ".c" -type "float3" 0.18569779 0.4509804 0.28516051 ;
	setAttr ".ic" -type "float3" 0.048279546 0.048279546 0.048279546 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Tymko/Documents/Tecca_HW3/Assets/Maya Imports/WellTexture.png";
	setAttr ".ft" 0;
createNode place2dTexture -n "place2dTexture1";
createNode blinn -n "Well_mat";
	setAttr ".dc" 0.56551724672317505;
	setAttr ".tcf" 0.71034485101699829;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Tymko/Documents/Tecca_HW3/Assets/Maya Imports/WellTexture.png";
createNode place2dTexture -n "place2dTexture2";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.68276495 0.68276495 0.68276495 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pPipeShape1_reference.msg" "pPipeShape1.rob";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Well_Mat.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Well_Mat.msg" "materialInfo1.m";
connectAttr "file1.oc" "blinn1.c";
connectAttr "file1.ot" "blinn1.it";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "Well_mat.c";
connectAttr "file2.ot" "Well_mat.it";
connectAttr "Well_mat.oc" "blinn2SG.ss";
connectAttr "pPipeShape1.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo3.sg";
connectAttr "Well_mat.msg" "materialInfo3.m";
connectAttr "file2.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "pPipeShape1_reference.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Well_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "Well_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
// End of Well.ma
