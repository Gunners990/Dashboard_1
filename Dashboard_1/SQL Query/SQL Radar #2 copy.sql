SELECT 
possession.Player, 
possession.Pos, 
possession.TakeOns_Att, 
possession.TakeOns_Succ, 
possession.Carries_PrgC, 
possession.Carries_into_finalthird, 
possession.Carries_into_PA, 
gscreation.SCA,
gscreation.SCA90, 
gscreation.SCA _TakeOn
FROM possession 
LEFT JOIN gscreation 
ON possession.Player_ID = gscreation.Player_ID;
