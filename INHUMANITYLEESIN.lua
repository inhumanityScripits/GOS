-- 1716978
-- Version 0.0.4
-- I love all users <3

require("Inspired")
require("IWalk")

AddInfo("Leesin", "Leesin")
AddButton("Q", "Use Q", true)
AddButton("W", "Use W", true)
AddButton("E", "Use E", true)
AddButton("R", "Use R", true)
AddButton("Gank","GankAlert",true)

OnLoop(function(myHero)
        IWalk()
	DrawText("INHUMANITY LEESIN",20,600,0,0XFFFFFFFF);

	if GetKeyValue("Combo") then
	local target = GetTarget(1000, DAMAGE_MAGIC)
	    if ValidTarget(target, 1000) then
		  local QPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),1800,250,925,70,true,true)
		        if GetButtonValue("Q") then
             if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
             CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
	           end
            end
			if GetButtonValue("Gank") then
--Enemie Count
		if EnemiesAround(myHeroPos, 5000) > 0 then
			local hero_origin = myHeroPos
			local myscreenpos = WorldToScreen(1,hero_origin.x,hero_origin.y,hero_origin.z)
			if myscreenpos.flag then
				if EnemiesAround(myHeroPos, 5000) < 3 then
				DrawText(string.format("ENEMIES = %s", EnemiesAround(myHeroPos, 5000)),24,myscreenpos.x-100,myscreenpos.y,0xff00ff00)

					else 
					DrawText(string.format("CAUTION GANK = %s", EnemiesAround(myHeroPos, 5000)),24,myscreenpos.x-100,myscreenpos.y,0xffff0000)
				end
			end
		end	
	end
		        if GetButtonValue("W") then
                 if CanUseSpell(myHero, _W) == READY and not IsInDistance(target, 150) and IsInDistance(target, 400) then
                 CastTargetSpell(myHero, _W)
		         end
		        end
			
		        if GetButtonValue("E") then
                 if CanUseSpell(myHero, _E) == READY and IsInDistance(target, 250) then
                 CastTargetSpell(myHero, _E)
		         end
                end
		  local RPred = GetPredictionForPlayer(GetMyHeroPos(),target,GetMoveSpeed(target),0,250,0,600,true,true)	
		          if GetButtonValue("R") then
	             if CanUseSpell(myHero, _R) == READY and RPred.HitChance == 1 then
               CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
	             end
              end
	    end
	end	
local myObjectsTable = {}
local wardRange = 600
local jumpDelay = 0
local lastJump = 0
local SWard, VWard, SStone, RSStone, Wriggles = 2044, 2043, 2049, 2045, 3154
local SWardSlot, VWardSlot, SStoneSlot, RSStoneSlot, WrigglesSlot = nil, nil, nil, nil, nil
local jumpReady = false
local jumpSlot = _W
local jumpRange = 700
local flashRange = 540
end)
