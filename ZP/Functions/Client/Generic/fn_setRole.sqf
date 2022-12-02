/*
    Author - R00x
    © All Fucks Reserved
    Website - http://zagreusplatoon.com/
*/

params["_role"];

//Music
private _Music_NCO = ["ItemcTab","tfw_rf3080Item"];
private _Music_Medic = ["Medikit","ACE_surgicalKit","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_personalAidKit","ACE_salineIV_500","ACE_salineIV_250","ACE_salineIV","kat_aatKit","kat_accuvac","kat_X_AED","kat_crossPanel","kat_bloodIV_O","kat_bloodIV_O_250","kat_bloodIV_O_500","kat_chestSeal","kat_AED","adv_aceCPR_AED","ACE_bloodIV","kat_bloodIV_A","kat_bloodIV_AB","kat_bloodIV_B","ACE_bloodIV_250","kat_bloodIV_A_250","kat_bloodIV_AB_250","kat_bloodIV_B_250","ACE_bloodIV_500","kat_bloodIV_A_500","kat_bloodIV_AB_500","kat_bloodIV_B_500","kat_guedel","kat_larynx","kat_Pulseoximeter"];
private _Music_Sniper = ["ACE_Tripod","ACE_RangeCard","ACE_SpottingScope","ACE_Kestrel4500"];
private _Music_gerenidere = ["ACE_HuntIR_monitor"]; 
private _Music_Enginere = ["ACE_DefusalKit","ToolKit","MineDetector","ACE_Clacker"];

//Vests
private _NCO_Vests = ["rhsusf_plateframe_teamleader"];
private _Medic_Vest = ["rhsusf_plateframe_medic","rhsusf_mbav_medic"];
private _Marksman_vest = ["rhsusf_plateframe_marksman"];
private _MG_vest = ["rhsusf_plateframe_machinegunner","rhsusf_mbav_mg"];
private _Navy_Vest = ["V_RebreatherB"];
private _Gren_Vest = ["rhsusf_plateframe_grenadier","rhsusf_mbav_grenadier"];

//Primerys
private _MG = ["rhs_weap_m249_pip","rhs_weap_m249"];
private _AT = ["rhs_weap_M136","rhs_weap_M136_hedp","rhs_weap_M136_hp","rhs_weap_maaws","rhs_weap_fim92"];
private _Siper = ["FM_L115A3_Desert","FM_L115A3_NoSpray","FM_L115A3_Woodland","rhs_weap_m14ebrri"];
private _Engier = ["rhsusf_m112_mag","rhsusf_m112x4_mag","DemoCharge_Remote_Mag","ATMine_Range_Mag"];
private _Rifleman = ["rhs_weap_mk18","rhs_weap_mk18_bk","rhs_weap_mk18_KAC_bk","rhs_weap_mk18_d","rhs_weap_mk18_KAC_d","rhs_weap_mk18_KAC","rhs_weap_mk18_KAC_wd","ws_mk18_a","ws_mk18_b","ws_mk18_c","ws_mk18_d","rhs_weap_mk18_wd"];
private _Greneder = ["rhs_weap_mk18_m320"];

//Bakcpacks
private _NCO_Backpacks = ["tfw_ilbe_blade_arid","tfw_ilbe_blade_black","tfw_ilbe_blade_coy","tfw_ilbe_blade_gr","tfw_ilbe_blade_d","tfw_ilbe_blade_wd","tfw_ilbe_blade_mct","tfw_ilbe_blade_mc","tfw_ilbe_blade_ocp","tfw_ilbe_blade_wd2","tfw_ilbe_DD_alpine","tfw_ilbe_DD_arid","tfw_ilbe_DD_black","tfw_ilbe_DD_coy","tfw_ilbe_DD_gr","tfw_ilbe_DD_d","tfw_ilbe_DD_wd","tfw_ilbe_DD_mct","tfw_ilbe_DD_mc","tfw_ilbe_DD_ocp","tfw_ilbe_DD_wd2","tfw_ilbe_whip_arid","tfw_ilbe_whip_black","tfw_ilbe_whip_coy","tfw_ilbe_whip_gr","tfw_ilbe_whip_d","tfw_ilbe_whip_wd","tfw_ilbe_whip_mct","tfw_ilbe_whip_mc","tfw_ilbe_whip_ocp","tfw_ilbe_whip_wd2"];

//Helmits
private _Pilot_Helmit = ["rhsusf_hgu56p_black","rhsusf_hgu56p_mask_black","rhsusf_hgu56p_mask_black_skull","rhsusf_hgu56p_visor_black","rhsusf_hgu56p_visor_mask_black","rhsusf_hgu56p_visor_mask_Empire_black","rhsusf_hgu56p_visor_mask_black_skull","rhsusf_hgu56p_visor_mask_smiley","RHS_jetpilot_usaf","rhsusf_hgu56p","rhsusf_hgu56p_mask","rhsusf_hgu56p_mask_mo","rhsusf_hgu56p_mask_skull","rhsusf_hgu56p_visor","rhsusf_hgu56p_visor_mask","rhsusf_hgu56p_visor_mask_mo","rhsusf_hgu56p_visor_mask_skull"];
private _Crew_Helmit = ["rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess","rhsusf_cvc_helmet","rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
private _Rifleman_Helmit = ["rhsusf_opscore_bk_pelt","rhsusf_opscore_fg","rhsusf_opscore_paint_pelt","rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_rg_cover_pelt","rhsusf_opscore_ut_pelt_nsw_cam","rhsusf_protech_helmet_ess","rhsusf_opscore_ut_pelt_cam","rhsusf_mich_bare_norotos_arc_alt_semi","rhsusf_mich_bare_norotos_arc_alt_tan_headset","rhsusf_mich_bare_norotos_arc_tan","rhsusf_opscore_mc_pelt","rhsusf_mich_bare_norotos_arc_alt_tan","rhsusf_opscore_fg_pelt"];

private _Navy_uniform = ["HAFM_NAVY_Uniform_BLU","U_B_Wetsuit"];
private _sinper_uniform = ["U_B_FullGhillie_ard","U_B_T_FullGhillie_tna_F","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_GhillieSuit"];
private _pilot_uniform = ["U_B_HeliPilotCoveralls","U_B_PilotCoveralls"];

//Everyone
private _Medical = ["ACE_fieldDressing","ACE_packingBandage","ACE_morphine","ACE_tourniquet","ACE_epinephrine","ACE_elasticBandage","ACE_quikclot","ACE_adenosine","ACE_splint","ACE_bodyBag"];
private _Uniforms = ["LOP_U_PMC_tac_tacky","LOP_U_PMC_Fatigue_01","LOP_U_PMC_tac_red_hi","LOP_U_PMC_Fatigue_03","LOP_U_PMC_tac_prp_palm","LOP_U_PMC_tac_blue_plaid","LOP_U_PMC_tac_blue_hi","LOP_U_PMC_tac_red_plaid","LOP_U_PMC_tac_grn_plaid","LOP_U_PMC_tac_grn_palm","VSM_Multicam_Crye_Camo"];
private _Music = ["ACE_EarPlugs","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_MapTools","ACE_Flashlight_XL50","ACE_microDAGR","ACE_SpraypaintRed","ACE_CableTie","ItemAndroid","ItemcTabHCam","ItemMicroDAGR","AMP_Door_Wedge","ACE_wirecutter","AFND_Item_BoardingLadder","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen"];
private _Helmit = ["H_Hebontes_Beret07_AAF","H_Hebontes_Beret08_AAF","H_Hebontes_Beret03_AAF"];
private _Vest = ["rhsusf_plateframe_light","rhsusf_mbav_light","rhsusf_mbav_rifleman","rhsusf_plateframe_rifleman","rhsusf_plateframe_sapi","rhsusf_mbav"];
private _Backpacks = ["rhsusf_assault_eagleaiii_coy","B_rhsusf_B_BACKPACK","rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp","VSM_ProjectHonor_Backpack_Kitbag","VSM_ProjectHonor_Backpack_Compact","VSM_ProjectHonor_carryall","VSM_OGA_OD_Backpack_Kitbag","VSM_OGA_Backpack_Kitbag","VSM_OGA_OD_Backpack_Compact","VSM_OGA_Backpack_Compact","VSM_OGA_OD_carryall","VSM_OGA_carryall","VSM_OCP_Backpack_Kitbag","VSM_OCP_Backpack_Compact","VSM_OCP_carryall","VSM_MulticamTropic_Backpack_Kitbag","VSM_MulticamTropic_Backpack_Compact","VSM_MulticamTropic_carryall","VSM_Multicam_Backpack_Kitbag","VSM_Multicam_Backpack_Compact","VSM_Multicam_carryall","DTS_Backpack_kitbag","DTS_Backpack_Compact","DTS_Carryall"];
private _Facewhere = ["rhs_googles_black","rhsusf_shemagh2_grn","rhsusf_shemagh_white","G_Bandanna_tan","rhs_googles_yellow","rhsusf_shemagh2_od","G_Aviator","VSM_balaclava_Black_Skull","VSM_balaclava_Black","VSM_balaclava_olive_Skull","VSM_balaclava_olive","VSM_balaclava_TAN_Skull","VSM_balaclava_tan","VSM_Balaclava_black_Goggles","VSM_Balaclava_OD_Goggles","VSM_Balaclava_tan_Goggles","VSM_FaceMask_black","VSM_FaceMask_Ghost","VSM_FaceMask_Ghost_olive","VSM_FaceMask_Ghost_tan","VSM_FaceMask_olive","VSM_FaceMask_tan","VSM_Shemagh_OD","VSM_Shemagh_tan","ST11_Glasses_2","ST11_Oakley","ST11_Glasses_1","JSHK_contam_mask_m04_hoodless","JSHK_contam_mask_m50_hoodless"];
private _Sidearms = ["rhsusf_weap_glock17g4","rhsusf_weap_m1911a1","rhsusf_weap_m9"];
private _Lazers = ["rhsusf_acc_anpeq15","rhsusf_acc_anpeq15side","rhsusf_acc_wmx","rhsusf_acc_wmx_bk","rhsusf_acc_M952V","rhsusf_acc_anpeq15A","rhsusf_acc_anpeq15_light","rhsusf_acc_anpeq15_top","rhsusf_acc_anpeq15_bk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_anpeq15_bk_top","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_wmx","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_anpeq16a","rhsusf_acc_anpeq16a_light","rhsusf_acc_anpeq16a_top","rhsusf_acc_anpeq16a_light_top","acc_flashlight","acc_pointer_IR","KA_ANPEQ15_Black_IR","KA_ANPEQ15_Tan_IR","ACE_acc_pointer_green","Simrad_KN202","rhs_acc_at4_handler","acc_flashlight_pistol"];
private _bypods = ["rhsusf_acc_harris_bipod","rhsusf_acc_saw_bipod","rhs_acc_harris_swivel","bipod_01_F_snd","bipod_01_F_blk","bipod_01_F_mtp","bipod_02_F_blk","bipod_02_F_tan","bipod_02_F_hex","bipod_03_F_blk","bipod_03_F_oli","bipod_01_F_khk","bipod_02_F_arid","bipod_02_F_lush","kio_H_Bipod","rhs_acc_grip_rk2","rhs_acc_grip_rk6","rhs_acc_grip_ffg2","rhsusf_acc_grip1","rhsusf_acc_grip2","rhsusf_acc_grip2_tan","rhsusf_acc_grip2_wd","rhsusf_acc_grip3","rhsusf_acc_grip3_tan","rhsusf_acc_kac_grip","rhsusf_acc_rvg_blk","rhsusf_acc_rvg_de","rhsusf_acc_tacsac_blk","rhsusf_acc_tacsac_tan","rhsusf_acc_tacsac_blue","rhsusf_acc_tdstubby_blk","rhsusf_acc_tdstubby_tan"];
private _grenades = ["rhs_mag_an_m8hc","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_IR","B_IR_Grenade","ACE_HandFlare_Red","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","rhs_mag_m67","HandGrenade","SmokeShell"];
private _NVG = ["JAS_GPNVG18_Tan","JAS_GPNVG18_blk"];
private _bynoculers = ["rhsusf_bino_lerca_1200_black","rhsusf_bino_lerca_1200_tan"];
private _map = ["ItemMap"];
private _terminals = ["ItemGPS"];
private _Radio = ["TFAR_anprc152"];
private _navigation = ["ItemCompass"];
private _watch = ["ACE_Altimeter","Itemwatch"];
private _Ammo = ["rhs_mag_30Rnd_556x45_M855_PMAG","immersion_pops_poppack","murshun_cigs_cigpack","murshun_cigs_lighter","rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red","rhsusf_20Rnd_762x51_SR25_m118_special_Mag","rhs_mag_maaws_HEAT","rhs_mag_M441_HE","rhsusf_100Rnd_556x45_soft_pouch","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk262_Stanag","rhs_mag_30Rnd_556x45_M193_Stanag","rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M200_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","rhs_mag_20Rnd_556x45_M193_Stanag","rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red","rhs_mag_20Rnd_556x45_M200_Stanag","rhs_mag_20Rnd_556x45_M855_Stanag","rhs_mag_20Rnd_556x45_M855A1_Stanag","rhs_mag_20Rnd_556x45_Mk262_Stanag","rhs_mag_20Rnd_556x45_M193_2MAG_Stanag","rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855_Stanag_Pull","rhs_mag_30Rnd_556x45_M855_Stanag_Ranger","rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red","rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull","rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger","rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red","rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull","rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger","rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull","rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger","rhs_mag_30Rnd_556x45_M855A1_EPM","rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_EPM_Pull","rhs_mag_30Rnd_556x45_M855A1_EPM_Pull_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger","rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red","rhs_mag_30Rnd_556x45_Mk318_SCAR","rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull","rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red","rhs_mag_30Rnd_556x45_Mk318_PMAG","rhs_mag_30Rnd_556x45_Mk262_PMAG","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red","rhs_mag_30Rnd_556x45_M855_PMAG_Tan","rhs_mag_30Rnd_556x45_M855_PMAG_Tan_Tracer_Red","rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan","rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan","ace_30rnd_556x45_stanag_m995_ap_mag","ace_30rnd_556x45_stanag_mk262_mag","ace_30rnd_556x45_stanag_mk318_mag","ace_30rnd_556x45_stanag_tracer_dim","rhs_mag_M433_HEDP","rhs_mag_M397_HET","rhs_mag_m4009","rhs_mag_m576","rhs_mag_M585_white","rhs_mag_m661_green","rhs_mag_m662_red","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","rhs_mag_M781_Practice","ACE_40mm_Flare_white","ACE_40mm_Flare_red","ACE_40mm_Flare_green","ACE_40mm_Flare_ir","ACE_HuntIR_M203","FM_L115A3_Magazine","FM_L115A3_Blank_Magazine","rhsusf_200Rnd_556x45_box","rhsusf_200rnd_556x45_mixed_box","rhsusf_200rnd_556x45_M855_box","rhsusf_200rnd_556x45_M855_mixed_box","200Rnd_556x45_Box_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_F","200Rnd_556x45_Box_Tracer_Red_F","rhsusf_200Rnd_556x45_soft_pouch","rhsusf_200Rnd_556x45_mixed_soft_pouch","rhsusf_200Rnd_556x45_soft_pouch_ucp","rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp","rhsusf_200Rnd_556x45_soft_pouch_coyote","rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote","rhsusf_200Rnd_556x45_M855_soft_pouch","rhsusf_200Rnd_556x45_M855_mixed_soft_pouch","rhsusf_200Rnd_556x45_M855_soft_pouch_ucp","rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_ucp","rhsusf_200Rnd_556x45_M855_soft_pouch_coyote","rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote","rhsusf_100Rnd_556x45_mixed_soft_pouch","rhsusf_100Rnd_556x45_soft_pouch_ucp","rhsusf_100Rnd_556x45_mixed_soft_pouch_ucp","rhsusf_100Rnd_556x45_soft_pouch_coyote","rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote","rhsusf_100Rnd_556x45_M855_soft_pouch","rhsusf_100Rnd_556x45_M855_mixed_soft_pouch","rhsusf_100Rnd_556x45_M855_soft_pouch_ucp","rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_ucp","rhsusf_100Rnd_556x45_M855_soft_pouch_coyote","rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote","rhsusf_100Rnd_556x45_M995_soft_pouch","rhsusf_100Rnd_556x45_M995_soft_pouch_ucp","rhsusf_100Rnd_556x45_M995_soft_pouch_coyote","rhsusf_100Rnd_556x45_M200_soft_pouch","rhsusf_100Rnd_556x45_M200_soft_pouch_ucp","rhsusf_100Rnd_556x45_M200_soft_pouch_coyote","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m993_Mag","rhsusf_20Rnd_762x51_m62_Mag","20Rnd_762x51_Mag","10Rnd_Mk14_762x51_Mag","rhsusf_20Rnd_762x51_m80_Mag","ace_20rnd_762x51_mag_tracer","ace_20rnd_762x51_mag_tracer_dim","ace_20rnd_762x51_mag_sd","ace_10rnd_762x51_m118lr_mag","ace_10rnd_762x51_mk316_mod_0_mag","ace_10rnd_762x51_mk319_mod_0_mag","ace_10rnd_762x51_m993_ap_mag","ace_20rnd_762x51_m118lr_mag","ace_20rnd_762x51_mk316_mod_0_mag","ace_20rnd_762x51_mk319_mod_0_mag","ace_20rnd_762x51_m993_ap_mag","rhs_mag_maaws_HEDP","rhs_mag_maaws_HE","MRAWS_HEAT_F","MRAWS_HE_F","rhs_fim92_mag","Titan_AA","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_FMJ","rhsusf_mag_7x45acp_MHP","9Rnd_45ACP_Mag","rhsusf_mag_15Rnd_9x19_JHP","rhsusf_mag_15Rnd_9x19_FMJ","Laserbatteries","rhs_LaserMag"];
private _everyone = _Medical + _Uniforms + _Ammo + _watch + _navigation + _Radio + _terminals + _map + _bynoculers + _NVG + _grenades + _bypods + _Lazers + _Sidearms + _Facewhere + _Backpacks + _Vest + _Helmit + _Music + _Backpacks;

[player, _everyone, false] call ace_arsenal_fnc_addVirtualItems;

if ((_role find "1") != -1) then {_nco = _Music_NCO + _NCO_Vests;[player, _nco, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "2") != -1) then {_med = _Music_Medic + _Medic_Vest;[player, _med, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "3") != -1) then {_snp = _Music_Sniper + _Marksman_vest + _Siper + _sinper_uniform;[player, _snp, false] call ace_arsenal_fnc_addVirtualItems;[player, _Uniforms, false] call ace_arsenal_fnc_removeVirtualItems;};
if ((_role find "4") != -1) then {_rfl = _Rifleman + _Rifleman_Helmit;[player, _rfl, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "5") != -1) then {_plt = _Pilot_Helmit + _pilot_uniform;[player, _plt, false] call ace_arsenal_fnc_addVirtualItems;[player, _Uniforms, false] call ace_arsenal_fnc_removeVirtualItems;};
if ((_role find "6") != -1) then {_crw = _Crew_Helmit;[player, _crw, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "7") != -1) then {_grn = _Music_gerenidere + _Gren_Vest + _Greneder;[player, _grn, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "8") != -1) then {_nco = _Music_Enginere + _Engier;[player, _nco, false] call ace_arsenal_fnc_addVirtualItems;};
if ((_role find "9") != -1) then {_nco = _Navy_Vest + _Navy_uniform;[player, _nco, false] call ace_arsenal_fnc_addVirtualItems;[player, _Uniforms, false] call ace_arsenal_fnc_removeVirtualItems;};

if ((_role find "8") != -1) then {player setVariable ["ACE_IsEngineer",2,true];[player] call ace_common_fnc_isEOD};
if ((_role find "2") != -1) then {player setVariable ["ace_medical_medicclass", 2, true]};


//1NCO, 2Medic, 3Sniper, 4Rifleman, 5Piolt, 6Crew, 7Grenidere, 8Enginere, 9Navy
//1,2,3,4,5,6,7,8,9
//[player, player, false] call ace_arsenal_fnc_openBox;
["Roles set", "success"] call ZP_fnc_notification_system;

true;
