local _i, _f, _v, _r, _ri, _rf, _rl, _s, _rv, _ro, _in, _ii, _fi =
	Citizen.PointerValueInt(), Citizen.PointerValueFloat(), Citizen.PointerValueVector(),
	Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger(), Citizen.ResultAsFloat(), Citizen.ResultAsLong(), Citizen.ResultAsString(), Citizen.ResultAsVector(), Citizen.ResultAsObject(),
	Citizen.InvokeNative, Citizen.PointerValueIntInitialized, Citizen.PointerValueFloatInitialized

local g = _G
local rs = rawset
local msgpack = msgpack
local _tostring = tostring
local function _ts(num)
	if num == 0 or not num then -- workaround for users calling string parameters with '0', also nil being translated
		return nil
	end
	return _tostring(num)
end
local function _ch(hash)
	if g.type(hash) == 'string' then
		return g.GetHashKey(hash)
	end

	return hash
end

local function _mfr(fn)
	return g.Citizen.GetFunctionReference(fn)
end

local Global = setmetatable({}, { __newindex = function(_, n, v)
	g[n] = v

	rs(_, n, v)
end})

_ENV = nil

--- Adds a rectangular blip for the specified coordinates/area.
-- It is recommended to use [SET_BLIP_ROTATION](#_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
-- By default, the blip will show as a _regular_ blip with the specified color/sprite if it is outside of the minimap view.
-- Example image:
-- ![minimap](https://w.wew.wtf/pdcjig.png)
-- ![big map](https://w.wew.wtf/zgcjcm.png)
-- (Native name is _likely_ to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
-- @param x The X coordinate of the center of the blip.
-- @param y The Y coordinate of the center of the blip.
-- @param z The Z coordinate of the center of the blip.
-- @param width The width of the blip.
-- @param height The height of the blip.
-- @return A handle to the blip.
function Global.AddBlipForArea(x, y, z, width, height)
	return _in(0x6228f159, x, y, z, width, height, _r, _ri)
end

--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
-- @param x The X coordinate to create the blip on.
-- @param y The Y coordinate.
-- @param z The Z coordinate.
-- @return A blip handle.
function Global.AddBlipForCoord(x, y, z)
	return _in(0xc6f43d0e, x, y, z, _r, _ri)
end

--- Returns red ( default ) blip attached to entity.
-- Example:
-- Blip blip; //Put this outside your case or option
-- blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);
-- UI::SET_BLIP_AS_FRIENDLY(blip, true);
function Global.AddBlipForEntity(entity)
	return _in(0x30822554, entity, _r, _ri)
end

function Global.AddBlipForRadius(posX, posY, posZ, radius)
	return _in(0x4626756c, posX, posY, posZ, radius, _r, _ri)
end

--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
-- collection - PedDecorationCollection filename hash
-- overlay - Item name hash
-- Example:
-- Entry inside "mpbeach_overlays.xml" -
-- <Item>
-- <uvPos x="0.500000" y="0.500000" />
-- <scale x="0.600000" y="0.500000" />
-- <rotation value="0.000000" />
-- <nameHash>FM_Hair_Fuzz</nameHash>
-- <txdHash>mp_hair_fuzz</txdHash>
-- <txtHash>mp_hair_fuzz</txtHash>
-- <zone>ZONE_HEAD</zone>
-- <type>TYPE_TATTOO</type>
-- <faction>FM</faction>
-- <garment>All</garment>
-- <gender>GENDER_DONTCARE</gender>
-- <award />
-- <awardLevel />
-- </Item>
-- Code:
-- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("mpbeach_overlays"), GAMEPLAY::GET_HASH_KEY("fm_hair_fuzz"))
function Global.AddPedDecorationFromHashes(ped, collection, overlay)
	return _in(0x70559ac7, ped, _ch(collection), _ch(overlay))
end

--- Applies a force to the specified entity.
-- **List of force types (p1)**:
-- ```
-- public enum ForceType
-- {
-- MinForce = 0,
-- MaxForceRot = 1,
-- MinForce2 = 2,
-- MaxForceRot2 = 3,
-- ForceNoRot = 4,
-- ForceRotPlusForce = 5
-- }
-- ```
-- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
-- @param entity The entity you want to apply a force on
-- @param forceType See native description above for a list of commonly used values
-- @param x Force amount (X)
-- @param y Force amount (Y)
-- @param z Force amount (Z)
-- @param offX Rotation/offset force (X)
-- @param offY Rotation/offset force (Y)
-- @param offZ Rotation/offset force (Z)
-- @param boneIndex (Often 0) Entity bone index
-- @param isDirectionRel (Usually false) Vector defined in local (body-fixed) coordinate frame
-- @param ignoreUpVec (Usually true)
-- @param isForceRel (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
-- @param p12 (Usually false)
-- @param p13 (Usually true)
function Global.ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
	return _in(0xc1c0855a, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
end

--- Returns whether or not the specified player has enough information to start a commerce session for.
-- @param playerSrc The player handle
-- @return True or false.
function Global.CanPlayerStartCommerceSession(playerSrc)
	return _in(0x429461c3, _ts(playerSrc), _r)
end

--- Cancels the currently executing event.
function Global.CancelEvent()
	return _in(0xfa29d35d)
end

--- List of component/props ID
-- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
function Global.ClearPedProp(ped, propId)
	return _in(0x2d23d743, ped, propId)
end

function Global.ClearPedSecondaryTask(ped)
	return _in(0xa635f451, ped)
end

function Global.ClearPedTasks(ped)
	return _in(0xde3316ab, ped)
end

--- Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.
function Global.ClearPedTasksImmediately(ped)
	return _in(0xbc045625, ped)
end

--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
-- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
function Global.ClearPlayerWantedLevel(player)
	return _in(0x54ea5bcc, player)
end

function Global.CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
	return _in(0x2f7aa05c, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, _r, _ri)
end

function Global.CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
	return _in(0x58040420, _ch(modelHash), x, y, z, isNetwork, netMissionEntity, dynamic, _r, _ri)
end

--- *Heading*: 0.0
-- *Heading* is the Z axis spawn rotation of the ped 0->5th parameter.
-- Ped Types:
-- enum PedTypes
-- {
-- PED_TYPE_PLAYER_0,// michael
-- PED_TYPE_PLAYER_1,// franklin
-- PED_TYPE_NETWORK_PLAYER,	// mp character
-- PED_TYPE_PLAYER_2,// trevor
-- PED_TYPE_CIVMALE,
-- PED_TYPE_CIVFEMALE,
-- PED_TYPE_COP,
-- PED_TYPE_GANG_ALBANIAN,
-- PED_TYPE_GANG_BIKER_1,
-- PED_TYPE_GANG_BIKER_2,
-- PED_TYPE_GANG_ITALIAN,
-- PED_TYPE_GANG_RUSSIAN,
-- PED_TYPE_GANG_RUSSIAN_2,
-- PED_TYPE_GANG_IRISH,
-- PED_TYPE_GANG_JAMAICAN,
-- PED_TYPE_GANG_AFRICAN_AMERICAN,
-- PED_TYPE_GANG_KOREAN,
-- PED_TYPE_GANG_CHINESE_JAPANESE,
-- PED_TYPE_GANG_PUERTO_RICAN,
-- PED_TYPE_DEALER,
-- PED_TYPE_MEDIC,
-- PED_TYPE_FIREMAN,
-- PED_TYPE_CRIMINAL,
-- PED_TYPE_BUM,
-- PED_TYPE_PROSTITUTE,
-- PED_TYPE_SPECIAL,
-- PED_TYPE_MISSION,
-- PED_TYPE_SWAT,
-- PED_TYPE_ANIMAL,
-- PED_TYPE_ARMY
-- };
function Global.CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, netMissionEntity)
	return _in(0x389ef71, pedType, _ch(modelHash), x, y, z, heading, isNetwork, netMissionEntity, _r, _ri)
end

--- Ped Types:
-- enum ePedType
-- {
-- PED_TYPE_PLAYER_0 = 0,
-- PED_TYPE_PLAYER_1 = 1,
-- PED_TYPE_PLAYER_2 = 3,
-- PED_TYPE_CIVMALE = 4,
-- PED_TYPE_CIVFEMALE = 5,
-- PED_TYPE_COP = 6,
-- PED_TYPE_UNKNOWN_7 = 7,
-- PED_TYPE_UNKNOWN_12 = 12, // gang member?
-- PED_TYPE_UNKNOWN_19 = 19,
-- PED_TYPE_MEDIC = 20,
-- PED_TYPE_FIREMAN = 21,
-- PED_TYPE_UNKNOWN_22 = 22,
-- PED_TYPE_UNKNOWN_25 = 25,
-- PED_TYPE_UNKNOWN_26 = 26,
-- PED_TYPE_SWAT = 27,
-- PED_TYPE_ANIMAL = 28,
-- PED_TYPE_ARMY = 29
-- };
function Global.CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
	return _in(0x3000f092, vehicle, pedType, _ch(modelHash), seat, isNetwork, netMissionEntity, _r, _ri)
end

--- NativeDB Added Parameter 8: BOOL p7
function Global.CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity)
	return _in(0xdd75460a, _ch(modelHash), x, y, z, heading, isNetwork, netMissionEntity, _r, _ri)
end

function Global.DeleteFunctionReference(referenceIdentity)
	return _in(0x1e86f206, _ts(referenceIdentity))
end

function Global.DeleteResourceKvp(key)
	return _in(0x7389b5df, _ts(key))
end

function Global.DoesEntityExist(entity)
	return _in(0x3ac90869, entity, _r)
end

--- Requests whether or not the player owns the specified SKU.
-- @param playerSrc The player handle
-- @param skuId The ID of the SKU.
-- @return A boolean.
function Global.DoesPlayerOwnSku(playerSrc, skuId)
	return _in(0x167aba27, _ts(playerSrc), skuId, _r)
end

--- Requests whether or not the player owns the specified package.
-- @param playerSrc The player handle
-- @param skuId The package ID on Tebex.
-- @return A boolean.
function Global.DoesPlayerOwnSkuExt(playerSrc, skuId)
	return _in(0xdef0480b, _ts(playerSrc), skuId, _r)
end

function Global.DropPlayer(playerSrc, reason)
	return _in(0xba0613e1, _ts(playerSrc), _ts(reason))
end

function Global.DuplicateFunctionReference(referenceIdentity)
	return _in(0xf4e2079d, _ts(referenceIdentity), _r, _s)
end

function Global.EnableEnhancedHostSupport(enabled)
	return _in(0xf97b1c93, enabled)
end

function Global.EndFindKvp(handle)
	return _in(0xb3210203, handle)
end

function Global.ExecuteCommand(commandString)
	return _in(0x561c060b, _ts(commandString))
end

function Global.FindKvp(handle)
	return _in(0xbd7bebc5, handle, _r, _s)
end

function Global.FlagServerAsPrivate(private_)
	return _in(0x13b6855d, private_)
end

--- ```
-- No, this should be called SET_ENTITY_KINEMATIC. It does more than just "freeze" it's position.
-- ^Rockstar Devs named it like that, Now cry about it.
-- ```
-- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
-- @param entity The entity to freeze/unfreeze.
-- @param toggle Freeze or unfreeze entity.
function Global.FreezeEntityPosition(entity, toggle)
	return _in(0x65c16d57, entity, toggle)
end

--- Returns all vehicle handles known to the server.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of vehicle handles.
function Global.GetAllVehicles()
	return msgpack.unpack(_in(0x332169f5, _r, _ro))
end

function Global.GetBlipSprite(self)
	return _in(0x72ff2e73, self, _r, _ri)
end

--- Returns the current console output buffer.
-- @return The most recent game console output, as a string.
function Global.GetConsoleBuffer()
	return _in(0xe57429fa, _r, _s)
end

function Global.GetConvar(varName, default_)
	return _in(0x6ccd2564, _ts(varName), _ts(default_), _r, _s)
end

function Global.GetConvarInt(varName, default_)
	return _in(0x935c0ab2, _ts(varName), default_, _r, _ri)
end

--- Returns the name of the currently executing resource.
-- @return The name of the resource.
function Global.GetCurrentResourceName()
	return _in(0xe5e9ebbb, _r, _s)
end

--- Gets the current coordinates for a specified entity. This native is used server side when using OneSync. See <a href="#_0x3FEF770D40960D5A" >GET_ENTITY_COORDS</a> for client side.
-- @param entity The entity to get the coordinates from.
-- @return The current entity coordinates.
function Global.GetEntityCoords(entity)
	return _in(0x1647f1cb, entity, _r, _rv)
end

function Global.GetEntityHeading(entity)
	return _in(0x972cc383, entity, _r, _rf)
end

--- Currently it only works with peds.
function Global.GetEntityHealth(entity)
	return _in(0x8e3222b7, entity, _r, _ri)
end

--- Currently it only works with peds.
function Global.GetEntityMaxHealth(entity)
	return _in(0xc7ae6aa1, entity, _r, _ri)
end

function Global.GetEntityModel(entity)
	return _in(0xdafcb3ec, entity, _r, _ri)
end

function Global.GetEntityPopulationType(entity)
	return _in(0xfc30ddff, entity, _r, _ri)
end

function Global.GetEntityRotation(entity)
	return _in(0x8ff45b04, entity, _r, _rv)
end

function Global.GetEntityRotationVelocity(entity)
	return _in(0x9bf8a73f, entity, _r, _rv)
end

function Global.GetEntityScript(entity)
	return _in(0xb7f70784, entity, _r, _s)
end

function Global.GetEntityType(entity)
	return _in(0xb1bd08d, entity, _r, _ri)
end

function Global.GetEntityVelocity(entity)
	return _in(0xc14c9b6b, entity, _r, _rv)
end

--- Gets the current game timer in milliseconds.
-- @return The game time.
function Global.GetGameTimer()
	return _in(0xa4ea0691, _r, _rl)
end

--- This native converts the passed string to a hash.
function Global.GetHashKey(model)
	return _in(0x98eff6f1, _ts(model), _r, _ri)
end

function Global.GetHostId()
	return _in(0x5f70f5a3, _r, _s)
end

function Global.GetInstanceId()
	return _in(0x9f1c4383, _r, _ri)
end

function Global.GetInvokingResource()
	return _in(0x4d52fe5b, _r, _s)
end

function Global.GetIsVehicleEngineRunning(vehicle)
	return _in(0x7dc6d022, vehicle, _r)
end

function Global.GetIsVehiclePrimaryColourCustom(vehicle)
	return _in(0xd7ec8760, vehicle, _r)
end

function Global.GetIsVehicleSecondaryColourCustom(vehicle)
	return _in(0x288ad228, vehicle, _r)
end

function Global.GetNumPlayerIdentifiers(playerSrc)
	return _in(0xff7f66ab, _ts(playerSrc), _r, _ri)
end

function Global.GetNumPlayerIndices()
	return _in(0x63d13184, _r, _ri)
end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
-- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
-- @param resourceName The resource name.
-- @param metadataKey The key to look up in the resource manifest.
function Global.GetNumResourceMetadata(resourceName, metadataKey)
	return _in(0x776e864, _ts(resourceName), _ts(metadataKey), _r, _ri)
end

function Global.GetNumResources()
	return _in(0x863f27b, _r, _ri)
end

function Global.GetPasswordHash(password)
	return _in(0x23473ea4, _ts(password), _r, _s)
end

function Global.GetPedArmour(ped)
	return _in(0x2ce311a7, ped, _r, _ri)
end

function Global.GetPedCauseOfDeath(ped)
	return _in(0x63458c27, ped, _r, _ri)
end

function Global.GetPedDesiredHeading(ped)
	return _in(0xc182f76e, ped, _r, _rf)
end

function Global.GetPedMaxHealth(ped)
	return _in(0xa45b6c8d, ped, _r, _ri)
end

function Global.GetPlayerEndpoint(playerSrc)
	return _in(0xfee404f9, _ts(playerSrc), _r, _s)
end

function Global.GetPlayerFromIndex(index)
	return _in(0xc8a9ce08, index, _r, _s)
end

function Global.GetPlayerGuid(playerSrc)
	return _in(0xe52d9680, _ts(playerSrc), _r, _s)
end

function Global.GetPlayerIdentifier(playerSrc, identifier)
	return _in(0x7302dbcf, _ts(playerSrc), identifier, _r, _s)
end

function Global.GetPlayerLastMsg(playerSrc)
	return _in(0x427e8e6a, _ts(playerSrc), _r, _ri)
end

function Global.GetPlayerName(playerSrc)
	return _in(0x406b4b20, _ts(playerSrc), _r, _s)
end

function Global.GetPlayerPed(playerSrc)
	return _in(0x6e31e993, _ts(playerSrc), _r, _ri)
end

function Global.GetPlayerPing(playerSrc)
	return _in(0xff1290d4, _ts(playerSrc), _r, _ri)
end

--- Returns all commands that are registered in the command system.
-- The data returned adheres to the following layout:
-- ```
-- [
-- {
-- "name": "cmdlist"
-- },
-- {
-- "name": "command1"
-- }
-- ]
-- ```
-- @return An object containing registered commands.
function Global.GetRegisteredCommands()
	return msgpack.unpack(_in(0xd4bef069, _r, _ro))
end

function Global.GetResourceByFindIndex(findIndex)
	return _in(0x387246b7, findIndex, _r, _s)
end

function Global.GetResourceKvpFloat(key)
	return _in(0x35bdceea, _ts(key), _r, _rf)
end

function Global.GetResourceKvpInt(key)
	return _in(0x557b586a, _ts(key), _r, _ri)
end

function Global.GetResourceKvpString(key)
	return _in(0x5240da5a, _ts(key), _r, _s)
end

--- Gets the metadata value at a specified key/index from a resource's manifest.
-- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
-- @param resourceName The resource name.
-- @param metadataKey The key in the resource manifest.
-- @param index The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].
function Global.GetResourceMetadata(resourceName, metadataKey, index)
	return _in(0x964bab1d, _ts(resourceName), _ts(metadataKey), index, _r, _s)
end

--- Returns the physical on-disk path of the specified resource.
-- @param resourceName The name of the resource.
-- @return The resource directory name, possibly without trailing slash.
function Global.GetResourcePath(resourceName)
	return _in(0x61dcf017, _ts(resourceName), _r, _s)
end

--- Returns the current state of the specified resource.
-- @param resourceName The name of the resource.
-- @return The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function Global.GetResourceState(resourceName)
	return _in(0x4039b485, _ts(resourceName), _r, _s)
end

--- Returns a hash of selected ped weapon.
-- @param ped The target ped.
-- @return The weapon hash.
function Global.GetSelectedPedWeapon(ped)
	return _in(0xd240123e, ped, _r, _ri)
end

function Global.GetVehicleBodyHealth(vehicle)
	return _in(0x2b2fcc28, vehicle, _r, _rf)
end

function Global.GetVehicleColours(vehicle)
	return _in(0x40d82d88, vehicle, _i, _i)
end

function Global.GetVehicleCustomPrimaryColour(vehicle)
	return _in(0x1c2b9fef, vehicle, _i, _i, _i)
end

function Global.GetVehicleCustomSecondaryColour(vehicle)
	return _in(0x3ff247a2, vehicle, _i, _i, _i)
end

function Global.GetVehicleDashboardColour(vehicle, color)
	return _in(0xa0dbd08d, vehicle, _ii(color) --[[ may be optional ]])
end

function Global.GetVehicleDirtLevel(vehicle)
	return _in(0xfd15c065, vehicle, _r, _rf)
end

--- enum VehicleLockStatus = {
-- None = 0,
-- Unlocked = 1,
-- Locked = 2,
-- LockedForPlayer = 3,
-- StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
-- CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
-- CanBeBrokenIntoPersist = 8, -- Can be broken into persist
-- CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
-- }
function Global.GetVehicleDoorLockStatus(vehicle)
	return _in(0xd72cef2, vehicle, _r, _ri)
end

function Global.GetVehicleDoorStatus(vehicle)
	return _in(0x6e35c49c, vehicle, _r, _ri)
end

--- Currently it only works when set to "all players".
function Global.GetVehicleDoorsLockedForPlayer(vehicle)
	return _in(0x1dc50247, vehicle, _r, _ri)
end

function Global.GetVehicleEngineHealth(vehicle)
	return _in(0x8880038a, vehicle, _r, _rf)
end

function Global.GetVehicleExtraColours(vehicle)
	return _in(0x80e4659b, vehicle, _i, _i)
end

function Global.GetVehicleHandbrake(vehicle)
	return _in(0x483b013c, vehicle, _r)
end

function Global.GetVehicleHeadlightsColour(vehicle)
	return _in(0xd7147656, vehicle, _r, _ri)
end

function Global.GetVehicleInteriorColour(vehicle, color)
	return _in(0xccff3b6e, vehicle, _ii(color) --[[ may be optional ]])
end

function Global.GetVehicleLightsState(vehicle)
	return _in(0x7c278621, vehicle, _i --[[ actually bool ]], _i --[[ actually bool ]], _r)
end

function Global.GetVehicleLivery(vehicle)
	return _in(0xec82a51d, vehicle, _r, _ri)
end

function Global.GetVehicleNumberPlateText(vehicle)
	return _in(0xe8522d58, vehicle, _r, _s)
end

function Global.GetVehicleNumberPlateTextIndex(vehicle)
	return _in(0x499747b6, vehicle, _r, _ri)
end

--- Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
-- @param ped The target ped
-- @param lastVehicle False = CurrentVehicle, True = LastVehicle
-- @return The vehicle id. Returns 0 if the ped is/was not in a vehicle.
function Global.GetVehiclePedIsIn(ped, lastVehicle)
	return _in(0xafe92319, ped, lastVehicle, _r, _ri)
end

function Global.GetVehiclePetrolTankHealth(vehicle)
	return _in(0xe41595ce, vehicle, _r, _rf)
end

function Global.GetVehicleRadioStationIndex(vehicle)
	return _in(0x57037960, vehicle, _r, _ri)
end

function Global.GetVehicleRoofLivery(vehicle)
	return _in(0x872cf42, vehicle, _r, _ri)
end

function Global.GetVehicleTyreSmokeColor(vehicle)
	return _in(0x75280015, vehicle, _i, _i, _i)
end

function Global.GetVehicleWheelType(vehicle)
	return _in(0xda58d7ae, vehicle, _r, _ri)
end

function Global.GetVehicleWindowTint(vehicle)
	return _in(0x13d53892, vehicle, _r, _ri)
end

function Global.GiveWeaponComponentToPed(ped, weaponHash, componentHash)
	return _in(0x3e1e286d, ped, _ch(weaponHash), _ch(componentHash))
end

--- isHidden - ????
-- All weapon names (add to the list if something is missing), use GAMEPLAY::GET_HASH_KEY((char *)weaponNames[i]) to get get the hash:
-- static LPCSTR weaponNames[] = {
-- "WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB",
-- "WEAPON_CROWBAR", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50",
-- "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE",
-- "WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_PUMPSHOTGUN",
-- "WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_STUNGUN", "WEAPON_SNIPERRIFLE",
-- "WEAPON_HEAVYSNIPER", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN",
-- "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV",
-- "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_FLARE", "WEAPON_SNSPISTOL", "WEAPON_SPECIALCARBINE",
-- "WEAPON_HEAVYPISTOL", "WEAPON_BULLPUPRIFLE", "WEAPON_HOMINGLAUNCHER", "WEAPON_PROXMINE", "WEAPON_SNOWBALL",
-- "WEAPON_VINTAGEPISTOL", "WEAPON_DAGGER", "WEAPON_FIREWORK", "WEAPON_MUSKET", "WEAPON_MARKSMANRIFLE",
-- "WEAPON_HEAVYSHOTGUN", "WEAPON_GUSENBERG", "WEAPON_HATCHET", "WEAPON_RAILGUN", "WEAPON_COMBATPDW",
-- "WEAPON_KNUCKLE", "WEAPON_MARKSMANPISTOL", "WEAPON_FLASHLIGHT", "WEAPON_MACHETE", "WEAPON_MACHINEPISTOL",
-- "WEAPON_SWITCHBLADE", "WEAPON_REVOLVER", "WEAPON_COMPACTRIFLE", "WEAPON_DBSHOTGUN", "WEAPON_FLAREGUN",
-- "WEAPON_AUTOSHOTGUN", "WEAPON_BATTLEAXE", "WEAPON_COMPACTLAUNCHER", "WEAPON_MINISMG", "WEAPON_PIPEBOMB",
-- "WEAPON_POOLCUE", "WEAPON_SWEEPER", "WEAPON_WRENCH"
-- };
-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Translation table:
-- pastebin.com/a39K8Nz8
function Global.GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, equipNow)
	return _in(0xc4d88a85, ped, _ch(weaponHash), ammoCount, isHidden, equipNow)
end

function Global.HasEntityBeenMarkedAsNoLongerNeeded(vehicle)
	return _in(0x9c9a3be0, vehicle, _r)
end

function Global.HasVehicleBeenOwnedByPlayer(vehicle)
	return _in(0xe4e83a5b, vehicle, _r)
end

function Global.InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength)
	return _in(0xe3551879, _ts(referenceIdentity), _ts(argsSerialized), argsLength, _ii(retvalLength) --[[ may be optional ]], _r, _s)
end

function Global.IsAceAllowed(object)
	return _in(0x7ebb9929, _ts(object), _r)
end

--- Gets whether or not this is the CitizenFX server.
-- @return A boolean value.
function Global.IsDuplicityVersion()
	return _in(0xcf24c52e, _r)
end

function Global.IsPlayerAceAllowed(playerSrc, object)
	return _in(0xdedae23d, _ts(playerSrc), _ts(object), _r)
end

--- Requests whether or not the commerce data for the specified player has loaded.
-- @param playerSrc The player handle
-- @return A boolean.
function Global.IsPlayerCommerceInfoLoaded(playerSrc)
	return _in(0xbefe93f4, _ts(playerSrc), _r)
end

--- Requests whether or not the commerce data for the specified player has loaded from Tebex.
-- @param playerSrc The player handle
-- @return A boolean.
function Global.IsPlayerCommerceInfoLoadedExt(playerSrc)
	return _in(0x1d14f4fe, _ts(playerSrc), _r)
end

function Global.IsPrincipalAceAllowed(principal, object)
	return _in(0x37cf52ce, _ts(principal), _ts(object), _r)
end

function Global.IsVehicleEngineStarting(vehicle)
	return _in(0xbb340d04, vehicle, _r)
end

function Global.IsVehicleSirenOn(vehicle)
	return _in(0x25eb5873, vehicle, _r)
end

function Global.IsVehicleTyreBurst(vehicle, wheelID, completely)
	return _in(0x48c80210, vehicle, wheelID, completely, _r)
end

--- Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
-- @param playerSrc The player handle
function Global.LoadPlayerCommerceData(playerSrc)
	return _in(0xa8f63eab, _ts(playerSrc))
end

--- Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
-- @param playerSrc The player handle
function Global.LoadPlayerCommerceDataExt(playerSrc)
	return _in(0x7995539e, _ts(playerSrc))
end

--- Reads the contents of a text file in a specified resource.
-- If executed on the client, this file has to be included in `files` in the resource manifest.
-- Example: `local data = LoadResourceFile("devtools", "data.json")`
-- @param resourceName The resource name.
-- @param fileName The file in the resource.
-- @return The file contents
function Global.LoadResourceFile(resourceName, fileName)
	return _in(0x76a9ee1f, _ts(resourceName), _ts(fileName), _r, _s)
end

--- Create a permanent voice channel.
-- @param id ID of the channel.
function Global.MumbleCreateChannel(id)
	return _in(0x262663c5, id)
end

function Global.NetworkGetEntityFromNetworkId(netId)
	return _in(0x5b912c3f, netId, _r, _ri)
end

--- Returns the owner ID of the specified entity.
-- @param entity The entity to get the owner for.
-- @return On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function Global.NetworkGetEntityOwner(entity)
	return _in(0x526fee31, entity, _r, _ri)
end

function Global.NetworkGetNetworkIdFromEntity(entity)
	return _in(0x9e35dab6, entity, _r, _ri)
end

function Global.PerformHttpRequestInternal(requestData, requestDataLength)
	return _in(0x8e8cc653, _ts(requestData), requestDataLength, _r, _ri)
end

--- Scope entry for profiler.
-- @param scopeName Scope name.
function Global.ProfilerEnterScope(scopeName)
	return _in(0xc795a4a9, _ts(scopeName))
end

--- Scope exit for profiler.
function Global.ProfilerExitScope()
	return _in(0xb39ca35c)
end

--- Returns true if the profiler is active.
-- @return True or false.
function Global.ProfilerIsRecording()
	return _in(0xf8b7d7bb, _r)
end

--- Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
-- Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).
-- The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
-- **Example result**:
-- ![](https://i.imgur.com/TaCnG09.png)
-- @param commandName The command you want to register.
-- @param handler A handler function that gets called whenever the command is executed.
-- @param restricted If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
function Global.RegisterCommand(commandName, handler, restricted)
	return _in(0x5fa79b0f, _ts(commandName), _mfr(handler), restricted)
end

--- Registers a listener for console output messages.
-- @param listener A function of `(channel: string, message: string) => void`. The message might contain `\n`.
function Global.RegisterConsoleListener(listener)
	return _in(0x281b5448, _mfr(listener))
end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
-- @param eventName An event name, or "\*" to disable HLL event filtering for this resource.
function Global.RegisterResourceAsEventHandler(eventName)
	return _in(0xd233a168, _ts(eventName))
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
-- @param resourceName The resource to add the asset to.
-- @param fileName A file name in the resource.
-- @return A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
function Global.RegisterResourceAsset(resourceName, fileName)
	return _in(0x9862b266, _ts(resourceName), _ts(fileName), _r, _s)
end

--- Registers a build task factory for resources.
-- The function should return an object (msgpack map) with the following fields:
-- ```
-- {
-- // returns whether the specific resource should be built
-- shouldBuild = func(resourceName: string): bool,
-- // asynchronously start building the specific resource.
-- // call cb when completed
-- build = func(resourceName: string, cb: func(success: bool, status: string): void): void
-- }
-- ```
-- @param factoryId The identifier for the build task.
-- @param factoryFn The factory function.
function Global.RegisterResourceBuildTaskFactory(factoryId, factoryFn)
	return _in(0x285b43ca, _ts(factoryId), _mfr(factoryFn))
end

--- setting the last params to false it does that same so I would suggest its not a toggle
function Global.RemoveAllPedWeapons(ped, p1)
	return _in(0xa44ce817, ped, p1)
end

--- In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.
-- E.g.:
-- Ped pped = PLAYER::PLAYER_PED_ID();
-- Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped);
-- Blip b = UI::ADD_BLIP_FOR_ENTITY(v);
-- works fine.
-- But later attempting to delete it with:
-- Blip b = UI::GET_BLIP_FROM_ENTITY(v);
-- if (UI::DOES_BLIP_EXIST(b)) UI::REMOVE_BLIP(&b);
-- doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).
-- Thus for me, UI::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear.
-- -------------
-- Passing the address of the variable instead of the value works for me.
-- e.g.
-- int blip = UI::ADD_BLIP_FOR_ENTITY(ped);
-- UI::REMOVE_BLIP(&blip);
-- Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.
-- --
-- It crashes my game.
function Global.RemoveBlip(blip)
	return _in(0xd8c3c1cd, _ii(blip) --[[ may be optional ]])
end

function Global.RemoveWeaponComponentFromPed(ped, weaponHash, componentHash)
	return _in(0x412aa00d, ped, _ch(weaponHash), _ch(componentHash))
end

--- This native removes a specified weapon from your selected ped.
-- Weapon Hashes: pastebin.com/0wwDZgkF
-- Example:
-- C#:
-- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
-- C++:
-- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
-- The code above removes the knife from the player.
function Global.RemoveWeaponFromPed(ped, weaponHash)
	return _in(0x9c37f220, ped, _ch(weaponHash))
end

--- Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
-- will open the browser prompting further purchase details.
-- @param playerSrc The player handle
-- @param skuId The ID of the SKU.
function Global.RequestPlayerCommerceSession(playerSrc, skuId)
	return _in(0x96f93cce, _ts(playerSrc), skuId)
end

--- Writes the specified data to a file in the specified resource.
-- Using a length of `-1` will automatically detect the length assuming the data is a C string.
-- @param resourceName The name of the resource.
-- @param fileName The name of the file.
-- @param data The data to write to the file.
-- @param dataLength The length of the written data.
-- @return A value indicating if the write succeeded.
function Global.SaveResourceFile(resourceName, fileName, data, dataLength)
	return _in(0xa09e7e7b, _ts(resourceName), _ts(fileName), _ts(data), dataLength, _r)
end

--- Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
-- @param resourceName The resource to tick.
function Global.ScheduleResourceTick(resourceName)
	return _in(0xb88a73ad, _ts(resourceName))
end

--- <!--
-- _loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
-- -->
-- Sets the displayed sprite for a specific blip.
-- There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
-- @param blip The blip to change.
-- @param spriteId The sprite ID to set.
function Global.SetBlipSprite(blip, spriteId)
	return _in(0x8dbbb0b9, blip, spriteId)
end

function Global.SetConvar(varName, value)
	return _in(0x341b16d2, _ts(varName), _ts(value))
end

function Global.SetConvarReplicated(varName, value)
	return _in(0xf292858c, _ts(varName), _ts(value))
end

function Global.SetConvarServerInfo(varName, value)
	return _in(0x9338d547, _ts(varName), _ts(value))
end

function Global.SetCurrentPedWeapon(ped, weaponHash, equipNow)
	return _in(0xb8278882, ped, _ch(weaponHash), equipNow)
end

--- ```
-- p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.
-- Often ends with 1, 0, 0, 1); in the scripts. It works.
-- Axis - Invert Axis Flags
-- ```
-- Sets an entity's coordinates in world space.
-- @param entity The entity to change coordinates for.
-- @param xPos The x coordinate.
-- @param yPos The y coordinate.
-- @param zPos The z coordinate.
-- @param xAxis Whether to invert x axis.
-- @param yAxis Whether to invert y axis.
-- @param zAxis Whether to invert z axis.
-- @param clearArea Whether to clear other entities in area around entity.
function Global.SetEntityCoords(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
	return _in(0xdf70b41b, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
end

--- Set the heading of an entity in degrees also known as "Yaw".
-- @param entity The entity to set the heading for.
-- @param heading The heading in degrees.
function Global.SetEntityHeading(entity, heading)
	return _in(0xe0ff064d, entity, heading)
end

--- rotationOrder refers to the order yaw pitch roll is applied, see [GET_ENTITY_ROTATION](#_0xAFBD61CC738D9EB9)
-- p5 is usually set as true
function Global.SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5)
	return _in(0xa345efe, entity, pitch, roll, yaw, rotationOrder, p5)
end

--- Note that the third parameter(denoted as z) is "up and down" with positive ment.
function Global.SetEntityVelocity(entity, x, y, z)
	return _in(0xff5a1988, entity, x, y, z)
end

function Global.SetGameType(gametypeName)
	return _in(0xf90b7469, _ts(gametypeName))
end

function Global.SetHttpHandler(handler)
	return _in(0xf5c6330c, _mfr(handler))
end

function Global.SetMapName(mapName)
	return _in(0xb7ba82dc, _ts(mapName))
end

--- NativeDB Added Parameter 4: BOOL p3
function Global.SetPedAmmo(ped, weaponHash, ammo)
	return _in(0xbf90df1a, ped, _ch(weaponHash), ammo)
end

--- Sets the armor of the specified ped.
-- ped: The Ped to set the armor of.
-- amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
function Global.SetPedArmour(ped, amount)
	return _in(0x4e3a0cc4, ped, amount)
end

function Global.SetPedCanRagdoll(ped, toggle)
	return _in(0xcf1384c4, ped, toggle)
end

--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
-- ### MP Freemode list of components
-- **0**: Face
-- **1**: Mask
-- **2**: Hair
-- **3**: Torso
-- **4**: Leg
-- **5**: Parachute / bag
-- **6**: Shoes
-- **7**: Accessory
-- **8**: Undershirt
-- **9**: Kevlar
-- **10**: Badge
-- **11**: Torso 2
-- ### Related and useful natives
-- [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#_0x27561561732A7842)
-- [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#_0x8F7156A3142A6BAD)
-- [List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
-- @param ped The ped handle.
-- @param componentId The component that you want to set.
-- @param drawableId The drawable id that is going to be set.
-- @param textureId The texture id of the drawable.
-- @param paletteId 0 to 3.
function Global.SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId)
	return _in(0xd4f7b05c, ped, componentId, drawableId, textureId, paletteId)
end

--- Research help : pastebin.com/fPL1cSwB
-- New items added with underscore as first char
-- -----------------------------------------------------------------------
-- enum PedConfigFlags
-- {
-- PED_FLAG_CAN_FLY_THRU_WINDSCREEN = 32,
-- PED_FLAG_DIES_BY_RAGDOLL = 33,
-- _PED_FLAG_PUT_ON_MOTORCYCLE_HELMET = 35,
-- PED_FLAG_NO_COLLISION = 52,
-- _PED_FLAG_IS_SHOOTING = 58,
-- _PED_FLAG_IS_ON_GROUND = 60,
-- PED_FLAG_NO_COLLIDE = 62,
-- PED_FLAG_DEAD = 71,
-- PED_FLAG_IS_SNIPER_SCOPE_ACTIVE = 72,
-- PED_FLAG_SUPER_DEAD = 73,
-- _PED_FLAG_IS_IN_AIR = 76,
-- PED_FLAG_IS_AIMING = 78,
-- PED_FLAG_DRUNK = 100,
-- _PED_FLAG_IS_NOT_RAGDOLL_AND_NOT_PLAYING_ANIM = 104,
-- PED_FLAG_NO_PLAYER_MELEE = 122,
-- PED_FLAG_NM_MESSAGE_466 = 125,
-- PED_FLAG_INJURED_LIMP = 166,
-- PED_FLAG_INJURED_LIMP_2 = 170,
-- _PED_FLAG_DISABLE_SHUFFLING_TO_DRIVER_SEAT = 184,
-- PED_FLAG_INJURED_DOWN = 187,
-- PED_FLAG_SHRINK = 223,
-- PED_FLAG_MELEE_COMBAT = 224,
-- _PED_FLAG_IS_ON_STAIRS = 253,
-- _PED_FLAG_HAS_ONE_LEG_ON_GROUND = 276,
-- PED_FLAG_NO_WRITHE = 281,
-- PED_FLAG_FREEZE = 292,
-- PED_FLAG_IS_STILL = 301,
-- PED_FLAG_NO_PED_MELEE = 314,
-- _PED_SWITCHING_WEAPON = 331,
-- PED_FLAG_ALPHA = 410,
-- _PED_FLAG_DISABLE_STARTING_VEH_ENGINE = 429,
-- };
-- (*) When flagId is set to 33 and the bool value to true, peds will die by starting ragdoll, so you should set this flag to false when you resurrect a ped.
-- When flagId is set to 62 and the boolvalue to false this happens: Ped is taken out of vehicle and can't get back in when jacking their empty vehicle. If in a plane it falls from the sky and crashes. Sometimes peds vehicle continue to drive the route without its driver who's running after.
-- (*)
-- JUMPING CHANGES  60,61,104 TO FALSE
-- BEING ON WATER CHANGES 60,61 TO FALSE AND 65,66,168 TO TRUE
-- FALLING CHANGES 60,61,104,276 TO FALSE AND TO 76 TRUE
-- DYING CHANGES 60,61,104,276* TO FALSE AND (NONE) TO TRUE
-- DYING MAKES 60,61,104 TO FALSE
-- BEING IN A CAR CHANGES 60,79,104 TO FALSE AND 62 TO TRUE
-- (*)Maximum value for flagId is 0x1AA (426) in b944.
-- ID 0xF0 (240) appears to be a special flag which is handled different compared to the others IDs.
function Global.SetPedConfigFlag(ped, flagId, value)
	return _in(0x9cfbe10d, ped, flagId, value)
end

--- Sets Ped Default Clothes
function Global.SetPedDefaultComponentVariation(ped)
	return _in(0xc866a984, ped)
end

--- Used for freemode (online) characters.
-- For some reason, the scripts use a rounded float for the index.
function Global.SetPedEyeColor(ped, index)
	return _in(0xec09db1b, ped, index)
end

--- Sets the various freemode face features, e.g. nose length, chin shape. Scale ranges from -1.0 to 1.0.
-- Index can be 0
-- Enum Face_Feature
-- Nose_Width
-- Nose_Peak_Hight
-- Nose_Peak_Lenght
-- Nose_Bone_High
-- Nose_Peak_Lowering
-- Nose_Bone_Twist
-- EyeBrown_High
-- EyeBrown_Forward
-- Cheeks_Bone_High
-- Cheeks_Bone_Width
-- Cheeks_Width
-- Eyes_Openning
-- Lips_Thickness
-- Jaw_Bone_Width 'Bone size to sides
-- Jaw_Bone_Back_Lenght 'Bone size to back
-- Chimp_Bone_Lowering 'Go Down
-- Chimp_Bone_Lenght 'Go forward
-- Chimp_Bone_Width
-- Chimp_Hole
-- Neck_Thikness
-- End Enum
function Global.SetPedFaceFeature(ped, index, scale)
	return _in(0x6c8d4458, ped, index, scale)
end

--- Used for freemode (online) characters.
function Global.SetPedHairColor(ped, colorID, highlightColorID)
	return _in(0xbb43f090, ped, colorID, highlightColorID)
end

--- The "shape" parameters control the shape of the ped's face. The "skin" parameters control the skin tone. ShapeMix and skinMix control how much the first and second IDs contribute,(typically mother and father.) ThirdMix overrides the others in favor of the third IDs. IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
-- The IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.
-- !!!Can someone add working example for this???
-- try this:
-- headBlendData headData;
-- _GET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), &headData);
-- SET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), headData.shapeFirst, headData.shapeSecond, headData.shapeThird, headData.skinFirst, headData.skinSecond
-- , headData.skinThird, headData.shapeMix, headData.skinMix, headData.skinThird, 0);
-- For more info please refer to this topic.
-- gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained
function Global.SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
	return _in(0x60746b88, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
end

--- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
-- overlayID       Part                  Index, to disable
-- 0               Blemishes             0 - 23, 255
-- 1               Facial Hair           0 - 28, 255
-- 2               Eyebrows              0 - 33, 255
-- 3               Ageing                0 - 14, 255
-- 4               Makeup                0 - 74, 255
-- 5               Blush                 0 - 6, 255
-- 6               Complexion            0 - 11, 255
-- 7               Sun Damage            0 - 10, 255
-- 8               Lipstick              0 - 9, 255
-- 9               Moles/Freckles        0 - 17, 255
-- 10              Chest Hair            0 - 16, 255
-- 11              Body Blemishes        0 - 11, 255
-- 12              Add Body Blemishes    0 - 1, 255
function Global.SetPedHeadOverlay(ped, overlayID, index, opacity)
	return _in(0xd28dba90, ped, overlayID, index, opacity)
end

--- Used for freemode (online) characters.
-- ColorType is 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
-- Called after SET_PED_HEAD_OVERLAY().
function Global.SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID)
	return _in(0x78935a27, ped, overlayID, colorType, colorID, secondColorID)
end

--- Ped: The ped to warp.
-- vehicle: The vehicle to warp the ped into.
-- Seat_Index: [-1 is driver seat, -2 first free passenger seat]
-- Moreinfo of Seat Index
-- DriverSeat = -1
-- Passenger = 0
-- Left Rear = 1
-- RightRear = 2
function Global.SetPedIntoVehicle(ped, vehicle, seatIndex)
	return _in(0x7500c79, ped, vehicle, seatIndex)
end

--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
-- ### MP Freemode list of props
-- **0**: Hat
-- **1**: Glass
-- **2**: Ear
-- **6**: Watch
-- **7**: Bracelet
-- ### Related and useful natives
-- [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47)
-- [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171)
-- [List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
-- @param ped The ped handle.
-- @param componentId The component that you want to set.
-- @param drawableId The drawable id that is going to be set.
-- @param textureId The texture id of the drawable.
-- @param attach Attached or not.
function Global.SetPedPropIndex(ped, componentId, drawableId, textureId, attach)
	return _in(0x829f2e2, ped, componentId, drawableId, textureId, attach)
end

--- p1 is always false in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
-- List of component/props ID:
-- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- ```
-- ```
-- NativeDB Parameter 1: int p1
function Global.SetPedRandomComponentVariation(ped, p1)
	return _in(0x4111ba46, ped, p1)
end

--- List of component/props ID
-- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
function Global.SetPedRandomProps(ped)
	return _in(0xe3318e0e, ped)
end

--- **Known values**
-- `PRF_PreventGoingIntoStillInVehicleState` = 236 _(fanatic2.c)_
function Global.SetPedResetFlag(ped, flagId, doReset)
	return _in(0xcff6ff66, ped, flagId, doReset)
end

--- p4/p5: Unusued in TU27
-- ### Ragdoll Types
-- **0**: CTaskNMRelax
-- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
-- **Else**: CTaskNMBalance
-- @param time1 Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
-- @param p4 :
-- @param p5 :
function Global.SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6)
	return _in(0x83cb5052, ped, time1, time2, ragdollType, p4, p5, p6)
end

--- Return variable is never used in R*'s scripts.
-- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.
-- x, y, and z are coordinates, most likely to where the ped will fall.
-- p7 is probably the force of the fall, but untested, so I left the variable name the same.
-- p8 to p13 are always 0f in R*'s scripts.
-- (Simplified) Example of the usage of the function from R*'s scripts:
-- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
function Global.SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13)
	return _in(0xfa12e286, ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13)
end

--- Flags used in the scripts: 0,4,16,24,32,56,60,64,128,134,256,260,384,512,640,768,896,900,952,1024,1280,2048,2560
-- Note to people who needs this with camera mods, etc.:
-- Flags(0, 4, 16, 24, 32, 56, 60, 64, 128, 134, 512, 640, 1024, 2048, 2560)
-- - Disables camera rotation as well.
-- Flags(256, 260, 384, 768, 896, 900, 952, 1280)
-- cameraRotation = flags & (1 << 8)
function Global.SetPlayerControl(player, bHasControl, flags)
	return _in(0xd17afcd8, player, bHasControl, flags)
end

--- Simply sets you as invincible (Health will not deplete).
-- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
-- *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);
function Global.SetPlayerInvincible(player, toggle)
	return _in(0xdfb9a2a2, player, toggle)
end

--- Set the model for a specific Player. Be aware that this will destroy the current Ped for the Player and create a new one, any
-- reference to the old ped should be reset (by using the GetPlayerPed native).
-- ```
-- Make sure to request the model first and wait until it has loaded.
-- ```
function Global.SetPlayerModel(player, model)
	return _in(0x774a4c54, player, _ch(model))
end

--- Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect
-- wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files
-- disableNoMission-  Disables When Off Mission- appears to always be false
function Global.SetPlayerWantedLevel(player, wantedLevel, disableNoMission)
	return _in(0xb7a0914b, player, wantedLevel, disableNoMission)
end

function Global.SetResourceKvp(key, value)
	return _in(0x21c7a35b, _ts(key), _ts(value))
end

function Global.SetResourceKvpFloat(key, value)
	return _in(0x9add2938, _ts(key), value)
end

function Global.SetResourceKvpInt(key, value)
	return _in(0x6a2b1e8, _ts(key), value)
end

function Global.SetVehicleAlarm(vehicle, state)
	return _in(0x24877d84, vehicle, state)
end

--- p2 often set to 1000.0 in the decompiled scripts.
function Global.SetVehicleBodyHealth(vehicle, value)
	return _in(0x920c2517, vehicle, value)
end

--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
-- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
-- @param vehicle The vehicle to modify.
-- @param colorCombination One of the default color values of the vehicle.
function Global.SetVehicleColourCombination(vehicle, colorCombination)
	return _in(0xa557aead, vehicle, colorCombination)
end

--- colorPrimary & colorSecondary are the paint index for the vehicle.
-- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
-- -------------------------------------------------------------------------
-- Use this to get the number of color indices: pastebin.com/RQEeqTSM
-- Note: minimum color index is 0, maximum color index is (numColorIndices - 1)
function Global.SetVehicleColours(vehicle, colorPrimary, colorSecondary)
	return _in(0x57f24253, vehicle, colorPrimary, colorSecondary)
end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
function Global.SetVehicleCustomPrimaryColour(vehicle, r, g, b)
	return _in(0x8df9f9bc, vehicle, r, g, b)
end

--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
function Global.SetVehicleCustomSecondaryColour(vehicle, r, g, b)
	return _in(0x9d77259e, vehicle, r, g, b)
end

--- You can't use values greater than 15.0
-- You can see why here: pastebin.com/Wbn34fGD
-- Also, R* does (float)(rand() % 15) to get a random dirt level when generating a vehicle.
function Global.SetVehicleDirtLevel(vehicle, dirtLevel)
	return _in(0x2b39128b, vehicle, dirtLevel)
end

--- doorIndex:
-- 0 = Front Right Door
-- 1 = Front Left Door
-- 2 = Back Right Door
-- 3 = Back Left Door
-- 4 = Hood
-- 5 = Trunk
-- Changed last paramater from CreateDoorObject To NoDoorOnTheFloor because when on false, the door object is created,and not created when on true...the former parameter name was counter intuitive...(by Calderon)
function Global.SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor)
	return _in(0x8147fea7, vehicle, doorIndex, deleteDoor)
end

--- 1
-- 2 - CARLOCK_LOCKED (locked)
-- 3
-- 4 - CARLOCK_LOCKED_PLAYER_INSIDE (can get in, can't leave)
-- (maybe, these are leftovers from GTA:VC)
-- 5
-- 6
-- 7
-- (source: GTA VC miss2 leak, matching constants for 0/2/4, testing)
-- They use 10 in am_mp_property_int, don't know what it does atm.
function Global.SetVehicleDoorsLocked(vehicle, doorLockStatus)
	return _in(0x4cdd35d0, vehicle, doorLockStatus)
end

--- Sets a vehicle's license plate text.  8 chars maximum.
-- Example:
-- Ped playerPed = PLAYER::PLAYER_PED_ID();
-- Vehicle veh = PED::GET_VEHICLE_PED_IS_USING(playerPed);
-- char *plateText = "KING";
-- VEHICLE::SET_VEHICLE_NUMBER_PLATE_TEXT(veh, plateText);
function Global.SetVehicleNumberPlateText(vehicle, plateText)
	return _in(0x400f9556, vehicle, _ts(plateText))
end

function Global.StartFindKvp(prefix)
	return _in(0xdd379006, _ts(prefix), _r, _ri)
end

function Global.StartResource(resourceName)
	return _in(0x29b440dc, _ts(resourceName), _r)
end

function Global.StopResource(resourceName)
	return _in(0x21783161, _ts(resourceName), _r)
end

--- Makes the specified ped attack the target ped.
-- p2 should be 0
-- p3 should be 16
function Global.TaskCombatPed(ped, targetPed, p2, p3)
	return _in(0xcb0d8932, ped, targetPed, p2, p3)
end

--- Example:
-- AI::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
-- Needs working example. Doesn't seem to do anything.
-- I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
-- I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
-- I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
function Global.TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern)
	return _in(0x2b84d1c4, driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, _ch(firingPattern))
end

--- speed 1.0 = walk, 2.0 = run
-- p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle
-- p6 is always 0
-- Usage of seat
-- -1 = driver
-- 0 = passenger
-- 1 = left back seat
-- 2 = right back seat
-- 3 = outside left
-- 4 = outside right
function Global.TaskEnterVehicle(ped, vehicle, timeout, seat, speed, flag, p6)
	return _in(0xb8689b4e, ped, vehicle, timeout, seat, speed, flag, p6)
end

function Global.TaskEveryoneLeaveVehicle(vehicle)
	return _in(0xc1971f30, vehicle)
end

--- This native will make the ped move straight to a coordinate.
-- @param ped The ped handle.
-- @param x The x coordinate.
-- @param y The y coordinate.
-- @param z The z coordinate.
-- @param speed The ped movement speed.
-- @param timeout \-1 , other values appear to break the ped movement.
-- @param targetHeading The heading you want the ped to be on x,y,z coord.
-- @param distanceToSlide The distance from x,y,z where the ped will start sliding.
function Global.TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide)
	return _in(0x80a9e7a7, ped, x, y, z, speed, timeout, targetHeading, distanceToSlide)
end

--- example from fm_mission_controller
-- AI::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
function Global.TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8)
	return _in(0xf91df93b, ped, x, y, z, speed, p5, p6, walkingStyle, p8)
end

--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
-- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
-- Example: AI::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
-- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
function Global.TaskGoToEntity(entity, target, duration, distance, speed, p5, p6)
	return _in(0x374827c2, entity, target, duration, distance, speed, p5, p6)
end

--- In the scripts, p3 was always -1.
-- p3 seems to be duration or timeout of turn animation.
-- Also facingPed can be 0 or -1 so ped will just raise hands up.
function Global.TaskHandsUp(ped, duration, facingPed, p3, p4)
	return _in(0x8dcc19c5, ped, duration, facingPed, p3, p4)
end

function Global.TaskLeaveAnyVehicle(ped, p1, p2)
	return _in(0xdbdd79fa, ped, p1, p2)
end

--- Flags from decompiled scripts:
-- 0 = normal exit and closes door.
-- 1 = normal exit and closes door.
-- 16 = teleports outside, door kept closed.
-- 64 = normal exit and closes door, maybe a bit slower animation than 0.
-- 256 = normal exit but does not close the door.
-- 4160 = ped is throwing himself out, even when the vehicle is still.
-- 262144 = ped moves to passenger seat first, then exits normally
-- Others to be tried out: 320, 512, 131072.
function Global.TaskLeaveVehicle(ped, vehicle, flags)
	return _in(0x7b1141c6, ped, vehicle, flags)
end

--- [Animations list](https://alexguirre.github.io/animations-list/)
-- ```
-- float blendInSpeed > normal speed is 8.0f
-- ----------------------
-- float blendOutSpeed > normal speed is 8.0f
-- ----------------------
-- int duration: time in millisecond
-- ----------------------
-- -1 _ _ _ _ _ _ _> Default (see flag)
-- 0 _ _ _ _ _ _ _ > Not play at all
-- Small value _ _ > Slow down animation speed
-- Other _ _ _ _ _ > freeze player control until specific time (ms) has
-- _ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be
-- _ _ _ _ _ _ _ _ _ controllable.)
-- int flag:
-- ----------------------
-- enum eAnimationFlags
-- {
-- ANIM_FLAG_NORMAL = 0,
-- ANIM_FLAG_REPEAT = 1,
-- ANIM_FLAG_STOP_LAST_FRAME = 2,
-- ANIM_FLAG_UPPERBODY = 16,
-- ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,
-- ANIM_FLAG_CANCELABLE = 120,
-- };
-- Odd number : loop infinitely
-- Even number : Freeze at last frame
-- Multiple of 4: Freeze at last frame but controllable
-- 01 to 15 > Full body
-- 10 to 31 > Upper body
-- 32 to 47 > Full body > Controllable
-- 48 to 63 > Upper body > Controllable
-- ...
-- 001 to 255 > Normal
-- 256 to 511 > Garbled
-- ...
-- playbackRate:
-- values are between 0.0 and 1.0
-- lockX:
-- 0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3
-- > 1 for mini@sprunk
-- lockY:
-- 0 in most cases
-- 1 for missfam5_yoga, missfra1mcs_2_crew_react
-- lockZ:
-- 0 for single player
-- Can be 1 but only for MP
-- ```
function Global.TaskPlayAnim(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
	return _in(0x5ab552c6, ped, _ts(animDictionary), _ts(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
end

--- It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
-- [Animations list](https://alexguirre.github.io/animations-list/)
-- @param ped The target ped
-- @param animDict Name of the animation dictionary
-- @param animName Name of the animation
-- @param posX Initial X position of the task
-- @param posY Initial Y position of the task
-- @param posZ Initial Z position of the task
-- @param rotX Initial X rotation of the task, doesn't seem to have any effect
-- @param rotY Initial Y rotation of the task, doesn't seem to have any effect
-- @param rotZ Initial Z rotation of the task
-- @param animEnterSpeed Adjust character speed to fully enter animation
-- @param animExitSpeed Adjust character speed to fully exit animation (useless `ClearPedTasksImmediately()` is called)
-- @param duration Time in milliseconds
-- @param animTime Value between 0.0 and 1.0, lets you start an animation from the given point
function Global.TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15)
	return _in(0x3ddeb0e6, ped, _ts(animDict), _ts(animName), posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15)
end

function Global.TaskReactAndFleePed(ped, fleeTarget)
	return _in(0x8a632bd8, ped, fleeTarget)
end

function Global.TaskShootAtCoord(ped, x, y, z, duration, firingPattern)
	return _in(0x601c22e3, ped, x, y, z, duration, _ch(firingPattern))
end

--- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
-- Entity aimedentity;
-- Player player = PLAYER::PLAYER_ID();
-- PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
-- //bg is an array of peds
-- AI::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, GAMEPLAY::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
-- in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
function Global.TaskShootAtEntity(entity, target, duration, firingPattern)
	return _in(0xac0631c9, entity, target, duration, _ch(firingPattern))
end

--- Seat Numbers
-- -------------------------------
-- Driver = -1
-- Any = -2
-- Left-Rear = 1
-- Right-Front = 0
-- Right-Rear = 2
-- Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)
function Global.TaskWarpPedIntoVehicle(ped, vehicle, seat)
	return _in(0x65d4a35d, ped, vehicle, seat)
end

function Global.TempBanPlayer(playerSrc, reason)
	return _in(0x1e35dbba, _ts(playerSrc), _ts(reason))
end

--- The backing function for TriggerClientEvent.
function Global.TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength)
	return _in(0x2f7a49e6, _ts(eventName), _ts(eventTarget), _ts(eventPayload), payloadLength)
end

--- The backing function for TriggerEvent.
function Global.TriggerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x91310870, _ts(eventName), _ts(eventPayload), payloadLength)
end

--- The backing function for TriggerLatentClientEvent.
function Global.TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps)
	return _in(0x70b35890, _ts(eventName), _ts(eventTarget), _ts(eventPayload), payloadLength, bps)
end

function Global.VerifyPasswordHash(password, hash)
	return _in(0x2e310acd, _ts(password), _ts(hash), _r)
end

--- Returns whether or not the currently executing event was canceled.
-- @return A boolean.
function Global.WasEventCanceled()
	return _in(0x58382a19, _r)
end

