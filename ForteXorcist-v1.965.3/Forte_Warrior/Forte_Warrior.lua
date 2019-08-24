-- ForteXorcist v1.965.3 by Xus 05-10-2010 for 3.3.5 & 4.0.1

if FW.CLASS == "WARRIOR" then
	local FW = FW;
	local FWL = FW.L;
	local WR = FW:ClassModule("Warrior");
	
	local CA = FW.Modules.Casting;
	local ST = FW.Modules.Timer;
	local CD = FW.Modules.Cooldown;
	
	if ST then
	
		-- istype: ST.DEFAULT ST.SHARED ST.UNIQUE ST.PET ST.CHARM ST.COOLDOWN ST.HEAL ST.BUFF
		--spell, hastarget, duration, isdot, istype, reducedinpvp, texture, stack
		
		ST:RegisterSpell(7386,	1,030,0,ST.DEFAULT,000,nil,5); -- Sunder Armor
		ST:RegisterSpell(355,	1,003,0,ST.UNIQUE); -- Taunt
		ST:RegisterSpell(694,	1,006,0,ST.UNIQUE); -- Mocking Blow
		ST:RegisterSpell(676,	1,010,0,ST.UNIQUE); -- Disarm
		ST:RegisterSpell(12294,	1,010,0,ST.DEFAULT); -- Mortal Strike
		ST:RegisterSpell(12834,	1,006,1,ST.DEFAULT); -- Deep Wounds
			ST:RegisterTickSpeed(12834, 1); -- set tick speed to 1 instead of 3
		ST:RegisterSpell(772,	1,015,1,ST.DEFAULT); -- Rend
			ST:RegisterSpellModGlph(772, 58399,	1, 6);
		ST:RegisterSpell(1715,	1,015,0,ST.DEFAULT); -- Hamstring
		ST:RegisterSpell(1160,	0,030,0,ST.UNIQUE); -- Demoralizing Shout   
		ST:RegisterSpell(5246,	0,008,0,ST.UNIQUE); -- Intimidating Shout
		ST:RegisterSpell(6343,	0,030,0,ST.UNIQUE); -- Thunder Clap
			 ST:RegisterSpellModRank(6343,	1, -20); 
			 ST:RegisterSpellModRank(6343,	2, -16); 
			 ST:RegisterSpellModRank(6343,	3, -12); 
			 ST:RegisterSpellModRank(6343,	4, -8);
			 ST:RegisterSpellModRank(6343,	5, -4);
		ST:RegisterSpell(12323,	0,006,0,ST.UNIQUE); -- Piercing Howl	 
		
		ST:RegisterSpell(50720,	1,1800,0,ST.BUFF); -- Vigilance

		--buffname,duration
		ST:RegisterBuff(29131); -- Bloodrage
		ST:RegisterBuff(469); -- Commanding Shout
		ST:RegisterBuff(12880); -- Enrage
		ST:RegisterBuff(29801); -- Rampage
		ST:RegisterBuff(12328); -- Sweeping Strikes
		ST:RegisterBuff(12292);	-- Death Wish
		
		ST:RegisterBuff(6673); -- Battle Shout
		ST:RegisterBuff(18499); -- Berserker Rage
		ST:RegisterBuff(1719); -- Recklessness
		
		ST:RegisterBuff(56636); -- Taste for Blood
	
		-- Slam!
		ST:RegisterBuff(46916);	
		
		--debuffs
		ST:RegisterDebuff(58567); -- Sunder Armor
		ST:RegisterDebuff(12294); -- Mortal Strike
		ST:RegisterDebuff(1715); -- Hamstring
		ST:RegisterDebuff(6343); -- Thunder Clap
		ST:RegisterDebuff(1160); -- Demoralizing Shout    
		ST:RegisterDebuff(20511); -- Intimidating Shout
		ST:RegisterDebuff(12323); -- Piercing Howl
		
		ST:RegisterMeleeBuffs();
	end
	if CD then
		CD:RegisterCooldownBuff(6673); -- Battle Shout
		CD:RegisterHiddenCooldown(nil,60503,6); -- Taste for Blood
		CD:RegisterMeleePowerupCooldowns();
	end
end
