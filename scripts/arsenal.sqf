/*
	
	Description:
	Defines items that can be accessed in arsenal by players of specific classes
	
*/


switch (typeOf player) do {

	// Commander
	case "B_G_officer_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Beret_blk","Binocular","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","optic_MRCO","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo","optic_ACO_grn"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20_GL_plain_F","arifle_Mk20C_plain_F","SMG_05_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F","hgun_Pistol_heavy_02_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShell","SmokeShellYellow","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Medic
	case "B_G_medic_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","Medikit","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo", "G_Respirator_white_F", "G_Respirator_yellow_F"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","SMG_05_F","arifle_TRG20_F","arifle_TRG21_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Team Leader
	case "B_G_Soldier_TL_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","Binocular","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","optic_MRCO","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo","optic_ACO_grn"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20_GL_plain_F","arifle_Mk20C_plain_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F","hgun_Pistol_heavy_02_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShell","SmokeShellYellow","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Machinegunner
	case "B_G_Soldier_AR_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","bipod_01_F_blk","bipod_03_F_oli","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","LMG_03_F","LMG_Mk200_BI_F","LMG_Zafir_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// RPG Gunner
	case "B_G_Soldier_LAT_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","launch_MRAWS_olive_rail_F","launch_RPG7_F","arifle_TRG20_F","arifle_TRG21_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","MRAWS_HE_F","MRAWS_HEAT_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Saboteur
	case "B_G_Soldier_exp_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo","ToolKit"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_TRG20_F","arifle_TRG21_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder","APERSTripMine_Wire_Mag","ATMine_Range_Mag","IEDLandBig_Remote_Mag","IEDLandSmall_Remote_Mag", "SLAMDirectionalMine_Wire_Mag"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Rifleman
	case "B_G_Soldier_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["arifle_AK12_F","arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_TRG20_F","arifle_TRG21_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Mechanic
	case "B_G_engineer_F": {
		[
			MYT_arsenal,
			["H_Tank_black_F","G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","H_Cap_marshal","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","H_Cap_headphones","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo","H_Construction_earprot_black_F","Binocular","ToolKit"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_TRG20_F","arifle_TRG21_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","IEDLandBig_Remote_Mag","IEDLandSmall_Remote_Mag","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Scout
	case "B_G_Soldier_lite_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","Binocular","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo", "U_B_FullGhillie_sard", "U_B_FullGhillie_ard"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_Mk20_plain_F","arifle_Mk20_GL_plain_F","arifle_Mk20C_plain_F","arifle_TRG20_F","arifle_TRG21_F","arifle_TRG21_GL_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShell","SmokeShellYellow","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
	// Sharpshooter
	case "B_G_Sharpshooter_F": {
		[
			MYT_arsenal,
			["G_Balaclava_blk","G_Balaclava_oli","H_Bandanna_gry","H_Bandanna_cbr","G_Bandanna_khk","G_Bandanna_oli","H_Bandanna_sand","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","H_PASGT_basic_olive_F","H_Watchcap_blk","H_Watchcap_camo","H_Watchcap_khk","H_Beret_blk","Binocular","bipod_01_F_blk","bipod_03_F_oli","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","V_Chestrig_blk","V_Chestrig_khk","ItemCompass","FirstAidKit","acc_flashlight","acc_flashlight_smg_01","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla1_2_F","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","ItemMap","U_C_Mechanic_01_F","optic_MRCO","V_Pocketed_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","acc_flashlight_pistol","ItemRadio","V_TacVestIR_blk","H_Shemag_olive","H_ShemagOpen_tan","V_BandollierB_blk","V_BandollierB_khk","V_BandollierB_oli","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_khk","V_TacVest_oli","ItemWatch","V_Chestrig_oli","H_Bandanna_camo","optic_DMS","optic_KHS_old", "U_B_FullGhillie_sard", "U_B_FullGhillie_ard"],
			false,
			true
		] call BIS_fnc_addVirtualItemCargo;

		[
			MYT_arsenal,
			["B_AssaultPack_blk","B_AssaultPack_rgr","B_AssaultPack_khk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F"],
			false,
			true
		] call BIS_fnc_addVirtualBackpackCargo;

		[
			MYT_arsenal,
			["hgun_ACPC2_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_EBR_F","srifle_DMR_01_F"],
			false,
			true
		] call BIS_fnc_addVirtualWeaponCargo;

		[
			MYT_arsenal,
			["20Rnd_762x51_Mag","9Rnd_45ACP_Mag","200Rnd_65x39_cased_Box","1Rnd_HE_Grenade_shell","HandGrenade","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_Red_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_Tracer_Green","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_Green_F","10Rnd_762x54_Mag","30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02_Tracer_Green","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareWhite_F","UGL_FlareYellow_F","RPG7_F","RPG32_HE_F","RPG32_F","SmokeShellBlue","SmokeShell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","6Rnd_45ACP_Cylinder"],
			false,
			true
		] call BIS_fnc_addVirtualMagazineCargo;
	};
	
};