
N��������Prism - 6-Sided HalfR)
StaticMeshAssetRefsm_half_hexagon_001
�
�����䯲�#Grenade Explosion Projectile Impactb�

�
 ��������1*���������1#Grenade Explosion Projectile Impact"  �?  �?  �?(�����B2	ƃ��޺��2Z e  �@pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ƃ��޺��2Client Context"
    �?  �?  �?(��������12��앿���s����ο��٨�վ���XZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���앿���sSmoke Puff VFX"
    �?  �?  �?(ƃ��޺��2ZH
!
bp:color�  �?  �?  �?%  �?
#
bp:Particle Scale Multipliere  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������� �*�����ο��Basic Explosion VFX"
    �?  �?  �?(ƃ��޺��2Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������� �*�٨�վ���X,Explosion Creation & Construction Kit 01 SFX"
    �?  �?  �?(ƃ��޺��2Z�
/
bp:Explosion Type 1�
mc:esfx_explosions:13
/
bp:Explosion Type 2�
mc:esfx_explosions:16
@
bp:Sweetener Impact Type 1�!
mc:esfx_explosions_sw_impact:18
@
bp:Sweetener Impact Type 2�!
mc:esfx_explosions_sw_impact:15
8
bp:Sweetener Sub Type�
mc:esfx_explosions_sw_sub:12z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

�����՚�`�5  �?= `jFE  �CXx�
NoneNone
{�����՚�`,Explosion Creation & Construction Kit 01 SFX
R?
AudioBlueprintAssetRef%sfxabp_explosion_construction_kit_ref
J���������Basic Explosion VFXR&
VfxBlueprintAssetReffxbp_explosion
F���������Smoke Puff VFXR'
VfxBlueprintAssetReffxbp_smoke_puff
]����볻�Sci-Fi Base Floor 02 4mR5
StaticMeshAssetRefsm_ts_scf_base_floor_002_4m_ref
UЊ�������Sci-fi Base Door 02R1
StaticMeshAssetRefsm_ts_scf_base_door_002_ref
N���ʙ����Trash Can - Urban 01R)
StaticMeshAssetRefsm_trash_public_001
Uגש��Modern Weapon - Grip 03R-
StaticMeshAssetRefsm_weap_modern_grip_003
�
�ϬŴ��&Urban Pipe Wall Attachment - 02 (Prop)b�

�	 ������*�������&Urban Pipe Wall Attachment - 02 (Prop)"  �?  �?  �?(�����B20��������a�����ά�D���耙��������ӥ���񢣦����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������aUrban Pipe Flange 01"
 n�? ��  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *������ά�DUrban Pipe Elbow 01".

��,�   ��.e7���B����  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����耙���Urban Pipe Cap 03".

��@�   �  ����!< �!�  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�̯���08�
 *������ӥ��Urban Pipe Straight")

$#�   �
  ��'ar8  �?  �?   @(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *��񢣦����Urban Pipe Wrap 01".

  ��   �/N�����B����  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�؞������08�
 :
TemplateAssetRef&Urban_Pipe_Wall_Attachment_-_02__Prop_
c�؞������Urban Pipe Coupling 05R<
StaticMeshAssetRef&sm_prop_urb_pipes_acc_coupling_005_ref
\��������Urban Pipe StraightR8
StaticMeshAssetRef"sm_prop_urb_pipes_straight_001_ref
Y�̯���Urban Pipe Cap 03R7
StaticMeshAssetRef!sm_prop_urb_pipes_acc_cap_003_ref
X�������JUrban Pipe Elbow 01R5
StaticMeshAssetRefsm_prop_urb_pipes_elbow_001_ref
_�����§��Urban Pipe Flange 01R:
StaticMeshAssetRef$sm_prop_urb_pipes_acc_flange_001_ref
���ф�����TeamKillScoreServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties --
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local SCORE_PER_KILL = COMPONENT_ROOT:GetCustomProperty("ScorePerKill")

-- nil OnPlayerDied(Player, Damage)
-- Increases team score if the team killed an enemy
function OnPlayerDied(player, damage)
    if Object.IsValid(damage.sourcePlayer) then
        local teamScored = damage.sourcePlayer.team
        Game.IncreaseTeamScore(teamScored, SCORE_PER_KILL)
    end
end

-- nil OnPlayerJoined(Player)
-- Register the diedEvent when a player joins
function OnPlayerJoined(player)
    player.diedEvent:Connect(OnPlayerDied)
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)

R���������4Custom Secondary Trim from Sci-fi Base Floor 02 4m_1���������U 
J��������U
Metal GreyR0
MaterialAssetRefmi_ts_scf_base_metal_003_ref
NȽ�������Fantasy Pommel 02R,
StaticMeshAssetRefsm_weap_fan_pommel_002
���������	Kill Feedb�
� ���®���)*����®���)	Kill Feed"  �?  �?  �?(��������2��˩��Ŷ;�������nZ�

cs:ShowJoinAndLeaveP

cs:ShowEquipmentNameP

cs:NumLinesX

cs:LineDuratione  �@
%
cs:TextColor�  �?  �?  �?%  �?
)
cs:SelfTextColor���t?z�>k>)<%  �?
X
cs:ShowJoinAndLeave:tooltipj9Prints a line each time a player joins or leaves the game
1
cs:NumLines:tooltipjNumber of lines to display
.
cs:TextColor:tooltipjText color of messages
J
cs:SelfTextColor:tooltipj.Color for events that involve the local player
8
cs:LineDuration:tooltipjHow long to display each linez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���˩��Ŷ;KillFeedControllerServer"
    �?  �?  �?(���®���)Z!

cs:ComponentRoot�
���®���)z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������*��������nClientContext"
    �?  �?  �?(���®���)2��֚����)��ɥ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���֚����)KillFeedControllerClient"
    �?  �?  �?(�������nZj

cs:ComponentRoot�
���®���)

cs:KillFeedPanel�
��ũ���)
&
cs:KillFeedLineTemplate�
���靈��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����Ϲ��*���ɥ����Canvas"
    �?  �?  �?(�������n2	��ũ���)Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*���ũ���)KillFeedPanel"
    �?  �?  �?(��ɥ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�k��%  ��-  pB:

mc:euianchor:middlecenter� �6


mc:euianchor:topright

mc:euianchor:topright
NoneNone
����靈��Helper_KillFeedLineb�
� �����ʍ��*������ʍ��Helper_KillFeedLine"  �?  �?  �?(�����۬ǯZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,:

mc:euianchor:middlecenter�@
Killfeed Line  �?  �?  �?%  �?"
mc:etextjustify:right�6


mc:euianchor:topright

mc:euianchor:topright
NoneNone
�&����Ϲ��KillFeedControllerClientZ�%�%--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local KILL_FEED_PANEL = script:GetCustomProperty("KillFeedPanel"):WaitForObject()
local KILL_FEED_LINE_TEMPLATE = script:GetCustomProperty("KillFeedLineTemplate")

-- User exposed properties
local SHOW_JOIN_AND_LEAVE = COMPONENT_ROOT:GetCustomProperty("ShowJoinAndLeave")
local NUM_LINES = COMPONENT_ROOT:GetCustomProperty("NumLines")
local LINE_DURATION = COMPONENT_ROOT:GetCustomProperty("LineDuration")
local TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("TextColor")
local SELF_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("SelfTextColor")

-- Check user properties
if NUM_LINES < 1 then
    warn("NumLines must be positive")
    NUM_LINES = 1
end

if LINE_DURATION < 0.0 then
    warn("LineDuration must be positive")
    LINE_DURATION = 5.0
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local FADE_DURATION = 0.6
local VERTICAL_SPACING = 0

-- After connecting, we hide join messages for a short time, so we don't see messages for everyone already in the game
local JOIN_MESSAGE_START = time() + 1.0

-- Variables
local lineTemplates = {}
local lines = {}				-- Each line is a table with: text, color, displayTime

-- nil AddLine(string, Color)
-- Adds a line to the killfeed
function AddLine(line, color)
	for i = NUM_LINES, 2, -1 do
		lines[i] = lines[i - 1]
	end

	lines[1] = {}
	lines[1].text = line
	lines[1].color = color
	lines[1].displayTime = time()
end

-- nil OnPlayerJoined(Player)
-- if ShowJoinAndLeave, add a message for a player joining the game
function OnPlayerJoined(player)
	if time() > JOIN_MESSAGE_START then
		AddLine(string.format("%s joined the game", player.name), TEXT_COLOR)
	end
end

-- nil OnPlayerLeft(Player)
-- if ShowJoinAndLeave, add a message for a player leaving the game
function OnPlayerLeft(player)
	AddLine(string.format("%s left the game", player.name), TEXT_COLOR)
end

-- nil OnKill(string, string, <string>)
-- Catches the event from the server and adds a line
function OnKill(killerPlayer, killedPlayer, sourceObjectId)
	local lineColor = TEXT_COLOR
	local sourceObject = nil

	if sourceObjectId then
		sourceObject = World.FindObjectById(sourceObjectId)
	end

	if killerPlayer == LOCAL_PLAYER or killedPlayer == LOCAL_PLAYER then
		lineColor = SELF_TEXT_COLOR
	end

	if not killerPlayer then
		AddLine(string.format("%s died", killedPlayer.name), lineColor)
	elseif sourceObject then
		AddLine(string.format("%s killed %s with %s", killerPlayer.name, killedPlayer.name, sourceObject.name), lineColor)
	else
		AddLine(string.format("%s killed %s", killerPlayer.name, killedPlayer.name), lineColor)
	end
end

-- nil Tick(float)
-- Update the line templates to match current data, and update fading
function Tick(deltaTime)
	for i = 1, NUM_LINES do
		if lines[i] then
			local age = time() - lines[i].displayTime
			local color = lines[i].color

			-- Full opacity until LINE_DURATION, then lerp to invisible over FADE_DURATION
			color.a = CoreMath.Clamp(1.0 - (age - LINE_DURATION) / FADE_DURATION, 0.0, 1.0)

			lineTemplates[i].text = lines[i].text
			lineTemplates[i]:SetColor(color)
		end
	end
end

-- Initialize
-- Spawn, space out and hide lines
for i = 1, NUM_LINES do
	lineTemplates[i] = World.SpawnAsset(KILL_FEED_LINE_TEMPLATE, {parent = KILL_FEED_PANEL})
	lineTemplates[i].y = (i - 1) * (VERTICAL_SPACING + lineTemplates[i].height)
	lineTemplates[i]:SetColor(Color.TRANSPARENT)
end

Events.Connect("KF", OnKill)

if SHOW_JOIN_AND_LEAVE then
	Game.playerJoinedEvent:Connect(OnPlayerJoined)
	Game.playerLeftEvent:Connect(OnPlayerLeft)
end

�������KillFeedControllerServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local SHOW_EQUIPMENT_NAME = COMPONENT_ROOT:GetCustomProperty("ShowEquipmentName")

-- nil OnPlayerDied(Player, Damage)
-- Fires an event for the client to add a line to the kill feed
function OnPlayerDied(player, damage)
	if damage.sourceAbility then
		local equipment = damage.sourceAbility:FindAncestorByType("Equipment")

		if SHOW_EQUIPMENT_NAME and equipment then
			Events.BroadcastToAllPlayers("KF", damage.sourcePlayer, player, equipment.id)
		else
			Events.BroadcastToAllPlayers("KF", damage.sourcePlayer, player, damage.sourceAbility.id)
		end
	else
		Events.BroadcastToAllPlayers("KF", damage.sourcePlayer, player, nil)
	end
end

function OnPlayerJoined(player)
	player.diedEvent:Connect(OnPlayerDied)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

��Ȏ܍����3Whitebox Roof 01 - Corner In End with Wall Templateb�
� 򄾎�����*�򄾎�����3Whitebox Roof 01 - Corner In End with Wall Template"  �?  �?  �?(Ú��鴼݂2Ձ������
���������갛����Qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ձ������
Whitebox Roof 01 Corner In"
    �?  �?  �?(򄾎�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������*088�
 *���������Whitebox Roof 01 End"
    �?  �?  �?(򄾎�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Қ088�
 *��갛����QWhitebox Wall 01 Triangle"
  H����B  �?  �?  �?(򄾎�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����񓆏�088�
 G
TemplateAssetRef3Whitebox_Roof_01_-_Corner_In_End_with_Wall_Template
_����񓆏�Whitebox Wall 01 TriangleR5
StaticMeshAssetRefsm_ts_gen_whitebox_wall_001_tri
Z������ҚWhitebox Roof 01 EndR5
StaticMeshAssetRefsm_ts_gen_whitebox_roof_001_end
d��������*Whitebox Roof 01 Corner InR:
StaticMeshAssetRef$sm_ts_gen_whitebox_roof_001_cornerIn
k·�������Sci-fi Base Wall 02 - Corner 01R;
StaticMeshAssetRef%sm_ts_scf_base_wall_002_corner_01_ref
j���؎���� Sci-Fi Base Wall 02 - Doorway 01R9
StaticMeshAssetRef#sm_ts_scf_base_wall_002_door_01_ref
H�͖������CrowbarR0
StaticMeshAssetRefsm_weap_modern_crowbar_001
�Ռ�Ǜ����	Kill Zoneb�
� ��Η��*���Η��	Kill Zone"  �?  �?  �?(�������ɒ2�������ϼ���푈�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������ϼKillTrigger"
    C  �B  �?(��Η��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����푈�KillZoneServer"
  ��   �?  �?  �?(��Η��Z 

cs:KillTrigger��������ϼz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ޠ���6
TemplateAssetRef	Kill_Zone
����ޠ���6KillZoneServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom property
local KILL_TRIGGER = script:GetCustomProperty("KillTrigger"):WaitForObject()

-- nil OnBeginOverlap(Trigger, Object)
-- Kills a player when they enter the trigger
function OnBeginOverlap(trigger, other)
    if other:IsA("Player") then
        other:Die()
    end
end

-- Connect trigger overlap event
KILL_TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)

g������Sci-fi Base Floor 01 - CornerR9
StaticMeshAssetRef#sm_ts_scf_base_floor_001_corner_ref
���˓�����WeaponReticleClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables
local HIDE_ON_AIM = WEAPON:GetCustomProperty("HideReticleOnAim")
local RETICLE_TEMPLATE = WEAPON:GetCustomProperty("ReticleTemplate")

-- Constant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal variables
local reticleInstance = nil
local isSpawned = false
local isAiming = false

function Tick()

    -- Check if the owner of the weapon is the local player
    if Object.IsValid(WEAPON) and WEAPON.owner == LOCAL_PLAYER then

        -- Connect with equipped event in case it was not registered
        if not isSpawned then
            -- Spawn reticle only on local player
            SpawnReticle()
            isSpawned = true
        end

        -- Reticle visibility is based on player's health status
        if (Object.IsValid(reticleInstance)) then
            if HIDE_ON_AIM and isAiming then
                reticleInstance.visibility = Visibility.FORCE_OFF
            else
                if LOCAL_PLAYER.isDead then
                    reticleInstance.visibility = Visibility.FORCE_OFF
                else
                    reticleInstance.visibility = Visibility.INHERIT
                end
            end
        end
    end
end

function SpawnReticle()
    if RETICLE_TEMPLATE and reticleInstance == nil then
        reticleInstance = World.SpawnAsset(RETICLE_TEMPLATE)
    end
end

function RemoveReticle(weapon, player)
    if Object.IsValid(reticleInstance) then
        reticleInstance:Destroy()
        reticleInstance = nil
    end
    isSpawned = false
end

function OnWeaponAimChanged(player, aimingStatus)
    if not Object.IsValid(WEAPON) then return end

    if player == WEAPON.owner then
        isAiming = aimingStatus
    end
end

-- Initialize
WEAPON.unequippedEvent:Connect(RemoveReticle)
Events.Connect("WeaponAiming", OnWeaponAimChanged)
�A���䡍���Advanced Sniper Rifleb�@
�@ ���︑�*����︑�Advanced Sniper Rifle"��?��?  �?(�������2/ب������Y�ꎻ����
����ɜՌ�������,�ҵ�д�ӱZ�

cs:BaseDamagee  �B

cs:HeadshotDamagee  �B

cs:EnableAutoReloadP

cs:EnableAimP
"
cs:AimBindingjability_secondary
.
cs:AimActiveStancej2hand_rifle_aim_shoulder
 
cs:AimWalkSpeedPercentagee   ?

cs:AimZoomDistancee    

cs:AimZoomFOVe  �A

cs:AimZoomSpeede  �@

cs:SpreadStandPrecisione   ?

cs:SpreadWalkPrecisione���>

cs:SpreadJumpPrecisione��L>

cs:SpreadCrouchPrecisione333?
 
cs:SpreadSlidingPrecisione  �>
 
cs:SpreadAimModifierBonuse  �?

cs:PickupSound�
����ۦ^

cs:LowAmmoSound��ˁ������

cs:ScopeTemplate�
���Ѫ���
"
cs:ReticleTemplate���ǝ�����

cs:HideReticleOnAimP
Q
cs:BaseDamage:tooltipj8Normal damage that this weapon will do to enemy players.
W
cs:HeadshotDamage:tooltipj:Headshot damage that this weapon will do to enemy players.
�
cs:AimBinding:tooltipjyKeybinding to hold and activate scope / zoom ability for the weapon. Default is "ability_secondary" (right mouse button).
{
!cs:AimWalkSpeedPercentage:tooltipjVPercentage walk speed reduction when player is aiming. Must be in the range of 0 to 1.
q
cs:AimActiveStance:tooltipjSAnimation stance when aiming with this weapon. Default is 2hand_rifle_aim_shoulder.
:
cs:AimZoomDistance:tooltipjCamera distance when aiming.
z
!cs:SpreadAimModifierBonus:tooltipjUAmount of % added to the spread precision when the player aims. Range between 0 to 1.
�
cs:SpreadStandPrecision:tooltipjqPrecision % when the player is standing without aim. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadWalkPrecision:tooltipjdPrecision % when the player is walking. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadJumpPrecision:tooltipjdPrecision % when the player is jumping. Range between 0 to 1 (from least accurate to most accurate).
�
 cs:SpreadCrouchPrecision:tooltipjfPrecision % when the player is crouching. Range between 0 to 1 (from least accurate to most accurate).
�
!cs:SpreadSlidingPrecision:tooltipjdPrecision % when the player is sliding. Range between 0 to 1 (from least accurate to most accurate).
�
cs:EnableAutoReload:tooltipj�If true the weapon the player will auto reload the ammo without player's input. Only reloads if the player has the ammo resource.
5
cs:EnableAim:tooltipjEnable aiming for the weapon.
:
cs:AimZoomFOV:tooltipj!Camera field-of-view when aiming.
9
cs:AimZoomSpeed:tooltipjCamera lerp speed when aiming.pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop����ɜՌ��
�ͻ�ߡ�����ϧ���
ӰГ£͝}"������ޣ�(2

S�B  pA :2hand_rifle_stanceB
Ή�����J
��������vR2hand_rifle_shootZ
��������`j
��������p}   A�  �>� P�G�
���񼇈��
mc:ereticletype:none��rounds�� P�G�  �@�  B�  �?�  ���   @�   A�
�������,��ҵ�д�ӱ�+
)mc:eweapontrajectorymode:followlookvector*�ب������YServer Context"
    �?  �?  �?(���︑�2������߸�������ʏ2ӣ����׶Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������߸�EquipmentPickupServer"
   �? �?  �?(ب������YZ


cs:Trigger�����ɜՌz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�Ǆ��ճu*�������ʏ2WeaponAimServer"
   �? �?  �?(ب������YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������"*�ӣ����׶WeaponDamageShootServer"
   �? �?  �?(ب������YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ڕń񗺩*��ꎻ����
Client Context"
    �?  �?  �?(���︑�2��������w��ɂ������ܺ����Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *���������wScripts"
    �?  �?  �?(�ꎻ����
2;٭��ȭݸ����î�����������]�������˷�����ϟċζ�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Scripts*�٭��ȭݸ�EquipmentPickupClient"
   �? �?  �?(��������wz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����*����î����WeaponAimScopeClient"
   �? �?  �?(��������wZ]
 
cs:ReloadAbility��ҵ�д�ӱ

cs:ClientArt���ɂ�����

cs:ZoomSound�
�ܺ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�隸�����*��������]WeaponSpreadClient"
   �? �?  �?(��������wZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������\*��������˷WeaponAmmoFeedbackClient"
   �? �?  �?(��������wZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������*������ϟċWeaponAutoReloadClient"
   �? �?  �?(��������wZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������q*�ζ�������WeaponReticleClient"

  �  ��  �? �?  �?(��������wZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��˓�����*���ɂ�����Geo"
   �? �?  �?(�ꎻ����
2H̝�𗄏�X��ɏ�ӱ�����셐���ض���A���䮐��h﹭�ٻ�Ї���К����츷וrZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�̝�𗄏�XModern Weapon - Grip 03"

�XE?KA   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
גש��08(�
 *���ɏ�ӱ�Trigger - Rear".
�Ac@ c�=���@
����d.7A���<���<�K=(��ɂ�����Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08(�
 *�����셐�Barrel"$

�q1B�miA  ����t=��t=Ǟ�>(��ɂ�����Za
5
ma:Shared_BaseMaterial:color�  >  >  >%  �?
(
ma:Shared_BaseMaterial:id�
�ʨ�����^z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ڍ�����:08(�
 *���ض���AModern Weapon - Barrel Tip 02"

��B�miA   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Œ������08(�
 *����䮐��hModern Weapon - Body 02"

\��A�miA   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������C08(�
 *�﹭�ٻ�Modern Weapon - Scope 01"

��@�U�A   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ǚղ��m08(�
 *�Ї���К�Modern Weapon - Stock 02"

��@�A   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���񱾸08(�
 *����츷וrModern Weapon - Magazine 03"

$D�A\K&�   �?  �?  �?(��ɂ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���؇��#08(�
 *��ܺ����
Zoom Sound"$
  ����   �  �? �?  �?(�ꎻ����
Z(
&
bp:Type�
mc:esfx_camera_zoom_01:8z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��┖�5��?=  aEE  �C*�����ɜՌPickup Trigger"

 B t�= if�?  �?  �?(���︑�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�4Equip Sniper Rifle"08*
mc:etriggershape:box*��������,Shoot(���︑�Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff��"ability_primary*+���< 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:
�#< 08B���> 08J2hand_rifle_shoot*��ҵ�д�ӱReload(���︑�Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff�{"ability_ult*��@ 02���= 0: B J2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_33)
TemplateAssetRefAdvanced_Sniper_Rifle
d��┖Object Camera Zoom Set 01 SFX
R7
AudioBlueprintAssetRefsfxabp_object_camera_zoom_ref
W���؇��#Modern Weapon - Magazine 03R,
StaticMeshAssetRefsm_weap_modern_mag_003
V���񱾸Modern Weapon - Stock 02R.
StaticMeshAssetRefsm_weap_modern_stock_002
V��ǚղ��mModern Weapon - Scope 01R.
StaticMeshAssetRefsm_weap_modern_scope_001
T�������CModern Weapon - Body 02R-
StaticMeshAssetRefsm_weap_modern_body_002
`�Œ������Modern Weapon - Barrel Tip 02R2
StaticMeshAssetRefsm_weap_modern_barreltip_002
P�ʨ�����^Metal Steel BrushedR-
MaterialAssetRefmi_stainless-steel_001_uv
=�ڍ�����:Pipe - ThickR!
StaticMeshAssetRefsm_pipe_004
B͈�����Plastic MatteR%
MaterialAssetRefplastic_matte_001
D���������Cube - PolishedR$
StaticMeshAssetRefsm_cube_hq_002
�������qWeaponAutoReloadClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script auto reloads the weapon using the reload ability.
    It tracks if the weapon has enough ammo (or infinite ammo) to reload.
    Additionally it plays the reload sound at the beginning of cast phase and
        interrupts the reload ability when the ability is in different state.
 ]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local RELOAD_ABILITY = WEAPON:GetAbilities()[2]

-- Grabs ability again from weapon in case the client hasn't loaded the object yet
while not Object.IsValid(RELOAD_ABILITY) do
    Task.Wait()
    RELOAD_ABILITY = WEAPON:GetAbilities()[2]
end

-- Exposed properties
local AUTO_RELOAD = WEAPON:GetCustomProperty("EnableAutoReload")

-- Internal variables --
local LOCAL_PLAYER = Game.GetLocalPlayer()
local autoReloaded = false


-- Manually spawn the reloading audio
function SpawnReloadingAudio()
    if WEAPON.reloadSoundId ~= nil then
        World.SpawnAsset(WEAPON.reloadSoundId, {position = WEAPON:GetWorldPosition()})
    end
end

function Tick(deltaTime)

    -- If auto reload is not actiavted ignore the script
    if not AUTO_RELOAD then return end

    -- Makes sure that the weapon owner is the local player
    if not Object.IsValid(WEAPON) then return end
    if not WEAPON.owner == LOCAL_PLAYER then return end

    if not WEAPON.isAmmoFinite then
        -- Checks when the weapon has empty ammo to reload
        if WEAPON.currentAmmo == 0
        and not autoReloaded then
            SpawnReloadingAudio()
            RELOAD_ABILITY:Activate()
            autoReloaded = true
            Task.Wait(RELOAD_ABILITY.castPhaseSettings.duration)
        end

        -- Interrupts the reloading animation,
        -- If the weapon is in different state and the ammo is not empty
        if WEAPON.currentAmmo > 0
        and RELOAD_ABILITY:GetCurrentPhase() ~= AbilityPhase.READY
        and autoReloaded then
            RELOAD_ABILITY:Interrupt()
            autoReloaded = false
        end

        -- Reset autoReloaded bool on ready phase
        if RELOAD_ABILITY:GetCurrentPhase() == AbilityPhase.READY
        and autoReloaded then
            autoReloaded = false
        end
    end
end
����������WeaponAmmoFeedbackClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script plays audio to the weapon owner when the weapon reaches 20% amount of ammo.
    The audio plays only to the weapon owner client.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local ATTACK_ABILITY = WEAPON:GetAbilities()[1]

-- Grabs ability again from weapon in case the client hasn't loaded the object yet
while not Object.IsValid(ATTACK_ABILITY) do
    Task.Wait()
    ATTACK_ABILITY = WEAPON:GetAbilities()[1]
end

-- Exposed variables
local LOW_AMMO_SOUND = WEAPON:GetCustomProperty("LowAmmoSound")

-- Constant variables
local LOW_AMMO_PERCENTAGE = 0.2

function OnShoot(ability)
    if Object.IsValid(WEAPON) and ability.owner == WEAPON.owner then
        if WEAPON.currentAmmo / WEAPON.maxAmmo <= LOW_AMMO_PERCENTAGE then
            if LOW_AMMO_SOUND then
                World.SpawnAsset(LOW_AMMO_SOUND, {position = WEAPON:GetWorldPosition()})
            end
        end
    end
end

-- Initialize
ATTACK_ABILITY.executeEvent:Connect(OnShoot)
�$��������\WeaponSpreadClientZ�$�$--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script changes weapon spread based on player actions.
    Set the spread precision numbers under the weapon's custom properties section to modify how the spread behaves.
    Tooltip is available for each spread precision settings.
    Spread precison percentages fluctuate between Spread Min and Spread Max values of the weapon.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables --
local STAND_PRECISION = WEAPON:GetCustomProperty("SpreadStandPrecision")
local WALK_PRECISION = WEAPON:GetCustomProperty("SpreadWalkPrecision")
local JUMP_PRECISION = WEAPON:GetCustomProperty("SpreadJumpPrecision")
local CROUCH_PRECISION = WEAPON:GetCustomProperty("SpreadCrouchPrecision")
local AIM_PRECISION_BONUS = WEAPON:GetCustomProperty("SpreadAimModifierBonus")

-- Constatnt variables
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal variables --
local player = nil
local newSpreadModifyValue = 0
local isAiming = false
local spreadDelta = nil

function Tick()

    -- Sets up weapon spread delta value
    if not Object.IsValid(WEAPON) then return end
    if spreadDelta == nil and Object.IsValid(WEAPON.owner) then
        spreadDelta = WEAPON.spreadMax - WEAPON.spreadMin
    end
    -- Sets up weapon owner
    player = WEAPON.owner

    if not Object.IsValid(player) then return end
	if player ~= LOCAL_PLAYER then return end  --only run script for the local player

    -- Note: Below we check for player movement actions and
    --       calculate the total spreadModify percentage.

    -- Spread when player is jumping
    if (player.isJumping) then
        if (player.isCrouching) then
            -- Account for the situation when player crouches and jumps
            newSpreadModifyValue = CROUCH_PRECISION - JUMP_PRECISION
        else
            newSpreadModifyValue = JUMP_PRECISION
        end
    -- Spread when player is crouching
    elseif (player.isCrouching) then
        -- Account for the situation when player crouches and moves at the same time
        if (player.isAccelerating) then
            newSpreadModifyValue = CROUCH_PRECISION - WALK_PRECISION
        else
            newSpreadModifyValue = CROUCH_PRECISION
        end
    -- Spread when player is moving
    elseif (player.isAccelerating) then
        newSpreadModifyValue = WALK_PRECISION
    else
        newSpreadModifyValue = STAND_PRECISION
    end

    -- Adds aim percentage bonus to the total spreadModifyValue
    if isAiming then
        newSpreadModifyValue = newSpreadModifyValue + AIM_PRECISION_BONUS
    end
    -- Adjust the player spread modify gradually over time
    newSpreadModifyValue = spreadDelta * (1 - newSpreadModifyValue)
    player.spreadModifier = GetSmoothValue(player.spreadModifier, newSpreadModifyValue)
end

function GetSmoothValue(from, number)
    return CoreMath.Lerp(from, number, WEAPON.spreadDecreaseSpeed/100)
end

function OnWeaponAimChanged(_, aimingStatus)
    if not Object.IsValid(WEAPON) then return end

    -- Caches the local player aiming status
    if player == WEAPON.owner then
        isAiming = aimingStatus
    end
end

function OnUnequip(_, weaponOwner)
    if weaponOwner ~= LOCAL_PLAYER then return end
    weaponOwner.spreadModifier = 0
end

-- Initialize
WEAPON.unequippedEvent:Connect(OnUnequip)
Events.Connect("WeaponAiming", OnWeaponAimChanged)
�E�隸�����WeaponAimScopeClientZ�D�D--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    When the weapon owner aims, this script adds scope visuals and changes local camera properties
    such as distance, fov and offset for scoping functionality. Player and weapon model is hidden
    when the player aims. This script is useful for weapons like sniper rifle.

    This script also sends an event when the weapon owner aims:
    WeaponAiming (Player owner, bool isAiming) [Client]
    owner       - local player that aims
    isAiming    - if the owner is aiming or not

    Note:   This aiming script works best for first-person and third-person camera angles.
            Disable aiming if the weapon is used in other camera angles.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local WEAPON_ART = script:GetCustomProperty("ClientArt"):WaitForObject()
local RELOAD_ABILITY = WEAPON:GetAbilities()[2]
local ZOOM_SOUND = script:GetCustomProperty("ZoomSound"):WaitForObject()

-- Grabs ability again from weapon in case the client hasn't loaded the object yet
while not Object.IsValid(RELOAD_ABILITY) do
    Task.Wait()
    RELOAD_ABILITY = WEAPON:GetAbilities()[2]
end

-- Exposed variables --
local CAN_AIM = WEAPON:GetCustomProperty("EnableAim")
local AIM_BINDING = WEAPON:GetCustomProperty("AimBinding")
local ZOOM_DISTANCE = WEAPON:GetCustomProperty("AimZoomDistance")
local ZOOM_FOV = WEAPON:GetCustomProperty("AimZoomFOV")
local AIM_ZOOM_SPEED = WEAPON:GetCustomProperty("AimZoomSpeed")
local SCOPE_TEMPLATE = WEAPON:GetCustomProperty("ScopeTemplate")

-- Internal constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Internal handle variables --
local pressedHandle = nil              -- Event handle when player presses the aim binding
local releasedHandle = nil             -- Event handle when player releases the aim binding
local playerDieHandle = nil            -- Event handle when player dies

-- Internal camera variables --
local connected = false
local cameraResetFOV = 0
local cameraResetDistance = 0
local cameraTargetFOV = 0
local cameraTargetDistance = 0
local lerpTime = 0
local activeCamera = nil
local scopeInstance = nil
local isScoping = false

function Tick(deltaTime)
    if not CAN_AIM then return end
    if not Object.IsValid(WEAPON) then return end

    -- We call OnEquipped function after player is fully loaded in client
    if Object.IsValid(WEAPON.owner) and not connected then
        if GetPlayerActiveCamera(WEAPON.owner) == nil then return end

        OnEquipped(WEAPON, WEAPON.owner)
        connected = true
    end

    -- Smoothly lerps the camera distance and FOV when player aims
    LerpCamera(deltaTime)
end

-- Lerps the camera distance and FOV
function LerpCamera(deltaTime)
    if not activeCamera then return end
    if lerpTime >= 1 then
        if isScoping and scopeInstance and not scopeInstance:IsVisibleInHierarchy() then
            scopeInstance.visibility = Visibility.FORCE_ON
        end
        return
    end

    lerpTime = CoreMath.Clamp(lerpTime + deltaTime * AIM_ZOOM_SPEED)
    activeCamera.fieldOfView = CoreMath.Lerp(activeCamera.fieldOfView, cameraTargetFOV, lerpTime)
    activeCamera.currentDistance = CoreMath.Lerp(activeCamera.currentDistance, cameraTargetDistance, lerpTime)
end

 -- Gets player current active camera
 function GetPlayerActiveCamera(player)
    if not Object.IsValid(player) then
        return nil
    end

    if player:GetOverrideCamera() then
        return player:GetOverrideCamera()
    else
        return player:GetDefaultCamera()
    end
end

function EnableScoping(player)
    if player.isDead then return end
    if RELOAD_ABILITY:GetCurrentPhase() == AbilityPhase.CAST then return end

    -- Set camera scoping values
    cameraTargetDistance = ZOOM_DISTANCE
    cameraTargetFOV = ZOOM_FOV

    -- Set internal scoping values
    lerpTime = 0
    isScoping = true
    player.isVisibleToSelf = false

    -- Trigger weapon's art and scope instance
    if Object.IsValid(WEAPON_ART) then
        WEAPON_ART.visibility = Visibility.FORCE_OFF
    end
    if SCOPE_TEMPLATE and not Object.IsValid(scopeInstance) then
        scopeInstance = World.SpawnAsset(SCOPE_TEMPLATE)
        scopeInstance.visibility = Visibility.FORCE_ON
        scopeInstance:AttachToLocalView(player)
    end

    -- Play scoping sound to the local player
    if Object.IsValid(ZOOM_SOUND) and player == LOCAL_PLAYER then
        ZOOM_SOUND:Play()
    end

    -- Broadcast to client scripts the state of weapon aiming
    Events.Broadcast("WeaponAiming", player, true)
end

function ResetScoping(player)
    -- Reset camera scoping values
    cameraTargetDistance = cameraResetDistance
    cameraTargetFOV = cameraResetFOV

    -- Reset internal scoping values
    lerpTime = 0
    isScoping = false
    player.isVisibleToSelf = true

    -- Reset weapon's art visibility and scope instance
    if Object.IsValid(WEAPON_ART) then
        WEAPON_ART.visibility = Visibility.FORCE_ON
    end
    if Object.IsValid(scopeInstance) then
        scopeInstance.visibility = Visibility.FORCE_OFF
    end

    -- Play scoping sound to the local player
    if Object.IsValid(ZOOM_SOUND) and player == LOCAL_PLAYER then
        if RELOAD_ABILITY:GetCurrentPhase() ~= AbilityPhase.CAST then
            ZOOM_SOUND:Play()
        end
    end

    -- Broadcast to client scripts the state of weapon aiming
    Events.Broadcast("WeaponAiming", player, false)
end

function OnBindingPressed(player, actionName)
    if actionName == AIM_BINDING then
        EnableScoping(player)
    end
end

function OnBindingReleased(player, actionName)
    if actionName == AIM_BINDING then
        ResetScoping(player)
	end
end

function OnPlayerDied(player, damage)
    ResetScoping(player)
end

function OnEquipped(weapon, player)
    if not CAN_AIM then return end

    -- Register binding handles
    pressedHandle = player.bindingPressedEvent:Connect(OnBindingPressed)
    releasedHandle = player.bindingReleasedEvent:Connect(OnBindingReleased)
    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)

    lerpTime = 0

    -- Set the new active camera
    activeCamera = GetPlayerActiveCamera(player)
    if activeCamera then
        cameraResetDistance = activeCamera.currentDistance
        cameraResetFOV = activeCamera.fieldOfView

        cameraTargetDistance = cameraResetDistance
        cameraTargetFOV = cameraResetFOV
    end
end

function OnUnequipped(weapon, player)
    if not CAN_AIM then return end

    ResetScoping(player)

    -- Disconnects all the handle events to avoid event trigger
    -- for previous player when the weapon is used by next player
	if (pressedHandle) then pressedHandle:Disconnect() end
	if (releasedHandle) then releasedHandle:Disconnect() end
    if (playerDieHandle) then playerDieHandle:Disconnect() end

    -- Remove the reference to the camera
    if Object.IsValid(activeCamera) then
        activeCamera.currentDistance = cameraResetDistance
        activeCamera.fieldOfView = cameraResetFOV
        activeCamera = nil
    end
    -- Destroy the scope instance
    if Object.IsValid(scopeInstance) then
        scopeInstance:Destroy()
        scopeInstance = nil
    end
    connected = false
end

-- Reset scoping on reload
function OnReload(ability)
    ResetScoping(ability.owner)
end

-- Initialize
WEAPON.unequippedEvent:Connect(OnUnequipped)
RELOAD_ABILITY.castEvent:Connect(OnReload)
�����EquipmentPickupClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    Custom pickup script adds additional features to pickup functionality such as
    pickup sound and enabling trigger collision on equipment unequipped event.
 ]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

-- Exposed variables --
local PICKUP_SOUND = EQUIPMENT:GetCustomProperty("PickupSound")

-- Internal variables --
local DEFAULT_LIFESPAN = 1

-- nil OnEquipped(Equipment)
function OnEquipped(equipment, player)

    -- Spawn a pickup sound when a player picks up the weapon
    if PICKUP_SOUND then
        local pickupSound = World.SpawnAsset(PICKUP_SOUND, {position = equipment:GetWorldPosition()})

        -- Set a default lifespan if the pickup sound template has 0 lifeSpan
        if pickupSound.lifeSpan == 0 then
            pickupSound.lifeSpan = DEFAULT_LIFESPAN
        end
    end
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)
��ڕń񗺩WeaponDamageShootServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script adds headshot damage in combination with custom base damage.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables --
local DAMAGE_AMOUNT = WEAPON:GetCustomProperty("BaseDamage")
local DAMAGE_HEADSHOT = WEAPON:GetCustomProperty("HeadshotDamage")

function OnWeaponInteracted(weapon, impactData)
    local target = impactData.targetObject

    -- Apply damage to target if it's a player
    if Object.IsValid(target) and target:IsA("Player") then

        local weaponOwner = impactData.weaponOwner
        local numberOfHits = #impactData:GetHitResults()

        -- Assign a headshot damage if projectile hit enemy's head
        local damage = DAMAGE_AMOUNT
        if impactData.isHeadshot then
            damage = DAMAGE_HEADSHOT
        end

        -- Creating damage information
        -- Note: number of hits sums up the damage number for multi-shot weapons (e.g. shotgun)
        local newDamageInfo = Damage.New(damage * numberOfHits)
        newDamageInfo.reason = DamageReason.COMBAT
        newDamageInfo.sourceAbility = impactData.sourceAbility
        newDamageInfo.sourcePlayer = weaponOwner

        -- Apply damage to the enemy player
        target:ApplyDamage(newDamageInfo)
    end
end

-- Initialize
WEAPON.targetImpactedEvent:Connect(OnWeaponInteracted)
�)�������"WeaponAimServerZ�(�(--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script adds aiming functionality to the weapon. It applies aiming stance and aiming speed
    when user triggers the specified aiming binding on server.
    The script also uses mount speed to correct the aim speed.

    Note:   This aiming script works best for first-person and third-person camera angles.
            Disable aiming if the weapon is used in other camera angles.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables --
local CAN_AIM = WEAPON:GetCustomProperty("EnableAim")
local AIM_BINDING = WEAPON:GetCustomProperty("AimBinding")
local AIM_WALK_SPEED_PERCENTAGE = WEAPON:GetCustomProperty("AimWalkSpeedPercentage")
local AIM_ACTIVE_STANCE = WEAPON:GetCustomProperty("AimActiveStance")

-- Internal variables --
local speedReduced = 0                      -- Cache the amount of speed reduced from the player walk speed
local pressedHandle = nil                   -- Event handle when player presses the aim binding
local releasedHandle = nil                  -- Event handle when player releases the aim binding
local playerDieHandle = nil                 -- Event handle when player dies
local UNARMED_STANCE = "unarmed_stance"     -- Default stance when the weapon is unequipped

-- Player states variables
local isMounted = false
local isAiming = false

function Tick(deltaTime)
    -- The script can works when the weapon has the owner
    if not Object.IsValid(WEAPON) then return end
    if not Object.IsValid(WEAPON.owner) then return end

    -- Makes sure that the walk speed resets properly when player mounts
    if isMounted ~= WEAPON.owner.isMounted then
        if isAiming and not WEAPON.owner.isMounted then
            SetAimingSpeed(WEAPON.owner)
        elseif not isAiming then
            ResetPlayerSpeed(WEAPON.owner)
        end
        isMounted = WEAPON.owner.isMounted
    end
end

-- Sets the speed when the player aims using speedReduced variable
function SetAimingSpeed(player)
    if Object.IsValid(player) and player == WEAPON.owner then
        if not player.isMounted and speedReduced == 0 then
            speedReduced = player.maxWalkSpeed * AIM_WALK_SPEED_PERCENTAGE
            player.maxWalkSpeed = player.maxWalkSpeed - speedReduced
        end
        player.animationStance = AIM_ACTIVE_STANCE
    end
end

-- Resets the player speed to the current walk speed
function ResetPlayerSpeed(player)
    if Object.IsValid(WEAPON) and Object.IsValid(player) then
        if not player.isMounted then
            player.maxWalkSpeed = player.maxWalkSpeed + speedReduced
            speedReduced = 0
        end
        player.animationStance = WEAPON.animationStance
    end
end

function OnBindingPressed(player, actionName)
    if actionName == AIM_BINDING then
        SetAimingSpeed(player)
        isAiming = true
	end
end

function OnBindingReleased(player, actionName)
    if actionName == AIM_BINDING then
        ResetPlayerSpeed(player)
        isAiming = false
	end
end

function OnPlayerDied(player, damage)
    ResetPlayerSpeed(player)
end

function OnEquipped(weapon, player)
    if not CAN_AIM then return end

    -- Connects the handle events
    pressedHandle = player.bindingPressedEvent:Connect(OnBindingPressed)
    releasedHandle = player.bindingReleasedEvent:Connect(OnBindingReleased)
    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)
end

function OnUnequipped(weapon, player)
    if not CAN_AIM then return end

    -- Disconnects all the handle events to avoid event trigger
    -- for previous player when the weapon is used by next player
    if (pressedHandle) then pressedHandle:Disconnect() end
    if (releasedHandle) then releasedHandle:Disconnect() end
    if (playerDieHandle) then playerDieHandle:Disconnect() end

    -- Reset player speed and animation stance on unequip
    ResetPlayerSpeed(player)
    player.animationStance = UNARMED_STANCE
end

-- Connecting weapon event to functions
WEAPON.equippedEvent:Connect(OnEquipped)
WEAPON.unequippedEvent:Connect(OnUnequipped)

��Ǆ��ճuEquipmentPickupServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    Custom pickup script adds additional features to pickup functionality such as
    enabling trigger collision on equipment unequipped event.
 ]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

-- nil OnEquipped(Equipment)
function OnEquipped(equipment, player)

    -- Turn off trigger once equipped
    if Object.IsValid(TRIGGER) then
        TRIGGER.collision = Collision.FORCE_OFF
    end

end

-- nil OnUnequipped(Equipment)
function OnUnequipped(equipment)
    -- Make sure that the equipment and trigger still exists
    if Object.IsValid(equipment) and Object.IsValid(TRIGGER) then

        -- Make the equipment pickable again after a second
        if TRIGGER:IsCollidableInHierarchy() then
            Task.Wait(1)
            if Object.IsValid(TRIGGER) then
                TRIGGER.collision = Collision.INHERIT
            end
        else
            -- Destroy the equipment if it's not interactable
            equipment:Destroy()
        end
    end
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)
���ǝ�����Sniper Reticleb�
� Ʌ���כ�^*�Ʌ���כ�^Sniper Reticle"  �?  �?  �?(�����B2�򰓗���T������ܬfZ-

cs:ExtraRadiuse  pA

cs:StartAnglee  �Bpz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*��򰓗���TWeaponReticleUIClient"
    �?  �?  �?(Ʌ���כ�^ZA

cs:ComponentRoot�
Ʌ���כ�^

cs:SegmentsRoot�
������ܬfpz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
к�����ی*�������ܬfSegments"
    �?  �?  �?(Ʌ���כ�^2L����̊�������ᐗ����گ����uޚ������]��Ə�����ڂ������'������Σ������䣅vZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����̊���Invinsible Segment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent� 
mc:evisibilitysetting:forceoff��:

mc:euianchor:middlecenter�"

��و�y  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�����ᐗ��Segment"
 �.e�  �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�"

��������  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���گ����uInvinsible Segment"
 �.e�  �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent� 
mc:evisibilitysetting:forceoff��:

mc:euianchor:middlecenter�"

��و�y  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�ޚ������]Segment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�"

��������  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���Ə�����Invinsible Segment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent� 
mc:evisibilitysetting:forceoff��:

mc:euianchor:middlecenter�"

��و�y  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�ڂ������'Segment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�"

��������  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�������Σ�Invinsible Segment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent� 
mc:evisibilitysetting:forceoff��:

mc:euianchor:middlecenter�"

��و�y  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*������䣅vSegment"
    �?  �?  �?(������ܬfZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�"

��������  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter
NoneNone
K��������BG Flat 001	R0
PlatformBrushAssetRefBackgroundNoOutline_020
O��و�yFrame Ring 026 Wedge	R+
PlatformBrushAssetRefFrameRing_026Wedge
�к�����یWeaponReticleUIClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local SEGMENTS_ROOT = script:GetCustomProperty("SegmentsRoot"):WaitForObject()

-- User exposed properties
local START_ANGLE = COMPONENT_ROOT:GetCustomProperty("StartAngle")
local EXTRA_RADIUS = COMPONENT_ROOT:GetCustomProperty("ExtraRadius")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local ANGLE = 360 / #SEGMENTS_ROOT:GetChildren()
local RAD_ANGLE = math.pi * 2 / #SEGMENTS_ROOT:GetChildren()

function Tick()
    local spread = LOCAL_PLAYER.currentSpread + EXTRA_RADIUS
    local deg = START_ANGLE
    local rad = math.pi / 2
    for _,seg in pairs(SEGMENTS_ROOT:GetChildren()) do
        seg.rotationAngle = deg
        seg.x = math.cos(rad) * spread
        seg.y = math.sin(rad) * spread
        deg = deg + ANGLE
        rad = rad + RAD_ANGLE
    end
end
����Ѫ���Sniper Scope Templateb�
� ��а��ם�*���а��ם�Sniper Scope Template"  �?  �?  �?(�����B2��ǂ��������ը����ߡ�����dZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ǂ����Depth of Field Post Process"
  ���?���?33�?(��а��ם�Z�

	bp:Method�
mc:edoftype:1

bp:Focal Distancee    

bp:Focal Regione  �B

bp:Near Blur Sizee  �@
 
bp:Near Transition Regione    

bp:Far Transition Regione    

bp:Far Blur Sizee    

bp:Vignette Sizee  �B

bp:Sky Distancee    

bp:Occlusione   ?

bp:Use Focus ObjectP 

bp:UnboundedP 

bp:Blend Radiuse  �Bpz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������*�����ը���Vingette Grain Post Process"
  ���?���?33�?(��а��ם�Z�

bp:Vignette Intensitye��L?

bp:Grain Intensitye    

bp:UnboundedP 

bp:Prioritye  �@

bp:Blend Radiuse  C
%
bp:Volume Type�
mc:evolumetype:0

bp:Grain Jittere    

bp:Blend Weighte  �?pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������(*��ߡ�����d	Scope Art"
  �A ���<���<���<(��а��ם�20�����ڃT�ݣ��ڸ���������ɀ���������Σ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ڃT	Crosshair"

  �C ���   �?  �?  �?(�ߡ�����d2-�����]����ę��������ݛp�������墈���Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*������]Cube"
  
ף<
ף<gf&@(�����ڃTZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ﳬ�08 (�
 *�����ę��Cube"$

 ��� ��C���B
ף<
ף<gf&@(�����ڃTZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ﳬ�08 (�
 *�������ݛpCube"$

 ��C ��C ��
ף<
ף<gf&@(�����ڃTZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ﳬ�08 (�
 *������Cube"
 ��C��C
ף<
ף<���>(�����ڃTZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ﳬ�08 (�
 *���墈���Cube"
 ��C	 �
ף<
ף<���>(�����ڃTZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ﳬ�08 (�
 *��ݣ��ڸ�Ring - Thick"
  �C  �B13�@13�@13�@(�ߡ�����dZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
	�������Q08 (�
 *���������!Cylinder - Rounded Bottom-Aligned"
   ��]��@]��@ifF@(�ߡ�����dZ\
(
ma:Shared_BaseMaterial:id�
��֨���i
0
ma:Shared_BaseMaterial:color�  �>��>%  �?pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff�
���������08 (�
 *�ɀ�����"Cone - Truncated Hollow Wide Thick")
  �A  �B�.e7��7gf�@gf�@���?(�ߡ�����dZR
(
ma:Shared_BaseMaterial:id�
͈�����
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
������ט08�
 *�����Σ��Pipe - Thin"
 
  ���]8bf�@bf�@ifF@(�ߡ�����dZS
)
ma:Shared_BaseMaterial:id��������ſ
&
ma:Shared_BaseMaterial:color�%  �?pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����ա��(08 (�
 
NoneNone
<����ա��(Pipe - ThinR!
StaticMeshAssetRefsm_pipe_003
_������טCone - Truncated Hollow WideR2
StaticMeshAssetRefsm_cone_truncated_hollow_004
N��֨���iGlass 01 (no distortion)R&
MaterialAssetRefmi_basic_glass_001
_���������!Cylinder - Rounded Bottom-AlignedR-
StaticMeshAssetRefsm_cylinder_rounded_001
5�������QRingR"
StaticMeshAssetRefsm_torus_004
C�������ſPlastic MatteR%
MaterialAssetRefplastic_matte_001
F����ﳬ�Cube - Bottom-AlignedR!
StaticMeshAssetRefsm_cube_001
`��������(Vingette Grain Post ProcessR5
BlueprintAssetRef fxbp_post_process_vignette_grain
V��������Depth of Field Post ProcessR*
BlueprintAssetReffxbp_post_process_DOF
��ˁ������Generic Low Ammo Soundb�
� ��ԙ�����*���ԙ�����Generic Low Ammo Sound"  �?  �?  �?(�����B2	��ᙈ鼾?Z e   @pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���ᙈ鼾?Low Ammo Sound"
    �?  �?  �?(��ԙ�����Z1
/
bp:Type�#
!mc:esfx_gunshot_assaultrifle_ak:8z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%

���񵲼�Z�-  �B5��L?=  aEE  �C
NoneNone
o���񵲼�Z#Gunshot Assualt Rifle AK Set 01 SFX
R<
AudioBlueprintAssetRef"sfxabp_gunshot_assaultrifle_ak_ref
�����ۦ^Generic Sound Pickupb�
� ���®�߭�*����®�߭�Generic Sound Pickup"  �?  �?  �?(�����B2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����������Weapon Pickup SFX"
    �?  �?  �?(���®�߭�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�#
����ͺ۵�5  �?=  aEE  �Cx�
NoneNone
D����ͺ۵�Weapon Pickup SFXR"
AudioAssetRefsfx_weapon_pickup
����񼇈�Generic Impact Player Effectb�
� ������Ⴋ*�������ႫWeapon Player Impact Effect"
    �?  �?  �?(�������ˬ2
�ϲ���ƝZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ϲ���ƝClient Context"
    �?  �?  �?(������Ⴋ2������ӱ�����ڣ�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�������ӱGeneric Player Impact VFX"
    �?  �?  �?(�ϲ���ƝZ

bp:color�
43s?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��;��i�*������ڣ�Bullet Body Impact SFX"
    �?  �?  �?(�ϲ���ƝZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"

�ȷ���Ǖm5  �?=  aEE  �Cx�
NoneNone
M�ȷ���ǕmBullet Body Impact SFXR'
AudioAssetRefsfx_bullet_impact_body
S��;��iGeneric Player Impact VFXR*
VfxBlueprintAssetReffxbp_player_impact
���������vSniper Reload Soundb�
� ��ś�ܤ�*���ś�ܤ�Sniper Reload Sound"  �?  �?  �?(�����B2
��čζ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���čζ���Client Context"
    �?  �?  �?(��ś�ܤ�2
������ؒ�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�������ؒ�Gun Weapon Reload Set 01 SFX"
    �?  �?  �?(��čζ���Z%
#
bp:Type�
mc:esfx_gunreloads:38z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
������Ĝ�5  �?=  zDE  �BXx�
NoneNone
Y������ĜGun Weapon Reload Set 01 SFX
R,
AudioBlueprintAssetRefsfxabp_reloads_ref
�Ή�����Generic Sound Out Of Ammob�
� ���ӌ����*����ӌ����Generic Sound Out Of Ammo"  �?  �?  �?(�������ˬ2
��������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������Client Context"
    �?  �?  �?(���ӌ����2
��������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������$Dry Fire Click Generic Clicky 01 SFX"
    �?  �?  �?(��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"

������.5  �?=  �DE  �Cx�
NoneNone
b������.$Dry Fire Click Generic Clicky 01 SFXR.
AudioAssetRefsfx_clicky_dryfire_01_Cue_ref
�
������ޣ�Generic Impact Surface Alignedb�

�
 �ƥ񪝧�*��ƥ񪝧�Generic Impact Surface Aligned"  �?  �?  �?(�����B2	��ІŔ��VZ e  �@pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ІŔ��VClient Context"
   ��  �?  �?  �?(�ƥ񪝧�2%������������ݤ���`����Ǔ͐oذ��Ǩ.Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����������Impact Ground Dirt 01 SFX"
    �?  �?  �?(��ІŔ��VZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�$

�������-5  �?=  aEE  �CXx�*����ݤ���`Gun Impact Small VFX"
    �?  �?  �?(��ІŔ��VZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ъ�����*�����Ǔ͐oImpact Sparks VFX"
  ���=���=���=(��ІŔ��VZ�


bp:Densitye���>
#
bp:Particle Scale Multipliere��L>
%
bp:Spark Line Scale Multipliere  �?

bp:Enable HotspotP

bp:Enable FlashP

bp:Enable Spark LinesP

bp:Enable SparksP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������� �*�ذ��Ǩ.Decal Bullet Damage Stone"
 �.e8���=���=���=(��ІŔ��VZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������� 
NoneNone
]�������Decal Bullet Damage StoneR3
DecalBlueprintAssetRefbp_decal_bullet_stone_001
L���������Impact Sparks VFXR*
VfxBlueprintAssetReffxbp_impact_sparks
T��ъ����Gun Impact Small VFXR/
VfxBlueprintAssetReffxbp_gun_impact_dirt_sm
b�������-Impact Ground Dirt 01 SFXR9
AudioAssetRef(sfx_bullet_impact_ground_dirt_01_Cue_ref
�ӰГ£͝}Generic Trailb�
� �������*��������Generic Trail"  �?  �?  �?(�����B2
�᧷�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��᧷�����Client Context"
    �?  �?  �?(�������2	�愯���nZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��愯���nBasic Projectile Trail VFX"
    �?  �?  �?(�᧷�����Zs
"
	bp:colorB�  �?  �?  �?%  �?
#
bp:Particle Scale Multipliere���>

bp:Lifee��L>

bp:Emissive Booste   ?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
悜�������
NoneNone
^悜������Basic Projectile Trail VFXR3
VfxBlueprintAssetReffxbp_basic_projectile_trail
����ϧ���Sniper Muzzle Flashb�
� ݻ�����z*�ݻ�����zSniper Muzzle Flash"  �?  �?  �?(�����B2	�ӓ�ƙ��:Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ӓ�ƙ��:Client Context"
    �?  �?  �?(ݻ�����z2Ԇ������z�蒵⇟�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�Ԇ������zGunshot Sniper Rifle Set 01 SFX"
    �?  �?  �?(�ӓ�ƙ��:Z+
)
bp:Type�
mc:esfx_gunshot_sniper_01:3z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�$

��������'�5  �?=  zEE  DXx*��蒵⇟�Generic Muzzleflash VFX"
   �  ��  �?  �?  �?(�ӓ�ƙ��:Z>
"
bp:Particle Size Multipliere��L?

bp:Emissive Booste  �@z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����������
NoneNone
X���������Generic Muzzleflash VFXR0
VfxBlueprintAssetReffxbp_generic_muzzleflash
g��������'Gunshot Sniper Rifle Set 01 SFX
R8
AudioBlueprintAssetRefsfxabp_gunshot_sniperrifle_ref
��ͻ�ߡ��Generic Bulletb�
� ���ٿB*����ٿBGeneric Bullet"  �?  �?  �?(�����B2
�ʼ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ʼ�����Client Context"
    �?  �?  �?(���ٿB2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����������Bullet"
    �?  �?  �?(�ʼ�����Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
����آ߯�08(�
 
NoneNone
b����آ߯�Modern Weapon - Bullet 01R8
StaticMeshAssetRef"sm_weap_modern_ammo_bullet_tip_001
]�զ��닽�Sci-Fi Base Floor 03 4mR5
StaticMeshAssetRefsm_ts_scf_base_floor_003_4m_ref
�,��������WeaponProjectileExplosionServerZ�,�,--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script adds explosion damage when the projectile interacted with ground.
    It also detects if the projectile still has bounces remaining before it explodes.
    This script by default explode the projectile when it hits the player.

    Notes:
            - Make sure to empty the "Impact Surface Aligned" field if the Projectile Bounces is not 0.
              Put the impact template in the custom firld "ProjectileImpact".
            - Tick "DebugExplosion" to display the explosion radius in the local preview.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables
local FRIENDLY_EXPLOSION = WEAPON:GetCustomProperty("FriendlyExplosionDamage")
local EXPLOSION_DAMAGE_RANGE = WEAPON:GetCustomProperty("ExplosionDamageRange")
local EXPLOSION_RADIUS = WEAPON:GetCustomProperty("ExplosionRadius")
local EXPLOSION_KNOCKBACK_SPEED = WEAPON:GetCustomProperty("ExplosionKnockbackSpeed")
local IMPACT = WEAPON:GetCustomProperty("ProjectileImpact")
local BOUNCE_SOUND = WEAPON:GetCustomProperty("ProjectileBounceSound")
local DEBUG_EXPLOSION = WEAPON:GetCustomProperty("DebugExplosion")

-- nil Blast(Vector3)
-- Creates a explosion at the projectile impact position
-- Damages players within the blast
function Blast(center)

    if DEBUG_EXPLOSION then
        CoreDebug.DrawSphere(center, EXPLOSION_RADIUS, {color = Color.RED, duration = 5})
    end

    if IMPACT then
        World.SpawnAsset(IMPACT, {position = center})
    end

    -- If weapon is destroyed by the time the blast happens, stop the script
    if not Object.IsValid(WEAPON) then return end
    -- If owner left the server by the time the blast happens, stop the script
    if not Object.IsValid(WEAPON.owner) then return end

    local players = Game.FindPlayersInSphere(center, EXPLOSION_RADIUS)
    for _, player in pairs(players) do
        local canDamage = false

        -- Checks to blast the enemy team
        if Teams.AreTeamsEnemies(player.team, WEAPON.owner.team) then
            canDamage = true
        -- Checks to blast the ally team (including damaging to self)
        elseif FRIENDLY_EXPLOSION then
            canDamage = true
        end

        -- If canDamage is true and there is no objects obstructing the explosion then damage the player
        if canDamage then
            local displacement = player:GetWorldPosition() - center

            -- The farther the player from the blast the less damage that player takes
            local minDamage = EXPLOSION_DAMAGE_RANGE.x
            local maxDamage = EXPLOSION_DAMAGE_RANGE.y
            displacement.z = 0
            local t = (displacement).size / EXPLOSION_RADIUS
            local damageAmount = CoreMath.Lerp(maxDamage, minDamage, t)

            -- Create damage information
            local damage = Damage.New(damageAmount)
            damage.sourcePlayer = WEAPON.owner

            -- Apply damage to player
            player:ApplyDamage(damage)

            -- Create a direction at which the player is pushed away from the blast
            player:AddImpulse((displacement):GetNormalized() * player.mass * EXPLOSION_KNOCKBACK_SPEED)
        end
    end

end

-- nil OnTargetImpactedEvent (Weapon, ImpactData)
-- Spawns explosion on the projectile impact
function OnTargetImpactedEvent (weapon, impactData)

    local impactPosition = impactData:GetHitResult():GetImpactPosition()

    -- Explode when interacted with player
    if impactData.targetObject:IsA("Player") then
        Blast(impactPosition)
        return
    end

    -- Explode if the remaining bounces is 0
    if Object.IsValid(impactData.projectile) then
        if impactData.projectile.bouncesRemaining == 0 then
            Blast(impactPosition)
            return
        end
    end

    -- Play bounce sound if there is still bounces remaining
    if BOUNCE_SOUND then
        World.SpawnAsset(BOUNCE_SOUND, {position = impactPosition})
    end
end

-- nil OnProjectileSpawned(Weapon, Projectile)
-- Register lifespan end explosion to simulate projectile cooking
function OnProjectileSpawned(weapon, projectile)
    projectile.lifeSpanEndedEvent:Connect(function(destroyedProjectile)
        Blast(destroyedProjectile:GetWorldPosition())
    end)
end

-- Initialize
WEAPON.targetImpactedEvent:Connect(OnTargetImpactedEvent)
WEAPON.projectileSpawnedEvent:Connect(OnProjectileSpawned)
����ŭ���� Modern Weapon - Pistol 01 (Prop)b�
� �������o*��������oModern Weapon - Pistol 01"  �?  �?  �?(�䵬�Ά��2L��ʈ���2�ǈ���ߣ.��É�������ӯ����.�������җ����ӌY�ǈ���Κ���؈�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ʈ���2"Modern Weapon Accessory - Laser 01"

c�ZA�zA gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 *��ǈ���ߣ.Modern Weapon - Slide 01"

^���kA gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ƶ�����	088�
 *���É�����Trigger - Rear"$

ֈ@�N�@���BX94<���<��L=(�������oZa
(
ma:Shared_BaseMaterial:id�
͈�����
5
ma:Shared_BaseMaterial:color�u�>u�>u�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *���ӯ����.Modern Weapon - Grip 04"$
�-�? ���W
A gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ṽ溢��088�
 *��������Modern Weapon - Magazine 04"$

�ƀ��Γ�   �gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ѣީя��o088�
 *�җ����ӌYModern Weapon - Sight 02"

�QNAُA gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *��ǈ���Κ� Modern Weapon - Sight Forward 01"

�C�Az�A gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ᯬ�����f088�
 *���؈�����Modern Weapon - Sight Rear 01"

�ޞ���A gff?gff?gff?(�������oZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ڭ������~088�
 -
TemplateAssetRefModern_Weapon_-_Pistol_01
`ڭ������~Modern Weapon - Sight Rear 01R3
StaticMeshAssetRefsm_weap_modern_sight_rear_002
cᯬ�����f Modern Weapon - Sight Forward 01R3
StaticMeshAssetRefsm_weap_modern_sight_forw_001
W��������Modern Weapon - Sight 02R.
StaticMeshAssetRefsm_weap_modern_sight_002
WѢީя��oModern Weapon - Magazine 04R,
StaticMeshAssetRefsm_weap_modern_mag_004
U�ṽ溢��Modern Weapon - Grip 04R-
StaticMeshAssetRefsm_weap_modern_grip_004
Vƶ�����	Modern Weapon - Slide 01R.
StaticMeshAssetRefsm_weap_modern_slide_001
e�������"Modern Weapon Accessory - Laser 01R2
StaticMeshAssetRefsm_weap_modern_acc_laser_001
��ܱ����
Wall Lightb�
� ��������m*���������m
Wall Light"  �?  �?  �?(�ϴ�����v2���ѝݪ��Χ�����)z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ѝݪ��Sci-fi Base Sconce 01"
  HB��3C  �?  �?  �?(��������mZW
#
ma:Shared_Detail1:id�
¼�荴��M
0
ma:Shared_Detail1:color�  �?  �?  �?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ԏ�ߒ�#088�
 *�Χ�����)
Area Light"
 ����  �?  �?  �?(��������mz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�P.��B  �?  �?  �?%  �?%  �@* 2,  �E<�"E*  HB  �A  �B%  �BU @F]  �D
NoneNone
o¼�荴��M Custom Emissive Glow Transparent�>����32

emissive_booste   B

color�  �?
ף;%  �?
R����3Emissive Glow TransparentR)
MaterialAssetRefmi_basic_emissive_001
X��ԏ�ߒ�#Sci-fi Base Sconce 01R3
StaticMeshAssetRefsm_ts_scf_base_sconce_001_ref
����������Submachine Gun Reload Soundb�
� ��Ȫ��ˬ:*���Ȫ��ˬ:Submachine Gun Reload Sound"  �?  �?  �?(�����B2	��끟��RZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���끟��RClient Context"
    �?  �?  �?(��Ȫ��ˬ:2
�����ҽ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *������ҽ��Gun Weapon Reload Set 01 SFX"
    �?  �?  �?(��끟��RZ%
#
bp:Type�
mc:esfx_gunreloads:49z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
������Ĝ�5  �?=  zDE  �BXx�
NoneNone
@�ӊ�����	I-Beam 4mR&
StaticMeshAssetRefsm_i-beam_4m_001
������·��!Modern Weapon - Grenade 01 (Prop)b�
� ��������*���������
Grenade 01")
 ��� P�� ��D��C  �?  �?  �?(ռƓ���ç2���ϊ���Ε������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ϊ���Grenade Canister 01"
    �?  �?  �?(��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������f088�
 *�Ε������Grenade Handle 01"
���A   �?  �?  �?(��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 
TemplateAssetRef
Grenade_01
T�������LGrenade Handle 01R3
StaticMeshAssetRefsm_weapons_grenade_handle_001
V�������fGrenade Canister 01R3
StaticMeshAssetRefsm_weapons_grenade_simple_001
������Τ��LobbyStartResetTeamScoresServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))

-- nil OnGameStateChanged(int, int, bool, float)
-- Handles resetting team scores when the game state switches to lobby
function OnGameStateChanged(oldState, newState, hasDuration, endTime)
	if (newState == ABGS.GAME_STATE_LOBBY and oldState ~= ABGS.GAME_STATE_LOBBY) or
	(newState ~= ABGS.GAME_STATE_LOBBY and oldState == ABGS.GAME_STATE_LOBBY) then
		Game.ResetTeamScores()
	end
end

-- Initialize
Events.Connect("GameStateChanged", OnGameStateChanged)
Game.ResetTeamScores()

Nҁ�������Computer StandR/
StaticMeshAssetRefsm_urb_computer-stand_001
U�騼�ѿ�Sci-fi Base Door 01R1
StaticMeshAssetRefsm_ts_scf_base_door_001_ref
�����͍���HealthBarControllerClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local AS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("TextBox"):WaitForObject()
local PROGRESS_BAR = script:GetCustomProperty("ProgressBar"):WaitForObject()
local AMMO_PANEL = script:GetCustomProperty("AmmoPanel"):WaitForObject()
local AMMO_TEXT = script:GetCustomProperty("AmmoText"):WaitForObject()

-- User exposed properties
local SHOW_NUMBER = COMPONENT_ROOT:GetCustomProperty("ShowNumber")
local SHOW_MAXIMUM = COMPONENT_ROOT:GetCustomProperty("ShowMaximum")
local SHOW_AMMO = COMPONENT_ROOT:GetCustomProperty("ShowAmmo")
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Player GetViewedPlayer()
-- Returns which player the local player is spectating (or themselves if not spectating)
function GetViewedPlayer()
    local specatatorTarget = AS.GetSpectatorTarget()

    if AS.IsSpectating() and specatatorTarget then
        return specatatorTarget
    end

    return LOCAL_PLAYER
end

-- Equipment GetWeapon()
-- Returns weapon that player is using
function GetWeapon(player)
	for i,v in ipairs(player:GetEquipment()) do
		if v:IsA("Weapon") then
			return v
		end
	end
end

function Tick(deltaTime)
    local player = GetViewedPlayer()
    if player then
        local healthFraction = player.hitPoints / player.maxHitPoints
        PROGRESS_BAR.progress = healthFraction

        if SHOW_NUMBER then
            if SHOW_MAXIMUM then
                TEXT_BOX.text = string.format("%.0f / %.0f", player.hitPoints, player.maxHitPoints)
            else
                TEXT_BOX.text = string.format("%.0f", player.hitPoints)
            end
        end

		if SHOW_AMMO then
			local weapon = GetWeapon(player)
			if weapon ~= nil then
				AMMO_TEXT.text = tostring(weapon.currentAmmo)
			end
            AMMO_PANEL.visibility = Visibility.INHERIT
        else
            AMMO_PANEL.visibility = Visibility.FORCE_OFF
        end
    end
end

-- Initialize
if not SHOW_NUMBER then
    TEXT_BOX.visibility = Visibility.FORCE_OFF
end

PROGRESS_BAR.progress = 1

���������Victory Announcerb�
� ���������*����������Victory Announcer"  �?  �?  �?(��������2
�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������VictoryAnnouncerServer"
    �?  �?  �?(���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ө�/%
TemplateAssetRefVictory_Announcer
������ө�/VictoryAnnouncerServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This component listens for victory events and broadcasts banner messages (that can be seen with the Message Banner
component)
--]]

-- nil OnPlayerVictory(Player)
-- Announces the winning player
function OnPlayerVictory(player)
	Events.BroadcastToAllPlayers("BannerMessage", string.format("%s wins!", player.name))
end

-- nil OnPlayerVictory(Player)
-- Announces the winning team
function OnTeamVictory(team)
	Events.BroadcastToAllPlayers("BannerMessage", string.format("Team %d wins!", team))
end

-- nil OnPlayerVictory(Player)
-- Announces that there was a tie
function OnTieVictory(winners)
	Events.BroadcastToAllPlayers("BannerMessage", "Tie!")
end

-- Initialize
Events.Connect("PlayerVictory", OnPlayerVictory)
Events.Connect("TeamVictory", OnTeamVictory)
Events.Connect("TieVictory", OnTieVictory)

i��������Sci-fi Base Railing 02 StairsR;
StaticMeshAssetRef%sm_ts_scf_base_railing_002_angled_ref
@���ݼݏ��Chain Tile 01R"
StaticMeshAssetRefsm_chain_001
A�܊���ݐ�Rock 01R)
StaticMeshAssetRefsm_rock_generic_001
_��϶�Ƅ�Sci-Fi Base Wall 02 HalfR6
StaticMeshAssetRef sm_ts_scf_base_wall_002_half_ref
���Μ���First Person Camera Settingsb�
� 聆������*�聆������First Person Camera Settings"  �?  �?  �?(�����Ϋ�Q2�Ж������߆��먹�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ж�����First Person Player Settings"
    �?  �?  �?(聆������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent����   D  �D%  0B(=  aDE   AM33�?U  �C]  �?e  �?m  Du  Dz&
$mc:emovementcontrolmode:lookrelative�
mc:elookcontrolmode:relative�
mc:efacingmode:faceaimalways�  D�  �A�
mc:eprojectionplane:xy�  �D�  pD��  aD��������!
mc:eabilityaimmode:viewrelative�   @�   @�*��߆��먹�Client Context"
    �?  �?  �?(聆������2	��������FZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������FFirst Person Camera"
  �C   �?  �?  �?(�߆��먹�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�J5  �C=  DB J ]  �Be  �Dpz
mc:erotationmode:lookangle�  �  �B
NoneNone
o�ǔ���%Modern Weapon Ammo - Bullet 01 CasingR9
StaticMeshAssetRef#sm_weap_modern_ammo_bullet_case_001
d�鵂�޲��Sci-fi Base Capsule 02 8mR:
StaticMeshAssetRef$sm_ts_scf_base_acc_cap_whole_001_ref
������̧��Generic Reticleb�
� ��������9*���������9Generic Reticle"  �?  �?  �?(�����B2����������À���&��ކ�����Z-

cs:ExtraRadiuse  pA

cs:StartAnglee  �Bpz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*��������WeaponReticleUIClient"
    �?  �?  �?(��������9ZB

cs:ComponentRoot�
��������9

cs:SegmentsRoot���ކ�����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
к�����ی*����À���&Center"
    �?  �?  �?(��������9Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�#
���į�ԇ�  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���ކ�����Segments"
    �?  �?  �?(��������92(������У�������ַ�����������ˢÑ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������УSegment"
    �?  �?  �?(��ކ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�#
���į�ԇ�  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*��������ַSegment"
 �.e�  �?  �?  �?(��ކ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�#
���į�ԇ�  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*����������Segment"
 �.e�  �?  �?  �?(��ކ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�#
���į�ԇ�  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���ˢÑ���Segment"
    �?  �?  �?(��ކ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��:

mc:euianchor:middlecenter�#
���į�ԇ�  �?  �?  �?%��L?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter
NoneNone
O���į�ԇ�Background Flat 020	R+
PlatformBrushAssetRefBackgroundFlat_020
L��׭횓��Basic MaterialR-
MaterialAssetRefmi_basic_pbr_material_001
Z�ځ�ˑ��<Custom Base Material from Sci-Fi Base Railing 02 Stairs - 4m���ɆԾ�� 
^��ɆԾ��White Metal PillarR<
MaterialAssetRef(mi_ts_scf_base_metal_paint_white_002_ref
�	������ۍ�Submachine Gun Muzzle Flashb�
� �����֛��*������֛��Submachine Gun Muzzle Flash"  �?  �?  �?(�����B2
�����ͯ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ͯ��Client Context"
    �?  �?  �?(�����֛��2��ᄩ�#����і۽����������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���ᄩ�#Generic Muzzleflash VFX"
   ��  �?  �?  �?(�����ͯ��Z$
"
bp:Particle Size Multipliere��?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����������*�����і۽�&Gunshot SMG Sub-Machine Gun Set 01 SFX"
    �?  �?  �?(�����ͯ��Z%
#
bp:Type�
mc:esfx_gunshot_smg:3z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
�������ź�5  �?=  �DE  DXx�*����������&Gunshot SMG Sub-Machine Gun Set 01 SFX"
    �?  �?  �?(�����ͯ��Z&
$
bp:Type�
mc:esfx_gunshot_smg:15z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
�������ź�5  �?=  zDE  HCXx�
NoneNone
g�������ź&Gunshot SMG Sub-Machine Gun Set 01 SFX
R0
AudioBlueprintAssetRefsfxabp_gunshot_smg_ref
h�����ѫ�Sci-Fi Base Wall 02 - Window 01R8
StaticMeshAssetRef"sm_ts_scf_base_wall_002_win_01_ref
����溋���%Urban Pipe Valve Assembly - 01 (Prop)b�
� ��􇧊��/*���􇧊��/%Urban Pipe Valve Assembly - 01 (Prop)"  �?  �?  �?(���������2�����¢�r��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������¢�rUrban Pipe Clamp 01"$
 �.e7��3C   �  �?  �?  �?(��􇧊��/z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��В�����08�
 *���������Urban Pipe Valve 02"$
  B
���B   �  �?  �?  �?(��􇧊��/z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ϣ�08�
 9
TemplateAssetRef%Urban_Pipe_Valve_Assembly_-_01__Prop_
]�����ϣ�Urban Pipe Valve 02R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_valve_002_ref
]��В�����Urban Pipe Clamp 01R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_clamp_001_ref
OҞ螢����Custom Asphalt 01�,�������� 

color�  �@  �@ffF@%  �?
A��������
Asphalt 01R'
MaterialAssetRefmi_gen_asphault_001
6�ּ���ܲ�ConeR!
StaticMeshAssetRefsm_cone_001
\��������/Custom Detail 3 from Sci-fi Console Screen 02_1���ɷ�����

indexe   @
V��ɷ�����Animated ScreenR6
MaterialAssetRef"mi_prop_scf_console_screen_002_ref
���ۯ��%Craftsman Porch Railing 01 - Templateb�
� Ԝ��Ơ���*�Ԝ��Ơ���%Craftsman Porch Railing 01 - Template"  �?  �?  �?(�����B2N�݇����������������Μ����Ӥ�¨�����������������䚼i���ퟢ�ݺ������)z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��݇�����Craftsman Roof 02 Arch"
  D   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ρ»����088�
 *����������Craftsman Roof 02 Eaves"
  /D   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������͎088�
 *���Μ��� Craftsman Porch Fence Railing 01"

  �C  C   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����٣���088�
 *��Ӥ�¨���Craftsman Porch 01 Foundation"
    �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ʒ�����1088�
 *����������Craftsman Porch 01 End Block"
    �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���З����088�
 *������䚼iCraftsman Porch Pillar 01"
  C   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ձ���κ;08�
 *����ퟢ� Craftsman Porch Fence Railing 01"
  C   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����٣���088�
 *�ݺ������)Craftsman Porch Fence Post 01"

  �C  C   �?  �?  �?(Ԝ��Ơ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ͥ��088�
 9
TemplateAssetRef%Craftsman_Porch_Railing_01_-_Template
f����ͥ��Craftsman Porch Fence Post 01R9
StaticMeshAssetRef#sm_urb_sub_craftsman_porch_001_post
d�ձ���κ;Craftsman Porch Pillar 01R;
StaticMeshAssetRef%sm_urb_sub_craftsman_porch_001_pillar
g���З����Craftsman Porch 01 End BlockR:
StaticMeshAssetRef$sm_urb_sub_craftsman_porch_001_block
lʒ�����1Craftsman Porch 01 FoundationR?
StaticMeshAssetRef)sm_urb_sub_craftsman_porch_001_foundation
j����٣��� Craftsman Porch Fence Railing 01R9
StaticMeshAssetRef#sm_urb_sub_craftsman_porch_001_rail
`������͎Craftsman Roof 02 EavesR9
StaticMeshAssetRef#sm_urb_sub_craftsman_roof_eaves_002
^ρ»����Craftsman Roof 02 ArchR8
StaticMeshAssetRef"sm_urb_sub_craftsman_roof_002_arch
p��Г�����Custom Metal Diamond Plates 01�@��������H4

rust_amounte    

color��̌>�̌>�̌>%  �?
Z��������HMetal Diamond Plates 01R3
MaterialAssetRefmi_metal_rust_diamond-plate_001
���Âڔ���SlidingDoorControllerClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local DOOR_ROOT = script:GetCustomProperty("DoorRoot"):WaitForObject()
local OPEN_SOUND = script:GetCustomProperty("OpenSound"):WaitForObject()
local CLOSE_SOUND = script:GetCustomProperty("CloseSound"):WaitForObject()

-- User exposed properties
local OPEN_DISTANCE = COMPONENT_ROOT:GetCustomProperty("OpenDistance")

-- Variable
local previousOffset = 0.0

-- float GetDoorOffset()
-- Gives you the current offset of the door
function GetDoorOffset()
	local result = -DOOR_ROOT:GetPosition().y / OPEN_DISTANCE

	if math.abs(result) < 0.01 then
		return 0.0
	end

	return result
end

-- nil Tick(float)
-- Plays sounds when the door begins opening or finishes closing
function Tick(deltaTime)
	local doorOffset = GetDoorOffset()

	if doorOffset ~= 0.0 and previousOffset == 0.0 and OPEN_SOUND then
		OPEN_SOUND:Play()
	end

	if doorOffset == 0.0 and previousOffset ~= 0.0 and CLOSE_SOUND then
		CLOSE_SOUND:Play()
	end

	previousOffset = doorOffset
end

-- Initialize
previousOffset = GetDoorOffset()

o������%Modern Weapon Ammo - Bullet 02 CasingR9
StaticMeshAssetRef#sm_weap_modern_ammo_bullet_case_002
Fض����ٓ�Torch Fire VFXR'
VfxBlueprintAssetReffxbp_torch_fire
����ʮ�Ɗ�APISpectatorZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
The spectator API tracks which state the local player is in. It does not actually implement behavior such as controlling
the players camera or reacting to keybinds.
Valid states are:
    not spectating (default)
    spectating with a nil target (could be looking at your body, could be free cam)
    spectating a specific player

Spectating is a purely client-side concept.
Components that implement this API must also broadcast the following events:

IsSpectatingChanged(bool isSpectating)
SpectatingTargetChanged(Player oldTarget, Player newTarget)
--]]

local API = {}

-- nil SetPlayerIsSpectating(bool) [Client]
-- Set whether the local player is in spectator mode
function API.SetIsSpectating(isSpectating)
	_G.APISpectator_IsSpectating = isSpectating
end

-- bool IsPlayerSpectating() [Client]
-- Returns whether the local player is in spectator mode
function API.IsSpectating()
	if not _G.APISpectator_IsSpectating then
		return false
	end

	return _G.APISpectator_IsSpectating
end

-- nil SetPlayerSpectatorTarget(<Player>) [Client]
-- Set which player the local player  is spectating
function API.SetSpectatorTarget(player)
	_G.APISpectator_TargetPlayer = player
end

-- <Player> GetPlayerSpectatorTarget() [Client]
-- Returns which target the locaal player is spectating
function API.GetSpectatorTarget()
	if not _G.APISpectator_TargetPlayer then
		return nil
	end

	-- The target may have disconnected
	if not Object.IsValid(_G.APISpectator_TargetPlayer) then
		return nil
	end

	return _G.APISpectator_TargetPlayer
end

return API

[����󖓇�Sci-Fi Base Trim 02 4mR4
StaticMeshAssetRefsm_ts_scf_base_trim_002_4m_ref
��ı������Static Player Equipmentb�
� ������̕�*�������̕�Starting Weapon"  �?  �?  �?(��������2
���ܹ����Z�
#
cs:EquipmentTemplate�
��������

cs:TeamX 

cs:ReplaceOnEachRespawnP
E
cs:EquipmentTemplate:tooltipj%Equipment template to give to players
K
cs:Team:tooltipj8If non-zero, only give equipment to players on that team
_
cs:ReplaceOnEachRespawn:tooltipj<Whether to replace that equipment every time a player spawnsz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ܹ����StaticPlayerEquipmentServer"
    �?  �?  �?(������̕�Z"
 
cs:ComponentRoot�������̕�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

˚������/+
TemplateAssetRefStatic_Player_Equipment
�"˚������/StaticPlayerEquipmentServerZ�"�"--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Gives a specific equipment to every player on spawn, and handles destroying them when unneeded. Also optionally
replaces each equipment on respawn to reset the state.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local EQUIPMENT_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("EquipmentTemplate")
local TEAM = COMPONENT_ROOT:GetCustomProperty("Team")
local REPLACE_ON_EACH_RESPAWN = COMPONENT_ROOT:GetCustomProperty("ReplaceOnEachRespawn")

-- Check user properties
if not EQUIPMENT_TEMPLATE then
	error("StaticPlayerEquipment needs an equipment template to function")
end

if TEAM < 0 or TEAM > 4 then
    warn("Team must be a valid team number (1-4) or 0")
    TEAM = 0
end
-- Variables
local playerTeams = {}			-- We use this to detect team changes
local equipment = {}

-- bool AppliesToPlayersTeam(Player)
-- Returns whether this player should get equipment given the team setting
function AppliesToPlayersTeam(player)
	if TEAM == 0 then
		return true
	end

	return TEAM == player.team
end

-- nil GivePlayerEquipment(Player)
-- Gives the referenced equipment to the player
function GivePlayerEquipment(player)
	equipment[player] = World.SpawnAsset(EQUIPMENT_TEMPLATE, {position = Vector3.UP * -100})
	assert(equipment[player]:IsA("Equipment"))
	Task.Wait(1)
	if player then
		equipment[player]:Equip(player)
	end
end

-- nil RemovePlayerEquipment(Player)
-- Removes the referenced requipment if that player has it
function RemovePlayerEquipment(player)
	if equipment[player] and equipment[player]:IsValid() then
		equipment[player]:Unequip()

		-- Have to check IsValid() again, because unequip may have destroyed this equipment
		if equipment[player]:IsValid() then
			equipment[player]:Destroy()
		end

		equipment[player] = nil
	end
end

-- nil OnPlayerRespawned(Player)
-- Replace the equipment if ReplaceOnEachRespawn
function OnPlayerRespawned(player)
	RemovePlayerEquipment(player)

	if AppliesToPlayersTeam(player) then
		GivePlayerEquipment(player)
	end
end

-- nil OnPlayerJoined(Player)
-- Gives original equipment
function OnPlayerJoined(player)
	if TEAM ~= 0 then
		playerTeams[player] = player.team
	end

	if REPLACE_ON_EACH_RESPAWN then
		player.respawnedEvent:Connect(OnPlayerRespawned)
	end

	if AppliesToPlayersTeam(player) then
		GivePlayerEquipment(player)
	end
end

-- nil OnPlayerLeft(Player)
-- Removes equipment
function OnPlayerLeft(player)
	RemovePlayerEquipment(player)
end

-- nil OnPlayerTeamChanged(Player)
-- Handles reassinging equipment if the player changes teams
function OnPlayerTeamChanged(player)
	RemovePlayerEquipment(player)

	if AppliesToPlayersTeam(player) then
		GivePlayerEquipment(player)
	end
end

-- nil Tick(float)
-- Handles players changing teams
function Tick(deltaTime)
	if TEAM ~= 0 then
		for _, player in pairs(Game.GetPlayers()) do
			local team = player.team

			if team ~= playerTeams[player] then
				OnPlayerTeamChanged(player)

				playerTeams[player] = team
			end
		end
	end
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

B�����ߞ��
Asphalt 01R'
MaterialAssetRefmi_gen_asphault_001
�����Ɓ��Lobby Required Playersb�
� ��ޖ��ү*���ޖ��үLobby Required Players"  �?  �?  �?(��ˆ����2���������ߨ��휶�NZ�

cs:RequiredPlayersX

cs:CountdownTimee   A
M
cs:RequiredPlayers:tooltipj/Number of players needed to start the countdown
F
cs:CountdownTime:tooltipj*Time to round after number of players joinz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������LobbyRequiredPlayersServer"
    �?  �?  �?(��ޖ��үZ9

cs:API��Ʀ������

cs:ComponentRoot�
��ޖ��үz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ߛ��μ��*�ߨ��휶�NClientContext"
    �?  �?  �?(��ޖ��ү2�����Gܑ������|Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *������GGameStateWaitingDisplayClient"
    �?  �?  �?(ߨ��휶�NZX

cs:API�
��Ɔ��ξx

cs:WaitingText��Ř�����

cs:ComponentRoot�
��ޖ��үz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������\*�ܑ������|Waiting Container"
    �?  �?  �?(ߨ��휶�N2	��������cZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�":

mc:euianchor:middlecenter� *���������cPanel"
    �?  �?  �?(ܑ������|2
�Ř�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�g�2-  RC:

mc:euianchor:middlecenter� �8


mc:euianchor:topcenter

mc:euianchor:topcenter*��Ř�����Waiting Message Text"
    �?  �?  �?(��������cZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���2:

mc:euianchor:middlecenter�`
*Waiting for {count} more players to start.  �?  �?  �?%  �?"
mc:etextjustify:center(�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter
NoneNone
�#��Ɔ��ξxAPIBasicGameStateZ�#�#--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Basic game states allow a component to handle state replication and other components to set or ask the current state of
the game. The game can be in a state without a duration. In this case, GetTimeRemainingInState() should return nil.
Game state managers broadcast the following event whenever game state or game state end time changes:

GameStateChanged(int oldState, int newState, bool stateHasDuration, float stateEndTime)
--]]

local API = {}

API.GAME_STATE_LOBBY = 0
API.GAME_STATE_ROUND = 1
API.GAME_STATE_ROUND_END = 2

-- nil RegisterGameStateManager(function, function, function, function) [Server]
-- Called once by a manager component that at minimum handles replication.
-- Functions passed in must match signatures of the functions below.
function API.RegisterGameStateManagerServer(stateGetter, stateTimeGetter, stateSetter, stateTimeSetter)
	if _G.APIBasicGameState and _G.APIBasicGameState.registeredOnServer then
		error("A game cannot have multiple game state managers")
	end

	_G.APIBasicGameState = {}
	_G.APIBasicGameState.registeredOnServer = true
	_G.APIBasicGameState.stateGetter = stateGetter
	_G.APIBasicGameState.stateTimeGetter = stateTimeGetter
	_G.APIBasicGameState.stateSetter = stateSetter
	_G.APIBasicGameState.stateTimeSetter = stateTimeSetter
end

-- nil RegisterGameStateManager(function, function) [Client]
-- Called once by a manager component that at minimum handles replication.
-- Functions passed in must match signatures of the functions below.
function API.RegisterGameStateManagerClient(stateGetter, stateTimeGetter)
	if _G.APIBasicGameState and _G.APIBasicGameState.registeredOnClient  then
		error("A game cannot have multiple game state managers")
	end

	_G.APIBasicGameState = {}
	_G.APIBasicGameState.registeredOnClient = true
	_G.APIBasicGameState.stateGetter = stateGetter
	_G.APIBasicGameState.stateTimeGetter = stateTimeGetter
end

-- bool IsGameStateManagerRegistered() [Client, Server]
-- Returns whether a state manager has registered yet.
function API.IsGameStateManagerRegistered()
	return _G.APIBasicGameState ~= nil
end

-- <int> GetGameState() [Client, Server]
-- Returns the state of the game
function API.GetGameState()
	if not _G.APIBasicGameState then
		warn("Cannot get game state with no manager registered")
		return nil
	end

	return _G.APIBasicGameState.stateGetter()
end

-- <float> GetTimeRemainingInState() [Client, Server]
-- Returns the time remaining in the current state, or nil if there is no
-- duration.
function API.GetTimeRemainingInState()
	if not _G.APIBasicGameState then
		warn("Cannot get time remaining with no manager registered")
		return nil
	end

	return _G.APIBasicGameState.stateTimeGetter()
end

-- nil SetGameState(int) [Server]
-- Sets the game state immediately. The game state manager handles the time.
function API.SetGameState(newState)
	if not _G.APIBasicGameState then
		warn("Cannot set game state with no manager registered")
		return
	end

	_G.APIBasicGameState.stateSetter(newState)
end

-- nil GetTimeRemainingInState(float) [Server]
-- Sets the time left in that state
function API.SetTimeRemainingInState(remainingTime)
	if not _G.APIBasicGameState then
		warn("Cannot set time remaining with no manager registered")
		return
	end

	_G.APIBasicGameState.stateTimeSetter(remainingTime)
end

return API

��������\GameStateWaitingDisplayClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local ABGS = require(script:GetCustomProperty("API"))
local WAITING_TEXT = script:GetCustomProperty("WaitingText"):WaitForObject()
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local REQUIRED_PLAYERS = COMPONENT_ROOT:GetCustomProperty("RequiredPlayers")
local STARTING_TEXT = WAITING_TEXT.text
local COUNT_STRING = "{count}"
local usesSubstitution = (string.find(STARTING_TEXT, COUNT_STRING) ~= nil)

-- nil Tick(float)
-- Displays waiting message
function Tick(deltaTime)
	if not ABGS.IsGameStateManagerRegistered() then
		return
	end

	local currentState = ABGS.GetGameState()
	local showWaitingText = false
	if currentState == ABGS.GAME_STATE_LOBBY then
		local currentPlayerCount = #Game:GetPlayers()
		local remainingPlayerCount = REQUIRED_PLAYERS - currentPlayerCount
		if remainingPlayerCount > 0 then
			showWaitingText = true
		end
		if usesSubstitution and showWaitingText then
			WAITING_TEXT.text = string.gsub(STARTING_TEXT, COUNT_STRING, tostring(remainingPlayerCount))
		end
	end
	if showWaitingText then
		WAITING_TEXT.visibility = Visibility.INHERIT
	else
		WAITING_TEXT.visibility = Visibility.FORCE_OFF
	end
end
�#�Ʀ������APIBasicGameStateZ�#�#--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Basic game states allow a component to handle state replication and other components to set or ask the current state of
the game. The game can be in a state without a duration. In this case, GetTimeRemainingInState() should return nil.
Game state managers broadcast the following event whenever game state or game state end time changes:

GameStateChanged(int oldState, int newState, bool stateHasDuration, float stateEndTime)
--]]

local API = {}

API.GAME_STATE_LOBBY = 0
API.GAME_STATE_ROUND = 1
API.GAME_STATE_ROUND_END = 2

-- nil RegisterGameStateManager(function, function, function, function) [Server]
-- Called once by a manager component that at minimum handles replication.
-- Functions passed in must match signatures of the functions below.
function API.RegisterGameStateManagerServer(stateGetter, stateTimeGetter, stateSetter, stateTimeSetter)
	if _G.APIBasicGameState and _G.APIBasicGameState.registeredOnServer then
		error("A game cannot have multiple game state managers")
	end

	_G.APIBasicGameState = {}
	_G.APIBasicGameState.registeredOnServer = true
	_G.APIBasicGameState.stateGetter = stateGetter
	_G.APIBasicGameState.stateTimeGetter = stateTimeGetter
	_G.APIBasicGameState.stateSetter = stateSetter
	_G.APIBasicGameState.stateTimeSetter = stateTimeSetter
end

-- nil RegisterGameStateManager(function, function) [Client]
-- Called once by a manager component that at minimum handles replication.
-- Functions passed in must match signatures of the functions below.
function API.RegisterGameStateManagerClient(stateGetter, stateTimeGetter)
	if _G.APIBasicGameState and _G.APIBasicGameState.registeredOnClient  then
		error("A game cannot have multiple game state managers")
	end

	_G.APIBasicGameState = {}
	_G.APIBasicGameState.registeredOnClient = true
	_G.APIBasicGameState.stateGetter = stateGetter
	_G.APIBasicGameState.stateTimeGetter = stateTimeGetter
end

-- bool IsGameStateManagerRegistered() [Client, Server]
-- Returns whether a state manager has registered yet.
function API.IsGameStateManagerRegistered()
	return _G.APIBasicGameState ~= nil
end

-- <int> GetGameState() [Client, Server]
-- Returns the state of the game
function API.GetGameState()
	if not _G.APIBasicGameState then
		warn("Cannot get game state with no manager registered")
		return nil
	end

	return _G.APIBasicGameState.stateGetter()
end

-- <float> GetTimeRemainingInState() [Client, Server]
-- Returns the time remaining in the current state, or nil if there is no
-- duration.
function API.GetTimeRemainingInState()
	if not _G.APIBasicGameState then
		warn("Cannot get time remaining with no manager registered")
		return nil
	end

	return _G.APIBasicGameState.stateTimeGetter()
end

-- nil SetGameState(int) [Server]
-- Sets the game state immediately. The game state manager handles the time.
function API.SetGameState(newState)
	if not _G.APIBasicGameState then
		warn("Cannot set game state with no manager registered")
		return
	end

	_G.APIBasicGameState.stateSetter(newState)
end

-- nil GetTimeRemainingInState(float) [Server]
-- Sets the time left in that state
function API.SetTimeRemainingInState(remainingTime)
	if not _G.APIBasicGameState then
		warn("Cannot set time remaining with no manager registered")
		return
	end

	_G.APIBasicGameState.stateTimeSetter(remainingTime)
end

return API

��ߛ��μ��LobbyRequiredPlayersServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local REQUIRED_PLAYERS = COMPONENT_ROOT:GetCustomProperty("RequiredPlayers")
local COUNTDOWN_TIME = COMPONENT_ROOT:GetCustomProperty("CountdownTime")

-- Check user properties
if REQUIRED_PLAYERS < 1 then
    warn("RequiredPlayers must be positive")
    REQUIRED_PLAYERS = 1
end

if COUNTDOWN_TIME < 0.0 then
    warn("CountdownTime must be non-negative")
    COUNTDOWN_TIME = 0.0
end

-- nil Tick(float)
-- Handles setting a timer in the lobby game state when there are enough players in the game
function Tick(deltaTime)
	if not ABGS.IsGameStateManagerRegistered() then
		return
	end

	if ABGS.GetGameState() == ABGS.GAME_STATE_LOBBY and ABGS.GetTimeRemainingInState() == nil then
		local players = Game.GetPlayers()
		if #players >= REQUIRED_PLAYERS then
			ABGS.SetTimeRemainingInState(COUNTDOWN_TIME)
		end
	end
end

�,Ç�������ScoreboardControllerClientZ�+�+--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CANVAS = script:GetCustomProperty("Canvas"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local LINE_TEMPLATE = script:GetCustomProperty("LineTemplate")

-- User exposed properties
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding")
local SHOW_AT_ROUND_END = COMPONENT_ROOT:GetCustomProperty("ShowAtRoundEnd")
local ROUND_END_DURATION = COMPONENT_ROOT:GetCustomProperty("RoundEndDuration")

-- Check user properties
if SHOW_AT_ROUND_END and ROUND_END_DURATION <= 0.0 then
    warn("RoundEndDuration must be positive")
    ROUND_END_DURATION = 5.0
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local FRIENDLY_COLOR = Color.New(0.0, 0.25, 1.0)
local ENEMY_COLOR = Color.New(1.0, 0.0, 0.0)

-- Variables
local headerLine = nil
local playerLines = {}
local atRoundEnd = false
local roundEndTime = 0.0
local bindingDown = false

-- nil OnBindingPressed(Player, string)
-- Keep track of the binding state to show the scoreboard 
function OnBindingPressed(player, binding)
    if binding == BINDING then
        bindingDown = true
    end
end

-- nil OnBindingReleased(Player, string)
-- Keep track of the binding state to show the scoreboard 
function OnBindingReleased(player, binding)
    if binding == BINDING then
        bindingDown = false
    end
end

-- nil OnPlayerJoined(Player)
-- Add a line to the scoreboard when a player joins
function OnPlayerJoined(player)
    local newLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
    newLine.y = newLine.height * (#playerLines + 1)
    table.insert(playerLines, newLine)
end

-- nil OnPlayerLeft(Player)
-- Remove a line when a player leaves
function OnPlayerLeft(player)
    playerLines[#playerLines]:Destroy()
    playerLines[#playerLines] = nil
end

-- nil OnRoundEnd()
-- Handles showing the scoreboard if ShowAtRoundEnd is selected
function OnRoundEnd()
    roundEndTime = time()
    atRoundEnd = true
end

-- bool ComparePlayers(Player, Player)
-- Comparing function that sets the sorting order
function ComparePlayers(player1, player2)
    -- First sort by team
    if player1.team ~= player2.team then
        return player1.team < player2.team
    end

    -- Second we use kills
    if player1.kills ~= player2.kills then
        return player1.kills > player2.kills
    end

    -- Third we use deaths
    if player1.deaths ~= player2.deaths then
        return player1.deaths < player2.deaths
    end

    -- Use name to ensure consistent order for players that are tied
    return player1.name < player2.name
end

-- nil Tick(float)
-- Update visibility and displayed information
function Tick(deltaTime)
    if atRoundEnd and time() - roundEndTime > ROUND_END_DURATION then
        atRoundEnd = false
    end

    if bindingDown or atRoundEnd then
        CANVAS.visibility = Visibility.INHERIT

        local players = Game.GetPlayers() 
        table.sort(players, ComparePlayers)

        for i, player in ipairs(players) do
            local teamColor = FRIENDLY_COLOR

            if player ~= LOCAL_PLAYER and Teams.AreTeamsEnemies(player.team, LOCAL_PLAYER.team) then
                teamColor = ENEMY_COLOR
            end

            local line = playerLines[i]
            line:GetCustomProperty("Name"):WaitForObject().text = player.name
            line:GetCustomProperty("Name"):WaitForObject():SetColor(teamColor)
            line:GetCustomProperty("KillsText"):WaitForObject().text = tostring(player.kills)
            line:GetCustomProperty("DeathsText"):WaitForObject().text = tostring(player.deaths)
        end
    else
        CANVAS.visibility = Visibility.FORCE_OFF
    end
end

-- Initialize
CANVAS.visibility = Visibility.FORCE_OFF

headerLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
headerLine:GetCustomProperty("Name"):WaitForObject().text = "Name"
headerLine:GetCustomProperty("KillsText"):WaitForObject().text = "Kills"
headerLine:GetCustomProperty("DeathsText"):WaitForObject().text = "Deaths"

Game.playerLeftEvent:Connect(OnPlayerLeft)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

if SHOW_AT_ROUND_END then
    Game.roundEndEvent:Connect(OnRoundEnd)
end

Y�҆����-Custom Detail 3 from Sci-fi Console Screen 02���݋����

indexe  �?
U��݋����Animated ScreenR6
MaterialAssetRef"mi_prop_scf_console_screen_002_ref
�c�ͅ宐ד�NameplateControllerClientZ�c�c--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local AS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local NAMEPLATE_TEMPLATE = script:GetCustomProperty("NameplateTemplate")

-- User exposed properties
local SHOW_NAMES = COMPONENT_ROOT:GetCustomProperty("ShowNames")
local SHOW_HEALTHBARS = COMPONENT_ROOT:GetCustomProperty("ShowHealthbars")
local SHOW_ON_SELF = COMPONENT_ROOT:GetCustomProperty("ShowOnSelf")
local SHOW_ON_TEAMMATES = COMPONENT_ROOT:GetCustomProperty("ShowOnTeammates")
local MAX_DISTANCE_ON_TEAMMATES = COMPONENT_ROOT:GetCustomProperty("MaxDistanceOnTeammates")
local SHOW_ON_ENEMIES = COMPONENT_ROOT:GetCustomProperty("ShowOnEnemies")
local MAX_DISTANCE_ON_ENEMIES = COMPONENT_ROOT:GetCustomProperty("MaxDistanceOnEnemies")
local SHOW_ON_DEAD_PLAYERS = COMPONENT_ROOT:GetCustomProperty("ShowOnDeadPlayers")
local SCALE = COMPONENT_ROOT:GetCustomProperty("Scale")
local SHOW_NUMBERS = COMPONENT_ROOT:GetCustomProperty("ShowNumbers")
local ANIMATE_CHANGES = COMPONENT_ROOT:GetCustomProperty("AnimateChanges")
local CHANGE_ANIMATION_TIME = COMPONENT_ROOT:GetCustomProperty("ChangeAnimationTime")

-- User exposed properties (colors)
local FRIENDLY_NAME_COLOR = COMPONENT_ROOT:GetCustomProperty("FriendlyNameColor")
local ENEMY_NAME_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyNameColor")
local BORDER_COLOR = COMPONENT_ROOT:GetCustomProperty("BorderColor")
local BACKGROUND_COLOR = COMPONENT_ROOT:GetCustomProperty("BackgroundColor")
local FRIENDLY_HEALTH_COLOR = COMPONENT_ROOT:GetCustomProperty("FriendlyHealthColor")
local ENEMY_HEALTH_COLOR = COMPONENT_ROOT:GetCustomProperty("EnemyHealthColor")
local DAMAGE_CHANGE_COLOR = COMPONENT_ROOT:GetCustomProperty("DamageChangeColor")
local HEAL_CHANGE_COLOR = COMPONENT_ROOT:GetCustomProperty("HealChangeColor") 
local HEALTH_NUMBER_COLOR = COMPONENT_ROOT:GetCustomProperty("HealthNumberColor") 

-- Check user properties
if MAX_DISTANCE_ON_TEAMMATES < 0.0 then
    warn("MaxDistanceOnTeammates cannot be negative")
    MAX_DISTANCE_ON_TEAMMATES = 0.0
end

if MAX_DISTANCE_ON_ENEMIES < 0.0 then
    warn("MaxDistanceOnEnemies cannot be negative")
    MAX_DISTANCE_ON_ENEMIES = 0.0
end

if SCALE <= 0.0 then
    warn("Scale must be positive")
    SCALE = 1.0
end

if CHANGE_ANIMATION_TIME <= 0.0 then
    warn("ChangeAnimationTime must be positive")
    CHANGE_ANIMATION_TIME = 1.0
end

--Constants
-- In units of scale
local BORDER_WIDTH = 0.02
local NAMEPLATE_LAYER_THICKNESS = 0.01			-- To force draw order
local HEALTHBAR_WIDTH = 1.5
local HEALTHBAR_HEIGHT = 0.08

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Variables
local nameplates = {}

-- Player GetViewedPlayer()
-- Returns which player the local player is spectating (or themselves if not spectating)
function GetViewedPlayer()
	local specatatorTarget = AS.GetSpectatorTarget()

	if AS.IsSpectating() and specatatorTarget then
		return specatatorTarget
	end

	return LOCAL_PLAYER
end

-- nil OnPlayerJoined(Player)
-- Creates a nameplate for the local player to see the target player's status
function OnPlayerJoined(player)
	local nameplateRoot = World.SpawnAsset(NAMEPLATE_TEMPLATE)

	nameplates[player] = {}
	nameplates[player].templateRoot = nameplateRoot
	nameplates[player].borderPiece = nameplateRoot:GetCustomProperty("BorderPiece"):WaitForObject()
	nameplates[player].backgroundPiece = nameplateRoot:GetCustomProperty("BackgroundPiece"):WaitForObject()
	nameplates[player].healthPiece = nameplateRoot:GetCustomProperty("HealthPiece"):WaitForObject()
	nameplates[player].changePiece = nameplateRoot:GetCustomProperty("ChangePiece"):WaitForObject()
	nameplates[player].healthText = nameplateRoot:GetCustomProperty("HealthText"):WaitForObject()
	nameplates[player].nameText = nameplateRoot:GetCustomProperty("NameText"):WaitForObject()

	-- For animating changes. Each change clobbers the previous state.
	nameplates[player].lastHealthFraction = 1.0
	nameplates[player].lastHealthTime = 0.0
	nameplates[player].lastFrameHealthFraction = 1.0

	-- Setup static properties
	nameplateRoot:AttachToPlayer(player, "nameplate")
	nameplateRoot:SetScale(Vector3.New(SCALE, SCALE, SCALE))

	-- Static properties on pieces
	nameplates[player].borderPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH + 2.0 * BORDER_WIDTH, HEALTHBAR_HEIGHT + 2.0 * BORDER_WIDTH))
	nameplates[player].borderPiece:SetPosition(Vector3.New(-3.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))
	nameplates[player].borderPiece:SetColor(BORDER_COLOR)
	nameplates[player].backgroundPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH, HEALTHBAR_HEIGHT))
	nameplates[player].backgroundPiece:SetPosition(Vector3.New(-2.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))
	nameplates[player].backgroundPiece:SetColor(BACKGROUND_COLOR)
	nameplates[player].healthText:SetPosition(Vector3.New(50.0 * NAMEPLATE_LAYER_THICKNESS, 0.0, 0.0))		-- Text must be 50 units ahead as it doesn't have thickness
	nameplates[player].healthText:SetColor(HEALTH_NUMBER_COLOR)
	nameplates[player].nameText.text = player.name

	nameplates[player].borderPiece.visibility = Visibility.FORCE_OFF
	nameplates[player].backgroundPiece.visibility = Visibility.FORCE_OFF
	nameplates[player].healthPiece.visibility = Visibility.FORCE_OFF
	nameplates[player].changePiece.visibility = Visibility.FORCE_OFF
	nameplates[player].healthText.visibility = Visibility.FORCE_OFF
	nameplates[player].nameText.visibility = Visibility.FORCE_OFF

	if SHOW_HEALTHBARS then
		nameplates[player].borderPiece.visibility = Visibility.INHERIT
		nameplates[player].backgroundPiece.visibility = Visibility.INHERIT
		nameplates[player].healthPiece.visibility = Visibility.INHERIT

		if ANIMATE_CHANGES then
			nameplates[player].changePiece.visibility = Visibility.INHERIT
		end

		if SHOW_NUMBERS then
			nameplates[player].healthText.visibility = Visibility.INHERIT
		end
	end

	if SHOW_NAMES then
		nameplates[player].nameText.visibility = Visibility.INHERIT
	end
end

-- nil OnPlayerLeft(Player)
-- Destroy their nameplate
function OnPlayerLeft(player)
	nameplates[player].templateRoot:Destroy()
	nameplates[player] = nil
end

-- bool IsNameplateVisible(Player)
-- Can we see this player's nameplate given team and distance properties?
function IsNameplateVisible(player)
	if player.isDead and not SHOW_ON_DEAD_PLAYERS then
		return false
	end

	if player == GetViewedPlayer() then
		return SHOW_ON_SELF
	end

	-- 0 distance is special, and means we always display them
	if player == GetViewedPlayer() or Teams.AreTeamsFriendly(player.team, GetViewedPlayer().team) then
		if SHOW_ON_TEAMMATES then
			local distance = (player:GetWorldPosition() - GetViewedPlayer():GetWorldPosition()).size
			if MAX_DISTANCE_ON_TEAMMATES == 0.0 or distance <= MAX_DISTANCE_ON_TEAMMATES then
				return true
			end
		end
	else
		if SHOW_ON_ENEMIES then
			local distance = (player:GetWorldPosition() - GetViewedPlayer():GetWorldPosition()).size
			if MAX_DISTANCE_ON_ENEMIES == 0.0 or distance <= MAX_DISTANCE_ON_ENEMIES then
				return true
			end
		end
	end

	return false
end

-- nil RotateNameplate(CoreObject)
-- Called every frame to make nameplates align with the local view
function RotateNameplate(nameplate)
	local quat = Quaternion.New(LOCAL_PLAYER:GetViewWorldRotation())
	quat = quat * Quaternion.New(Vector3.UP, 180.0)
	nameplate.templateRoot:SetWorldRotation(Rotation.New(quat))
end

-- nil Tick(float)
-- Update dynamic properties (ex. team, health, and health animation) of every nameplate
function Tick(deltaTime)
	for _, player in pairs(Game.GetPlayers()) do
		local nameplate = nameplates[player]

		if nameplate then
			-- We calculate visibility every frame to handle when teams change
			local visible = IsNameplateVisible(player)

			if not visible then
				nameplate.templateRoot.visibility = Visibility.FORCE_OFF
			else
				nameplate.templateRoot.visibility = Visibility.INHERIT
				RotateNameplate(nameplate)

				if SHOW_HEALTHBARS then
					local healthFraction = player.hitPoints / player.maxHitPoints
					local visibleHealthFraction = healthFraction			-- For animating changes

					-- Set size and position of change piece
					if ANIMATE_CHANGES then
						local timeSinceChange = CoreMath.Clamp(time() - nameplate.lastHealthTime, 0.0, CHANGE_ANIMATION_TIME)
						local timeScale = 1.0 - timeSinceChange / CHANGE_ANIMATION_TIME
						local changeFraction = timeScale * (nameplate.lastHealthFraction - healthFraction)
						nameplate.changePiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH * math.abs(changeFraction), HEALTHBAR_HEIGHT))

						if changeFraction == 0.0 then
							nameplate.changePiece.visibility = Visibility.FORCE_OFF
						else
							nameplate.changePiece.visibility = Visibility.INHERIT

							if changeFraction > 0.0 then		-- Player took damage
								local changePieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 - changeFraction) - 100.0 * HEALTHBAR_WIDTH * healthFraction
								nameplate.changePiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, changePieceOffset, 0.0))
								nameplate.changePiece:SetColor(DAMAGE_CHANGE_COLOR)
							else								-- Player was healed	
								visibleHealthFraction = visibleHealthFraction + changeFraction
								local changePieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 + changeFraction) - 100.0 * HEALTHBAR_WIDTH * visibleHealthFraction
								nameplate.changePiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, changePieceOffset, 0.0))
								nameplate.changePiece:SetColor(HEAL_CHANGE_COLOR)
							end
						end

						-- Detect health changes to set the animation state
						if healthFraction ~= nameplate.lastFrameHealthFraction then
							-- If you just respawned, don't show it like a big heal
							if nameplate.lastFrameHealthFraction == 0.0 then
								nameplate.lastHealthTime = 0.0
								nameplate.lastHealthFraction = healthFraction
							else
								nameplate.lastHealthTime = time()
								nameplate.lastHealthFraction = nameplate.lastFrameHealthFraction
							end
							
							nameplate.lastFrameHealthFraction = healthFraction
						end
					end

					-- Set size and position of health bar
					local healthPieceOffset = 50.0 * HEALTHBAR_WIDTH * (1.0 - visibleHealthFraction)
					nameplate.healthPiece:SetScale(Vector3.New(NAMEPLATE_LAYER_THICKNESS, HEALTHBAR_WIDTH * visibleHealthFraction, HEALTHBAR_HEIGHT))
					nameplate.healthPiece:SetPosition(Vector3.New(-1.0 * NAMEPLATE_LAYER_THICKNESS, healthPieceOffset, 0.0))

					-- Update hit point number
					if SHOW_NUMBERS then
						nameplate.healthText.text = string.format("%.0f / %.0f", player.hitPoints, player.maxHitPoints)
					end
				end

				-- Update name and health color based on teams
				if SHOW_NAMES then
					local nameColor = nil
					local healthColor = nil

					if player == LOCAL_PLAYER or Teams.AreTeamsFriendly(player.team, LOCAL_PLAYER.team) then
						nameColor = FRIENDLY_NAME_COLOR
						healthColor = FRIENDLY_HEALTH_COLOR
					else
						nameColor = ENEMY_NAME_COLOR
						healthColor = ENEMY_HEALTH_COLOR
					end

					nameplate.nameText:SetColor(nameColor)
					nameplate.healthPiece:SetColor(healthColor)
				end
			end
		end
	end
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

X��������Decal Road Sign SymbolsR0
DecalBlueprintAssetRefbp_decal_roadsigns_001
���������WeaponPickupTriggerServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    Custom pickup script adds additional features to pickup functionality such as
    pickup sound and enabling trigger collision on equipment unequipped event.
 ]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

-- Exposed variables --
local PICKUP_SOUND = EQUIPMENT:GetCustomProperty("PickupSound")

-- Internal variables --
local DEFAULT_LIFESPAN = 1

-- nil OnEquipped(Equipment)
function OnEquipped(equipment, player)

    -- Turn off trigger once equipped
    if Object.IsValid(TRIGGER) then
        TRIGGER.collision = Collision.FORCE_OFF
    end

    -- Spawn a pickup sound when a player picks up the weapon
    if PICKUP_SOUND then
        local pickupSound = World.SpawnAsset(PICKUP_SOUND, {position = script:GetWorldPosition()})

        -- Set a default lifespan if the pickup sound template has 0 lifeSpan
        if pickupSound.lifeSpan == 0 then
            pickupSound.lifeSpan = DEFAULT_LIFESPAN
        end
    end
end

-- nil OnUnequipped(Equipment)
function OnUnequipped(equipment)
    -- Make sure that the equipment and trigger still exists
    if Object.IsValid(equipment) and Object.IsValid(TRIGGER) then

        -- Make the equipment pickable again after a second
        if TRIGGER:IsCollidableInHierarchy() then
            Task.Wait(1)
            if Object.IsValid(TRIGGER) then
                TRIGGER.collision = Collision.INHERIT
            end
        else
            -- Destroy the equipment if it's not interactable
            equipment:Destroy()
        end
    end
end

-- Initialize
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)
?����ӷ���Metal Basic SteelR
MaterialAssetRef	steel_001
���ƽ�����Sci-fi Terminal 01(Prop)b�
� ���̸����*����̸����Sci-fi Terminal 01(Prop)"  �?  �?  �?(�����B2�Ȫ����Ɍ�Ѯ�♺��������ʸ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ȫ����ɌSci-fi Terminal Base 01"

  �@   9   �?  �?  �?(���̸����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *��Ѯ�♺��Sci-fi Console Screen 01"

  ��  �B   �?  �?  �?(���̸����Z%
#
ma:Shared_Detail3:id�
р������Qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������ǘ088�
 *�������ʸ�Sci-fi Terminal Keyboard 01"$

  �@  C B  �?  �?  �?(���̸����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 ,
TemplateAssetRefSci-fi_Terminal_01_Prop_
`��������Sci-fi Terminal Keyboard 01R4
StaticMeshAssetRefsm_prop_scifi_keyboard_001_ref
[р������Q/Custom Detail 3 from Sci-fi Console Screen 01_1��爏����

indexe   @
W�爏����Animated ScreenR7
MaterialAssetRef#mi_prop_scf_terminal_screen_001_ref
[������ǘSci-fi Console Screen 01R2
StaticMeshAssetRefsm_prop_scifi_screen_001_ref
a���������Sci-fi Terminal Base 01R9
StaticMeshAssetRef#sm_prop_scifi_terminal_base_001_ref
t¦��䩰�%Sci-Fi Base Wall 02 - Doorway 02 HalfR>
StaticMeshAssetRef(sm_ts_scf_base_wall_002_door_02_half_ref
�̷��ᆈ�� Urban Pipe Straight  - 01 (Prop)b�
� ���̀ك�*����̀ك� Urban Pipe Straight  - 01 (Prop)"  �?  �?  �?(�����B2f��������"�����������ǁ�3��շ�������̍��6�ȁ�ŝ��A���������������
����މ��i��頓��ʽ������¢Nz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������"Urban Pipe Straight"$
  z�
  ��'ar8  �?  �?  �@(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *�������Urban Pipe Coupline 03".

  \�   �� 4A��������  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *������ǁ�3Urban Pipe Clamp 03"$

  H�   B����  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ߢߊ����B08�
 *���շ�����Urban Pipe Clamp 03"$

  ��   B����  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ߢߊ����B08�
 *���̍��6Urban Pipe Coupling 05")
  ���3��������B  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�؞������08�
 *��ȁ�ŝ��AUrban Pipe Flange 01")
  \����B���B  ��  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *���������Urban Pipe Flange 01"$
  \�
  ����3�  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *��������
Urban Pipe Coupling 02"
 ���  ��  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������08�
 *�����މ��iUrban Pipe Coupling 04")
  ����`����B����  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
پ͍����08�
 *���頓��ʽUrban Pipe Straight"$
  ��
  ��'ar8  �?  �?  @@(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *�������¢NUrban Pipe Straight"$
   �B  ����7  �?  �?  �?(���̀ك�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 4
TemplateAssetRef Urban_Pipe_Straight__-_01__Prop_
cپ͍����Urban Pipe Coupling 04R<
StaticMeshAssetRef&sm_prop_urb_pipes_acc_coupling_004_ref
c������Urban Pipe Coupling 02R<
StaticMeshAssetRef&sm_prop_urb_pipes_acc_coupling_002_ref
\ߢߊ����BUrban Pipe Clamp 03R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_clamp_003_ref
c���������Urban Pipe Coupline 03R<
StaticMeshAssetRef&sm_prop_urb_pipes_acc_coupling_003_ref
C���������Metal Iron 01R%
MaterialAssetRefmi_metal_iron_001
J�쎶�ѹ��Metal Iron Rusted 01R%
MaterialAssetRefmi_metal_iron_002
N�Ս��ȼ��Ring - Quarter ThinR*
StaticMeshAssetRefsm_quarter_torus_001
]�������Modern Weapon - Foregrip 03R1
StaticMeshAssetRefsm_weap_modern_foregrip_003
[����ڭ���Decal Numbers and Symbols 01R.
DecalBlueprintAssetRefbp_decal_numbers_002
����������BasicGameStateManagerClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()

-- int GetGameState()
-- Gets the current state. Passed to API
function GetGameState()
	return SERVER_SCRIPT:GetCustomProperty("State")
end

-- <float> GetTimeRemainingInState()
-- Gets time remaining in state, or nil. Passed to API
function GetTimeRemainingInState()
	if not SERVER_SCRIPT:GetCustomProperty("StateHasDuration") then
		return nil
	end

	local endTime = SERVER_SCRIPT:GetCustomProperty("StateEndTime")
	return math.max(endTime - time(), 0.0)
end

-- Initialize
ABGS.RegisterGameStateManagerClient(GetGameState, GetTimeRemainingInState)

q���������Custom Fabric Burlap New 01�D�ѵ����γ7

material_scalee  �@

color�-�>K�>��3?%  �?
T�ѵ����γFabric Burlap New 01R/
MaterialAssetRefmi_fan_fabric_burlap_002_uv
c�ˎދ��̹Sci-Fi Base Railing 02 - 4mR7
StaticMeshAssetRef!sm_ts_scf_base_railing_002_4m_ref
�ގ�Ŵ����-SciFi Airlock Servo Movement Door Open 01 SFXRF
AudioAssetRef5sfx_scifi_airlock_servo_movement_door_open_01_Cue_ref
����գ����Sci-fi Ship Cockpit (Prop)b�
� ��鍕��*���鍕��SciFi Ship Cockpit (Prop)"  �?  �?  �?(�����B2s��������Ӌ�������Ƹ��ٹ^ή��ɮ��9�ķ����Ǣ�ɑ����4�ъ�������������A���ӵ�ꋻ�؝�﮿�������¹�����������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Scifi Cockpit Back 01"
  ��   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ߚ��O08�
 *���Ӌ�����Scifi Cockpit Console 001"
  �B   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������.08�
 *���Ƹ��ٹ^!Scifi Cockpit Control Terminal 01"$
  C  �A  HB   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *�ή��ɮ��9!Scifi Cockpit Control Terminal 02"

  C  HB   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ؓ������w08�
 *��ķ����ǢScifi CockPit Control Yoke"

  �B  4B   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ײ�M08�
 *��ɑ����4!Scifi Cockpit Control Throttle 01"$
  �B  H�`z�A   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��җЂ��&08�
 *��ъ�����Scifi Cockpit Sideguard 01"

  �@  H�   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *���������AScifi Cockpit Siderail 01"

  �B  p�   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 *����ӵ�ꋻ!Scifi Cockpit Control Terminal 01"$
  C  ��  HB   �?  ��  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *��؝�﮿��Scifi Cockpit Sideguard 01"

  �@  HB   �?  ��  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *������¹��Scifi Ship Chair 01"
   B   �?  �?  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�È�����@08�
 *����������Scifi Cockpit Siderail 01"

  �B  pB   �?  ��  �?(��鍕��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 -
TemplateAssetRefSciFi_Ship_Cockpit__Prop_
R�È�����@Scifi Ship Chair 01R/
StaticMeshAssetRefsm_scf_ship_chair_001_ref
d�����⥀�Scifi Cockpit Siderail 01R:
StaticMeshAssetRef$sm_scf_ship_cockpit_siderail_001_ref
e�����צ�GScifi Cockpit Sideguard 01R;
StaticMeshAssetRef%sm_scf_ship_cockpit_sideguard_001_ref
p��җЂ��&!Scifi Cockpit Control Throttle 01R?
StaticMeshAssetRef)sm_scf_ship_cockpit_ctrl_throttle_001_ref
`�����ײ�MScifi CockPit Control YokeR6
StaticMeshAssetRef sm_scf_ship_cockpit_yoke_001_ref
pؓ������w!Scifi Cockpit Control Terminal 02R?
StaticMeshAssetRef)sm_scf_ship_cockpit_ctrl_terminal_001_ref
u��շ�Ԑ��!Scifi Cockpit Control Terminal 01RC
StaticMeshAssetRef-sm_scf_ship_cockpit_ctrl_terminal_aux_001_ref
b�������.Scifi Cockpit Console 001R9
StaticMeshAssetRef#sm_scf_ship_cockpit_console_001_ref
[����ߚ��OScifi Cockpit Back 01R6
StaticMeshAssetRef sm_scf_ship_cockpit_back_001_ref
����я����Grenade Projectileb�
� �ČҒ���G*��ČҒ���GGrenade Projectile"  �?  �?  �?(�����B2	��멗ؑ�\Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���멗ؑ�\Client Context"
    �?  �?  �?(�ČҒ���G2	���ϭ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����ϭ��!Modern Weapon - Grenade 02 (Prop)"
   �   �?  �?  �?(��멗ؑ�\2Х����᡻���˩ֹάZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Х����᡻Grenade Canister 04"
    �?  �?  �?(���ϭ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ő_088�
 *����˩ֹάGrenade Handle 01"
x�eA   �?  �?  �?(���ϭ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 
NoneNone
V�����ő_Grenade Canister 04R3
StaticMeshAssetRefsm_weapons_grenade_sphere_001
�竩��׷Rifle Muzzle Flashb�
� ����񣺵�*�����񣺵�Rifle Muzzle Flash"
    �?  �?  �?(�������ˬ2
����ĥ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ĥ��Client Context"
    �?  �?  �?(����񣺵�2��礆��~����،���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���礆��~#Gunshot Assualt Rifle AK Set 01 SFX"
    �?  �?  �?(����ĥ��Z1
/
bp:Type�#
!mc:esfx_gunshot_assaultrifle_ak:1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%

���񵲼�Z�5  �?=  aEE  �Cx�*�����،���Generic Muzzleflash VFX"
   ��  �?  �?  �?(����ĥ��Z$
"
bp:Particle Size Multipliere  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����������
NoneNone
����������APIObjectIconZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This allows objects to have UI icons associated with them. This could be used for abilities, weapons, and possibly
anything that can be held in an inventory. Object Icons are a purely client-side concept.
--]]

local API = {}

-- nil SetObjectIcon(CoreObject, string) [Client]
-- Called once on creation by each object that wishes to have an icon associated with it. Icon it stored as the MUID
-- string of the icon asset (not a template).
function API.SetObjectIcon(object, icon)
	object.clientUserData.APIObjectIcons_Icon = icon
end

-- <string> GetObjectIcon(CoreObject) [Client]
-- Returns the MUID of the icon or nil
function API.GetObjectIcon(object)
	if not object or not Object.IsValid(object) then
		return nil
	end

	return object.clientUserData.APIObjectIcons_Icon
end

return API

N���Ղ��ǴEmber Volume VFXR-
VfxBlueprintAssetReffxbp_ember_volume_vfx
��֊������Damage Feedbackb�
� ޷�Žܑ�E*�޷�Žܑ�EDamage Feedback"  �?  �?  �?(�����ΧV2������rҢ������YZ�

cs:DamageTextDuratione  �?
!
cs:DamageTextColor�
��Y?%  �?

cs:ShowFlyUpTextP

cs:DisplayBigTextP

cs:ShowHitFeedbackP
#
cs:HitFeedbackSound���������
D
cs:DamageTextDuration:tooltipj#Duration of the damage fly up text.
7
cs:DamageTextColor:tooltipjFly up damage text color.
P
cs:DisplayBigText:tooltipj3If true, the fly up damage text will appear bigger.
`
cs:ShowHitFeedback:tooltipjBShow the hit indicator when the local player hits an enemy player.
�
cs:HitFeedbackSound:tooltipjtA sound played when the local player hits an enemy player. Tick "Disable Spatial" to make it work with local player.z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������rDamageFeedbackServer"
    �?  �?  �?(޷�Žܑ�EZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ˑ����*�Ң������YClientContext"
    �?  �?  �?(޷�Žܑ�E2Ȩ���������������੬ń�ՔZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�Ȩ������DamageFeedbackClient"
    �?  �?  �?(Ң������YZ@

cs:ComponentRoot�
޷�Žܑ�E

cs:HitIndicator�	���ߐ��kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

͋מ����*���������Hit Feedback Sound"
    �?  �?  �?(Ң������YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����ꐠ��5��L?=  aEE  �C*��੬ń�Ք	Container"
    �?  �?  �?(Ң������Y2���ߐ��kZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�":

mc:euianchor:middlecenter� *����ߐ��kHit Indicator"
    �?  �?  �?(�੬ń�ՔZ z(
&mc:ecollisionsetting:inheritfromparent� 
mc:evisibilitysetting:forceoff��dd5  4B:

mc:euianchor:middlecenter�
�չ��Ԛ��
��Y?%   ? �>


mc:euianchor:middlecenter

mc:euianchor:middlecenter
NoneNone
D�չ��Ԛ��Crosshair 020	R&
PlatformBrushAssetRefCrosshair_020
h����ꐠ��Bullet Body Thump 01 Impact SFXR8
AudioAssetRef'sfx_bullet_impact_body_thump_01_Cue_ref
�͋מ����DamageFeedbackClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local HIT_INDICATOR = script:GetCustomProperty("HitIndicator"):WaitForObject()

-- User exposed properties
local DAMAGE_TEXT_DURATION = COMPONENT_ROOT:GetCustomProperty("DamageTextDuration")
local DAMAGE_TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("DamageTextColor")
local IS_BIG_TEXT = COMPONENT_ROOT:GetCustomProperty("DisplayBigText")
local SHOW_HIT_FEEDBACK = COMPONENT_ROOT:GetCustomProperty("ShowHitFeedback")
local SHOW_FLY_UP_TEXT = COMPONENT_ROOT:GetCustomProperty("ShowFlyUpText")
local HIT_FEEDBACK_SOUND = COMPONENT_ROOT:GetCustomProperty("HitFeedbackSound"):WaitForObject()

-- Constant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Set indicator UI off at start
HIT_INDICATOR.visibility = Visibility.FORCE_OFF

-- nil TriggerHitIndicator()
-- Displays the the hit indicator for half a second
function TriggerHitIndicator()
    HIT_INDICATOR.visibility = Visibility.INHERIT
    Task.Wait(.5)
    HIT_INDICATOR.visibility = Visibility.FORCE_OFF
end

-- nil DisplayDamage(float, Player, Player)
-- Displays the fly up text on source player the damage or
-- shows damage directin to the targt player
function DisplayDamage(damage, targetPlayer, sourcePlayer)

    if sourcePlayer == LOCAL_PLAYER then
        if SHOW_FLY_UP_TEXT then
            -- Show fly up damage text on target player
            UI.ShowFlyUpText(string.format("%.0f", damage), targetPlayer:GetWorldPosition(),
                {duration = DAMAGE_TEXT_DURATION,
                color = DAMAGE_TEXT_COLOR,
                isBig = IS_BIG_TEXT})
        end

        -- Play the damage feedback sound to the source player
        if HIT_FEEDBACK_SOUND then
            HIT_FEEDBACK_SOUND:Play()
        end

        -- Show the hit indicator feedback for this damage
        if SHOW_HIT_FEEDBACK then
            TriggerHitIndicator()
        end
    elseif targetPlayer == LOCAL_PLAYER then
        UI.ShowDamageDirection(sourcePlayer)
    end
end

-- Initialize
Events.Connect("PlayerDamage_Internal", DisplayDamage)
�ˑ����DamageFeedbackServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- nil OnPlayerDied(Player, Damage)
-- Fires an event for the client to display fly up text when hit the enemy player
function OnPlayerDamaged(player, damage)
    if damage.sourcePlayer then
        Events.BroadcastToAllPlayers ("PlayerDamage_Internal", damage.amount, player, damage.sourcePlayer)
    end
end

function OnPlayerJoined(player)
	player.damagedEvent:Connect(OnPlayerDamaged)
end

-- Registering the event on player joined
Game.playerJoinedEvent:Connect(OnPlayerJoined)
U��������Modern Weapon - Disc 01R-
StaticMeshAssetRefsm_weap_modern_disc_001
���ˈ��⫲Sci-fi Base Stairs 01 Landingb�
� 쮖�����t*�쮖�����tSci-fi Base Stairs 01 Landing"  �?  �?  �?(�����B2B����ܮ�����������{�������~�誙�����ð�Ǜ����������m������汍z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ܮ���Sci-Fi Base Floor 03 4m"$

 H�  HC  ���k?�k?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *���������{Sci-Fi Base Trim 02 Corner - In")
 H�  HC ⽿  ��  @?  @?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *��������~Sci-Fi Base Trim 02 4m")
   Cq�GC  ��  ���$f?  @?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *��誙����Sci-Fi Base Trim 02 4m")
��C  �  ����3��$f?  @?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *��ð�Ǜ���Sci-Fi Base Trim 02 Corner")
��C  �  ��  ��  @?  @?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *��������mSci-Fi Base Railing 02 - 4m")
��C *�  HB��3�fff?  �?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�������汍Sci-Fi Base Railing 02 - 4m")
  *C��GC  HB  ��fff?  �?  �?(쮖�����tz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 1
TemplateAssetRefSci-Fi_Base_Stairs_01_Landing
bÚ����ȰSci-Fi Base Trim 02 CornerR8
StaticMeshAssetRef"sm_ts_scf_base_trim_002_corner_ref
j��������Sci-Fi Base Trim 02 Corner - InR;
StaticMeshAssetRef%sm_ts_scf_base_trim_002_corner_in_ref
�ޫ�����б#Fantasy Candle Lit - Group 01(Prop)b�
�
 ѩ�ҍ�o*�ѩ�ҍ�oCandle Lit - Group 01 (Prop)"  �?  �?  �?(�����B2ɮ��Ȩ����㘫뽳Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ɮ��Ȩ��ClientContext"
j��A   �?  �?  �?(ѩ�ҍ�o2%���Ը��i֨�����e��֊�������օ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����Ը��iCandle Flame VFX"

�tA`��?   @@  @@  @@(ɮ��Ȩ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *�֨�����ePoint Light"

 0p>X��@   �?  �?  �?(ɮ��Ȩ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�M  �?  �?:?���>%  �?%  �@* 2)  �D  �BM�A  �B%   AU @�E]  zD*���֊����Candle Flame VFX")
�ZA?�BbA�4)��:3B  @@  @@  @@(ɮ��Ȩ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *����օ���Candle Flame VFX")
H���"��'jA�B��  @@  @@  @@(ɮ��Ȩ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *���㘫뽳SCandle Group 01"
    �?  �?  �?(ѩ�ҍ�oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������И088�
 0
TemplateAssetReftm_fan_candle_grp_001_lit_01
V������ИCandle Group 01R7
StaticMeshAssetRef!sm_prop_fantasy_candles_group_001
F��������Candle Flame VFXR&
StaticMeshAssetReffxsm_candleflame
Y��췶��Grenade Canister 02R5
StaticMeshAssetRefsm_weapons_grenade_indented_001
���������Basic Submachine Gunb�
� ���ղ�Ў\*����ղ�Ў\Basic Submachine Gun"��?��?  �?(�����B2&�������ҳ�Ē�����:�������ۯ�ِ��JZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop�������ҳ��
�ͻ�ߡ��������ۍ�
ӰГ£͝}"������ޣ�(2

  �B  pA:2hand_rifle_stanceB
Ή�����J�����ԃ�R2hand_rifle_shootZ
��������j
��������p}  A��  �>� P�F�
���񼇈��
mc:ereticletype:crosshair��rounds�� P�F�   A�  HB�  �@���@�  �@����>�
�Ē�����:��������  �A*��������ҳPickup Trigger"
 pA ���?  �?  �?(���ղ�Ў\Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�1Equip Basic SMG"08*
mc:etriggershape:box*��Ē�����:Shoot(���ղ�Ў\Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff��"ability_primary*+���< 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:
�#< 08B��L> 08J2hand_rifle_shoot*�������Reload(���ղ�Ў\Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff�{"ability_ult*33�? 02���= 0: B J2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_33*��ۯ�ِ��J
Client Art"
    �?  �?  �?(���ղ�Ў\2
���Վ��Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *����Վ��Geo"
   �? �?  �?(�ۯ�ِ��J28��������.���ν������������8�����ȅ�譃�կ���ä���ݽ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������.Modern Weapon - Grip 03"

�XE?KA   �?  �?  �?(���Վ��Z7
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
גש��08(�
 *����ν����Modern Weapon - Barrel Tip 01"

  HB  pA   �?  �?  �?(���Վ��Z/
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������s088�
 *���������8Trigger - Rear".
�Ac@ c�=���@
����d.7A���<���<�K=(���Վ��Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08(�
 *������ȅ�Modern Weapon - Foregrip 03"

  �ApG$@   �?  �?  �?(���Վ��Zf
5
ma:Shared_BaseMaterial:color�  �=  �=  �=%  �?
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 *�譃�կ���Modern Weapon - Body 02"

  �A  pA   �?  �?  �?(���Վ��Z�
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?
#
ma:Shared_Detail1:id�
����3
0
ma:Shared_Detail1:color��N-=�0�>��$?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������C08(�
 *�ä���ݽ�Modern Weapon - Stock 02"

  ��  pA   �?  �?  �?(���Վ��Z7
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����߇��08(�
 (
TemplateAssetRefBasic_Submachine_Gun
V����߇��Modern Weapon - Stock 01R.
StaticMeshAssetRefsm_weap_modern_stock_001
_�������sModern Weapon - Barrel Tip 01R2
StaticMeshAssetRefsm_weap_modern_barreltip_001
������ԃ�Generic Sound Reloadb�
� �Ǿ�Ԯ���*��Ǿ�Ԯ���Weapon Generic Reload"
    �?  �?  �?(�������ˬ2	������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Client Context"
    �?  �?  �?(�Ǿ�Ԯ���2	�ֳ��ɚ�;Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ֳ��ɚ�;Gun Weapon Reload Set 01 SFX"
    �?  �?  �?(������Z%
#
bp:Type�
mc:esfx_gunreloads:50z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
������Ĝ�5  �?=  aEE  �CXx�
NoneNone
V����ڣǝ�Large Girder 8m x 6mR1
StaticMeshAssetRefsm_wall_girder_large_8m_001
���Ǘ�ۆ��Game State Displayb�
� ���������*����������Game State Display"  �?  �?  �?(��̔��Њ2	��ޑଆ�Z�

cs:ShowStateNameP

cs:ShowDuringLobbyP

cs:ShowDuringRoundP 

cs:ShowDuringRoundEndP
F
cs:ShowStateName:tooltipj*Whether to show which state the game is in
D
cs:ShowDuringLobby:tooltipj&Whether to show during the lobby state
D
cs:ShowDuringRound:tooltipj&Whether to show during the round state
K
cs:ShowDuringRoundEnd:tooltipj*Whether to show during the round end statez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ޑଆ�ClientContext"
    �?  �?  �?(���������2�ƥ�􋔲�Ǐ������[Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ƥ�􋔲�GameStateRoundTimeDisplayClient"
    �?  �?  �?(��ޑଆ�Z|

cs:API��Ʀ������
 
cs:ComponentRoot����������

cs:StateNameText�
����ʏ��T

cs:StateTimeText�
��������-z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��Ԟ����-*�Ǐ������[	Container"
    �?  �?  �?(��ޑଆ�2
������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�":

mc:euianchor:middlecenter� *�������UI Panel"
    �?  �?  �?(Ǐ������[2����ʏ��T��������-Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�j�2%  ��-   A:

mc:euianchor:middlecenter� �6


mc:euianchor:topright

mc:euianchor:topright*�����ʏ��T	StateName"
    �?  �?  �?(������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��d<:

mc:euianchor:middlecenterPX�9
State  �?  �?  �?%  �?"
mc:etextjustify:left(�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���������-	StateTime"
    �?  �?  �?(������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��d<:

mc:euianchor:middlecenterPX�:
00:00  �?  �?  �?%  �?"
mc:etextjustify:right(�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter&
TemplateAssetRefGame_State_Display
���Ԟ����-GameStateRoundTimeDisplayClientZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local STATE_NAME_TEXT = script:GetCustomProperty("StateNameText"):WaitForObject()
local STATE_TIME_TEXT = script:GetCustomProperty("StateTimeText"):WaitForObject()

-- User exposed settings
local SHOW_STATE_NAME = COMPONENT_ROOT:GetCustomProperty("ShowStateName")
local SHOW_DURING_LOBBY = COMPONENT_ROOT:GetCustomProperty("ShowDuringLobby")
local SHOW_DURING_ROUND = COMPONENT_ROOT:GetCustomProperty("ShowDuringRound")
local SHOW_DURING_ROUND_END = COMPONENT_ROOT:GetCustomProperty("ShowDuringRoundEnd")

-- nil UpdateTimeRemaining(int)
-- Displays time remaining in hh:mm:ss format
function UpdateTimeRemaining(remainingTime)
    if remainingTime then
        STATE_TIME_TEXT.visibility = Visibility.INHERIT
        local minutes = math.floor(remainingTime) // 60 % 60
        local seconds = math.floor(remainingTime) % 60
        STATE_TIME_TEXT.text = string.format("%02d:%02d", minutes, seconds)
    end
end

-- nil Tick(float)
-- Displays time for round state
function Tick(deltaTime)
    if ABGS.IsGameStateManagerRegistered() then
        -- Hide things by default, let specific logic show it when needed
        STATE_NAME_TEXT.text = ""
        STATE_TIME_TEXT.visibility = Visibility.FORCE_OFF
        local currentState = ABGS.GetGameState()
        local remainingTime = ABGS.GetTimeRemainingInState()

        if currentState == ABGS.GAME_STATE_LOBBY and SHOW_DURING_LOBBY then
            STATE_NAME_TEXT.text = "Lobby"
            UpdateTimeRemaining(remainingTime)
        end

        if currentState == ABGS.GAME_STATE_ROUND and SHOW_DURING_ROUND then
            STATE_NAME_TEXT.text = "Round"
            UpdateTimeRemaining(remainingTime)
        end

        if currentState == ABGS.GAME_STATE_ROUND_END and SHOW_DURING_ROUND_END then
            STATE_NAME_TEXT.text = "End"
            UpdateTimeRemaining(remainingTime)
        end
    end
end

-- Set round time visibility off at the beginning
if not SHOW_STATE_NAME then
    STATE_NAME_TEXT.visibility = Visibility.FORCE_OFF
end

VՌ�����ܥStreet Sign - OctagonR0
StaticMeshAssetRefsm_street-sign_octagon_001
�3ʩ�ŗ��ߤ2Sci-fi Base Wall 02 - Double Sliding Door Templateb�3
�2 �㼤�����*��㼤�����2Sci-fi Base Wall 02 - Double Sliding Door Template"  �?  �?  �?(�����B2���Ҽ�٥!մ��՞���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ҽ�٥! Sci-Fi Base Wall 02 - Doorway 01"
    �?  �?  �?(�㼤�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���؎����088�
 *�մ��՞���2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(�㼤�����2��������[�ݻ􋛖�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������[5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(մ��՞���2&������ċ����ʿ���̔���Ǒ����������GZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������ċTrigger"

��3C  4C   �?gff@��l@(��������[Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*�����ʿ���ServerContext"
    �?  �?  �?(��������[2
���ϊ̂�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ϊ̂�SlidingDoorControllerServer"
    �?  �?  �?(����ʿ���ZX

cs:ComponentRoot�
��������[

cs:DoorRoot�
��������G


cs:Trigger�
������ċz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*�̔���Ǒ��ClientContext"
  /C   �?  �?  �?(��������[2��Ă��ߍ��у��θ��������ճ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���Ă��ߍ�SlidingDoorControllerClient"
    �?  �?  �?(̔���Ǒ��Zz

cs:ComponentRoot�
��������[

cs:DoorRoot�
��������G

cs:OpenSound��у��θ��

cs:CloseSound�������ճ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��у��θ��Helper_DoorOpenSound"
    �?  �?  �?(̔���Ǒ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�������ճ�Helper_DoorCloseSound"
    �?  �?  �?(̔���Ǒ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*���������GDoorRoot"
    �?  �?  �?(��������[2	��Ϝ��дJZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ϝ��дJGeo_StaticContext"
    �?  �?  �?(��������G2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Sci-fi Base Door 01"
 ���B  �?  �?  �?(��Ϝ��дJz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *��ݻ􋛖�5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(մ��՞���2���阂��������Ź��͓礎���Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����阂��ServerContext"
    �?  �?  �?(�ݻ􋛖�2
�ܬ���ꀪZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ܬ���ꀪSlidingDoorControllerServer"
    �?  �?  �?(���阂��ZY

cs:ComponentRoot�
�ݻ􋛖�

cs:DoorRoot��͓礎���


cs:Trigger�
������ċz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*�������Ź�ClientContext"
  /C   �?  �?  �?(�ݻ􋛖�2����������ˌ���⪫�ɮ�ݱ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����������SlidingDoorControllerClient"
    �?  �?  �?(������Ź�Z{

cs:ComponentRoot�
�ݻ􋛖�

cs:DoorRoot��͓礎���

cs:OpenSound��ˌ���⪫

cs:CloseSound��ɮ�ݱ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��ˌ���⪫Helper_DoorOpenSound"
    �?  �?  �?(������Ź�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��ɮ�ݱ���Helper_DoorCloseSound"
    �?  �?  �?(������Ź�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*��͓礎���DoorRoot"
    �?  �?  �?(�ݻ􋛖�2	�������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������Geo_StaticContext"
    �?  �?  �?(�͓礎���2
�־�ʦ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��־�ʦ���Sci-fi Base Door 01"
 ���B  �?  �?  �?(�������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 F
TemplateAssetRef2Sci-fi_Base_Wall_02_-_Double_Sliding_Door_Template
���ܙ����'.SciFi Airlock Servo Movement Door Close 01 SFXRG
AudioAssetRef6sfx_scifi_airlock_servo_movement_door_close_01_Cue_ref
�.�������#SlidingDoorControllerServerZ�.�.--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Doors operate in the relative space of the root of the component. In that space, they move in the -Y direction. The Door
root should have position (0.0, 0.0, 0.0).
This broadcasts custom events DoorOpened(CoreObject) and DoorClosed(CoreObject)
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local DOOR_ROOT = script:GetCustomProperty("DoorRoot"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

-- User exposed properties
local AUTO_OPEN = COMPONENT_ROOT:GetCustomProperty("AutoOpen")
local TIME_OPEN = COMPONENT_ROOT:GetCustomProperty("TimeOpen")		-- Only used with AutoOpen
local OPEN_LABEL = COMPONENT_ROOT:GetCustomProperty("OpenLabel")	-- Only used without AutoOpen
local CLOSE_LABEL = COMPONENT_ROOT:GetCustomProperty("CloseLabel")	-- Only used without AutoOpen
local OPEN_DISTANCE = COMPONENT_ROOT:GetCustomProperty("OpenDistance")
local SPEED = COMPONENT_ROOT:GetCustomProperty("Speed")
local RESET_ON_ROUND_START = COMPONENT_ROOT:GetCustomProperty("ResetOnRoundStart")

-- Check user properties
if TIME_OPEN < 0.0 then
    warn("TimeOpen cannot be negative")
    TIME_OPEN = 0.0
end

if SPEED <= 0.0 then
    warn("Speed must be positive")
    SPEED = 450.0
end

-- Constants
local USE_DEBOUNCE_TIME = 0.2			-- Time after using that a player can't use again

-- Variables
-- Offset is 1.0 for fully opened, 0.0 for closed
local targetDoorOffset = 0.0
local playerLastUseTimes = {}			-- Player -> float
local autoCloseTime = 0.0

-- float GetDoorOffset()
-- Gives you the current offset of the door
function GetDoorOffset()
	local result = -DOOR_ROOT:GetPosition().y / OPEN_DISTANCE

	if math.abs(result) < 0.01 then
		return 0.0
	end

	return result
end

-- nil SetCurrentOffset(float)
-- Snap instantly to the given offset
function SetCurrentOffset(offset)
	targetDoorOffset = offset
	DOOR_ROOT:SetPosition(Vector3.New(0.0, -OPEN_DISTANCE * offset, 0.0))
end

-- nil SetTargetOffset(float)
-- Sets the offset that the door should move to (at SPEED)
function SetTargetOffset(offset)
	targetDoorOffset = offset
	DOOR_ROOT:MoveTo(Vector3.New(0.0, -OPEN_DISTANCE * offset, 0.0), OPEN_DISTANCE * math.abs(targetDoorOffset - GetDoorOffset()) / SPEED, true)
end

-- nil ResetDoor()
-- Instantly snaps the door to the closed state
function ResetDoor()
	SetCurrentOffset(0.0)
end

-- nil OpenDoor(Player)
-- Opens the door
function OpenDoor(player)
	SetTargetOffset(1.0)
	Events.Broadcast("DoorOpened", COMPONENT_ROOT)
end

-- nil CloseDoor()
-- Closes the door, even if it was only partially open
function CloseDoor()
	SetTargetOffset(0.0)
end

-- nil OnBeginOverlap(Trigger, CoreObject)
-- Handles the player overlapping if AutoOpen is true
function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		if GetDoorOffset() == 0.0 then								-- Can't auto open if the door isn't closed
			OpenDoor(other)

			autoCloseTime = time() + TIME_OPEN
		end
	end
end

-- nil OnInteracted(Trigger, CoreObject)
-- Handles the player using the door if AutoOpen is false
function OnInteracted(trigger, player)
	if playerLastUseTimes[player] and playerLastUseTimes[player] + USE_DEBOUNCE_TIME > time() then
		return
	end

	playerLastUseTimes[player] = time()

	if GetDoorOffset() == 0.0 then									-- Door is closed
		OpenDoor(player)

		TRIGGER.interactionLabel = CLOSE_LABEL
	else															-- Door is open or moving, clsoe it
		CloseDoor()
	end
end

-- nil OnRoundStart()
-- Handles the roundStartEvent
function OnRoundStart()
	ResetDoor()
end

-- nil Tick(float)
-- Handle closing the door with AutoOpen, and changing interaction label back to open
function Tick(deltaTime)
	if AUTO_OPEN and targetDoorOffset ~= 0.0 then
		for _, player in pairs(Game.GetPlayers()) do				-- Don't close the door if someone is standing in it
			if TRIGGER:IsOverlapping(player) then
				autoCloseTime = time() + TIME_OPEN					-- and delay closing
				return
			end
		end

		if autoCloseTime > time() then
			return
		end

		CloseDoor()
	end

	if targetDoorOffset == 0.0 and GetDoorOffset() == 0.0 then
		if not AUTO_OPEN then
			TRIGGER.interactionLabel = OPEN_LABEL
		end

		Events.Broadcast("DoorClosed", COMPONENT_ROOT)
	end
end

-- Initialize
if AUTO_OPEN then
	TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
	TRIGGER.isInteractable = false

	for _, player in pairs(Game.GetPlayers()) do
		if TRIGGER:IsOverlapping(player) then
			OnBeginOverlap(TRIGGER, player)
		end
	end
else
	TRIGGER.interactedEvent:Connect(OnInteracted)
	TRIGGER.isInteractable = true
end

if RESET_ON_ROUND_START then
	Game.roundStartEvent:Connect(OnRoundStart)
end

�݅����ޫ�Helper_ScoreboardLineb�
� �׈���*��׈���Helper_ScoreboardLine"  �?  �?  �?(��ˆǤ��92&ݛ����ߑ������Ř�O��������M��������ZT

cs:Name�
�����Ř�O

cs:KillsText�
��������M

cs:DeathsText���������pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�b�:

mc:euianchor:middlecenter� �8


mc:euianchor:topcenter

mc:euianchor:topcenter*�ݛ����ߑ�
Background"
    �?  �?  �?(�׈���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent����:

mc:euianchor:middlecenterPX�

ؿ���ώH%   ?�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*������Ř�OName"
    �?  �?  �?(�׈���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���%  HB:

mc:euianchor:middlecenter�4  �?  �?  �?%  �?"
mc:etextjustify:left(0�:


mc:euianchor:middleleft

mc:euianchor:middleleft*���������MKills"
    �?  �?  �?(�׈���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���%  z�:

mc:euianchor:middlecenter�5  �?  �?  �?%  �?"
mc:etextjustify:right(0�<


mc:euianchor:middleright

mc:euianchor:middleright*���������Deaths"
    �?  �?  �?(�׈���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���%  H�:

mc:euianchor:middlecenter�5  �?  �?  �?%  �?"
mc:etextjustify:right(0�<


mc:euianchor:middleright

mc:euianchor:middleright
NoneNone
Nؿ���ώHBackground Flat 020	R+
PlatformBrushAssetRefBackgroundFlat_020
�������Ʃ�Sci-fi Chair 02(Prop)b�
� ���������*����������Sci-fi Chair 02(Prop)"  �?  �?  �?(�����B2��Щ���[��ْ�\��֕����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Щ���[Sci-fi Chair Leg 01"
  ��   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������O088�
 *���ْ�\Sci-fi Chair Leg 01"
  �A   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������O088�
 *���֕����Sci-fi Chair Base 01"

  ��  �A   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�Ӆ�肐�k088�
 )
TemplateAssetRefSci-fi_Chair_02_Prop_
X�Ӆ�肐�kSci-fi Chair Base 01R4
StaticMeshAssetRefsm_prop_scf_chair_002_base_ref
V�������OSci-fi Chair Leg 01R3
StaticMeshAssetRefsm_prop_scf_chair_002_leg_ref
S�Ҕ��ҍ�Sci-fi Console 01R1
StaticMeshAssetRefsm_prop_scf_console_001_ref
x�˧�����(Sci-fi Base Wall Interior 02 - Corner 01R?
StaticMeshAssetRef)sm_ts_scf_base_wall_int_002_corner_01_ref
>�����SkylightR%
BlueprintAssetRefCORESKY_Skylight
x�������(Sci-fi Base Wall Interior 01 - Corner 01R?
StaticMeshAssetRef)sm_ts_scf_base_wall_int_001_corner_01_ref
[�������ĜSci-Fi Base Railing 02R4
StaticMeshAssetRefsm_ts_scf_base_railing_002_ref
>������˛	InvisibleR$
MaterialAssetRefmi_invisible_001
ʙ
�埽�����Sci-fi Base 01 Templateb��

�
 ���������*����������Sci-fi Base 01 Template"  �?  �?  �?(�����B2h�Җ���֭�����ו����Ҷ�����+ۻ�㺣���ΰ�거��ɀ���������������݄��ޅc��������\�ʏ�����K��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Җ���֭�Walls 01"
    �?  �?  �?(���������2�����δ���������ۦ�Ĩ�����������Ղ�ұ�����Pݗ����Ϥ�ֻ����������ƻ��
���ၻ�7���ꮊ�������ۦ�︵у�s���Ĺ�����ۼ��Ȍ�����Ɂ��0ē�����G����������ߤ�퇙Ǥ���𭢚�I��������g�䪳���������ɂ������ܾ������������в��������򅳪����ê�Ӆ����Ν��隝�����Փ�&��ؘ���������������˃�ƚ���᯵����~ƣ��������ά����������䍃�ɴ��ϢǛي���0ω󞫇��P�ɠ���������������Ȥ��Ϧ��ƈ���������˙������̥�����ɢ���ڍc��㢮���x��󉰊��:Ӽ����������������������I���ɢ������֦�ۧ��������߮���������Ȱ�����ݱ��֞�׾z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����δ��2Sci-fi Base Wall 01 - Double Sliding Door Template"
    �?  �?  �?(�Җ���֭�2����������ձ��׶}z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������� Sci-Fi Base Wall 01 - Doorway 01"
    �?  �?  �?(����δ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����޼��088�
 *��ձ��׶}2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(����δ��2���Ƌ���[�������؊z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ƌ���[5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(�ձ��׶}2(����������Ǭ�������Ԋ����Τ�ޱ��Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������Trigger"

��3C  4C   �?gff@��l@(���Ƌ���[Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*���Ǭ��ServerContext"
    �?  �?  �?(���Ƌ���[2
�웛��Ω�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��웛��Ω�SlidingDoorControllerServer"
    �?  �?  �?(��Ǭ��ZZ

cs:ComponentRoot�
���Ƌ���[

cs:DoorRoot���Τ�ޱ��


cs:Trigger���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*������Ԋ��ClientContext"
  /C   �?  �?  �?(���Ƌ���[2������������ޚ��"��������PZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������SlidingDoorControllerClient"
    �?  �?  �?(�����Ԋ��Zy

cs:ComponentRoot�
���Ƌ���[

cs:DoorRoot���Τ�ޱ��

cs:OpenSound�
����ޚ��"

cs:CloseSound�
��������Pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����ޚ��"Helper_DoorOpenSound"
    �?  �?  �?(�����Ԋ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*���������PHelper_DoorCloseSound"
    �?  �?  �?(�����Ԋ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*���Τ�ޱ��DoorRoot"
    �?  �?  �?(���Ƌ���[2
Κ��ϝ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Κ��ϝ���Geo_StaticContext"
    �?  �?  �?(��Τ�ޱ��2	ҕ���1Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ҕ���1Sci-fi Base Door 01"
 ���B  �?  �?  �?(Κ��ϝ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *��������؊5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(�ձ��׶}2�������� �����ث�����Յ���Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������� ServerContext"
    �?  �?  �?(�������؊2
ԩ�ק����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ԩ�ק����SlidingDoorControllerServer"
    �?  �?  �?(�������� Z[
 
cs:ComponentRoot��������؊

cs:DoorRoot����Յ���


cs:Trigger���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*������ث��ClientContext"
  /C   �?  �?  �?(�������؊2��줮�������Λ	�鱘�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���줮���SlidingDoorControllerClient"
    �?  �?  �?(�����ث��Z{
 
cs:ComponentRoot��������؊

cs:DoorRoot����Յ���

cs:OpenSound�
����Λ	

cs:CloseSound��鱘�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����Λ	Helper_DoorOpenSound"
    �?  �?  �?(�����ث��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��鱘�����Helper_DoorCloseSound"
    �?  �?  �?(�����ث��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*����Յ���DoorRoot"
    �?  �?  �?(�������؊2	����␴�`Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����␴�`Geo_StaticContext"
    �?  �?  �?(���Յ���2	��Ԫ����&Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ԫ����&Sci-fi Base Door 01"
 ���B  �?  �?  �?(����␴�`z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *��������ۦ0Sci-fi Base Wall 01 Half - Sliding Door Template"$

  ��  ����3C  �?  �?  �?(�Җ���֭�2Τ�����������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Τ�����%Sci-Fi Base Wall 01 - Doorway 02 Half"
    �?  �?  �?(�������ۦz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
冎Ӵﶃ�088�
 *�������+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(�������ۦ2
������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������#Select To Edit Animation Properties"
  �A����  �?  �?  �?(������2$����Ҭ��_�Ȓ��ȷ�n��������)Ȱ��с��TZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����Ҭ��_Trigger"

  �B  C   �?ff�?  @@(������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*��Ȓ��ȷ�nServerContext"
    �?  �?  �?(������2	������TZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������TSlidingDoorControllerServer"
    �?  �?  �?(�Ȓ��ȷ�nZY
 
cs:ComponentRoot�������

cs:DoorRoot�
Ȱ��с��T


cs:Trigger�
����Ҭ��_z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���������)ClientContext"
  /C   �?  �?  �?(������2���ş؛�sφ��������ީⲹʦZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����ş؛�sSlidingDoorControllerClient"
    �?  �?  �?(��������)Zz
 
cs:ComponentRoot�������

cs:DoorRoot�
Ȱ��с��T

cs:OpenSound�φ�������

cs:CloseSound�
�ީⲹʦz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�φ�������Helper_DoorOpenSound"
    �?  �?  �?(��������)Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��ީⲹʦHelper_DoorCloseSound"
    �?  �?  �?(��������)Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�Ȱ��с��TDoorRoot"
    �?  �?  �?(������2
����ӧ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ӧ���Geo_StaticContext"
    �?  �?  �?(Ȱ��с��T2
�ɯ�ᛞ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ɯ�ᛞ��Sci-fi Base Door 02"
 ���B  �?  �?  �?(����ӧ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *��Ĩ������;Sci-fi Base Wall Interior 01 - Double Sliding Door Template"$

  �8  �����  �?  �?  �?(�Җ���֭�2�������ޙݥ�Ļ��̛z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������ޙ)Sci-Fi Base Wall Interior 01 - Doorway 01"
    �?  �?  �?(�Ĩ������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ƹ���j088�
 *�ݥ�Ļ��̛2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(�Ĩ������2���ڨ��˯��Ë����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ڨ��˯5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(ݥ�Ļ��̛2&�����*�޻��⵲���ɤ����qÙ���߈�Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������*Trigger"

��3C  4C   �?gff@��l@(���ڨ��˯Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*��޻��⵲�ServerContext"
    �?  �?  �?(���ڨ��˯2	��������,Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������,SlidingDoorControllerServer"
    �?  �?  �?(�޻��⵲�ZZ
 
cs:ComponentRoot����ڨ��˯

cs:DoorRoot�Ù���߈�


cs:Trigger�
�����*z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���ɤ����qClientContext"
  /C   �?  �?  �?(���ڨ��˯2��ֻ���f�����؆��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���ֻ���fSlidingDoorControllerClient"
    �?  �?  �?(��ɤ����qZz
 
cs:ComponentRoot����ڨ��˯

cs:DoorRoot�Ù���߈�

cs:OpenSound�
�����؆

cs:CloseSound�
��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*������؆Helper_DoorOpenSound"
    �?  �?  �?(��ɤ����qZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*���������Helper_DoorCloseSound"
    �?  �?  �?(��ɤ����qZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�Ù���߈�DoorRoot"
    �?  �?  �?(���ڨ��˯2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Geo_StaticContext"
    �?  �?  �?(Ù���߈�2	�ʉ�����1Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ʉ�����1Sci-fi Base Door 01"
 ���B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *���Ë����5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(ݥ�Ļ��̛2����ʁ�������ĶÈ�˵��҂�ZZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ʁ���ServerContext"
    �?  �?  �?(��Ë����2
���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������SlidingDoorControllerServer"
    �?  �?  �?(����ʁ���ZY
 
cs:ComponentRoot���Ë����

cs:DoorRoot�
˵��҂�Z


cs:Trigger�
�����*z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*�����ĶÈ�ClientContext"
  /C   �?  �?  �?(��Ë����2��ᮻ�������¯������䍈��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���ᮻ���SlidingDoorControllerClient"
    �?  �?  �?(����ĶÈ�Zz
 
cs:ComponentRoot���Ë����

cs:DoorRoot�
˵��҂�Z

cs:OpenSound�����¯���

cs:CloseSound�
���䍈��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����¯���Helper_DoorOpenSound"
    �?  �?  �?(����ĶÈ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*����䍈��Helper_DoorCloseSound"
    �?  �?  �?(����ĶÈ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�˵��҂�ZDoorRoot"
    �?  �?  �?(��Ë����2	�����壒,Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������壒,Geo_StaticContext"
    �?  �?  �?(˵��҂�Z2	��򳚊�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���򳚊�Sci-fi Base Door 01"
 ���B  �?  �?  �?(�����壒,z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *������ՂSci-Fi Base Wall 01"
  H����B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��ұ�����P9Sci-fi Base Wall Interior 01 Half - Sliding Door Template"$

  HD  ������  �?  �?  �?(�Җ���֭�2�����ܠ�!���Ņ�Ԍ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ܠ�!.Sci-Fi Base Wall Interior 01 Half - Doorway 02"
    �?  �?  �?(�ұ�����Pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�뛗���088�
 *����Ņ�Ԍ�+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(�ұ�����P2
�ɥ�Ϛ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ɥ�Ϛ���#Select To Edit Animation Properties"
  �A����  �?  �?  �?(���Ņ�Ԍ�2'��������%�똤������վ�����􍿬��Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������%Trigger"

  �B  C   �?ff�?  @@(�ɥ�Ϛ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*��똤�ServerContext"
    �?  �?  �?(�ɥ�Ϛ���2
�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������SlidingDoorControllerServer"
    �?  �?  �?(�똤�ZZ
 
cs:ComponentRoot��ɥ�Ϛ���

cs:DoorRoot����􍿬��


cs:Trigger�
��������%z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*������վ��ClientContext"
  /C   �?  �?  �?(�ɥ�Ϛ���2���؉��������������Ն���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����؉����SlidingDoorControllerClient"
    �?  �?  �?(�����վ��Z{
 
cs:ComponentRoot��ɥ�Ϛ���

cs:DoorRoot����􍿬��

cs:OpenSound�
�������

cs:CloseSound����Ն���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��������Helper_DoorOpenSound"
    �?  �?  �?(�����վ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*����Ն���Helper_DoorCloseSound"
    �?  �?  �?(�����վ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*����􍿬��DoorRoot"
    �?  �?  �?(�ɥ�Ϛ���2
�ē�܀��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ē�܀��Geo_StaticContext"
    �?  �?  �?(���􍿬��2	�ꗩ����hZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ꗩ����hSci-fi Base Door 02"
 ���B  �?  �?  �?(�ē�܀��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *�ݗ����ϤSci-Fi Base Wall 01 - Window 01"

  H�  H�   �?  �?  �?(�Җ���֭�2
���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ֶĆ�,088�
 *����������Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(ݗ����Ϥz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *��ֻ������Sci-Fi Base Wall 01"
  HD ��  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *�����ƻ��
Sci-Fi Base Wall 01"$

  HD  H� ��  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *����ၻ�7Sci-Fi Base Wall 01"$

  HD  �����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *����ꮊSci-Fi Base Wall 01 - Window 01"$

  HD  z���3�  �?  �?  �?(�Җ���֭�2
���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ֶĆ�,088�
 *����������Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(���ꮊz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *��������ۦSci-Fi Base Wall 01"$

  �D  H�I=�7  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��︵у�sSci-Fi Base Wall 01"$

  H�  ����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *����Ĺ���Sci-Fi Base Wall 01 Half"
  ����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *���ۼ��Ȍ�Sci-Fi Base Wall 01"$

  �  �� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *�����Ɂ��0Sci-Fi Base Wall 01 - Window 01"$

  E  ������  �?  �?  �?(�Җ���֭�2	�����-z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ֶĆ�,088�
 *������-Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(����Ɂ��0z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *�ē�����GSci-Fi Base Wall 01 - Window 01"$

  E  H�����  �?  �?  �?(�Җ���֭�2	̾�����Mz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ֶĆ�,088�
 *�̾�����MSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(ē�����Gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *����������Sci-fi Base Wall 01 - Corner 01"$

  �D  H��.e6  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *��ߤ�퇙ǤSci-fi Base Wall 01 - Corner 01"$

  HD  ������  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *����𭢚�ISci-fi Base Wall 01 - Corner 01"
  ���.e6  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *���������gSci-fi Base Wall 01 - Corner 01"$
  �  H�  ��   �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *��䪳�����Sci-fi Base Wall 01 - Corner 01")
  �  ��  �����B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *�����ɂ��Sci-fi Base Wall 01 - Corner 01")
  E ���   ���3C  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *�����ܾ���Sci-Fi Base Wall Interior 01"
  H�����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������풄088�
 *����������Sci-Fi Base Wall Interior 01"
  ������  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������풄088�
 *�в������Sci-Fi Base Wall Interior 01"
  H�����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������풄088�
 *���򅳪���(Sci-Fi Base Wall Interior 01 - Window 01"$

  HD  �����  �?  �?  �?(�Җ���֭�2
�ӞО��ԗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����Ӏ�088�
 *��ӞО��ԗSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(��򅳪���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *��ê�Ӆ��9Sci-fi Base Wall Interior 01 Half - Sliding Door Template"$

  HD  H�����  �?  �?  �?(�Җ���֭�2��������������jz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������.Sci-Fi Base Wall Interior 01 Half - Doorway 02"
    �?  �?  �?(�ê�Ӆ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�뛗���088�
 *���������j+Sci-fi Base Sliding Door 02 - 30cm Z Offset"$

���C   ���3C  �?  �?  �?(�ê�Ӆ��2	䲁�٬��(z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�䲁�٬��(#Select To Edit Animation Properties"
  �A����  �?  �?  �?(��������j2%Ͱ���܂���ԅ����-ˉ̄����ʝ�Ȳ���Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ͱ���܂��Trigger"

  �B  C   �?ff�?  @@(䲁�٬��(Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*��ԅ����-ServerContext"
    �?  �?  �?(䲁�٬��(2
�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������SlidingDoorControllerServer"
    �?  �?  �?(�ԅ����-ZY

cs:ComponentRoot�
䲁�٬��(

cs:DoorRoot�
ʝ�Ȳ���


cs:Trigger�Ͱ���܂��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*�ˉ̄����ClientContext"
  /C   �?  �?  �?(䲁�٬��(2�׭�������������'�ڸɒ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��׭������SlidingDoorControllerClient"
    �?  �?  �?(ˉ̄����Zx

cs:ComponentRoot�
䲁�٬��(

cs:DoorRoot�
ʝ�Ȳ���

cs:OpenSound�
�������'

cs:CloseSound�
�ڸɒ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��������'Helper_DoorOpenSound"
    �?  �?  �?(ˉ̄����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��ڸɒ���Helper_DoorCloseSound"
    �?  �?  �?(ˉ̄����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�ʝ�Ȳ���DoorRoot"
    �?  �?  �?(䲁�٬��(2
͂�􁯗ȃZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�͂�􁯗ȃGeo_StaticContext"
    �?  �?  �?(ʝ�Ȳ���2	�������*Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������*Sci-fi Base Door 02"
 ���B  �?  �?  �?(͂�􁯗ȃz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *���Ν��隝!Sci-Fi Base Wall Interior 01 Half"$

  HD  a�����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

⪦�����:088�
 *������Փ�&!Sci-Fi Base Wall Interior 01 Half"$

  HD  ������  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

⪦�����:088�
 *���ؘ����Sci-Fi Base Wall 01"$

  E  z� ��  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *����������9Sci-fi Base Wall Interior 01 Half - Sliding Door Template"$

  HD �v��.e6  �?  �?  �?(�Җ���֭�2�ѻ������̢Ų���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ѻ�����.Sci-Fi Base Wall Interior 01 Half - Doorway 02"
    �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�뛗���088�
 *��̢Ų���+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(���������2
�֎噄���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��֎噄���#Select To Edit Animation Properties"
  �A����  �?  �?  �?(�̢Ų���2%ж�ʢ�X������Ϋk�����͗���р�����dZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ж�ʢ�XTrigger"

  �B  C   �?ff�?  @@(�֎噄���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*�������ΫkServerContext"
    �?  �?  �?(�֎噄���2
�⵳Ç���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��⵳Ç���SlidingDoorControllerServer"
    �?  �?  �?(������ΫkZY
 
cs:ComponentRoot��֎噄���

cs:DoorRoot�
�р�����d


cs:Trigger�
ж�ʢ�Xz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*������͗��ClientContext"
  /C   �?  �?  �?(�֎噄���2������������鵐�����,Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������SlidingDoorControllerClient"
    �?  �?  �?(�����͗��Zy
 
cs:ComponentRoot��֎噄���

cs:DoorRoot�
�р�����d

cs:OpenSound�
����鵐

cs:CloseSound�
�����,z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����鵐Helper_DoorOpenSound"
    �?  �?  �?(�����͗��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*������,Helper_DoorCloseSound"
    �?  �?  �?(�����͗��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*��р�����dDoorRoot"
    �?  �?  �?(�֎噄���2
�܀����۪Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��܀����۪Geo_StaticContext"
    �?  �?  �?(�р�����d2
ֹѳ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ֹѳ�����Sci-fi Base Door 02"
 ���B  �?  �?  �?(�܀����۪z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *���˃�ƚ��!Sci-Fi Base Wall Interior 01 Half"$

  �D �v��.e6  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

⪦�����:088�
 *��᯵����~Sci-Fi Base Wall Interior 01"$

  �D �v��.e6  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������풄088�
 *�ƣ�������Sci-Fi Base Wall 01"$

  HD  �� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��ά�����Sci-Fi Base Wall 01"$

  �D �����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *������䍃Sci-Fi Base Wall 01"$

  E �����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��ɴ��ϢǛSci-Fi Base Wall 01 Half"$

  HD ������B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *�ي���0Sci-Fi Base Wall 01 Half"$

  E  �� ��  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *�ω󞫇��P$Sci-Fi Base Wall 01 - Doorway 03 End"$

  �  a� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���թƩ�d088�
 *��ɠ�����Sci-Fi Base Wall 01"
  z�����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *����������Sci-Fi Base Wall 01"$

  �D  �����B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��Ȥ��Ϧ�Sci-Fi Base Wall 01"$

  E  H�����  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��ƈ�����Sci-fi Base Wall 01 - Corner 01")
  E  H�   � ��  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *�����˙���Sci-Fi Base Wall 01 Half"$

  �  �� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *����̥����$Sci-Fi Base Wall 01 - Doorway 03 End"$

  �  �� �B  ��  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���թƩ�d088�
 *��ɢ���ڍc$Sci-Fi Base Wall 01 - Doorway 03 Mid")
  �  H�  D���B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����088�
 *���㢮���x$Sci-Fi Base Wall 01 - Doorway 03 Mid")
  �  /�  D���B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����088�
 *���󉰊��:Sci-Fi Base Wall 01 Half"$

  �  z� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *�Ӽ�����Sci-fi Base Wall 01 - Corner 01"
  ����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *����������Sci-fi Base Wall 01 - Corner 01"$

  HD ��� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ǔϺ���088�
 *���������ISci-Fi Base Wall 01 Half"$

  � ��� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *����ɢ���Sci-Fi Base Wall 01 Half"$

  �  �� �B  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��󿤯���088�
 *����֦�ۧ�Sci-Fi Base Wall 01"$

  ��  H��.e6  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *��������߮Sci-Fi Base Wall 01"$

  ��  ����3�  �?  �?  �?(�Җ���֭�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������يP088�
 *���������Sci-Fi Base Wall 01 - Window 01"

  �  H�   �?  �?  �?(�Җ���֭�2	��������	z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ֶĆ�,088�
 *���������	Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *��Ȱ�����2Sci-fi Base Wall 01 - Double Sliding Door Template"$

  E  �����  �?  �?  �?(�Җ���֭�2�܅���ϧ:���۷���zz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��܅���ϧ: Sci-Fi Base Wall 01 - Doorway 01"
    �?  �?  �?(�Ȱ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����޼��088�
 *����۷���z2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(�Ȱ�����2�����������ԫ源�Dz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(���۷���z2'�����L�����ߓ���Ҭ��،���Պ��Μ�Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������LTrigger"

��3C  4C   �?gff@��l@(���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*������ߓ��ServerContext"
    �?  �?  �?(���������2
��ȟҗ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ȟҗ���SlidingDoorControllerServer"
    �?  �?  �?(�����ߓ��ZZ
 
cs:ComponentRoot����������

cs:DoorRoot��Պ��Μ�


cs:Trigger�
�����Lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*��Ҭ��،��ClientContext"
  /C   �?  �?  �?(���������2��Ց���+���������������6Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���Ց���+SlidingDoorControllerClient"
    �?  �?  �?(�Ҭ��،��Z{
 
cs:ComponentRoot����������

cs:DoorRoot��Պ��Μ�

cs:OpenSound��������

cs:CloseSound�
��������6z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��������Helper_DoorOpenSound"
    �?  �?  �?(�Ҭ��،��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*���������6Helper_DoorCloseSound"
    �?  �?  �?(�Ҭ��،��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*��Պ��Μ�DoorRoot"
    �?  �?  �?(���������2	폫��҂�,Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�폫��҂�,Geo_StaticContext"
    �?  �?  �?(�Պ��Μ�2	��������yZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������ySci-fi Base Door 01"
 ���B  �?  �?  �?(폫��҂�,z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *���ԫ源�D5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(���۷���z2է������5���ƒ��������ĳ��BZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�է������5ServerContext"
    �?  �?  �?(��ԫ源�D2
���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������SlidingDoorControllerServer"
    �?  �?  �?(է������5ZX

cs:ComponentRoot�
��ԫ源�D

cs:DoorRoot�
����ĳ��B


cs:Trigger�
�����Lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*����ƒ����ClientContext"
  /C   �?  �?  �?(��ԫ源�D2�������������Жv�Ҍ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������SlidingDoorControllerClient"
    �?  �?  �?(���ƒ����Zy

cs:ComponentRoot�
��ԫ源�D

cs:DoorRoot�
����ĳ��B

cs:OpenSound�
�����Жv

cs:CloseSound��Ҍ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*������ЖvHelper_DoorOpenSound"
    �?  �?  �?(���ƒ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��Ҍ���Helper_DoorCloseSound"
    �?  �?  �?(���ƒ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�����ĳ��BDoorRoot"
    �?  �?  �?(��ԫ源�D2
���ɻ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ɻ���Geo_StaticContext"
    �?  �?  �?(����ĳ��B2
�ع®����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ع®����Sci-fi Base Door 01"
 ���B  �?  �?  �?(���ɻ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *�ݱ��֞�׾;Sci-fi Base Wall Interior 01 - Double Sliding Door Template"$
  �D  ��   8   �?  �?  �?(�Җ���֭�2�ߥ�܎��N���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ߥ�܎��N)Sci-Fi Base Wall Interior 01 - Doorway 01"
    �?  �?  �?(ݱ��֞�׾z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ƹ���j088�
 *����������2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(ݱ��֞�׾2��̤�����������2z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���̤���5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(���������2'۴��떭���Ȣ�哶�������������φ�Œ4Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�۴��떭��Trigger"

��3C  4C   �?gff@��l@(��̤���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*��Ȣ�哶��ServerContext"
    �?  �?  �?(��̤���2	���ϻ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ϻ���SlidingDoorControllerServer"
    �?  �?  �?(�Ȣ�哶��ZY

cs:ComponentRoot�
��̤���

cs:DoorRoot�
���φ�Œ4


cs:Trigger�۴��떭��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���������ClientContext"
  /C   �?  �?  �?(��̤���2��펂ȍ��ן�ĳ��o�ֲ��ɞ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���펂ȍ�SlidingDoorControllerClient"
    �?  �?  �?(��������Zy

cs:ComponentRoot�
��̤���

cs:DoorRoot�
���φ�Œ4

cs:OpenSound�
�ן�ĳ��o

cs:CloseSound��ֲ��ɞ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��ן�ĳ��oHelper_DoorOpenSound"
    �?  �?  �?(��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��ֲ��ɞ��Helper_DoorCloseSound"
    �?  �?  �?(��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*����φ�Œ4DoorRoot"
    �?  �?  �?(��̤���2
���ұ����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ұ����Geo_StaticContext"
    �?  �?  �?(���φ�Œ42	��������GZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������GSci-fi Base Door 01"
 ���B  �?  �?  �?(���ұ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *���������25Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(���������2ة��������о�����+���󶥒�Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ة�������ServerContext"
    �?  �?  �?(��������22	��������FZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������FSlidingDoorControllerServer"
    �?  �?  �?(ة�������ZZ

cs:ComponentRoot�
��������2

cs:DoorRoot����󶥒�


cs:Trigger�۴��떭��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*��о�����+ClientContext"
  /C   �?  �?  �?(��������22ά؛����F�Ż��̤��󭃍��� Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�ά؛����FSlidingDoorControllerClient"
    �?  �?  �?(�о�����+Zz

cs:ComponentRoot�
��������2

cs:DoorRoot����󶥒�

cs:OpenSound��Ż��̤�

cs:CloseSound�
�󭃍��� z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��Ż��̤�Helper_DoorOpenSound"
    �?  �?  �?(�о�����+Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��󭃍��� Helper_DoorCloseSound"
    �?  �?  �?(�о�����+Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*����󶥒�DoorRoot"
    �?  �?  �?(��������22	��������,Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������,Geo_StaticContext"
    �?  �?  �?(���󶥒�2
Ґ��큺āZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ґ��큺āSci-fi Base Door 01"
 ���B  �?  �?  �?(��������,z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *�����ו���Walls 02"
  D   �?  �?  �?(���������2����㰶��������У�������ώɜ��ګ��z���𿞰�������텤����������ü���P�����蛄������������ށ��ͧԱ��������⏌�ѫ��í����4�������T�Ö�����(���ȡ��Q񎃈���µ��������ʦ��ާ�Ȩ����Ū���������i����������ߋ��ߢʃי��Ǭ�ۨ�������������5������׃:ҧ������Bش���ޜ����������^��ϛ�Ƶ���̨���̌=��ֽ���h��Ϝ����h�����֛���˖���tě��ڷ���ߋߺ����x��ٓ��������ޘխ�7ұ���〹��偡�����������q��¡��������������������˅���č�������ڌ��*z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����㰶��9Sci-fi Base Wall Interior 01 Half - Sliding Door Template"
  �  ��  �?  �?  �?(����ו���2��ȣ����u�ɽ�����	z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ȣ����u%Sci-Fi Base Wall 02 - Doorway 02 Half"
    �?  �?  �?(���㰶��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
¦��䩰�088�
 *��ɽ�����	+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(���㰶��2
������׮z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������׮#Select To Edit Animation Properties"
  �A����  �?  �?  �?(�ɽ�����	2%��ɋ�������ο��Ҧ��������e��������0Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ɋ�����Trigger"

  �B  C   �?ff�?  @@(������׮Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*���ο��ҦServerContext"
    �?  �?  �?(������׮2	��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������SlidingDoorControllerServer"
    �?  �?  �?(��ο��ҦZZ
 
cs:ComponentRoot�������׮

cs:DoorRoot�
��������0


cs:Trigger���ɋ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���������eClientContext"
  /C   �?  �?  �?(������׮2�脧�͝�����ܡ�3����·���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��脧�͝�SlidingDoorControllerClient"
    �?  �?  �?(��������eZy
 
cs:ComponentRoot�������׮

cs:DoorRoot�
��������0

cs:OpenSound�	����ܡ�3

cs:CloseSound�����·���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����ܡ�3Helper_DoorOpenSound"
    �?  �?  �?(��������eZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�����·���Helper_DoorCloseSound"
    �?  �?  �?(��������eZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*���������0DoorRoot"
    �?  �?  �?(������׮2
������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Geo_StaticContext"
    �?  �?  �?(��������02	�����ŖYZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ŖYSci-fi Base Door 02"
 ���B  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *�������УSci-Fi Base Wall 02"$

  HD  �����  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *��������ώSci-Fi Base Wall 02"$

  �D  H�I=�7  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�ɜ��ګ��zSci-Fi Base Wall 02"$

  ��  ����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *����𿞰�Sci-Fi Base Wall 02 Half"
  ����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�������텤Sci-Fi Base Wall 02 - Window 01"$

  E  ������  �?  �?  �?(����ו���2
�󝅏�ĭ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *��󝅏�ĭ�Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(������텤z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���������Sci-Fi Base Wall 02 - Window 01"$

  E  H�����  �?  �?  �?(����ו���2	�۶���̝z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *��۶���̝Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���ü���PSci-fi Base Wall 02 - Corner 01"$

  �D  H��.e6  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *������蛄�Sci-fi Base Wall 02 - Corner 01"$

  H�  ������  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *���������Sci-fi Base Wall 02 - Corner 01"$
  �  H�  ��   �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *����ށ��ͧSci-fi Base Wall 02 - Corner 01")
  �  ��  �����B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *�Ա�������Sci-fi Base Wall 02 - Corner 01")
  E ���   ���3C  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *��⏌�ѫSci-Fi Base Wall 02 - Window 01"$

  HD  ����B  �?  �?  �?(����ו���2	������Юz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *�������ЮSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(�⏌�ѫz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���í����49Sci-fi Base Wall Interior 01 Half - Sliding Door Template"$

  HD  /����B  �?  �?  �?(����ו���2����ټ�<�渃����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ټ�<%Sci-Fi Base Wall 02 - Doorway 02 Half"
    �?  �?  �?(��í����4z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
¦��䩰�088�
 *��渃����+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(��í����42
��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������#Select To Edit Animation Properties"
  �A����  �?  �?  �?(�渃����2%Ϧ��������Ќ���R��㻞���l����ʉ\Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ϧ�����Trigger"

  �B  C   �?ff�?  @@(��������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����Ќ���RServerContext"
    �?  �?  �?(��������2	��ُ���ZZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ُ���ZSlidingDoorControllerServer"
    �?  �?  �?(���Ќ���RZZ
 
cs:ComponentRoot���������

cs:DoorRoot�
����ʉ\


cs:Trigger�Ϧ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���㻞���lClientContext"
  /C   �?  �?  �?(��������2Í��搪����ۯ���y₤������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�Í��搪��SlidingDoorControllerClient"
    �?  �?  �?(��㻞���lZz
 
cs:ComponentRoot���������

cs:DoorRoot�
����ʉ\

cs:OpenSound�
��ۯ���y

cs:CloseSound�₤������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*���ۯ���yHelper_DoorOpenSound"
    �?  �?  �?(��㻞���lZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�₤������Helper_DoorCloseSound"
    �?  �?  �?(��㻞���lZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�����ʉ\DoorRoot"
    �?  �?  �?(��������2
Μ�������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Μ�������Geo_StaticContext"
    �?  �?  �?(����ʉ\2	������՟fZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������՟fSci-fi Base Door 02"
 ���B  �?  �?  �?(Μ�������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *��������TSci-Fi Base Wall 02 Half"$

  HD  z����B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *��Ö�����(Sci-Fi Base Wall 02"$

  E  z� ��  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *����ȡ��QSci-Fi Base Wall 02"$

  E  � ��  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�񎃈���µ9Sci-fi Base Wall Interior 01 Half - Sliding Door Template"$

  HD �v��.e6  �?  �?  �?(����ו���2��������a������ޚlz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������a.Sci-Fi Base Wall Interior 01 Half - Doorway 02"
    �?  �?  �?(񎃈���µz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�뛗���088�
 *�������ޚl+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �C��3C  �?  �?  �?(񎃈���µ2	���Ť��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ť��#Select To Edit Animation Properties"
  �A����  �?  �?  �?(������ޚl2%��������^���å����������$��ˁ����Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������^Trigger"

  �B  C   �?ff�?  @@(���Ť��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����å���ServerContext"
    �?  �?  �?(���Ť��2
���̐���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����̐���SlidingDoorControllerServer"
    �?  �?  �?(���å���ZX

cs:ComponentRoot�
���Ť��

cs:DoorRoot�
��ˁ����


cs:Trigger�
��������^z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*��������$ClientContext"
  /C   �?  �?  �?(���Ť��2������������ױ�������څ�ܱZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���������SlidingDoorControllerClient"
    �?  �?  �?(�������$Zz

cs:ComponentRoot�
���Ť��

cs:DoorRoot�
��ˁ����

cs:OpenSound�����ױ���

cs:CloseSound�����څ�ܱz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�����ױ���Helper_DoorOpenSound"
    �?  �?  �?(�������$Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�����څ�ܱHelper_DoorCloseSound"
    �?  �?  �?(�������$Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*���ˁ����DoorRoot"
    �?  �?  �?(���Ť��2	������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Geo_StaticContext"
    �?  �?  �?(��ˁ����2	����뉍�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����뉍�Sci-fi Base Door 02"
 ���B  �?  �?  �?(������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 *���������!Sci-Fi Base Wall Interior 01 Half"$

  �D �v��.e6  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

⪦�����:088�
 *�ʦ��ާ�ȨSci-Fi Base Wall Interior 01"$

  �D �v��.e6  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������풄088�
 *�����Ū���Sci-Fi Base Wall 02"$

  HD  �� �B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�������iSci-Fi Base Wall 02"$

  �D �����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *����������Sci-Fi Base Wall 02"$

  E �����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *��ߋ��ߢʃSci-Fi Base Wall 02 Half"$

  HD ������B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�י��Ǭ�ۨSci-Fi Base Wall 02 Half"$

  E  �� ��  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�������Sci-Fi Base Wall 02"
  z�����  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *��������5Sci-Fi Base Wall 02"$

  �D  �����B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�������׃:Sci-Fi Base Wall 02"$

  E  H�����  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�ҧ������BSci-fi Base Wall 02 - Corner 01")
  E  H�   � ��  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *�ش���ޜ��Sci-Fi Base Wall 02 - Window 01"$

  �  �����B  �?  �?  �?(����ו���2
�䯨��قz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *��䯨��قSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(ش���ޜ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���������^Sci-Fi Base Wall 02 - Window 01"$

  �  �����B  �?  �?  �?(����ו���2
ܫ�����ψz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *�ܫ�����ψSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(��������^z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���ϛ�Ƶ��Sci-fi Base Wall 02 - Corner 01")
  HD  ��  ����V8  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *��̨���̌=Sci-Fi Base Wall 02 - Window 01"$

  �  H����B  �?  �?  �?(����ו���2	����ތ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *�����ތ�Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(�̨���̌=z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���ֽ���hSci-Fi Base Wall 02 Half"$

  ��  ����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *���Ϝ����hSci-fi Base Wall 02 - Corner 01"
  ����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *������֛��Sci-Fi Base Wall 02 Half"$

  ��  H�&�7  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *��˖���tSci-Fi Base Wall 02"$

  ��  H�&�7  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�ě��ڷ���Sci-Fi Base Wall 02 Half"$

  ��  H�(�7  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�ߋߺ����xSci-Fi Base Wall 02 Half"
  H�����  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *���ٓ�����Sci-Fi Base Wall 02"
  ������  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *����ޘխ�7Sci-Fi Base Wall 02 Half"
  ������  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�ұ���〹�Sci-Fi Base Wall 02 Half"
  a�����  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *��偡���Sci-fi Base Wall 02 - Corner 01"$

  HD ��� �B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *���������qSci-Fi Base Wall 02"$

  HD  a�
 �B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *���¡�����Sci-Fi Base Wall 02 - Window 01"
  /� ��  �?  �?  �?(����ו���2	�Ǥ���Rz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *��Ǥ���RSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(��¡�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *����������Sci-Fi Base Wall 02"$

  ��  ����3�  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�������˅�Sci-Fi Base Wall 02"

  �  H�   �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *���č���Sci-Fi Base Wall 02"$

  �  ����B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�����ڌ��*Sci-Fi Base Wall 02"$

  �  z����B  �?  �?  �?(����ו���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *��Ҷ�����+Floor 03"
    �?  �?  �?(���������2��һ�ʋ����ޔ���������ƨ���ߑ�Ҝ���������(�����­�3���÷¯����s��΄�Ï�ʴ������������%��������jƲ���ܩ�W�Ώ�奾��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��һ�ʋ���2Sci-fi Base Wall 02 - Double Sliding Door Template"$
  HD  H�  �D   �?  �?  �?(�Ҷ�����+2�ι�����;�ū�����"z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ι�����; Sci-Fi Base Wall 02 - Doorway 01"
    �?  �?  �?(�һ�ʋ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���؎����088�
 *��ū�����"2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(�һ�ʋ���2���������ȉ�������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(�ū�����"2%��������[���瀿�S�ݞ�����Y���񤣊��Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������[Trigger"

��3C  4C   �?gff@��l@(���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����瀿�SServerContext"
    �?  �?  �?(���������2
���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������SlidingDoorControllerServer"
    �?  �?  �?(���瀿�SZZ
 
cs:ComponentRoot����������

cs:DoorRoot����񤣊��


cs:Trigger�
��������[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*��ݞ�����YClientContext"
  /C   �?  �?  �?(���������2�ӡ�Ǒ���Б�՝��,Αӥ��ܝZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ӡ�Ǒ��SlidingDoorControllerClient"
    �?  �?  �?(�ݞ�����YZ{
 
cs:ComponentRoot����������

cs:DoorRoot����񤣊��

cs:OpenSound�
�Б�՝��,

cs:CloseSound�Αӥ��ܝz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*��Б�՝��,Helper_DoorOpenSound"
    �?  �?  �?(�ݞ�����YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�Αӥ��ܝHelper_DoorCloseSound"
    �?  �?  �?(�ݞ�����YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*����񤣊��DoorRoot"
    �?  �?  �?(���������2	�������`Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������`Geo_StaticContext"
    �?  �?  �?(���񤣊��2
�����댐�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������댐�Sci-fi Base Door 01"
 ���B  �?  �?  �?(�������`z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *�ȉ�������5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(�ū�����"2ׇ���ٟ��Ư�ݔ�܉�ډ��癆Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ׇ���ٟ��ServerContext"
    �?  �?  �?(ȉ�������2
��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������SlidingDoorControllerServer"
    �?  �?  �?(ׇ���ٟ��ZY
 
cs:ComponentRoot�ȉ�������

cs:DoorRoot�
ډ��癆


cs:Trigger�
��������[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*�Ư�ݔ�܉�ClientContext"
  /C   �?  �?  �?(ȉ�������2�������͵〓�������ǹ�ŭ�*Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������͵SlidingDoorControllerClient"
    �?  �?  �?(Ư�ݔ�܉�Zz
 
cs:ComponentRoot�ȉ�������

cs:DoorRoot�
ډ��癆

cs:OpenSound�〓������

cs:CloseSound�
�ǹ�ŭ�*z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�〓������Helper_DoorOpenSound"
    �?  �?  �?(Ư�ݔ�܉�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*��ǹ�ŭ�*Helper_DoorCloseSound"
    �?  �?  �?(Ư�ݔ�܉�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*�ډ��癆DoorRoot"
    �?  �?  �?(ȉ�������2	�ә���ȳ<Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ә���ȳ<Geo_StaticContext"
    �?  �?  �?(ډ��癆2
ۣ����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ۣ����Sci-fi Base Door 01"
 ���B  �?  �?  �?(�ә���ȳ<z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *��ޔ����Sci-Fi Base Wall 02 Half")
  HD ���  �D���B  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *������ƨ�Sci-Fi Base Wall 02 - Window 01")
  �D ���  �D��3C  �?  �?  �?(�Ҷ�����+2	���͸���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *����͸���gSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(�����ƨ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���ߑ�Ҝ�Sci-Fi Base Wall 02")
  E  H�  �D ��  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *���������(Sci-Fi Base Wall 02")
  HD  z�  �D���B  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *������­�3Sci-Fi Base Wall 02 - Window 01")
  HD ���  �D���B  �?  �?  �?(�Ҷ�����+2
��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *���������Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(�����­�3z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *����÷Sci-Fi Base Wall 02 - Window 01")
  E ���  �D��3C  �?  �?  �?(�Ҷ�����+2	�����Ǣ�wz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *������Ǣ�wSci-fi Base - Window 01"

  �C  �C   �?  �?  �?(���÷z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *�¯����sSci-Fi Base Wall 02 - Window 01")
  E ���  �D ��  �?  �?  �?(�Ҷ�����+2	��Ջ���`z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ѫ�088�
 *���Ջ���`Sci-fi Base - Window 01"

  �C  �C   �?  �?  �?(¯����sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ὡ�ׯ�088�
 *���΄�Ï�Sci-Fi Base Wall 02 Half")
  E  z�  �D ��  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��϶�Ƅ�088�
 *�ʴ������Sci-fi Base Wall 02 - Corner 01")
  E  H�  �D ��  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *�������%Sci-fi Base Wall 02 - Corner 01")
  E ���  �D��3C  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *���������jSci-fi Base Wall 02 - Corner 01")
  HD ���  �D���B  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *�Ʋ���ܩ�WSci-fi Base Wall 02 - Corner 01")
  HD  H�  �D  @�  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *��Ώ�奾��Sci-fi Base Wall 02 - Corner 01")
  E  H�  �D ��  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
·�������088�
 *�������Sci-Fi Base Wall 02")
  �D  H�  �D   �  �?  �?  �?(�Ҷ�����+z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˁ����߃088�
 *�ۻ�㺣���	Floors 01"

  HD �T�   �?  �?  �?(���������2��ʰ�����B����������Å�߸��E���䩫����҂Ы�,��������������芯�ؐ��ڬ����������Y�ɂ��ݲ����犡��*ӓ빛���I����������Ԫ�؛��Ȁ�Ӎ�Ɔ��݈����؃������������ʢ��)ܟ�ѽ���������	Όҩƹ���ہ����Φ{��ܯ����Wﵹ���낓���֚�������Єը����������ཧ���ѳ�����⣷�Œ��ҷ��p��ھծ��#��ˑā�������¹��#���և����񏮓�ם��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ʰ�����BSci-Fi Base Floor 01"$

  H� �"E���B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����������Sci-Fi Base Floor 01"$

  H�  �D���B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��Å�߸��ESci-Fi Base Floor 01"$

  H�  zD���B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����䩫��Sci-Fi Base Floor 01"3
��G�  zD�f_�(�+8 �B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���҂Ы�,Sci-Fi Base Floor 01".

  H�  �D(�+8 �B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����������Sci-Fi Base Floor 01"3
����  zD�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *������芯�Sci-Fi Base Floor 01".

  ��  �D(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ؐ��ڬ��Sci-Fi Base Floor 01"$

  H�  HC���B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���������YSci-Fi Base Floor 01"3
��G�  HC�f_�  ����3C  ��  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��ɂ��ݲ�Sci-Fi Base Floor 01"3
  �  zD�f_�  ��W=�8  ��  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����犡��*Sci-Fi Base Floor 01"3
  HD  zD�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ӓ빛���ISci-Fi Base Floor 01"3
  HD  HC�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����������Sci-Fi Base Floor 01"3
����  ��f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��Ԫ�؛��Sci-Fi Base Floor 01"3
��G�  ��f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�Ȁ�Ӎ�Ɔ�Sci-Fi Base Floor 01"$

  H�  ����B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��݈����؃Sci-Fi Base Floor 01"3
  HD  ��f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���������Sci-Fi Base Floor 01"3
  �D  HC�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�����ʢ��)Sci-Fi Base Floor 01"3
  �D  ��f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ܟ�ѽ���Sci-Fi Base Floor 01"3
����  ���f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�������	Sci-Fi Base Floor 01"3
��G�  ���f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�Όҩƹ���Sci-Fi Base Floor 01"3
  �D  �D�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ہ����Φ{Sci-Fi Base Floor 01"3
  �D  zD�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���ܯ����WSci-Fi Base Floor 01"3
  HD  ���f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ﵹ���낓Sci-Fi Base Floor 01"3
  �D  ���f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����֚����Sci-Fi Base Floor 02 4m"
  �����B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *����Єը��Sci-Fi Base Floor 02 4m"$

  �D  ������  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���������Sci-Fi Base Floor 02 4m"$

  �D  ������  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�ཧ���ѳSci-Fi Base Floor 02 4m"$

  �C  �����B  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *������⣷�Sci-Fi Base Floor 01"3
���  ���f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�Œ��ҷ��pSci-Fi Base Floor 01"3
���  ��f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���ھծ��#Sci-Fi Base Floor 01"3
���  HC�f_�  ����3�lN(-  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���ˑā���Sci-Fi Base Floor 01"3
���  zD�f_�(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�����¹��#Sci-Fi Base Floor 01".

  �  �D(�+8���B��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����և����Sci-Fi Base Floor 01"3
  H�  HC�f_�  ����3�lN(-  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�񏮓�ם��Sci-Fi Base Floor 02 4m"$

  H� �TE��3C  �?  �?  �?(ۻ�㺣���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�ΰ�거��Large Stairs")
 ��D ���   9���B  �?  �?  �?(���������2:辠�����ƾ�͐���і���ֳ����������d����������������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�辠�����Sci-Fi Base Floor 02 4m")
���C	 �C  �D��3�  �?  �?  �?(ΰ�거��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�ƾ�͐���Sci-Fi Base Floor 02 4m")
 ��	 ��  D����  �?  �?  �?(ΰ�거��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�і���ֳ��Sci-Fi Base Floor 02 4m")
 ��H H�  D����  �?  �?  �?(ΰ�거��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���������dSci-Fi Base Floor 02 4m")
 �����C  D����  �?  �?  �?(ΰ�거��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *����������Sci-fi Base Stairs 01 - L"
    �?  �?  �?(ΰ�거��2&��������vӭš��ѫ��������ɸ𔂡��oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������vStairs L"
 ����  �?  �?  �?(���������2������զʇ�����Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������զUpper"$

  �C  �C����  �?  �?  �?(��������v2'����Ħ��f�ՠ�����������޲��ӥ�в�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����Ħ��fSci-Fi Base Stairs 01 150cm"$

W���������B  `?  �?  �?(������զz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *��ՠ�����Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(������զz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�������޲Sci-Fi Base Stairs 01 150cm")
��EC����  C���B  `?  �?  �?(������զz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���ӥ�в�Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(������զz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�ʇ�����SLower"
  �B   �?  �?  �?(��������v2'��ӏ�������欑����������Ǻ�Ɇ����Ȉ*z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ӏ�����Sci-Fi Base Stairs 01 150cm"$

 ��?�������B  `?  �?  �?(ʇ�����Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���欑����Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(ʇ�����Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�������Ǻ�Sci-Fi Base Stairs 01 150cm")
  HC  ��  C���B  `?  �?  �?(ʇ�����Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�Ɇ����Ȉ*Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(ʇ�����Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�ӭš��ѫ�Landing")
 XC  �  �C����  �?  �?  �?(���������22�����ͅ���������Ż�����������ό��������ݵ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ͅ��Sci-Fi Base Floor 03 4m")
  �  X�  �8���B�k?�k?  �?(ӭš��ѫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *��������Sci-Fi Base Trim 02 Corner - In"$
  �  X� ཿ   @?  @?  �?(ӭš��ѫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *�Ż�������Sci-Fi Base Trim 02 4m"

  �  C fff?  @?  �?(ӭš��ѫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *�����ό���Sci-Fi Base Trim 02 4m"$

  XC  C����fff?  @?  �?(ӭš��ѫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *������ݵ��Sci-Fi Base Trim 02 Corner"$

  XC  C6�8  @?  @?  �?(ӭš��ѫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *��������ɸRailings Inner")
  �8  H�  HB����  �?  �?  �?(���������2牜���ݓ��ئ����Vz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�牜���ݓ�"Sci-Fi Base Railing 02 Stairs - 4m")
  H�  �A !�����B  �?  �?  �?(�������ɸz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��ئ����V"Sci-Fi Base Railing 02 Stairs - 4m"

  fC�ߕC   �?  �?  �?(�������ɸz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�𔂡��oRailings Outer"
 ����  �?  �?  �?(���������2(���ŧ�ɣ���ް�񩾦�����覥�ų�ނ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ŧ�ɣ�"Sci-Fi Base Railing 02 Stairs - 4m"

 �@D  �C   �?  �?  �?(𔂡��oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���ް�񩾦"Sci-Fi Base Railing 02 Stairs - 4m")
  �9  �C  HB���B  �?  �?  �?(𔂡��oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *������覥�Sci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(𔂡��oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�ų�ނ����Sci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(𔂡��oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *��������Sci-fi Base Stairs 01 - L")
  ��H H���D��3C  �?  �?  �?(ΰ�거��2&�������h���񾲢�q�ڤ����������։��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������hStairs L"
 ����  �?  �?  �?(�������2�����Õ�7������ۗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������Õ�7Upper"$

  �C  �C����  �?  �?  �?(�������h2%�������C������޷�����Ѓ�����Mz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������CSci-Fi Base Stairs 01 150cm"$

W���������B  `?  �?  �?(�����Õ�7z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�������޷Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(�����Õ�7z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *������Sci-Fi Base Stairs 01 150cm")
��EC����  C���B  `?  �?  �?(�����Õ�7z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�Ѓ�����MSci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(�����Õ�7z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�������ۗLower"
  �B   �?  �?  �?(�������h2'������ȣ���ƌԓ�����������Q��ӧޛŝ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������ȣ�Sci-Fi Base Stairs 01 150cm"$

 ��?�������B  `?  �?  �?(������ۗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���ƌԓ���Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(������ۗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���������QSci-Fi Base Stairs 01 150cm")
  HC  ��  C���B  `?  �?  �?(������ۗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���ӧޛŝ�Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(������ۗz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *����񾲢�qLanding")
 XC  �  �C����  �?  �?  �?(�������2.��������w�Ա��ĩrꗡ��ܡ�������陨U������ԯez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������wSci-Fi Base Floor 03 4m")
  �  X�  �8���B�k?�k?  �?(���񾲢�qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *��Ա��ĩrSci-Fi Base Trim 02 Corner - In"$
  �  X� ཿ   @?  @?  �?(���񾲢�qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *�ꗡ��ܡ��Sci-Fi Base Trim 02 4m"

  �  C fff?  @?  �?(���񾲢�qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *������陨USci-Fi Base Trim 02 4m"$

  XC  C����fff?  @?  �?(���񾲢�qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *�������ԯeSci-Fi Base Trim 02 Corner"$

  XC  C6�8  @?  @?  �?(���񾲢�qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *��ڤ������Railings Inner")
  �8  H�  HB����  �?  �?  �?(�������2����؄�����������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����؄���"Sci-Fi Base Railing 02 Stairs - 4m")
  H�  �A !�����B  �?  �?  �?(�ڤ������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���������"Sci-Fi Base Railing 02 Stairs - 4m"

  fC�ߕC   �?  �?  �?(�ڤ������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�����։��Railings Outer"
 ����  �?  �?  �?(�������2'�˝������������������ѩ��2�͢���աz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��˝������"Sci-Fi Base Railing 02 Stairs - 4m"

 �@D  �C   �?  �?  �?(����։��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���������"Sci-Fi Base Railing 02 Stairs - 4m")
  �9  �C  HB���B  �?  �?  �?(����։��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�����ѩ��2Sci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(����։��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *��͢���աSci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(����։��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�ɀ�����	Floors 02"$
  HD �T�  D   �?  �?  �?(���������2�֝�����������ϓ݃�����Ц�;�۬�嵾�������恕�݋����ᤥ��ۅ��纳ҳ�܃+����߳���Ʉ����ī��̛Ьs��౞�ß�Ɛ���ߙф��ӈ������ڢ���*�ѭ���#�������������ׄ�ѹ�䔲����$�����Й�^��ݼ���������ʴ��P���Ðɺ���޷����̊������N�ޠ��������������&����ۜ��	��ﯔ���Vʍ�������������Ǎ��׺��ꎦ��ߗ����ى������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�֝������Sci-Fi Base Floor 01"3
  HD  zD�f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *������ϓ݃Sci-Fi Base Floor 01"3
  HD  HC�f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *������Ц�;Sci-Fi Base Floor 01"3
  HD  ��f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��۬�嵾��Sci-Fi Base Floor 01"3
  �D  HC�f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *������恕Sci-Fi Base Floor 01"3
  �D  ��f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��݋����Sci-Fi Base Floor 01"3
  �D  �D�f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ᤥ��ۅ��Sci-Fi Base Floor 01"3
  �D  zD�f_�(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�纳ҳ�܃+Sci-Fi Base Floor 02 4m"$

  H�  �D��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�����߳��Sci-Fi Base Floor 02 4m"$

  H�  �D��3C  �?R�^?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *��Ʉ����Sci-Fi Base Floor 03 4m"$

  �� `E���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���餇�p088�
 *�ī��̛ЬsSci-Fi Base Floor 02 4m"$

 ��� `E���B  �?R�^?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���౞�ß�Sci-Fi Base Floor 02 4m"$

  H�  HC��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�Ɛ���ߙфSci-Fi Base Floor 02 4m"$

  H�  D��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���ӈ���Sci-Fi Base Floor 02 4m"$

  H�  zD��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *����ڢ���*Sci-Fi Base Floor 02 4m"$

  H�  z���3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *��ѭ���#Sci-Fi Base Floor 02 4m"$

  H�  ���3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *����������Sci-Fi Base Floor 02 4m"$

  H�  H���3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�����ׄ�ѹSci-Fi Base Floor 03 4m"$

  ��  �����B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���餇�p088�
 *��䔲����$Sci-Fi Base Floor 02 4m"$

 ��� ������B  �?  `?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *������Й�^Sci-Fi Base Floor 02 4m"$

  �C  z���3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���ݼ�����Sci-Fi Base Floor 02 4m"$

  �C  ����3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�����ʴ��PSci-Fi Base Floor 02 4m"$

  �C  ����3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *����Ðɺ��Sci-Fi Base Floor 01"3
  HD  �  D(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��޷����Sci-Fi Base Floor 01"3
  �D  �  D(�+8���B��3C  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�̊������NSci-Fi Base Railing 01")
 ���  H�  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *��ޠ������Sci-Fi Base Railing 01")
 ���  ��  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *���������&Sci-Fi Base Railing 01"$

 ���  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *�����ۜ��	Sci-Fi Base Railing 01")
 ���  �C  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *���ﯔ���VSci-Fi Base Railing 01")
 ���  CD  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *�ʍ�������Sci-Fi Base Railing 01")
 ���  �D  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *�������Ǎ�Sci-Fi Base Railing 01")
 ���  �D  �A���B  �?  �?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *��׺��ꎦSci-Fi Base Railing 01")
 ���  �D  �A���B  �?R�^?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *���ߗ����Sci-Fi Base Railing 01")
 ��� �E  �A��3C  �?R�^?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *�ى������Sci-Fi Base Railing 01")
 ��� �r�  �A��3C  �?R�^?  �?(ɀ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *����������Roof 01"
    �?  �?  �?(���������2���χݕ��U��׿����w�ֽź��������σn�𞗼���u��ϒ����ڻ�޲������ԥJ�ڑՋ�Ѹ�ڕՓ���i�������������َ��A�ܿċ���1�Կͻ�����������S��ť����Z����́�ȱ���ϲ�d���Ҹ�����Ԧ�������Ш���̙މ�פ�ŝg�������ͨ����˄���׼����Ъ�������¸��ެ��D���¿���L�ěĈ�����������ύ�����0�����ؓ�
z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���χݕ��USci-Fi Base Trim 02 8m")
  HD  z�  D��3C  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *���׿����wSci-fi Base Roof 01 - 8m"
  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��ֽź���Sci-fi Base Roof 01 - 8m"

  H�  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *������σnSci-fi Base Roof 01 - 8m"

  ��  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��𞗼���uSci-fi Base Roof 01 - 8m"

  �  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���ϒ��Sci-fi Base Roof 01 - 8m"

  H�  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���ڻ�޲Sci-Fi Base Trim 02 8m"
  D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *�������ԥJSci-Fi Base Trim 02 8m"$

  H�  D���B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *��ڑՋ�Ѹ�Sci-Fi Base Trim 02 8m"$

  HD  D ��  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *�ڕՓ���iSci-Fi Base Trim 02 8m")
  HD  H�  D ��  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *����������Sci-fi Base Ceiling Light 01")
  �C  ��  D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *�����َ��ASci-fi Base Ceiling Light 01")
  �C  ��  D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *��ܿċ���1Sci-fi Base Ceiling Trim 01")
  /D  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *��Կͻ���Sci-fi Base Ceiling Trim 01")
  /D  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *���������SSci-fi Base Ceiling Trim 01")
  �B  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *���ť����ZSci-fi Base Ceiling Trim 01")
  �B  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *�����́�Sci-fi Base Ceiling Trim 01")
  �B  /� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *�ȱ���ϲ�dSci-fi Base Ceiling Trim 01")
  �B  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *����Ҹ���Sci-fi Base Ceiling Trim 01")
  /D  �� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *���Ԧ�����Sci-fi Base Ceiling Trim 01")
  /D  /� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *���Ш���̙Sci-fi Base Ceiling Light 01")
  �C  ��  D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *�މ�פ�ŝgSci-fi Base Ceiling Light 01")
  �C  /�  D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *��������ͨSci-fi Base Ceiling Trim 01")
  /D  a� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *�����˄���Sci-fi Base Ceiling Light 01")
  �C  a�  D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *�׼����Ъ�Sci-fi Base Ceiling Trim 01")
  �B  a� �	D����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ڣ����?088�
 *�������Sci-Fi Base Trim 02 Corner 45"$

  HD  D  ��  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ˎ����088�
 *�¸��ެ��DSci-Fi Base Trim 02 Corner 45"
  D���B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ˎ����088�
 *����¿���LSci-Fi Base Railing 02"$

  H� �"D���B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *��ěĈ����Sci-Fi Base Railing 02"
 �"D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *��������Sci-Fi Base Railing 02"$

  HD �"D ��  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *�ύ�����0Sci-Fi Base Railing 02")
  HD  H� �"D ��  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *������ؓ�
Sci-Fi Base Railing 02"

 �{� �"D   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *��݄��ޅcHangar Stairs"
    �?  �?  �?(���������2ސ��к��q횿�����%z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ސ��к��qSci-fi Base Stairs 01 - L"

 ��� �v�   �?  �?  �?(�݄��ޅc2(�㨘������������Й�����������������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��㨘�����Stairs L"
 ����  �?  �?  �?(ސ��к��q2����ν�������Γ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ν��Upper"$

  �C  �C����  �?  �?  �?(�㨘�����2%���Ñ4���坒����뵪���>�������^z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ñ4Sci-Fi Base Stairs 01 150cm"$

W���������B  `?  �?  �?(����ν��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *����坒��Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(����ν��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���뵪���>Sci-Fi Base Stairs 01 150cm")
��EC����  C���B  `?  �?  �?(����ν��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *��������^Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(����ν��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *������Γ��Lower"
  �B   �?  �?  �?(�㨘�����2%��ǚ˴��������C��������;��Ĩ����dz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ǚ˴�Sci-Fi Base Stairs 01 150cm"$

 ��?�������B  `?  �?  �?(�����Γ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *��������CSci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(�����Γ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���������;Sci-Fi Base Stairs 01 150cm")
  HC  ��  C���B  `?  �?  �?(�����Γ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���Ĩ����dSci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(�����Γ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *��������ЙLanding")
 XC  �  �C����  �?  �?  �?(ސ��к��q22��Ҋ�������؆��Ɯ����ӑ������ؾ��Ȓ���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ҋ�����Sci-Fi Base Floor 03 4m")
  �  X�  �8���B�k?�k?  �?(�������Йz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *���؆��Ɯ�Sci-Fi Base Trim 02 Corner - In"$
  �  X� ཿ   @?  @?  �?(�������Йz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *����ӑ���Sci-Fi Base Trim 02 4m"

  �  C fff?  @?  �?(�������Йz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *����ؾ��ȒSci-Fi Base Trim 02 4m"$

  XC  C����fff?  @?  �?(�������Йz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *����������Sci-Fi Base Trim 02 Corner"$

  XC  C6�8  @?  @?  �?(�������Йz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *����������Railings Inner")
  �8  H�  HB����  �?  �?  �?(ސ��к��q2�Ȭ�������߽���_z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ȭ������"Sci-Fi Base Railing 02 Stairs - 4m")
  H�  �A !�����B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��߽���_"Sci-Fi Base Railing 02 Stairs - 4m"

  fC�ߕC   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���������Railings Outer"
 ����  �?  �?  �?(ސ��к��q2&����������ɭ�̘��Ȣ�㩘��OȔ����戄z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������"Sci-Fi Base Railing 02 Stairs - 4m"

 �@D  �C   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��ɭ�̘��"Sci-Fi Base Railing 02 Stairs - 4m")
  �9  �C  HB���B  �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�Ȣ�㩘��OSci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�Ȕ����戄Sci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�횿�����%Sci-fi Base Stairs 01 - L"$

 ��� @����3C  �?  �?  �?(�݄��ޅc2&������Ȣz������>������������ǽ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������ȢzStairs L"
 ����  �?  �?  �?(횿�����%2�Ҥ����l����ԃ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ҥ����lUpper"$

  �C  �C����  �?  �?  �?(������Ȣz2%�����������碎:����ǯ�Ԧ���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������Sci-Fi Base Stairs 01 150cm"$

W���������B  `?  �?  �?(�Ҥ����lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�����碎:Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(�Ҥ����lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�����ǯ�ԦSci-Fi Base Stairs 01 150cm")
��EC����  C���B  `?  �?  �?(�Ҥ����lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *����������Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(�Ҥ����lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�����ԃ���Lower"
  �B   �?  �?  �?(������Ȣz2$ً�����������q������w��Ș�ŬIz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ً����Sci-Fi Base Stairs 01 150cm"$

 ��?�������B  `?  �?  �?(����ԃ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *��������qSci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(����ԃ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�������wSci-Fi Base Stairs 01 150cm")
  HC  ��  C���B  `?  �?  �?(����ԃ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���Ș�ŬISci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(����ԃ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�������>Landing")
 XC  �  �C����  �?  �?  �?(횿�����%2-��������R��������r��������g��������X��������	z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������RSci-Fi Base Floor 03 4m")
  �  X�  �8���B�k?�k?  �?(������>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *���������rSci-Fi Base Trim 02 Corner - In"$
  �  X� ཿ   @?  @?  �?(������>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *���������gSci-Fi Base Trim 02 4m"

  �  C fff?  @?  �?(������>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *���������XSci-Fi Base Trim 02 4m"$

  XC  C����fff?  @?  �?(������>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *���������	Sci-Fi Base Trim 02 Corner"$

  XC  C6�8  @?  @?  �?(������>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *����������Railings Inner")
  �8  H�  HB����  �?  �?  �?(횿�����%2�䃐��������غ�ׅez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��䃐�����"Sci-Fi Base Railing 02 Stairs - 4m")
  H�  �A !�����B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *����غ�ׅe"Sci-Fi Base Railing 02 Stairs - 4m"

  fC�ߕC   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *����ǽ����Railings Outer"
 ����  �?  �?  �?(횿�����%2%�����꨾��������7׵�ʡ�ߑ:������gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������꨾�"Sci-Fi Base Railing 02 Stairs - 4m"

 �@D  �C   �?  �?  �?(���ǽ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��������7"Sci-Fi Base Railing 02 Stairs - 4m")
  �9  �C  HB���B  �?  �?  �?(���ǽ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�׵�ʡ�ߑ:Sci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(���ǽ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *�������gSci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(���ǽ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *���������\Roof 03"
    �?  �?  �?(���������2���э���z��㚞�܍��ܤ�����z�����ܨ���������������*�����閽��讂��y��Ɯ�����̔�������Ō�׮���������ڑ����������ǐ�ò�r�����������Ϗղ����������ة��ڶ
���������Ս��ɬqŤ�����ͣ�ց�ͅ���䜎�񞬌����ُ��E׿��������ʷ��}���ГΊ��ð����������ҹ�ޫ���m�뷲����@��ʶ�؄��ӊ��ǯ�����ˮќ���������L�����|��ݽ��훔�ڹ�Ѳ����ۀ�كU��������a������̼�݉�����p��ň����׆����������ӌ�������������졉Ł��ю��Ⲋi�Ũ�Ҡ��������ݷ����ב�������������Ɔ��ဍ3��㔄���L�Ӕ���є��ٰ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���э���zSci-fi Base Roof 01 - 8m"$
  H�  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���㚞�܍�Sci-fi Base Roof 01 - 8m"$
  H�  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��ܤ�����zSci-fi Base Roof 01 - 8m"$
  ��  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *������ܨ�Sci-fi Base Roof 01 - 8m"$
  H�  �  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *�������Sci-fi Base Roof 01 - 8m"$
  ��  �  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���������*Sci-fi Base Roof 01 - 8m"$
  H�  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *������閽Sci-fi Base Roof 01 - 8m"$
  ��  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���讂��ySci-fi Base Roof 01 - 8m"$
  H�  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���Ɯ����Sci-fi Base Roof 01 - 8m"$
  ��  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��̔������Sci-fi Base Roof 01 - 8m"$
  �  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��Ō�׮��Sci-fi Base Roof 01 - 8m"$
  �  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��������ڑSci-fi Base Roof 01 - 8m"$
  �  �  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���������Sci-fi Base Roof 01 - 8m"$
  �  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���ǐ�ò�rSci-fi Base Roof 01 - 8m"$
  �  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��������Sci-fi Base Roof 01 - 8m"$
  HD  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *�����Ϗղ�Sci-fi Base Roof 01 - 8m"$
  HD  �  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��������Sci-fi Base Roof 01 - 8m"$
  �D  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���ة��ڶ
Sci-fi Base Roof 01 - 8m"$
  �D  �  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��������Sci-fi Base Roof 01 - 8m"$
  �D  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *���Ս��ɬqSci-fi Base Roof 01 - 8m"$
  �D  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *�Ť�����ͣSci-fi Base Roof 01 - 8m"$
  ��  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *��ց�ͅ���Sci-fi Base Roof 01 - 8m"$
  �D  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����펋�4088�
 *�䜎�񞬌Sci-fi Base Roof 01 - 4m"$
  �D  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *�����ُ��ESci-fi Base Roof 01 - 4m"$
  HD  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *�׿������Sci-fi Base Roof 01 - 4m"$
  �D  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *���ʷ��}Sci-fi Base Roof 01 - 4m"$
  �D  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *����ГΊSci-fi Base Roof 01 - 4m"$
  �D ���  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *���ð����Sci-fi Base Roof 01 - 4m"$
  HD ���  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *�������ҹSci-fi Base Roof 01 - 4m"$
  �D  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *��ޫ���mSci-fi Base Roof 01 - 4m"$
  HD  z�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *��뷲����@Sci-fi Base Roof 01 - 4m"$
  �D  a�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *���ʶ�؄�Sci-fi Base Roof 01 - 4m"$
  HD  a�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *��ӊ��ǯ��Sci-fi Base Roof 01 - 4m"$
  �D  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *����ˮќ�Sci-fi Base Roof 01 - 4m"$
  HD  H�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��؄����k088�
 *���������LSci-fi Base Ceiling Light 01"$
  ��  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *������|Sci-fi Base Ceiling Light 01"$
  ��  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *���ݽ��훔Sci-fi Base Ceiling Light 01"$
  ��  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *��ڹ�Ѳ�Sci-fi Base Ceiling Light 01"$
  �� �m�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *����ۀ�كUSci-fi Base Ceiling Light 01"$
  �� �m�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *���������aSci-fi Base Ceiling Light 01"$
  �� �m�  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ɳ�����#088�
 *�������̼�Sci-Fi Base Girder 8m 03"$
  H�  /� ��D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *�݉�����pSci-Fi Base Girder 8m 03")
  H�  /� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *���ň��Sci-Fi Base Girder 8m 03")
  ��  /� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *���׆�����Sci-Fi Base Girder 8m 03"$
  H�  �� ��D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *������ӌ��Sci-Fi Base Girder 8m 03")
  H�  �� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *���������Sci-Fi Base Girder 8m 03")
  ��  �� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *����졉Ł�Sci-Fi Base Girder 8m 03"$
  H� �T� ��D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *��ю��ⲊiSci-Fi Base Girder 8m 03")
  H� �T� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *��Ũ�Ҡ���Sci-Fi Base Girder 8m 03")
  �� �T� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *������ݷ��Sci-Fi Base Girder 8m 03"$
  H� �v� ��D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *���ב�����Sci-Fi Base Girder 8m 03")
  H� �v� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *��������Sci-Fi Base Girder 8m 03")
  �� �v� ��D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ɡ088�
 *��Ɔ��ဍ3Sci-Fi Base Floor 02 4m")
  HD  ��  �D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���㔄���LSci-Fi Base Floor 02 4m")
  �C  ��  �D����  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *��Ӕ���єSci-Fi Base Trim 02 8m")
  HD  �  �D��3�  �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *���ٰ����Sci-Fi Base Trim 02 8m"

  ��  �D   �?  �?  �?(��������\z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������S088�
 *��ʏ�����KPillars"
    �?  �?  �?(���������2����އğ�����ß��Jʠ؏���0���޹���֕����ݍc�����ܥ���Ś���E�ҋɞ�ڍ���������Y�ßͧ���f�܍㚎��Y��������ʠ���ӷ;�����͆���������Y��ν������쌌�����������އ����卾�@�����د������ȡ��-���͈�гMᮤ�֕�������ǆбX�˿��ꃃ|�����ꊁ���������Ġ���_���������ݶ���Ě̆ɸ�������۶Ճ�Q�����ӂ焖�����/z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����އğ�Sci-fi Base Pillar 02 - Top 01")
  HD  H�  D# ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *�����ß��JSci-fi Base Pillar 02 - Base 01"

  ��  H�   �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *�ʠ؏���0Sci-fi Base Pillar 02 - Top 01"$
  ��  H�  D   �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *����޹���Sci-fi Base Pillar 02 - Top 01")
  �  ��  D���B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *�֕����ݍcSci-fi Base Pillar 02 - Base 01"$

  �  �����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *������ܥSci-fi Base Pillar 02 - Top 01")
  � �m�  D���B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *����Ś���ESci-fi Base Pillar 02 - Base 01"$

  � �m����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *��ҋɞ�ڍ�Sci-fi Base Pillar 02 - Top 01"$

 �m�  D ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *���������YSci-fi Base Pillar 02 - Base 01"
 �m� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *��ßͧ���fSci-fi Base Pillar 02 - Top 01"$

  ��  D ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *��܍㚎��YSci-fi Base Pillar 02 - Base 01"
  �� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *���������Sci-fi Base Pillar 02 - Top 01")
  ��  ��  D��3C  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *�ʠ���ӷ;Sci-fi Base Pillar 02 - Base 01"$

  ��  ����3C  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *������͆�Sci-fi Base Pillar 01"
  ����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *���������YSci-fi Base Pillar 01"$

  HD  H� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *���ν�����Sci-fi Base Pillar 01"
  H����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *��쌌�����Sci-fi Base Pillar 02 - Base 01"$

  HD  ����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *�������އ�Sci-fi Base Pillar 02 - Top 01")
  HD  �  D���B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *����卾�@Sci-fi Base Pillar 01"$

  HD  �� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *������د��Sci-fi Base Pillar 01"
  �����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *�����ȡ��-Sci-fi Base Pillar 01"
  H����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *����͈�гMSci-fi Base Pillar 01"$

  HD  H� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *�ᮤ�֕���Sci-fi Base Pillar 02 - Base 01"$

  �D �m���3C  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *�����ǆбXSci-fi Base Pillar 02 - Top 01")
  �D �m�  D��3C  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *��˿��ꃃ|Sci-fi Base Pillar 02 - Base 01"$

  �D  �� ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *������ꊁ�Sci-fi Base Pillar 02 - Top 01")
  �D  ��  D ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *�������Sci-fi Base Pillar 02 - Top 01")
  E  ��  D���B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *���Ġ���_Sci-fi Base Pillar 02 - Base 01"$

  E  �����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *��������Sci-fi Base Pillar 02 - Top 01")
  E  H�  D���B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *���ݶ���ĚSci-fi Base Pillar 02 - Base 01"$

  E  H����B  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������Ƭ!088�
 *�̆ɸ����Sci-fi Base Pillar 02 - Top 01"3
  E  H�  �D^ꀸ������3�  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *����۶Ճ�QSci-fi Base Pillar 02 - Top 01"3
  HD  H�  �D^ꀸ���B��3�  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ˌ%088�
 *������ӂSci-fi Base Pillar 01"$

 ���  �  ��  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *�焖�����/Sci-fi Base Pillar 01"$

 ���  H���3C  �?  �?  �?(�ʏ�����Kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������T088�
 *���ѯ���Accessories"
    �?  �?  �?(���������2���Ԑ�Ҋ�����熂��[��武���Ģ�ˈ���\�̼�����o�����ӍW������Ѫ*�Ô����0��Ťߴ<��������t���ؿ��������������ݐ�ݒ��������נ�����s�����՗������T��ʄ�ظ����٪�������������`��������E��������l������H��������!�˂Ց��������ݴ&��������Z�������ʾ҃��Ư��z���ܺĖ������������ݱ������̡�����sȕ���⼔���������Q�򗚉�������ߩ��������������֙��Tŧ�������������;���������������֍q�����������������։�鱪���ޯ��ލ���ρ����5��䯐������ݲ���NŐ������ڐ���Ӂ�ӂ��ڼ����������z����ڟ�0�È�������Ā�������ï����V�Ǎ쌜���糏�Λ��Uݷ������)��������e����ߚ��Ŋ�������������ڵo�����֝����Ӕ�����Қ���������鯿؃�-��������������B�������nȚ����د�����������܋���-�����ꍷB����涂�L�������߃z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ԑ�Ҋ��Sci-fi Base Antenna 01"$
  a� �~� �E   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ܪ������088�
 *����熂��[Sci-fi Base Capsule 01 Base")
 a� Є�  �D���Bgf�?gf�?gf�?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���͘���088�
 *���武���Sci-fi Base Capsule 02 8m")
 a� Є� ��D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�鵂�޲��088�
 *�Ģ�ˈ���\Sci-fi Base Capsule Top 01")
 a� Є� @E���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ɺ��륗K088�
 *��̼�����oSci-fi Base Breakout Box 01")
  a�  ��  �D�.e6  �?���?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ӓ�088�
 *������ӍWSci-fi Base Breakout Box 03")
  E @�� @�D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *�������Ѫ*Sci-fi Base Antenna 01")
  E Є� ��D����gf�?gf�?gf�?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ܪ������088�
 *��Ô����0Sci-fi Base HVAC 01"3
  a� @g�  �D�.�6��6����33�?33�?���?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���۰���a088�
 *���Ťߴ<Sci-Fi Base Railing 01")
  HC ��� @�D�.e6  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *���������tSci-Fi Base Railing 01"$
 �D ��� @�D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *����ؿ���Sci-Fi Base Railing 01"$
 �D �� @�D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *���������Sci-Fi Base Railing 01"$
  HC �� @�D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�۫�����C088�
 *����ݐ�ݒ�Sci-fi Base HVAC 01")
 ��D $�  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���۰���a088�
 *��������Sci-fi Base Breakout Box 04"$
 ��D �A� ��D �̌?  �?gff?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ݤ������088�
 *�נ�����sSci-fi Base Breakout Box 01"3
   E =� �D�.�6��6����  �?���?��L?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ӓ�088�
 *������՗Sci-fi Base Capsule 01 Mid"$
 ��D =� @�D 333?��L?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *�������TSci-fi Base Breakout Box 03")
  E `8�  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���ʄ�ظ��Sci-fi Base Breakout Box 03")
  E � �  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���٪�����Sci-fi Base Breakout Box 03")
  E  ��  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���������`Sci-fi Base Breakout Box 03")
  �D  ��  �D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���������ESci-fi Base Breakout Box 03")
  z� @N� �D  ��  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���������lSci-fi Base Breakout Box 03"$
  �� @N� �D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *�������HSci-fi Base Breakout Box 03")
  E �k� @�D  ��  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���ʸŋ��088�
 *���������!Sci-Fi Base Girder 6m 01"$

 �� ������B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *��˂Ց���Sci-Fi Base Girder 6m 01")
 @� ���  D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *������ݴ&Sci-Fi Base Girder 6m 01")
 �� ���  �D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *���������ZSci-Fi Base Girder 6m 01")
 �� ���  �D���  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *��������ʾSci-Fi Base Girder 6m 01"$
 �� �;�  �D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�҃��Ư��zSci-Fi Base Girder 6m 01")
 `�� ���  �D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *����ܺĖ��Sci-Fi Base Girder 6m 01")
 `��  ��  �D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *����������Sci-Fi Base Girder 6m 01"$
 ��  ��  �D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *��ݱ������Sci-Fi Base Girder 6m 01"$
 ��  z�  �D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�̡�����sSci-Fi Base Girder 6m 01")
 ��  ��  �D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�ȕ���⼔�Sci-Fi Base Girder 6m 01")
 @�  ��  D���B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *���������QSci-Fi Base Girder 6m 01"$

 ��  �����B  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *��򗚉����Sci-Fi Base Floor 01".
  � �;� ��D
������3�  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����ߩ��Sci-Fi Base Floor 01".
  � �{� ��D
������3�  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����������Sci-Fi Base Floor 01".
   9�A� ��D
��3���3�  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *����֙��TSci-Fi Base Girder 6m 01")
  H��;�  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�ŧ������Sci-Fi Base Girder 6m 01")
  H� ���  �D���  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *��������;Sci-Fi Base Girder 6m 01"$

�;�  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *����������Sci-Fi Base Girder 6m 01")
  H��;�  �D���  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�������֍qSci-Fi Base Girder 6m 01")
  H� @5�  D���  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *����������Sci-Fi Base Girder 6m 01"$

  H�  /����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *�������Sci-Fi Base Girder 6m 01"$
  � @5�  D   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *���։�鱪�Sci-Fi Base Girder 6m 01"

  �  /�   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��̲����088�
 *���ޯ��ލ�Sci-Fi Base Stairs 01 150cm")
  �  ��  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *���ρ����5Sci-Fi Base Stairs 01 150cm")
  �  ��  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *���䯐���Sci-Fi Base Stairs 01 150cm")
  �  �  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *����ݲ���NSci-Fi Base Stairs 01 150cm")
  �  /�  �D����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *�Ő������Sci-Fi Base Floor 01"3
  H�  � ��D�.�7��3���3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ڐ���Ӂ�Sci-Fi Base Floor 01"3
  H�  � ��D�.�7���B��3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�ӂ��ڼ��Sci-Fi Base Floor 01"3
  H�  H� ��D�.�7��3���3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *���������zSci-Fi Base Floor 01".

  H� ��D�.�7��3���3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *�����ڟ�0Sci-Fi Base Floor 01".

  z� ��D�.�7��3���3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��È������Sci-Fi Base Floor 01"3
  H�  z� ��D�.�7��3���3C  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ǅ/088�
 *��Ā������Sci-Fi Base Floor 02 4m"3
  ��  �� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *��ï����VSci-Fi Base Floor 02 4m"3
  ��  �� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *��Ǎ쌜���Sci-Fi Base Floor 02 4m"3
  ��  /� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�糏�Λ��USci-Fi Base Floor 02 4m"3
  ��  � ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�ݷ������)Sci-Fi Base Floor 02 4m"3
  ��  a� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *���������eSci-Fi Base Floor 02 4m"3
  ��  H� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����볻�088�
 *�����ߚ��Sci-Fi Base Girder Corner 01"$
  ��  ��  �D ��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *�Ŋ�������Sci-Fi Base Girder Corner 01")
  ��  ��  �D��3C��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *�������ڵoSci-Fi Base Girder Corner 01"$

 8��  �D���B��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *������֝��Sci-Fi Base Girder Corner 01"$

 �I�  �D ����?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *���Ӕ�����Sci-Fi Base Girder Corner 01")
  ��  H�  �D��3C��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *�Қ�������Sci-Fi Base Girder Corner 01"3
  H�  H�  �D  �B�]3C�]3C��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *���鯿؃�-Sci-Fi Base Girder Corner 01"3
  H�  ��  �D  �Bs?	s?��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *���������Sci-Fi Base Railing 02"$

 0Y�  �D����gf�?gf�?���?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *�������BSci-Fi Base Railing 02")
  ��  ��  �D��3�gf�?gf�?���?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *��������nSci-Fi Base Railing 02")
  �� @g�  �D �B�̌?gf�?���?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *�Ț����دSci-Fi Base Railing 02")
  ��  /�  �D �B�̌?gf�?���?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ĝ088�
 *����������Sci-Fi Base Floor 03 4m"3
  ��  �� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���餇�p088�
 *���܋���-Sci-Fi Base Floor 03 4m"3
  ��  �� ��D�.�6�:C7����  �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���餇�p088�
 *������ꍷBSci-Fi Base Girder Corner 01")
  �� px�  �D���B��?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *�����涂�LSci-Fi Base Girder Corner 01")
  ��  ��  �D ����?��?��?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������088�
 *��������߃Sci-fi Base HVAC 01"$
  �D �;�  �A   �?  �?  �?(��ѯ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���۰���a088�
 +
TemplateAssetRefSci-fi_Base_01_Template
_�������Sci-Fi Base Girder Corner 01R3
StaticMeshAssetRefsm_ts_scf_base_girder_001_ref
e��������Sci-Fi Base Stairs 01 150cmR9
StaticMeshAssetRef#sm_ts_scf_base_stairs_001_150cm_ref
\��̲����Sci-Fi Base Girder 6m 01R3
StaticMeshAssetRefsm_ts_scf_base_girder_002_ref
b��������Sci-fi Base Capsule 01 MidR8
StaticMeshAssetRef"sm_ts_scf_base_acc_cap_top_002_ref
a�ݤ������Sci-fi Base Breakout Box 04R5
StaticMeshAssetRefsm_ts_scf_base_breakout_004_ref
S���۰���aSci-fi Base HVAC 01R0
StaticMeshAssetRefsm_ts_scf_acc_hvac_001_ref
a���ʸŋ��Sci-fi Base Breakout Box 03R5
StaticMeshAssetRefsm_ts_scf_base_breakout_003_ref
a������Ӓ�Sci-fi Base Breakout Box 01R5
StaticMeshAssetRefsm_ts_scf_base_breakout_001_ref
b�ɺ��륗KSci-fi Base Capsule Top 01R8
StaticMeshAssetRef"sm_ts_scf_base_acc_cap_top_001_ref
d���͘���Sci-fi Base Capsule 01 BaseR8
StaticMeshAssetRef"sm_ts_scf_base_acc_cap_bot_001_ref
[ܪ������Sci-fi Base Antenna 01R4
StaticMeshAssetRefsm_ts_scf_base_antenna_001_ref
X��������TSci-fi Base Pillar 01R3
StaticMeshAssetRefsm_ts_scf_base_pillar_001_ref
j������Ƭ!Sci-fi Base Pillar 02 - Base 01R;
StaticMeshAssetRef%sm_ts_scf_base_pillar_002_base_01_ref
h������ˌ%Sci-fi Base Pillar 02 - Top 01R:
StaticMeshAssetRef$sm_ts_scf_base_pillar_002_top_01_ref
\�������ɡSci-Fi Base Girder 8m 03R3
StaticMeshAssetRefsm_ts_scf_base_girder_003_ref
\��؄����kSci-fi Base Roof 01 - 4mR4
StaticMeshAssetRefsm_ts_scf_base_roof_001_4m_ref
g��ˎ����Sci-Fi Base Trim 02 Corner 45R:
StaticMeshAssetRef$sm_ts_scf_base_trim_002_corner45_ref
d��ڣ����?Sci-fi Base Ceiling Trim 01R9
StaticMeshAssetRef#sm_ts_scf_base_trim_ceiling_001_ref
fɳ�����#Sci-fi Base Ceiling Light 01R:
StaticMeshAssetRef$sm_ts_scf_base_light_ceiling_001_ref
Y����펋�4Sci-fi Base Roof 01 - 8mR1
StaticMeshAssetRefsm_ts_scf_base_roof_001_ref
Z��������SSci-Fi Base Trim 02 8mR4
StaticMeshAssetRefsm_ts_scf_base_trim_002_8m_ref
Z�۫�����CSci-Fi Base Railing 01R4
StaticMeshAssetRefsm_ts_scf_base_railing_001_ref
\���餇�pSci-Fi Base Floor 03 4mR5
StaticMeshAssetRefsm_ts_scf_base_floor_003_4m_ref
p�������<"Sci-Fi Base Railing 02 Stairs - 4mR>
StaticMeshAssetRef(sm_ts_scf_base_railing_002_4m_angled_ref
g���̺���Sci-Fi Base Trim 02 Ramp 4mR;
StaticMeshAssetRef%sm_ts_scf_base_trim_002_4m_angled_ref
d���㺮�VSci-Fi Base Stairs 01 150cmR9
StaticMeshAssetRef#sm_ts_scf_base_stairs_001_150cm_ref
V�����ǅ/Sci-Fi Base Floor 01R2
StaticMeshAssetRefsm_ts_scf_base_floor_001_ref
U�ˁ����߃Sci-Fi Base Wall 02R1
StaticMeshAssetRefsm_ts_scf_base_wall_002_ref
r�����$Sci-Fi Base Wall 01 - Doorway 03 MidR=
StaticMeshAssetRef'sm_ts_scf_base_wall_001_door_03_mid_ref
q���թƩ�d$Sci-Fi Base Wall 01 - Doorway 03 EndR=
StaticMeshAssetRef'sm_ts_scf_base_wall_001_door_03_end_ref
k⪦�����:!Sci-Fi Base Wall Interior 01 HalfR:
StaticMeshAssetRef$sm_ts_scf_base_wall_int_001_half_ref
u�����Ӏ�(Sci-Fi Base Wall Interior 01 - Window 01R<
StaticMeshAssetRef&sm_ts_scf_base_wall_int_001_win_01_ref
b������풄Sci-Fi Base Wall Interior 01R5
StaticMeshAssetRefsm_ts_scf_base_wall_int_001_ref
k��ǔϺ���Sci-fi Base Wall 01 - Corner 01R;
StaticMeshAssetRef%sm_ts_scf_base_wall_001_corner_01_ref
_��󿤯���Sci-Fi Base Wall 01 HalfR6
StaticMeshAssetRef sm_ts_scf_base_wall_001_half_ref
X��ὡ�ׯ�Sci-fi Base - Window 01R0
StaticMeshAssetRefsm_ts_scf_base_win_001_ref
g���ֶĆ�,Sci-Fi Base Wall 01 - Window 01R8
StaticMeshAssetRef"sm_ts_scf_base_wall_001_win_01_ref
��뛗���.Sci-Fi Base Wall Interior 01 Half - Doorway 02RB
StaticMeshAssetRef,sm_ts_scf_base_wall_int_001_door_02_half_ref
T������يPSci-Fi Base Wall 01R1
StaticMeshAssetRefsm_ts_scf_base_wall_001_ref
v��ƹ���j)Sci-Fi Base Wall Interior 01 - Doorway 01R=
StaticMeshAssetRef'sm_ts_scf_base_wall_int_001_door_01_ref
t冎Ӵﶃ�%Sci-Fi Base Wall 01 - Doorway 02 HalfR>
StaticMeshAssetRef(sm_ts_scf_base_wall_001_door_02_half_ref
j����޼�� Sci-Fi Base Wall 01 - Doorway 01R9
StaticMeshAssetRef#sm_ts_scf_base_wall_001_door_01_ref
��������Ț!Modern Weapon - Shotgun 01 (Prop)b�
� ����҆�*�����҆�!Modern Weapon - Shotgun 01 (Prop)"  �?  �?  �?(�ЙՑ���2b���ͮ¤�ʩ������,����©���������������Φ�ս��濤��������������֟�Ƈ΄��Ͽ�������ȟ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ͮ¤�Modern Weapon - Stock 03"

�>e@�xA   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��勨����088�
 *�ʩ������,Modern Weapon - Grip 02"$

P�$@�~A���  �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ϫ���088�
 *�����©���$Modern Weapon Accessory - Shell Clip")
�����.@h{A��3C  �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ɥ�U088�
 *����������Trigger - Rear".
n�@   6��@
  ���ǧA�<}N�<�d3=(����҆�Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *����Φ�ս� Modern Weapon - Sight Forward 03"$
"�B  �6�ղA   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�է��У��088�
 *��濤����Modern Weapon - Sight Rear 01"

�v�@.�A   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ϔ�4088�
 *���������Modern Weapon - Barrel 02"

��A"�A   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��਻���,088�
 *���֟�ƇModern Weapon - Barrel Tip 03"

�W�B"�A   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ޛ���ܹ088�
 *�΄��Ͽ��Modern Weapon - Body 03"

���A"�A   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�Ó��ќD088�
 *������ȟ��Modern Weapon - Foregrip 03"

�DB�ZNA   �?  �?  �?(����҆�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 .
TemplateAssetRefModern_Weapon_-_Shotgun_01
T�Ó��ќDModern Weapon - Body 03R-
StaticMeshAssetRefsm_weap_modern_body_003
`�ޛ���ܹModern Weapon - Barrel Tip 03R2
StaticMeshAssetRefsm_weap_modern_barreltip_003
X��਻���,Modern Weapon - Barrel 02R/
StaticMeshAssetRefsm_weap_modern_barrel_002
`�����ϔ�4Modern Weapon - Sight Rear 01R3
StaticMeshAssetRefsm_weap_modern_sight_rear_001
d�է��У�� Modern Weapon - Sight Forward 03R3
StaticMeshAssetRefsm_weap_modern_sight_forw_003
j�����ɥ�U$Modern Weapon Accessory - Shell ClipR6
StaticMeshAssetRef sm_weap_modern_acc_shellclip_001
U��ϫ���Modern Weapon - Grip 02R-
StaticMeshAssetRefsm_weap_modern_grip_002
W��勨����Modern Weapon - Stock 03R.
StaticMeshAssetRefsm_weap_modern_stock_003
�3�Ͱ��ĕ��;Sci-fi Base Wall Interior 01 - Double Sliding Door Templateb�3
�2 ���˘Њ�*����˘Њ�;Sci-fi Base Wall Interior 01 - Double Sliding Door Template"  �?  �?  �?(�����B2�ʇ�����E����ڥ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ʇ�����E)Sci-Fi Base Wall Interior 01 - Doorway 01"
    �?  �?  �?(���˘Њ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ƹ���j088�
 *�����ڥ���2Sci-fi Base Sliding Door 01 Double - 30cm Z Offset"
  \C   �?  �?  �?(���˘Њ�2�Є݆��������׾�Кz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Є݆����5Select To Edit Animation Properties (Sliding Door 01)"
  �A����  �?  �?  �?(����ڥ���2&�������ŕ�����������҈ƌ��Ͽ��Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������ŕTrigger"

��3C  4C   �?gff@��l@(�Є݆����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*���������ServerContext"
    �?  �?  �?(�Є݆����2
���Ƅ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ƅ����SlidingDoorControllerServer"
    �?  �?  �?(��������ZZ
 
cs:ComponentRoot��Є݆����

cs:DoorRoot�
�Ͽ��


cs:Trigger��������ŕz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*����҈ƌ�ClientContext"
  /C   �?  �?  �?(�Є݆����2�����>Ӛ���忛����ć��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *������>SlidingDoorControllerClient"
    �?  �?  �?(���҈ƌ�Zy
 
cs:ComponentRoot��Є݆����

cs:DoorRoot�
�Ͽ��

cs:OpenSound�
Ӛ���忛

cs:CloseSound�
����ć��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*�Ӛ���忛Helper_DoorOpenSound"
    �?  �?  �?(���҈ƌ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�����ć��Helper_DoorCloseSound"
    �?  �?  �?(���҈ƌ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*��Ͽ��DoorRoot"
    �?  �?  �?(�Є݆����2	��������cZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������cGeo_StaticContext"
    �?  �?  �?(�Ͽ��2
���ְ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ְ���Sci-fi Base Door 01"
 ���B  �?  �?  �?(��������cz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 *�����׾�К5Select To Edit Animation Properties (Sliding Door 02)"$

  �C  �A���B  �?  �?  �?(����ڥ���2�����检;��埰ͳ����礷���8Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������检;ServerContext"
    �?  �?  �?(����׾�К2	��������AZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������ASlidingDoorControllerServer"
    �?  �?  �?(�����检;ZZ
 
cs:ComponentRoot�����׾�К

cs:DoorRoot�
��礷���8


cs:Trigger��������ŕz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���埰ͳ��ClientContext"
  /C   �?  �?  �?(����׾�К2�����ۉ�z��ױ������ϧ��ߟ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *������ۉ�zSlidingDoorControllerClient"
    �?  �?  �?(��埰ͳ��Z{
 
cs:ComponentRoot�����׾�К

cs:DoorRoot�
��礷���8

cs:OpenSound���ױ����

cs:CloseSound���ϧ��ߟ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*���ױ����Helper_DoorOpenSound"
    �?  �?  �?(��埰ͳ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*���ϧ��ߟ�Helper_DoorCloseSound"
    �?  �?  �?(��埰ͳ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*���礷���8DoorRoot"
    �?  �?  �?(����׾�К2
����ƞ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ƞ��Geo_StaticContext"
    �?  �?  �?(��礷���82	������(Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������(Sci-fi Base Door 01"
 ���B  �?  �?  �?(����ƞ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�騼�ѿ�088�
 O
TemplateAssetRef;Sci-fi_Base_Wall_Interior_01_-_Double_Sliding_Door_Template
U��ɸ����Scifi Ship Engine 02R0
StaticMeshAssetRefsm_scf_ship_engine_002_ref
�*��ĝ���۔Sci-fi Base Stairs 01 - Lb�)
�) ������Ø�*�������Ø�Sci-Fi Base Stairs 01 - L"  �?  �?  �?(�����B2&���Ԟ�߿�Х����������������ǈ����qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ԟ�߿�Stairs L"
 ����  �?  �?  �?(������Ø�2������ĝ�����ۄ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������ĝ�Upper"$

  �C  �C����  �?  �?  �?(���Ԟ�߿�2&ߣ�´��������煴�j���ۭ��ӧ���ۜ���Uz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ߣ�´����Sci-Fi Base Stairs 01 150cm"$

W���������B  `?  �?  �?(������ĝ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�����煴�jSci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(������ĝ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *����ۭ��ӧSci-Fi Base Stairs 01 150cm")
��EC����  C���B  `?  �?  �?(������ĝ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *����ۜ���USci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(������ĝ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�����ۄ�Lower"
  �B   �?  �?  �?(���Ԟ�߿�2&����������������Q��Ď�������哰�Ɓz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Sci-Fi Base Stairs 01 150cm"$

 ��?�������B  `?  �?  �?(����ۄ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *��������QSci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(����ۄ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���Ď�����Sci-Fi Base Stairs 01 150cm")
  HC  ��  C���B  `?  �?  �?(����ۄ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *���哰�ƁSci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(����ۄ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�Х������Landing")
 XC  �  �C����  �?  �?  �?(������Ø�2/����̜�R�ڰ�����.���ǰ���r�ڪϿ�ɇ��ߍ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����̜�RSci-Fi Base Floor 03 4m")
  �  X�  �8���B�k?�k?  �?(Х������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *��ڰ�����.Sci-Fi Base Trim 02 Corner - In"$
  �  X� ཿ   @?  @?  �?(Х������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *����ǰ���rSci-Fi Base Trim 02 4m"

  �  C fff?  @?  �?(Х������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *��ڪϿ�ɇSci-Fi Base Trim 02 4m"$

  XC  C����fff?  @?  �?(Х������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *���ߍ��Sci-Fi Base Trim 02 Corner"$

  XC  C6�8  @?  @?  �?(Х������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *����������Railings Inner")
  �8  H�  HB����  �?  �?  �?(������Ø�2˒�Ṑ���˹��눴�{z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�˒�Ṑ���"Sci-Fi Base Railing 02 Stairs - 4m")
  H�  �A !�����B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�˹��눴�{"Sci-Fi Base Railing 02 Stairs - 4m"

  fC�ߕC   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��ǈ����qRailings Outer"
 ����  �?  �?  �?(������Ø�2&諑�������ǰ�錽�����������ȷ�Ԇ��Xz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�諑�����"Sci-Fi Base Railing 02 Stairs - 4m"

 �@D  �C   �?  �?  �?(�ǈ����qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���ǰ�錽�"Sci-Fi Base Railing 02 Stairs - 4m")
  �9  �C  HB���B  �?  �?  �?(�ǈ����qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *����������Sci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(�ǈ����qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *��ȷ�Ԇ��XSci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(�ǈ����qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 -
TemplateAssetRefSci-Fi_Base_Stairs_01_-_L
E�������ʔIcon Ammo Clip	R&
PlatformBrushAssetRefIcon_AmmoClip
�ü��߰�ɓSetPlayerRotationAndGravityZ�
�
--[[local propRotationModifier = script:GetCustomProperty("RotationModifier")
local propGravityModifier = script:GetCustomProperty("GravityModifier")
local propName = script:GetCustomProperty("Name")]]

--local parent = script.parent

--local player = script.


		
--function OnPlayerRespawn(player)
--	if player.team == 1 then	end
--end














local propParent = script:GetCustomProperty("Parent"):WaitForObject()


local function RotateOnSpawn(player)
	--local x, y, z = player:GetWorldRotation()
	
	player.parent = propParent
	player:SetWorldRotation(Rotation.New(0, 0, 0))
	--player:GetDefaultCamera():SetRotationOffset(Rotation.New(0, 0, 0))
	--player.gravityScale = player.gravityScale * -1
end






for _, p in pairs(Game.GetPlayers()) do
	RotateOnSpawn(p)
end






--[[propParent.SetPosition(p.GetWorldPosition())
	propParent.SetRotation(p.GetWorldRotation())
	p.parent = parent
	parent.Rotation = Rotation.NewRotation.New(0, 180, 0)]]
	
	--[[if p.GetAncestorByType("CoreObject") then
		UI.PrintToScreen("Object Found")
	end]]
	--p.respawnedEvent:Connect(RotateOnSpawn)
	--RotateOnSpawn(p)


local Number x = nil

--[[function Tick(deltaTime)
	for _, p in pairs(Game.GetPlayers()) do
		
		
		print(tostring(p:GetVelocity().x) .. " " .. p:GetVelocity().y .. " " .. p:GetVelocity().z)
	
	end
end]]

[���ϚདྷStreet Barrier - PedestrianR/
StaticMeshAssetRefsm_barrier_pedestrian_001
�����Ͻ�ڐSci-fi Console_01(Prop)b�
� ����껱[*�����껱[Sci-fi Console_01(Prop)"  �?  �?  �?(�����B2h���񙔟�����ž̽�$⬥�ߧ�â������X��������u�����Ì�����Ƀ喏��ٟ����:�����������܁��������Gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����񙔟��Sci-fi Console Leg 02"
    �?  �?  �?(����껱[Z-
+
ma:Shared_Detail2:color�, �?  @@%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ф�����088�
 *����ž̽�$Sci-fi Console 01"

  ��  �B   �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ҕ��ҍ�088�
 *�⬥�ߧ�Sci-fi Console Screen 02".
  ��   A  �B
�4����A  �?  �?  �?(����껱[Z&
$
ma:Shared_Detail3:id��҆����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D088�
 *�â������XSci-fi Console Screen 02"3
  �B   A  �B(�7�4A-��A  ��  �?  �?(����껱[Z&
$
ma:Shared_Detail3:id���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D088�
 *���������uSci-fi Console Leg 01"$

  *�  �A���  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������I088�
 *������Ì��Sci-fi Console Leg 01"$

  *C  �A���  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������I088�
 *����Ƀ喏Sci-fi Console Hinge 01".
  ��  ��  C
�4����A  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

¶��ݎ��2088�
 *���ٟ����:Sci-fi Console Hinge 01"3
  �B  ��  C(�74A���A  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

¶��ݎ��2088�
 *���������Sci-fi Console Screen 03"3
  ��  �  CL=8�4�\Y7  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ڽث����m088�
 *����܁���Sci-fi Console Screen 03"3
  �B  ���CL=8� 4AXY7  �?  �?  �?(����껱[Z$
"
ma:Shared_Detail1:id�	�􉸧��ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ڽث����m088�
 *������GSci-fi Console Screen 04"$

   �  C  ��  �?  �?  �?(����껱[z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������9088�
 +
TemplateAssetRefSci-fi_Console_01_Prop_
X��������9Sci-fi Console Screen 04R0
StaticMeshAssetRefsm_prop_scf_screen_004_ref
W�􉸧��e-Custom Detail 1 from Sci-fi Console Screen 03���������>

indexe  @@
U��������>Animated ScreenR6
MaterialAssetRef"mi_prop_scf_console_screen_002_ref
Xڽث����mSci-fi Console Screen 03R0
StaticMeshAssetRefsm_prop_scf_screen_003_ref
V¶��ݎ��2Sci-fi Console Hinge 01R/
StaticMeshAssetRefsm_prop_scf_hinge_001_ref
R��������ISci-fi Console Leg 01R-
StaticMeshAssetRefsm_prop_scf_leg_001_ref
X��������DSci-fi Console Screen 02R0
StaticMeshAssetRefsm_prop_scf_screen_002_ref
S��ф�����Sci-fi Console Leg 02R-
StaticMeshAssetRefsm_prop_scf_leg_002_ref
�&��������Basic Rifleb�&
�& �Ȭȶ���L*��Ȭȶ���LBasic Rifle"  �?  �?  �?(�ϴ�����v2��������T��լؔ������������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop
���Խ����
�ͻ�ߡ��竩��׷
ӰГ£͝}"������ޣ�(2

  �B  `A:2hand_rifle_aim_shoulderB
Ή�����J�����ԃ�R2hand_rifle_shootZ
��������j
��������p}   A��  �>� @F�
���񼇈��
mc:ereticletype:crosshair��rounds�� P�F�   A�  HB�  �@���L>�  �@�  �@�   ?����>�
��������T���լؔ����  pA*���������TShoot"
    �?  �?  �?(�Ȭȶ���LZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_primary*+���< 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:,
�#< 08J
mc:eabilitysetfacing:noneB' 08J
mc:eabilitysetfacing:noneJ2hand_rifle_shootZ
mc:egameaction:primaryaction*���լؔ���Reload"
    �?  �?  �?(�Ȭȶ���LZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_ult*)ff�? 8J
mc:eabilitysetfacing:aim2+��> 08J
mc:eabilitysetfacing:aim:' 08J
mc:eabilitysetfacing:noneB' 08J
mc:eabilitysetfacing:noneJ2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_33*����������
Client Art"
    �?  �?  �?(�Ȭȶ���L2
������Ԣ�Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *�������Ԣ�Geo"
    �?  �?  �?(���������2�����ɥ��X������ح�эԾ�������晥\�������~�ӂ��ݞ���֦�����v��ז�����׹�������ˮ�����ⶰʆ���}��Ԩ�����٩��,�凅���NZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ɥ��XModern Weapon - Sight Rear 01"$
h}�?n�з���A 9*�?s~?�.�?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

ڭ������~08(�
 *�������ح!Modern Weapon Accessory - Rail 02".
f�UBn�зbA
��3C��3C��u?N@H?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
�ř������08(�
 *��эԾ��� Modern Weapon - Sight Forward 02"$
�KBn�з=N�A   �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

�ަ����S08(�
 *�����晥\Modern Weapon - Body 01"$
�[YAn�з�\A   �?  �?  �?(������Ԣ�Zf
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?
-
ma:Shared_Trim:color�+ R>+ R>+ R>%  �?z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
�����þ�08(�
 *��������~Modern Weapon - Barrel Tip 01"$
:�RBn�з�\A   �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

�������s08(�
 *��ӂ��ݞ��Modern Weapon - Gas Cylinder 01"$
���An�з�\A   �?  �?  �?(������Ԣ�Z7
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

��������a08(�
 *��֦�����v!Modern Weapon Accessory - Rail 02"$
�2�An�з�\A   �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
�ř������08(�
 *���ז����!Modern Weapon Accessory - Rail 01"$
�iU@n�з��A   �?y�e?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ08(�
 *��׹�����Modern Weapon - Stock 01"$
�a�n�з�$xA �ސ?  �?  �?(������Ԣ�Z7
5
ma:Shared_BaseMaterial:color�+ R>+ R>+ R>%  �?z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

����߇��08(�
 *���ˮ�����Modern Weapon - Magazine 01")
V�Anې�R������A  �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�

�ݠ��U08(�
 *�ⶰʆ���}Modern Weapon - Grip 01")
�3@n�з��@����  �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
�������ȶ08(�
 *���Ԩ���!Modern Weapon Accessory - Rail 01")
���An��@��\A���B  �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ08(�
 *���٩��,!Modern Weapon Accessory - Rail 01")
���A�����\A����  �?  �?  �?(������Ԣ�Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ08(�
 *��凅���NTrigger - Rear".
 vAn�з�"�@
  ��F� A]�5<�F�<6Y=(������Ԣ�Za
(
ma:Shared_BaseMaterial:id�
͈�����
5
ma:Shared_BaseMaterial:color�u�>u�>u�>%  �?z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�
���������08(�
 
TemplateAssetRefBasic_Rifle
U�������ȶModern Weapon - Grip 01R-
StaticMeshAssetRefsm_weap_modern_grip_001
W�ݠ��UModern Weapon - Magazine 01R,
StaticMeshAssetRefsm_weap_modern_mag_001
c������Ǻ!Modern Weapon Accessory - Rail 01R1
StaticMeshAssetRefsm_weap_modern_acc_rail_001
d��������aModern Weapon - Gas Cylinder 01R5
StaticMeshAssetRefsm_weap_modern_gas_cylinder_001
U�����þ�Modern Weapon - Body 01R-
StaticMeshAssetRefsm_weap_modern_body_001
c�ަ����S Modern Weapon - Sight Forward 02R3
StaticMeshAssetRefsm_weap_modern_sight_forw_002
c�ř������!Modern Weapon Accessory - Rail 02R1
StaticMeshAssetRefsm_weap_modern_acc_rail_002
�Aĳ�������Sci-fi Ship Bomber (Prop)b�A
�@ �Ƕ��Ɛ*��Ƕ��ƐSciFi Ship Bomber (Prop)"  �?  �?  �?(�����B2��̲�������������.��������T��֝����y�΢���������������ʓ�����\����Ճ��s��셕�ٳ����ԋ�ݥ����Ƃ��2����創�wÀ���߲�������ʶB����ǩ���ȵ���ۢ���������l�������Ľ������š�����������������������������������ܡ������ۛ�������վ�E؎������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��̲������Scifi Ship Nacelle 03")
���C  ��  �A ��  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *��������.Scifi Ship Light 02")
���B  ��  B����  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D08�
 *���������TScifi Ship Nacelle 04"
 ��C   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���拉��08�
 *���֝����yScifi Ship Blaster 01"$
  �B  >C �B   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *��΢������Scifi Ship Engine 02"$
  z�  %C  HB   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ɸ����08�
 *���������Scifi Ship Engine 03".
  C�   C  �A
��3���3�  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ε08�
 *��ʓ�����\Scifi Ship Fuselage 02"

  pB  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ڛk08�
 *�����Ճ��sScifi Ship Engine 03".
  C�   �  B
��3���3�  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ε08�
 *���셕�ٳ�Scifi Ship Engine 02"$
  z�   �  HB   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ɸ����08�
 *����ԋ�ݥ�Scifi Ship Blaster 01"$
  �B  >� �B   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *����Ƃ��2Scifi Ship Blaster 02")
 � D  H�  \� ��  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�����創�wScifi Ship Blaster 02")
 � D  HB  \����B  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�À���߲��Scifi Ship Cockpit Canopy 02"

�>1C<ODC   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������08�
 *������ʶBScifi Ship Nacelle 01")
  �  ��  �A����  �?�Ġ?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *�����ǩ��Scifi Ship Nacelle 01")
��4�  �C  �A �B  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *��ȵ���ۢ�Scifi Ship Nacelle 02"$
  ��  �  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

뫆�����08�
 *���������lScifi Ship Nacelle 02"$
  ��  C  �A   �?  ��  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

뫆�����08�
 *��������ĽScifi Ship Cockpit Back 03"

 
rB  /C   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ނ��դ�ڇ08�
 *�������š�Scifi Ship Blaster 03"$
ش7D���  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *��������Scifi Ship Blaster 03"$
ش7D삱�  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *����������Scifi Ship Blaster 03"$
ش7D}�C  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *����������Scifi Ship Blaster 03"$
ش7D��C  �A   �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *����������Scifi Ship Nacelle 03")
���C  �C  �A���B  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *�ܡ������Scifi Ship Light 02")
���B  �C  B �B  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D08�
 *�ۛ�����Scifi Ship Engine 01"3
 �M� ��C  �A  ��  8��3�  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *���վ�ECockpit"

  �C  �B   �?  �?  �?(�Ƕ��Ɛ2s؆���΋���������戧���K����ئ��,����ԡ����߰��!�檇����
��ۂ��ַT���㤤����������������ʤ���ʚΦ��ةz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�؆���΋�Scifi Cockpit Back 01"
����  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ߚ��O08�
 *�������Scifi Cockpit Console 001"
 pA  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������.08�
 *���戧���K!Scifi Cockpit Control Terminal 01"$
 �A���A HB  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *�����ئ��,!Scifi Cockpit Control Terminal 02"

 \B HB  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ؓ������w08�
 *�����ԡ�Scifi CockPit Control Yoke"
 4B  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ײ�M08�
 *����߰��!!Scifi Cockpit Control Throttle 01"$
���� H�bz�A  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��җЂ��&08�
 *��檇����
Scifi Cockpit Sideguard 01"

���� H�  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *���ۂ��ַTScifi Cockpit Siderail 01"

���� p�  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 *����㤤���!Scifi Cockpit Control Terminal 01"$
���A  ��  HB  �? �� �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *���������Scifi Cockpit Sideguard 01"

  ����GB  �? �� �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *������ʤ��Scifi Ship Chair 01"
��o�  �? �? �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�È�����@08�
 *��ʚΦ��ةScifi Cockpit Siderail 01"

  ��  pB  �? �� �?(��վ�Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 *�؎������Scifi Ship Engine 01"3
 �M� ���  �A  ��   8��3�  �?  �?  �?(�Ƕ��Ɛz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 ,
TemplateAssetRefSciFi_Ship_Bomber__Prop_
TꠥČ��^Scifi Ship Engine 01R0
StaticMeshAssetRefsm_scf_ship_engine_001_ref
WŊ�ȇ����Scifi Ship Blaster 03R1
StaticMeshAssetRefsm_scf_ship_blaster_003_ref
aނ��դ�ڇScifi Ship Cockpit Back 03R6
StaticMeshAssetRef sm_scf_ship_cockpit_back_003_ref
V뫆�����Scifi Ship Nacelle 02R1
StaticMeshAssetRefsm_scf_ship_nacelle_002_ref
W��Х�ۜ��Scifi Ship Nacelle 01R1
StaticMeshAssetRefsm_scf_ship_nacelle_001_ref
e�������Scifi Ship Cockpit Canopy 02R8
StaticMeshAssetRef"sm_scf_ship_cockpit_canopy_002_ref
W���������Scifi Ship Blaster 02R1
StaticMeshAssetRefsm_scf_ship_blaster_002_ref
X����ڛkScifi Ship Fuselage 02R2
StaticMeshAssetRefsm_scf_ship_fuselage_002_ref
U������ΕScifi Ship Engine 03R0
StaticMeshAssetRefsm_scf_ship_engine_003_ref
V�ź�����,Scifi Ship Blaster 01R1
StaticMeshAssetRefsm_scf_ship_blaster_001_ref
V���拉��Scifi Ship Nacelle 04R1
StaticMeshAssetRefsm_scf_ship_nacelle_004_ref
R��������DScifi Ship Light 02R/
StaticMeshAssetRefsm_scf_ship_light_002_ref
V�ǝ�����|Scifi Ship Nacelle 03R1
StaticMeshAssetRefsm_scf_ship_nacelle_003_ref
����������Fantasy Candle Lit - 04 (Prop)b�
� ����􃟉*�����􃟉Candle Lit - Single 04 (Prop)"  �?  �?  �?(�����B2���󎮣�������躢z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����󎮣�ClientContext"$
X��t��?��(B   �?  �?  �?(����􃟉2�������� ��������{z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������� Candle Flame VFX"
 0p�   @@  @@  @@(���󎮣�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *���������{Point Light"

 0p>X��@   �?  �?  �?(���󎮣�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�M  �?  �?:?���>%  �?%  �@* 2)  �D  �BM�A  �B%   AU @�E]  zD*�������躢	Candle 02"
    �?  �?  �?(����􃟉z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

­����Ŕ|088�
 ,
TemplateAssetReftm_fan_candle_004_lit_01
I­����Ŕ|	Candle 02R0
StaticMeshAssetRefsm_prop_fantasy_candle_004
��������܋ Submachine Gun Sound Out Of Ammob�
� �ا������*��ا������ Submachine Gun Sound Out Of Ammo"  �?  �?  �?(�����B2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Client Context"
    �?  �?  �?(�ا������2	�������(Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������(!Dry Fire Click Generic SMG 01 SFX"
    �?  �?  �?(���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"

�ϥ����;5  �?=  �DE  �Cx�
NoneNone
T�ϥ����;Dry Fire Click SMG 01 SFXR+
AudioAssetRefsfx_smg_dryfire_01_Cue_ref
�Ӆ�պ����0Sci-fi Base Wall 02 Half - Sliding Door Templateb�
� 놟���ʪ;*�놟���ʪ;0Sci-fi Base Wall 02 Half - Sliding Door Template"  �?  �?  �?(�����B2��坉������������ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���坉����%Sci-Fi Base Wall 02 - Doorway 02 Half"
    �?  �?  �?(놟���ʪ;z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
¦��䩰�088�
 *��������� +Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(놟���ʪ;2
�ؘ����Řz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ؘ����Ř#Select To Edit Animation Properties"
  �A����  �?  �?  �?(�������� 2&��ި��ط���֩�Ǣ����镪��)�����݉ڀZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ި��ط�Trigger"

  �B  C   �?ff�?  @@(�ؘ����ŘZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*���֩�Ǣ�ServerContext"
    �?  �?  �?(�ؘ����Ř2
���裺�řZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����裺�řSlidingDoorControllerServer"
    �?  �?  �?(��֩�Ǣ�Z[
 
cs:ComponentRoot��ؘ����Ř

cs:DoorRoot������݉ڀ


cs:Trigger���ި��ط�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*����镪��)ClientContext"
  /C   �?  �?  �?(�ؘ����Ř2����΃��m���ݥ���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�����΃��mSlidingDoorControllerClient"
    �?  �?  �?(���镪��)Z|
 
cs:ComponentRoot��ؘ����Ř

cs:DoorRoot������݉ڀ

cs:OpenSound����ݥ����

cs:CloseSound������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*����ݥ����Helper_DoorOpenSound"
    �?  �?  �?(���镪��)Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*������Helper_DoorCloseSound"
    �?  �?  �?(���镪��)Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*������݉ڀDoorRoot"
    �?  �?  �?(�ؘ����Ř2
�Ȱ����ԤZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ȱ����ԤGeo_StaticContext"
    �?  �?  �?(�����݉ڀ2	��Ϊ�Ա�4Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ϊ�Ա�4Sci-fi Base Door 02"
 ���B  �?  �?  �?(�Ȱ����Ԥz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 D
TemplateAssetRef0Sci-fi_Base_Wall_02_Half_-_Sliding_Door_Template
��������ɆGameStateMessageServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This component tracks current game state and broadcasts banner messages (that can be seen with the Message Banner
component)
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local SHOW_LOBBY_MESSAGE = COMPONENT_ROOT:GetCustomProperty("ShowLobbyMessage")
local LOBBY_MESSAGE = COMPONENT_ROOT:GetCustomProperty("LobbyMessage")
local SHOW_ROUND_MESSAGE = COMPONENT_ROOT:GetCustomProperty("ShowRoundMessage")
local ROUND_MESSAGE = COMPONENT_ROOT:GetCustomProperty("RoundMessage")
local SHOW_ROUND_END_MESSAGE = COMPONENT_ROOT:GetCustomProperty("ShowRoundEndMessage")
local ROUND_END_MESSAGE = COMPONENT_ROOT:GetCustomProperty("RoundEndMessage")

-- nil GameStateChanged(int, int, bool, float)
-- Broadcasts the message when the game state is changed.
function OnGameStateChanged(oldState, newState, stateHasDuration, stateEndTime)
    if newState == ABGS.GAME_STATE_LOBBY and oldState ~= ABGS.GAME_STATE_LOBBY then
        if SHOW_LOBBY_MESSAGE then
            Events.BroadcastToAllPlayers("BannerMessage", LOBBY_MESSAGE)
        end
    elseif newState == ABGS.GAME_STATE_ROUND and oldState ~= ABGS.GAME_STATE_ROUND then
        if SHOW_ROUND_MESSAGE then
            Events.BroadcastToAllPlayers("BannerMessage", ROUND_MESSAGE)
        end
    elseif newState == ABGS.GAME_STATE_ROUND_END and oldState ~= ABGS.GAME_STATE_ROUND_END then
        if SHOW_ROUND_END_MESSAGE then
            Events.BroadcastToAllPlayers("BannerMessage", ROUND_END_MESSAGE)
        end
    end
end

-- Initialize
Events.Connect("GameStateChanged", OnGameStateChanged)
�*���������WeaponAimClientZ�)�)--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    When the weapon owner aims, this script changes player local camera properties
    such as distance, fov and offset for aiming functionality.

    This script also sends an event when the weapon owner aims:
    WeaponAiming (Player owner, bool isAiming) [Client]
    owner       - local player that aims
    isAiming    - if the owner is aiming or not

    Note:   This aiming script works best for first-person and third-person camera angles.
            Disable aiming if the weapon is used in other camera angles.
--]]

-- Internal custom properties
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

-- Exposed variables --
local CAN_AIM = WEAPON:GetCustomProperty("EnableAim")
local AIM_BINDING = WEAPON:GetCustomProperty("AimBinding")
local ZOOM_DISTANCE = WEAPON:GetCustomProperty("AimZoomDistance")

-- Internal handle variables --
local pressedHandle = nil              -- Event handle when player presses the aim binding
local releasedHandle = nil             -- Event handle when player releases the aim binding
local playerDieHandle = nil            -- Event handle when player dies

-- Internal camera variables --
local cameraResetDistance = 0
local cameraTargetDistance = 0
local lerpTime = 0
local activeCamera = nil

function Tick(deltaTime)
    if not CAN_AIM then return end
    if not Object.IsValid(WEAPON) then return end

    -- We call OnEquipped function after player is fully loaded in client
    if Object.IsValid(WEAPON.owner) and not Object.IsValid(activeCamera) then
        OnEquipped(WEAPON, WEAPON.owner)
    end

    -- Smoothly lerps the camera distance when player aims
    LerpCameraDistance(deltaTime)
end

 -- Moves the camera into position over time
function LerpCameraDistance(deltaTime)
    if lerpTime >= 1 then return end
    if not Object.IsValid(activeCamera) then return end

    lerpTime = lerpTime + deltaTime
    activeCamera.currentDistance = CoreMath.Lerp(activeCamera.currentDistance, cameraTargetDistance, lerpTime)
end

 -- Gets player current active camera
function GetPlayerActiveCamera(player)
    if not Object.IsValid(player) then
        return nil
    end

    if player:GetOverrideCamera() then
        return player:GetOverrideCamera()
    else
        return player:GetDefaultCamera()
    end
end

function EnableScoping(player)
    if player.isDead then return end
    cameraTargetDistance = ZOOM_DISTANCE
    lerpTime = 0
    Events.Broadcast("WeaponAiming", player, true)
end

function ResetScoping(player)
    cameraTargetDistance = cameraResetDistance
    lerpTime = 0
    Events.Broadcast("WeaponAiming", player, false)
end

function OnBindingPressed(player, actionName)
    if actionName == AIM_BINDING then
        EnableScoping(player)
	end
end

function OnBindingReleased(player, actionName)
    if actionName == AIM_BINDING then
        ResetScoping(player)
	end
end

function OnPlayerDied(player, damage)
    ResetScoping(player)
end

function OnEquipped(weapon, player)
    if not CAN_AIM then return end
    if not Object.IsValid(player) then return end

    -- Register event handles
    pressedHandle = player.bindingPressedEvent:Connect(OnBindingPressed)
    releasedHandle = player.bindingReleasedEvent:Connect(OnBindingReleased)
    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)

    -- Set new active camera
    activeCamera = GetPlayerActiveCamera(player)
    if Object.IsValid(activeCamera) then
        cameraResetDistance = activeCamera.currentDistance
        cameraTargetDistance = cameraResetDistance
    end
    lerpTime = 0
end

function OnUnequipped(weapon, player)
    if not CAN_AIM then return end

    -- Disconnects all the handle events to avoid event trigger
    -- for previous player when the weapon is used by next player
	if pressedHandle then pressedHandle:Disconnect() end
	if releasedHandle then releasedHandle:Disconnect() end
    if playerDieHandle then playerDieHandle:Disconnect() end

    ResetScoping(player)

    -- Remove the reference to the camera
    if Object.IsValid(activeCamera) then
        activeCamera.currentDistance = cameraResetDistance
        activeCamera = nil
    end
end

-- Initialize
WEAPON.unequippedEvent:Connect(OnUnequipped)
���������$Modern Weapon - Auto Rifle 01 (Prop)b�
� ���؈�Ӿ�*����؈�Ӿ�Modern Weapon - Auto Rifle 01"
    �?  �?  �?(�䵬�Ά��2������Ǒ��Π����������߬̃�ʣ���ʛ����ꜭ�����ܠ���������꾸�ƶ����������顼�������ш�����������į�ٽo������������ٱ�*��������BZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������Ǒ�Modern Weapon - Sight Rear 01"$
h}�?n�з���A 9*�?s~?�.�?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ڭ������~088�
 *��Π�����!Modern Weapon Accessory - Rail 02".
f�UBn�зbA
��3C��3C��u?N@H?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ř������088�
 *������߬̃ Modern Weapon - Sight Forward 02"$
�KBn�з=N�A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ަ����S088�
 *��ʣ���ʛ�Modern Weapon - Body 01"$
�[YAn�з�\A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����þ�088�
 *����ꜭ���Modern Weapon - Barrel Tip 01"$
:�RBn�з�\A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������s088�
 *���ܠ����Modern Weapon - Gas Cylinder 01"$
���An�з�\A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������a088�
 *������꾸�!Modern Weapon Accessory - Rail 02"$
�2�An�з�\A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ř������088�
 *�ƶ������!Modern Weapon Accessory - Rail 01"$
�iU@n�з��A   �?y�e?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *�����顼��Modern Weapon - Stock 01"$
�a�n�з�$xA �ސ?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����߇��088�
 *������шModern Weapon - Sight 01"$
"�An�з�)�A   �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ÜĶ���088�
 *���������Modern Weapon - Magazine 01")
V�Anې�R������A  �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ݠ��U088�
 *����į�ٽoModern Weapon - Grip 01")
�3@n�з��@����  �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������ȶ088�
 *���������!Modern Weapon Accessory - Rail 01")
���An��@��\A���B  �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *�����ٱ�*!Modern Weapon Accessory - Rail 01")
���A�����\A����  �?  �?  �?(���؈�Ӿ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *���������BTrigger - Rear".
 vAn�з�"�@
  ��F� A]�5<�F�<6Y=(���؈�Ӿ�Za
(
ma:Shared_BaseMaterial:id�
͈�����
5
ma:Shared_BaseMaterial:color�u�>u�>u�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 1
TemplateAssetRefModern_Weapon_-_Auto_Rifle_01
WÜĶ���Modern Weapon - Sight 01R.
StaticMeshAssetRefsm_weap_modern_sight_001
W��۷����{Decal Stains Round 01R2
DecalBlueprintAssetRefbp_decal_stain_round_001
�
��ρ�ـ�{&Urban Pipe Wall Attachment - 01 (Prop)b�

�	 ���Ղ���B*����Ղ���B&Urban Pipe Wall Attachment - 01 (Prop)"  �?  �?  �?(�����B22����ά������ڭ��ۗ���ϟ��������ۤ����؁�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ά���Urban Pipe Elbow 01".

  4�   �  ����?�O2C  �?  �?  �?(���Ղ���Bz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����ڭ��ۗUrban Pipe Cap 02".

  �����L=�8 �B���B  �?  �?  �?(���Ղ���Bz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Փ�����08�
 *����ϟ����Urban Pipe Elbow 01".

  4�  �L=�8���B����  �?  �?  �?(���Ղ���Bz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *�����ۤ��Urban Pipe Flange 01")
  �8   ���3����B  �?  �?  �?(���Ղ���Bz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *���؁�����Urban Pipe Cap 02".

  ��   ���3B���B����  �?  �?  �?(���Ղ���Bz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Փ�����08�
 :
TemplateAssetRef&Urban_Pipe_Wall_Attachment_-_01__Prop_
Y�Փ�����Urban Pipe Cap 02R7
StaticMeshAssetRef!sm_prop_urb_pipes_acc_cap_002_ref
���������zKill Team Scoreb�
� �龖����h*��龖����hKill Team Score"  �?  �?  �?(���ͤ�͉�2	����聬xZ]

cs:ScorePerKillX
F
cs:ScorePerKill:tooltipj+Number of score to add for a team per kill.z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����聬xTeamKillScoreServer"
    �?  �?  �?(�龖����hZ!

cs:ComponentRoot�
�龖����hz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ф�����#
TemplateAssetRefKill_Team_Score
�����Ι�zRound Teamscore Limitb�
� �������P*��������PRound Teamscore Limit"  �?  �?  �?(��ɝ����2
�˳���Zj

cs:TeamScoreLimitX

Q
cs:TeamScoreLimit:tooltipj4When a team reaches this many points, the round endsz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��˳���RoundTeamscoreLimitServer"
    �?  �?  �?(�������PZ9

cs:API��Ʀ������

cs:ComponentRoot�
�������Pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��׼����W)
TemplateAssetRefRound_Teamscore_Limit
���׼����WRoundTeamscoreLimitServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This component ends the round when a team reaches the score limit. It broadcasts the following events (server only):

TeamVictory(int winningTeam)
TieVictory()
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local TEAM_SCORE_LIMIT = COMPONENT_ROOT:GetCustomProperty("TeamScoreLimit")

-- Check user properties
if TEAM_SCORE_LIMIT <= 0 then
    warn("TeamScoreLimit must be positive")
    TEAM_SCORE_LIMIT = 100
end

-- nil Tick(float)
-- Watches for a team hitting the maximum score and ends the round
function Tick(deltaTime)
	if not ABGS.IsGameStateManagerRegistered() then
		return
	end

	if ABGS.GetGameState() == ABGS.GAME_STATE_ROUND then
		local winningTeam = nil

		for i = 0, 4 do
			if Game.GetTeamScore(i) >= TEAM_SCORE_LIMIT then
				if winningTeam then
					Events.Broadcast("TieVictory")
					ABGS.SetGameState(ABGS.GAME_STATE_ROUND_END)
					return
				else
					winningTeam = i
				end
			end
		end

		if winningTeam then
			Events.Broadcast("TeamVictory", winningTeam)
			ABGS.SetGameState(ABGS.GAME_STATE_ROUND_END)
		end
	end
end

�	����Ò��ySci-fi Chest Epic 01(Prop)b�	
�	 �ڼ�����)*��ڼ�����)Sci-fi Chest Epic 01(Prop)"  �?  �?  �?(�����B2���������������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Sci-fi Chest Epic Base 01"
    �?  �?  �?(�ڼ�����)z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ߝ���Ե 088�
 *����������
Hinged Lid"$
=<�7��S�  pB   �?  �?  �?(�ڼ�����)2����̇��\����Ӭ����ӄ��ͬz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����̇��\Sci-fi Chest Hinge 01"$

��SB��?0 �  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *�����Ӭ��Sci-fi Chest Hinge 01"$

��S���?0 �  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *���ӄ��ͬSci-fi Chest Epic Lid 01"
  �?   �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 .
TemplateAssetRefSci-fi_Chest_Epic_01_Prop_
\�������Sci-fi Chest Epic Lid 01R3
StaticMeshAssetRefsm_prop_scf_crate_lid_001_ref
[���������Sci-fi Chest Hinge 01R5
StaticMeshAssetRefsm_prop_scf_crate_hinge_001_ref
X�ߝ���Ե Sci-fi Chest Epic Base 01R/
StaticMeshAssetRefsm_prop_scf_crate_001_ref
�����ց��xGrenade Bounce Soundb�
� ������*�������Grenade Bounce Sound"  �?  �?  �?(�����B2
��Ἷ�֙Z e  �@pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���Ἷ�֙Client Context"
    �?  �?  �?(������2
�˘���УZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��˘���У+Grenade Metal Glass Rolling on Floor 01 SFX"
    �?  �?  �?(��Ἷ�֙Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%
��밿����5  �?=  �DE  �CXx�
NoneNone
u��밿����+Grenade Metal Glass Rolling on Floor 01 SFXR9
AudioAssetRef(sfx_grenade_glass_roll_floor_01a_Cue_ref
u���Ҕ���x8Custom Wall - Inner from Sci-fi Base Wall 02 - Window 01�,ɮ��̫�: 

color�  �?  �?  �?%  �?
[ɮ��̫�:Painted Metal - WhiteR6
MaterialAssetRef"mi_ts_scf_base_metal_paint_001_ref
�����ҿ��w!Modern Weapon - Grenade 04 (Prop)b�
� ��ӈ��Ό*���ӈ��Ό
Grenade 04")
 ��� ��� ��D��C  �?  �?  �?(ռƓ���ç2�������Ѯ������⾹Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������ѮGrenade Canister 04"
    �?  �?  �?(��ӈ��ΌZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ő_088�
 *�������⾹Grenade Handle 01"
x�eA   �?  �?  �?(��ӈ��ΌZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 
TemplateAssetRef
Grenade_04
O���ǯ���u2Custom Secondary Trim from Sci-fi Base Floor 02 4m���܏���` 
J��܏���`
Metal GreyR0
MaterialAssetRefmi_ts_scf_base_metal_003_ref
o��ʨ����t$Pyramid - 5-Sided Truncated PolishedR;
StaticMeshAssetRef%sm_pyramid_fivesided_truncated_hq_001
H��������sConcrete Basic 01R'
MaterialAssetRefmi_gen_concrete_001
I��������sMetal Iron Rusted 02R%
MaterialAssetRefmi_metal_iron_003
Y����ڙ��rWedge - Corner ConcaveR3
StaticMeshAssetRefsm_corner_rounded_concave_001
����ΰ���pGrenade Muzzle Flashb�
� �ы�����I*��ы�����IGrenade Muzzle Flash"  �?  �?  �?(�����B2
�夌�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��夌�����Client Context"
    �?  �?  �?(�ы�����I2�˼�����G�欒�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��˼�����G-Grenade Object Toss Throw Gear Shuffle 01 SFX"
    �?  �?  �?(�夌�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�$

̛������}5  �?=  �DE  �CXx�*��欒�����%Grenade Pin Pull Activate Cook 01 SFX"
    �?  �?  �?(�夌�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%
���רȵ��5  �?=  aEE  �CXx�
NoneNone
l���רȵ��%Grenade Pin Pull Activate Cook 01 SFXR6
AudioAssetRef%sfx_grenade_pin_pull_cook_01a_Cue_ref
�̛������}-Grenade Object Toss Throw Gear Shuffle 01 SFXRF
AudioAssetRef5sfx_grenade_object_toss_throw_gear_shuffle_01_Cue_ref
S������pCustom Metal Basic 01�-Ӄ������� 

color��̌>�̌>�̌>%  �?
EӃ�������Metal Basic 01R&
MaterialAssetRefmi_metal_basic_001
����Ԃ̠�pTurret - Ceilingb�
� ���忀���*����忀���$Modern Weapon - Auto Rifle 01 (Prop)"  �?  �?  �?(�ϴ�����v2{����������˼֟�ح!Ӛ���V�������֘󅧄����������㇧�������ͨ����̩���3��������������_���ͺ���B�������g���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Modern Weapon - Body 01"$
�[YAn�з�\A   �?  �?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����þ�088�
 *��˼֟�ح!Modern Weapon - Gas Cylinder 01"$
���An�з�\A   �?  �?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������a088�
 *�Ӛ���V!Modern Weapon Accessory - Rail 01"$
�iU@n�з��A   �?y�e?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *��������֘Modern Weapon - Magazine 01")
V�Anې�R������A  �?  �?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ݠ��U088�
 *�󅧄�����!Modern Weapon Accessory - Rail 01")
���An��@��\A���B  �?  �?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *������㇧�!Modern Weapon Accessory - Rail 01")
���A�����\A����  �?  �?  �?(���忀���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������Ǻ088�
 *�������ͨ�Modern Weapon - Scope 02"

  pA  �A   �?  �?  �?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ȋ088�
 *����̩���3Modern Weapon - Magazine 03"$

���A (�����A���?a8@���?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���؇��#088�
 *�������"Modern Weapon Accessory - Laser 01")
  B ��@ r\A����  �?  �?  �?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 *���������_Modern Weapon - Barrel 02"

  �A �IA   �?  �?  �?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��਻���,088�
 *����ͺ���BModern Weapon - Barrel Tip 02"

  �B �IA +�Z?]H?]H?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Œ������088�
 *��������gModern Weapon - Body 04".
  pA  �@  �A
  �BH ��  �?  @?  @?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ݚ���088�
 *����������Modern Weapon - Disc 01"$

  pA��KB  �B  �?  �?  �?(���忀���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 
NoneNone
T���ݚ���Modern Weapon - Body 04R-
StaticMeshAssetRefsm_weap_modern_body_004
V������ȋModern Weapon - Scope 02R.
StaticMeshAssetRefsm_weap_modern_scope_002
��������oSetupPlayerZ��--[[local propFlashlight = script:GetCustomProperty("Flashlight")

function LightOnOff(light)
	if bindingPressed == "ability_extra_43" then
		print("Debug")
		if light.intensity == 0 then
			light.intensity = 77
		else
			light.intensity = 0
		end
	else
		print(bindingPressed)
	end
end

function OnPlayerJoined(player)
	local light = World.SpawnAsset(propFlashlight)
	light.AttachToPlayer(light, player, "camera")
	light:SetTransform(player:GetWorldTransform())
	player.bindingPressedEvent:Connect(LightOnOff)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)]]
�ʰ苾���oLobby Start Reset Team Scoresb�
� ��ù����w*���ù����wLobby Start Reset Team Scores"  �?  �?  �?(��ɝ����2	�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������LobbyStartResetTeamScoresServer"
    �?  �?  �?(��ù����wZ

cs:API��Ʀ������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����Τ��1
TemplateAssetRefLobby_Start_Reset_Team_Scores
K�����҃oGas Mask Black�,��������N 

color����=���=���=%  �?
X��������NGrenade Light Metal (default)R+
MaterialAssetRefmi_weapons_grenades_002
���ݙ����mBasic Grenadeb�
� �����̘*������̘Basic Grenade"  �?  �?  �?(�����B2&�������9����òˠ��������Σ�ӭ���Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop
���������
���я����
���ΰ���p
ӰГ£͝}"
��������(2
 :unarmed_stanceB
Ή�����J�����ԃ�R2hand_rifle_shootZ�����䯲�j
��������p}  �?�  �>� P�G�
���񼇈��
mc:ereticletype:none�����������rounds��  �D�   @�33�?�  @A�  @A�
�������9�����òˠ��  pB�+
)mc:eweapontrajectorymode:followlookvector*��������9Throw"
    �?  �?  �?(�����̘Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_primary*+���= 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:,
�#< 08J
mc:eabilitysetfacing:noneB' 08J
mc:eabilitysetfacing:noneJunarmed_throwZ
mc:egameaction:primaryaction*�����òˠ�Reload"
    �?  �?  �?(�����̘Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_ult*)���> 0J
mc:eabilitysetfacing:aim2)���= 0J
mc:eabilitysetfacing:aim:# J
mc:eabilitysetfacing:noneB# J
mc:eabilitysetfacing:noneJunarmed_pickupZ
mc:egameaction:extraaction_33*��������PickupTrigger"
  pA   �?  �?  �?(�����̘Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�5Equip Basic Grenade"08*
mc:etriggershape:box*�Σ�ӭ���
Client Art"
    �?  �?  �?(�����̘2
��̑�����Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *���̑�����Geo"
  p�   �?  �?  �?(Σ�ӭ���2�ˌ��ů���렡����]Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*��ˌ��ů��Grenade Canister 04"$

  @8��@��C  �?  �?  �?(��̑�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ő_088�
 *��렡����]Grenade Handle 01"$

  @8  �A��C  �?  �?  �?(��̑�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 !
TemplateAssetRefBasic_Grenade
8�����ƺmSky DomeR 
BlueprintAssetRefCORESKY_Sky
g��䫂���j)Custom Roof from Sci-fi Base Roof 01 - 8m�-�����Ԅ� 

color�  (?  (?  (?%  �?
\�����Ԅ�Painted Metal - WhiteR6
MaterialAssetRef"mi_ts_scf_base_metal_paint_001_ref
��ٵ�Ҽ��gDoor Status Indicator Lightb�
� ŕ���Ú�*�ŕ���Ú�Sci-fi Base Sconce 01"  �?  �?  �?(�ϴ�����v2	���Ծ�֦?Z�
#
ma:Shared_Detail1:id�
¼�荴��M
)
ma:Shared_BaseMaterial:id�������˛
!
ma:Shared_Trim:id�������˛
+
ma:Shared_Detail1:color��� =  �?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ԏ�ߒ�#088�
 *����Ծ�֦?
Area Light"3
  ˺  zC  �����A�����Q�5  �?  �?  �?(ŕ���Ú�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�K  HB�� =  �?%  �?%  �@* 2,  �E  zD*  HB  �A  �B%  �BU @�E]  zD
NoneNone
S������޶g5Custom Trim from Sci-Fi Base Railing 02 Stairs - 4m_1�������� 
W�������Plastic - GreyR8
MaterialAssetRef$mi_ts_scf_base_plastic_black_001_ref
�"��������fTeamAutobalancerServerZ�"�"--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local TEAM_COUNT = COMPONENT_ROOT:GetCustomProperty("TeamCount")
local MAX_TEAM_SIZE_DIFFERENCE = COMPONENT_ROOT:GetCustomProperty("MaxTeamSizeDifference")
local ONLY_SWITCH_DEAD_PLAYERS = COMPONENT_ROOT:GetCustomProperty("OnlySwitchDeadPlayers")
local KILL_ON_TEAM_SWITCH = COMPONENT_ROOT:GetCustomProperty("KillOnTeamSwitch")
local SCRAMBLE_AT_ROUND_END = COMPONENT_ROOT:GetCustomProperty("ScrambleAtRoundEnd")

-- Check user properties
if TEAM_COUNT < 2 or TEAM_COUNT > 4 then
    warn("TeamCount must be in the range [2, 4]")
    TEAM_COUNT = 2
end

if MAX_TEAM_SIZE_DIFFERENCE < 1 then
    warn("MaxTeamSizeDifference must be positive")
    MAX_TEAM_SIZE_DIFFERENCE = 1
end

-- nil Tick(float)
-- Watch team sizes and enforce autobalance. We only switch one player per frame.
function Tick(deltaTime)
	local teamSizes = {}

	for i = 1, TEAM_COUNT do
		teamSizes[i] = 0
	end

	for _, player in pairs(Game.GetPlayers()) do
		if teamSizes[player.team] then
			teamSizes[player.team] = teamSizes[player.team] + 1
		end
	end

	-- Find the smallest team
	local smallestTeam = nil
	local smallestTeamSize = nil

	for team, size in pairs(teamSizes) do
		if not smallestTeamSize or size < smallestTeamSize then
			smallestTeam = team
			smallestTeamSize = size
		end
	end

	-- Find teams that are too big
	local tooBigTeams = {}

	for team, size in pairs(teamSizes) do
		if size > smallestTeamSize + MAX_TEAM_SIZE_DIFFERENCE then
			table.insert(tooBigTeams, team)
		end
	end

	if #tooBigTeams == 0 then
		return
	end

	-- Find players who can be swapped
	local switchablePlayers = {}

	for _, player in pairs(Game.GetPlayers({includeTeams = tooBigTeams})) do
		if not ONLY_SWITCH_DEAD_PLAYERS or player.isDead then
			table.insert(switchablePlayers, player)
		end
	end

	-- Swap a player at random
	local numSwitchablePlayers = #switchablePlayers

	if numSwitchablePlayers > 0 then
		local player = switchablePlayers[math.random(numSwitchablePlayers)]
		player.team = smallestTeam

		if KILL_ON_TEAM_SWITCH and not player.isDead then
			player:Die()
		end
	end
end

-- nil OnRoundEnd()
-- Scrambles the teams if the creator wants
function OnRoundEnd()
	if not SCRAMBLE_AT_ROUND_END then
		return
	end

	local unassignedPlayers = Game.GetPlayers()
	local unassignedPlayerCount = #unassignedPlayers
	local minTeamSize = unassignedPlayerCount // TEAM_COUNT

	-- Fill up teams to their minimum sizes
	for team = 1, TEAM_COUNT do
		for i = 1, minTeamSize do
			local player = table.remove(unassignedPlayers, math.random(unassignedPlayerCount))
			player.team = team
			unassignedPlayerCount = unassignedPlayerCount - 1
		end
	end

	-- Assign the remaining players, making sure not to put two on the same team
	local usedTeams = {}

	for i = 1, unassignedPlayerCount do
		local player = unassignedPlayers[i]
		local team = 0

		while usedTeams[team] or team == 0 do
			team = math.random(TEAM_COUNT)
		end

		usedTeams[team] = true
		player.team = team
	end
end

-- Initialize
Game.roundEndEvent:Connect(OnRoundEnd)

���֋�����eBackpack Modelb��
�� �����*������Backpack"  �?  �?  �?(���ؕ���b2����Яͪǒ������������Ɇչ���������������������������j���驰t��Ƈр����ƭ�������ض�����_ּ��ƶ��؜�����	�ۻ���ɛ�Į������Κ���ح��˂Ĩ���������.�Ь���������ʪ��������ʹ�����㣁������������������������������蕲�ؚ�����痠����ڋ𩸣������җԀ���d�ϒ���ݜ�������˴����������������ٸ�ᄌ��΀�ޅǏѲ��e�𮭋���ї���������ė����I������Ȩ������������Ќ����������Ǌ��Ӣ஼�A����ӌ���Ȓ���ʩ^��������L����͉���������ð��������������ˣ���ņ�θ۪^���ҟ�`�������������������Ц�����ܮ�q��ũڌ���ي����0����������Д���դ��𨹼�������ʙ��[������ۨT��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ЯͪǒCube - Rounded Bottom-Aligned"$
�<��%���q
A �Vq>�V�>��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *����������Cube - Rounded Bottom-Aligned"$
 ��?�%��b��@ (�>�T?�p�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *����Ɇչ��Wedge - Convex"$
 ��?�����XB �T�>�p0>�T�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *����������Wedge - Convex")
 ��?��A�XB��3C�T�>�p0>�T�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *����������Cube - Bottom-Aligned"$
 ��?�%���XB �T�>�p0>�T�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������տ08�
 *��������jCube - Bottom-Aligned"$
 ��?�%��B �T�>�T?�p0>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������տ08�
 *����驰tRing - Quarter Thin")
�<�^�T��6B  �B�p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *���Ƈр���Ring - Quarter Thin"3
�<��HA�6B  �B�.���3��p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��ƭ������Ring - Quarter Thin"3
�<��%��7jB��3B���B���B�T?�T? ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��ض�����_Ring - Quarter Thin"3
 ��?�%��7jB��3B���B���B�T?�T?�i�@(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee   ?
#
ma:Shared_BaseMaterial:vtilee   @z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�ּ��ƶ��Ring - Quarter Thin"3
 ��?�%��OYB��3B���B���B�b?�b?�@(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�؜�����	Ellipsoid - Truncated")
�`>��%���6B�\��3W=},�>+C�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee   ?
#
ma:Shared_BaseMaterial:vtilee   ?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *��ۻ���Cube - Rounded Bottom-Aligned"

 rվ�%�� �շ>��?&�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *�ɛ�Į����Ellipsoid - Truncated")
�![A�%���6Ba4�?�3W=},�>+C�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08(�
 *���Κ���حRing - Quarter Thin"3
 ��?�%��7jB��3B���������T?�T?�i�@(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee   ?
#
ma:Shared_BaseMaterial:vtilee   @z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *���˂Ĩ���Ring - Quarter Thin"3
 ��?�%��7jB��3����B���B�T?�T?�i�@(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee   ?
#
ma:Shared_BaseMaterial:vtilee   @z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�������.Ring - Quarter Thin"3
�<��HA�6B  ��3ś�T� ��p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��Ь�����Ring - Quarter Thin"3
�<�^�T��6B  ��0x1�2x1C�p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�����ʪ���Ring - Quarter Thin"3
�OeA�HA�6B  ��ؾ�3��p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *������ʹ�Ring - Quarter Thin".
�OeA�HA�6B
  �B��3��p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�����㣁�Ring - Quarter Thin"3
�OeA�%��7jB��3B���B���B�T?�T? ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *���������Ring - Quarter Thin")
�OeA^�T��6B  �B�p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�������Ring - Quarter Thin"3
�OeA^�T��6B  ���ؾ��>�p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *����������Ellipsoid - Truncated".
0xW��%���AB
�ۀ�'2�B7��;"k=M�1=(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *�������蕲Ellipsoid - Truncated"3
�����%�����Bt��i;�1�B�=�k=G�1=(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *��ؚ�����Ring - Quarter Thin"3
� 4��%����fB��3B���B���B�T?�T? ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�痠����ڋRing - Quarter Thin".
�3��/A�u<B
  �B��3��C*?�>S	?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�𩸣�����Ellipsoid - Truncated"$
��^A�%��O8�B����
�T�>�p0>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *��җԀ���dCube - Rounded Bottom-Aligned"$
`vA��%��� B $�x>$��>�Ӈ=(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *��ϒ���ݜ�Cube - Rounded Bottom-Aligned"$
��>��%���� B <t><�>���=(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *�������˴�Cube - Rounded Bottom-Aligned")
��&��%���XB/ZA3<�=�w�>���<(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08�
 *���������Ellipsoid - Truncated")
�H�?�A?�A�����>�@h>{��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�嗺����'08(�
 *��������ٸEllipsoid - Truncated")
�H�?�֧ASz�A����NC>Rr>84�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�嗺����'08�
 *��ᄌ��΀�Ellipsoid - Truncated")
�H�?���?�A �B�>�@h>{��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�嗺����'08(�
 *�ޅǏѲ��eEllipsoid - Truncated")
�H�?�o��Sz�A �BNC>Rr>84�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�嗺����'08�
 *��𮭋���Ring - Quarter Thin"3
��9���9A�(>B  ��uؽ��3��p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�ї�������Ring - Quarter Thin"3
`�=�P7L�]8B  ��2�2C�p0?�T�> ��>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *���ė����IRing - Quarter Thin")
�J9��X�Y;1B  �B%�4?�j>��=(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�������Ȩ�Ring - Quarter Thin")
�d>��X�	)0B0e�B%�4?�j>�ok>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *����������Ellipsoid - Truncated"3
 ��?��A�hCB�y@����3�0�=�k=̸�<(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *���Ќ����Ellipsoid - Truncated"3
 ��?�J���hCB�y@����3�k���k=̸�<(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *�������ǊCube - Rounded Bottom-Aligned"$
 ��?�%��b��@ (�>�}�>�p�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ι���08(�
 *���Ӣ஼�AEllipsoid - Truncated")
�![A�%���6Ba4�?�
�=�>1C�>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�V>V>V>%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������_08�
 *�����ӌ��Fantasy Pommel 02"3
�����5�AL)B��Կ���=�w���N=���>,r�>(�����Z7
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ƚ�������08�
 *��Ȓ���ʩ^Fantasy Pommel 02"3
��9���=A8�B�Ѹ��1�x���N=���>,r�>(�����Z7
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ƚ�������08�
 *���������LFantasy Pommel 02"3
��9�
KA8�B��T���<s�A��N=���>,r�>(�����Z7
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ƚ�������08�
 *�����͉��Ring - Quarter Thin"3
H����~���)B��3��s7���B�r?�r?D�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��������ðRing - Quarter Thin"3
�Z����~���)B��3��s7���B�r?�r?D�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *����������Ring - Quarter Thin"3
�Z��1�`A��)B��3��s7���B�r?�r?D�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *������ˣ��Ring - Quarter Thin"3
H��1�`A��)B��3��s7���B�r?�r?D�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��ņ�θ۪^Ring - Quarter Thin"3
�׳A��~���)Bv�>��3B�C��B�=�A�=�m?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *����ҟ�`Ring - Quarter Thin"3
��A��_A��)Bv�>�3B�C��B�=�A�=�m?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��������Ring - Quarter Thin"3
��A��~���A�C�A��3C����U�=>�=>۔�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��������Ring - Quarter Thin"3
��A+�fA��A�A�X)�Ю��U�=>�=>۔�?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *������Ц�Ring - Quarter Thin")
��OA�i��=��B5�B��b>M�b>!'?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�����ܮ�qRing - Quarter Thin"3
��OA�i��=��BL=8���B��B��b>M�b>!'?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *���ũڌ��Ring - Quarter Thin"3
��?���q�B�ӒA�\'�� �A��>���>v�G?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��ي����0Ring - Quarter Thin"3
��?��@q�B�ӒA�\'B� ����>����v�G?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  @?
#
ma:Shared_BaseMaterial:vtilee  @?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *����������Ring - Quarter Thin"3
�ǺA+�fA1�BXoBBn/�A�������=���=�^?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��Д���դ�Ring - Quarter Thin"3
���A+�fAlB���@iJ��v/CvTJ=CTJ=���>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *��𨹼���Ring - Quarter Thin"3
���A ���lB���@iJB�v/�vTJ=CTJ����>(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�����ʙ��[Ring - Quarter Thin"3
�ǺA ���1�BUoBBw/�����B���=��Ͻ�^?(�����Z�
)
ma:Shared_BaseMaterial:id����������
5
ma:Shared_BaseMaterial:color�2,=2,=2,=%  �?
 
ma:Shared_BaseMaterial:smartP 
#
ma:Shared_BaseMaterial:utilee  �>
#
ma:Shared_BaseMaterial:vtilee  �>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����؄�08�
 *�������ۨTDecal Painted Lines 01"3
�(���oF�Y�A�.�6���B���B��w=Uk�<Fx�=(�����Z#
!
bp:color�2�<2�<2�<%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������v � *���������
World Text")
ٽ�5�@�#aA��3CȽ$>Ƚ$>Ƚ$>(�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�t
ChipPack���<���<���<%  �?%  �?-  �?2"
 mc:ecoretexthorizontalalign:left:"
 mc:ecoretextverticalalign:center@
NoneNone�*.�
R������vDecal Painted Lines 01R,
DecalBlueprintAssetRefbp_decal_lines_001
U�嗺����'Cylinder - Chamfered PolishedR(
StaticMeshAssetRefsm_cylinder_hq_002
U�������_Ellipsoid - TruncatedR0
StaticMeshAssetRefsm_ellipsoid_truncated_001
N�����؄�Ring - Quarter ThinR*
StaticMeshAssetRefsm_quarter_torus_001
G�������տCube - Bottom-AlignedR!
StaticMeshAssetRefsm_cube_001
O���������Wedge - ConvexR0
StaticMeshAssetRefsm_wedge_curved_convex_001
V���ι���Cube - Rounded Bottom-AlignedR)
StaticMeshAssetRefsm_cube_rounded_001
RĔ�Ա��aGirder Medium 4mR2
StaticMeshAssetRefsm_girder_medium_4m_1-5m_001
���������^TeamScoreUIZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties --
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("TextBox"):WaitForObject()

-- User exposed properties --
local TEAM = COMPONENT_ROOT:GetCustomProperty("Team")
local LABEL = COMPONENT_ROOT:GetCustomProperty("Label")
local SHOW_MAX_SCORE = COMPONENT_ROOT:GetCustomProperty("ShowMaxScore")
local MAX_SCORE = COMPONENT_ROOT:GetCustomProperty("MaxScore")

-- Check user properties
if TEAM < 0 or TEAM > 4 then
    warn("Team must be a valid team number (0-4)")
    TEAM = 1
end

if SHOW_MAX_SCORE and MAX_SCORE <= 0 then
    warn("MaxScore must be a positive")
    MAX_SCORE = 100
end

-- nil Tick(float)
-- Update the display
function Tick(deltaTime)
    local score = Game.GetTeamScore(TEAM)
    
    if SHOW_MAX_SCORE then
        TEXT_BOX.text = string.format("%s %d / %d", LABEL, score, MAX_SCORE)
    else
        TEXT_BOX.text = string.format("%s %d", LABEL, score)
    end
end

��ȝ��Ґ�\MessageBannerClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Displays text associated with the BannerMessage() event that takes the following forms:

BannerMessage(String message)
BannerMessage(String message, float duration)
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("TextBox"):WaitForObject()
local ELIMINATION_PANEL = script:GetCustomProperty("EliminationPanel"):WaitForObject()
local ELIMINATION_TEXT = script:GetCustomProperty("EliminationText"):WaitForObject()

-- User exposed properties
local DEFAULT_DURATION = COMPONENT_ROOT:GetCustomProperty("DefaultDuration")

-- Check user properties
if DEFAULT_DURATION <= 0.0 then
    warn("DefaultDuration must be positive")
    DEFAULT_DURATION = 2.0
end

-- Variables
local messageEndTime = 0.0
local eliminationMessageEndTime = 0.0
local startingEliminationText = ELIMINATION_TEXT.text

-- nil OnBannerMessageEvent(string, <float>)
-- Handles a client side banner message event
function OnBannerMessageEvent(message, duration)
    if duration then
        messageEndTime = time() + duration
    else
        messageEndTime = time() + DEFAULT_DURATION
    end

    PANEL.visibility = Visibility.INHERIT
    TEXT_BOX.text = message
end

-- nil OnAddKillFeedKill(killerPlayer, killedPlayer, abilityName)
-- Handles network message event when a player kills another player
function OnAddKillFeedKill(killerPlayer, killedPlayer, abilityName)
	if Game:GetLocalPlayer() ~= killerPlayer then
		return
	end
	
	ELIMINATION_PANEL.visibility = Visibility.INHERIT
	ELIMINATION_TEXT.text = string.gsub(startingEliminationText, "{name}", killedPlayer.name)
	
	if duration then
		eliminationMessageEndTime = time() + duration
	else
		eliminationMessageEndTime = time() + DEFAULT_DURATION
	end
end

-- nil Tick(float)
-- Hides the banner when the message has expired
function Tick(deltaTime)
    if time() > messageEndTime then
        PANEL.visibility = Visibility.FORCE_OFF
    end
	
	if time() > eliminationMessageEndTime then
		ELIMINATION_PANEL.visibility = Visibility.FORCE_OFF
	end
end

-- Initialize
PANEL.visibility = Visibility.FORCE_OFF
Events.Connect("BannerMessage", OnBannerMessageEvent)
Events.Connect("AddKillFeedKill_Internal", OnAddKillFeedKill)

�9���乃��[Sci-fi Ship BattleTank (Prop)b�8
�8 ���ܺ���g*����ܺ���gSciFi Ship BattleTank (Prop)"  �?  �?  �?(�����B2�����϶����󧺈��׎�צ��ܹ�?�������!Ԯ�����������ѐ��4���Š��̓��뤯����Í�ȳ��Y������������Ҳ��򤜏�|����ֱ���틵��������ʖ��y��������ԓ���ʿ�2ӏ������m�����ѹ��������|�ӝ���ѓ����Օԇ�$��ܵ���݋��¬��ܠ����������ʑ����ɝ������Ǌ���ݳ�癌Àg�������o���ȩ���򛏲��ҿ���ԟ�ݸ�kz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����϶���Scifi Ship Engine 02")
  �� ��C  B���B  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ɸ����08�
 *��󧺈��׎Scifi Ship Engine 02")
  ��  z���B����  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ɸ����08�
 *��צ��ܹ�?Scifi Ship Nacelle 04".

  �B  >C^ꀸ�k70��6  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���拉��08�
 *��������!Scifi Ship Fuselage 01".

   �  �CL=9��3C-�+8  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������.08�
 *�Ԯ�������Scifi Ship Light 02")
@��B  CC  �C  ��  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D08�
 *�����ѐ��4Scifi Ship Light 02")
@��B  C� ��C  ��  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������D08�
 *����Š��̓Scifi Ship Nacelle 01")
,��C�Tp�  HB����  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *���뤯���Scifi Ship Nacelle 01")
Xd�C  aC  HB���  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *��Í�ȳ��YScifi Ship Nacelle 03"3
`�\C  p�  �B΁�8[Q�7 �B  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *���������Scifi Ship Nacelle 03"3
`�\C  pA  �B΁�8aQ�7 �B  �?  �?  ��(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *�����Ҳ�Scifi Ship Blaster 01"$
  /D  p�  HB    @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *��򤜏�|Scifi Ship Engine 01".
  ��@�:�  B
��3���3�   @  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *�����ֱ���Scifi Ship Engine 01".
  ���7C  B
��3���3�   @  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *�틵�����Scifi Ship Engine 01".

  ��  pC@����3���3�  @  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *����ʖ��yScifi Ship Nacelle 01")
 ����<C  HB  ��  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *���������Scifi Ship Nacelle 01")
  ��@�:�  HB   �  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *�ԓ���ʿ�2Scifi Ship Engine 01".
  ��� �����
��3�"�+8   @  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *�ӏ������mScifi Ship Nacelle 01"3
  ��� C��$�L=�8   ���3�  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *������ѹ��Scifi Ship Engine 01".
  ��� C �
��3�"�+8   @  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *�������|Scifi Ship Nacelle 01"3
 ���� ��  %��.�7�E�8��3�  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *��ӝ���ѓ�Scifi Ship Fuselage 02".

  �  pA�.e�  ����8  �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ڛk08�
 *����Օԇ�$Scifi Ship Wing Small 01")
  �C  �C  �����B   @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����湩�p08�
 *���ܵ���Scifi Ship Nacelle 03"3
  �C  p�  �@��8  ��   �  �?  �?  �(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *�݋��¬��Scifi Ship Blaster 01")
  /D  p�  4B��3�   @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *�ܠ�������Scifi Ship Blaster 01"$
  /D  aC  HB    @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *����ʑ����Scifi Ship Blaster 01")
  /D  aC  4B��3�   @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *�ɝ�����Scifi Ship Nacelle 03"3
  �C  aC  �@��8  ��   �  �?  �?  �(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ǝ�����|08�
 *��Ǌ���Scifi Ship Wing Small 01")
  �C ���  �� ��   @   @   @(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����湩�p08�
 *�ݳ�癌ÀgScifi Ship Blaster 03"$
(�D� ��  �B   �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *��������oScifi Ship Blaster 03"$
(�D ��  �B   �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *����ȩ���Scifi Ship Blaster 03"$
(�D ��A  �B   �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *�򛏲��ҿ�Scifi Ship Blaster 03"$
(�D���B  �B   �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ŋ�ȇ����08�
 *���ԟ�ݸ�kScifi Ship Cockpit Back 02"$
����  ��  �C   �?  �?  �?(���ܺ���gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����Ĥ��08�
 0
TemplateAssetRefSciFi_Ship_BattleTank__Prop_
a����Ĥ��Scifi Ship Cockpit Back 02R6
StaticMeshAssetRef sm_scf_ship_cockpit_back_002_ref
\����湩�pScifi Ship Wing Small 01R4
StaticMeshAssetRefsm_scf_ship_wing_small_001_ref
X�������.Scifi Ship Fuselage 01R2
StaticMeshAssetRefsm_scf_ship_fuselage_001_ref
���������W
flashlightb�
� 騁����n*�騁����n
flashlight"  �?  �?  �?(�����B2�پ�����������<��鹮��{pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop
��������<��

��������
��������
��������"
��������2
  :unarmed_carry_object_lowB
��������J
��������Z
��������`j
��������p}  �@�
���������
mc:ereticletype:crosshair�����������rounds�� @�F�   A�  �?�  �B�  �@�  �?�  �B�  �@�   @�  �?�����������	�پ����-
+mc:eweapontrajectorymode:muzzletolooktarget*��پ���ReloadAbility"
    �?  �?  �?(騁����npz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_ult*)��? 8J
mc:eabilitysetfacing:aim2+��> 08J
mc:eabilitysetfacing:aim:' 08J
mc:eabilitysetfacing:noneB' 08J
mc:eabilitysetfacing:noneJ2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_03*���������<PickupTrigger"
    �?  �?  �?(騁����npz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*���鹮��{Geo"
@g�@    ?   ?   ?(騁����n2��������d����pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*���������d	Spotlight"
  �A   �?  �?  �?(��鹮��{2
��������pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�~  HB  �?  �?  �?%  �?%  �@* 2Z  �EI  zD"B  �A  �A%   A(5  �A=   BB%
#mc:espotlightprofile:basicspotlightU @�E]  zD*���������Lens"$
���
  ���]8��L>��L>��L>(��������dZ+
)
ma:Shared_BaseMaterial:id�ܑ���ࢂ�pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ɞ�����088�
 *�����Cylinder"
   ����L>��L>���>(��鹮��{Z*
(
ma:Shared_BaseMaterial:id�
�������pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 
NoneNone�T*Rits a flashlight! youre free to remodel if needed. (im not very good at modeling.)�
S�������Rubber Dot Panels 01R/
MaterialAssetRefmi_scf_rubber_panels_001_uv
=��������CylinderR%
StaticMeshAssetRefsm_cylinder_002
Hܑ���ࢂ�Opaque EmissiveR(
MaterialAssetReffxma_opaque_emissive
6�ɞ�����LensR"
StaticMeshAssetRefsm_lense_001
�"�؞���W6Whitebox Wall 01 with Foundation & Stairs - Door Basicb�"
�! ��������*���������6Whitebox Wall 01 with Foundation & Stairs - Door Basic"  �?  �?  �?(��������21٭��娧�����Ď��Ȏ������������ʻ�����������&z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�٭��娧��
Basic Door"$

  �C  4C����  �?  �?  �?(��������2�������ͅ���ԓ�����ǘ̓���~Z�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
J
cs:Speed:tooltipj6How fast the door opens or closes, in degrees / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a roundz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������ͅServerContext"
    �?  �?  �?(٭��娧��2����֧��l�ĥ�ȶ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����֧��lBasicDoorControllerServer"
    �?  �?  �?(�������ͅZ�
 
cs:ComponentRoot�٭��娧��

cs:RotationRoot�
�ǘ̓���~
!
cs:RotatingTrigger�
�ڝ�����
 
cs:StaticTrigger��ĥ�ȶ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ԝ�ݨ*��ĥ�ȶ���StaticTrigger"

  �B  C   �?ff�?  @@(�������ͅZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����ԓ����ClientContext"
  /C   �?  �?  �?(٭��娧��2�و���ϕ������ۂ�����Ƹ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��و���ϕ�BasicDoorControllerClient"
    �?  �?  �?(���ԓ����Z]

cs:RotationRoot�
�ǘ̓���~

cs:OpenSound������ۂ��

cs:CloseSound����Ƹ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ڦ�ױ��*������ۂ��Helper_DoorOpenSound"
    �?  �?  �?(���ԓ����Zc
.
bp:Door Type�
mc:esfx_domestic_doors_01:4
1
bp:Creak Type�
mc:esfx_door_wood_creaks_01:2z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%

����㹩�5  �?=  aEE  �CXx�*����Ƹ���Helper_DoorCloseSound"
    �?  �?  �?(���ԓ����ZH
.
bp:Door Type�
mc:esfx_domestic_doors_01:7

bp:Creak Volumee    z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�%

����㹩�5  �?=  aEE  �CXx�*��ǘ̓���~RotationRoot"
    �?  �?  �?(٭��娧��2�������#�ڝ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������#Geo_StaticContext"
    �?  �?  �?(�ǘ̓���~2	�ȃ�ډ��Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ȃ�ډ��Whitebox Door 01"
 ���B  �?  �?  �?(�������#z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������W088�
 *��ڝ�����RotatingTrigger"

  �B  C   �?ff�?  @@(�ǘ̓���~Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����Ď��ȎWhitebox Wall 01 - Foundation"
    �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���ݲ��&088�
 *����������Whitebox Wall 01 Doorway 01"
  C   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������ȟ�088�
 *����ʻ���!Whitebox Wall 01 Doorway 01 Frame"

  �C  C   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������088�
 *���������&!Whitebox Stairs 01 Straight 150cm"

  HC  aC   �?  �?  �?(��������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 J
TemplateAssetRef6Whitebox_Wall_01_with_Foundation___Stairs_-_Door_Basic
k���������!Whitebox Stairs 01 Straight 150cmR9
StaticMeshAssetRef#sm_ts_gen_whitebox_stairs_001_150cm
i������!Whitebox Wall 01 Doorway 01 FrameR8
StaticMeshAssetRef"sm_gen_whitebox_wall_001_doorframe
e������ȟ�Whitebox Wall 01 Doorway 01R9
StaticMeshAssetRef#sm_ts_gen_whitebox_wall_001_doorway
d���ݲ��&Whitebox Wall 01 - FoundationR7
StaticMeshAssetRef!sm_tx_gen_whitebox_foundation_001
Q��������WWhitebox Door 01R1
StaticMeshAssetRefsm_ts_gen_whitebox_door_001
r����㹩)Object Domestic Doors & Creaks Set 01 SFX
R9
AudioBlueprintAssetRefsfxabp_object_domestic_door_ref
��ڦ�ױ��BasicDoorControllerClientZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ROTATION_ROOT = script:GetCustomProperty("RotationRoot"):WaitForObject()
local OPEN_SOUND = script:GetCustomProperty("OpenSound"):WaitForObject()
local CLOSE_SOUND = script:GetCustomProperty("CloseSound"):WaitForObject()

-- Variable
local previousRotation = 0.0

-- float GetDoorRotation()
-- Gives you the current rotation of the door
function GetDoorRotation()
	local result = ROTATION_ROOT:GetRotation().z / 90.0

	if math.abs(result) < 0.01 then
		return 0.0
	end

	return result
end

-- nil Tick(float)
-- Plays sounds when the door begins opening or finishes closing
function Tick(deltaTime)
	local doorRotation = GetDoorRotation()

	if doorRotation ~= 0.0 and previousRotation == 0.0 and OPEN_SOUND then
		OPEN_SOUND:Play()
	end

	if doorRotation == 0.0 and previousRotation ~= 0.0 and CLOSE_SOUND then
		CLOSE_SOUND:Play()
	end

	previousRotation = doorRotation
end

-- Initialize
previousRotation = GetDoorRotation()

�4���ԝ�ݨBasicDoorControllerServerZ�4�4--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
Doors operate in the relative space of the root of the component. In that space, they rotate around the Z axis, and the
default closed state has the door along the YZ plane.
This broadcasts custom events DoorOpened(CoreObject) and DoorClosed(CoreObject)
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local ROTATION_ROOT = script:GetCustomProperty("RotationRoot"):WaitForObject()
local ROTATING_TRIGGER = script:GetCustomProperty("RotatingTrigger"):WaitForObject()
local STATIC_TRIGGER = script:GetCustomProperty("StaticTrigger"):WaitForObject()

-- User exposed properties
local AUTO_OPEN = COMPONENT_ROOT:GetCustomProperty("AutoOpen")
local TIME_OPEN = COMPONENT_ROOT:GetCustomProperty("TimeOpen")		-- Only used with AutoOpen
local OPEN_LABEL = COMPONENT_ROOT:GetCustomProperty("OpenLabel")	-- Only used without AutoOpen
local CLOSE_LABEL = COMPONENT_ROOT:GetCustomProperty("CloseLabel")	-- Only used without AutoOpen
local SPEED = COMPONENT_ROOT:GetCustomProperty("Speed")
local RESET_ON_ROUND_START = COMPONENT_ROOT:GetCustomProperty("ResetOnRoundStart")

-- Check user properties
if TIME_OPEN < 0.0 then
    warn("TimeOpen cannot be negative")
    TIME_OPEN = 0.0
end

if SPEED <= 0.0 then
    warn("Speed must be positive")
    SPEED = 450.0
end

-- Constants
-- If the door auto-opens, we only care if someone is standing in the way to prevent closing.
-- If it is manually opened and closed, we care if someone is in range of the door to operate it.
local TRIGGER = nil

if AUTO_OPEN then
	TRIGGER = STATIC_TRIGGER
else
	TRIGGER = ROTATING_TRIGGER
end

local USE_DEBOUNCE_TIME = 0.2			-- Time after using that a player can't use again

-- Variables
-- Rotation is 1.0 for +90 degree rotation, 0.0 for closed, -1.0, for -90 degree rotation
local targetDoorRotation = 0.0
local playerLastUseTimes = {}			-- Player -> float
local autoCloseTime = 0.0

-- float GetDoorRotation()
-- Gives you the current rotation of the door
function GetDoorRotation()
	local result = ROTATION_ROOT:GetRotation().z / 90.0

	if math.abs(result) < 0.01 then
		return 0.0
	end

	return result
end

-- nil SetCurrentRotation(float)
-- Snap instantly to the given rotation
function SetCurrentRotation(rotation)
	targetDoorRotation = rotation
	ROTATION_ROOT:SetRotation(Rotation.New(0.0, 0.0, 90.0 * rotation))
end

-- nil SetTargetRotation(float)
-- Sets the rotation that the door should move to (at SPEED)
function SetTargetRotation(rotation)
	targetDoorRotation = rotation
	ROTATION_ROOT:RotateTo(Rotation.New(0.0, 0.0, 90.0 * rotation), 90.0 * math.abs(targetDoorRotation - GetDoorRotation()) / SPEED, true)
end

-- nil ResetDoor()
-- Instantly snaps the door to the closed state
function ResetDoor()
	SetCurrentRotation(0.0)
end

-- nil OpenDoor(Player)
-- Opens the door away from the given player
function OpenDoor(player)
	local geoQuaternion = Quaternion.New(ROTATION_ROOT:GetWorldRotation())
	local relativeX = geoQuaternion:GetForwardVector()
	local playerOffset = player:GetWorldPosition() - ROTATION_ROOT:GetWorldPosition()

	-- Figure out which direction is away from the player
	if playerOffset .. relativeX > 0.0 then
		SetTargetRotation(1.0)
	else
		SetTargetRotation(-1.0)
	end

	Events.Broadcast("DoorOpened", COMPONENT_ROOT)
end

-- nil CloseDoor()
-- Closes the door, even if it was only partially open
function CloseDoor()
	SetTargetRotation(0.0)
end

-- nil OnBeginOverlap(Trigger, CoreObject)
-- Handles the player overlapping if AutoOpen is true
function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		if GetDoorRotation() == 0.0 then							-- Can't auto open if the door isn't closed
			OpenDoor(other)

			autoCloseTime = time() + TIME_OPEN
		end
	end
end

-- nil OnInteracted(Trigger, CoreObject)
-- Handles the player using the door if AutoOpen is false
function OnInteracted(trigger, player)
	if playerLastUseTimes[player] and playerLastUseTimes[player] + USE_DEBOUNCE_TIME > time() then
		return
	end

	playerLastUseTimes[player] = time()

	if GetDoorRotation() == 0.0 then								-- Door is closed
		OpenDoor(player)

		TRIGGER.interactionLabel = CLOSE_LABEL
	else															-- Door is open or moving, clsoe it
		CloseDoor()
	end
end

-- nil OnRoundStart()
-- Handles the roundStartEvent
function OnRoundStart()
	ResetDoor()
end

-- nil Tick(float)
-- Handle closing the door with AutoOpen, and changing interaction label back to open
function Tick(deltaTime)
	if AUTO_OPEN and targetDoorRotation ~= 0.0 then
		for _, player in pairs(Game.GetPlayers()) do				-- Don't close the door if someone is standing in it
			if TRIGGER:IsOverlapping(player) then
				autoCloseTime = time() + TIME_OPEN					-- and delay closing
				return
			end
		end

		if autoCloseTime > time() then
			return
		end

		CloseDoor()
	end

	if targetDoorRotation == 0.0 and GetDoorRotation() == 0.0 then
		if not AUTO_OPEN then
			TRIGGER.interactionLabel = OPEN_LABEL
		end

		Events.Broadcast("DoorClosed", COMPONENT_ROOT)
	end
end

-- Initialize
if AUTO_OPEN then
	TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
	TRIGGER.isInteractable = false

	for _, player in pairs(Game.GetPlayers()) do
		if TRIGGER:IsOverlapping(player) then
			OnBeginOverlap(TRIGGER, player)
		end
	end
else
	TRIGGER.interactedEvent:Connect(OnInteracted)
	TRIGGER.isInteractable = true
end

if RESET_ON_ROUND_START then
	Game.roundStartEvent:Connect(OnRoundStart)
end

���ꢃVGame State Geometryb�
� ƛ�����s*�ƛ�����sGame State Geometry"  �?  �?  �?(��ɝ����2
���ɯ����Z�

cs:Geometry� 

cs:ExistsInLobbyP

cs:ExistsInRoundP 

cs:ExistsInRoundEndP 
b
cs:Geometry:tooltipjKThe object that should only exist during certain states (must be networked)
J
cs:ExistsInLobby:tooltipj.Does the geometry exist during the lobby state
J
cs:ExistsInRound:tooltipj.Does the geometry exist during the round state
Q
cs:ExistsInRoundEnd:tooltipj2Does the geometry exist during the round end statez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ɯ����GameStateGeometryServer"
    �?  �?  �?(ƛ�����sZ9

cs:API��Ʀ������

cs:ComponentRoot�
ƛ�����spz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���Ӌ��'
TemplateAssetRefGame_State_Geometry
����Ӌ��GameStateGeometryServerZ��--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local GEOMETRY = COMPONENT_ROOT:GetCustomProperty("Geometry"):WaitForObject()
local EXISTS_IN_LOBBY = COMPONENT_ROOT:GetCustomProperty("ExistsInLobby")
local EXISTS_IN_ROUND = COMPONENT_ROOT:GetCustomProperty("ExistsInRound")
local EXISTS_IN_ROUND_END = COMPONENT_ROOT:GetCustomProperty("ExistsInRoundEnd")

-- Check user properties
if GEOMETRY and not GEOMETRY.isNetworked then
    error("Geometry object must be networked")
end

-- nil Tick(float)
-- Handles "removing" geometry when not in the lobby game state
function Tick(deltaTime)
	if GEOMETRY then
		if ABGS.IsGameStateManagerRegistered() then
			local gameState = ABGS.GetGameState()
			local exists = false

			if gameState == ABGS.GAME_STATE_LOBBY then
				exists = EXISTS_IN_LOBBY
			elseif gameState == ABGS.GAME_STATE_ROUND then
				exists = EXISTS_IN_ROUND
			elseif gameState == ABGS.GAME_STATE_ROUND_END then
				exists = EXISTS_IN_ROUND_END
			end

			if exists then
				GEOMETRY.visibility = Visibility.INHERIT
				GEOMETRY.collision = Collision.INHERIT
			else
				GEOMETRY.visibility = Visibility.FORCE_OFF
				GEOMETRY.collision = Collision.FORCE_OFF
			end
		end
	end
end

�9��լ���TAdvanced Submachine Gunb�8
�8 �����Ќ�*������Ќ�Advanced Submachine Gun"��?��?  �?(�������2.�����׺�z�ԼІ��1���������ʋ�š�������!Z�

cs:BaseDamagee  �A

cs:HeadshotDamagee  HB

cs:EnableAutoReloadP

cs:EnableAimP
"
cs:AimBindingjability_secondary
.
cs:AimActiveStancej2hand_rifle_aim_shoulder
 
cs:AimWalkSpeedPercentagee���>

cs:AimZoomDistancee  �B

cs:SpreadStandPrecisione��?

cs:SpreadWalkPrecisione���>

cs:SpreadJumpPrecisione���>

cs:SpreadCrouchPrecisione  @?
 
cs:SpreadSlidingPrecisione  �>
 
cs:SpreadAimModifierBonuse���>

cs:PickupSound�
����ۦ^

cs:LowAmmoSound��ˁ������
"
cs:ReticleTemplate������̧��

cs:HideReticleOnAimP 
Q
cs:BaseDamage:tooltipj8Normal damage that this weapon will do to enemy players.
W
cs:HeadshotDamage:tooltipj:Headshot damage that this weapon will do to enemy players.
�
cs:AimBinding:tooltipjyKeybinding to hold and activate scope / zoom ability for the weapon. Default is "ability_secondary" (right mouse button).
{
!cs:AimWalkSpeedPercentage:tooltipjVPercentage walk speed reduction when player is aiming. Must be in the range of 0 to 1.
q
cs:AimActiveStance:tooltipjSAnimation stance when aiming with this weapon. Default is 2hand_rifle_aim_shoulder.
:
cs:AimZoomDistance:tooltipjCamera distance when aiming.
z
!cs:SpreadAimModifierBonus:tooltipjUAmount of % added to the spread precision when the player aims. Range between 0 to 1.
�
cs:SpreadStandPrecision:tooltipjqPrecision % when the player is standing without aim. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadWalkPrecision:tooltipjdPrecision % when the player is walking. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadJumpPrecision:tooltipjdPrecision % when the player is jumping. Range between 0 to 1 (from least accurate to most accurate).
�
 cs:SpreadCrouchPrecision:tooltipjfPrecision % when the player is crouching. Range between 0 to 1 (from least accurate to most accurate).
�
!cs:SpreadSlidingPrecision:tooltipjdPrecision % when the player is sliding. Range between 0 to 1 (from least accurate to most accurate).
�
cs:EnableAutoReload:tooltipj�If true the weapon the player will auto reload the ammo without player's input. Only reloads if the player has the ammo resource.
5
cs:EnableAim:tooltipjEnable aiming for the weapon.pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop
���������
�ͻ�ߡ��������ۍ�
ӰГ£͝}"������ޣ�(2

  �B  pA:2hand_rifle_stanceB�������܋J���������R2hand_rifle_shootZ
��������j
��������p}  A��  �>� P�F�
���񼇈��
mc:ereticletype:none��rounds�� P�F�   A�  HB�  �@�ff&@�  �@���?����>���ʋ�š�
�������!*������׺�zServer Context"
    �?  �?  �?(�����Ќ�2�����ހ�N��������i������δ�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ހ�NEquipmentPickupServer"
   �? �?  �?(�����׺�zZ


cs:Trigger�
�������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�Ǆ��ճu*���������iWeaponDamageShootServer"
   �? �?  �?(�����׺�zZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ڕń񗺩*�������δ�WeaponAimServer"
   �? �?  �?(�����׺�zZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������"*��ԼІ��1Client Context"
    �?  �?  �?(�����Ќ�2��ٱ������������JZ pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *���ٱ�����Scripts"
    �?  �?  �?(�ԼІ��129���ᚆ��7�ݭ���������������맆����ၳ�������ﴛZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Scripts*����ᚆ��7EquipmentPickupClient"
   �? �?  �?(��ٱ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����*��ݭ�����WeaponAimClient"
   �? �?  �?(��ٱ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������*����������WeaponSpreadClient"
   �? �?  �?(��ٱ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������\*��맆����WeaponReticleClient"
   �? �?  �?(��ٱ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��˓�����*�ၳ���WeaponAmmoFeedbackClient"
   �? �?  �?(��ٱ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������*�����ﴛWeaponAutoReloadClient"
   �? �?  �?(��ٱ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������q*��������JGeo"
   �? �?  �?(�ԼІ��12:�������u���ѥ������此�����۱�������������������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������uModern Weapon - Grip 03"

�XE?KA   �?  �?  �?(�������JZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
גש��08(�
 *����ѥ���Modern Weapon - Barrel Tip 01"

  HB  pA   �?  �?  �?(�������JZ/
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������s088�
 *����此��Trigger - Rear".
�Ac@ c�=���@
����d.7A���<���<�K=(�������JZ\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08(�
 *����۱��Modern Weapon - Foregrip 03"

  �ApG$@   �?  �?  �?(�������JZ/
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 *����������Modern Weapon - Body 02"

  �A  pA   �?  �?  �?(�������JZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������C08(�
 *���������Modern Weapon - Stock 02"

  ��  pA   �?  �?  �?(�������JZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����߇��08(�
 *��������Pickup Trigger"
 pA ���?  �?  �?(�����Ќ�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�4Equip Advanced SMG"08*
mc:etriggershape:box*���ʋ�šShoot(�����Ќ�Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff��"ability_primary*+���< 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:
�#< 08B��L> 08J2hand_rifle_shoot*��������!Reload(�����Ќ�Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff�{"ability_ult*33�? 02���= 0: B J2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_33+
TemplateAssetRefAdvanced_Submachine_Gun
�"��������TInverted Grenadeb�!
�! ʎ������*�ʎ������Inverted Grenade"  �?  �?  �?(�������28���͖��Hֳ������3��ߡʷ�����Ļ������ɬͮ���\����젗�5Z�

cs:EnableAutoReloadP 

cs:FriendlyExplosionDamageP
&
cs:ExplosionDamageRange�
   A  pB

cs:ExplosionRadiuse  �C
!
cs:ExplosionKnockbackSpeede  �D

cs:DebugExplosionP 

cs:PickupSound�
����ۦ^
#
cs:ProjectileImpact������䯲�
'
cs:ProjectileBounceSound�
����ց��x
�
cs:EnableAutoReload:tooltipj�If true the weapon the player will auto reload the ammo without player's input. Only reloads if the player has the ammo resource.
�
cs:ExplosionDamageRange:tooltipj�Set the minimum to maximum damage of the explosion. X is damage far from the explosion center and Y is damage close to the explosion center.
T
cs:ExplosionRadius:tooltipj6How far the explosion impacts the surrounding players.
_
cs:DebugExplosion:tooltipjBWhether to show the explosion gizmo or not for debugging purposes.
g
"cs:FriendlyExplosionDamage:tooltipjAWhether or not to apply damage on allies (including self damage).
a
"cs:ExplosionKnockbackSpeed:tooltipj;How strong the explosion blasts the player from the center.pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop��Ļ�������
���я����
���ΰ���p
ӰГ£͝}"
��������2
 :unarmed_stanceB
Ή�����J�����ԃ�Z
��������j
��������p}  �?� P�G�
���������
mc:ereticletype:crosshair��rounds��  �D�   @�33�  @A�  @A��
�ɬͮ���\�
����젗�5�-
+mc:eweapontrajectorymode:muzzletolooktarget*����͖��HWeaponProjectileExplosionServer"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������*�ֳ������3WeaponPickupTriggerServer"$
  H�����   �   �?  �?  �?(ʎ������Z


cs:Trigger���Ļ�����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������*���ߡʷ���Client Context"
    �?  �?  �?(ʎ������2��������ϵ�����DZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������Scripts"
    �?  �?  �?(��ߡʷ���2�����������Գ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Scripts*������WeaponAutoReloadClient"$
  H�����   �   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������q*�������Գ�WeaponUtilityHideObjectClient"
    �?  �?  �?(�������ZJ

	cs:Object�
�ϵ�����D

cs:HideOnEmptyAmmoP

cs:HideAfterAttackPz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ⱥ�����6*��ϵ�����DGeo"
  p�   �?  �?  �?(��ߡʷ���2�����ڲ�o┣ֱ��xZ z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*������ڲ�oGrenade Canister 04"$

  @8��@��C  �?  �?  �?(�ϵ�����DZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ő_088�
 *�┣ֱ��xGrenade Handle 01"$

  @8  �A��C  �?  �?  �?(�ϵ�����DZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *���Ļ�����Pickup Trigger"
  ��L?��L?��L?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�8Equip Advanced Grenade"08*
mc:etriggershape:box*��ɬͮ���\Throw"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_primary*+���= 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:,
�#< 08J
mc:eabilitysetfacing:noneB,333? 08J
mc:eabilitysetfacing:noneJunarmed_throwZ
mc:egameaction:primaryaction*�����젗�5Reload"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_ult*)���> 0J
mc:eabilitysetfacing:aim2)���= 0J
mc:eabilitysetfacing:aim:# J
mc:eabilitysetfacing:noneB# J
mc:eabilitysetfacing:noneJunarmed_pickupZ
mc:egameaction:extraaction_33
NoneNone
�Ⱥ�����6WeaponUtilityHideObjectClientZ��--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Interanl custom variables
local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON:IsA('Weapon') then
    error(script.name .. " should be part of Weapon object hierarchy.")
end
local OBJECT = script:GetCustomProperty("Object"):WaitForObject()

local HIDE_AFTER_ATTACK = script:GetCustomProperty("HideAfterAttack")
local HIDE_ON_EMPTY_AMMO = script:GetCustomProperty("HideOnEmptyAmmo")

local ATTACK_ABILITY = WEAPON:GetAbilities()[1]

function Tick()
	if not Object.IsValid(WEAPON) then return end
	if not Object.IsValid(ATTACK_ABILITY) then return end

	if HIDE_ON_EMPTY_AMMO then
		if WEAPON:HasAmmo() then
			if HIDE_AFTER_ATTACK then
				if ATTACK_ABILITY:GetCurrentPhase() == AbilityPhase.READY then
					OBJECT.visibility = Visibility.INHERIT
				else
					OBJECT.visibility = Visibility.FORCE_OFF
				end
			else
				OBJECT.visibility = Visibility.INHERIT
			end
		else
			OBJECT.visibility = Visibility.FORCE_OFF
		end
	else
		if HIDE_AFTER_ATTACK then
			if ATTACK_ABILITY:GetCurrentPhase() == AbilityPhase.READY then
				OBJECT.visibility = Visibility.INHERIT
			else
				OBJECT.visibility = Visibility.FORCE_OFF
			end
		else
			OBJECT.visibility = Visibility.INHERIT
		end
	end

end@

	cs:Object� 

cs:HideAfterAttackP 

cs:HideOnEmptyAmmoP 
��۲����SMessage Bannerb�
� ט���ؤ��*�ט���ؤ��Message Banner"  �?  �?  �?(��������92
���������Zm

cs:DefaultDuratione  @@
P
cs:DefaultDuration:tooltipj2Default duration of a message if none is specifiedz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������MessageBannerClient"
    �?  �?  �?(ט���ؤ��2��ϊ���A������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *���ϊ���AMessageBannerClient"
    �?  �?  �?(���������Z�
 
cs:ComponentRoot�ט���ؤ��

cs:Panel����������


cs:TextBox�
��������
"
cs:EliminationText����ܛ����
#
cs:EliminationPanel�����ɛ���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ȝ��Ґ�\*�������Banner Container"
    �?  �?  �?(���������2�������������ɛ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*����������Panel"
    �?  �?  �?(������2	��������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�g�d-  pB:

mc:euianchor:middlecenter� �8


mc:euianchor:topcenter

mc:euianchor:topcenter*���������
BannerText"
    �?  �?  �?(���������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���d:

mc:euianchor:middlecenter�D
Message Banner  �?  �?  �?%  �?2"
mc:etextjustify:center(�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�����ɛ���Elimination Panel"
    �?  �?  �?(������2
���ܛ����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�g�2-   C:

mc:euianchor:middlecenter� �8


mc:euianchor:topcenter

mc:euianchor:topcenter*����ܛ����EliminationText"
    �?  �?  �?(����ɛ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���2:

mc:euianchor:middlecenter�L
You eliminated {name}!  �?  �?  �?%  �?"
mc:etextjustify:center(�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter"
TemplateAssetRefMessage_Banner
���������R(Urban Pipe Ground Attachment - 01 (Prop)b�
� ����񷳓�*�����񷳓�(Urban Pipe Ground Attachment - 01 (Prop)"  �?  �?  �?(�����B2$����Ɇ�1���Ͽ����������jˮ������Iz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����Ɇ�1Urban Pipe Elbow 01"
  �B   �?  �?  �?(����񷳓�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����Ͽ��Urban Pipe Flange 01"
    �?  �?  �?(����񷳓�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *���������jUrban Pipe Coupling 01"
  �B   �?  �?  �?(����񷳓�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�ˮ������IUrban Pipe Straight"
  �A   �?  �?  �?(����񷳓�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 <
TemplateAssetRef(Urban_Pipe_Ground_Attachment_-_01__Prop_
c���������Urban Pipe Coupling 01R<
StaticMeshAssetRef&sm_prop_urb_pipes_acc_coupling_001_ref
X������RPipe - Quarter Wedge ThinR/
StaticMeshAssetRefsm_quarter_pipe_wedge_002
�-��������RAbilityDisplayClientZ�-�---[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties --
local AOI = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CANVAS = script:GetCustomProperty("Canvas"):WaitForObject()
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local COUNTDOWN_TEXT = script:GetCustomProperty("CountdownText"):WaitForObject()
local BINDING_TEXT = script:GetCustomProperty("BindingText"):WaitForObject()
local NAME_TEXT = script:GetCustomProperty("NameText"):WaitForObject()
local PROGRESS_INDICATOR = script:GetCustomProperty("ProgressIndicator"):WaitForObject()
local RIGHT_SHADOW = script:GetCustomProperty("RightShadow"):WaitForObject()
local LEFT_SHADOW = script:GetCustomProperty("LeftShadow"):WaitForObject()

-- User exposed properties
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding")
local BINDING_HINT = COMPONENT_ROOT:GetCustomProperty("BindingHint")
local SHOW_ABILITY_NAME = COMPONENT_ROOT:GetCustomProperty("ShowAbilityName")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local DEFAULT_IMAGE = ICON:GetImage()

-- Variables
local currentAbility = nil
local executeDuration = 0.0
local recoveryDuration = 0.0
local cooldownDuration = 0.0

-- <Ability> GetLocalPlayerAbilityWithBinding()
-- Finds the first ability that matches the given binding
function GetLocalPlayerAbilityWithBinding()
    local abilities = LOCAL_PLAYER:GetAbilities()
    for _, ability in pairs(abilities) do
        if ability.actionBinding == BINDING then 
            return ability
        end
    end

    return nil
end

-- nil UpdateCurrentAbility(Ability)
-- Updates the state when the ability matching the given binding changes
function UpdateCurrentAbility()
    local newAbility = GetLocalPlayerAbilityWithBinding()

    if currentAbility == newAbility then
        return
    end

    currentAbility = newAbility

    if currentAbility then
        CANVAS.visibility = Visibility.INHERIT

        local icon = AOI.GetObjectIcon(currentAbility)

        if icon then
            ICON:SetImage(icon)
        else
            ICON:SetImage(DEFAULT_IMAGE)
        end

        NAME_TEXT.text = currentAbility.name
        executeDuration = currentAbility.executePhaseSettings.duration
        recoveryDuration = currentAbility.recoveryPhaseSettings.duration
        cooldownDuration = currentAbility.cooldownPhaseSettings.duration
    else
        CANVAS.visibility = Visibility.FORCE_OFF
    end
end

-- nil Tick(float)
-- Checks for changes to the players abiltiies, or icons on those abilities
function Tick(deltaTime)
    UpdateCurrentAbility()

    if currentAbility then
        local currentPhase = currentAbility:GetCurrentPhase()
        local phaseTime = currentAbility:GetPhaseTimeRemaining()

        if currentPhase == AbilityPhase.READY or currentPhase == AbilityPhase.CAST then
            COUNTDOWN_TEXT.visibility = Visibility.FORCE_OFF
            PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF
        else
            COUNTDOWN_TEXT.visibility = Visibility.INHERIT
            PROGRESS_INDICATOR.visibility = Visibility.INHERIT

            -- For a player, recovery, cooldown and execute phases all constitute an ability's cooldown
            local playerCooldownRemaining = phaseTime

            if currentPhase ~= AbilityPhase.COOLDOWN then   -- Execute or recovery
                playerCooldownRemaining = playerCooldownRemaining + cooldownDuration
            end

            if currentPhase == AbilityPhase.EXECUTE then
                playerCooldownRemaining = playerCooldownRemaining + recoveryDuration
            end

            local totalPlayerCooldown = executeDuration + recoveryDuration + cooldownDuration
            COUNTDOWN_TEXT.text = string.format("%.1f", playerCooldownRemaining)

            -- Update the shadow
            if totalPlayerCooldown > 0.3 then
                local shadowAngle = CoreMath.Clamp(1.0 - playerCooldownRemaining / totalPlayerCooldown, 0.0, 1.0) * 360.0

                if shadowAngle <= 180.0 then
                    LEFT_SHADOW.rotationAngle = 0.0
                    RIGHT_SHADOW.visibility = Visibility.INHERIT
                    RIGHT_SHADOW.rotationAngle = shadowAngle
                else
                    LEFT_SHADOW.rotationAngle = shadowAngle - 180.0
                    RIGHT_SHADOW.visibility = Visibility.FORCE_OFF
                end
            end
        end
    end
end

-- Initialize
if not SHOW_ABILITY_NAME then
    NAME_TEXT.visibility = Visibility.FORCE_OFF
end

CANVAS.visibility = Visibility.FORCE_OFF
BINDING_TEXT.text = BINDING_HINT

@�����RLiquid DecalR$
DecalBlueprintAssetRef
dcl_liquid
\�܇����QDecal Hazard Symbols 01R5
DecalBlueprintAssetRefbp_decal_hazard_symbols_001
Y�Ŏ畝݋MUrban Water Tank 01R6
StaticMeshAssetRef sm_prop_urb_watertank_modern_001
�;ט�ʻ���L$Advanced Submachine Gun - Flashlightb�;
�: ��ɝ����*���ɝ����%Advanced Submachine Gun - Flashlight'"��?��?  �?(�ϴ�����v27��衕ٔ�W����֤ӿA㤼�����\���腦�h������׎Q������Z�

cs:BaseDamagee  �A

cs:HeadshotDamagee  HB

cs:EnableAutoReloadP

cs:EnableAimP 
"
cs:AimBindingjability_secondary
.
cs:AimActiveStancej2hand_rifle_aim_shoulder
 
cs:AimWalkSpeedPercentagee���>

cs:AimZoomDistancee  �B

cs:SpreadStandPrecisione��?

cs:SpreadWalkPrecisione���>

cs:SpreadJumpPrecisione���>

cs:SpreadCrouchPrecisione  @?
 
cs:SpreadSlidingPrecisione  �>
 
cs:SpreadAimModifierBonuse���>

cs:PickupSound�
����ۦ^

cs:LowAmmoSound��ˁ������
"
cs:ReticleTemplate������̧��

cs:HideReticleOnAimP 
Q
cs:BaseDamage:tooltipj8Normal damage that this weapon will do to enemy players.
W
cs:HeadshotDamage:tooltipj:Headshot damage that this weapon will do to enemy players.
�
cs:AimBinding:tooltipjyKeybinding to hold and activate scope / zoom ability for the weapon. Default is "ability_secondary" (right mouse button).
{
!cs:AimWalkSpeedPercentage:tooltipjVPercentage walk speed reduction when player is aiming. Must be in the range of 0 to 1.
q
cs:AimActiveStance:tooltipjSAnimation stance when aiming with this weapon. Default is 2hand_rifle_aim_shoulder.
:
cs:AimZoomDistance:tooltipjCamera distance when aiming.
z
!cs:SpreadAimModifierBonus:tooltipjUAmount of % added to the spread precision when the player aims. Range between 0 to 1.
�
cs:SpreadStandPrecision:tooltipjqPrecision % when the player is standing without aim. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadWalkPrecision:tooltipjdPrecision % when the player is walking. Range between 0 to 1 (from least accurate to most accurate).
�
cs:SpreadJumpPrecision:tooltipjdPrecision % when the player is jumping. Range between 0 to 1 (from least accurate to most accurate).
�
 cs:SpreadCrouchPrecision:tooltipjfPrecision % when the player is crouching. Range between 0 to 1 (from least accurate to most accurate).
�
!cs:SpreadSlidingPrecision:tooltipjdPrecision % when the player is sliding. Range between 0 to 1 (from least accurate to most accurate).
�
cs:EnableAutoReload:tooltipj�If true the weapon the player will auto reload the ammo without player's input. Only reloads if the player has the ammo resource.
5
cs:EnableAim:tooltipjEnable aiming for the weapon.pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop
���腦�h��
�ͻ�ߡ��������ۍ�
ӰГ£͝}"������ޣ�(2

  �B  pA:2hand_rifle_aim_shoulderB�������܋J���������R2hand_rifle_shootZ
��������j
��������p}  A��  �>� P�F�
���񼇈��
mc:ereticletype:none��rounds�� P�F�   A�  HB�  �@�ff&@�  �@���?����>�
������׎Q�������*���衕ٔ�W	Spotlight"$
 pB ��  4B  �? �?  �?(��ɝ����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�|  �B  �?  �?  �?%  �?%  �@* 2V  �EE ��E">  �A  �A%   A(5  �A=  �BB!
mc:espotlightprofile:flashlightU @F]  �D*�����֤ӿAServer Context"
    �?  �?  �?(��ɝ����2ǥ�����*�˶��ٙ�R����Ց�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ǥ�����*EquipmentPickupServer"
   �? �?  �?(����֤ӿAZ


cs:Trigger�
���腦�hz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�Ǆ��ճu*��˶��ٙ�RWeaponDamageShootServer"
   �? �?  �?(����֤ӿAZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ڕń񗺩*�����Ց�WeaponAimServer"
   �? �?  �?(����֤ӿAZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������"*�㤼�����\Client Context"
    �?  �?  �?(��ɝ����2��������~�������Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *���������~Scripts"
    �?  �?  �?(㤼�����\28�������������𤩗t�猥�՛�	� �����r�먏両���Է�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Scripts*����������EquipmentPickupClient"
   �? �?  �?(��������~z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����*�����𤩗tWeaponAimClient"
   �? �?  �?(��������~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������*��猥�՛�	WeaponSpreadClient"
   �? �?  �?(��������~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������\*�� �����rWeaponReticleClient"
   �? �?  �?(��������~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��˓�����*��먏両��WeaponAmmoFeedbackClient"
   �? �?  �?(��������~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������*��Է�����WeaponAutoReloadClient"
   �? �?  �?(��������~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������q*��������Geo"
   �? �?  �?(㤼�����\2:�����ʱ�����䘴�������Ҭ�.��������șȿӔ��Y�뷺���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������ʱ��Modern Weapon - Grip 03"

�XE?KA   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
גש��08(�
 *����䘴��Modern Weapon - Barrel Tip 01"

  HB  pA   �?  �?  �?(�������Z/
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������s088�
 *������Ҭ�.Trigger - Rear".
�Ac@ c�=���@
����d.7A���<���<�K=(�������Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08(�
 *���������Modern Weapon - Foregrip 03"

  �ApG$@   �?  �?  �?(�������Z/
-
ma:Shared_Trim:color�  �=  �=  �=%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������088�
 *�șȿӔ��YModern Weapon - Body 02"

  �A  pA   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������C08(�
 *��뷺���Modern Weapon - Stock 02"

  ��  pA   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����߇��08(�
 *����腦�hPickup Trigger"
 pA ���?  �?  �?(��ɝ����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�4Equip Advanced SMG"08*
mc:etriggershape:box*�������׎QShoot(��ɝ����Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff��"ability_primary*+���< 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:
�#< 08B��L> 08J2hand_rifle_shoot*�������Reload(��ɝ����Z pz
mc:ecollisionsetting:forceoff� 
mc:evisibilitysetting:forceoff�{"ability_ult*33�? 02���= 0: B J2hand_rifle_reload_magazineZ
mc:egameaction:extraaction_33
NoneNone
A�������L
HemisphereR'
StaticMeshAssetRefsm_hemisphere_001
G��¬�JOpaque EmissiveR(
MaterialAssetReffxma_opaque_emissive
5������FCubeR!
StaticMeshAssetRefsm_cube_002
:ŗˉ����FMetal ChromeR
MaterialAssetRef
chrome_001
���ݽ�ԉFHelper_Nameplateb�
� �������*��������Helper_Nameplate"
    �?  �?  �?(�����۬ǯ28ӵ����Ο	��������ׯ�����^�뒩���ׯ�ʛ��ְ�(㇐�����9Z�

cs:BorderPiece�
ӵ����Ο	
"
cs:BackgroundPiece���������

cs:HealthPiece�
ׯ�����^

cs:ChangePiece��뒩���ׯ

cs:HealthText�
�ʛ��ְ�(

cs:NameText�
㇐�����9z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*�ӵ����Ο	BorderPiece"
    �?  �?  �?(�������Za
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
(
ma:Shared_BaseMaterial:id�
��¬�Jz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������F088�
 *���������BackgroundPiece"
    �?  �?  �?(�������Za
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
(
ma:Shared_BaseMaterial:id�
��¬�Jz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������F088�
 *�ׯ�����^HealthPiece"
    �?  �?  �?(�������Za
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
(
ma:Shared_BaseMaterial:id�
��¬�Jz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������F088�
 *��뒩���ׯChangePiece"
    �?  �?  �?(�������Za
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
(
ma:Shared_BaseMaterial:id�
��¬�Jz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������F088�
 *��ʛ��ְ�(
HealthText"
  ���>���>���>(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�m
HELLO WORLD  �?  �?  �?%  �?2$
"mc:ecoretexthorizontalalign:center:"
 mc:ecoretextverticalalign:center*�㇐�����9NameText"
  �A   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�m
HELLO WORLD  �?  �?  �?%  �?2$
"mc:ecoretexthorizontalalign:center:"
 mc:ecoretextverticalalign:center
NoneNone
����Ϳ�вE&Modern Weapon - Sniper Rifle 01 (Prop)b�
� ��ˋ��ܢ*���ˋ��ܢ&Modern Weapon - Sniper Rifle 01 (Prop)"  �?  �?  �?(�䵬�Ά��2JӲ������yʣ���ȱF�����힌
�������������ᛉ��������r��ȕ���֙��Ց����~Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ӳ������yModern Weapon - Grip 03"

�XE?KA   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
גש��088�
 *�ʣ���ȱFTrigger - Rear".
�Ac@ c�=���@
����d.7A���<���<�K=(��ˋ��ܢZ\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *������힌
Barrel"$

�q1B�miA  ����t=��t=Ǟ�>(��ˋ��ܢZa
5
ma:Shared_BaseMaterial:color�  >  >  >%  �?
(
ma:Shared_BaseMaterial:id�
�ʨ�����^z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ڍ�����:088�
 *��������Modern Weapon - Barrel Tip 02"

��B�miA   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Œ������088�
 *�������ᛉModern Weapon - Body 02"

\��A�miA   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������C088�
 *���������rModern Weapon - Scope 01"

 ��@���A   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ǚղ��m088�
 *���ȕ���֙Modern Weapon - Stock 02"

��@�A   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���񱾸088�
 *���Ց����~Modern Weapon - Magazine 03"

$D�A\K&�   �?  �?  �?(��ˋ��ܢZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���؇��#088�
 3
TemplateAssetRefModern_Weapon_-_Sniper_Rifle_01
C��ဥ���BLense - HalfR'
StaticMeshAssetRefsm_half_lense_001
���θ����BSci-fi Chest Common 01(Prop)b�
� �����Ά��*������Ά��Sci-fi Chest Common 01(Prop)"  �?  �?  �?(�����B2ˮ��׽����ƥ����߂z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�ˮ��׽���Sci-fi Chest Common Base 01"
    �?  �?  �?(�����Ά��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ĉ������088�
 *��ƥ����߂
Hinged Lid"

  �  4B   �?  �?  �?(�����Ά��2���������͐��ܰ�fz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������Sci-fi Chest Hinge 01"
    �?  �?  �?(�ƥ����߂z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *��͐��ܰ�fSci-fi Chest Common Lid 01"
    �?  �?  �?(�ƥ����߂z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�򇅋���)088�
 0
TemplateAssetRefSci-fi_Chest_Common_01_Prop_
c�򇅋���)Sci-fi Chest Common Lid 01R9
StaticMeshAssetRef#sm_prop_scf_crate_small_lid_001_ref
a�Ĉ������Sci-fi Chest Common Base 01R5
StaticMeshAssetRefsm_prop_scf_crate_small_001_ref
��砽���?LobbyStartRespawnPlayersServerZ��--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local PERIOD = COMPONENT_ROOT:GetCustomProperty("Period")
local RESPAWN_ON_ROUND_START = COMPONENT_ROOT:GetCustomProperty("RespawnOnRoundStart")

-- Check user properties
if PERIOD < 0.0 then
    warn("Period must be positive")
    PERIOD = 0.0
end

-- nil RespawnPlayers()
-- Respawns players with a slight stagger
function RespawnPlayers()
	local numPlayers = #Game.GetPlayers()
	local perPlayerDelay = PERIOD / numPlayers
	for _, player in pairs(Game.GetPlayers()) do
		player:Respawn()

		Task.Wait(perPlayerDelay)
	end
end

-- nil OnGameStateChanged(int, int, bool, float)
-- Handles respawning players when the game state switches to or from lobby state
function OnGameStateChanged(oldState, newState, hasDuration, endTime)

	if (newState == ABGS.GAME_STATE_LOBBY and oldState ~= ABGS.GAME_STATE_LOBBY) then
		RespawnPlayers()
	end

	if RESPAWN_ON_ROUND_START and
	newState ~= ABGS.GAME_STATE_LOBBY and oldState == ABGS.GAME_STATE_LOBBY then
		RespawnPlayers()
	end
end

-- Initialize
Events.Connect("GameStateChanged", OnGameStateChanged)

�������Ѭ?Team Autobalancerb�
� ۍ툵���p*�ۍ툵���pTeam Autobalancer"  �?  �?  �?(�������2
��ຍܖ��Z�

cs:TeamCountX

cs:MaxTeamSizeDifferenceX

cs:OnlySwitchDeadPlayersP

cs:KillOnTeamSwitchP 

cs:ScrambleAtRoundEndP
k
cs:TeamCount:tooltipjSHow many teams does this game have. We assume they are teams 1 through this number.
�
 cs:MaxTeamSizeDifference:tooltipj`Teams can be at most this different in size before players will get swapped if they are eligable
L
 cs:OnlySwitchDeadPlayers:tooltipj(Only switch players who are already dead
P
cs:KillOnTeamSwitch:tooltipj1If we can swap live players, kill them when we do
U
cs:ScrambleAtRoundEnd:tooltipj4Also scramble teams entirely at the end of the roundz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*���ຍܖ��TeamAutobalancerServer"
    �?  �?  �?(ۍ툵���pZ!

cs:ComponentRoot�
ۍ툵���pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������f%
TemplateAssetRefTeam_Autobalancer
E��������>Rock Pile 002R(
StaticMeshAssetRefsm_rocks_small_002
�ڢ��φ��=Road 1-2 Lane Transitionb�
� ʐ�����*�ʐ�����Road 1-2 Lane Transition"  �?  �?  �?(���Ì���[2@��ʙ�������߹ť�8���ݹ��5���ڜ��4��������Jᅷ��س�4�됒���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ʙ����Road Sidewalk Lane Merge"

������:   �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ֻ���儐(088�
 *����߹ť�8Road Sidewalk"$

���� H���3�  �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����䒆�\088�
 *����ݹ��5Road Sidewalk"$

 �C H���3�  �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����䒆�\088�
 *����ڜ��4Road Sidewalk"$

 �D H���3�  �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����䒆�\088�
 *���������JRoad Center"

  �C���:   �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��񍖏��U088�
 *�ᅷ��س�4Road Sidewalk"

 �C HD   �?  �?  �?(ʐ�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����䒆�\088�
 *��됒���Road Center")
  �D���  ����3C  @@  �?  �?(ʐ�����Z+
)
ma:Street_CenterStripe:id����ݒȑ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��񍖏��U088�
 ,
TemplateAssetRefRoad_1-2_Lane_Transition
B���ݒȑ��
Asphalt 01R'
MaterialAssetRefmi_gen_asphault_001
I��񍖏��URoad CenterR.
StaticMeshAssetRefsm_urb_road_straight_001
T����䒆�\Road SidewalkR7
StaticMeshAssetRef!sm_urb_road_sidewalk-straight_001
^ֻ���儐(Road Sidewalk Lane MergeR6
StaticMeshAssetRef sm_urb_road_sidewalk-chicane_001
h܈�����;Sci-fi Base Floor Trim 01 - 4mR:
StaticMeshAssetRef$sm_ts_scf_base_floor_trim_001_4m_ref
K�袺����;Hatchet - BladeR,
StaticMeshAssetRefsm_weap_modern_axe_001
j̺�͛�Ǜ4,Custom Ceiling from Sci-fi Base Roof 01 - 8m�-��������� 

color�  (?  (?  (?%  �?
\���������Painted Metal - WhiteR6
MaterialAssetRef"mi_ts_scf_base_metal_paint_001_ref
�8�������3Sci-fi Base Stairs 01 - Ub�7
�7 �������/*��������/Sci-Fi Base Stairs 01 - U"  �?  �?  �?(�����B2'���������ͬ۸����љ؈z���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Stairs U"$

  �8  H�����  �?  �?  �?(�������/2���Ʃ������Ý��ݡ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ʃ����Upper")
 HC/ ��  �C��3�  �?  �?  �?(������2%��������B�����ʆ7��Ѕ�࿺�����퉐�.z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������BSci-Fi Base Stairs 01 150cm"
  �����B  `?  �?  �?(���Ʃ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *������ʆ7Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(���Ʃ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���Ѕ�࿺�Sci-Fi Base Stairs 01 150cm")
c�EC����  C���B  `?  �?  �?(���Ʃ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�����퉐�.Sci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(���Ʃ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *���Ý��ݡ�Lower"

��G����B   �?  �?  �?(������2%����̈́�|���������񺣯����=������ɗVz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����̈́�|Sci-Fi Base Stairs 01 150cm"$

�U@  �����B  `?  �?  �?(��Ý��ݡ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *����������Sci-Fi Base Trim 02 Ramp 4m"
  �C���B  @?  �?  �?(��Ý��ݡ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *�񺣯����=Sci-Fi Base Stairs 01 150cm")
  HC����  C���B  `?  �?  �?(��Ý��ݡ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���㺮�V088�
 *�������ɗVSci-Fi Base Trim 02 Ramp 4m"
  p����B  @�  �?  �?(��Ý��ݡ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���̺���088�
 *����ͬ۸��Landing")
  �9���  �C����  �?  �?  �?(�������/2`���������䑠����1��ߡ��̧��˰�����1ߦ��ڏɀ��̹���˧����������������z�շ����ե�������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������Sci-Fi Base Trim 02 Corner - In"$
  H� 3@ p� 333?�j8?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *��䑠����1Sci-Fi Base Trim 02 Corner - In")
  H� Tk� p�����3;8?333?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������088�
 *���ߡ��̧�Sci-Fi Base Floor 03 4m"$

  H�  �8���B�k?�k?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *��˰�����1Sci-Fi Base Trim 02 4m"

  H�  �C fff?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *�ߦ��ڏɀ�Sci-Fi Base Trim 02 4m"$

   C  �C����fff?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *��̹���˧�Sci-Fi Base Trim 02 Corner"$

   C  �C6�8  @?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *��������Sci-Fi Base Trim 02 4m"
   C����fff?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *���������zSci-Fi Base Trim 02 4m"$

   C  ����3�fff?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����󖓇�088�
 *��շ����եSci-Fi Base Trim 02 Corner"$

   C  ������  @?  @?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ú����Ȱ088�
 *��������Sci-Fi Base Floor 03 4m"$

  H�  �8����k?�k?  �?(���ͬ۸��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�զ��닽�088�
 *���љ؈zRailings Inner")
   9  z�  HB����  �?  �?  �?(�������/2����ᇄgɜ��ʸ��޲�����?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ᇄg"Sci-Fi Base Railing 02 Stairs - 4m"$

  z�  �A���B  �?  �?  �?(��љ؈zz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *�ɜ��ʸ�"Sci-Fi Base Railing 02 Stairs - 4m")
  C  ��  �C����  �?  �?  �?(��љ؈zZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *��޲�����?Scifi Ship Blaster 01"$

  C��C  ��
*&?�=F?H�)?(��љ؈zZM
)
ma:Shared_BaseMaterial:id��ځ�ˑ��
 
ma:Shared_Trim:id�
������޶gz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,088�
 *����������Railings Outer"
 ����  �?  �?  �?(�������/29��ӽ��������ă����������*���ƛ���O�؍�����բї���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ӽ���"Sci-Fi Base Railing 02 Stairs - 4m")
 �C  ��  �C����  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *������ă��"Sci-Fi Base Railing 02 Stairs - 4m"$

  �C  HB���B  �?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������<088�
 *���������*Sci-Fi Base Railing 02 - 4m"$
  �C  �C  �C fff?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *����ƛ���OSci-Fi Base Railing 02 - 4m")
 �@D���C  �C����fff?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *��؍���Sci-Fi Base Railing 02 - 4m"$

 �@D  �C  ��fff?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 *���բї���Sci-Fi Base Railing 02 - 4m")
  >D  ��  �C��3�fff?  �?  �?(���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ˎދ��̹088�
 -
TemplateAssetRefSci-Fi_Base_Stairs_01_-_U
�����Қ��3Basic Game State Managerb�
� ����Ⱦ��*�����Ⱦ��Basic Game State Manager"  �?  �?  �?(��ɝ����2����Ր������ͷ����Z�

cs:LobbyHasDurationP 

cs:LobbyDuratione  �A

cs:RoundHasDurationP 

cs:RoundDuratione  �B

cs:RoundEndHasDurationP

cs:RoundEndDuratione  �@
A
cs:LobbyHasDuration:tooltipj"Lobby phase has a maximum duration
@
cs:LobbyDuration:tooltipj$Lobby duration (if LobbyHasDuration)
A
cs:RoundHasDuration:tooltipj"Round phase has a maximum duration
@
cs:RoundDuration:tooltipj$Round duration (if RoundHasDuration)
H
cs:RoundEndHasDuration:tooltipj&Round end phase has a maximum duration
J
cs:RoundEndDuration:tooltipj+Round end duration (if RoundEndHasDuration)z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����Ր���BasicGameStateManagerServer"
    �?  �?  �?(����Ⱦ��Z�

cs:API��Ʀ������
 
cs:ComponentRoot�����Ⱦ��

cs:StateX 

cs:StateHasDurationP 

cs:StateEndTimee    

cs:State:isrepP

cs:StateHasDuration:isrepP

cs:StateEndTime:isrepPpz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����觰*����ͷ����ClientContext"
    �?  �?  �?(����Ⱦ��2	����ǁ��gZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�����ǁ��gGameStateManagerClient"
    �?  �?  �?(���ͷ����Z9

cs:API��Ʀ������

cs:ServerScript�����Ր���z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������,
TemplateAssetRefBasic_Game_State_Manager
�+����觰BasicGameStateManagerServerZ�*�*--[[
Copyright 2019 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local LOBBY_HAS_DURATION = COMPONENT_ROOT:GetCustomProperty("LobbyHasDuration")
local LOBBY_DURATION = COMPONENT_ROOT:GetCustomProperty("LobbyDuration")
local ROUND_HAS_DURATION = COMPONENT_ROOT:GetCustomProperty("RoundHasDuration")
local ROUND_DURATION = COMPONENT_ROOT:GetCustomProperty("RoundDuration")
local ROUND_END_HAS_DURATION = COMPONENT_ROOT:GetCustomProperty("RoundEndHasDuration")
local ROUND_END_DURATION = COMPONENT_ROOT:GetCustomProperty("RoundEndDuration")

-- Check user properties
if LOBBY_DURATION < 0.0 then
    warn("LobbyDuration must be non-negative")
    LOBBY_DURATION = 0.0
end

if ROUND_DURATION < 0.0 then
    warn("RoundDuration must be non-negative")
    ROUND_DURATION = 0.0
end

if ROUND_END_DURATION < 0.0 then
    warn("RoundEndDuration must be non-negative")
    ROUND_END_DURATION = 0.0
end

-- int GetGameState()
-- Gets the current state. Passed to API
function GetGameState()
	return script:GetCustomProperty("State")
end

-- <float> GetTimeRemainingInState()
-- Gets time remaining in state, or nil. Passed to API
function GetTimeRemainingInState()
	if not script:GetCustomProperty("StateHasDuration") then
		return nil
	end

	local endTime = script:GetCustomProperty("StateEndTime")
	return math.max(endTime - time(), 0.0)
end

-- nil SetGameState()
-- Sets the state and configures timing. Passed to API
function SetGameState(newState)
	local stateHasduration
	local stateDuration

	-- Get new state duration information
	if newState == ABGS.GAME_STATE_LOBBY then
		stateHasduration = LOBBY_HAS_DURATION
		stateDuration = LOBBY_DURATION
	elseif newState == ABGS.GAME_STATE_ROUND then
		stateHasduration = ROUND_HAS_DURATION
		stateDuration = ROUND_DURATION
	elseif newState == ABGS.GAME_STATE_ROUND_END then
		stateHasduration = ROUND_END_HAS_DURATION
		stateDuration = ROUND_END_DURATION
	else
		error("Tried to set game state to unknown state %d", newState)
	end

	local stateEndTime = 0.0
	if stateHasduration then
		stateEndTime = time() + stateDuration
	end

	local oldState = GetGameState()

	-- Broadcast built-in round events
	if oldState ~= ABGS.GAME_STATE_ROUND and newState == ABGS.GAME_STATE_ROUND then
		Game.StartRound()
	elseif oldState == ABGS.GAME_STATE_ROUND and newState ~= ABGS.GAME_STATE_ROUND then
		Game.EndRound()
	end

	-- Broadcast basic game state event
	Events.Broadcast("GameStateChanged", oldState, newState, stateHasDuration, stateEndTime)
	Events.BroadcastToAllPlayers("GameStateChanged", oldState, newState, stateHasDuration, stateEndTime)

	-- Set replicator fields
	script:SetNetworkedCustomProperty("State", newState)
	script:SetNetworkedCustomProperty("StateHasDuration", stateHasduration)
	script:SetNetworkedCustomProperty("StateEndTime", stateEndTime)
end

-- nil SetTimeRemainingInState(float)
-- Sets time remaining in state. Passed to API
function SetTimeRemainingInState(remainingTime)
	local stateEndTime = time() + remainingTime
	local currentState = GetGameState()

	-- We broadcast the event because the time changed, even though we are still in the same state
	Events.Broadcast("GameStateChanged", currentState, currentState, true, stateEndTime)
	Events.BroadcastToAllPlayers("GameStateChanged", currentState, currentState, true, stateEndTime)

	script:SetNetworkedCustomProperty("StateHasDuration", true)
	script:SetNetworkedCustomProperty("StateEndTime", stateEndTime)
end

-- nil Tick(float)
-- Handles condition when state timer ran out
function Tick(deltaTime)
	if GetTimeRemainingInState() == 0.0 and script:GetCustomProperty("StateHasDuration") then
		local previousState = GetGameState()
		local nextState
		if previousState == ABGS.GAME_STATE_LOBBY then
			nextState = ABGS.GAME_STATE_ROUND
		elseif previousState == ABGS.GAME_STATE_ROUND then
			nextState = ABGS.GAME_STATE_ROUND_END
		elseif previousState == ABGS.GAME_STATE_ROUND_END then
			nextState = ABGS.GAME_STATE_LOBBY
		end

		SetGameState(nextState)
	end
end

-- Initialize
SetGameState(ABGS.GAME_STATE_LOBBY)

ABGS.RegisterGameStateManagerServer(GetGameState, GetTimeRemainingInState, SetGameState, SetTimeRemainingInState)

��������1Modern Weapon - Knife 01 (Prop)b�
� �˾�ں�Y*��˾�ں�YModern Weapon - Knife 01"  �?  �?  �?(�����B2�ՙʋ�����������Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*��ՙʋ����Knife - Blade"
O��A   �?  �?  �?(�˾�ں�YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���˙����088�
 *��������Knife - Handle"
    �?  �?  �?(�˾�ں�YZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ͨ����088�
 '
TemplateAssetReftemplates_Knife_001
S��ͨ����Knife - HandleR5
StaticMeshAssetRefsm_weap_modern_knife_handle_001
L���˙����Knife - BladeR.
StaticMeshAssetRefsm_weap_modern_knife_001
�:������/Sci-fi Ship Fighter (Prop)b�:
�9 ��������1*���������1SciFi Ship Fighter (Prop)"  �?  �?  �?(�����B2�����ؐ��>ܖ�޼������݆��������ܨ��8��������ȭ�ո���}���嚌��������އl��Ͽ�����濱��Ȼ��ת�����޶ֱǥ��ɹ�������������^���������Ɲ���ʧ�օț�Ж��稨�Β���Ú���ܡ�ֳ�󊭴��������������Ʋ���lz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����ؐ��>Cockpit"

  �C  pB   �?  �?  �?(��������12r��������m���ތ�˸����×���P����ם�U�Ѓ���͠��������<���𔛢ȓ��������څ腬���������������W��ҫ�􄝉z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������mScifi Cockpit Back 01"
����  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����ߚ��O08�
 *����ތ�˸�Scifi Cockpit Console 001"
 pA  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������.08�
 *����×���P!Scifi Cockpit Control Terminal 01"$
 �A���A HB  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *�����ם�U!Scifi Cockpit Control Terminal 02"

 \B HB  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ؓ������w08�
 *��Ѓ���͠Scifi CockPit Control Yoke"
 4B  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ײ�M08�
 *���������<!Scifi Cockpit Control Throttle 01"$
���� H�bz�A  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��җЂ��&08�
 *����𔛢Scifi Cockpit Sideguard 01"

���� H�  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *�ȓ�������Scifi Cockpit Siderail 01"

���� p�  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 *��څ腬���!Scifi Cockpit Control Terminal 01"$
���A  ��  HB  �? �� �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��շ�Ԑ��08�
 *�����Scifi Cockpit Sideguard 01"

  ����GB  �? �� �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����צ�G08�
 *���������WScifi Ship Chair 01"
��o�  �? �? �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�È�����@08�
 *���ҫ�􄝉Scifi Cockpit Siderail 01"

  ��  pB  �? �� �?(����ؐ��>z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����⥀�08�
 *�ܖ�޼����Scifi Ship Blaster 01")
�k�B  \� �B� 4�  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *���݆����Scifi Ship Cockpit Canopy 01"

  aC  MC   �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

޹������L08�
 *�����ܨ��8Scifi Ship Cockpit Back 02"

  /C %C   �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����Ĥ��08�
 *���������Scifi Ship Engine 01"3
8��  >�  B   ���3���3��ɝ? �?��?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *�ȭ�ո���}Scifi Ship Fuselage 01"

  ��  �B   �?  �?  �?(��������1Z#
!
ma:Shared_Detail1:color�%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������.08�
 *����嚌��Scifi Ship Light 01"$
  H�  �C   B   �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�������އlScifi Ship Nose 01"$

 ��C�B�3@  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *���Ͽ�����Scifi Ship Wing Large 01")
  *� ��C��B �A  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���׊��H08�
 *�濱��Ȼ�Scifi Ship Wing Small 01"3
�͂����B�2�B=fA��?��B  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����湩�p08�
 *��ת�����Scifi Ship Light 01")
  H�  �C  �A��3C  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�޶ֱǥ��Scifi Ship Wing Large 01".
  *��.�� �A
 ����3C  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���׊��H08�
 *�ɹ������Scifi Ship Blaster 01")
�k�B  \C  C��3A  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�ź�����,08�
 *��������^Scifi Ship Light 01".
 @D�@��P�sB
� 4A  ��  @?  @?  @?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *��������Scifi Ship Light 01".
 @D0&�BP�sB
@4����B  @?  @?  @?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *���Ɲ���ʧScifi Ship Engine 01"3
8�� >C  B   ���3���3��ɝ? �?��?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ꠥČ��^08�
 *��օț�Ж�Scifi Ship Nacelle 01")
  ��  >C   B �B  �?  �?  �?(��������1Z#
!
ma:Shared_Detail1:color�%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *��稨�Β��Scifi Ship Nacelle 01"$

  ��  pA�f�8  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *��Ú���ܡ�Scifi Ship Nacelle 01")
  ��  >�   B����  �?  �?  �?(��������1Z#
!
ma:Shared_Detail1:color�%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Х�ۜ��08�
 *�ֳ�󊭴��Scifi Ship Light 01"$
  H�����   B   �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *����������Scifi Ship Light 01")
  H�����  �A��3C  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *����Ʋ���lScifi Ship Wing Small 01"3
X���U���i�B3�@�]���9)�  �?  �?  �?(��������1z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����湩�p08�
 -
TemplateAssetRefSciFi_Ship_Fighter__Prop_
\���׊��HScifi Ship Wing Large 01R4
StaticMeshAssetRefsm_scf_ship_wing_large_001_ref
Q���������Scifi Ship Nose 01R.
StaticMeshAssetRefsm_scf_ship_nose_001_ref
S���������Scifi Ship Light 01R/
StaticMeshAssetRefsm_scf_ship_light_001_ref
d޹������LScifi Ship Cockpit Canopy 01R8
StaticMeshAssetRef"sm_scf_ship_cockpit_canopy_001_ref
P��Ҟ��ޭ.Wedge - ConcaveR1
StaticMeshAssetRefsm_wedge_curved_concave_001
�������.
Flashlightbc
S ���ٽّ�R*G���ٽّ�RTemplateBundleDummy"
    �?  �?  �?�Z

��������W
NoneNone��
 a7868477f42c453a9c9c8c6b885100d2 e18597c8335842849b40a2ef8647e700	buwayayay"1.0.0*Rits a flashlight! youre free to remodel if needed. (im not very good at modeling.)
���ǻ�̴�*Game State Messageb�
� �����إc*������إcGame State Message"  �?  �?  �?(�����B2	������ƪMZ�

cs:ShowLobbyMessageP

cs:LobbyMessagejLobby

cs:ShowRoundMessageP
 
cs:RoundMessagejRound Started

cs:ShowRoundEndMessageP 

cs:RoundEndMessagej	Round End
W
cs:ShowLobbyMessage:tooltipj8Set to show the message at the start of the lobby state.
W
cs:ShowRoundMessage:tooltipj8Set to show the message at the start of the round state.
^
cs:ShowRoundEndMessage:tooltipj<Set to show the message at the start of the round end state.z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������ƪMGameStateMessageServer"
    �?  �?  �?(�����إcZ9

cs:API��Ʀ������

cs:ComponentRoot�
�����إcz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�������Ɇ
NoneNone
�K��ި����(Gas Maskb�J
�J ��ȵ�����*���ȵ�����Gas Mask"  �?  �?  �?(�����B2�ޓ�����3���ֆł�<��؞�č�Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
head
���ֆł�<*��ޓ�����3GasMaskStatMod")
7D��C  ����  �?  �?  �?(��ȵ�����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������*����ֆł�<PickupTrigger"
���A ,�>,�>,�>(��ȵ�����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�0Equip Gas Mask"08*
mc:etriggershape:box*���؞�č�GeometryClientcontext".
dĜ@��i�`h�>
<�uA@L�.  �?  �?  �?(��ȵ�����2L���ٯ��������㽻�}͞뀪�������伎`�������O������z��ӿ�����������Z pz
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent� *����ٯ����Base"3
\˛@�d�7  %�����S4�7 �@"v�?"v�?"v�?(��؞�č�21�����������٥������і���������&������内z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������
Hemisphere"3
���   ��8�@���  ���9�8a>�U>1o�=(���ٯ����ZL
(
ma:Shared_BaseMaterial:id�
�����҃o
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *���٥��
Hemisphere"3
�����ʾy��@\����UB}QV��8a>�U>1o�=(���ٯ����ZL
(
ma:Shared_BaseMaterial:id�
�����҃o
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *�����і���
Hemisphere"3
�����I��@⯞�{#�BHɋ��8a>�U>1o�=(���ٯ����ZL
(
ma:Shared_BaseMaterial:id�
�����҃o
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *�������&
Hemisphere"3
 ��X��3F�@�����B���8a>�U>1o�=(���ٯ����ZL
(
ma:Shared_BaseMaterial:id�
�����҃o
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *�������内
Hemisphere"3
��6��>~��@O����U��QVB�8a>�U>1o�=(���ٯ����ZL
(
ma:Shared_BaseMaterial:id�
�����҃o
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *�����㽻�}Trims"3
��@@�W > �Q@�5�B��ǿ��	�"v�?"v�?"v�?(��؞�č�2&�����������𡱺����́����)����좩��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������Ring - Quarter"3
kʾ@�M<n���:dAQA�!9(I>�B/>̈́�>(����㽻�}Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ս��ȼ��088�
 *����𡱺��Ring - Quarter"3
��V@��@3��FT`>	X���g�Ƅ�>Ƅ�>Ƅ�>(����㽻�}Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ս��ȼ��088�
 *���́����)Ring - Quarter"3
��[@�,���Կ��?^�Bz�2�Ƅ�>Ƅ�>Ƅ�>(����㽻�}Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ս��ȼ��088�
 *�����좩��Ring - Quarter"3
�Ⱦ@Q�����?�T��eQ��U3C(I>�B/>̈́�>(����㽻�}Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Ս��ȼ��088�
 *�͞뀪����Filter"3
���@�!� H�:�����Bv���>�>�>(��؞�č�2/�������`��������������ٺf�˴л��ܞ��՛����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������`$Pyramid - 3-Sided Truncated Polished"$
 ^� 9���B   ���W?��;?�!?(͞뀪����Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ʨ����t088�
 *���������Modern Weapon - Disc 01"3
=lc>v[=�6B  �� ���L��@r�?r�?r�?(͞뀪����Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *�������ٺfGrenade Canister 02"3
�#��d�*��H�A ���Y�B5�VB�9Q@�9Q@�Ӫ?(͞뀪����Z|
0
ma:Shared_Detail1:color����=���=���=%  �?
#
ma:Shared_Detail1:id�
�����҃o
#
ma:Shared_Detail2:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��췶��088�
 *��˴л��ܞModern Weapon - Disc 01"3
�#��d�*��H�A�BO�(��Bi=_@r�?r�?(͞뀪����Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *���՛����Modern Weapon Barrel 01"3
�"Bd���Mc�A@��n,!C DT��5Z?�*@�*@(͞뀪����Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ԫ��ʍ'088�
 *����伎`Eye"
    �?  �?  �?(��؞�č�2	��؉����Ez(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���؉����ELense - Half"3
j�A����5�@/o�B�@	Af���=��=��=(���伎`2	٫������Za
(
ma:Shared_BaseMaterial:id�
ŗˉ����F
5
ma:Shared_BaseMaterial:color��E?�E?�E?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ဥ���B088�
 *�٫������Ring"
 �H� ��?��?��?(��؉����EZ*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
	�������Q088�
 *��������OEye"
    �?  �?  �?(��؞�č�2	��������=z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������=Lense - Half"3
��A���@�5�@2o�B�@	�8fC��=��=��=(�������O2
ү�������Za
(
ma:Shared_BaseMaterial:id�
ŗˉ����F
5
ma:Shared_BaseMaterial:color��E?�E?�E?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ဥ���B088�
 *�ү�������Ring"
 �H� ��?��?��?(��������=Z*
(
ma:Shared_BaseMaterial:id�
�����҃oz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
	�������Q088�
 *�������zStrap"$
֤�@���p�A   �?  �?  �?(��؞�č�2Ԣ�����]���󉆙�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�Ԣ�����]Prism - 6-Sided Half"$
 ȗ{AR(�������=�]�=��;(������zZ�
)
ma:Shared_BaseMaterial:id������ߞ��
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *����󉆙�Computer Stand"3
�k��ܳ*� d�?�B�B���Aoȓ���=��=��=(������zZM
)
ma:Shared_BaseMaterial:id������ߞ��
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ҁ�������088�
 *���ӿ�����Strap"$
⤷@8��@p�A   �?  �?  �?(��؞�č�2�����¦���������'z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������¦��Prism - 6-Sided Half"$
 auAh�&C�Ԭ���=�]�=��;(��ӿ�����Z�
)
ma:Shared_BaseMaterial:id������ߞ��
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *��������'Computer Stand"3
{����Y?�>�?���=.Cae����=��=��=(��ӿ�����ZM
)
ma:Shared_BaseMaterial:id������ߞ��
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ҁ�������088�
 *�������Strap"3
\��@�N�=�9yA�s���Zi�P��  �?  �?  �?(��؞�č�2���⑹��oЋ����ȧG�������Ǝz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����⑹��oComputer Stand"3
 ����>4X�?����U
C(v^���=��=��=(������ZM
)
ma:Shared_BaseMaterial:id������ߞ��
 
ma:Shared_BaseMaterial:smartP z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ҁ�������088�
 *�Ћ����ȧGPipe - Quarter Wedge Thin"3
뼾l�Z�������,��B�5TBl�=l�=l�=(������Z�
)
ma:Shared_BaseMaterial:id�Ҟ螢����
 
ma:Shared_BaseMaterial:smartP 
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������R088�
 *��������ƎPipe - Quarter Wedge Thin"3
 �>p�}� ��?�T�BrhB��Bl�=X9��l�=(������Z�
)
ma:Shared_BaseMaterial:id�Ҟ螢����
 
ma:Shared_BaseMaterial:smartP 
5
ma:Shared_BaseMaterial:color�  �?  �?  �?%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������R088�
 
NoneNone�t*rWhen equipped grants the player a "GasMask" resource that can be used in combination with other gameplay elements.�
V��ԫ��ʍ'Modern Weapon Barrel 01R/
StaticMeshAssetRefsm_weap_modern_barrel_001
���������GasMaskStatModZ��
local EQUIPMENT = script.parent
local STAT_NAME = "GasMask"


function OnEquipped(equipment, player)
	player:AddResource(STAT_NAME, 1)
end

function OnUnequipped(equipment, player)
	player:RemoveResource(STAT_NAME, 1)
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)
>ܖ�����%Rusty Diamond� ��������H

rust_amounte��>
��փ�����$	HealthBarb�
� ๱����g*�๱����g	HealthBar"  �?  �?  �?(�ÿ�����2
���Ӯ����Z�

cs:ShowNumberP

cs:ShowMaximumP

cs:ShowAmmoP
:
cs:ShowNumber:tooltipj!Show an exact number of hitpoints
_
cs:ShowMaximum:tooltipjEIf showing the health value, this toggles showing the maximum as wellz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����Ӯ����ClientContext"
    �?  �?  �?(๱����g2Μ����ڌY��ں��ͅ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *�Μ����ڌYHealthBarControllerClient"
 Z� 7  �?  �?  �?(���Ӯ����Z�

cs:API����ʮ�Ɗ�

cs:ComponentRoot�
๱����g


cs:TextBox�
��������

cs:ProgressBar������݀і

cs:AmmoPanel�	�����֍j

cs:AmmoText���������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
����͍���*���ں��ͅ�Container Control"
    �?  �?  �?(���Ӯ����2
����ڶ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*�����ڶ���Panel"
    �?  �?  �?(��ں��ͅ�2%�������������݀іͼ���������֍jZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�n�T%   B-  H�:

mc:euianchor:middlecenter� �:


mc:euianchor:bottomleft

mc:euianchor:bottomleft*���������TextBox")
QBV�4����H��2�VA  �?  �?  �?(����ڶ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,-  �A:

mc:euianchor:middlecenter�?
HealthValue  �?  �?  �?%333?"
mc:etextjustify:left0�8


mc:euianchor:topcenter

mc:euianchor:topcenter*������݀іProgressBar"
 6GS8  �?  �?  �?(����ڶ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���%  `�:

mc:euianchor:middlecenter�'
C�S>��5?%  �?   ?   ?   ?%  �?�>


mc:euianchor:bottomcenter

mc:euianchor:bottomcenter*�ͼ����TextBox")
QBV�4����H��]�VA  �?  �?  �?(����ڶ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,%  ��-  �A:

mc:euianchor:middlecenter�<
Health:   �?  �?  �?%333?"
mc:etextjustify:left0�8


mc:euianchor:topcenter

mc:euianchor:topcenter*������֍j	AmmoPanel"
    �?  �?  �?(����ڶ���2ɂ�����������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�n�(%   �-  ��:

mc:euianchor:middlecenter� �:


mc:euianchor:bottomleft

mc:euianchor:bottomleft*�ɂ���TextBox")
QBV�4����H����VA  �?  �?  �?(�����֍jZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,%  �A-   A:

mc:euianchor:middlecenter�:
Ammo:   �?  �?  �?%333?"
mc:etextjustify:left0�8


mc:euianchor:topcenter

mc:euianchor:topcenter*���������Ammo")
QBV�4����H��]�VA  �?  �?  �?(�����֍jZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,%  �B-   A:

mc:euianchor:middlecenter�=
	AmmoValue  �?  �?  �?%333?"
mc:etextjustify:left0�8


mc:euianchor:topcenter

mc:euianchor:topcenter
NoneNone
U��������#Curved Wedge - ConvexR0
StaticMeshAssetRefsm_wedge_curved_convex_001
U���䤏��#Grenade Canister 03R2
StaticMeshAssetRefsm_weapons_grenade_teeth_001
\���엁��"Flower Bellflower 02R8
StaticMeshAssetRef"sm_foliage_gen_flower_bell_002_ref
E��«����"Basic SparksR)
VfxBlueprintAssetReffxbp_basic_sparks
����ן���"Gas Maskb�
� �������"*��������"TemplateBundleDummy"
    �?  �?  �?z
mc:ecollisionsetting:forceon�
mc:evisibilitysetting:forceon�Z

��ި����(
NoneNone��
 bc8182c14ec344a9a06362b40d4991a0 b4c6e32137e54571814b5e8f27aa2fcdstandardcombo"1.1.0*rWhen equipped grants the player a "GasMask" resource that can be used in combination with other gameplay elements.
?�������� Icon Target	R$
PlatformBrushAssetRefIcon_Target
�������
Nameplatesb�
� 縠������*�縠������
Nameplates"  �?  �?  �?(����׷���2
���ă߉��Z�

cs:ShowNamesP

cs:ShowHealthbarsP

cs:ShowOnSelfP

cs:ShowOnTeammatesP
 
cs:MaxDistanceOnTeammatese    

cs:ShowOnEnemiesP

cs:MaxDistanceOnEnemiese  �D

cs:ShowOnDeadPlayersP 

cs:Scalee  �?

cs:ShowNumbersP

cs:AnimateChangesP

cs:ChangeAnimationTimee���>
(
cs:FriendlyNameColor��>�=�Q8?%  �?
 
cs:EnemyNameColor�
hf�>%  �?
'
cs:BorderColor�Y94<Y94<Y94<%  �?
+
cs:BackgroundColor��>�>�>%  �?
*
cs:FriendlyHealthColor��>�=�Q8?%  �?
"
cs:EnemyHealthColor�
  �?%  �?
(
cs:DamageChangeColor�>
?�
>%  �?
&
cs:HealChangeColor��A�=�k?%  �?
a
cs:ShowNames:tooltipjIShow names as part of the nameplate. Default names are hidden either way.
=
cs:ShowOnSelf:tooltipj$Show a nameplate on the local player
-
cs:HealthNumberColor�  �?  �?  �?%  �?
:
cs:ShowOnTeammates:tooltipjShow nameplates on teammates
z
!cs:MaxDistanceOnTeammates:tooltipjUOnly show nameplates on teammates up to this distance away. 0 means always show them.
6
cs:ShowOnEnemies:tooltipjShow nameplates on enemies
v
cs:MaxDistanceOnEnemies:tooltipjSOnly show nameplates on enemies up to this distance away. 0 means always show them.
D
cs:ShowOnDeadPlayers:tooltipj$Show nameplates even on dead players
7
cs:Scale:tooltipj#Overall scale factor for nameplates
H
cs:ShowNumbers:tooltipj.Show numerical value for hitpoints and maximum
P
cs:AnimateChanges:tooltipj3Show animated region when a player's health changes
D
cs:ChangeAnimationTime:tooltipj"Duration of animated health change
A
cs:FriendlyNameColor:tooltipj!Name color for teammates and self
3
cs:EnemyNameColor:tooltipjName color for enemies
)
cs:BorderColor:tooltipjColor of border
D
cs:BackgroundColor:tooltipj&Color of space where health is missing
?
cs:FriendlyHealthColor:tooltipjColor of friendly health bars
9
cs:EnemyHealthColor:tooltipjColor of enemy health bars
G
cs:DamageChangeColor:tooltipj'Color for damage when animating changes
D
cs:HealChangeColor:tooltipj&Color for heals when animating changes
;
cs:HealthNumberColor:tooltipjColor of health number text
>
cs:ShowHealthbars:tooltipj!Whether to show healthbars at allz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����ă߉��ClientContext"
    �?  �?  �?(縠������2	�������4Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������4NameplateControllerClient"
    �?  �?  �?(���ă߉��Z_

cs:API����ʮ�Ɗ�
 
cs:ComponentRoot�縠������
#
cs:NameplateTemplate�
��ݽ�ԉFz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�ͅ宐ד�
TemplateAssetRef
Nameplates
���쨖���Backpack Modelb�
� ��������*���������TemplateBundleDummy"
    �?  �?  �?z
mc:ecollisionsetting:forceon�
mc:evisibilitysetting:forceon�Z

�֋�����e
NoneNone�Z
 803c2bae25554f239806b7a4c3ebfb18 aabffd57e2814ff1bc7f80f5fd32b5a4
Chipnertkj"1.0.0*.
E�������Cone - HollowR(
StaticMeshAssetRefsm_cone-hollow_001
�ʊ���ٸ�Flashlight - Playerb�
� ��޻��ס*���޻��ס	Spotlight"  �?  �?  �?(��������pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�|  �B  �?  �?  �?%  �?%  �@* 2V  �EE ��E">  �A  �A%   A(5  �A=  �BB!
mc:espotlightprofile:flashlightU @F]  �D
NoneNone
y����ٶǭCustom Metal Iron Rusted 01�M�쎶�ѹ��@

color�  �?  �?  �?%  �?

u_tilese  �?

v_tilese  �?
✓ý���
LightOnOffZ 
�壹��儨Team Score UIb�
� ����힞*�����힞Team Score UI"  �?  �?  �?(�������X2	מ��殶�Z�

cs:TeamX

cs:LabeljScore:

cs:ShowMaxScoreP

cs:MaxScoreXd
-
cs:Team:tooltipjWhich team's score to show
.
cs:Label:tooltipjDescription for this score
E
cs:ShowMaxScore:tooltipj*Whether to show the value out of a maximum
0
cs:MaxScore:tooltipjThe maximum value to showz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�מ��殶�ClientContext"
    �?  �?  �?(����힞2����������ͮğ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *����������TeamScoreUI"
    �?  �?  �?(מ��殶�Z=
 
cs:ComponentRoot�����힞


cs:TextBox�
���Բ���Qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������^*��ͮğ�TeamScoreCanvas"
    �?  �?  �?(מ��殶�2
������˧�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*�������˧�Panel"
    �?  �?  �?(�ͮğ�2������������Բ���QZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�h�,%  �A-  �A:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*����������BackgroundImage"
    �?  �?  �?(������˧�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,:

mc:euianchor:middlecenter�$

ؿ���ώH+ R>+ R>+ R>%   ? �4


mc:euianchor:topleft

mc:euianchor:topleft*����Բ���QText Box"
    �?  �?  �?(������˧�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent���,:

mc:euianchor:middlecenter�/

Team Score%  �?"
mc:etextjustify:left(�8


mc:euianchor:topcenter

mc:euianchor:topcenter!
TemplateAssetRefTeam_Score_UI
�$������ԖAbility Binding Displayb�$
�# ܊���ǂ�*�܊���ǂ�Ability Binding Display"  �?  �?  �?(�٬�����q2
����⒟�Z�


cs:Bindingjability_primary
[
cs:Binding:tooltipjEThis will display icons and cooldowns for abilities with this binding

cs:BindingHintjMB1
0
cs:BindingHint:tooltipjText shown to the user

cs:ShowAbilityNameP 
E
cs:ShowAbilityName:tooltipj'Whether to show the name of the abilityz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�����⒟�ClientContext"
    �?  �?  �?(܊���ǂ�2�ɦ���������͡����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ɦ������AbilityDisplayClient"
    �?  �?  �?(����⒟�Z�

cs:API����������

cs:ComponentRoot�
܊���ǂ�

	cs:Canvas����͡����

cs:Icon�������ι�
 
cs:CountdownText���˧�����

cs:BindingText�
������§V

cs:NameText��ԧ��󭓜
$
cs:ProgressIndicator��Ì������

cs:RightShadow������꘽�

cs:LeftShadow�
���؁���qz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��������R*����͡����AbilityBindingCanvas"
    �?  �?  �?(����⒟�2
Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*�Ն����զ�Panel Control"
    �?  �?  �?(���͡����2;������§V�ԧ��󭓜��������������ι��Ì��������˧�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�nd�%  �B-  H�:

mc:euianchor:middlecenter� �:


mc:euianchor:bottomleft

mc:euianchor:bottomleft*�������§VAbilityBinding"
    �?  �?  �?(Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��d,-  �B:

mc:euianchor:middlecenter�<
Hotkey  �?  �?  �?%  �?"
mc:etextjustify:center0�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*��ԧ��󭓜AbilityName"
    �?  �?  �?(Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��d,-  ��:

mc:euianchor:middlecenter�=
Ability  �?  �?  �?%  �?"
mc:etextjustify:center0�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*���������
Background"
    �?  �?  �?(Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�zdd:

mc:euianchor:middlecenter�

ؿ���ώH%���>�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*�������ι�Icon"
    �?  �?  �?(Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�{PP:

mc:euianchor:middlecenter�
�����Ȟ��%���>�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*��Ì������ProgressIndicator"
    �?  �?  �?(Ն����զ�2�������W���ϱ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�iZZ:

mc:euianchor:middlecenter��>


mc:euianchor:middlecenter

mc:euianchor:middlecenter*��������W	RightClip"
    �?  �?  �?(�Ì������2
�����꘽�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�g-Z:

mc:euianchor:middlecenter��<


mc:euianchor:middleleft

mc:euianchor:middlecenter*������꘽�RightShadow"
    �?  �?  �?(�������WZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�yA�:

mc:euianchor:middlecenter�

��������%   ? �:


mc:euianchor:middleleft

mc:euianchor:middleleft*����ϱ���LeftClip"
    �?  �?  �?(�Ì������2	���؁���qZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�h-Z:

mc:euianchor:middlecenter��=


mc:euianchor:middleright

mc:euianchor:middlecenter*����؁���q
LeftShadow"
    �?  �?  �?(���ϱ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�{A�:

mc:euianchor:middlecenter�

��������%   ? �<


mc:euianchor:middleright

mc:euianchor:middleright*���˧�����CountdownTime"
    �?  �?  �?(Ն����զ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��<<:

mc:euianchor:middlecenter�7
5  �?  �?  �?%  �?"
mc:etextjustify:center0�>


mc:euianchor:middlecenter

mc:euianchor:middlecenter+
TemplateAssetRefAbility_Binding_Display
<�����Ȟ��	Icon Food	R"
PlatformBrushAssetRef	Icon_Food
N�������Sci-fi Circuits Line 02R'
StaticMeshAssetRefsm_line_scifi_002
�ߪ�����Modern Weapon - Axe 01 (Prop)b�
� ���ғ�*����ғ�Modern Weapon - Axe 01"  �?  �?  �?(�����B2������������ӭ�٣Z z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*���������Hatchet - Blade"$

 ��?T�:B0��  �?  �?  �?(���ғ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�袺����;088�
 *�����ӭ�٣Hatchet - Handle"
    �?  �?  �?(���ғ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��팻����088�
 %
TemplateAssetReftemplates_Axe_001
T��팻����Hatchet - HandleR3
StaticMeshAssetRefsm_weap_modern_axe_handle_001
Q��˷����Fantasy Axe Grip 01R.
StaticMeshAssetRefsm_weap_fan_grip_axe_001
@���Ⱥޘ�
Rock 03R)
StaticMeshAssetRefsm_rock_generic_003
�"��售���
Advanced Grenadeb�"
�! ʎ������*�ʎ������Advanced Grenade"  �?  �?  �?(�������28���͖��Hֳ������3��ߡʷ�����Ļ������ɬͮ���\����젗�5Z�

cs:EnableAutoReloadP 

cs:FriendlyExplosionDamageP
&
cs:ExplosionDamageRange�
   A  pB

cs:ExplosionRadiuse  �C
!
cs:ExplosionKnockbackSpeede  �D

cs:DebugExplosionP 

cs:PickupSound�
����ۦ^
#
cs:ProjectileImpact������䯲�
'
cs:ProjectileBounceSound�
����ց��x
�
cs:EnableAutoReload:tooltipj�If true the weapon the player will auto reload the ammo without player's input. Only reloads if the player has the ammo resource.
�
cs:ExplosionDamageRange:tooltipj�Set the minimum to maximum damage of the explosion. X is damage far from the explosion center and Y is damage close to the explosion center.
T
cs:ExplosionRadius:tooltipj6How far the explosion impacts the surrounding players.
_
cs:DebugExplosion:tooltipjBWhether to show the explosion gizmo or not for debugging purposes.
g
"cs:FriendlyExplosionDamage:tooltipjAWhether or not to apply damage on allies (including self damage).
a
"cs:ExplosionKnockbackSpeed:tooltipj;How strong the explosion blasts the player from the center.pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��

right_prop��Ļ�������
���я����
���ΰ���p
ӰГ£͝}"
��������2
 :unarmed_stanceB
Ή�����J�����ԃ�Z
��������j
��������p}  �?� P�G�
���������
mc:ereticletype:crosshair��rounds��  �D�   @�33�?�  @A�  @A��
�ɬͮ���\�
����젗�5�-
+mc:eweapontrajectorymode:muzzletolooktarget*����͖��HWeaponProjectileExplosionServer"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������*�ֳ������3WeaponPickupTriggerServer"$
  H�����   �   �?  �?  �?(ʎ������Z


cs:Trigger���Ļ�����pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������*���ߡʷ���Client Context"
    �?  �?  �?(ʎ������2��������ϵ�����DZ pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��������Scripts"
    �?  �?  �?(��ߡʷ���2�����������Գ�Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Scripts*������WeaponAutoReloadClient"$
  H�����   �   �?  �?  �?(�������Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������q*�������Գ�WeaponUtilityHideObjectClient"
    �?  �?  �?(�������ZJ

	cs:Object�
�ϵ�����D

cs:HideOnEmptyAmmoP

cs:HideAfterAttackPz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

Ⱥ�����6*��ϵ�����DGeo"
  p�   �?  �?  �?(��ߡʷ���2�����ڲ�o┣ֱ��xZ z
mc:ecollisionsetting:forceoff�)
'mc:evisibilitysetting:inheritfromparent�*������ڲ�oGrenade Canister 04"$

  @8��@��C  �?  �?  �?(�ϵ�����DZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����ő_088�
 *�┣ֱ��xGrenade Handle 01"$

  @8  �A��C  �?  �?  �?(�ϵ�����DZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������L088�
 *���Ļ�����Pickup Trigger"
  ��L?��L?��L?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�8Equip Advanced Grenade"08*
mc:etriggershape:box*��ɬͮ���\Throw"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_primary*+���= 08J
mc:eabilitysetfacing:aim2+���= 08J
mc:eabilitysetfacing:aim:,
�#< 08J
mc:eabilitysetfacing:noneB,333? 08J
mc:eabilitysetfacing:noneJunarmed_throwZ
mc:egameaction:primaryaction*�����젗�5Reload"
    �?  �?  �?(ʎ������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent��"ability_ult*)���> 0J
mc:eabilitysetfacing:aim2)���= 0J
mc:eabilitysetfacing:aim:# J
mc:eabilitysetfacing:noneB# J
mc:eabilitysetfacing:noneJunarmed_pickupZ
mc:egameaction:extraaction_33$
TemplateAssetRefAdvanced_Grenade
���ٔ����	Lobby Start Respawn Playersb�
� �р���ߪ�*��р���ߪ�Lobby Start Respawn Players"  �?  �?  �?(���Ը��2	�Ơ�����jZ�

	cs:Periode  �?

cs:RespawnOnRoundStartP
a
cs:Period:tooltipjLPeriod over which players are respawned to avoid a spike of network traffic.z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ơ�����jLobbyStartRespawnPlayersServer"
    �?  �?  �?(�р���ߪ�Z:

cs:API��Ʀ������
 
cs:ComponentRoot��р���ߪ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�砽���?/
TemplateAssetRefLobby_Start_Respawn_Players
�dІҨ���Urban Pipe Wall 6m (Prop)b�c
�c ���૑��*����૑��Urban Pipe Wall 6m (Prop)"  �?  �?  �?(�����B2��͡���֍��������f�Δ����F������������������������ɬ�������ÂЛ���n���ꞣ���������������֓������օ��߱���®���"�؇�����^����̢���̼Q��������l����͗�����뼝ٓ���״��������랏����稷��O�����ψ�����˪�������ޯ��r��Ɔ�����닌������ԧ������ҍ���ȕ^�����ʓT������ֵ��ā�����������������Ѯ�����ñ��Ҍͽ~�������!���톣�ӥ������������֚��9�����������ӻ����gص������h�������u�ل�����y�����ᑲ*������׽�ⓙ�����|ò�Λ���������ʱ������ڃ����������������ל�������ꪃ�������
�̋�¸�Bީ�ܸ���6����Ы�Sz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��͡���֍�Urban Pipe Flange 01"
  �C   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *��������fUrban Pipe Flange 01"
  ��   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *��Δ����FUrban Pipe Straight"

  �C  �A   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *���������Urban Pipe Straight"

  ��  �A   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *��������Urban Pipe Elbow 01"

  ��  �B   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����������Urban Pipe Straight")

 ���  C
  ��'ar8  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *�ɬ������Urban Pipe Clamp 04")
  �   B  C ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ˆ�������08�
 *��ÂЛ���nUrban Pipe Straight")

  u�  C
  ��'ar8  �?  �?  @@(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *����ꞣ��Urban Pipe Elbow 01"

 ���  C   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����������Urban Pipe Elbow 01")

  a�  uC
��3���3�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *�����֓���Urban Pipe Elbow 01"

  a�  uC   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����օ��߱Urban Pipe Straight")

  >�  �C
  ��'ar8  �?  �?   @(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *����®���"Urban Pipe Wrap 01".

���  �C0N�����B����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�؞������08�
 *��؇�����^Urban Pipe Elbow 01".

  ��  �C�.e7���B  ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����Urban Pipe Flange 01")
  4�   B  �C ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *��̢���̼QUrban Pipe Clamp 02"

  �  C   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����μ�08�
 *���������lUrban Pipe Clamp 01".

  a�  uC  �B  4C���B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��В�����08�
 *�����͗��Urban Pipe Coupling 01"$

  �C  �B  4C  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *����뼝ٓ�Urban Pipe Elbow 01"$

  �C  �B  4C  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *���״���Urban Pipe Straight")

  CC  C
  ��'ar8  �?  �?   @(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *������랏�Urban Pipe Straight")

  C  C
  ��'ar8  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *����稷��OUrban Pipe Straight")

  \�  C
  ��'ar8  �?  �?  �@(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *������ψ��Urban Pipe Elbow 01"$

  CC  C��3�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *����˪���Urban Pipe Elbow 01".

  �B  uC^�8   ���3�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *�����ޯ��rUrban Pipe Straight"

  �B  uC   �?  �?  �@(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������08�
 *���Ɔ�����Urban Pipe Elbow 01"3
  *C  �����CL=�8���B����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *�닌����Urban Pipe Elbow 01".

  *C  �C  ��N�?�O2C  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������J08�
 *���ԧ�����Urban Pipe Flange 01"3
 WC   B  �C   ���3����B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *��ҍ���ȕ^Urban Pipe Clamp 04".
  �B   B  �C
  �B ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ˆ�������08�
 *������ʓTUrban Pipe Clamp 04"3
  �B   B ��C  �B0��Ap�}�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ˆ�������08�
 *�������ֵ�Urban Pipe Wrap 01".

   B  C 4�  ��  �B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�؞������08�
 *��ā������Urban Pipe Wrap 01".

  HB  C��3B���B  ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�؞������08�
 *����������Urban Pipe Valve 03"$

  �  WC ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�� ���08�
 *���Ѯ�����Urban Pipe Cap 02"3
  C  ��  �C��3B���B����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Փ�����08�
 *�ñ��Ҍͽ~Urban Pipe Cap 03".

 ��  �C  ��:�;  �  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�̯���08�
 *��������!Urban Pipe Clamp 03")
  C   B  C����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ߢߊ����B08�
 *����톣�ӥUrban Pipe Coupline 03"3
  C   �  C� 4A��������  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *���������Urban Pipe Coupling 01"

  ��  �B   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������08�
 *�����֚��9Urban Pipe Coupling 02"$

  ��  C  ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
������08�
 *����������Urban Pipe Coupling 04".

  ��  C��`����B����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
پ͍����08�
 *���ӻ����gUrban Pipe Valve 01"$

  �  C��3�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ǘ���Ȋ�08�
 *�ص������hUrban Pipe Clamp 03")
  �B   B  C����  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

ߢߊ����B08�
 *��������uUrban Pipe Clamp 01")

  C  C
��3C���B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��В�����08�
 *��ل�����yUrban Pipe Valve 02"3
  C  �  C���B��3C���B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ϣ�08�
 *������ᑲ*Urban Pipe Cap 02"3
  >C  �6  �CL=�8 �B���B  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�Փ�����08�
 *�������׽�Urban Pipe Valve 02"3
  a�  �  uC  4�7�J7 ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����ϣ�08�
 *�ⓙ�����|Urban Pipe Flange 01".

  �B  uC  @��?C�֑7  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *�ò�Λ����Urban Pipe Cap 03".

  �B ��CL=8^�1X�8  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�̯���08�
 *������ʱ��Urban Pipe Cap 03".

  �B  �CL=8^�1X�8  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�̯���08�
 *�����ڃ���Urban Pipe Flange 01".

  ��  C���B���B ��  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *���������Urban Pipe Flange 01".

  ��  C  ��  ����3�  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
�����§��08�
 *������ל��Urban Pipe Flange 02".

  �B  uC  ����3���3C  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���Ӧ��08�
 *������ꪃ�"Steam Pressure Release Loop 01 SFX"$
  �  �A  �C   �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�&

���ތ��� 5��>= ��DE  �CXx�*�������
Steam Volume VFX"

  �  uC   �>  �>  �>(���૑��Z�
 
bp:Initial Velocity Lowr  HB
!
bp:Initial Velocity Highr  �B

bp:Wind Speedr
  �B  �A


bp:Gravitye  �?


bp:Densitye   ?
#
bp:Particle Scale Multipliere  @?
(
bp:Volume Type�
mc:evfxvolumetype:3

bp:Local SpacePz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
锜����� �*��̋�¸�BLiquid Decal")
 ���   �  ����B   ?   ?  �>(���૑��ZV

bp:StainP

bp:Shape IndexX 
#
bp:Type�
mc:eliquiddecaltype:1

bp:Wete  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�����R� *�ީ�ܸ���6Water Jet VFX")
P��  ���	�C��3C  �?  �?  �?(���૑��Z�

bp:Velocity Mine    

bp:Velocity Maxe  �@
#
bp:Particle Scale MultipliereA
!
bp:Color�>
�>@q?  �?%  �?

bp:Lifee   ?


bp:Densitye���=

bp:Angle Maxe  B

bp:Angle Mine  ��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
ٲ�Ɉ���� �*�����Ы�SUrban Pipe Flange 02".

  �B  kC  ����3���3C  �?  �?  �?(���૑��z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

���Ӧ��088�
 -
TemplateAssetRefUrban_Pipe_Wall_6m__Prop_
Dٲ�Ɉ����Water Jet VFXR&
VfxBlueprintAssetReffxbp_water_jet
N锜�����Steam Volume VFXR-
VfxBlueprintAssetReffxbp_steam_volume_vfx
o���ތ���"Steam Pressure Release Loop 01 SFXR=
AudioAssetRef,sfx_steam_pressure_release_looped_01_Cue_ref
^���Ӧ��Urban Pipe Flange 02R:
StaticMeshAssetRef$sm_prop_urb_pipes_acc_flange_002_ref
]Ǘ���Ȋ�Urban Pipe Valve 01R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_valve_001_ref
]�� ���Urban Pipe Valve 03R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_valve_003_ref
]�����μ�Urban Pipe Clamp 02R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_clamp_002_ref
]ˆ�������Urban Pipe Clamp 04R9
StaticMeshAssetRef#sm_prop_urb_pipes_acc_clamp_004_ref
��������9Sci-fi Base Wall Interior 01 Half - Sliding Door Templateb�
� �ޝ��α�4*��ޝ��α�49Sci-fi Base Wall Interior 01 Half - Sliding Door Template"  �?  �?  �?(�����B2�������*Һ��Ɏ��Uz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��������*.Sci-Fi Base Wall Interior 01 Half - Doorway 02"
    �?  �?  �?(�ޝ��α�4z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�뛗���088�
 *�Һ��Ɏ��U+Sci-fi Base Sliding Door 02 - 30cm Z Offset"
  �B   �?  �?  �?(�ޝ��α�42	�Ĥ�����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��Ĥ�����#Select To Edit Animation Properties"
  �A����  �?  �?  �?(Һ��Ɏ��U2%�����������������˧�����˜���mZ�

cs:AutoOpenP

cs:TimeOpene  @@

cs:OpenLabelj	Open Door

cs:CloseLabelj
Close Door

cs:OpenDistancee  4C

cs:Speede  �C

cs:ResetOnRoundStartP
`
cs:AutoOpen:tooltipjIThis door will open when a player gets close, and cannot be interact with
V
cs:TimeOpen:tooltipj?With AutoOpen, how long the day stays open with no player near.
E
cs:OpenLabel:tooltipj-Use label to open the door (without AutoOpen)
G
cs:CloseLabel:tooltipj.Use label to close the door (without AutoOpen)
E
cs:Speed:tooltipj1How fast the door opens or closes, in cm / second
Q
cs:ResetOnRoundStart:tooltipj1Will reset (to be closed) at the start of a round
Q
cs:OpenDistance:tooltipj6Total distance door moves from closed to open (in cm).z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*�������Trigger"

  �B  C   �?ff�?  @@(�Ĥ�����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�"08*
mc:etriggershape:box*����������ServerContext"
    �?  �?  �?(�Ĥ�����2	�����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*������SlidingDoorControllerServer"
    �?  �?  �?(���������ZX

cs:ComponentRoot�
�Ĥ�����

cs:DoorRoot�
�˜���m


cs:Trigger�
������z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�������#*���˧����ClientContext"
  /C   �?  �?  �?(�Ĥ�����2�ĵ���˕���������uӯ��ʃ۾Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ĵ���˕�SlidingDoorControllerClient"
    �?  �?  �?(��˧����Zx

cs:ComponentRoot�
�Ĥ�����

cs:DoorRoot�
�˜���m

cs:OpenSound�
��������u

cs:CloseSound�
ӯ��ʃ۾z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��Âڔ���*���������uHelper_DoorOpenSound"
    �?  �?  �?(��˧����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�(
ގ�Ŵ����-  E5  �?=  aEE  �CXx�*�ӯ��ʃ۾Helper_DoorCloseSound"
    �?  �?  �?(��˧����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�'

��ܙ����'-  E5  �?=  aEE  �CXx�*��˜���mDoorRoot"
    �?  �?  �?(�Ĥ�����2	�ʦ����Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*��ʦ����Geo_StaticContext"
    �?  �?  �?(�˜���m2
���������Z pz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*����������Sci-fi Base Door 02"
 ���B  �?  �?  �?(�ʦ����z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Њ�������088�
 M
TemplateAssetRef9Sci-fi_Base_Wall_Interior_01_Half_-_Sliding_Door_Template
�؈������
Scoreboardb�
� ������ͬ4*�������ͬ4
Scoreboard"  �?  �?  �?(�٬�����q2	��������
Z�


cs:Bindingjability_extra_19

cs:ShowAtRoundEndP

cs:RoundEndDuratione  �@
W
cs:RoundEndDuration:tooltipj8How long to show at the end of round if "ShowAtRoundEnd"
u
cs:ShowAtRoundEnd:tooltipjXWhether to show this for a limited time at the end of round (without pressing a binding)
L
cs:Binding:tooltipj6Which binding players press to bring up the scoreboardz(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���������
ClientContext"
    �?  �?  �?(������ͬ42�ޤ�ږ���ܒꜭ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent� *��ޤ�ږ���ScoreboardControllerClient"
    �?  �?  �?(��������
Zw

cs:ComponentRoot�
������ͬ4

	cs:Canvas�ܒꜭ���

cs:Panel���η�ͷ��

cs:LineTemplate�݅����ޫ�z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ç�������*�ܒꜭ���	Container"
    �?  �?  �?(��������
2
��η�ͷ��Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�Y:

mc:euianchor:middlecenter� �4


mc:euianchor:topleft

mc:euianchor:topleft*���η�ͷ��Panel"
    �?  �?  �?(ܒꜭ���Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�h�	�-  �C:

mc:euianchor:middlecenter� �8


mc:euianchor:topcenter

mc:euianchor:topcenter
TemplateAssetRef
Scoreboard
G�����Metal Grates 02R(
MaterialAssetRefmi_scf_grates_004_uv
Xﾅ���ӆSci-fi Base Stairs 01R3
StaticMeshAssetRefsm_ts_scf_base_stairs_001_ref
�������*Modern Weapon - Grenade Launcher 01 (Prop)b�
� �֑ں����*��֑ں����#Modern Weapon - Grenade Launcher 01"
    �?  �?  �?(�䵬�Ά��2y��ܹ����������������μ�ɏ������*�����T��������0ڃ�ڰ���(�𷒳��珮ӻ�ւ~�������V������������������즸҃ḄfZ z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�*���ܹ�����Trigger")

�+�@~�@
���B	��CV�<s�<6Y=(�֑ں����Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 *��������Modern Weapon - Grip 02"

��rB$�9A   �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ϫ���088�
 *�����μ�ɏModern Weapon - Scope 02"

Խ�A�P�A �a?5�j?�a?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

������ȋ088�
 *�������*Modern Weapon - Stock 01"

�,MAv�A 	.�?�{�?	.�?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

����߇��088�
 *������TModern Weapon - Magazine 02"

X��A���A   �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
Ƞ�����088�
 *���������0Modern Weapon Barrel 01"

��+B̮�A   �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

��ԫ��ʍ'088�
 *�ڃ�ڰ���(Modern Weapon - Grip 02"$

�sz@-A��o�  �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��ϫ���088�
 *��𷒳��Modern Weapon - Foregrip 02"

A6B��A   �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���۸���088�
 *�珮ӻ�ւ~Modern Weapon - Disc 01"

�_+B��A [�?[�?[�?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *��������VModern Weapon - Disc 01"$

hbaA��A��3C[�?[�?[�?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
��������088�
 *����������Modern Weapon - Body 04"

bp�AY�HA   �?  �?  �?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�

�䴭�ŉ�088�
 *����������Modern Weapon - Foregrip 02".

d�A�\ZA   ���3���3�Q�M?��?7�M?(�֑ں����Z z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���۸���088�
 *�즸҃ḄfTrigger")

�yB�[&A
���B	��CV�<s�<6Y=(�֑ں����Z\
(
ma:Shared_BaseMaterial:id�
͈�����
0
ma:Shared_BaseMaterial:color�
�c?#G�>%  �?z(
&mc:ecollisionsetting:inheritfromparent�)
'mc:evisibilitysetting:inheritfromparent�
���������088�
 7
TemplateAssetRef#Modern_Weapon_-_Grenade_Launcher_01
T�䴭�ŉ�Modern Weapon - Body 04R-
StaticMeshAssetRefsm_weap_modern_body_004
]���۸���Modern Weapon - Foregrip 02R1
StaticMeshAssetRefsm_weap_modern_foregrip_002
XȠ�����Modern Weapon - Magazine 02R,
StaticMeshAssetRefsm_weap_modern_mag_002