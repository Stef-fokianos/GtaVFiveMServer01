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

function Global.AbortAnimScene(animScene, p1)
	return _in(0x718CF1328D20C2B3, animScene, p1)
end

function Global.Absf(value)
	return _in(0x134549B388167CBF, value, _r, _rf)
end

function Global.Absi(value)
	return _in(0x0C214D5B8A38C828, value, _r, _ri)
end

function Global.Acos(p0)
	return _in(0x586690F0176DC575, p0, _r, _rf)
end

function Global.ActivateDamageTrackerOnNetworkId(netID, toggle)
	return _in(0xD45B1FFCCD52FF19, netID, toggle)
end

function Global.ActivateInteriorEntitySet(p0, p1, p2)
	return _in(0x174D0AAB11CED739, p0, p1, p2)
end

function Global.ActivatePhysics(entity)
	return _in(0x710311ADF0E20730, entity)
end

function Global.AddArmourToPed(ped, amount)
	return _in(0x5BA652A0CD14DF2F, ped, amount)
end

function Global.AddAttributePoints(p0, p1, p2)
	return _in(0x75415EE0CB583760, p0, p1, p2)
end

function Global.AddCamSplineNode(camera, x, y, z, xRot, yRot, zRot, length, p8, p9)
	return _in(0xF1F57F9D230F9CD1, camera, x, y, z, xRot, yRot, zRot, length, p8, p9)
end

function Global.AddCoverBlockingArea(playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9)
	return _in(0x45C597097DD7CB81, playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9)
end

function Global.AddCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xD5C12A75C7B9497F, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.AddCustomFormationLocation(p0, p1, p2, p3, p4)
	return _in(0x4E23CD07BD161E06, p0, p1, p2, p3, p4)
end

function Global.AddDecal(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21)
	return _in(0x57CB267624EF85C0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, _r, _ri)
end

function Global.AddEntityToAudioMixGroup(entity, groupName, p2)
	return _in(0x153973AB99FE8980, entity, _ts(groupName), p2)
end

function Global.AddExplosion(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x7D6F58F69DA92530, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.AddExplosionWithUserVfx(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake)
	return _in(0x53BA259F3A67A99E, x, y, z, explosionType, _ch(explosionFx), damageScale, isAudible, isInvisible, cameraShake)
end

function Global.AddFormationLocation(p0, p1, p2, p3)
	return _in(0xB05945C1E9E60D91, p0, p1, p2, p3, _r, _ri)
end

--- Loads a minimap overlay from a GFx file in the current resource.
-- @param name The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
-- @return A minimap overlay ID.
function Global.AddMinimapOverlay(name)
	return _in(0x4afd2499, _ts(name), _r, _ri)
end

function Global.AddNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xFCD5C8E06E502F5A, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.AddNavmeshRequiredRegion(x, y, radius)
	return _in(0x387EAD7EE42F6685, x, y, radius)
end

function Global.AddOwnedExplosion(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
	return _in(0xD84A917A64D4D016, ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
end

function Global.AddPatrolRouteLink(p0, p1)
	return _in(0x23083260DEC3A551, p0, p1)
end

function Global.AddPatrolRouteNode(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x8EDF950167586B7C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.AddPedToConversation(index, ped, p2)
	return _in(0x95D9F4BC443956E7, index, ped, _ts(p2))
end

function Global.AddPedToFlock(p0, ped)
	return _in(0x933E5D31A7D13069, p0, ped)
end

function Global.AddPetrolTrailDecalInfo(x, y, z, p3)
	return _in(0x73354FB6D03D2E8A, x, y, z, p3)
end

function Global.AddPointToGpsMultiRoute(p0, p1, p2, p3)
	return _in(0x64C59DD6834FA942, p0, p1, p2, p3)
end

function Global.AddPopMultiplierArea(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9)
	return _in(0x5EBDA1A3B8CB5EF7, x1, y1, z1, x2, y2, z2, p6, p7, p8, p9, _r, _ri)
end

function Global.AddRelationshipGroup(name, groupHash)
	return _in(0xF372BC22FCB88606, _ts(name), _ii(groupHash) --[[ may be optional ]], _r, _ri)
end

--- Experimental natives, please do not use in a live environment.
-- @param origTxd 
-- @param origTxn 
-- @param newTxd 
-- @param newTxn 
function Global.AddReplaceTexture(origTxd, origTxn, newTxd, newTxn)
	return _in(0xa66f8f75, _ts(origTxd), _ts(origTxn), _ts(newTxd), _ts(newTxn))
end

function Global.AddRope(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
	return _in(0xE832D760399EB220, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, _r, _ri)
end

function Global.AddScenarioBlockingArea(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x1B5C85C612E5256E, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.AddShockingEventAtPosition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xD9F8455409B525E9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri)
end

function Global.AddShockingEventForEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x7FD8F3BE76F89422, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri)
end

function Global.AddSpeedZoneForCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x4C221BAC54D735C3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri)
end

function Global.AddTacticalAnalysisPoint(p0, p1, p2, p3)
	return _in(0xE4EE55E63FA9AF45, p0, p1, p2, p3)
end

function Global.AddTextEntry(entryKey, entryText)
	return _in(0x32ca01c3, _ts(entryKey), _ts(entryText))
end

function Global.AddTextEntryByHash(entryKey, entryText)
	return _in(0x289da860, _ch(entryKey), _ts(entryText))
end

function Global.AddToClockTime(hours, minutes, seconds)
	return _in(0xAB7C251C7701D336, hours, minutes, seconds)
end

function Global.AddToItemset(itemset, p1)
	return _in(0xABE74510883C7950, itemset, p1, _r)
end

function Global.AdvanceClockTimeTo(hour, minute, second)
	return _in(0x0184750AE88D0B1D, hour, minute, second)
end

function Global.AllowPauseMenuWhenDeadThisFrame()
	return _in(0x30996422DF1EE561)
end

function Global.AllowSonarBlips(p0)
	return _in(0x6E6E64788C07D2E0, p0)
end

function Global.AnimateGameplayCamZoom(p0, distance)
	return _in(0x2126C740A4AC370B, p0, distance)
end

function Global.AnimpostfxIsRunning(effectName)
	return _in(0x4A123E85D7C4CA0B, _ts(effectName), _r)
end

function Global.AnimpostfxPlay(effectName)
	return _in(0x4102732DF6B4005F, _ts(effectName))
end

function Global.AnimpostfxStop(effectName)
	return _in(0xB4FD7446BAB2F394, _ts(effectName))
end

function Global.AnimpostfxStopAll()
	return _in(0x66560A0D4C64FD21)
end

function Global.ApplyDamageToPed(p0, p1, p2, p3, p4)
	return _in(0x697157CED63F18D4, p0, p1, p2, p3, p4)
end

function Global.ApplyForceToEntity(entity, forceFlags, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
	return _in(0xF15E8F5D333F09C4, entity, forceFlags, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
end

function Global.ApplyForceToEntityCenterOfMass(entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8)
	return _in(0x31DA7CEC5334DB37, entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8)
end

function Global.ApplyPedBloodSpecific(ped, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xEF0D582CBF2D9B0F, ped, p1, p2, p3, p4, p5, p6, p7, _ii(p8) --[[ may be optional ]])
end

function Global.ApplyPedDamagePack(ped, damagePack, damage, mult)
	return _in(0x46DF918788CB093F, ped, _ts(damagePack), damage, mult)
end

function Global.AreAnyVehicleSeatsFree(vehicle)
	return _in(0xA0A424505A1B6429, vehicle, _r)
end

function Global.AreCoordsCollidingWithExterior(x, y, z)
	return _in(0xF291396B517E25B2, x, y, z, _r)
end

function Global.ArePathNodesLoadedInArea(x1, y1, x2, y2)
	return _in(0xF7B79A50B905A30D, x1, y1, x2, y2, _r)
end

function Global.AreStringsEqual(string1, string2)
	return _in(0xD3852F22AB713A1F, _ts(string1), _ts(string2), _r)
end

function Global.ArrayValueGetBoolean(arrayIndex)
	return _in(0xAB1231D2DE52F2D3, _i, arrayIndex, _r)
end

function Global.ArrayValueGetFloat(arrayIndex)
	return _in(0xA9D003CF419CB81E, _i, arrayIndex, _r, _rf)
end

function Global.ArrayValueGetInteger(arrayIndex)
	return _in(0x96DEA500B6EBBE53, _i, arrayIndex, _r, _ri)
end

function Global.ArrayValueGetObject(arrayIndex)
	return _in(0xA010655985853485, _i, arrayIndex, _r, _ri)
end

function Global.ArrayValueGetSize(arrayData)
	return _in(0x6A885BF69239E539, _ii(arrayData) --[[ may be optional ]], _r, _ri)
end

function Global.ArrayValueGetString(arrayIndex)
	return _in(0xB6790A8FF80F889F, _i, arrayIndex, _r, _s)
end

function Global.ArrayValueGetType(arrayIndex)
	return _in(0x151DAFE6B3B9888F, _i, arrayIndex, _r, _ri)
end

function Global.ArrayValueGetVector3(arrayIndex)
	return _in(0x850DA2750DA14E9A, _i, arrayIndex, _r, _rv)
end

function Global.Asin(p0)
	return _in(0x6E3C15D296C15583, p0, _r, _rf)
end

function Global.AssistedMovementIsRouteLoaded(route)
	return _in(0x60F9A4393A21F741, _ts(route), _r)
end

function Global.AssistedMovementRemoveRoute(route)
	return _in(0x3548536485DD792B, _ts(route))
end

function Global.AssistedMovementSetRouteProperties(route, props)
	return _in(0xD5002D78B7162E1B, _ts(route), props)
end

function Global.Atan(p0)
	return _in(0x503054DED0B78027, p0, _r, _rf)
end

function Global.Atan2(p0, p1)
	return _in(0x965B220A066E3F07, p0, p1, _r, _rf)
end

function Global.AttachAnimSceneToEntity(animScene, entity, p2)
	return _in(0xDC418495DBA327A1, animScene, entity, p2)
end

function Global.AttachAnimSceneToEntityPreservingLocation(animScene, entity, p2)
	return _in(0x1C0B105C3F30B88D, animScene, entity, p2)
end

function Global.AttachCamToEntity(cam, entity, xOffset, yOffset, zOffset, isRelative)
	return _in(0xFDC0DF7F6FB0A592, cam, entity, xOffset, yOffset, zOffset, isRelative)
end

function Global.AttachCamToPedBone(cam, ped, boneIndex, x, y, z, heading)
	return _in(0xDFC1E4A44C0324CA, cam, ped, boneIndex, x, y, z, heading)
end

function Global.AttachEntitiesToRope(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20)
	return _in(0x3D95EC8B6D940AC3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20)
end

function Global.AttachEntityToEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
	return _in(0x6B9BBD38AB0796DF, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
end

function Global.AttachEntityToEntityPhysically(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21)
	return _in(0xB629A43CA1643481, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21)
end

function Global.AttachPortablePickupToPed(pickupObject, ped)
	return _in(0x8DC39368BDD57755, pickupObject, ped)
end

function Global.AttachTvAudioToEntity(entity)
	return _in(0x40866A418EB8EFDE, entity)
end

function Global.AudioIsScriptedMusicPlaying()
	return _in(0x845FFC3A4FEEFA3E, _r)
end

function Global.BeginSrl()
	return _in(0x0360710033BE60D9)
end

--- Deletes the given context from the background scripts context map.
-- @param contextName :
function Global.BgEndContext(contextName)
	return _in(0x3ABF7BA1C3E2C8CF, _ts(contextName))
end

--- Hashed version of BG_END_CONTEXT
-- @param contextHash :
function Global.BgEndContextHash(contextHash)
	return _in(0x6D1431744182CDE8, _ch(contextHash))
end

--- Inserts the given context into the background scripts context map.
-- @param contextName :
function Global.BgStartContext(contextName)
	return _in(0x49BA5678BA040CA7, _ts(contextName))
end

--- Hashed version of BG_START_CONTEXT
-- @param contextHash :
function Global.BgStartContextHash(contextHash)
	return _in(0x2EB67D564DCC09D5, _ch(contextHash))
end

function Global.BlockDispatchServiceResourceCreation(dispatchService, toggle)
	return _in(0x66947E61A44DE2C6, dispatchService, toggle)
end

function Global.BlockPickupFromPlayerCollection(p0, p1)
	return _in(0xB8F5062070BB6DBD, p0, p1)
end

function Global.BreakEntityGlass(entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x2E648D16F6E308F3, entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.BringVehicleToHalt(vehicle, distance, duration, unknown)
	return _in(0x260BE8F09E326A20, vehicle, distance, duration, unknown)
end

function Global.BusyspinnerIsOn()
	return _in(0x823BF7B1DF613A21, _r)
end

function Global.BusyspinnerOff()
	return _in(0x58F441B90EA84D06)
end

--- This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
-- @param miniMap The minimap overlay ID.
-- @param fnName A function in the overlay's TIMELINE.
function Global.CallMinimapScaleformFunction(miniMap, fnName)
	return _in(0x4c89c0ed, miniMap, _ts(fnName), _r)
end

function Global.CanAnchorBoatHere(vehicle)
	return _in(0xC075176CFB8B4128, vehicle, _r)
end

function Global.CanKnockPedOffVehicle(ped)
	return _in(0x51AC07A44D4F5B8A, ped, _r)
end

function Global.CanLaunchAppByHash(p0)
	return _in(0xE555EC27D65EDE80, p0, _r, _ri)
end

function Global.CanPedInCombatSeeTarget(ped, target)
	return _in(0xEAD42DE3610D0721, ped, target, _r)
end

function Global.CanPedRagdoll(ped)
	return _in(0x128F79EDCECE4FD5, ped, _r)
end

function Global.CanPedSpeak(ped, speechName, unk)
	return _in(0x49B99BF3FDA89A7A, ped, _ts(speechName), unk, _r)
end

function Global.CanPlayerStartMission(player)
	return _in(0x2DF170B1185AF777, player, _r)
end

function Global.CanRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt)
	return _in(0x69778E7564BADE6D, ped_amt, vehicle_amt, object_amt, pickup_amt, _r)
end

function Global.CanRegisterMissionObjects(amount)
	return _in(0x800DD4721A8B008B, amount, _r)
end

function Global.CanRegisterMissionPeds(amount)
	return _in(0xBCBF4FEF9FA5D781, amount, _r)
end

function Global.CanRegisterMissionVehicles(amount)
	return _in(0x7277F1F2E085EE74, amount, _r)
end

function Global.CanShuffleSeat(vehicle, p1)
	return _in(0xF8B2D32A2231FD24, vehicle, p1, _r)
end

--- Cancels the currently executing event.
function Global.CancelEvent()
	return _in(0xfa29d35d)
end

function Global.CancelMusicEvent(eventName)
	return _in(0x5B17A90291133DA5, _ts(eventName), _r)
end

function Global.CancelOnscreenKeyboard()
	return _in(0x58A39BE597CE99CD)
end

function Global.CascadeshadowsResetType()
	return _in(0xF7C29D7C12C36F03)
end

function Global.CascadeshadowsSetType(type)
	return _in(0xCE4774E0F9AD48D1, _ts(type))
end

function Global.CashinventoryInitSessionIsFaulted()
	return _in(0xD1CE92D1D9BE170A, _r)
end

function Global.CashinventoryInitSessionStatus()
	return _in(0xC019112F8995DC1C, _i, _i, _r)
end

function Global.CashinventoryIsConnectionFaulted()
	return _in(0x6CE9FB6332B5E46E, _r)
end

function Global.CashinventoryIsSessionReady()
	return _in(0xFCC24220FDDAC929, _r)
end

function Global.CashinventoryTransactionAddItem(id, p2)
	return _in(0x3745C002F5A21C45, id, _i, p2, _r)
end

function Global.CashinventoryTransactionAddItemWithIngredients(id, p2, p4)
	return _in(0xF65D2D35037BF5EC, id, _i, p2, _i, p4, _r)
end

function Global.CashinventoryTransactionCheckout(id)
	return _in(0x592BC00BF6629BE7, id, _r)
end

function Global.CashinventoryTransactionCheckoutStatus(id, status)
	return _in(0x26C008791D066F37, id, _ii(status) --[[ may be optional ]], _r)
end

function Global.CashinventoryTransactionDelete(id)
	return _in(0x59EF5D516E2D96B9, id, _r)
end

function Global.CashinventoryTransactionFireAndForgetItem(actionHash, p3)
	return _in(0xFFEA09CCEC4AF32F, _ch(actionHash), _i, _i, p3, _r)
end

function Global.CashinventoryTransactionGetAction(id)
	return _in(0xBD2D520C51CCFF52, id, _r, _ri)
end

function Global.CashinventoryTransactionGetBasketIsValid(id)
	return _in(0x52A226ADF4A270D2, id, _r)
end

function Global.CashinventoryTransactionGetItemInfo(id, index, itemInfo)
	return _in(0x7616B5F0895C2D99, id, index, _ii(itemInfo) --[[ may be optional ]], _r)
end

function Global.CashinventoryTransactionGetNumOfItems(id)
	return _in(0xCF2D04D076847478, id, _r, _ri)
end

function Global.CashinventoryTransactionResponseGetItemInfo(id, index, itemInfo)
	return _in(0x98412398BBE73F61, id, index, _ii(itemInfo) --[[ may be optional ]], _r)
end

function Global.CashinventoryTransactionStart(type, actionHash)
	return _in(0xF039EC27F4490E96, _i, _ch(type), _ch(actionHash), _r)
end

function Global.Ceil(value)
	return _in(0x11E019C8F43ACC8A, value, _r, _ri)
end

function Global.ChalAddGoalProgressFloat(p0, p1, p2)
	return _in(0x86922D8C02FB7703, p0, p1, p2)
end

function Global.ChalAddGoalProgressInt(p0, p1, p2)
	return _in(0xDDBD560745B1EE9A, p0, p1, p2)
end

function Global.ChalAddGoalProgressIntByScoreId(p0, p1)
	return _in(0xDDBD560745B1EE9C, p0, p1)
end

function Global.ChalGetMaxRanks(p0)
	return _in(0x58CB53DB63F84DEA, p0, _r, _ri)
end

function Global.ChalGetNumRanksCompleted(p0)
	return _in(0x58CB53DB63F84DE9, p0, _r, _ri)
end

function Global.ChalIsGoalActive(p0, p1)
	return _in(0x04DAC3929796EB87, p0, p1, _r, _ri)
end

function Global.ChalMissionAddGoalProgressInt(p0, p1, p2)
	return _in(0x97E18E7C098626DE, p0, p1, p2)
end

function Global.ChalMissionGetNumGoals(p0)
	return _in(0x0B0576DD3A75E58D, p0, _r, _ri)
end

function Global.ChalMissionGetNumGoalsComplete(p0)
	return _in(0xA785A52B59B7E7B2, p0, _r, _ri)
end

function Global.ChalMissionIsGoalComplete(p0, p1)
	return _in(0xC0BB774787BBF301, p0, p1, _r, _ri)
end

function Global.ChalNetStartChal(p0)
	return _in(0x4ABF7E4DB6279E8F, p0)
end

function Global.ChalNetStartGoal(p0, p1)
	return _in(0xC3FCB47344DCB638, p0, p1)
end

function Global.ChalNetStopChal(p0)
	return _in(0x43B0163154A50C86, p0)
end

function Global.ChalNetStopGoal(p0, p1)
	return _in(0x00CE6A93324A590B, p0, p1)
end

function Global.ChalSetGoalProgressInt(p0, p1, p2)
	return _in(0xDDBD560745B1EE9B, p0, p1, p2)
end

function Global.CheckOwnershipOfAnimScene(animScene)
	return _in(0x661B8683611B9B97, animScene, _r)
end

function Global.ClampGameplayCamPitch(minimum, maximum)
	return _in(0x326C7AA308F3DF6A, minimum, maximum)
end

function Global.ClampGameplayCamYaw(minimum, maximum)
	return _in(0x14F3947318CA8AD2, minimum, maximum)
end

function Global.CleanItemset(itemset)
	return _in(0x85F3A86CA9021FB0, itemset)
end

function Global.ClearAllHelpMessages()
	return _in(0x916ED8321F087059)
end

function Global.ClearAmbientZoneListState(p1)
	return _in(0x120C48C614909FA4, _i, p1)
end

function Global.ClearAmbientZoneState(zoneName, p1)
	return _in(0x218DD44AAAC964FF, _ts(zoneName), p1)
end

function Global.ClearAngledAreaOfVehicles(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xA4D83115C1E02F8A, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.ClearArea(p0, p1, p2, p3, p4)
	return _in(0x3B882A96EA77D5B1, p0, p1, p2, p3, p4)
end

function Global.ClearBit(offset)
	return _in(0x7D1D4A3602B6AD4E, _i, offset)
end

function Global.ClearDrivebyTaskUnderneathDrivingTask(ped)
	return _in(0xC35B5CDB2824CF69, ped)
end

function Global.ClearEntityLastDamageEntity(entity)
	return _in(0xBB19AC7D4DCEFD0F, entity)
end

function Global.ClearFacialIdleAnimOverride(ped)
	return _in(0x726256CC1EEB182F, ped)
end

function Global.ClearFocus()
	return _in(0x86CCAF7CE493EFBE)
end

function Global.ClearGpsCustomRoute()
	return _in(0x1EAA5674B4D181C5)
end

function Global.ClearGpsFlags()
	return _in(0x4D3771237C79FF41)
end

function Global.ClearGpsMultiRoute()
	return _in(0x9E0AB9AAEE87CE28)
end

function Global.ClearGpsPlayerWaypoint()
	return _in(0x08FDC6F796E350D1)
end

function Global.ClearHdArea()
	return _in(0xD83B22434E52728D)
end

function Global.ClearLastDrivenVehicle()
	return _in(0x0EFC5DC62E67609B)
end

function Global.ClearOverrideWeather()
	return _in(0x80A398F16FFE3CC3)
end

function Global.ClearPedBloodDamage(ped)
	return _in(0x8FE22675A5A45817, ped)
end

function Global.ClearPedBloodDamageByZone(ped, p1)
	return _in(0x56E3B78C5408D9F4, ped, p1)
end

function Global.ClearPedDamageDecalByZone(ped, p1, p2)
	return _in(0x523C79AEEFCC4A2A, ped, p1, _ts(p2))
end

function Global.ClearPedDecorations(ped)
	return _in(0x0E5173C163976E38, ped)
end

function Global.ClearPedEnvDirt(ped)
	return _in(0x6585D955A68452A5, ped)
end

function Global.ClearPedLastDamageBone(ped)
	return _in(0x8EF6B7AC68E2F01B, ped)
end

function Global.ClearPedNonCreationArea()
	return _in(0x2E05208086BA0651)
end

function Global.ClearPedSecondaryTask(ped)
	return _in(0x176CECF6F920D707, ped)
end

function Global.ClearPedTasks(p0, p1, p2)
	return _in(0xE1EF3C1216AFF2CD, p0, p1, p2)
end

function Global.ClearPedTasksImmediately(p0, p1, p2)
	return _in(0xAAA34F8A7CB32098, p0, p1, p2)
end

function Global.ClearPedWetness(ped)
	return _in(0x9C720776DAA43E7E, ped)
end

function Global.ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player)
	return _in(0x0361096D6CE4372C, player)
end

function Global.ClearPlayerHasDamagedAtLeastOnePed(player)
	return _in(0x270B63A641BE32F2, player)
end

function Global.ClearPlayerWantedLevel(player)
	return _in(0x4E4B996C928C7AA6, player)
end

function Global.ClearRagdollBlockingFlags(ped, flags)
	return _in(0xD86D101FCFD00A4B, ped, flags)
end

function Global.ClearRelationshipBetweenGroups(relationship, group1, group2)
	return _in(0x5E29243FB56FC6D4, relationship, _ch(group1), _ch(group2))
end

function Global.ClearRoomForEntity(entity)
	return _in(0xA1762D5BBFCA13A8, entity)
end

function Global.ClearRoomForGameViewport()
	return _in(0x951A049765E0D450)
end

function Global.ClearSequenceTask(taskSequenceId)
	return _in(0x3841422E9C488D8C, _ii(taskSequenceId) --[[ may be optional ]])
end

function Global.ClearSpawnerInfoPriority(p0, p1)
	return _in(0x217A54DE2D200305, _ch(p0), _ch(p1))
end

function Global.ClearTacticalAnalysisPoints()
	return _in(0xD93B6516C6878267)
end

function Global.ClearTimecycleModifier()
	return _in(0x0E3F4AF2D63491FB)
end

function Global.ClearWeatherTypePersist()
	return _in(0xD85DFE5C131E4AE9)
end

function Global.ClonePed(ped, heading, isNetwork, thisScriptCheck)
	return _in(0xEF29A16337FACADB, ped, heading, isNetwork, thisScriptCheck, _r, _ri)
end

function Global.ClonePedToTarget(ped, targetPed)
	return _in(0xE952D6431689AD9A, ped, targetPed)
end

function Global.CloseAllApps()
	return _in(0xAD7B70F7230C5A12)
end

function Global.CloseApp(p0)
	return _in(0x3015635426D1B17C, p0)
end

function Global.CloseAppByHash(p0)
	return _in(0x2FF10C9C3F92277E, p0)
end

function Global.CloseAppByHashImmediate(p0)
	return _in(0x04428420A248A354, p0)
end

function Global.ClosePatrolRoute()
	return _in(0xB043ECA801B8CBC1)
end

function Global.CloseSequenceTask(taskSequenceId)
	return _in(0x39E72BC99E6360CB, taskSequenceId)
end

function Global.CloudHasRequestCompleted(p0)
	return _in(0x4C61B39930D045DA, p0, _r)
end

--- Commits the backing pixels to the specified runtime texture.
-- @param tex The runtime texture handle.
function Global.CommitRuntimeTexture(tex)
	return _in(0x19d81f4e, tex)
end

function Global.CompareStrings(str1, str2, matchCase, maxLength)
	return _in(0xBFBB74A15EFC149B, _ts(str1), _ts(str2), matchCase, maxLength, _r, _ri)
end

function Global.CompendiumAnimalObservedByStatName(p0, p1)
	return _in(0x725D52F26A5E9E10, p0, p1)
end

function Global.CompendiumFishCaught(p0, p1)
	return _in(0x725D52F21A5E9E00, p0, p1)
end

function Global.CompendiumFishGetLureSuitabilityByStatItem(p0, p1)
	return _in(0x725D52F21A5E9E81, p0, p1, _r, _ri)
end

function Global.CompendiumGangAmbushSurvived(p0)
	return _in(0x725D52F21A5E9E04, p0)
end

function Global.CompendiumGangBountyCaptured(p0)
	return _in(0x725D52F21A5E9E06, p0)
end

function Global.CompendiumGangCampFound(p0, p1)
	return _in(0x725D52F21A5E9E03, p0, p1)
end

function Global.CompendiumGangEncountered(p0)
	return _in(0x725D52F21A5E9E05, p0)
end

function Global.CompendiumGangHideoutFound(p0, p1)
	return _in(0x725D52F21A5E9E08, p0, p1)
end

function Global.CompendiumGangMemberKilled(p0)
	return _in(0x725D52F21A5E9E07, p0)
end

function Global.CompendiumGetMapDiscoverableFromStatItem(p0, p1, p2, p3)
	return _in(0x729D54121A5E9E20, p0, p1, p2, p3, _r, _ri)
end

function Global.CompendiumGetShortDescriptionFromPed(p0)
	return _in(0x6C5E5D48E48B4C65, p0, _r, _ri)
end

function Global.CompendiumHerbPicked(p0, p1, p2, p3)
	return _in(0x725D52F21A5E9E09, p0, p1, p2, p3)
end

function Global.CompendiumHorseBonding(p0, p1)
	return _in(0x725D52F21A5E9E50, p0, p1)
end

function Global.CompendiumHorseObserved(p0, p1)
	return _in(0x725D58F2125E5E50, p0, p1)
end

function Global.CompendiumHorseWildBroken(p0)
	return _in(0x725852D21A2E9E50, p0)
end

function Global.CopyMemory(size)
	return _in(0xF7AC7DC0DEE7C9BE, _i, _i, size)
end

function Global.CopyVehicleDamages(sourceVehicle, targetVehicle)
	return _in(0xDBC28A8C683CD80B, sourceVehicle, targetVehicle)
end

function Global.Cos(value)
	return _in(0xD0FFB162F40A139C, value, _r, _rf)
end

function Global.CreateAmbientPickup(pickupHash, x, y, z, flags, value, modelHash, p7, p8, p9, p10)
	return _in(0x673966A0C0FD7171, _ch(pickupHash), x, y, z, flags, value, _ch(modelHash), p7, p8, p9, p10, _r, _ri)
end

function Global.CreateAnimScene(animDict, flags, p2, p3, p4)
	return _in(0x1FCA98E33C1437B3, _ts(animDict), flags, _ts(p2), p3, p4, _r, _ri)
end

function Global.CreateCam(camName, p1)
	return _in(0xE72CDBA7F0A02DD6, _ts(camName), p1, _r, _ri)
end

function Global.CreateCamWithParams(camName, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9)
	return _in(0x40C23491CE83708E, _ts(camName), posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9, _r, _ri)
end

function Global.CreateCamera(camHash, p1)
	return _in(0x57CDF879EA466C46, _ch(camHash), p1, _r, _ri)
end

function Global.CreateCameraWithParams(camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9)
	return _in(0x98B99B9F27E2D60B, _ch(camHash), posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9, _r, _ri)
end

function Global.CreateCheckpoint(type, posX1, posY1, posZ1, posX2, posY2, posZ2, radius, red, green, blue, alpha, reserved)
	return _in(0x175668836B44CBB0, type, posX1, posY1, posZ1, posX2, posY2, posZ2, radius, red, green, blue, alpha, reserved, _r, _ri)
end

--- Returns a formatted string (0x%x)
-- @param rgb :
function Global.CreateColorString(rgb)
	return _in(0xBCC2CFADEA1AEA6C, rgb, _r, _s)
end

--- Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
-- @param url The initial URL to load in the browser.
-- @param width The width of the backing surface.
-- @param height The height of the backing surface.
-- @return A DUI object.
function Global.CreateDui(url, width, height)
	return _in(0x23eaf899, _ts(url), width, height, _r, _rl)
end

function Global.CreateFakeMpGamerTag(ped, username, pointedClanTag, isRockstarClan, clanTag, p5)
	return _in(0x53CB4B502E1C57EA, ped, _ts(username), pointedClanTag, isRockstarClan, _ts(clanTag), p5, _r, _ri)
end

function Global.CreateForcedObject(x, y, z, p3, modelHash, p5)
	return _in(0x0961A905AFBC34C7, x, y, z, p3, _ch(modelHash), p5)
end

function Global.CreateGroup(unused)
	return _in(0x90370EBE0FEE1A3D, unused, _r, _ri)
end

function Global.CreateGuardZone(name)
	return _in(0x8F9DE75680275C9F, _ts(name))
end

function Global.CreateIncident(dispatchService, x, y, z, numUnits, radius, p7, p8)
	return _in(0x3F892CAF67444AE7, dispatchService, x, y, z, numUnits, radius, _i, p7, p8, _r)
end

function Global.CreateItemset(p0)
	return _in(0xA1AF16083320065A, p0, _r, _ri)
end

function Global.CreateModelHide(x, y, z, radius, model, p5)
	return _in(0x069848B3FB3C4426, x, y, z, radius, _ch(model), p5)
end

function Global.CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5)
	return _in(0xD136090A9AAAB17D, x, y, z, radius, _ch(model), p5)
end

function Global.CreateModelSwap(x, y, z, radius, originalModel, newModel, p6)
	return _in(0x10B2218320B6F5AC, x, y, z, radius, _ch(originalModel), _ch(newModel), p6)
end

function Global.CreateMpGamerTag(player, username, pointedClanTag, isRockstarClan, clanTag, p5)
	return _in(0xD877AF112AD2B41B, player, _ts(username), pointedClanTag, isRockstarClan, _ts(clanTag), p5, _r, _ri)
end

function Global.CreateNewScriptedConversation(p0)
	return _in(0xD2C91A0B572AAE56, p0, _r, _ri)
end

function Global.CreateObject(modelHash, x, y, z, p4, p5, p6, p7, p8)
	return _in(0x509D5878EB39E842, _ch(modelHash), x, y, z, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.CreateObjectNoOffset(modelHash, x, y, z, p4, p5, p6, p7)
	return _in(0x9A294B2138ABB884, _ch(modelHash), x, y, z, p4, p5, p6, p7, _r, _ri)
end

function Global.CreatePatrolRoute()
	return _in(0xAF8A443CCC8018DC)
end

function Global.CreatePed(modelHash, x, y, z, heading, p5, p6, p7, p8)
	return _in(0xD49F9B0955C367DE, _ch(modelHash), x, y, z, heading, p5, p6, p7, p8, _r, _ri)
end

function Global.CreatePedInsideVehicle(vehicle, modelHash, seatIndex, p3, p4, p5)
	return _in(0x7DD959874C1FD534, vehicle, _ch(modelHash), seatIndex, p3, p4, p5, _r, _ri)
end

function Global.CreatePedOnMount(mount, modelHash, index, p3, p4, p5, p6)
	return _in(0xF89AA2BD01FC06B7, mount, _ch(modelHash), index, p3, p4, p5, p6, _r, _ri)
end

function Global.CreatePickup(pickupHash, x, y, z, flags, p5, p6, modelHash, p8, p9)
	return _in(0xFBA08C503DD5FA58, _ch(pickupHash), x, y, z, flags, p5, p6, _ch(modelHash), p8, p9, _r, _ri)
end

function Global.CreatePickupRotate(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flags, p8, p9, p10, modelHash, p12, p13)
	return _in(0x891804727E0A98B7, _ch(pickupHash), posX, posY, posZ, rotX, rotY, rotZ, flags, p8, p9, p10, _ch(modelHash), p12, p13, _r, _ri)
end

function Global.CreatePopzoneFromVolume(volume)
	return _in(0x9AC1C64FE46B6D09, volume, _r, _ri)
end

function Global.CreatePortablePickup(pickupHash, x, y, z, placeOnGround, modelHash)
	return _in(0x2EAF1FDB2FB55698, _ch(pickupHash), x, y, z, placeOnGround, _ch(modelHash), _r, _ri)
end

--- Creates a blank runtime texture.
-- @param txd A handle to the runtime TXD to create the runtime texture in.
-- @param txn The name for the texture in the runtime texture dictionary.
-- @param width The width of the new texture.
-- @param height The height of the new texture.
-- @return A runtime texture handle.
function Global.CreateRuntimeTexture(txd, txn, width, height)
	return _in(0xfec3766d, txd, _ts(txn), width, height, _r, _rl)
end

--- Creates a runtime texture from a DUI handle.
-- @param txd A handle to the runtime TXD to create the runtime texture in.
-- @param txn The name for the texture in the runtime texture dictionary.
-- @param duiHandle The DUI handle returned from GET_DUI_HANDLE.
-- @return The runtime texture handle.
function Global.CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle)
	return _in(0xb135472b, txd, txn, _ts(duiHandle), _r, _rl)
end

--- Creates a runtime texture from the specified file in the current resource.
-- @param txd A handle to the runtime TXD to create the runtime texture in.
-- @param txn The name for the texture in the runtime texture dictionary.
-- @param fileName The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
-- @return A runtime texture handle.
function Global.CreateRuntimeTextureFromImage(txd, txn, fileName)
	return _in(0x786d8bc3, txd, _ts(txn), _ts(fileName), _r, _rl)
end

--- Creates a runtime texture dictionary with the specified name.
-- Example:
-- ```lua
-- local txd = CreateRuntimeTxd('meow')
-- ```
-- @param name The name for the runtime TXD.
-- @return A handle to the runtime TXD.
function Global.CreateRuntimeTxd(name)
	return _in(0x1f3ac778, _ts(name), _r, _rl)
end

function Global.CreateTrackedPoint()
	return _in(0xFB405CB357C69CB9, _r, _ri)
end

function Global.CreateVarString(p0, p1, variadic)
	return _in(0xFA925AC00EB830B9, p0, _ts(p1), variadic, _r, _rl)
end

function Global.CreateVehicle(modelHash, x, y, z, heading, p5, p6, p7, p8)
	return _in(0xAF35D0D2583051B0, _ch(modelHash), x, y, z, heading, p5, p6, p7, p8, _r, _ri)
end

function Global.CreateVehicle_2(modelHash, x, y, z, heading, p5, p6, p7, p8, p9)
	return _in(0x214651FB1DFEBA89, _ch(modelHash), x, y, z, heading, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.CreateVolumeAggregate()
	return _in(0x59F6F5C1D129F106, _r, _ri)
end

function Global.CreateVolumeAggregateWithCustomName(name)
	return _in(0x5D580DE6398BB162, _ts(name), _r, _ri)
end

function Global.CreateVolumeBox(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xDF85637F22706891, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.CreateVolumeBoxWithCustomName(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xF68485C7495D848E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.CreateVolumeByHash(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x502022FA1AF9DC86, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.CreateVolumeByHashWithCustomName(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x1F85E4AC774A201E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri)
end

function Global.CreateVolumeCylinder(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x0522D4774B82E3E6, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.CreateVolumeCylinderWithCustomName(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xDF1E350EDDF06E59, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.DatabdingGetArrayCount(p0)
	return _in(0xD23F5DE04FE717E2, p0, _r, _ri)
end

function Global.DatabindingAddDataBool(p0, p1, p2)
	return _in(0x58BAA5F635DA2FF4, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataBoolByHash(p0, p1, p2)
	return _in(0xBC95D3AE2ECA70D6, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataBoolFromPath(p0, p1, p2)
	return _in(0x37BB86A751148A6A, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataContainer(p0, p1)
	return _in(0xEB4F9A3537EEABCD, p0, p1, _r, _ri)
end

function Global.DatabindingAddDataContainerByHash(p0, p1)
	return _in(0x98BB14345BB68257, p0, p1, _r, _ri)
end

function Global.DatabindingAddDataContainerFromPath(p0, p1)
	return _in(0x0C827D175F1292F4, p0, p1, _r, _ri)
end

function Global.DatabindingAddDataFloat(p0, p1, p2)
	return _in(0x5154228273ADB9A6, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataGangId(p0, p1, p2)
	return _in(0x7D0F2014DB28DD00, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataHash(p0, p1, p2)
	return _in(0x8538F1205D60ECA6, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataHashByHash(p0, p1, p2)
	return _in(0x8E173DFB041993C6, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataInt(p0, p1, p2)
	return _in(0x307A3247C5457BDE, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataIntByHash(p0, p1, p2)
	return _in(0x267F9527F4350ADE, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataString(p0, p1, p2)
	return _in(0x617FCA1C5652BBAD, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddDataStringByHash(p0, p1, p2)
	return _in(0xEAD09E76E22630C3, p0, p1, p2, _r, _ri)
end

function Global.DatabindingAddHashArray(p0, p1)
	return _in(0x52F5F08278EA5D75, p0, p1, _r, _ri)
end

function Global.DatabindingAddStringArray(p0, p1)
	return _in(0x1B23E0627BDBFE85, p0, p1, _r, _ri)
end

function Global.DatabindingAddUiItemList(p0, p1)
	return _in(0xFE74FA57E0CE6824, p0, p1, _r, _ri)
end

function Global.DatabindingAddUiItemListByHash(p0, p1)
	return _in(0x3C7799283325181B, p0, p1, _r, _ri)
end

function Global.DatabindingAddUiItemListFromPath(p0, p1)
	return _in(0xDB5B9A474148F699, p0, p1, _r, _ri)
end

function Global.DatabindingClearBindingArray(p0)
	return _in(0xA1F15C1D03DF802D, p0)
end

function Global.DatabindingGetDataContainerFromChildIndex(p0, p1)
	return _in(0x0C827D175F1292F3, p0, p1, _r, _ri)
end

function Global.DatabindingGetDataContainerFromPath(p0)
	return _in(0x0C827D175F1292F2, p0, _r, _ri)
end

function Global.DatabindingGetItemContextByIndex(p0, p1)
	return _in(0xE96D7F9FEFCC105F, p0, p1, _r, _ri)
end

function Global.DatabindingInsertUiItemToListFromContextHashAlias(p0, p1, p2, p3)
	return _in(0xEE97A05C05F16E41, p0, p1, p2, p3)
end

function Global.DatabindingInsertUiItemToListFromContextStringAlias(p0, p1, p2, p3)
	return _in(0x5859E970794D92F3, p0, p1, p2, p3)
end

function Global.DatabindingInsertUiItemToListFromPathStringAlias(p0, p1, p2, p3)
	return _in(0x5740774F608E4FC8, p0, p1, p2, p3)
end

function Global.DatabindingIsDataIdValid(p0)
	return _in(0x1E7130793AAAAB8D, p0, _r, _ri)
end

function Global.DatabindingReadDataBool(p0)
	return _in(0x5EEFBD4B6D7CD6EB, p0, _r, _ri)
end

function Global.DatabindingReadDataBoolFromParent(p0, p1)
	return _in(0xA8EDE09FE07BD77F, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataBoolFromParentByHash(p0, p1)
	return _in(0x4CDC3FDDFAE07EB3, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataHashStringFromParent(p0, p1)
	return _in(0x9B535990B01B62DE, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataHashStringFromParentByHash(p0, p1)
	return _in(0x1F43BC25A119B252, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataInt(p0)
	return _in(0x570784D782597512, p0, _r, _ri)
end

function Global.DatabindingReadDataIntFromParent(p0, p1)
	return _in(0xFFC566A4801F6B40, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataIntFromParentByHash(p0, p1)
	return _in(0xB5F668B648EC0970, p0, p1, _r, _ri)
end

function Global.DatabindingReadDataString(p0)
	return _in(0x3D290B5FFA7C5151, p0, _r, _ri)
end

function Global.DatabindingReadDataStringFromParent(p0, p1)
	return _in(0x6323AD277C4A2AFB, p0, p1, _r, _ri)
end

function Global.DatabindingRemoveBindingArrayItemByDataContextId(p0, p1)
	return _in(0xF68B1726EAF7B285, p0, p1)
end

function Global.DatabindingRemoveDataEntry(p0)
	return _in(0x0AE9938D0541F2DA, p0)
end

function Global.DatabindingSetTemplatedUiItemHashAlias(p0, p1, p2)
	return _in(0x0AE7138D0541F2DE, p0, p1, p2)
end

function Global.DatabindingSetTemplatedUiItemListSize(p0, p1)
	return _in(0xFE74FA57E0CE6825, p0, p1)
end

function Global.DatabindingWriteDataBool(p0, p1)
	return _in(0xAB888B4B91046770, p0, p1)
end

function Global.DatabindingWriteDataBoolFromParent(p0, p1, p2)
	return _in(0xBDFE546E4C2D0E21, p0, p1, p2)
end

function Global.DatabindingWriteDataFloat(p0, p1)
	return _in(0xDF504BECEB15DA93, p0, p1)
end

function Global.DatabindingWriteDataHashString(p0, p1)
	return _in(0xACDEF586BD71B1FD, p0, p1)
end

function Global.DatabindingWriteDataHashStringFromParent(p0, p1, p2)
	return _in(0x0971F04E1EAA7AE8, p0, p1, p2)
end

function Global.DatabindingWriteDataHashStringFromParentByHash(p0, p1, p2)
	return _in(0x20209529689E0953, p0, p1, p2)
end

function Global.DatabindingWriteDataInt(p0, p1)
	return _in(0x335C3F6B3766B8D9, p0, p1)
end

function Global.DatabindingWriteDataIntFromParent(p0, p1, p2)
	return _in(0x9EFA98238BA08FC4, p0, p1, p2)
end

function Global.DatabindingWriteDataIntFromParentByHash(p0, p1, p2)
	return _in(0x9D6E10A41D6ED6EC, p0, p1, p2)
end

function Global.DatabindingWriteDataScriptVariables(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xAB888B4B91046771, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.DatabindingWriteDataString(p0, p1)
	return _in(0xE1BD342F2872AEE9, p0, p1)
end

function Global.DatabindingWriteDataStringFromParent(p0, p1, p2)
	return _in(0x4FF713B2F17A391E, p0, p1, p2)
end

function Global.DatafileCreate(index)
	return _in(0x56B7291FB953DD51, index)
end

function Global.DatafileDelete(index)
	return _in(0x9FB90EEDEA9F2D5C, index)
end

function Global.DatafileDeleteRequestedFile(p0)
	return _in(0x604B8ED1A482F9DF, p0, _r)
end

function Global.DatafileGetBool(p0, p1)
	return _in(0x0D9138F3F8261DF7, p0, p1, _r, _ri)
end

function Global.DatafileGetDataNodeIndex(p0, p1)
	return _in(0x83C3ED532B6E5D07, p0, p1, _r, _ri)
end

function Global.DatafileGetFileDict(index)
	return _in(0xBBD8CF823CAE557C, index, _r, _s)
end

function Global.DatafileGetFloat(p0, p1)
	return _in(0x7F034FC3E891B57A, p0, p1, _r, _ri)
end

function Global.DatafileGetHash(p0, p1)
	return _in(0xFBFF3FF2F5E80C0B, p0, p1, _r, _ri)
end

function Global.DatafileGetInt(p0, p1)
	return _in(0xEF44ACC657352A35, p0, p1, _r, _ri)
end

function Global.DatafileGetNumChildren(p0, p1)
	return _in(0x6BEB168D5195E7AB, p0, p1, _r, _ri)
end

function Global.DatafileGetNumNodes(p0)
	return _in(0xDF01B1F7A886B42D, p0, _r, _ri)
end

function Global.DatafileGetString(p0, p1)
	return _in(0x08EAF8E9F2EB7B2E, p0, p1, _r, _ri)
end

function Global.DatafileGetVector(p0, p1)
	return _in(0x06FBF89B12DA279C, p0, p1, _r, _ri)
end

function Global.DatafileHasLoadedFileData(p0)
	return _in(0x17279C820464CEE0, p0, _r)
end

function Global.DatafileHasValidFileData(p0)
	return _in(0xE60100389E50EADE, p0, _r)
end

function Global.DatafileRegisterQuery(p0, p1, p2)
	return _in(0xAE156A747C39A741, p0, p1, p2, _r, _ri)
end

function Global.DatafileSelectActiveFile(p0, p1)
	return _in(0x46102A0989AD80B5, p0, p1, _r)
end

function Global.DatafileUnload(p0)
	return _in(0x129567F0C05F81B9, p0)
end

function Global.DatafileWatchRequestId(id)
	return _in(0xA5834834CA8FD7FC, id)
end

function Global.DeactivateInteriorEntitySet(p0, p1, p2)
	return _in(0x33B81A2C07A51FFF, p0, p1, p2)
end

function Global.DecorExistOn(entity, propertyName)
	return _in(0xD9D1CDBF3464DCDF, entity, _ts(propertyName), _r)
end

function Global.DecorGetBool(entity, propertyName)
	return _in(0xDEF3F1B071ABB197, entity, _ts(propertyName), _r)
end

function Global.DecorGetFloat(entity, propertyName)
	return _in(0xE5FF70CD842CA9D4, entity, _ts(propertyName), _r, _rf)
end

function Global.DecorGetInt(entity, propertyName)
	return _in(0x44DB62727762FD9B, entity, _ts(propertyName), _r, _ri)
end

function Global.DecorGetUint8(entity, propertyName)
	return _in(0xB1682B2443F0540B, entity, _ts(propertyName), _r, _ri)
end

function Global.DecorIsRegisteredAsType(propertyName, type)
	return _in(0x72355278C069F272, _ts(propertyName), type, _r)
end

function Global.DecorRegister(propertyName, type)
	return _in(0x0B253D644E3C36B3, _ts(propertyName), type)
end

function Global.DecorRegister_2(propertyName, type, p2)
	return _in(0x4587374F88B7F6C2, _ts(propertyName), type, p2)
end

function Global.DecorRemove(entity, propertyName)
	return _in(0x2BA7F5877A088A1D, entity, _ts(propertyName), _r)
end

function Global.DecorRemoveAll(entity)
	return _in(0x88942780E0ADEA42, entity, _r)
end

function Global.DecorSetBool(entity, propertyName, value)
	return _in(0xFE26E4609B1C3772, entity, _ts(propertyName), value, _r)
end

function Global.DecorSetFloat(entity, propertyName, value)
	return _in(0x238F8B0C1C7FE834, entity, _ts(propertyName), value, _r)
end

function Global.DecorSetInt(entity, propertyName, value)
	return _in(0xE88F4D7F52A6090F, entity, _ts(propertyName), value, _r)
end

function Global.DecorSetString(entity, propertyName, value)
	return _in(0x0671C1A3FF7AFDFC, entity, _ts(propertyName), _ts(value), _r)
end

function Global.DecorSetUint8(entity, propertyName, value)
	return _in(0x4BDC83150D43772D, entity, _ts(propertyName), value, _r)
end

function Global.DeleteAllTrains()
	return _in(0xA3120A1385F17FF7)
end

function Global.DeleteCheckpoint(checkpoint)
	return _in(0x0DED5B0C8EBAAE12, checkpoint)
end

function Global.DeleteChildRope(ropeId)
	return _in(0xAA5D6B1888E4DB20, ropeId)
end

function Global.DeleteEntity(entity)
	return _in(0x4CD38C78BD19A497, _ii(entity) --[[ may be optional ]])
end

function Global.DeleteFunctionReference(referenceIdentity)
	return _in(0x1e86f206, _ts(referenceIdentity))
end

function Global.DeleteIncident(incidentId)
	return _in(0x5CFD0F0D6AAE0AEE, incidentId)
end

function Global.DeleteMissionTrain(train)
	return _in(0x0D3630FB07E8B570, _ii(train) --[[ may be optional ]])
end

function Global.DeleteObject(object)
	return _in(0x931914268722C263, _ii(object) --[[ may be optional ]])
end

function Global.DeletePatrolRoute(patrolRoute)
	return _in(0x7767DD9D65E91319, _ts(patrolRoute))
end

function Global.DeletePed(ped)
	return _in(0xCC0EF140F99365C5, _ii(ped) --[[ may be optional ]])
end

function Global.DeleteResourceKvp(key)
	return _in(0x7389b5df, _ts(key))
end

function Global.DeleteRope(ropeId)
	return _in(0x52B4829281364649, _ii(ropeId) --[[ may be optional ]])
end

function Global.DeleteVehicle(vehicle)
	return _in(0xE20A909D8C4A70F8, _ii(vehicle) --[[ may be optional ]])
end

function Global.DestroyAllCams(thisScriptCheck)
	return _in(0x163600D6E136C9F8, thisScriptCheck)
end

function Global.DestroyCam(cam, thisScriptCheck)
	return _in(0x4E67E0B6D7FD5145, cam, thisScriptCheck)
end

--- Destroys a DUI browser.
-- @param duiObject The DUI browser handle.
function Global.DestroyDui(duiObject)
	return _in(0xa085cb10, duiObject)
end

function Global.DestroyItemset(itemset)
	return _in(0x712BC69F10549B92, itemset)
end

function Global.DestroyTrackedPoint(point)
	return _in(0x37A59922109F8F1C, point)
end

function Global.DetachAnimScene(animScene)
	return _in(0x6843A1AA3A336DFF, animScene)
end

function Global.DetachAnimScenePreservingLocation(animScene)
	return _in(0xA2507C4948C83D2E, animScene)
end

function Global.DetachCam(cam)
	return _in(0x05B41DDBEB559556, cam)
end

function Global.DetachEntity(entity, p1, collision)
	return _in(0x64CDE9D6BF8ECAD3, entity, p1, collision)
end

function Global.DetachPortablePickupFromPed(pickupObject)
	return _in(0xCF463D1E9A0AECB1, pickupObject)
end

function Global.DetachRopeFromEntity(ropeId, entity)
	return _in(0xBCF3026912A8647D, ropeId, entity)
end

function Global.DisableAllControlActions(padIndex)
	return _in(0x5F4B6931816E599B, padIndex)
end

function Global.DisableAmbientLookAtRequests(p0, p1)
	return _in(0x80038740C96AD17F, p0, p1)
end

function Global.DisableAttributeOverpower(p0, p1)
	return _in(0xF8DAC3D85636C241, p0, p1)
end

function Global.DisableControlAction(padIndex, control, disable)
	return _in(0xFE99B66D079CF6BC, padIndex, _ch(control), disable)
end

function Global.DisableFirstPersonCamThisFrame()
	return _in(0x9C473089A934C930)
end

function Global.DisableFrontendThisFrame()
	return _in(0x56CE42A528156A67)
end

function Global.DisableGuardZone(name)
	return _in(0x26D558692B25DD95, _ts(name))
end

function Global.DisableInterior(interior, toggle)
	return _in(0x3C2B92A1A07D4FCE, interior, toggle)
end

function Global.DisablePedPainAudio(ped, toggle)
	return _in(0xA9A41C1E940FB0E8, ped, toggle)
end

function Global.DisablePlayerFiring(player, toggle)
	return _in(0x2970929FD5F9FC89, player, toggle)
end

function Global.DisableScriptBrainSet(brainSet)
	return _in(0x3F44EA613A5B2676, brainSet)
end

function Global.DisableVehicleFirstPersonCamThisFrame()
	return _in(0xA5929C2E57AC90D1)
end

function Global.DisableVehicleWeapon(disabled, weaponHash, vehicle, owner)
	return _in(0x94B1E71B144356A5, disabled, _ch(weaponHash), vehicle, owner)
end

function Global.DisplayHud(toggle)
	return _in(0xD63FE3AF9FB3D53F, toggle)
end

function Global.DisplayOnscreenKeyboard(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
	return _in(0x044131118D8DB3CD, p0, _ts(windowTitle), _ts(p2), _ts(defaultText), _ts(defaultConcat1), _ts(defaultConcat2), _ts(defaultConcat3), maxInputLength)
end

function Global.DisplayRadar(toggle)
	return _in(0x1B3DA717B9AFF828, toggle)
end

--- Note: you must use _CREATE_VAR_STRING
-- @param text :
-- @param xPos :
-- @param yPos :
function Global.DisplayText(text, xPos, yPos)
	return _in(0xD79334A4BB99BAD1, text, xPos, yPos)
end

function Global.DoScreenFadeIn(duration)
	return _in(0x6A053CF596F67DF7, duration)
end

function Global.DoScreenFadeOut(duration)
	return _in(0x40C719A5E410B9E4, duration)
end

function Global.DoesAnimDictExist(animDict)
	return _in(0x537F44CB0D7F150D, _ts(animDict), _r)
end

function Global.DoesBlipExist(blip)
	return _in(0xCD82FA174080B3B1, blip, _r)
end

function Global.DoesCamExist(cam)
	return _in(0x153AD457764FD704, cam, _r)
end

function Global.DoesEntityBelongToThisScript(entity, p1)
	return _in(0x622B1980CBE13332, entity, p1, _r)
end

function Global.DoesEntityExist(entity)
	return _in(0xD42BD6EB2E0F1677, entity, _r)
end

function Global.DoesEntityHaveDrawable(entity)
	return _in(0x20487F0DA9AF164A, entity, _r)
end

function Global.DoesEntityHavePhysics(entity)
	return _in(0xA512B3F1B2A0B51C, entity, _r)
end

function Global.DoesExtraExist(vehicle, extraId)
	return _in(0xAF5E7E9A7620FFB5, vehicle, extraId, _r)
end

function Global.DoesGroupExist(groupId)
	return _in(0x7C6B0C22F9F40BBE, groupId, _r)
end

function Global.DoesNavmeshBlockingObjectExist(p0)
	return _in(0x0EAEB0DB4B132399, p0, _r)
end

function Global.DoesObjectOfTypeExistAtCoords(x, y, z, radius, hash, p5)
	return _in(0xBFA48E2FF417213F, x, y, z, radius, _ch(hash), p5, _r)
end

function Global.DoesParticleFxLoopedExist(ptfxHandle)
	return _in(0x9DD5AFF561E88F2A, ptfxHandle, _r)
end

function Global.DoesPickupExist(pickup)
	return _in(0xAFC1CA75AD4074D1, pickup, _r)
end

function Global.DoesPickupObjectExist(pickupObject)
	return _in(0xD9EFB6DBF7DAAEA3, pickupObject, _r)
end

function Global.DoesPickupOfTypeExistInArea(pickupHash, x, y, z, radius)
	return _in(0xF9C36251F6E48E33, _ch(pickupHash), x, y, z, radius, _r)
end

function Global.DoesPopMultiplierAreaExist(id)
	return _in(0x03BA619C81A646B3, id, _r)
end

function Global.DoesRayfireMapObjectExist(object)
	return _in(0x52AF537A0C5B8AAD, object, _r)
end

function Global.DoesRopeExist(ropeId)
	return _in(0xFD5448BE3111ED96, _ii(ropeId) --[[ may be optional ]], _r)
end

function Global.DoesScenarioExistInArea(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x5A59271FFADD33C1, p0, p1, p2, p3, p4, p5, p6, _r)
end

function Global.DoesScenarioGroupExist(scenarioGroup)
	return _in(0xF9034C136C9E00D3, _ts(scenarioGroup), _r)
end

function Global.DoesScenarioGroupExistHash(scenarioGroup)
	return _in(0x76E98B52369A289C, _ch(scenarioGroup), _r)
end

function Global.DoesScriptExist(scriptName)
	return _in(0x552B171E3F69E5AE, _ts(scriptName), _r)
end

function Global.DoesScriptWithNameHashExist(scriptHash)
	return _in(0xA34E89749F628284, _ch(scriptHash), _r)
end

function Global.DoesScriptedCoverPointExistAtCoords(p0, p1, p2, p3)
	return _in(0xA98B8E3C088E5A31, p0, p1, p2, p3, _r)
end

function Global.DoesStateMachineExist(p0)
	return _in(0x5D15569C0FEBF757, p0, _r, _ri)
end

function Global.DoesStringExistInString(p0, p1)
	return _in(0x9382D5D43D2AA6FF, p0, p1, _r, _ri)
end

function Global.DoesTextLabelExist(label)
	return _in(0x73C258C68D6F55B6, _ts(label), _r)
end

function Global.DominoesBuyIn(p0)
	return _in(0x399E6CD12FC8CA89, p0, _r, _ri)
end

function Global.DominoesPlaceDomino(p0, p1)
	return _in(0xB79A29B33BF29BA5, p0, p1, _r, _ri)
end

function Global.DominoesRequestValidPlacements(p0)
	return _in(0xE26AEE7E67D9E21D, p0, _r, _ri)
end

function Global.DoorSystemGetDoorState(doorHash)
	return _in(0x160AA1B32F6139B8, _ch(doorHash), _r, _ri)
end

function Global.DoorSystemGetOpenRatio(doorHash)
	return _in(0x65499865FCA6E5EC, _ch(doorHash), _r, _rf)
end

function Global.DoorSystemSetAutomaticDistance(p0, p1)
	return _in(0x9BA001CB45CBF627, p0, p1)
end

function Global.DoorSystemSetAutomaticRate(p0, p1)
	return _in(0x03C27E13B42A0E82, p0, p1)
end

function Global.DoorSystemSetDoorState(p0, p1)
	return _in(0x6BAB9442830C7F53, p0, p1)
end

function Global.DoorSystemSetOpenRatio(p0, p1, p2)
	return _in(0xB6E6FBA95C7324AC, p0, p1, p2)
end

function Global.DrawLightWithRange(posX, posY, posZ, colorR, colorG, colorB, range, intensity)
	return _in(0xD2D9E04C0DF927F4, posX, posY, posZ, colorR, colorG, colorB, range, intensity)
end

function Global.DrawRect(x, y, width, height, red, green, blue, alpha, p8, p9)
	return _in(0x405224591DF02025, x, y, width, height, red, green, blue, alpha, p8, p9)
end

function Global.DrawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha, p11)
	return _in(0xC9884ECADE94CB34, _ts(textureDict), _ts(textureName), screenX, screenY, width, height, heading, red, green, blue, alpha, p11)
end

function Global.DrawTvChannel(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha)
	return _in(0xC0A145540254A840, xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha)
end

function Global.DuplicateFunctionReference(referenceIdentity)
	return _in(0xf4e2079d, _ts(referenceIdentity), _r, _s)
end

function Global.EnableAttributeOverpower(p0, p1, p2, p3)
	return _in(0x4AF5A4C7B9157D14, p0, p1, p2, p3)
end

function Global.EnableControlAction(padIndex, control, enable)
	return _in(0x351220255D64C155, padIndex, _ch(control), enable)
end

function Global.EnableDispatchService(dispatchService, toggle)
	return _in(0x50E52637EF70EF77, dispatchService, toggle)
end

function Global.EnableMovieSubtitles(toggle)
	return _in(0x6FC9B065229C0787, toggle)
end

function Global.EnableScriptBrainSet(brainSet)
	return _in(0x1CF6E5C6750EADBD, brainSet)
end

function Global.EndFindKvp(handle)
	return _in(0xb3210203, handle)
end

function Global.EndFindObject(findHandle)
	return _in(0xdeda4e50, findHandle)
end

function Global.EndFindPed(findHandle)
	return _in(0x9615c2ad, findHandle)
end

function Global.EndFindPickup(findHandle)
	return _in(0x3c407d53, findHandle)
end

function Global.EndFindVehicle(findHandle)
	return _in(0x9227415a, findHandle)
end

function Global.EndPetrolTrailDecals()
	return _in(0x0E126AAE933F3B56)
end

function Global.EndSrl()
	return _in(0x1CE71FB33CA079FE)
end

function Global.EnterFlowBlock(p0, p1)
	return _in(0x3B7519720C9DCB45, p0, p1, _r, _ri)
end

function Global.EventManagerGetEvent(hash, eventData)
	return _in(0xE24E957294241444, _ch(hash), _ii(eventData) --[[ may be optional ]], _r)
end

function Global.EventManagerIsEventPending(hash)
	return _in(0x67ED5A7963F2F722, _ch(hash), _r)
end

function Global.EventManagerPeekEvent(hash, eventData)
	return _in(0x90237103F27F7937, _ch(hash), _ii(eventData) --[[ may be optional ]], _r)
end

function Global.EventManagerPopEvent(hash)
	return _in(0x8E8A2369F48EC839, _ch(hash))
end

function Global.EventQueueIsEmpty(p0)
	return _in(0x402B5D7D269FF796, p0, _r, _ri)
end

function Global.EventQueuePop(p0)
	return _in(0xD87DF294B049211D, p0)
end

function Global.ExecuteCommand(commandString)
	return _in(0x561c060b, _ts(commandString))
end

--- This native is not implemented.
-- @param data 
-- @param objectId 
-- @param tree 
function Global.ExperimentalLoadCloneCreate(data, objectId, tree)
	return _in(0xd2cb95a3, _ts(data), objectId, _ts(tree), _r, _ri)
end

--- This native is not implemented.
-- @param entity 
-- @param data 
function Global.ExperimentalLoadCloneSync(entity, data)
	return _in(0x6bc189ac, entity, _ts(data))
end

--- This native is not implemented.
-- @param entity 
function Global.ExperimentalSaveCloneCreate(entity)
	return _in(0x9d65cad2, entity, _r, _s)
end

--- This native is not implemented.
-- @param entity 
function Global.ExperimentalSaveCloneSync(entity)
	return _in(0x38d19210, entity, _r, _s)
end

function Global.ExplodePedHead(ped, weaponHash)
	return _in(0x2D05CED3A38D0F3A, ped, _ch(weaponHash))
end

function Global.ExplodeVehicle(vehicle, isAudible, isInvisible, p3)
	return _in(0x75DCED9EEC5769D7, vehicle, isAudible, isInvisible, p3)
end

function Global.FadeAnimSceneAudioIn(animScene, p1)
	return _in(0xA41351EA2A18A0AD, animScene, p1)
end

function Global.FadeAnimSceneAudioOut(animScene, p1)
	return _in(0x323E3AD772BA5D57, animScene, p1)
end

function Global.FindAllAttachedCarriableEntities(ped, itemset)
	return _in(0xB5ACE8B23A438EC0, ped, itemset)
end

function Global.FindAnimEventPhase(animDictionary, animName, p2)
	return _in(0x42718CC559BD7776, _ts(animDictionary), _ts(animName), _ts(p2), _i, _i, _r)
end

function Global.FindFirstObject(outEntity)
	return _in(0xfaa6cb5d, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstPed(outEntity)
	return _in(0xfb012961, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstPickup(outEntity)
	return _in(0x3ff9d340, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindFirstVehicle(outEntity)
	return _in(0x15e55694, _ii(outEntity) --[[ may be optional ]], _r, _ri)
end

function Global.FindKvp(handle)
	return _in(0xbd7bebc5, handle, _r, _s)
end

function Global.FindNextObject(findHandle, outEntity)
	return _in(0x4e129dbf, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextPed(findHandle, outEntity)
	return _in(0xab09b548, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextPickup(findHandle, outEntity)
	return _in(0x4107ef0f, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindNextVehicle(findHandle, outEntity)
	return _in(0x8839120d, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.Floor(value)
	return _in(0xF34EE736CF047844, value, _r, _ri)
end

function Global.ForceCleanup(cleanupFlags)
	return _in(0x768C017FB878E4F4, cleanupFlags)
end

function Global.ForceCleanupForAllThreadsWithThisName(name, cleanupFlags)
	return _in(0xDAACAF8B687F2353, _ts(name), cleanupFlags)
end

function Global.ForceCleanupForThreadWithThisId(id, cleanupFlags)
	return _in(0xF4C9512A2F0A3031, id, cleanupFlags)
end

function Global.ForceCloseTextInputBox()
	return _in(0xFBBF5943E4C2C992)
end

function Global.ForceEntityAiAndAnimationUpdate(p0, p1)
	return _in(0x4C9E96473D4F1A88, p0, p1)
end

function Global.ForceLightningFlash()
	return _in(0x369DB5B2510FA080)
end

function Global.ForceLightningFlashAtCoords(x, y, z)
	return _in(0x67943537D179597C, x, y, z)
end

function Global.ForcePedMotionState(ped, motionStateHash, p2, p3, p4)
	return _in(0xF28965D04F570DCA, ped, _ch(motionStateHash), p2, p3, p4, _r)
end

function Global.ForcePickupRegenerate(p0)
	return _in(0x758A5C1B3B1E1990, p0)
end

function Global.ForceRoomForEntity(entity, interior, roomHashKey)
	return _in(0xBC29A9894C976945, entity, interior, _ch(roomHashKey))
end

function Global.ForceRoomForGameViewport(interiorID, roomHashKey)
	return _in(0x115B4AA8FB28AB43, interiorID, _ch(roomHashKey))
end

function Global.ForceSonarBlipsThisFrame()
	return _in(0xEE1C7BA69BB74B08, _r, _ri)
end

function Global.ForceVehicleEngineAudio(vehicle, audioName)
	return _in(0x4F0C413926060B38, vehicle, _ts(audioName))
end

function Global.FreezeEntityPosition(entity, toggle)
	return _in(0x7D9EFB7AD6B19754, entity, toggle)
end

function Global.FreezePedCameraRotation(ped)
	return _in(0xFF287323B0E2C69A, ped)
end

--- Returns all player indices for 'active' physical players known to the client.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of player indices.
function Global.GetActivePlayers()
	return msgpack.unpack(_in(0xcf143fb9, _r, _ro))
end

function Global.GetActiveVehicleMissionType(vehicle)
	return _in(0x534AEBA6E5ED4CAB, vehicle, _r, _ri)
end

function Global.GetAmmoInClip(ped, weaponHash)
	return _in(0x2E1202248937775C, ped, _i, _ch(weaponHash), _r)
end

function Global.GetAmmoInPedWeapon(ped, weaponHash)
	return _in(0x015A522136D7F951, ped, _ch(weaponHash), _r, _ri)
end

function Global.GetAngleBetween_2dVectors(x1, y1, x2, y2)
	return _in(0xD0DFE1C486097BBB, x1, y1, x2, y2, _r, _rf)
end

function Global.GetAnimDuration(animDict, animName)
	return _in(0x9FFAF4940A54CC09, _ts(animDict), _ts(animName), _r, _rf)
end

function Global.GetAnimInitialOffsetPosition(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9)
	return _in(0xBE22B26DD764C040, _ts(animDict), _ts(animName), x, y, z, xRot, yRot, zRot, p8, p9, _r, _rv)
end

function Global.GetAnimInitialOffsetRotation(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9)
	return _in(0x4B805E6046EE9E47, _ts(animDict), _ts(animName), x, y, z, xRot, yRot, zRot, p8, p9, _r, _rv)
end

function Global.GetAnimalTuningBoolParam(animal, p1)
	return _in(0x1C1993824A396603, animal, p1, _r)
end

function Global.GetAnimalTuningFloatParam(animal, p1)
	return _in(0x4BC3ECFDA0297E27, animal, p1, _r, _rf)
end

function Global.GetAttributeBaseRank(p0, p1)
	return _in(0x147149F2E909323C, p0, p1, _r, _ri)
end

function Global.GetAttributeBonusRank(p0, p1)
	return _in(0x0EFA71F4B4330E04, p0, p1, _r, _ri)
end

--- Gets the ped's core value on a scale of 0 to 100. The coreIndex is as follows:
-- - health = 0,
-- - stamina = 1,
-- - deadeye = 2
-- @param ped :
-- @param coreIndex :
function Global.GetAttributeCoreValue(ped, coreIndex)
	return _in(0x36731AC041289BB1, ped, coreIndex, _r, _ri)
end

function Global.GetAttributePoints(p0, p1)
	return _in(0x219DA04BAA9CB065, p0, p1, _r, _ri)
end

function Global.GetAttributeRank(p0, p1)
	return _in(0xA4C8E23E29040DE0, p0, p1, _r, _ri)
end

function Global.GetBenchmarkIterationsFromCommandLine()
	return _in(0x22FC52CF470CC98D, _r, _ri)
end

function Global.GetBenchmarkPassFromCommandLine()
	return _in(0x9297DACF3A2CDFF7, _r, _ri)
end

function Global.GetBenchmarkTime()
	return _in(0x3F3172FEAE3AFE1C, _r, _rf)
end

function Global.GetBestPedWeapon(ped, p1, p2)
	return _in(0x8483E98E8B888AE2, ped, p1, p2, _r, _ri)
end

function Global.GetBitsInRange(var, rangeStart, rangeEnd)
	return _in(0x68E1352AF48F905D, var, rangeStart, rangeEnd, _r, _ri)
end

function Global.GetBlipCoords(blip)
	return _in(0x201C319797BDA603, blip, _r, _rv)
end

function Global.GetBlipFromEntity(entity)
	return _in(0x6D2C41A8BD6D6FD0, entity, _r, _ri)
end

function Global.GetBlockOfPlayerBits(p0, p1)
	return _in(0xFA3B530A5CC693D5, p0, p1, _r, _ri)
end

function Global.GetCamCoord(cam)
	return _in(0x6B12F11C2A9F0344, cam, _r, _rv)
end

function Global.GetCamFov(cam)
	return _in(0x8101D32A0A6B0F60, cam, _r, _rf)
end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
-- @param camera 
-- @param rightVector 
-- @param forwardVector 
-- @param upVector 
-- @param position 
function Global.GetCamMatrix(camera)
	return _in(0x8f57a89d, camera, _v, _v, _v, _v)
end

function Global.GetCamRot(cam, rotationOrder)
	return _in(0x9BF96B57254E7889, cam, rotationOrder, _r, _rv)
end

function Global.GetCamSplinePhase(cam)
	return _in(0x095EDCD24D90033A, cam, _r, _rf)
end

function Global.GetCauseOfMostRecentForceCleanup()
	return _in(0x84E8E29EBD4A46D2, _r, _ri)
end

function Global.GetClockDayOfMonth()
	return _in(0xDF2FD796C54480A5, _r, _ri)
end

function Global.GetClockDayOfWeek()
	return _in(0x4DD02D4C7FB30076, _r, _ri)
end

function Global.GetClockHours()
	return _in(0xC82CF208C2B19199, _r, _ri)
end

function Global.GetClockMinutes()
	return _in(0x4E162231B823DBBF, _r, _ri)
end

function Global.GetClockMonth()
	return _in(0x2D44E8FC79EAB1AC, _r, _ri)
end

function Global.GetClockSeconds()
	return _in(0xB6101ABE62B5F080, _r, _ri)
end

function Global.GetClockYear()
	return _in(0xE136DCA28C4A48BA, _r, _ri)
end

function Global.GetClosestFirePos(x, y, z)
	return _in(0xB646FB657F448261, _v, x, y, z, _r)
end

function Global.GetClosestObjectOfType(x, y, z, radius, modelHash, isMission, p6, p7)
	return _in(0xE143FA2249364369, x, y, z, radius, _ch(modelHash), isMission, p6, p7, _r, _ri)
end

function Global.GetClosestPed(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xC33AB876A77F8164, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r)
end

function Global.GetClosestRoad(x, y, z, p3, p4, p10)
	return _in(0x132F52BBA570FE92, x, y, z, p3, p4, _v, _v, _i, _i, _f, p10, _r, _ri)
end

function Global.GetClosestVehicle(x, y, z, radius, modelHash, flags)
	return _in(0x52F45D033645181B, x, y, z, radius, _ch(modelHash), flags, _r, _ri)
end

function Global.GetClosestVehicleNode(x, y, z, nodeType, p5, p6)
	return _in(0x240A18690AE96513, x, y, z, _v, nodeType, p5, p6, _r)
end

function Global.GetClosestVehicleNodeWithHeading(x, y, z, nodeType, p6, p7)
	return _in(0x23CFFD4CCB243354, x, y, z, _v, _f, nodeType, p6, p7, _r)
end

function Global.GetCloudTimeAsInt()
	return _in(0x9A73240B49945C76, _r, _ri)
end

function Global.GetCombatFloat(ped, p1)
	return _in(0x52DFF8A10508090A, ped, p1, _r, _rf)
end

function Global.GetControlNormal(padIndex, control)
	return _in(0xEC3C9B8D5327B563, padIndex, _ch(control), _r, _rf)
end

function Global.GetControlUnboundNormal(padIndex, control)
	return _in(0x5B84D09CEC5209C5, padIndex, _ch(control), _r, _rf)
end

function Global.GetControlValue(padIndex, control)
	return _in(0xD95E79E8686D2C27, padIndex, _ch(control), _r, _ri)
end

function Global.GetConvar(varName, default_)
	return _in(0x6ccd2564, _ts(varName), _ts(default_), _r, _s)
end

function Global.GetConvarInt(varName, default_)
	return _in(0x935c0ab2, _ts(varName), default_, _r, _ri)
end

function Global.GetCurrentLanguage()
	return _in(0xDB917DA5C6835FCC, _r, _ri)
end

function Global.GetCurrentPedVehicleWeapon(ped, weaponHash)
	return _in(0x1017582BCD3832DC, ped, _ii(weaponHash) --[[ may be optional ]], _r)
end

function Global.GetCurrentPedWeapon(ped, p2, p3, p4)
	return _in(0x3A87E44BB9A01D54, ped, _i, p2, p3, p4, _r)
end

function Global.GetCurrentPedWeaponEntityIndex(ped, p1)
	return _in(0x3B390A939AF0B5FC, ped, p1, _r, _ri)
end

--- Returns the name of the currently executing resource.
-- @return The name of the resource.
function Global.GetCurrentResourceName()
	return _in(0xe5e9ebbb, _r, _s)
end

function Global.GetCurrentScriptedConversationLine(p0)
	return _in(0x480357EE890C295A, p0, _r, _ri)
end

--- Returns the peer address of the remote game server that the user is currently connected to.
-- @return The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.
function Global.GetCurrentServerEndpoint()
	return _in(0xea11bfba, _r, _s)
end

function Global.GetDateAndTimeFromUnixEpoch(unixEpoch, timeStructure)
	return _in(0xAC97AF97FA68E5D5, unixEpoch, _ii(timeStructure) --[[ may be optional ]])
end

function Global.GetDeadPedPickupCoords(ped, p1, p2)
	return _in(0xCD5003B097200F36, ped, p1, p2, _r, _rv)
end

function Global.GetDefaultAttributePointsNeededForRank(p0, p1, p2)
	return _in(0x94A7F191DB49A44D, p0, p1, p2, _r, _ri)
end

function Global.GetDefaultAttributeRank(p0, p1)
	return _in(0x958DD43D41F89A47, p0, p1, _r, _ri)
end

function Global.GetDefaultMaxAttributeRank(p0, p1)
	return _in(0x7C059C55AD940CB4, p0, p1, _r, _ri)
end

function Global.GetDefaultRelationshipGroupHash(modelHash)
	return _in(0x3CC4A718C258BDD0, _ch(modelHash), _r, _ri)
end

function Global.GetDisabledControlNormal(padIndex, control)
	return _in(0x11E65974A982637C, padIndex, _ch(control), _r, _rf)
end

function Global.GetDisabledControlUnboundNormal(padIndex, control)
	return _in(0x4F8A26A890FD62FB, padIndex, _ch(control), _r, _rf)
end

function Global.GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ)
	return _in(0x0BE7F4E3CDBAFB28, x1, y1, z1, x2, y2, z2, useZ, _r, _rf)
end

--- Returns the NUI window handle for a specified DUI browser object.
-- @param duiObject The DUI browser handle.
-- @return The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
function Global.GetDuiHandle(duiObject)
	return _in(0x1655d41d, duiObject, _r, _s)
end

function Global.GetEntityAlpha(entity)
	return _in(0x1BB501624FAF2BEA, entity, _r, _ri)
end

function Global.GetEntityAttachedTo(entity)
	return _in(0x56D713888A566481, entity, _r, _ri)
end

function Global.GetEntityBoneIndexByName(entity, boneName)
	return _in(0xBACA8FE9C76C124E, entity, _ts(boneName), _r, _ri)
end

function Global.GetEntityCollisionDisabled(entity)
	return _in(0xAA2FADD30F45A9DA, entity, _r)
end

function Global.GetEntityCoords(entity, p1, p2)
	return _in(0xA86D5F069399F44D, entity, p1, p2, _r, _rv)
end

function Global.GetEntityForwardVector(entity)
	return _in(0x2412D9C05BB09B97, _ch(entity), _r, _rv)
end

function Global.GetEntityForwardX(entity)
	return _in(0xDB0954E9960F6457, entity, _r, _rf)
end

function Global.GetEntityForwardY(entity)
	return _in(0x9A5C073ECBDA7EE7, entity, _r, _rf)
end

function Global.GetEntityHeading(entity)
	return _in(0xC230DD956E2F5507, entity, _r, _rf)
end

function Global.GetEntityHealth(entity)
	return _in(0x82368787EA73C0F7, entity, _r, _ri)
end

function Global.GetEntityHeight(entity, X, Y, Z, atTop, inWorldCoords)
	return _in(0x296DEBC84474B375, entity, X, Y, Z, atTop, inWorldCoords, _r, _rf)
end

function Global.GetEntityHeightAboveGround(entity)
	return _in(0x0D3B5BAEA08F63E9, entity, _r, _rf)
end

function Global.GetEntityInsideExplosionArea(explosionType, x1, y1, z1, x2, y2, z2, radius)
	return _in(0x8002DDAB58594D78, explosionType, x1, y1, z1, x2, y2, z2, radius, _r, _ri)
end

function Global.GetEntityLodDist(entity)
	return _in(0xDF240D0C2A948683, entity, _r, _ri)
end

function Global.GetEntityMatrix(entity)
	return _in(0x3A9B1120AF13FBF2, entity, _v, _v, _v, _v)
end

function Global.GetEntityMaxHealth(p0, p1)
	return _in(0x15D757606D170C3C, p0, p1, _r, _ri)
end

function Global.GetEntityModel(entity)
	return _in(0xDA76A9F39210D365, entity, _r, _ri)
end

function Global.GetEntityPitch(entity)
	return _in(0xEF355ABEFF7F5005, entity, _r, _rf)
end

function Global.GetEntityPlayerIsFreeAimingAt(player, entity)
	return _in(0xA6817C110B830EAD, player, _ii(entity) --[[ may be optional ]], _r)
end

function Global.GetEntityPopulationType(entity)
	return _in(0xADE28862B6D7B85B, entity, _r, _ri)
end

function Global.GetEntityProofs(entity)
	return _in(0x6CF0DAD7FA1088EA, entity, _r, _ri)
end

function Global.GetEntityRoll(entity)
	return _in(0xBF966536FA8B6879, entity, _r, _rf)
end

function Global.GetEntityRotation(entity, rotationOrder)
	return _in(0xE09CAF86C32CB48F, entity, rotationOrder, _r, _rv)
end

function Global.GetEntitySpeed(entity)
	return _in(0xFB6BA510A533DF81, entity, _r, _rf)
end

function Global.GetEntitySpeedVector(entity, relative)
	return _in(0xF2DB09816A419DC5, entity, relative, _r, _rv)
end

function Global.GetEntitySubmergedLevel(entity)
	return _in(0x4A77C3F73FD9E831, entity, _r, _rf)
end

function Global.GetEntityType(entity)
	return _in(0x97F696ACA466B4E0, entity, _r, _ri)
end

function Global.GetEntityUprightValue(entity)
	return _in(0x56398BE65160C3BE, entity, _r, _rf)
end

function Global.GetEntityVelocity(p0, p1)
	return _in(0x4805D2B1D8CF94A9, p0, p1, _r, _rv)
end

function Global.GetEventAtIndex(eventGroup, eventIndex)
	return _in(0xA85E614430EFF816, eventGroup, eventIndex, _r, _ri)
end

function Global.GetEventData(eventGroup, eventIndex, argStructSize)
	return _in(0x57EC5FA4D4D6AFCA, eventGroup, eventIndex, _i, argStructSize, _r)
end

function Global.GetEventExists(eventGroup, eventIndex)
	return _in(0xC9F59C0A710ECD34, eventGroup, eventIndex, _r)
end

function Global.GetFinalRenderedCamCoord()
	return _in(0x5352E025EC2B416F, _r, _rv)
end

function Global.GetFinalRenderedCamFov()
	return _in(0x04AF77971E508F6A, _r, _rf)
end

function Global.GetFinalRenderedCamRot(rotationOrder)
	return _in(0x602685BD85DD26CA, rotationOrder, _r, _rv)
end

function Global.GetFirstPersonAimCamZoomFactor()
	return _in(0xB4132CA1B0EE1365, _r, _rf)
end

function Global.GetFrameCount()
	return _in(0x77DFA958FCF100C1, _r, _ri)
end

function Global.GetFrameTime()
	return _in(0x5E72022914CE3C38, _r, _rf)
end

--- Return example: 1207.69_dev_pc
function Global.GetGameBuildString()
	return _in(0x05A5F662AD35C573, _r, _s)
end

function Global.GetGameTimer()
	return _in(0x4F67E8ECA7D3F667, _r, _ri)
end

function Global.GetGameplayCamCoord()
	return _in(0x595320200B98596E, _r, _rv)
end

function Global.GetGameplayCamFov()
	return _in(0xF6A96E5ACEEC6E50, _r, _rf)
end

function Global.GetGameplayCamRelativeHeading()
	return _in(0xC4ABF536048998AA, _r, _rf)
end

function Global.GetGameplayCamRelativePitch()
	return _in(0x99AADEBBA803F827, _r, _rf)
end

function Global.GetGameplayCamRot(rotationOrder)
	return _in(0x0252D2B5582957A6, rotationOrder, _r, _rv)
end

function Global.GetGlobalBlockCanBeAccessed(index)
	return _in(0x42A7EB5C814C2DE0, index, _r)
end

function Global.GetGpsBlipRouteFound()
	return _in(0x869DAACBBE9FA006, _r)
end

function Global.GetGpsBlipRouteLength()
	return _in(0xBBB45C3CF5C8AA85, _r, _ri)
end

function Global.GetGroundZAndNormalFor_3dCoord(x, y, z)
	return _in(0x2A29CA9A6319E6AB, x, y, z, _f, _v, _r)
end

function Global.GetGroundZFor_3dCoord(p0, p1, p2, p3, p4)
	return _in(0x24FA4267BB8D2431, p0, p1, p2, p3, p4, _r)
end

function Global.GetGroupSize(groupID)
	return _in(0x8DE69FE35CA09A45, groupID, _i, _i)
end

function Global.GetHashKey(string)
	return _in(0xFD340785ADF8CFB7, _ts(string), _r, _ri)
end

function Global.GetHashOfThisScriptName()
	return _in(0xBC2C927F5C264960, _r, _ri)
end

function Global.GetHashOfThread(threadId)
	return _in(0x724CB89D35B283D0, threadId, _r, _ri)
end

function Global.GetHeadingFromVector_2d(dx, dy)
	return _in(0x38D5202FF9271C62, dx, dy, _r, _rf)
end

function Global.GetHeightmapBottomZForPosition(left, right)
	return _in(0x336511A34F2E5185, left, right, _r, _rf)
end

function Global.GetHudScreenPositionFromWorldPosition(worldX, worldY, worldZ)
	return _in(0xB39C81628EF10B42, worldX, worldY, worldZ, _f, _f, _r)
end

function Global.GetIdOfThisThread()
	return _in(0x55525C346BEF6960, _r, _ri)
end

function Global.GetIndexedItemInItemset(itemset, p1)
	return _in(0x275A2E2C0FAB7612, itemset, p1, _r, _ri)
end

function Global.GetIndexedScenarioPointIndexInItemset(itemset, p1)
	return _in(0x9FC3CDB5CE815901, itemset, p1, _r, _ri)
end

function Global.GetInstanceId()
	return _in(0x9f1c4383, _r, _ri)
end

function Global.GetInteriorAtCoords(x, y, z)
	return _in(0xCDD36C9E5C469070, x, y, z, _r, _ri)
end

function Global.GetInteriorAtCoordsWithType(x, y, z, interiorType)
	return _in(0xAAD6170AA33B13C0, x, y, z, _ts(interiorType), _r, _ri)
end

function Global.GetInteriorAtCoordsWithTypehash(x, y, z, typeHash)
	return _in(0x3543AEA1816D1D2B, x, y, z, _ch(typeHash), _r, _ri)
end

function Global.GetInteriorEntitiesExtents(interiorId)
	return _in(0x322b1192, interiorId, _f, _f, _f, _f, _f, _f)
end

function Global.GetInteriorFromCollision(x, y, z)
	return _in(0x5054D1A5218FA696, x, y, z, _r, _ri)
end

function Global.GetInteriorFromEntity(entity)
	return _in(0xB417689857646F61, entity, _r, _ri)
end

function Global.GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex)
	return _in(0xf772bb2c, interiorId, portalIndex, cornerIndex, _f, _f, _f)
end

function Global.GetInteriorPortalCount(interiorId)
	return _in(0xd05bb8b1, interiorId, _r, _ri)
end

function Global.GetInteriorPortalFlag(interiorId, portalIndex)
	return _in(0xc74da47c, interiorId, portalIndex, _r, _ri)
end

function Global.GetInteriorPortalRoomFrom(interiorId, portalIndex)
	return _in(0xaa9c141d, interiorId, portalIndex, _r, _ri)
end

function Global.GetInteriorPortalRoomTo(interiorId, portalIndex)
	return _in(0x3f47f0e8, interiorId, portalIndex, _r, _ri)
end

function Global.GetInteriorPosition(interiorId)
	return _in(0x77a435b0, interiorId, _f, _f, _f)
end

function Global.GetInteriorRoomCount(interiorId)
	return _in(0xa2737c2c, interiorId, _r, _ri)
end

function Global.GetInteriorRoomExtents(interiorId, roomIndex)
	return _in(0xf9e795dd, interiorId, roomIndex, _f, _f, _f, _f, _f, _f)
end

function Global.GetInteriorRoomFlag(interiorId, roomIndex)
	return _in(0x6b7af743, interiorId, roomIndex, _r, _ri)
end

function Global.GetInteriorRoomIndexByHash(interiorId, roomHash)
	return _in(0xe0ee05f8, interiorId, roomHash, _r, _ri)
end

function Global.GetInteriorRoomName(interiorId, roomIndex)
	return _in(0x11755df2, interiorId, roomIndex, _r, _s)
end

function Global.GetInteriorRoomTimecycle(interiorId, roomIndex)
	return _in(0x82ba3f88, interiorId, roomIndex, _r, _ri)
end

function Global.GetInteriorRotation(interiorId)
	return _in(0x5a039998, interiorId, _f, _f, _f, _f)
end

function Global.GetIsLoadingScreenActive()
	return _in(0x71D4BF5890659B0C, _r)
end

function Global.GetIsTaskActive(ped, taskIndex)
	return _in(0xB0760331C7AA4155, ped, taskIndex, _r)
end

function Global.GetIsThreatIndicatorCapableRadarShown()
	return _in(0x2CC24A2A7A1489C4, _r, _ri)
end

function Global.GetIsThreatIndicatorOn()
	return _in(0xFC2E0A5E9ED4E1B4, _r, _ri)
end

function Global.GetIsWaypointRecordingLoaded(name)
	return _in(0xCB4E8BE8A0063C5D, _ts(name), _r)
end

function Global.GetItemsetSize(itemset)
	return _in(0x55F2E375AC6018A9, itemset, _r, _ri)
end

function Global.GetJackTarget(ped)
	return _in(0x5486A79D9FBD342D, ped, _r, _ri)
end

function Global.GetKeyForEntityInRoom(entity)
	return _in(0x27D7B6F79E1F4603, entity, _r, _ri)
end

function Global.GetLabelText(labelName)
	return _in(0xCFEDCCAD3C5BA90D, _ts(labelName), _r, _s)
end

--- Returns the label text given the hash.
-- @param labelHash :
function Global.GetLabelTextByHash(labelHash)
	return _in(0xBD5DD5EAE2B6CE14, _ch(labelHash), _r, _s)
end

function Global.GetLabelText_2(label)
	return _in(0x3429670F9B9EF2D3, _ts(label), _r, _s)
end

function Global.GetLastDrivenVehicle()
	return _in(0xA94F3E0AB9695E19, _r, _ri)
end

function Global.GetLastPedInVehicleSeat(vehicle, seatIndex)
	return _in(0x74583B19FEEAFDA7, vehicle, seatIndex, _r, _ri)
end

function Global.GetLengthOfLiteralString(string)
	return _in(0x481FBF588B0B76DB, _ts(string), _r, _ri)
end

function Global.GetLengthOfLiteralStringInBytes(string)
	return _in(0xDC5AD6B7AB8184F5, _ts(string), _r, _ri)
end

function Global.GetMainPlayerBlipId()
	return _in(0x5CD2889B2B381D45, _r, _ri)
end

--- Returns the zoom level data by index from mapzoomdata.meta file.
-- @param index Zoom level index.
-- @param zoomScale fZoomScale value.
-- @param zoomSpeed fZoomSpeed value.
-- @param scrollSpeed fScrollSpeed value.
-- @param tilesX vTiles X.
-- @param tilesY vTiles Y.
-- @return A boolean indicating TRUE if the data was received successfully.
function Global.GetMapZoomDataLevel(index)
	return _in(0x1363a998, index, _f, _f, _f, _f, _f, _r)
end

function Global.GetMaxAmmo(ped, weaponHash, ammo)
	return _in(0xDC16122C7A20C933, ped, _ch(weaponHash), _ii(ammo) --[[ may be optional ]], _r)
end

function Global.GetMaxAmmoInClip(ped, weaponHash, p2)
	return _in(0xA38DCFFCEA8962FA, ped, _ch(weaponHash), p2, _r, _ri)
end

function Global.GetMaxAttributePoints(p0, p1)
	return _in(0x223BF310F854871C, p0, p1, _r, _ri)
end

function Global.GetMaxAttributeRank(p0, p1)
	return _in(0x704674A0535A471D, p0, p1, _r, _ri)
end

function Global.GetMaxNumNetworkObjects()
	return _in(0xC7BE335216B5EC7C, _r, _ri)
end

function Global.GetMaxNumNetworkPeds()
	return _in(0x0C1F7D49C39D2289, _r, _ri)
end

function Global.GetMaxNumNetworkPickups()
	return _in(0xA72835064DD63E4C, _r, _ri)
end

function Global.GetMaxNumNetworkVehicles()
	return _in(0x0AFCE529F69B21FF, _r, _ri)
end

function Global.GetMaxWantedLevel()
	return _in(0xD04CFAD1E2B7984A, _r, _ri)
end

function Global.GetMeleeTargetForPed(ped)
	return _in(0x18A3E9EE1297FD39, ped, _r, _ri)
end

function Global.GetMillisecondsPerGameMinute()
	return _in(0xE4CB8D126501EC52, _r, _ri)
end

function Global.GetMissionFlag()
	return _in(0xB15CD1CF58771DE1, _r)
end

function Global.GetModelDimensions(modelHash)
	return _in(0xDCB8DDD5D054A7E7, _ch(modelHash), _v, _v)
end

function Global.GetMount(ped)
	return _in(0xE7E11B8DCBED1058, ped, _r, _ri)
end

function Global.GetMusicPlaytime()
	return _in(0xE7A0D23DC414507B, _r, _ri)
end

function Global.GetNamedRendertargetRenderId(name)
	return _in(0xB6762A85EE29AA60, _ts(name), _r, _ri)
end

function Global.GetNearestPlayerToEntity(p0, p1, p2)
	return _in(0x990E294FC387FB88, p0, p1, p2, _r, _ri)
end

function Global.GetNearestPlayerToEntityOnTeam(p0, p1, p2, p3)
	return _in(0xB2C30C3B4AFF718C, p0, p1, p2, p3, _r, _ri)
end

function Global.GetNetworkTime()
	return _in(0x7A5487FE9FAA6B48, _r, _ri)
end

function Global.GetNetworkTimeAccurate()
	return _in(0x89023FBBF9200E9F, _r, _ri)
end

function Global.GetNoLoadingScreen()
	return _in(0x323DAF00687E0F28, _r)
end

function Global.GetNthClosestVehicleNode(x, y, z, nthClosest, unknown1, unknown2, unknown3)
	return _in(0x5A6D8DF6FBC5D0C4, x, y, z, nthClosest, _v, unknown1, unknown2, unknown3, _r)
end

function Global.GetNthClosestVehicleNodeFavourDirection(x, y, z, desiredX, desiredY, desiredZ, nthClosest, nodetype, p10, p11)
	return _in(0x2FAC235A6062F14A, x, y, z, desiredX, desiredY, desiredZ, nthClosest, _v, _f, nodetype, p10, p11, _r)
end

function Global.GetNthClosestVehicleNodeId(x, y, z, nth, nodetype, p5, p6)
	return _in(0x116443008E5CEFC3, x, y, z, nth, nodetype, p5, p6, _r, _ri)
end

function Global.GetNthClosestVehicleNodeIdWithHeading(x, y, z, nthClosest, outHeading, p6, p7, p8)
	return _in(0x4114EAA8A7F7766D, x, y, z, nthClosest, _v, outHeading, p6, p7, p8, _r)
end

function Global.GetNthClosestVehicleNodeWithHeading(x, y, z, nthClosest, unknown2, unknown3, unknown4)
	return _in(0x591B40D4390DB54A, x, y, z, nthClosest, _v, _f, _i, unknown2, unknown3, unknown4, _r)
end

function Global.GetNuiCursorPosition()
	return _in(0xbdba226f, _i, _i)
end

function Global.GetNumCreatedMissionObjects(p0)
	return _in(0x12B6281B6C6706C0, p0, _r, _ri)
end

function Global.GetNumCreatedMissionPeds(p0)
	return _in(0xCB215C4B56A7FAE7, p0, _r, _ri)
end

function Global.GetNumCreatedMissionVehicles(p0)
	return _in(0x0CD9AB83489430EA, p0, _r, _ri)
end

function Global.GetNumModelsInPopulationSet(p0)
	return _in(0xA1E3171ED0E47564, p0, _r, _ri)
end

function Global.GetNumReservedMissionObjects(p0)
	return _in(0xAA81B5F10BC43AC2, p0, _r, _ri)
end

function Global.GetNumReservedMissionPeds(p0)
	return _in(0x1F13D5AE5CB17E17, p0, _r, _ri)
end

function Global.GetNumReservedMissionVehicles(p0)
	return _in(0xCF3A965906452031, p0, _r, _ri)
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

function Global.GetNumberOfEvents(eventGroup)
	return _in(0x5CE8DE5909565748, eventGroup, _r, _ri)
end

function Global.GetNumberOfFiresInRange(x, y, z, radius)
	return _in(0xF9617BC6FAE61E08, x, y, z, radius, _r, _ri)
end

function Global.GetNumberOfFreeStacksOfThisSize(stackSize)
	return _in(0x40DC2907A9697EF7, stackSize, _r, _ri)
end

function Global.GetNumberOfMicrosecondsSinceLastCall()
	return _in(0xB0CE5E5ED8BB3581, _r, _ri)
end

function Global.GetNumberOfReferencesOfScriptWithNameHash(scriptHash)
	return _in(0x8E34C953364A76DD, _ch(scriptHash), _r, _ri)
end

function Global.GetNumberOfStreamingRequests()
	return _in(0x30CCCC4D88E654CA, _r, _ri)
end

function Global.GetObjectFragmentDamageHealth(p0, p1)
	return _in(0xB6FBFD079B8D0596, p0, p1, _r, _rf)
end

function Global.GetObjectIndexFromEntityIndex(entity)
	return _in(0x280BBE5601EAA983, entity, _r, _ri)
end

function Global.GetObjectOffsetFromCoords(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset)
	return _in(0x163E252DE035A133, xPos, yPos, zPos, heading, xOffset, yOffset, zOffset, _r, _rv)
end

function Global.GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ)
	return _in(0x497C6B1A2C9AE69C, entity, posX, posY, posZ, _r, _rv)
end

function Global.GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ)
	return _in(0x1899F328B0E12848, entity, offsetX, offsetY, offsetZ, _r, _rv)
end

function Global.GetOnscreenKeyboardResult()
	return _in(0xAFB4CF58A4A292B1, _r, _s)
end

function Global.GetPedAccuracy(ped)
	return _in(0x37F4AD56ECBC0CD6, ped, _r, _ri)
end

function Global.GetPedAmmoByType(ped, ammoType)
	return _in(0x39D22031557946C1, ped, ammoType, _r, _ri)
end

function Global.GetPedAmmoTypeFromWeapon(ped, weaponHash)
	return _in(0x7FEAD38B326B9F74, ped, _ch(weaponHash), _r, _ri)
end

function Global.GetPedAsGroupLeader(groupID)
	return _in(0x5CCE68DBD5FE93EC, groupID, _r, _ri)
end

function Global.GetPedAsGroupMember(groupID, memberNumber)
	return _in(0x51455483CF23ED97, groupID, memberNumber, _r, _ri)
end

function Global.GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ)
	return _in(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, _r, _rv)
end

function Global.GetPedBoneIndex(ped, boneId)
	return _in(0x3F428D08BE5AAE31, ped, boneId, _r, _ri)
end

function Global.GetPedCauseOfDeath(ped)
	return _in(0x16FFE42AB2D2DC59, ped, _r, _ri)
end

function Global.GetPedCombatMovement(ped)
	return _in(0xDEA92412FCAEB3F5, ped, _r, _ri)
end

function Global.GetPedConfigFlag(ped, flagId, p2)
	return _in(0x7EE53118C892B513, ped, flagId, p2, _r)
end

function Global.GetPedDefensiveAreaPosition(ped, p1)
	return _in(0x3C06B8786DD94CD1, ped, p1, _r, _rv)
end

function Global.GetPedDesiredMoveBlendRatio(ped)
	return _in(0x8517D4A6CA8513ED, ped, _r, _rf)
end

--- A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
-- @param ped The target ped
-- @return Returns ped's eye colour, or -1 if fails to get.
function Global.GetPedEyeColor(ped)
	return _in(0xa47b860f, ped, _r, _ri)
end

--- A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
-- @param ped The target ped
-- @param index Face feature index
-- @return Returns ped's face feature value, or 0.0 if fails to get.
function Global.GetPedFaceFeature(ped, index)
	return _in(0xba352add, ped, index, _r, _rf)
end

function Global.GetPedGroupIndex(ped)
	return _in(0xF162E133B4E7A675, ped, _r, _ri)
end

--- A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
-- @param ped The target ped
-- @return Returns ped's primary hair colour.
function Global.GetPedHairColor(ped)
	return _in(0xa3ea2893, ped, _r, _ri)
end

--- A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
-- @param ped The target ped
-- @return Returns ped's secondary hair colour.
function Global.GetPedHairHighlightColor(ped)
	return _in(0x4b087305, ped, _r, _ri)
end

--- A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
-- @param ped The target ped
-- @param index Overlay index
-- @param overlayValue Overlay value pointer
-- @param colourType Colour type pointer
-- @param firstColour First colour pointer
-- @param secondColour Second colour pointer
-- @param overlayOpacity Opacity pointer
-- @return Returns ped's head overlay data.
function Global.GetPedHeadOverlayData(ped, index)
	return _in(0xc46ee605, ped, index, _i, _i, _i, _i, _f, _r)
end

function Global.GetPedInVehicleSeat(vehicle, seatIndex)
	return _in(0xBB40DD2270B65366, vehicle, seatIndex, _r, _ri)
end

function Global.GetPedIndexFromEntityIndex(entity)
	return _in(0x0F16D042BD640EA3, entity, _r, _ri)
end

function Global.GetPedLastDamageBone(ped, outBone)
	return _in(0xD75960F6BD9EA49C, ped, _ii(outBone) --[[ may be optional ]], _r)
end

function Global.GetPedLastWeaponImpactCoord(ped, coords)
	return _in(0x6C4D0409BA1A2BC2, ped, _v, _r)
end

function Global.GetPedMaxHealth(ped)
	return _in(0x4700A416E8324EF3, ped, _r, _ri)
end

function Global.GetPedModelNameInPopulationSet(p0, p1)
	return _in(0x3EAFA1C533B7139E, p0, p1, _r, _ri)
end

function Global.GetPedMoney(ped)
	return _in(0x3F69145BBA87BAE7, ped, _r, _ri)
end

function Global.GetPedNearbyPeds(p0, p1, p2, p3)
	return _in(0x23F8F5FC7E8C4A6B, p0, p1, p2, p3, _r, _ri)
end

function Global.GetPedNearbyVehicles(ped, sizeAndVehs)
	return _in(0xCFF869CBFA210D82, ped, _ii(sizeAndVehs) --[[ may be optional ]], _r, _ri)
end

function Global.GetPedRelationshipGroupDefaultHash(ped)
	return _in(0x42FDD0F017B1E38E, ped, _r, _ri)
end

function Global.GetPedRelationshipGroupHash(ped)
	return _in(0x7DBDD04862D95F04, ped, _r, _ri)
end

function Global.GetPedResetFlag(ped, flagId)
	return _in(0xAF9E59B1B1FBF2A0, ped, flagId, _r)
end

function Global.GetPedSourceOfDeath(ped)
	return _in(0x93C8B64DEB84728C, ped, _r, _ri)
end

function Global.GetPedStealthMovement(ped)
	return _in(0x7C2AC9CA66575FBF, ped, _r)
end

function Global.GetPedTimeOfDeath(ped)
	return _in(0x1E98817B311AE98A, ped, _r, _ri)
end

function Global.GetPedType(ped)
	return _in(0xFF059E1E4C01E63C, ped, _r, _ri)
end

function Global.GetPedWaypointDistance(p0)
	return _in(0xE6A877C64CAF1BC5, p0, _r, _rf)
end

function Global.GetPedWaypointOverrideSpeed(p0)
	return _in(0xD39A2F3E7FCAFF08, p0, _r, _ri)
end

function Global.GetPedWaypointProgress(ped)
	return _in(0x2720AAA75001E094, ped, _r, _ri)
end

function Global.GetPedsJacker(ped)
	return _in(0x9B128DC36C1E04CF, ped, _r, _ri)
end

function Global.GetPickupCoords(pickup)
	return _in(0x225B8B35C88029B3, pickup, _r, _rv)
end

function Global.GetPickupHash(pickupHash)
	return _in(0x5EAAD83F8CFB4575, _ch(pickupHash), _r, _ri)
end

function Global.GetPickupObject(pickup)
	return _in(0x5099BC55630B25AE, pickup, _r, _ri)
end

function Global.GetPlayerCurrentStealthNoise(player)
	return _in(0xD7ECC25E176ECBA5, player, _r, _rf)
end

function Global.GetPlayerFromServerId(serverId)
	return _in(0x344ea166, serverId, _r, _ri)
end

function Global.GetPlayerGroup(player)
	return _in(0x9BAB31815159ABCF, player, _r, _ri)
end

function Global.GetPlayerIndex()
	return _in(0x47E385B0D957C8D4, _r, _ri)
end

function Global.GetPlayerInvincible(player)
	return _in(0x0CBBCB2CCFA7DC4E, player, _r)
end

function Global.GetPlayerName(player)
	return _in(0x7124FD9AC0E01BA0, player, _r, _s)
end

function Global.GetPlayerPed(player)
	return _in(0x275F255ED201B937, player, _r, _ri)
end

function Global.GetPlayerPedIsFollowing(ped)
	return _in(0x6A3975DEA89F9A17, ped, _r, _ri)
end

function Global.GetPlayerPedScriptIndex(player)
	return _in(0x5C880F9056D784C8, player, _r, _ri)
end

function Global.GetPlayerServerId(player)
	return _in(0x4d97bcc7, player, _r, _ri)
end

function Global.GetPlayerTargetEntity(player, entity)
	return _in(0xAE663DDD99C8A670, player, _ii(entity) --[[ may be optional ]], _r)
end

function Global.GetPlayerTeam(player)
	return _in(0xB464EB6A40C7975B, player, _r, _ri)
end

function Global.GetPlayerWantedLevel(player)
	return _in(0xABC532F9098BFD9D, player, _r, _ri)
end

function Global.GetPlayersLastVehicle()
	return _in(0x2F96E7720B0B19EA, _r, _ri)
end

function Global.GetPositionOfVehicleRecordingAtTime(p0, p1, p2)
	return _in(0x1A00961A1BE94E5E, p0, p1, _ts(p2), _r, _rv)
end

function Global.GetPosixTime()
	return _in(0x90338AD4A784E455, _i, _i, _i, _i, _i, _i)
end

function Global.GetProjectileNearPed(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x9578986A6105A6AD, p0, p1, p2, p3, p4, p5, p6, _r)
end

function Global.GetProjectileNearPedCoords(p0, p1, p2, p3, p4, p5)
	return _in(0xD73C960A681052DF, p0, p1, p2, p3, p4, p5, _r)
end

function Global.GetRainLevel()
	return _in(0x931B5F4CC130224B, _r, _rf)
end

function Global.GetRandomEventFlag()
	return _in(0x924D54E5698AE3E0, _r)
end

function Global.GetRandomFloatInRange(startRange, endRange)
	return _in(0xE29F927A961F8AAA, startRange, endRange, _r, _rf)
end

function Global.GetRandomIntInRange(startRange, endRange)
	return _in(0xD53343AA4FB7DD28, startRange, endRange, _r, _ri)
end

function Global.GetRandomModelFromPopulationSet(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x6B12ED8C77E8567B, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.GetRandomVehicleNode(x, y, z, radius, p4, p5, p6)
	return _in(0x93E0DB8440B73A7D, x, y, z, radius, p4, p5, p6, _v, _i, _r)
end

function Global.GetRayfireMapObject(x, y, z, radius, name)
	return _in(0xB48FCED898292E52, x, y, z, radius, _ts(name), _r, _ri)
end

function Global.GetRayfireMapObjectAnimPhase(object)
	return _in(0x260EE4FDBDF4DB01, object, _r, _rf)
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

function Global.GetRelationshipBetweenGroups(group1, group2)
	return _in(0x9E6B70061662AE5C, _ch(group1), _ch(group2), _r, _ri)
end

function Global.GetRelationshipBetweenPeds(ped1, ped2)
	return _in(0xEBA5AD3A0EAF7121, ped1, ped2, _r, _ri)
end

function Global.GetRenderingCam()
	return _in(0x03A8931ECC8015D6, _r, _ri)
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

--- Returns the current state of the specified resource.
-- @param resourceName The name of the resource.
-- @return The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function Global.GetResourceState(resourceName)
	return _in(0x4039b485, _ts(resourceName), _r, _s)
end

function Global.GetRoomKeyFromEntity(entity)
	return _in(0x076E46E0EB52AFC6, entity, _r, _ri)
end

function Global.GetRopeLastVertexCoord(ropeId)
	return _in(0x21BB0FBD3E217C2D, ropeId, _r, _rv)
end

function Global.GetRopeVertexCoord(ropeId, vertex)
	return _in(0xEA61CA8E80F09E4D, ropeId, vertex, _r, _rv)
end

function Global.GetRopeVertexCount(ropeId)
	return _in(0x3655F544CD30F0B5, ropeId, _r, _ri)
end

function Global.GetRotationOfVehicleRecordingAtTime(p0, p1, p2)
	return _in(0x61787DD28B8CC0D5, p0, p1, _ii(p2) --[[ may be optional ]], _r, _rv)
end

--- Gets the height of the specified runtime texture.
-- @param tex A handle to the runtime texture.
-- @return The height in pixels.
function Global.GetRuntimeTextureHeight(tex)
	return _in(0x3574aace, tex, _r, _ri)
end

--- Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
-- @param tex A handle to the runtime texture.
-- @return The row pitch in bytes.
function Global.GetRuntimeTexturePitch(tex)
	return _in(0xca0a085f, tex, _r, _ri)
end

--- Gets the width of the specified runtime texture.
-- @param tex A handle to the runtime texture.
-- @return The width in pixels.
function Global.GetRuntimeTextureWidth(tex)
	return _in(0xc9f55558, tex, _r, _ri)
end

function Global.GetSafeCoordForPed(x, y, z, onGround, flags)
	return _in(0xB61C8E878A4199CA, x, y, z, onGround, _v, flags, _r)
end

function Global.GetSafePickupCoords(p0, p1, p2, p3, p4, p5)
	return _in(0x6E16BC2503FF1FF0, p0, p1, p2, p3, p4, p5, _r, _rv)
end

function Global.GetScreenCoordFromWorldCoord(worldX, worldY, worldZ)
	return _in(0xCB50D7AFCC8B0EC6, worldX, worldY, worldZ, _f, _f, _r)
end

function Global.GetScreenResolution()
	return _in(0x66773C92835D0909, _i, _i)
end

--- 0 = invalid
-- 1 = CEntity
-- 2 = 0x2A72C62B
-- 3 = 0xE63A0D71
-- 4 = 0x9FDE1AC6
-- 5 = 0x6D766374
-- 6 = 0x27ACC35B
-- 7 = CScriptedCoverPoint
-- 8 = ptfxScriptInfo
-- 9 = CPed
-- 10 = CVehicle
-- 11 = CObject
-- 12 = CItemSet
-- 13 = 0x830B8272
-- @param handle :
function Global.GetScriptHandleType(handle)
	return _in(0xDC8D2FF478DF9553, handle, _r, _ri)
end

function Global.GetScriptTaskStatus(p0, p1, p2)
	return _in(0x77F1BEB8863288D5, p0, p1, p2, _r, _ri)
end

function Global.GetScriptTimeWithinFrameInMicroseconds()
	return _in(0x63219768C586667C, _r, _ri)
end

function Global.GetScriptedCoverPointCoords(coverpoint)
	return _in(0x594A1028FC2A3E85, coverpoint, _r, _rv)
end

function Global.GetSeatPedIsTryingToEnter(ped)
	return _in(0x6F4C85ACD641BCD2, ped, _r, _ri)
end

function Global.GetSecondsSinceBaseYear()
	return _in(0x78FD8BE812E436B2, _r, _ri)
end

function Global.GetSequenceProgress(ped)
	return _in(0x00A9010CFE1E3533, ped, _r, _ri)
end

function Global.GetShapeTestResult(rayHandle)
	return _in(0xEDE8AC7C5108FB1D, rayHandle, _i --[[ actually bool ]], _v, _v, _i, _r, _ri)
end

function Global.GetSnowLevel()
	return _in(0x1E5D727041BE1709, _r, _rf)
end

function Global.GetSoundId()
	return _in(0x430386FE9BF80B45, _r, _ri)
end

function Global.GetSpeciesTuningFloatParam(p0, p1, p2)
	return _in(0xE108489621422F91, _ch(p0), p1, p2, _r, _rf)
end

function Global.GetStateOfRayfireMapObject(object)
	return _in(0x899BA936634A322E, object, _r, _ri)
end

function Global.GetStatusOfTextureDownload(p0)
	return _in(0x8BD6C6DEA20E82C6, p0, _r, _ri)
end

function Global.GetSystemTime()
	return _in(0xBE7F225417E35A7C, _r, _ri)
end

function Global.GetTaskMoveNetworkEvent(ped, eventName)
	return _in(0xB4F47213DF45A64C, ped, _ts(eventName), _r)
end

function Global.GetTaskMoveNetworkState(ped)
	return _in(0x717E4D1F2048376D, ped, _r, _s)
end

function Global.GetTemperatureAtCoords(x, y, z)
	return _in(0xB98B78C3768AF6E0, x, y, z, _r, _rf)
end

function Global.GetTextSubstring(text, position, length)
	return _in(0x9D7E12EC6A1EE4E5, _ts(text), position, length, _r, _s)
end

function Global.GetTimeDifference(timeA, timeB)
	return _in(0xA2C6FC031D46FFF0, timeA, timeB, _r, _ri)
end

function Global.GetTimeOffset(timeA, timeB)
	return _in(0x017008CCDAD48503, timeA, timeB, _r, _ri)
end

function Global.GetTimePositionInRecording(p0)
	return _in(0x233B51C7913FA031, p0, _r, _rf)
end

function Global.GetTimecycleModifierIndex()
	return _in(0xA705394293E2B3D3, _r, _ri)
end

function Global.GetTimecycleTransitionModifierIndex()
	return _in(0x2DA67BA3C8A6755D, _r, _ri)
end

function Global.GetTogglePausedRenderphasesStatus()
	return _in(0x86ED21BDB2791CE8, _r)
end

function Global.GetTotalScInboxIds()
	return _in(0x8EF0F633280C0663, _r, _ri)
end

function Global.GetTrainCarriage(train, trailerNumber)
	return _in(0xD0FB093A4CDB932C, train, trailerNumber, _r, _ri)
end

function Global.GetTrainCurrentTrackNode(train)
	return _in(0xe015e854, train, _r, _ri)
end

function Global.GetTvChannel()
	return _in(0xF90FBFD68F3C59AE, _r, _ri)
end

function Global.GetUniqueIntForPlayer(player)
	return _in(0x07F723401B9D921C, player, _r, _ri)
end

function Global.GetVehicleAlarmTimeLeft(vehicle)
	return _in(0xc62aac98, vehicle, _r, _ri)
end

function Global.GetVehicleBodyHealth(vehicle)
	return _in(0x42113B857E33C16E, vehicle, _r, _rf)
end

function Global.GetVehicleClutch(vehicle)
	return _in(0x1dad4583, vehicle, _r, _rf)
end

function Global.GetVehicleCurrentAcceleration(vehicle)
	return _in(0x7f72adf3, vehicle, _r, _rf)
end

function Global.GetVehicleCurrentGear(vehicle)
	return _in(0xb4f4e566, vehicle, _r, _ri)
end

function Global.GetVehicleCurrentRpm(vehicle)
	return _in(0xe7b12b54, vehicle, _r, _rf)
end

function Global.GetVehicleDashboardSpeed(vehicle)
	return _in(0x9aad420e, vehicle, _r, _rf)
end

function Global.GetVehicleDoorLockStatus(vehicle)
	return _in(0xC867FD144F2469D3, vehicle, _r, _ri)
end

function Global.GetVehicleDoorsLockedForPlayer(vehicle, player)
	return _in(0xFA2CDDFEB8BC898B, vehicle, player, _r)
end

function Global.GetVehicleEngineHealth(vehicle)
	return _in(0x90DBFFAC43B22081, vehicle, _r, _rf)
end

function Global.GetVehicleEngineTemperature(vehicle)
	return _in(0xf4f495cb, vehicle, _r, _rf)
end

function Global.GetVehicleEstimatedMaxSpeed(vehicle)
	return _in(0xFE52F34491529F0B, vehicle, _r, _rf)
end

function Global.GetVehicleFuelLevel(vehicle)
	return _in(0x5f739bb8, vehicle, _r, _rf)
end

function Global.GetVehicleGravityAmount(vehicle)
	return _in(0xb48a1292, vehicle, _r, _rf)
end

function Global.GetVehicleHandbrake(vehicle)
	return _in(0x483b013c, vehicle, _r)
end

--- Returns the effective handling data of a vehicle as a floating-point value.
-- Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
-- @param vehicle The vehicle to obtain data for.
-- @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to get. These match the keys in `handling.meta`.
-- @return A floating-point value.
function Global.GetVehicleHandlingFloat(vehicle, class_, fieldName)
	return _in(0x642fc12f, vehicle, _ts(class_), _ts(fieldName), _r, _rf)
end

--- Returns the effective handling data of a vehicle as an integer value.
-- Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
-- @param vehicle The vehicle to obtain data for.
-- @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to get. These match the keys in `handling.meta`.
-- @return An integer.
function Global.GetVehicleHandlingInt(vehicle, class_, fieldName)
	return _in(0x27396c75, vehicle, _ts(class_), _ts(fieldName), _r, _ri)
end

--- Returns the effective handling data of a vehicle as a vector value.
-- Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
-- @param vehicle The vehicle to obtain data for.
-- @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to get. These match the keys in `handling.meta`.
-- @return An integer.
function Global.GetVehicleHandlingVector(vehicle, class_, fieldName)
	return _in(0xfb341304, vehicle, _ts(class_), _ts(fieldName), _r, _rv)
end

function Global.GetVehicleHighGear(vehicle)
	return _in(0xf1d1d689, vehicle, _r, _ri)
end

function Global.GetVehicleIndexFromEntityIndex(entity)
	return _in(0xDF1E5AAC561AFC59, entity, _r, _ri)
end

--- Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
-- @param vehicle 
-- @return An integer.
function Global.GetVehicleIndicatorLights(vehicle)
	return _in(0x83070354, vehicle, _r, _ri)
end

function Global.GetVehicleMaxNumberOfPassengers(vehicle)
	return _in(0xA9C55F1C15E62E06, vehicle, _r, _ri)
end

function Global.GetVehicleModelNumberOfSeats(modelHash)
	return _in(0x9A578736FF3A17C3, _ch(modelHash), _r, _ri)
end

function Global.GetVehicleNextGear(vehicle)
	return _in(0xddb298ae, vehicle, _r, _ri)
end

function Global.GetVehicleNodeIsSwitchedOff(nodeID)
	return _in(0x28533DBDDF7C2C97, nodeID, _r)
end

function Global.GetVehicleNodePosition(nodeId, outPosition)
	return _in(0x8E8D72FF24DEE1FB, nodeId, _v)
end

function Global.GetVehicleNumberOfPassengers(vehicle)
	return _in(0x59F3F16577CD79B2, vehicle, _r, _ri)
end

function Global.GetVehicleNumberOfWheels(vehicle)
	return _in(0xedf4b0fc, vehicle, _r, _ri)
end

function Global.GetVehicleOilLevel(vehicle)
	return _in(0xfc7f8ef4, vehicle, _r, _rf)
end

function Global.GetVehiclePedIsEntering(ped)
	return _in(0xF92691AED837A5FC, ped, _r, _ri)
end

function Global.GetVehiclePedIsIn(ped, lastVehicle)
	return _in(0x9A9112A0FE9A4713, ped, lastVehicle, _r, _ri)
end

function Global.GetVehiclePedIsUsing(ped)
	return _in(0x6094AD011A2EA87D, ped, _r, _ri)
end

function Global.GetVehiclePetrolTankHealth(vehicle)
	return _in(0x1E5A9B356D5098BE, vehicle, _r, _rf)
end

function Global.GetVehicleSteeringAngle(vehicle)
	return _in(0x1382fcea, vehicle, _r, _rf)
end

function Global.GetVehicleSteeringScale(vehicle)
	return _in(0x954465de, vehicle, _r, _rf)
end

function Global.GetVehicleTrailerVehicle(vehicle, trailer)
	return _in(0xCF867A239EC30741, vehicle, _ii(trailer) --[[ may be optional ]], _r)
end

function Global.GetVehicleTurboPressure(vehicle)
	return _in(0xe02b51d7, vehicle, _r, _rf)
end

function Global.GetVehicleWaypointPlaybackOverrideSpeed(p0)
	return _in(0x3DC971EB22F73447, p0, _r, _ri)
end

function Global.GetVehicleWaypointProgress(vehicle)
	return _in(0x9824CFF8FC66E159, vehicle, _r, _ri)
end

function Global.GetVehicleWaypointTargetPoint(vehicle)
	return _in(0x416B62AC8B9E5BBD, vehicle, _r, _ri)
end

function Global.GetVehicleWheelHealth(vehicle, wheelIndex)
	return _in(0x54a677f5, vehicle, wheelIndex, _r, _rf)
end

--- Gets speed of a wheel at the tyre.
-- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
-- @param vehicle 
-- @param wheelIndex 
-- @return An integer.
function Global.GetVehicleWheelSpeed(vehicle, wheelIndex)
	return _in(0x149c9da0, vehicle, wheelIndex, _r, _rf)
end

--- Returns the offset of the specified wheel relative to the wheel's axle center.
-- @param vehicle 
-- @param wheelIndex 
function Global.GetVehicleWheelXOffset(vehicle, wheelIndex)
	return _in(0xcc90cbca, vehicle, wheelIndex, _r, _rf)
end

function Global.GetVehicleWheelYRotation(vehicle, wheelIndex)
	return _in(0x2ea4affe, vehicle, wheelIndex, _r, _rf)
end
Global.GetVehicleWheelXrot = Global.GetVehicleWheelYRotation

--- List of known states:
-- ```
-- 1: Not wheeling.
-- 65: Vehicle is ready to do wheelie (burnouting).
-- 129: Vehicle is doing wheelie.
-- ```
-- @param vehicle Vehicle
-- @return Vehicle's current wheelie state.
function Global.GetVehicleWheelieState(vehicle)
	return _in(0x137260d1, vehicle, _r, _ri)
end

function Global.GetWantedLevelRadius(player)
	return _in(0x80B00EB26D9521C7, player, _r, _rf)
end

function Global.GetWantedLevelThreshold(wantedLevel)
	return _in(0x1B1A3B358F7D8F07, wantedLevel, _r, _ri)
end

function Global.GetWaterHeight(x, y, z, height)
	return _in(0xFCA8B23F28813F69, x, y, z, _fi(height) --[[ may be optional ]], _r)
end

function Global.GetWaterHeightNoWaves(x, y, z, height)
	return _in(0xDCF3690AA262C03F, x, y, z, _fi(height) --[[ may be optional ]], _r)
end

function Global.GetWaypointCoords()
	return _in(0x29B30D07C3F7873B, _r, _rv)
end

function Global.GetWaypointDistanceAlongRoute(p0, p1)
	return _in(0xA5B769058763E497, _ts(p0), p1, _r, _rf)
end

function Global.GetWeaponTypeFromPickupType(pickupHash)
	return _in(0x08F96CA6C551AD51, _ch(pickupHash), _r, _ri)
end

function Global.GetWeapontypeGroup(weaponHash)
	return _in(0xEDCA14CA5199FF25, _ch(weaponHash), _r, _ri)
end

--- Gets the model hash from the weapon hash.
-- @param weaponHash :
function Global.GetWeapontypeModel(weaponHash)
	return _in(0xF70825EB340E7D15, _ch(weaponHash), _r, _ri)
end

function Global.GetWeatherTypeTransition()
	return _in(0x0AC679B2342F14F2, _i, _i, _f)
end

function Global.GetWindDirection()
	return _in(0xF703E82F3FE14A5F, _r, _rv)
end

function Global.GetWindSpeed()
	return _in(0xFFB7E74E041150A4, _r, _rf)
end

function Global.GetWorldPositionOfEntityBone(entity, boneIndex)
	return _in(0x82CFA50E34681CA5, entity, boneIndex, _r, _rv)
end

function Global.GiveDelayedWeaponToPed(ped, weaponHash, p2, p3, p4)
	return _in(0xB282DC6EBD803C75, ped, _ch(weaponHash), p2, p3, p4)
end

function Global.GiveWeaponToPed(ped)
	return _in(0xBE7E42B07FD317AC, ped, _i, _i, _r)
end

--- Gives the ped the weapon. p7 is 0.5f, and p8 is 1.0f. p11 and p12 are both 0.
-- For a list of weapon groups, here is a weapons enum by Mooshe with all weapon-related hashes: https://pastebin.com/n72eW6zd
-- @param ped :
-- @param weaponHash :
-- @param ammoCount :
-- @param equipNow :
-- @param p4 :
-- @param weaponGroup :
-- @param p6 :
-- @param p7 :
-- @param p8 :
-- @param p9 :
-- @param p10 :
-- @param p11 :
-- @param p12 :
function Global.GiveWeaponToPed_2(ped, weaponHash, ammoCount, equipNow, p4, weaponGroup, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x5E3BDDBCB83F3D84, ped, _ch(weaponHash), ammoCount, equipNow, p4, weaponGroup, p6, p7, p8, p9, p10, p11, p12, _r)
end

function Global.GoogleAnalyticsPopPage(pageName)
	return _in(0xC6DE040378364798, _ts(pageName))
end

function Global.GoogleAnalyticsPushPage(pageName)
	return _in(0xD43A616AE3AC4EF6, _ts(pageName))
end

function Global.HasAnimDictLoaded(animDict)
	return _in(0x27FF6FE8009B40CA, _ts(animDict), _r)
end

function Global.HasAnimEventFired(entity, actionHash)
	return _in(0x5851CC48405F4A07, entity, _ch(actionHash), _r)
end

function Global.HasBulletImpactedInArea(x, y, z, p3, p4, p5)
	return _in(0xC153E5BCCF411814, x, y, z, p3, p4, p5, _r)
end

function Global.HasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x3B6A4C05FB2B33AC, p0, p1, p2, p3, p4, p5, p6, p7, _r)
end

function Global.HasClipSetLoaded(clipSet)
	return _in(0x1F23D6B6DA1CC3B2, _ts(clipSet), _r)
end

function Global.HasClosestObjectOfTypeBeenBroken(p0, p1, p2, p3, modelHash, p5)
	return _in(0x761B0E69AC4D007E, p0, p1, p2, p3, _ch(modelHash), p5, _r)
end

function Global.HasCollisionForModelLoaded(model)
	return _in(0x210A79C9EC89778F, _ch(model), _r)
end

function Global.HasCollisionLoadedAroundEntity(entity)
	return _in(0xBEB1600952B9CF5C, entity, _r)
end

function Global.HasEntityAnimFinished(entity, animDict, animName, p3)
	return _in(0xAEB40615337EF1E3, entity, _ts(animDict), _ts(animName), p3, _r)
end

function Global.HasEntityBeenDamagedByAnyObject(entity)
	return _in(0x73BB763880CD23A6, entity, _r)
end

function Global.HasEntityBeenDamagedByAnyPed(entity)
	return _in(0x9934E9C42D52D87E, entity, _r)
end

function Global.HasEntityBeenDamagedByAnyVehicle(entity)
	return _in(0x695D7C26DE65C423, entity, _r)
end

function Global.HasEntityBeenDamagedByEntity(p0, p1, p2, p3)
	return _in(0x7B6E7BEC1143AC86, p0, p1, p2, p3, _r)
end

function Global.HasEntityClearLosToEntity(entity1, entity2, traceType)
	return _in(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, _r)
end

function Global.HasEntityClearLosToEntityInFront(p0, p1, p2)
	return _in(0xE88F19660651D566, p0, p1, p2, _r)
end

function Global.HasEntityCollidedWithAnything(entity)
	return _in(0xDF18751EC74F90FF, entity, _r)
end

function Global.HasForceCleanupOccurred(cleanupFlags)
	return _in(0xC11469DCA6FC3BB5, cleanupFlags, _r)
end

--- Returns whether or not the specific minimap overlay has loaded.
-- @param id A minimap overlay ID.
-- @return A boolean indicating load status.
function Global.HasMinimapOverlayLoaded(id)
	return _in(0xf7535f32, id, _r)
end

function Global.HasModelLoaded(model)
	return _in(0x1283B8B89DD5D1B6, _ch(model), _r)
end

function Global.HasNamedPtfxAssetLoaded(fxNameHash)
	return _in(0x65BB72F29138F5D6, _ch(fxNameHash), _r)
end

function Global.HasNetworkTimeStarted()
	return _in(0x46718ACEEDEAFC84, _r)
end

function Global.HasObjectBeenBroken(p0)
	return _in(0x8ABFB70C49CC43E2, p0, _r)
end

function Global.HasPedGotWeapon(p0, p1, p2, p3)
	return _in(0x8DECB02F88F428BC, p0, p1, p2, p3, _r)
end

function Global.HasPickupBeenCollected(pickup)
	return _in(0x80EC48E6679313F9, pickup, _r)
end

function Global.HasPlayerBeenSpottedInStolenVehicle(player)
	return _in(0xC932F57F31EA9152, player, _r)
end

function Global.HasPlayerDamagedAtLeastOneNonAnimalPed(player)
	return _in(0x16C8D205DD5A2E90, player, _r)
end

function Global.HasPlayerDamagedAtLeastOnePed(player)
	return _in(0xDA4A4B9B96E20092, player, _r)
end

function Global.HasPlayerTeleportFinished(player)
	return _in(0xC39DCE4672CBFBC1, player, _r)
end

function Global.HasPtfxAssetLoaded()
	return _in(0x13A3F30A9ED0BC31, _r)
end

function Global.HasScriptLoaded(scriptName)
	return _in(0xE97BD36574F8B0A6, _ts(scriptName), _r)
end

function Global.HasScriptWithNameHashLoaded(scriptHash)
	return _in(0xA5D8E0C2F3C7EEBC, _ch(scriptHash), _r)
end

function Global.HasStreamedTextureDictLoaded(textureDict)
	return _in(0x54D6900929CCF162, _ts(textureDict), _r)
end

function Global.HasVehicleAssetLoaded(vehicleAsset)
	return _in(0xB935F3154BC913C8, vehicleAsset, _r)
end

function Global.HasVehicleRecordingBeenLoaded(p0, p1)
	return _in(0xBA9325BE372AB6EA, p0, _ii(p1) --[[ may be optional ]], _r)
end

function Global.HasWeaponGotWeaponComponent(weapon, addonHash)
	return _in(0x76A18844E743BF91, weapon, _ch(addonHash), _r)
end

function Global.HideHudAndRadarThisFrame()
	return _in(0x36CDD81627A6FCD2)
end

function Global.HideLoadingOnFadeThisFrame()
	return _in(0xEA600AABAF4B9084)
end

function Global.HidePedWeaponForScriptedCutscene(ped, toggle)
	return _in(0x6F6981D2253C208F, ped, toggle)
end

function Global.HidePickupObject(pickupObject, toggle)
	return _in(0x2777150CC7D9365E, pickupObject, toggle)
end

function Global.IgnoreNextRestart(toggle)
	return _in(0x6C9FF40FF1B69F8F, toggle)
end

function Global.IntToParticipantindex(value)
	return _in(0x58FF971FC8F2702C, value, _r, _ri)
end

function Global.IntToPlayerindex(value)
	return _in(0x748B3A65C2604C33, value, _r, _ri)
end

--- Note: the buffer should be exactly 32 bytes long
-- @param value :
-- @param format :
-- @param buffer :
function Global.IntToString(value, format, buffer)
	return _in(0xCF11C0CEB40C401B, value, _ts(format), _ts(buffer))
end

function Global.InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength)
	return _in(0xe3551879, _ts(referenceIdentity), _ts(argsSerialized), argsLength, _ii(retvalLength) --[[ may be optional ]], _r, _s)
end

function Global.IsAceAllowed(object)
	return _in(0x7ebb9929, _ts(object), _r)
end

function Global.IsAmbientSpeechDisabled(ped)
	return _in(0x932C2D096A2C3FFF, ped, _r)
end

function Global.IsAmbientSpeechPlaying(ped)
	return _in(0x9072C8B49907BFAD, ped, _r)
end

function Global.IsAnEntity(handle)
	return _in(0x27CFF3E5A286D3DF, handle, _r)
end

function Global.IsAnimalVocalizationPlaying(pedHandle)
	return _in(0xC265DF9FB44A9FBD, pedHandle, _r)
end

function Global.IsAnyAppRunning()
	return _in(0xDB30BEC7A7A5CBD3, _r, _ri)
end

function Global.IsAnyPedNearPoint(x, y, z, radius)
	return _in(0x083961498679DC9F, x, y, z, radius, _r)
end

function Global.IsAnyPedShootingInArea(x1, y1, z1, x2, y2, z2, p6, p7)
	return _in(0xA0D3D71EA1086C55, x1, y1, z1, x2, y2, z2, p6, p7, _r)
end

function Global.IsAnySpeechPlaying(ped)
	return _in(0x729072355FA39EC9, ped, _r)
end

function Global.IsAnyVehicleNearPoint(x, y, z, radius)
	return _in(0x5698BA4FD04D39C4, x, y, z, radius, _r)
end

function Global.IsAppActive(p0)
	return _in(0x25B7A0206BDFAC76, p0, _r, _ri)
end

function Global.IsAppRunning(p0)
	return _in(0x4E511D093A86AD49, p0, _r, _ri)
end

function Global.IsAudioSceneActive(scene)
	return _in(0xB65B60556E2A9225, _ts(scene), _r)
end

--- <!-- Native implemented by Disquse. 0xFFF65C63 -->
-- Returns true if the minimap is currently expanded. False if it's the normal minimap state.
-- Use [`IsBigmapFull`](#_0x66EE14B2) to check if the full map is currently revealed on the minimap.
-- @return A bool indicating if the minimap is currently expanded or normal state.
function Global.IsBigmapActive()
	return _in(0xfff65c63, _r)
end

--- <!-- Native implemented by Disquse. 0x66EE14B2 -->
-- Returns true if the full map is currently revealed on the minimap.
-- Use [`IsBigmapActive`](#_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
-- @return Returns true if the full map is currently revealed on the minimap.
function Global.IsBigmapFull()
	return _in(0x66ee14b2, _r)
end

function Global.IsBitSet(address, offset)
	return _in(0x4ED6CFDFE8D4131A, address, offset, _r)
end

function Global.IsBlipOnMinimap(blip)
	return _in(0x46534526B9CD2D17, blip, _r)
end

function Global.IsBulletInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x9D09D8493747CF02, p0, p1, p2, p3, p4, p5, p6, p7, _r)
end

function Global.IsBulletInArea(p0, p1, p2, p3, p4)
	return _in(0xC652FD308772D79E, p0, p1, p2, p3, p4, _r)
end

function Global.IsBulletInBox(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xC128137C52152741, p0, p1, p2, p3, p4, p5, p6, _r)
end

function Global.IsCamActive(cam)
	return _in(0x63EFCC7E1810B8E6, cam, _r)
end

function Global.IsCamInterpolating(cam)
	return _in(0x578F8F1CAA17BD2B, cam, _r)
end

function Global.IsCamRendering(cam)
	return _in(0x4415F8A6C536D39F, cam, _r)
end

function Global.IsCamShaking(cam)
	return _in(0x2EEB402BD7320159, cam, _r)
end

function Global.IsCinematicCamRendering()
	return _in(0xBF7C780731AADBF8, _r)
end

function Global.IsControlEnabled(padIndex, control)
	return _in(0x1CEA6BFDF248E5D9, padIndex, _ch(control), _r)
end

function Global.IsControlJustPressed(padIndex, control)
	return _in(0x580417101DDB492F, padIndex, _ch(control), _r)
end

function Global.IsControlJustReleased(padIndex, control)
	return _in(0x50F940259D3841E6, padIndex, _ch(control), _r)
end

function Global.IsControlPressed(padIndex, control)
	return _in(0xF3A21BCD95725A4A, padIndex, _ch(control), _r)
end

function Global.IsControlReleased(padIndex, control)
	return _in(0x648EE3E7F38877DD, padIndex, _ch(control), _r)
end

function Global.IsDamageTrackerActiveOnNetworkId(netID)
	return _in(0x6E192E33AD436366, netID, _r)
end

function Global.IsDecalAlive(decal)
	return _in(0x3E4B4E5CF5D3EEB5, decal, _r)
end

function Global.IsDisabledControlJustPressed(padIndex, control)
	return _in(0x91AEF906BCA88877, padIndex, _ch(control), _r)
end

function Global.IsDisabledControlJustReleased(padIndex, control)
	return _in(0x305C8DCD79DA8B0F, padIndex, _ch(control), _r)
end

function Global.IsDisabledControlPressed(padIndex, control)
	return _in(0xE2587F8CBBD87B1D, padIndex, _ch(control), _r)
end

function Global.IsDlcPresent(dlcHash)
	return _in(0x2763DC12BBE2BB6F, _ch(dlcHash), _r)
end

function Global.IsDoorClosed(doorHash)
	return _in(0xC531EE8A1145A149, _ch(doorHash), _r)
end

function Global.IsDoorRegisteredWithSystem(doorHash)
	return _in(0xC153C43EA202C8C1, _ch(doorHash), _r)
end

function Global.IsDrivebyTaskUnderneathDrivingTask(ped)
	return _in(0x8785E6E40C7A8818, ped, _r)
end

--- Returns whether or not a browser is created for a specified DUI browser object.
-- @param duiObject The DUI browser handle.
-- @return A boolean indicating TRUE if the browser is created.
function Global.IsDuiAvailable(duiObject)
	return _in(0x7aac3b4c, duiObject, _r)
end

--- Gets whether or not this is the CitizenFX server.
-- @return A boolean value.
function Global.IsDuplicityVersion()
	return _in(0xcf24c52e, _r)
end

function Global.IsDurangoVersion()
	return _in(0xD1CCC2A2639D325F, _r)
end

function Global.IsEntityAMissionEntity(entity)
	return _in(0x138190F64DB4BBD1, entity, _r)
end

function Global.IsEntityAPed(entity)
	return _in(0xCF8176912DDA4EA5, entity, _r)
end

function Global.IsEntityAVehicle(entity)
	return _in(0xC3D96AF45FCCEC4C, entity, _r)
end

function Global.IsEntityAnObject(entity)
	return _in(0x0A27A546A375FDEF, entity, _r)
end

function Global.IsEntityAtCoord(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9)
	return _in(0x5E58342602E94718, entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9, _r)
end

function Global.IsEntityAtEntity(entity1, entity2, xSize, ySize, zSize, p5, p6, p7)
	return _in(0xC057F02B837A27F6, entity1, entity2, xSize, ySize, zSize, p5, p6, p7, _r)
end

function Global.IsEntityAttached(entity)
	return _in(0xEE6AD63ABF59C0B7, entity, _r)
end

function Global.IsEntityAttachedToAnyObject(entity)
	return _in(0x306C1F6178F01AB3, entity, _r)
end

function Global.IsEntityAttachedToAnyPed(entity)
	return _in(0xC841153DED2CA89A, entity, _r)
end

function Global.IsEntityAttachedToAnyVehicle(entity)
	return _in(0x12DF6E0D2E736749, entity, _r)
end

function Global.IsEntityAttachedToEntity(from, to)
	return _in(0x154A3C529497053E, from, to, _r)
end

function Global.IsEntityDead(p0)
	return _in(0x7D5B1F88E7504BBA, p0, _r)
end

function Global.IsEntityFocus(entity)
	return _in(0xF87DE697E9A06EC6, entity, _r)
end

function Global.IsEntityInAir(p0, p1)
	return _in(0x886E37EC497200B6, p0, p1, _r)
end

function Global.IsEntityInAngledArea(entity, originX, originY, originZ, edgeX, edgeY, edgeZ, angle, p8, p9, p10)
	return _in(0xD3151E53134595E5, entity, originX, originY, originZ, edgeX, edgeY, edgeZ, angle, p8, p9, p10, _r)
end

function Global.IsEntityInArea(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9)
	return _in(0x0C2634C40A16193E, entity, x1, y1, z1, x2, y2, z2, p7, p8, p9, _r)
end

function Global.IsEntityInVolume(entity, volume, p2, p3)
	return _in(0x5A5526BC09C06623, entity, volume, p2, p3, _r)
end

function Global.IsEntityInWater(entity)
	return _in(0xDDE5C125AC446723, entity, _r)
end

function Global.IsEntityOccluded(entity)
	return _in(0x140188E884645624, entity, _r)
end

function Global.IsEntityOnFire(entity)
	return _in(0x1BD7C371CE257C3E, entity, _r)
end

function Global.IsEntityOnScreen(entity)
	return _in(0x613C15D5D8DB781F, entity, _r)
end

function Global.IsEntityPlayingAnim(entity, animDict, animName, taskFlag)
	return _in(0xDEE49D5CA6C49148, entity, _ts(animDict), _ts(animName), taskFlag, _r)
end

function Global.IsEntityStatic(entity)
	return _in(0x86468ADFA0F6B861, entity, _r)
end

function Global.IsEntityTouchingEntity(entity, targetEntity)
	return _in(0x9A2304A64C3C8423, entity, targetEntity, _r)
end

function Global.IsEntityTouchingModel(entity, modelHash)
	return _in(0x2AE3EBC8DEB9768B, entity, _ch(modelHash), _r)
end

function Global.IsEntityUpright(entity, angle)
	return _in(0xF6F6AFD8D4FB2658, entity, angle, _r)
end

function Global.IsEntityUpsidedown(entity)
	return _in(0x109DE3DA41AAD94A, entity, _r)
end

function Global.IsEntityVisible(entity)
	return _in(0xFFC96ECB7FA404CA, entity, _r)
end

function Global.IsEntityVisibleToScript(entity)
	return _in(0xF213C724E77F321A, entity, _r)
end

function Global.IsEntityWaitingForWorldCollision(entity)
	return _in(0x5E1CC2E8DC3111DD, entity, _r)
end

function Global.IsExplosionActiveInArea(explosionType, x1, y1, z1, x2, y2, z2)
	return _in(0xD96E82AEBFFAAFF0, explosionType, x1, y1, z1, x2, y2, z2, _r)
end

function Global.IsExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, angle)
	return _in(0x5AE661ECD18524C9, explosionType, x1, y1, z1, x2, y2, z2, angle, _r)
end

function Global.IsExplosionInArea(explosionType, x1, y1, z1, x2, y2, z2)
	return _in(0x8391BA4313A25AD3, explosionType, x1, y1, z1, x2, y2, z2, _r)
end

function Global.IsExplosionInSphere(explosionType, x, y, z, radius)
	return _in(0xD62DD846D82CBB90, explosionType, x, y, z, radius, _r)
end

function Global.IsFirstPersonAimCamActive()
	return _in(0xF63134C54B6EC212, _r)
end

function Global.IsFlowBlockLoaded(p0)
	return _in(0x10A93C057B6BD944, p0, _r, _ri)
end

function Global.IsFollowVehicleCamActive()
	return _in(0xA40C2F51FB589E9A, _r)
end

function Global.IsGameplayCamLookingBehind()
	return _in(0x8FE0D24FFD04D5A2, _r)
end

function Global.IsGameplayCamRendering()
	return _in(0x8660EA714834E412, _r)
end

function Global.IsGameplayCamShaking()
	return _in(0xEA4C5F4AA0A4DBEF, _r)
end

function Global.IsGameplayHintActive()
	return _in(0x2E04AB5FEE042D4A, _r)
end

function Global.IsHornActive(vehicle)
	return _in(0x9D6BFC12B05C6121, vehicle, _r)
end

function Global.IsHudHidden()
	return _in(0x71B72B478F8189DC, _r)
end

function Global.IsImapActive(imapHash)
	return _in(0xD779B9B910BD3B7C, _ch(imapHash), _r)
end

function Global.IsImapActive_2(imapHash)
	return _in(0x93AC1B91CB6D9913, _ch(imapHash), _r)
end

function Global.IsInItemset(itemset, p1)
	return _in(0xD1503C2EE2FE688C, itemset, p1, _r)
end

function Global.IsIncidentValid(incidentId)
	return _in(0x39F2B1BAD412246A, incidentId, _r)
end

function Global.IsInputDisabled(padIndex)
	return _in(0xA571D46727E2B718, padIndex, _r)
end

function Global.IsInteriorEntitySetActive(interior, entitySetName)
	return _in(0x32810CA2125F5842, interior, _ts(entitySetName), _r)
end

function Global.IsInteriorReady(interior)
	return _in(0x941560D2D45DBFC8, interior, _r)
end

function Global.IsInteriorRenderingDisabled()
	return _in(0x0F838D47DE58EDB2, _r)
end

function Global.IsInteriorScene()
	return _in(0x4200F14D6F840A9A, _r)
end

function Global.IsItemsetValid(itemset)
	return _in(0xD30765D153EF5C76, itemset, _r)
end

--- Same as GET_IS_LOADING_SCREEN_ACTIVE
function Global.IsLoadingScreenActive()
	return _in(0xB54ADBE65D528FCB, _r)
end

function Global.IsLookInverted()
	return _in(0x77B612531280010D, _r)
end

function Global.IsMinigameInProgress()
	return _in(0xF4D8BCD052E7EA1B, _r)
end

function Global.IsModelAPed(model)
	return _in(0xC3F09DE9D6D17DDA, _ch(model), _r)
end

function Global.IsModelAVehicle(model)
	return _in(0x354F62672DE7DB0A, _ch(model), _r)
end

function Global.IsModelInCdimage(model)
	return _in(0xD6F3B6D7716CFF8E, _ch(model), _r)
end

function Global.IsModelValid(model)
	return _in(0x392C8D8E07B70EFC, _ch(model), _r)
end

function Global.IsMountedWeaponTaskUnderneathDrivingTask(ped)
	return _in(0xA320EF046186FA3B, ped, _r)
end

function Global.IsMoveBlendRatioRunning(ped)
	return _in(0xD4D8636C0199A939, ped, _r)
end

function Global.IsMoveBlendRatioSprinting(ped)
	return _in(0x24A2AD74FA9814E2, ped, _r)
end

function Global.IsMoveBlendRatioStill(ped)
	return _in(0x349CE7B56DAFD95C, ped, _r)
end

function Global.IsMoveBlendRatioWalking(ped)
	return _in(0xF133BBBE91E1691F, ped, _r)
end

function Global.IsMpGamerTagActive(gamerTagId)
	return _in(0x6E1C31E14C7A5F97, gamerTagId, _r)
end

function Global.IsMultiplayerChatActive()
	return _in(0xBC19069D5FBB5C46, _r)
end

function Global.IsNamedRendertargetLinked(modelHash)
	return _in(0x707032835FF09AE7, _ch(modelHash), _r)
end

function Global.IsNamedRendertargetRegistered(name)
	return _in(0x3EE32F7964C40FE6, _ts(name), _r)
end

function Global.IsNavmeshLoadedInArea(x1, y1, z1, x2, y2, z2)
	return _in(0xF813C7E63F9062A5, x1, y1, z1, x2, y2, z2, _r)
end

function Global.IsNetworkIdOwnedByParticipant(netId)
	return _in(0xA1607996431332DF, netId, _r)
end

function Global.IsObjectVisible(object)
	return _in(0x8B32ACE6326A7546, object, _r)
end

function Global.IsOrbisVersion()
	return _in(0x88CFAE250D3E0C71, _r)
end

function Global.IsPauseMenuActive()
	return _in(0x535384D6067BA42E, _r)
end

function Global.IsPcVersion()
	return _in(0xB0FB6CFAA5A1C833, _r)
end

function Global.IsPedAPlayer(ped)
	return _in(0x12534C348C6CB68B, ped, _r)
end

function Global.IsPedActiveInScenario(p0, p1)
	return _in(0xAA135F9482C82CC3, p0, p1, _r)
end

function Global.IsPedAimingFromCover(ped)
	return _in(0x3998B1276A3300E5, ped, _r)
end

function Global.IsPedBeingArrested(ped)
	return _in(0x90A09F3A45FED688, ped, _r)
end

function Global.IsPedBeingJacked(ped)
	return _in(0x9A497FE2DF198913, ped, _r)
end

function Global.IsPedBeingStealthKilled(ped)
	return _in(0x863B23EFDE9C5DF2, ped, _r)
end

function Global.IsPedBeingStunned(ped, p1)
	return _in(0x4FBACCE3B4138EE8, ped, p1, _r)
end

function Global.IsPedClimbing(ped)
	return _in(0x53E8CB4F48BFE623, ped, _r)
end

function Global.IsPedCuffed(ped)
	return _in(0x74E559B3BC910685, ped, _r)
end

function Global.IsPedDeadOrDying(ped, p1)
	return _in(0x3317DEDB88C95038, ped, p1, _r)
end

function Global.IsPedDefensiveAreaActive(ped, p1)
	return _in(0xBA63D9FE45412247, ped, p1, _r)
end

function Global.IsPedDiving(ped)
	return _in(0x5527B8246FEF9B11, ped, _r)
end

function Global.IsPedEvasiveDiving(ped, evadingEntity)
	return _in(0x414641C26E105898, ped, _ii(evadingEntity) --[[ may be optional ]], _r)
end

function Global.IsPedFacingPed(ped, otherPed, angle)
	return _in(0xD71649DB0A545AA3, ped, otherPed, angle, _r)
end

function Global.IsPedFalling(ped)
	return _in(0xFB92A102F1C4DFA3, ped, _r)
end

function Global.IsPedFatallyInjured(ped)
	return _in(0xD839450756ED5A80, ped, _r)
end

function Global.IsPedFleeing(ped)
	return _in(0xBBCCE00B381F8482, ped, _r)
end

function Global.IsPedGettingIntoAVehicle(ped)
	return _in(0xBB062B2B5722478E, ped, _r)
end

function Global.IsPedGettingUp(ped)
	return _in(0x2A74E1D5F2F00EEC, ped, _r)
end

function Global.IsPedGoingIntoCover(ped)
	return _in(0x9F65DBC537E59AD5, ped, _r)
end

function Global.IsPedGroupMember(p0, p1, p2)
	return _in(0x9BB01E3834671191, p0, p1, p2, _r)
end

function Global.IsPedHangingOnToVehicle(ped)
	return _in(0x1C86D8AEF8254B78, ped, _r)
end

function Global.IsPedHeadingTowardsPosition(ped, x, y, z, p4)
	return _in(0xFCF37A457CB96DC0, ped, x, y, z, p4, _r)
end

function Global.IsPedHeadtrackingEntity(ped, entity)
	return _in(0x813A0A7C9D2E831F, ped, entity, _r)
end

function Global.IsPedHeadtrackingPed(ped1, ped2)
	return _in(0x5CD3CB88A7F8850D, ped1, ped2, _r)
end

function Global.IsPedHuman(ped)
	return _in(0xB980061DA992779D, ped, _r)
end

function Global.IsPedInAnyBoat(ped)
	return _in(0x2E0E1C2B4F6CB339, ped, _r)
end

function Global.IsPedInAnyHeli(ped)
	return _in(0x298B91AE825E5705, ped, _r)
end

function Global.IsPedInAnyPlane(ped)
	return _in(0x5FFF4CFC74D8FB80, ped, _r)
end

function Global.IsPedInAnyTaxi(ped)
	return _in(0x6E575D6A898AB852, ped, _r)
end

function Global.IsPedInAnyTrain(ped)
	return _in(0x6F972C1AB75A1ED0, ped, _r)
end

function Global.IsPedInAnyVehicle(ped, atGetIn)
	return _in(0x997ABD671D25CA0B, ped, atGetIn, _r)
end

function Global.IsPedInCombat(ped, target)
	return _in(0x4859F1FC66A6278E, ped, target, _r)
end

function Global.IsPedInCover(p0, p1, p2)
	return _in(0x60DFD0691A170B88, p0, p1, p2, _r)
end

function Global.IsPedInCoverFacingLeft(ped)
	return _in(0x845333B3150583AB, ped, _r)
end

function Global.IsPedInCurrentConversation(p0, p1, p2)
	return _in(0x049E937F18F4020C, p0, p1, p2, _r)
end

function Global.IsPedInFlyingVehicle(ped)
	return _in(0x9134873537FA419C, ped, _r)
end

function Global.IsPedInGroup(ped)
	return _in(0x5891CAC5D4ACFF74, ped, _r)
end

function Global.IsPedInMeleeCombat(ped)
	return _in(0x4E209B2C1EAD5159, ped, _r)
end

function Global.IsPedInModel(ped, modelHash)
	return _in(0x796D90EFB19AA332, ped, _ch(modelHash), _r)
end

function Global.IsPedInVehicle(ped, vehicle, atGetIn)
	return _in(0xA3EE4A07279BB9DB, ped, vehicle, atGetIn, _r)
end

function Global.IsPedInWrithe(ped)
	return _in(0xDEB6D52126E7D640, ped, _r)
end

function Global.IsPedInjured(ped)
	return _in(0x84A2DD9AC37C35C1, ped, _r)
end

function Global.IsPedJacking(ped)
	return _in(0x4AE4FF911DFB61DA, ped, _r)
end

function Global.IsPedJumping(ped)
	return _in(0xCEDABC5900A0BF97, ped, _r)
end

function Global.IsPedMale(ped)
	return _in(0x6D9F5FAA7488BA46, ped, _r)
end

function Global.IsPedModel(ped, modelHash)
	return _in(0xC9D55B1A358A5BF7, ped, _ch(modelHash), _r)
end

function Global.IsPedOnFoot(ped)
	return _in(0x01FEE67DB37F59B2, ped, _r)
end

function Global.IsPedOnMount(ped)
	return _in(0x460BC76A0E10655E, ped, _r)
end

function Global.IsPedOnSpecificVehicle(ped, vehicle)
	return _in(0xEC5F66E459AF3BB2, ped, vehicle, _r)
end

function Global.IsPedOnVehicle(p0, p1)
	return _in(0x67722AEB798E5FAB, p0, p1, _r)
end

function Global.IsPedOpeningADoor(ped)
	return _in(0x26AF0E8E30BD2A2C, ped, _r)
end

function Global.IsPedPerformingMeleeAction(p0, p1, p2)
	return _in(0xDCCA191DF9980FD7, p0, p1, p2, _r)
end

function Global.IsPedPlantingBomb(ped)
	return _in(0xC70B5FAE151982D8, ped, _r)
end

function Global.IsPedProne(ped)
	return _in(0xD6A86331A537A7B9, ped, _r)
end

function Global.IsPedRagdoll(ped)
	return _in(0x47E4E977581C5B55, ped, _r)
end

function Global.IsPedReloading(ped)
	return _in(0x24B100C68C645951, ped, _r)
end

function Global.IsPedRespondingToEvent(ped, event)
	return _in(0x625B774D75C87068, ped, event, _r)
end

function Global.IsPedRunning(ped)
	return _in(0xC5286FFC176F28A2, ped, _r)
end

function Global.IsPedRunningMobilePhoneTask(ped)
	return _in(0x2AFE52F782F25775, ped, _r)
end

function Global.IsPedRunningRagdollTask(ped)
	return _in(0xE3B6097CC25AA69E, ped, _r)
end

function Global.IsPedShooting(ped)
	return _in(0x34616828CD07F1A1, ped, _r)
end

function Global.IsPedSittingInAnyVehicle(ped)
	return _in(0x826AA586EDB9FEF8, ped, _r)
end

function Global.IsPedSittingInVehicle(ped, vehicle)
	return _in(0xA808AA1D79230FC2, ped, vehicle, _r)
end

function Global.IsPedSprinting(ped)
	return _in(0x57E457CD2C0FC168, ped, _r)
end

function Global.IsPedStill(ped)
	return _in(0xAC29253EEF8F0180, ped, _r)
end

function Global.IsPedStopped(ped)
	return _in(0x530944F6F4B8A214, ped, _r)
end

function Global.IsPedSwimming(ped)
	return _in(0x9DE327631295B4C2, ped, _r)
end

function Global.IsPedSwimmingUnderWater(ped)
	return _in(0xC024869A53992F34, ped, _r)
end

function Global.IsPedUsingActionMode(ped)
	return _in(0x00E73468D085F745, ped, _r)
end

function Global.IsPedUsingAnyScenario(ped)
	return _in(0x57AB4A3080F85143, ped, _r)
end

function Global.IsPedVaulting(ped)
	return _in(0x117C70D1F5730B5E, ped, _r)
end

function Global.IsPedWalking(ped)
	return _in(0xDE4C184B2B9B071A, ped, _r)
end

function Global.IsPedWeaponReadyToShoot(ped)
	return _in(0xB80CA294F2F26749, ped, _r)
end

function Global.IsPlaybackGoingOnForVehicle(vehicle)
	return _in(0x02774B3A9034278F, vehicle, _r)
end

function Global.IsPlaybackUsingAiGoingOnForVehicle(vehicle)
	return _in(0x5A7472606EC5B7C1, vehicle, _r)
end

function Global.IsPlayerBeingArrested(player, atArresting)
	return _in(0xC8183AE963C58374, player, atArresting, _r)
end

function Global.IsPlayerClimbing(player)
	return _in(0xB8A70C22FD48197A, player, _r)
end

function Global.IsPlayerControlOn(player)
	return _in(0x7964097FCE4C244B, player, _r)
end

function Global.IsPlayerDead(player)
	return _in(0x2E9C3FCB6798F397, player, _r)
end

function Global.IsPlayerFreeAiming(player)
	return _in(0x936F967D4BE1CE9D, player, _r)
end

function Global.IsPlayerFreeAimingAtEntity(player, entity)
	return _in(0x8C67C11C68713D25, player, entity, _r)
end

function Global.IsPlayerPlaying(player)
	return _in(0xBFFB35986CAAE58C, player, _r)
end

function Global.IsPlayerReadyForCutscene(player)
	return _in(0xAA67BCB0097F2FA3, player, _r)
end

function Global.IsPlayerRidingTrain(player)
	return _in(0x2FB0ACADA6A238DD, player, _r)
end

function Global.IsPlayerScriptControlOn(player)
	return _in(0xB78350754157C00F, player, _r)
end

function Global.IsPlayerSwitchInProgress()
	return _in(0xED20CB1F5297791D, _r)
end

function Global.IsPlayerTargettingAnything(player)
	return _in(0x4605C66E0F935F83, player, _r)
end

function Global.IsPlayerTargettingEntity(p0, p1, p2)
	return _in(0x27F89FDC16688A7A, p0, p1, p2, _r)
end

function Global.IsPlayerTeleportActive()
	return _in(0x085EEAEB8783FEB5, _r)
end

function Global.IsPlayerWantedLevelGreater(player, wantedLevel)
	return _in(0xE1C0AD4C24324C36, player, wantedLevel, _r)
end

function Global.IsPointInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x2A70BAE8883E4C81, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r)
end

function Global.IsPointOnRoad(x, y, z, vehicle)
	return _in(0x125BF4ABFC536B09, x, y, z, vehicle, _r)
end

function Global.IsPositionOccupied(x, y, z, range, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x825CA3ED43831015, x, y, z, range, p4, p5, p6, p7, p8, p9, p10, _r)
end

function Global.IsPrincipalAceAllowed(principal, object)
	return _in(0x37cf52ce, _ts(principal), _ts(object), _r)
end

function Global.IsProjectileInArea(x1, y1, z1, x2, y2, z2, ownedByPlayer)
	return _in(0x05B0061EFDFC8941, x1, y1, z1, x2, y2, z2, ownedByPlayer, _r)
end

function Global.IsProjectileTypeInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x928431F4133CD3D4, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r)
end

function Global.IsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, type, p7)
	return _in(0x04965FB9E14235C7, x1, y1, z1, x2, y2, z2, type, p7, _r)
end

function Global.IsProjectileTypeInRadius(p0, p1, p2, p3, p4, p5)
	return _in(0xF51C9BAAD9ED64C4, p0, p1, p2, p3, p4, p5, _r)
end

function Global.IsRadarHidden()
	return _in(0x1B82FD5FFA4D666E, _r)
end

function Global.IsRadarPreferenceSwitchedOn()
	return _in(0x81E47F0EE1F2B21E, _r)
end

function Global.IsScInboxValid(p0)
	return _in(0x74CF39E030A382C4, p0, _r)
end

function Global.IsScenarioGroupEnabled(scenarioGroup)
	return _in(0x367A09DED4E05B99, _ts(scenarioGroup), _r)
end

function Global.IsScenarioGroupEnabledHash(scenarioGroup)
	return _in(0xDCC374913DE6AAA6, _ch(scenarioGroup), _r)
end

function Global.IsScenarioOccupied(p0, p1, p2, p3, p4)
	return _in(0x788756D73AC2E07C, p0, p1, p2, p3, p4, _r)
end

function Global.IsScenarioTypeEnabled(scenarioType)
	return _in(0x3A815DB3EA088722, _ts(scenarioType), _r)
end

function Global.IsScreenFadedIn()
	return _in(0x37F9A426FBCF4AF2, _r)
end

function Global.IsScreenFadedOut()
	return _in(0xF5472C80DF2FF847, _r)
end

function Global.IsScreenFadingIn()
	return _in(0x0CECCC63FFA2EF24, _r)
end

function Global.IsScreenFadingOut()
	return _in(0x02F39BEFE7B88D00, _r)
end

function Global.IsScriptedConversationLoaded(p0)
	return _in(0xDF0D54BE7A776737, p0, _r)
end

function Global.IsScriptedSpeechPlaying(p0)
	return _in(0xCC9AA18DCC7084F4, p0, _r)
end

function Global.IsSeatWarpOnly(vehicle, seatIndex)
	return _in(0x7892685BF6D9775E, vehicle, seatIndex, _r)
end

function Global.IsShockingEventInSphere(type, x, y, z, radius)
	return _in(0x9DB47E16060D6354, type, x, y, z, radius, _r)
end

function Global.IsSphereVisible(x, y, z, radius)
	return _in(0x2E941B5FFA2989C6, x, y, z, radius, _r)
end

function Global.IsSphereVisibleToAnotherMachine(p0, p1, p2, p3, p4)
	return _in(0xD82CF8E64C8729D8, p0, p1, p2, p3, p4, _r)
end

function Global.IsSphereVisibleToPlayer(p0, p1, p2, p3, p4, p5)
	return _in(0xDC3A310219E5DA62, p0, p1, p2, p3, p4, p5, _r)
end

function Global.IsSrlLoaded()
	return _in(0x5C2C88512CF6DAFB, _r)
end

function Global.IsStreamPlaying(p0)
	return _in(0xD11FA52EB849D978, p0, _r)
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Returns whether an asynchronous streaming file registration completed.
-- @param registerAs The file name to check, for example `asset.ydr`.
-- @return Whether or not the streaming file has been registered.
function Global.IsStreamingFileReady(registerAs)
	return _in(0xa194934d, _ts(registerAs), _r)
end

function Global.IsStringNull(string)
	return _in(0x602102324604D96B, _ts(string), _r)
end

function Global.IsStringNullOrEmpty(string)
	return _in(0x2CF12F9ACF18F048, _ts(string), _r)
end

function Global.IsSystemUiBeingDisplayed()
	return _in(0x908258B6209E71F7, _r)
end

function Global.IsTaskMoveNetworkActive(ped)
	return _in(0x921CE12C489C4C41, ped, _r)
end

function Global.IsTaskMoveNetworkReadyForTransition(ped)
	return _in(0x30ED88D5E0C56A37, ped, _r)
end

function Global.IsThisModelABoat(model)
	return _in(0x799CFC7C5B743B15, _ch(model), _r)
end

function Global.IsThisModelATrain(model)
	return _in(0xFC08C8F8C1EDF174, _ch(model), _r)
end

function Global.IsThreadActive(threadId, p1)
	return _in(0x46E9AE36D8FA6417, threadId, p1, _r)
end

function Global.IsTimeLessThan(timeA, timeB)
	return _in(0xCB2CF5148012C8D0, timeA, timeB, _r)
end

function Global.IsTimeMoreThan(timeA, timeB)
	return _in(0xDE350F8651E4346C, timeA, timeB, _r)
end

function Global.IsTrackedPedVisible(ped)
	return _in(0x91C8E617F64188AC, ped, _r)
end

function Global.IsTrackedPointVisible(point)
	return _in(0xCBB056BA159FB48D, point, _r)
end

function Global.IsTvPlaylistItemPlaying(videoCliphash)
	return _in(0x4D562223E0EB65F3, _ch(videoCliphash), _r)
end

function Global.IsValidInterior(interior)
	return _in(0x017C1B3159F79F6C, interior, _r)
end

function Global.IsVehicleAlarmSet(vehicle)
	return _in(0xdc921211, vehicle, _r)
end

function Global.IsVehicleDoorFullyOpen(vehicle, doorIndex)
	return _in(0x7AE191143C7A9107, vehicle, doorIndex, _r)
end

function Global.IsVehicleDriveable(p0, p1, p2)
	return _in(0xB86D29B10F627379, p0, p1, p2, _r)
end

function Global.IsVehicleEngineStarting(vehicle)
	return _in(0xbb340d04, vehicle, _r)
end

function Global.IsVehicleExtraTurnedOn(vehicle, extraId)
	return _in(0xFA9A55D9C4351625, vehicle, extraId, _r)
end

function Global.IsVehicleInBurnout(vehicle)
	return _in(0x3F5029A8FC060C48, vehicle, _r)
end

function Global.IsVehicleInteriorLightOn(vehicle)
	return _in(0xa411f72c, vehicle, _r)
end

function Global.IsVehicleModel(vehicle, model)
	return _in(0x0045A54EC7A22455, vehicle, _ch(model), _r)
end

function Global.IsVehicleNeedsToBeHotwired(vehicle)
	return _in(0xf9933bf4, vehicle, _r)
end

function Global.IsVehicleNodeIdValid(vehicleNodeId)
	return _in(0x5829A02AF4F0B3CB, vehicleNodeId, _r)
end

function Global.IsVehicleOnAllWheels(vehicle)
	return _in(0x0D5D119529654EE0, vehicle, _r)
end

function Global.IsVehiclePreviouslyOwnedByPlayer(vehicle)
	return _in(0xf849ed67, vehicle, _r)
end

function Global.IsVehicleSeatFree(vehicle, seatIndex)
	return _in(0xE052C1B1CAA4ECE4, vehicle, seatIndex, _r)
end

function Global.IsVehicleStopped(vehicle)
	return _in(0x78C3311A73135241, vehicle, _r)
end

function Global.IsVehicleStuckTimerUp(vehicle, p1, p2)
	return _in(0x1ABA9753939503C5, vehicle, p1, p2, _r)
end

function Global.IsVehicleVisible(vehicle)
	return _in(0x424910CD5DE8C246, vehicle, _r)
end

function Global.IsVehicleWanted(vehicle)
	return _in(0xa7daf7c, vehicle, _r)
end

function Global.IsWaypointActive()
	return _in(0x202B1BBFC6AB5EE4, _r)
end

function Global.IsWaypointPlaybackGoingOnForPed(p0, p1)
	return _in(0xE03B3F2D3DC59B64, p0, p1, _r)
end

function Global.IsWaypointPlaybackGoingOnForVehicle(p0, p1)
	return _in(0xF5134943EA29868C, p0, p1, _r)
end

function Global.IsWeaponValid(weaponHash)
	return _in(0x937C71165CF334B3, _ch(weaponHash), _r)
end

function Global.ItemDatabaseCanEquipItemOnCategory(p0, p1, p2)
	return _in(0x856FF92C57742AE5, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseCreateItemCollection(p0, p1, p2)
	return _in(0x71EFA7999AE79408, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseDoesItemHaveTag(p0, p1, p2)
	return _in(0xFF5FB5605AD56856, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseFilloutAcquireCost(p0, p1, p2)
	return _in(0x74F7928816E4E181, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseFilloutBuyAwardAcquireCosts(p0, p1, p2, p3)
	return _in(0xB52E20F6767A09A2, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseFilloutItemEffectsIdInfo(p0, p1)
	return _in(0xCF2D360D27FD1ABF, p0, p1, _r, _ri)
end

function Global.ItemDatabaseFilloutItemEffectsIds(p0, p1)
	return _in(0x9379BE60DC55BBE6, p0, p1, _r, _ri)
end

function Global.ItemDatabaseFilloutItemInfo(p0, p1)
	return _in(0xFE90ABBCBFDC13B2, p0, p1, _r, _ri)
end

function Global.ItemDatabaseFilloutModifier(p0, p1, p2)
	return _in(0x60614A0AB580A2B5, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseFilloutPriceModifierByKey(p0, p1)
	return _in(0x40C5D95818823C94, p0, p1, _r, _ri)
end

function Global.ItemDatabaseFilloutSatchelData(p0, p1)
	return _in(0x4776EFD78F75C23F, p0, p1, _r, _ri)
end

function Global.ItemDatabaseFilloutSellPrice(p0, p1, p2)
	return _in(0x7A62A2EEDE1C3766, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseFilloutTagData(p0, p1, p2, p3)
	return _in(0x5A11D6EEA17165B0, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseFilloutUiData(p0, p1)
	return _in(0xB86F7CC2DC67AC60, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetAcquireCost(p0, p1, p2)
	return _in(0x6772A83C67A25775, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetAcquireCostsCount(p0)
	return _in(0x01FDDAD392D04144, p0, _r, _ri)
end

function Global.ItemDatabaseGetBundleId(p0)
	return _in(0x891A45960B6B768A, p0, _r, _ri)
end

function Global.ItemDatabaseGetBundleItemCount(p0, p1)
	return _in(0x3332695B01015DF9, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetBundleItemInfo(p0, p1, p2, p3)
	return _in(0x5D48A77E4B668B57, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseGetFitsSlotCount(p0)
	return _in(0x2970D1D6BFCF9B46, p0, _r, _ri)
end

function Global.ItemDatabaseGetFitsSlotInfo(p0, p1, p2)
	return _in(0x77210C146CED5261, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetHasSlotCount(p0)
	return _in(0x44915068579D7710, p0, _r, _ri)
end

function Global.ItemDatabaseGetHasSlotInfo(p0, p1, p2)
	return _in(0x8A9BD0DB7E8376CF, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetItemPriceModifiers(p0, p1)
	return _in(0x4EB37AAB79AB0C48, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetItemTagType(p0, p1)
	return _in(0x6111B8F9413F413A, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetModifiedPrice(p0, p1)
	return _in(0xCB92EC9C004732B4, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetNumberOfModifiedPrices(p0)
	return _in(0x5AAAF40E9B224F5E, p0, _r, _ri)
end

function Global.ItemDatabaseGetNumberOfModifiers(p0)
	return _in(0x1289D8315235856D, p0, _r, _ri)
end

function Global.ItemDatabaseGetShopInventoriesItemInfo(p0, p1, p2)
	return _in(0x4A79B41B4EB91F4E, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetShopInventoriesItemInfoByKey(p0, p1, p2)
	return _in(0xCFB06801F5099B25, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetShopInventoriesItemsCount(p0)
	return _in(0xC568B1A0F17C7025, p0, _r, _ri)
end

function Global.ItemDatabaseGetShopInventoriesRequirementGroupInfo(p0, p1, p2, p3)
	return _in(0x76C752D788A76813, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseGetShopInventoriesRequirementInfo(p0, p1, p2, p3, p4)
	return _in(0xE0EA5C031AE5539F, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutInfo(p0, p1)
	return _in(0x66A6D76B6BB999B4, p0, p1, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutMenuInfoById(p0, p1, p2)
	return _in(0xD66114469978B55B, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutMenuInfoByIndex(p0, p1, p2, p3)
	return _in(0xF04247092F193B75, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutMenuPageKey(p0, p1, p2, p3)
	return _in(0x9A60570657A7B635, p0, p1, p2, p3, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutPageInfoByKey(p0, p1, p2)
	return _in(0xB347C100DF0C9B7F, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutPageItemKey(p0, p1, p2, p3, p4, p5)
	return _in(0xF32BEF578B3DBAE8, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.ItemDatabaseGetShopLayoutRootMenuInfo(p0, p1, p2)
	return _in(0x86FCB565CCA0CFA7, p0, p1, p2, _r, _ri)
end

function Global.ItemDatabaseIsBuyAwardKeyValid(p0)
	return _in(0x4CE753203FA42214, p0, _r, _ri)
end

function Global.ItemDatabaseIsIntrinsicItem(p0)
	return _in(0x337F88E3A063995E, p0, _r, _ri)
end

function Global.ItemDatabaseIsKeyValid(p0, p1)
	return _in(0x6D5D51B188333FD1, p0, p1, _r, _ri)
end

function Global.ItemDatabaseIsOverpoweredItem(p0)
	return _in(0x337F88E3A063995F, p0, _r, _ri)
end

function Global.ItemDatabaseIsShopKeyValid(p0)
	return _in(0x00B9507D8E1D8716, p0, _r, _ri)
end

function Global.ItemDatabaseIsShopLayoutKeyValid(p0)
	return _in(0x3AFE5182C45A84F6, p0, _r, _ri)
end

function Global.ItemDatabaseLocalizationGetNumLabelTypes(p0)
	return _in(0xCEC6A41E8910486A, p0, _r, _ri)
end

function Global.ItemDatabaseLocalizationGetNumValues(p0, p1)
	return _in(0x49885D82A13EEAEA, p0, p1, _r, _ri)
end

function Global.ItemDatabaseLocalizationGetType(p0, p1)
	return _in(0xCABF5D41D0073D4A, p0, p1, _r, _ri)
end

function Global.ItemDatabaseLocalizationGetValue(p0, p1, p2)
	return _in(0x9AE5610FDCED6EA7, p0, p1, p2, _r, _ri)
end

function Global.JorunalClearAllProgress()
	return _in(0xF402978DE6F88D6E)
end

function Global.JorunalGetTextureWithLayout(p0, p1, p2)
	return _in(0x62CC549B3B8EA2AA, p0, p1, p2, _r, _ri)
end

function Global.JorunalMarkRead(p0)
	return _in(0xE4509BABE59BD24E, p0)
end

function Global.JournalCanWriteEntry(p0)
	return _in(0xCF782691D91F270E, p0, _r, _ri)
end

function Global.JournalGetEntryAtIndex(p0)
	return _in(0x3D16ABD7A1FD8C96, p0, _r, _ri)
end

function Global.JournalGetEntryCount()
	return _in(0xE65B5DE53351BE22, _r, _ri)
end

function Global.JournalGetEntryInfo(p0, p1)
	return _in(0x5514C3E60673530F, p0, p1, _r, _ri)
end

function Global.JournalGetGrimeAtIndex(p0)
	return _in(0xCB5945E1B855852F, p0, _r, _ri)
end

function Global.JournalWriteEntry(p0)
	return _in(0x6DFDD665E416B093, p0)
end

function Global.KnockOffPedProp(ped, p1, p2, p3, p4)
	return _in(0x6FD7816A36615F48, ped, p1, p2, p3, p4)
end

function Global.KnockPedOffVehicle(ped)
	return _in(0x45BBCBA77C29A841, ped)
end

function Global.LaunchAppByHash(p0)
	return _in(0xC8FC7F4E4CF4F581, p0, _r, _ri)
end

function Global.LaunchAppByHashWithEntry(p0, p1)
	return _in(0xC1BCF31E975B3195, p0, p1, _r, _ri)
end

function Global.LaunchAppWithEntry(p0, p1)
	return _in(0x7B2027BAC5C8EC89, p0, p1, _r, _ri)
end

function Global.LinkNamedRendertarget(modelHash)
	return _in(0x2F506B8556242DDB, _ch(modelHash))
end

function Global.LoadAnimScene(animScene)
	return _in(0xAF068580194D9DC7, animScene)
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

function Global.LoadStream(streamName, soundSet)
	return _in(0x1F1F957154EC51DF, _ts(streamName), _ts(soundSet), _r)
end

function Global.LocalizationGetSystemLanguage()
	return _in(0x3C1A05F86AE6ACB5, _r, _ri)
end

function Global.LocalizationGetUserLanguage()
	return _in(0x76E30B799EBEEA0F, _r, _ri)
end

function Global.LockMinimapAngle(angle)
	return _in(0x0BFD145EF819FB3A, angle)
end

function Global.LogAddEntryHash(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x69D5479982355D8F, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.LogAddOrUpdateObjective(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xB43163388484CC87, p0, p1, p2, p3, p4, p5, p6)
end

function Global.LogAddTotalTakeEntry(p0, p1, p2, p3, p4)
	return _in(0x60C59968E8E87E6B, p0, p1, p2, p3, p4)
end

function Global.LogClearAllEntries()
	return _in(0xB95B4EA6B1EDF035)
end

function Global.LogClearCachedObjective()
	return _in(0xDFF0D417277B41F8)
end

function Global.LogClearHasDisplayedCachedObjective()
	return _in(0xA3108D6981A5CADB)
end

function Global.LogGetCachedObjective()
	return _in(0x15A4461BEB788096, _r, _ri)
end

function Global.LogHasDisplayedCachedObjective()
	return _in(0xCC48FFBB45B54F71, _r, _ri)
end

function Global.LogIsEntryRegistered(p0, p1)
	return _in(0xB8188CCF52202475, p0, p1, _r, _ri)
end

function Global.LogMarkAllEntriesAvailability(p0, p1)
	return _in(0x3920574CF0A2B7B6, p0, p1)
end

function Global.LogMarkEntryAvailability(p0, p1, p2, p3)
	return _in(0x13E8D7DD08543482, p0, p1, p2, p3)
end

function Global.LogMarkMissionCompleted(p0)
	return _in(0xDE31D66D1E54C471, p0)
end

function Global.LogPostNotification(data)
	return _in(0x49E58FE6EF40B987, _ii(data) --[[ may be optional ]], _r, _ri)
end

function Global.LogPrintCachedObjective()
	return _in(0xE9990552DEC71600)
end

function Global.LogRemoveEntry(p0, p1)
	return _in(0xD594A19BE09A75C6, p0, p1)
end

function Global.LogSetCachedObjective(p0)
	return _in(0xFA233F8FE190514C, p0)
end

function Global.LogSetEntryBriefTexture(p0, p1, p2, p3)
	return _in(0x69684D9936958D8F, p0, p1, p2, p3)
end

function Global.LogSetEntryIconTexture(p0, p1, p2, p3)
	return _in(0x6965469934958D8F, p0, p1, p2, p3)
end

function Global.LogSetEntryPinned(p0, p1, p2)
	return _in(0x72A5CD214B342568, p0, p1, p2)
end

function Global.LogSetHasDisplayedCachedObjective()
	return _in(0xA3108D6981A5CADC)
end

function Global.LogSetPendingDetailsId(p0, p1)
	return _in(0x136A027CF37B0A4F, p0, p1, _r, _ri)
end

function Global.LogSetTotalTakeSummary(p0, p1)
	return _in(0xD106B211EF1B8F04, p0, p1)
end

function Global.LogUpdateEntrySubheader(p0, p1, p2)
	return _in(0x80D6524190258C3E, p0, p1, p2)
end

function Global.MarkObjectForDeletion(object)
	return _in(0xADBE4809F19F927A, object)
end

function Global.MinigameGetNextEvent(p0, p1)
	return _in(0xDF728C5AE137FC13, p0, p1, _r, _ri)
end

function Global.MinigameGetNextEventType()
	return _in(0x578907F59BA01B6C, _r, _ri)
end

function Global.MinigameIsConnectedToServer(p0)
	return _in(0x2A0C4736AC5AF0CE, p0, _r, _ri)
end

function Global.MinigameIsRequestPending(p0)
	return _in(0x9105A4A2556FA937, p0, _r, _ri)
end

function Global.MinigameLeaveTable(p0)
	return _in(0xF5446E47941E654C, p0, _r, _ri)
end

function Global.MinigamePopNextEvent()
	return _in(0x833E03BAEBADC4B0)
end

function Global.MinigameRequestSeatAtTable(data)
	return _in(0xF6AC6085D8D6C004, _ii(data) --[[ may be optional ]], _r)
end

function Global.MissiondataGetHighScore(p0)
	return _in(0x9AABABF8313C3516, p0, _r, _ri)
end

function Global.MissiondataGetReplayState(p0)
	return _in(0x8C32D86E9556ED86, p0, _r, _ri)
end

function Global.MissiondataSetHighScore(p0, p1)
	return _in(0x3A04F0169DA87A9D, p0, p1)
end

function Global.MissiondataSetRatingScores(p0, p1, p2, p3)
	return _in(0x12F65317708749A5, p0, p1, p2, p3)
end

function Global.ModifyVehicleTopSpeed(vehicle, value)
	return _in(0x35AD938C74CACD6A, vehicle, value)
end

function Global.MoneyDecrementCashBalance(amount)
	return _in(0x466BC8769CF26A7A, amount, _r)
end

function Global.MoneyGetCashBalance()
	return _in(0x0C02DABFA3B98176, _r, _ri)
end

function Global.MoneyIncrementCashBalance(amount, p1)
	return _in(0xBC3422DC91667621, amount, p1, _r)
end

function Global.N_0x00000000467f4caa()
	return _in(0x00000000467F4CAA, _r, _ri)
end

function Global.N_0x0000000085488c49()
	return _in(0x0000000085488C49, _r, _ri)
end

function Global.N_0x00000000eb2d93b3()
	return _in(0x00000000EB2D93B3, _r, _ri)
end

function Global.N_0x0000a8acdc2e1b6a(p0, p1)
	return _in(0x0000A8ACDC2E1B6A, p0, p1)
end

function Global.N_0x000fa7a4a8443af7(p0)
	return _in(0x000FA7A4A8443AF7, p0)
end

function Global.N_0x002aac783ed323ed(p0, p1)
	return _in(0x002AAC783ED323ED, p0, p1)
end

function Global.N_0x002babe0b7d53136(p0)
	return _in(0x002BABE0B7D53136, p0)
end

function Global.N_0x005e6f28dd7ed58d(p0, p1)
	return _in(0x005E6F28DD7ED58D, p0, p1, _r, _ri)
end

function Global.N_0x0060b31968e60e41(p0)
	return _in(0x0060B31968E60E41, p0, _r, _ri)
end

function Global.N_0x007aac783ed323ed(p0, p1, p2)
	return _in(0x007AAC783ED323ED, p0, p1, p2)
end

function Global.N_0x007bd043587f7c82(p0)
	return _in(0x007BD043587F7C82, p0, _r, _ri)
end

function Global.N_0x007ff852dcf49da4(p0)
	return _in(0x007FF852DCF49DA4, p0)
end

function Global.N_0x009cf9a29972c298(p0)
	return _in(0x009CF9A29972C298, p0)
end

function Global.N_0x00a15b94cba4f76f(p0)
	return _in(0x00A15B94CBA4F76F, p0)
end

function Global.N_0x00b156afebcc5ae0(p0)
	return _in(0x00B156AFEBCC5AE0, p0)
end

function Global.N_0x00b380ff2df6ab7a(p0, p1)
	return _in(0x00B380FF2DF6AB7A, p0, p1)
end

function Global.N_0x00ba333da05adc23(p0, p1)
	return _in(0x00BA333DA05ADC23, p0, p1)
end

function Global.N_0x00bbf7ceae8c666a(p0, p1, p2, p3, p4, p5)
	return _in(0x00BBF7CEAE8C666A, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x00db0bc05e3faa4e(p0, p1)
	return _in(0x00DB0BC05E3FAA4E, p0, p1)
end

function Global.N_0x00eb5a760638db55(p0, p1, p2)
	return _in(0x00EB5A760638DB55, p0, p1, p2)
end

function Global.N_0x00ee08603eadee92(p0)
	return _in(0x00EE08603EADEE92, p0)
end

function Global.N_0x00f611a794a3c36e(p0)
	return _in(0x00F611A794A3C36E, p0)
end

function Global.N_0x00ffe0f85253c572(p0)
	return _in(0x00FFE0F85253C572, p0, _r, _ri)
end

function Global.N_0x0105fee8f9091255(p0, p1)
	return _in(0x0105FEE8F9091255, p0, p1, _r, _ri)
end

function Global.N_0x012027c28f421f46(p0, p1)
	return _in(0x012027C28F421F46, p0, p1, _r, _ri)
end

function Global.N_0x012701ed938b85de(p0, p1)
	return _in(0x012701ED938B85DE, p0, p1)
end

function Global.N_0x0139637a3bff8b6d(p0, p1)
	return _in(0x0139637A3BFF8B6D, p0, p1, _r, _ri)
end

function Global.N_0x013a7ba5015c1372(p0, p1)
	return _in(0x013A7BA5015C1372, p0, p1)
end

function Global.N_0x01708e8dd3ff8c65(p0, p1, p2, p3, p4, p5)
	return _in(0x01708E8DD3FF8C65, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x017492b2201e3428(p0, p1, p2, p3)
	return _in(0x017492B2201E3428, p0, p1, p2, p3)
end

function Global.N_0x018f30d762e62df8(p0, p1)
	return _in(0x018F30D762E62DF8, p0, p1, _r, _ri)
end

function Global.N_0x01af8a3729231a43(p0)
	return _in(0x01AF8A3729231A43, p0, _r, _ri)
end

function Global.N_0x01b21b81865e2a1f(p0, p1)
	return _in(0x01B21B81865E2A1F, p0, p1)
end

function Global.N_0x01b928ca2e198b01(p0)
	return _in(0x01B928CA2E198B01, p0, _r, _ri)
end

function Global.N_0x01f4d242765c6b24(p0)
	return _in(0x01F4D242765C6B24, p0, _r, _ri)
end

function Global.N_0x01f661bb9c71b465(p0, p1, p2)
	return _in(0x01F661BB9C71B465, p0, p1, p2)
end

function Global.N_0x02389579a53c3276(p0, p1, p2, p3)
	return _in(0x02389579A53C3276, p0, p1, p2, p3)
end

function Global.N_0x024ec9b649111915(p0, p1)
	return _in(0x024EC9B649111915, p0, p1)
end

function Global.N_0x025a1b1fb03fbf61(p0, p1, p2, p3, p4)
	return _in(0x025A1B1FB03FBF61, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x025e98e317652cdd(p0)
	return _in(0x025E98E317652CDD, p0)
end

function Global.N_0x027cab2c3af27010()
	return _in(0x027CAB2C3AF27010)
end

function Global.N_0x0286617c8fc50a53(p0, p1, p2, p3)
	return _in(0x0286617C8FC50A53, p0, p1, p2, p3)
end

function Global.N_0x028e7b3bba0bd2fc(p0)
	return _in(0x028E7B3BBA0BD2FC, p0)
end

function Global.N_0x028f76b6e78246eb(p0, p1, p2, p3)
	return _in(0x028F76B6E78246EB, p0, p1, p2, p3)
end

function Global.N_0x029884fb65821b07(p0)
	return _in(0x029884FB65821B07, p0, _r, _ri)
end

function Global.N_0x02aa2096fe00f3e1(p0, p1)
	return _in(0x02AA2096FE00F3E1, p0, p1, _r, _ri)
end

function Global.N_0x02b21b6beedd83cc(p0, p1)
	return _in(0x02B21B6BEEDD83CC, p0, p1, _r, _ri)
end

function Global.N_0x02bcc0fe9eba3529(p0, p1, p2, p3, p4)
	return _in(0x02BCC0FE9EBA3529, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x02c4c6c2900d84df(p0, p1)
	return _in(0x02C4C6C2900D84DF, p0, p1)
end

function Global.N_0x02e741e19e39628c(p0, p1)
	return _in(0x02E741E19E39628C, p0, p1)
end

function Global.N_0x02e97ce283648cd9(p0)
	return _in(0x02E97CE283648CD9, p0, _r, _ri)
end

function Global.N_0x02ebbb3989b7e695(p0)
	return _in(0x02EBBB3989B7E695, p0, _r, _ri)
end

function Global.N_0x0317c947d062854e(p0)
	return _in(0x0317C947D062854E, p0, _r, _ri)
end

function Global.N_0x032a14d082a9b269(p0)
	return _in(0x032A14D082A9B269, p0)
end

function Global.N_0x0335106f3acabbed(p0)
	return _in(0x0335106F3ACABBED, p0, _r, _ri)
end

function Global.N_0x033ee4b89f3ac545(p0, p1, p2)
	return _in(0x033EE4B89F3AC545, p0, p1, p2, _r, _ri)
end

function Global.N_0x0348469daa17576c(p0)
	return _in(0x0348469DAA17576C, p0)
end

function Global.N_0x0349404a22736740(p0, p1, p2)
	return _in(0x0349404A22736740, p0, p1, p2)
end

function Global.N_0x0355fe37240e2c77(p0, p1)
	return _in(0x0355FE37240E2C77, p0, p1)
end

function Global.N_0x0358b8a41916c613(p0, p1, p2, p3)
	return _in(0x0358B8A41916C613, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x0365000d8bf86531(p0)
	return _in(0x0365000D8BF86531, p0, _r, _ri)
end

function Global.N_0x0378c08504160d0d(p0)
	return _in(0x0378C08504160D0D, p0, _r)
end

function Global.N_0x038b1f1674f0e242(p0)
	return _in(0x038B1F1674F0E242, p0, _r, _ri)
end

function Global.N_0x03b4b759a8990505(p0)
	return _in(0x03B4B759A8990505, p0, _r, _ri)
end

function Global.N_0x03b61cd51097de60(p0)
	return _in(0x03B61CD51097DE60, p0, _r, _ri)
end

function Global.N_0x03c03abbabbef752()
	return _in(0x03C03ABBABBEF752, _r, _ri)
end

function Global.N_0x03ddbf2d73799f9e(p0)
	return _in(0x03DDBF2D73799F9E, p0)
end

function Global.N_0x04019ae4956d4393(p0, p1, p2)
	return _in(0x04019AE4956D4393, p0, p1, p2, _r, _ri)
end

function Global.N_0x04084490cc302cfb()
	return _in(0x04084490CC302CFB)
end

function Global.N_0x040ee319efd1d3b5()
	return _in(0x040EE319EFD1D3B5)
end

function Global.N_0x041d17a9e221ae30(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x041D17A9E221AE30, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x0455546f23ff08e4(p0)
	return _in(0x0455546F23FF08E4, p0, _r, _ri)
end

function Global.N_0x049d2196d9d11184()
	return _in(0x049D2196D9D11184, _r)
end

function Global.N_0x049d5c615bd38bad(p0, p1, p2)
	return _in(0x049D5C615BD38BAD, p0, p1, p2, _r, _ri)
end

function Global.N_0x04aa59ca40571c2e(p0, p1)
	return _in(0x04AA59CA40571C2E, p0, p1, _r, _ri)
end

function Global.N_0x04d1d4e411ce52d0(p0, p1)
	return _in(0x04D1D4E411CE52D0, p0, p1)
end

function Global.N_0x04d7f33640662fa2(p0)
	return _in(0x04D7F33640662FA2, p0, _r, _ri)
end

function Global.N_0x04f0579dbdd32f34(p0)
	return _in(0x04F0579DBDD32F34, p0)
end

function Global.N_0x0501d52d24ea8934(p0)
	return _in(0x0501D52D24EA8934, p0, _r, _ri)
end

function Global.N_0x0516fae561276efc(p0)
	return _in(0x0516FAE561276EFC, p0, _r, _ri)
end

function Global.N_0x052d4ac0922af91a(p0, p1)
	return _in(0x052D4AC0922AF91A, p0, p1)
end

function Global.N_0x054473164c012699(p0)
	return _in(0x054473164C012699, p0, _r, _ri)
end

function Global.N_0x0552aa3ffc5b87aa(p0, p1)
	return _in(0x0552AA3FFC5B87AA, p0, p1)
end

function Global.N_0x0556c784fa056628(p0, p1)
	return _in(0x0556C784FA056628, p0, p1, _r, _ri)
end

function Global.N_0x0556e9d2ecf39d01(p0)
	return _in(0x0556E9D2ECF39D01, p0, _r, _ri)
end

function Global.N_0x057c4f092e2298be(p0, p1, p2)
	return _in(0x057C4F092E2298BE, p0, p1, p2)
end

function Global.N_0x05a0100ea714db68(p0, p1)
	return _in(0x05A0100EA714DB68, p0, p1, _r, _ri)
end

function Global.N_0x05ab44d906738426()
	return _in(0x05AB44D906738426)
end

function Global.N_0x05ac9e1e02975afb(p0, p1, p2)
	return _in(0x05AC9E1E02975AFB, p0, p1, p2)
end

function Global.N_0x05bd5e4088b30a66(p0, p1)
	return _in(0x05BD5E4088B30A66, p0, p1)
end

function Global.N_0x05ce6af4df071d23(p0, p1)
	return _in(0x05CE6AF4DF071D23, p0, p1)
end

function Global.N_0x05d6195fb4d428f4(p0)
	return _in(0x05D6195FB4D428F4, p0, _r, _ri)
end

function Global.N_0x05dd384f39de1c8c(p0, p1)
	return _in(0x05DD384F39DE1C8C, p0, p1, _r, _ri)
end

function Global.N_0x0608326f7b98c08d(p0, p1)
	return _in(0x0608326F7B98C08D, p0, p1)
end

function Global.N_0x06087579e7aa85a9(p0, p1, p2, p3, p4, p5)
	return _in(0x06087579E7AA85A9, p0, p1, p2, p3, p4, p5, _r)
end

function Global.N_0x060bbad634c2b44b()
	return _in(0x060BBAD634C2B44B, _r, _ri)
end

function Global.N_0x062b4a4a3396351d(p0)
	return _in(0x062B4A4A3396351D, p0)
end

function Global.N_0x062d5ead4da2fa6a()
	return _in(0x062D5EAD4DA2FA6A)
end

function Global.N_0x06557f6d96c86881()
	return _in(0x06557F6D96C86881)
end

function Global.N_0x065887b694359799(p0)
	return _in(0x065887B694359799, p0)
end

function Global.N_0x065d03a9d6b2c6b5(p0, p1)
	return _in(0x065D03A9D6B2C6B5, p0, p1)
end

function Global.N_0x066167c63111d8cf(p0, p1, p2, p3, p4)
	return _in(0x066167C63111D8CF, p0, p1, p2, p3, p4)
end

function Global.N_0x069eddf1fd4deb0a(p0, p1)
	return _in(0x069EDDF1FD4DEB0A, p0, p1)
end

function Global.N_0x06a09a6e0c6d2a84(p0, p1)
	return _in(0x06A09A6E0C6D2A84, p0, p1)
end

function Global.N_0x06a10b4d7f50b0c3(p0)
	return _in(0x06A10B4D7F50B0C3, p0, _r, _ri)
end

function Global.N_0x06aade17334f7a40(p0, p1, p2, p3)
	return _in(0x06AADE17334F7A40, p0, p1, p2, p3)
end

function Global.N_0x06c0d8bb6b04a709()
	return _in(0x06C0D8BB6B04A709, _r, _ri)
end

function Global.N_0x06c5df5ee444bc6b(p0, p1, p2, p3, p4)
	return _in(0x06C5DF5EE444BC6B, p0, p1, p2, p3, p4)
end

function Global.N_0x06d26a96ca1bca75(p0, p1, p2, p3)
	return _in(0x06D26A96CA1BCA75, p0, p1, p2, p3)
end

function Global.N_0x06e1fb78b1e59ca5(p0, p1)
	return _in(0x06E1FB78B1E59CA5, p0, p1)
end

function Global.N_0x06fa94c835787c64(p0)
	return _in(0x06FA94C835787C64, p0, _r, _ri)
end

function Global.N_0x070a3841406c43d5(p0, p1)
	return _in(0x070A3841406C43D5, p0, p1)
end

function Global.N_0x071769bcb24379e5()
	return _in(0x071769BCB24379E5, _r, _ri)
end

function Global.N_0x0730e518486deec3(p0)
	return _in(0x0730E518486DEEC3, p0)
end

function Global.N_0x0751d461f06e41ce(p0, p1, p2, p3)
	return _in(0x0751D461F06E41CE, p0, p1, p2, p3)
end

function Global.N_0x07559b29950301ff(p0, p1)
	return _in(0x07559B29950301FF, p0, p1)
end

function Global.N_0x0760d6f70ebcc05c(p0)
	return _in(0x0760D6F70EBCC05C, p0, _r, _ri)
end

function Global.N_0x07706c4cc9c6cc9e(p0, p1, p2, p3, p4)
	return _in(0x07706C4CC9C6CC9E, p0, p1, p2, p3, p4)
end

function Global.N_0x0772f87d7b07719a(p0, p1, p2)
	return _in(0x0772F87D7B07719A, p0, p1, p2, _r, _ri)
end

function Global.N_0x078076ab50fb117f(p0, p1, p2, p3, p4, p5)
	return _in(0x078076AB50FB117F, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x078f77fd1a43eab3(p0, p1)
	return _in(0x078F77FD1A43EAB3, p0, p1)
end

function Global.N_0x0790473eee1977d3(p0)
	return _in(0x0790473EEE1977D3, p0, _r, _ri)
end

function Global.N_0x0794199b25e499e1(p0, p1)
	return _in(0x0794199B25E499E1, p0, p1)
end

function Global.N_0x07954320d77f6a3d(p0)
	return _in(0x07954320D77F6A3D, p0, _r, _ri)
end

function Global.N_0x07a6f6447eca9b64(p0, p1)
	return _in(0x07A6F6447ECA9B64, p0, p1, _r, _ri)
end

function Global.N_0x07ad9e43fd478527(p0, p1)
	return _in(0x07AD9E43FD478527, p0, p1, _r)
end

function Global.N_0x07c0f87aac57f2e4(p0, p1)
	return _in(0x07C0F87AAC57F2E4, p0, p1)
end

function Global.N_0x07e1c35f0078c3f9(p0, p1)
	return _in(0x07E1C35F0078C3F9, p0, p1, _r, _ri)
end

function Global.N_0x07e2e21e799080a0(p0, p1)
	return _in(0x07E2E21E799080A0, p0, p1)
end

function Global.N_0x07e8b8b20570271c(p0)
	return _in(0x07E8B8B20570271C, p0)
end

function Global.N_0x07ea5b053fa60ac7(p0, p1)
	return _in(0x07EA5B053FA60AC7, p0, p1)
end

function Global.N_0x07fb139b592fa687(p0, p1, p2, p3)
	return _in(0x07FB139B592FA687, p0, p1, p2, p3, _r)
end

function Global.N_0x0816c31480764ab0(p0, p1, p2, p3)
	return _in(0x0816C31480764AB0, p0, p1, p2, p3)
end

function Global.N_0x082c043c7afc3747(p0, p1)
	return _in(0x082C043C7AFC3747, p0, p1)
end

function Global.N_0x083d497d57b7400f(p0)
	return _in(0x083D497D57B7400F, p0, _r, _ri)
end

function Global.N_0x085c5b61a0114f32(p0, p1)
	return _in(0x085C5B61A0114F32, p0, p1)
end

function Global.N_0x086549f3b0381cb1(p0, p1)
	return _in(0x086549F3B0381CB1, p0, p1)
end

function Global.N_0x0869d499a7848309(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x0869D499A7848309, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x0876326238914a3f()
	return _in(0x0876326238914A3F)
end

function Global.N_0x08797a8c03868cb8(p0)
	return _in(0x08797A8C03868CB8, p0)
end

function Global.N_0x087d8f4bc65f68e4(p0)
	return _in(0x087D8F4BC65F68E4, p0)
end

function Global.N_0x08892122769770d5(popZone, p1)
	return _in(0x08892122769770D5, popZone, p1)
end

function Global.N_0x08c5825a2932ea7b(p0)
	return _in(0x08C5825A2932EA7B, p0, _r, _ri)
end

function Global.N_0x08e22898a6af4905(p0, p1)
	return _in(0x08E22898A6AF4905, p0, p1)
end

function Global.N_0x08fc896d2cb31fcc(p0, p1)
	return _in(0x08FC896D2CB31FCC, p0, p1, _r, _ri)
end

function Global.N_0x08ff1099ed2e6e21(p0)
	return _in(0x08FF1099ED2E6E21, p0, _r, _ri)
end

function Global.N_0x09034479e6e3e269(p0, p1, p2)
	return _in(0x09034479E6E3E269, p0, p1, p2, _r, _ri)
end

function Global.N_0x0909f71b5c070797()
	return _in(0x0909F71B5C070797, _r, _ri)
end

function Global.N_0x09171a6f8fde5dc1(p0, p1, p2, p3, p4)
	return _in(0x09171A6F8FDE5DC1, p0, p1, p2, p3, p4)
end

function Global.N_0x0918e3565c20f03c(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x0918E3565C20F03C, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x0939e773925c4719()
	return _in(0x0939E773925C4719)
end

function Global.N_0x093a9d1f72df0d19(p0, p1)
	return _in(0x093A9D1F72DF0D19, p0, p1)
end

function Global.N_0x0943113e02322164(p0, p1)
	return _in(0x0943113E02322164, p0, p1, _r, _ri)
end

function Global.N_0x095c2277fed731db(p0)
	return _in(0x095C2277FED731DB, p0, _r, _ri)
end

function Global.N_0x0961b089947ba6d0(p0)
	return _in(0x0961B089947BA6D0, p0)
end

function Global.N_0x098036cab8373d36(p0)
	return _in(0x098036CAB8373D36, p0)
end

function Global.N_0x098caa6dbe7d8d82(p0, p1)
	return _in(0x098CAA6DBE7D8D82, p0, p1)
end

function Global.N_0x09937eb0cebc2f9f()
	return _in(0x09937EB0CEBC2F9F, _r, _ri)
end

function Global.N_0x099d4a855d53b03b(p0, p1, p2)
	return _in(0x099D4A855D53B03B, p0, p1, p2)
end

function Global.N_0x09a1c7dfdce54fbc(p0)
	return _in(0x09A1C7DFDCE54FBC, p0)
end

function Global.N_0x09b83e68de004cd4(p0)
	return _in(0x09B83E68DE004CD4, p0, _r, _ri)
end

function Global.N_0x09c28f828ee674fa(p0, p1, p2)
	return _in(0x09C28F828EE674FA, p0, p1, p2)
end

function Global.N_0x09c970ae59abf6b2(vehicle, p1)
	return _in(0x09C970AE59ABF6B2, vehicle, p1)
end

function Global.N_0x09d7afd3716da8e1(p0, p1)
	return _in(0x09D7AFD3716DA8E1, p0, p1, _r, _ri)
end

function Global.N_0x09e378c52b1433b5(p0, p1, p2, p3, p4)
	return _in(0x09E378C52B1433B5, p0, p1, p2, p3, p4)
end

function Global.N_0x09ee00b8f858e0be(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x09EE00B8F858E0BE, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x09fbf15d73efc900()
	return _in(0x09FBF15D73EFC900)
end

function Global.N_0x0a04a07bc3074edb(p0)
	return _in(0x0A04A07BC3074EDB, p0)
end

function Global.N_0x0a2ab7b7abc055f4(p0)
	return _in(0x0A2AB7B7ABC055F4, p0, _r, _ri)
end

function Global.N_0x0a428058079ee65c(p0)
	return _in(0x0A428058079EE65C, p0)
end

function Global.N_0x0a4618ffd517e24d(p0, p1)
	return _in(0x0A4618FFD517E24D, p0, p1)
end

function Global.N_0x0a487cc74a517fb5(p0)
	return _in(0x0A487CC74A517FB5, p0)
end

function Global.N_0x0a5a4f1979abb40e(p0)
	return _in(0x0A5A4F1979ABB40E, p0)
end

function Global.N_0x0a79c81c418f5d38(p0, p1)
	return _in(0x0A79C81C418F5D38, p0, p1, _r, _ri)
end

function Global.N_0x0a82317b7ebfc420(p0)
	return _in(0x0A82317B7EBFC420, p0, _r, _ri)
end

function Global.N_0x0a8fd91ede7b328a(p0, p1)
	return _in(0x0A8FD91EDE7B328A, p0, p1)
end

function Global.N_0x0a98a362c5a19a43(p0)
	return _in(0x0A98A362C5A19A43, p0, _r, _ri)
end

function Global.N_0x0ada3ec589e1736e()
	return _in(0x0ADA3EC589E1736E)
end

function Global.N_0x0ae241a4a9adeeec(p0)
	return _in(0x0AE241A4A9ADEEEC, p0, _r, _ri)
end

function Global.N_0x0b3a99ab6713aa52(p0)
	return _in(0x0B3A99AB6713AA52, p0)
end

function Global.N_0x0b46e25761519058(p0, p1, p2)
	return _in(0x0B46E25761519058, p0, p1, p2)
end

function Global.N_0x0b6009a90b8495f1(p0)
	return _in(0x0B6009A90B8495F1, p0, _r, _ri)
end

function Global.N_0x0b6b4507ac5ea8b8()
	return _in(0x0B6B4507AC5EA8B8, _r, _ri)
end

function Global.N_0x0b6d275d2f242e17(p0, p1, p2)
	return _in(0x0B6D275D2F242E17, p0, p1, p2)
end

function Global.N_0x0b7803f6f7bb43e0()
	return _in(0x0B7803F6F7BB43E0, _r, _ri)
end

function Global.N_0x0b7cb1300cbfe19c(p0, p1)
	return _in(0x0B7CB1300CBFE19C, p0, p1, _r, _ri)
end

function Global.N_0x0b9f7a01ec50448d(p0, p1)
	return _in(0x0B9F7A01EC50448D, p0, p1)
end

function Global.N_0x0ba4250d20007c2e(p0)
	return _in(0x0BA4250D20007C2E, p0, _r, _ri)
end

function Global.N_0x0bb6de7d23c60626(p0)
	return _in(0x0BB6DE7D23C60626, p0, _r, _ri)
end

function Global.N_0x0bcd4091c8eaba42(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x0BCD4091C8EABA42, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.N_0x0bdfebcf40a5f7e3(p0)
	return _in(0x0BDFEBCF40A5F7E3, p0, _r, _ri)
end

function Global.N_0x0bf3b3bd47d79c08(modelHash, p1)
	return _in(0x0BF3B3BD47D79C08, _ch(modelHash), p1)
end

function Global.N_0x0bf90cbb6b72977b()
	return _in(0x0BF90CBB6B72977B)
end

function Global.N_0x0bfa1bd465cdfefd(p0)
	return _in(0x0BFA1BD465CDFEFD, p0)
end

function Global.N_0x0c093c1787f18519(p0, p1)
	return _in(0x0C093C1787F18519, p0, p1, _r, _ri)
end

function Global.N_0x0c0a373d181bf900(p0)
	return _in(0x0C0A373D181BF900, p0)
end

function Global.N_0x0c31c51168e80365(p0)
	return _in(0x0C31C51168E80365, p0, _r, _ri)
end

function Global.N_0x0c392db374655176(p0, p1, p2, p3, p4)
	return _in(0x0C392DB374655176, p0, p1, p2, p3, p4)
end

function Global.N_0x0c3cb2e600c8977d(p0, p1)
	return _in(0x0C3CB2E600C8977D, p0, p1, _r, _ri)
end

function Global.N_0x0c3f0f7f92ca847c(p0, p1)
	return _in(0x0C3F0F7F92CA847C, p0, p1)
end

function Global.N_0x0c6a00dae896614c(p0, p1)
	return _in(0x0C6A00DAE896614C, p0, p1)
end

function Global.N_0x0c6b89876262a99d(p0, p1)
	return _in(0x0C6B89876262A99D, p0, p1)
end

function Global.N_0x0c718001b77ca468(p0, p1)
	return _in(0x0C718001B77CA468, p0, p1)
end

function Global.N_0x0c7a2289a5c4d7c9(p0, p1)
	return _in(0x0C7A2289A5C4D7C9, p0, p1)
end

function Global.N_0x0c9dbf48c6ba6e4c(p0, p1, p2, p3, p4)
	return _in(0x0C9DBF48C6BA6E4C, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x0cab404cd2db41f5(p0, p1)
	return _in(0x0CAB404CD2DB41F5, p0, p1, _r, _ri)
end

function Global.N_0x0cadc3a977997472(p0, p1)
	return _in(0x0CADC3A977997472, p0, p1, _r, _ri)
end

function Global.N_0x0cb16d05e03fb525(p0)
	return _in(0x0CB16D05E03FB525, p0)
end

function Global.N_0x0cb3d1919e8d7cba(p0)
	return _in(0x0CB3D1919E8D7CBA, p0, _r, _ri)
end

function Global.N_0x0cc28c08613ba9e5(p0)
	return _in(0x0CC28C08613BA9E5, p0)
end

function Global.N_0x0cc36d4156006509(p0)
	return _in(0x0CC36D4156006509, p0, _r, _ri)
end

function Global.N_0x0ccefc6c2c95da2a(p0, p1, p2, p3)
	return _in(0x0CCEFC6C2C95DA2A, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x0ccfe72b43c9cf96(p0)
	return _in(0x0CCFE72B43C9CF96, p0, _r, _ri)
end

function Global.N_0x0cd7914d17a970ab(p0, p1)
	return _in(0x0CD7914D17A970AB, p0, p1)
end

function Global.N_0x0ce8aafe9e433a23(p0)
	return _in(0x0CE8AAFE9E433A23, p0, _r, _ri)
end

function Global.N_0x0ceeb6f4780b1f2f(p0, p1)
	return _in(0x0CEEB6F4780B1F2F, p0, p1, _r, _ri)
end

function Global.N_0x0d0ae5081f88cfe1(p0)
	return _in(0x0D0AE5081F88CFE1, p0, _r, _ri)
end

function Global.N_0x0d0db2b6af19a987(p0)
	return _in(0x0D0DB2B6AF19A987, p0)
end

function Global.N_0x0d322aef8878b8fe(p0, p1)
	return _in(0x0D322AEF8878B8FE, p0, p1)
end

function Global.N_0x0d3b1568917ebda0(p0, p1)
	return _in(0x0D3B1568917EBDA0, p0, p1, _r, _ri)
end

function Global.N_0x0d497aa69059fe40(p0, p1)
	return _in(0x0D497AA69059FE40, p0, p1)
end

function Global.N_0x0d5fdf0d36fa10cd(p0)
	return _in(0x0D5FDF0D36FA10CD, p0)
end

function Global.N_0x0d78e1097f89e637(p0)
	return _in(0x0D78E1097F89E637, p0, _r, _ri)
end

function Global.N_0x0d7fd6a55fd63aef(p0, p1, p2)
	return _in(0x0D7FD6A55FD63AEF, p0, p1, p2)
end

function Global.N_0x0db41d59e0f1502b(p0)
	return _in(0x0DB41D59E0F1502B, p0)
end

function Global.N_0x0dbaca9c38c9a686(p0)
	return _in(0x0DBACA9C38C9A686, p0, _r, _ri)
end

function Global.N_0x0dcec6a92e497e17(p0, p1)
	return _in(0x0DCEC6A92E497E17, p0, p1)
end

function Global.N_0x0dd051b1bf4b8bd6(p0)
	return _in(0x0DD051B1BF4B8BD6, p0, _r, _ri)
end

function Global.N_0x0de02da3c0f66955(p0, p1)
	return _in(0x0DE02DA3C0F66955, p0, p1)
end

function Global.N_0x0ded260a1958a82e(p0)
	return _in(0x0DED260A1958A82E, p0, _r, _ri)
end

function Global.N_0x0df57f86fe71dbe5(p0, p1)
	return _in(0x0DF57F86FE71DBE5, p0, p1, _r, _ri)
end

function Global.N_0x0e17378642156790(p0, p1)
	return _in(0x0E17378642156790, p0, p1)
end

function Global.N_0x0e184495b27bb57d()
	return _in(0x0E184495B27BB57D)
end

function Global.N_0x0e1db1f8f5b561dc(p0, p1, p2, p3, p4, p5)
	return _in(0x0E1DB1F8F5B561DC, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x0e2c3aee6ce603b7()
	return _in(0x0E2C3AEE6CE603B7, _r, _ri)
end

function Global.N_0x0e3a041ed6ac2b45()
	return _in(0x0E3A041ED6AC2B45, _r, _rf)
end

function Global.N_0x0e3bdeed21beb945(p0, p1)
	return _in(0x0E3BDEED21BEB945, p0, p1)
end

function Global.N_0x0e3bf7ed4169ec43(p0)
	return _in(0x0E3BF7ED4169EC43, p0, _r, _ri)
end

function Global.N_0x0e54d4da6018ff8e()
	return _in(0x0E54D4DA6018FF8E, _r, _ri)
end

function Global.N_0x0e558d3a49d759d6(p0, p1)
	return _in(0x0E558D3A49D759D6, p0, p1, _r, _ri)
end

function Global.N_0x0e5c9fb9ed5dff1c(p0)
	return _in(0x0E5C9FB9ED5DFF1C, p0, _r, _ri)
end

function Global.N_0x0e6846476906c9dd(p0, p1)
	return _in(0x0E6846476906C9DD, p0, p1, _r, _ri)
end

function Global.N_0x0e71c80fa4ec8147(p0, p1)
	return _in(0x0E71C80FA4EC8147, p0, p1)
end

function Global.N_0x0e9057a9da78d0f8(p0, p1)
	return _in(0x0E9057A9DA78D0F8, p0, p1)
end

function Global.N_0x0e94c95ec3185fa9(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x0E94C95EC3185FA9, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x0e99e3bf11bb6367(p0)
	return _in(0x0E99E3BF11BB6367, p0, _r, _ri)
end

function Global.N_0x0e9e95fdedcc9d35(p0, p1, p2)
	return _in(0x0E9E95FDEDCC9D35, p0, p1, p2)
end

function Global.N_0x0ea9eacba3b01601(p0, p1, p2)
	return _in(0x0EA9EACBA3B01601, p0, p1, p2, _r, _ri)
end

function Global.N_0x0eabf182fbb63d72(p0, p1, p2)
	return _in(0x0EABF182FBB63D72, p0, p1, p2)
end

function Global.N_0x0eaf918f751f27ba(p0)
	return _in(0x0EAF918F751F27BA, p0, _r, _ri)
end

function Global.N_0x0eb78c2b156635b1(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x0EB78C2B156635B1, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.N_0x0ee3f0d7feccc54f()
	return _in(0x0EE3F0D7FECCC54F, _r, _ri)
end

function Global.N_0x0eef7a81c17679db(p0)
	return _in(0x0EEF7A81C17679DB, p0, _r, _ri)
end

function Global.N_0x0f1861101c9a9944(popZone, p1)
	return _in(0x0F1861101C9A9944, popZone, p1)
end

function Global.N_0x0f1cd8ca9e65d5f6(p0, p1)
	return _in(0x0F1CD8CA9E65D5F6, p0, p1)
end

function Global.N_0x0f1ffef5d54ae832()
	return _in(0x0F1FFEF5D54AE832)
end

function Global.N_0x0f230de0ddbe3649(p0)
	return _in(0x0F230DE0DDBE3649, p0, _r, _ri)
end

function Global.N_0x0f2a2175734926d8(p0, p1)
	return _in(0x0F2A2175734926D8, p0, p1)
end

function Global.N_0x0f44a5c78d114922(p0)
	return _in(0x0F44A5C78D114922, p0, _r, _ri)
end

function Global.N_0x0f4eaf69da41af43(p0)
	return _in(0x0F4EAF69DA41AF43, p0, _r, _ri)
end

function Global.N_0x0f4f6c4ce471259d(p0, p1)
	return _in(0x0F4F6C4CE471259D, p0, p1)
end

function Global.N_0x0f7f603bde08c4d3(p0)
	return _in(0x0F7F603BDE08C4D3, p0)
end

function Global.N_0x0f967019cc853bcc(p0, p1)
	return _in(0x0F967019CC853BCC, p0, p1)
end

function Global.N_0x0f99f6436528a089(p0)
	return _in(0x0F99F6436528A089, p0, _r, _ri)
end

function Global.N_0x0f9cf06986300875(p0)
	return _in(0x0F9CF06986300875, p0)
end

function Global.N_0x0faf7171bf613b80(p0)
	return _in(0x0FAF7171BF613B80, p0)
end

function Global.N_0x0faf95d71ed67ade(p0, p1)
	return _in(0x0FAF95D71ED67ADE, p0, p1)
end

function Global.N_0x0fb1ba7ff73b41e1(p0, p1, p2)
	return _in(0x0FB1BA7FF73B41E1, p0, p1, p2)
end

function Global.N_0x0fbbffc891a97c81(p0)
	return _in(0x0FBBFFC891A97C81, p0, _r, _ri)
end

function Global.N_0x0fd07141ad048aae(p0, p1)
	return _in(0x0FD07141AD048AAE, p0, p1, _r, _ri)
end

function Global.N_0x0fd25587bb306c86(p0)
	return _in(0x0FD25587BB306C86, p0, _r, _ri)
end

function Global.N_0x0fd3ecf9d0c8655f()
	return _in(0x0FD3ECF9D0C8655F, _r, _ri)
end

function Global.N_0x0fd7d7c232876e72(p0)
	return _in(0x0FD7D7C232876E72, p0)
end

function Global.N_0x0fddee66e3465726(p0)
	return _in(0x0FDDEE66E3465726, p0, _r, _ri)
end

function Global.N_0x0fe797dd9f70dfa6(p0, p1, p2, p3)
	return _in(0x0FE797DD9F70DFA6, p0, p1, p2, p3)
end

function Global.N_0x0fee2561120f3333(p0)
	return _in(0x0FEE2561120F3333, p0)
end

function Global.N_0x0ff421e467373fcf(p0)
	return _in(0x0FF421E467373FCF, p0, _r, _ri)
end

function Global.N_0x0ff7125f07deb84f(p0, p1)
	return _in(0x0FF7125F07DEB84F, p0, p1)
end

function Global.N_0x0ffdf937e5c11382(p0, p1, p2, p3, p4, p5)
	return _in(0x0FFDF937E5C11382, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x100157d6d7fe32ca(p0, p1)
	return _in(0x100157D6D7FE32CA, p0, p1, _r, _ri)
end

function Global.N_0x10157bc3247ff3ba(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x10157BC3247FF3BA, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.N_0x101b45c5f56d970f(p0, p1, p2, p3)
	return _in(0x101B45C5F56D970F, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x101f538c25abb39a(p0, p1)
	return _in(0x101F538C25ABB39A, p0, p1, _r, _ri)
end

function Global.N_0x10342cc82e8356e9(p0, p1)
	return _in(0x10342CC82E8356E9, p0, p1, _r, _ri)
end

function Global.N_0x103c2f885abeb00b(p0, p1)
	return _in(0x103C2F885ABEB00B, p0, p1, _r, _ri)
end

function Global.N_0x104080ca9e519b00(p0, p1)
	return _in(0x104080CA9E519B00, p0, p1, _r, _ri)
end

function Global.N_0x104d9a7b1c0d0783(p0, p1)
	return _in(0x104D9A7B1C0D0783, p0, p1)
end

function Global.N_0x106a811c6d3035f3(p0, p1, p2, p3)
	return _in(0x106A811C6D3035F3, p0, p1, p2, p3)
end

function Global.N_0x107f2a66e1c4c83a(p0)
	return _in(0x107F2A66E1C4C83A, p0)
end

function Global.N_0x10827b5a0aac56a7(p0, p1, p2)
	return _in(0x10827B5A0AAC56A7, p0, p1, p2)
end

function Global.N_0x1096603b519c905f(p0)
	return _in(0x1096603B519C905F, p0)
end

function Global.N_0x1098cda477890165(p0, p1)
	return _in(0x1098CDA477890165, p0, p1)
end

function Global.N_0x10adfdf07b7dffba(p0, p1, p2)
	return _in(0x10ADFDF07B7DFFBA, p0, p1, p2, _r, _ri)
end

function Global.N_0x10c1767b93257480(p0, p1, p2)
	return _in(0x10C1767B93257480, p0, p1, p2)
end

function Global.N_0x10c44f633e2d6d9e(p0)
	return _in(0x10C44F633E2D6D9E, p0)
end

function Global.N_0x10c70a515bc03707(p0)
	return _in(0x10C70A515BC03707, p0, _r, _ri)
end

function Global.N_0x10daa76cb8a201a1(p0)
	return _in(0x10DAA76CB8A201A1, p0)
end

function Global.N_0x10f96086123b939f(p0, p1, p2)
	return _in(0x10F96086123B939F, p0, p1, p2)
end

function Global.N_0x1121b07088ed3013(p0)
	return _in(0x1121B07088ED3013, p0, _r, _ri)
end

function Global.N_0x112bca290d2eb53c(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x112BCA290D2EB53C, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x112ddf56300bc6e5(p0)
	return _in(0x112DDF56300BC6E5, p0, _r, _ri)
end

function Global.N_0x113857d66a9cabe6(p0)
	return _in(0x113857D66A9CABE6, p0, _r, _ri)
end

function Global.N_0x113ef458ab6cda67(p0, p1)
	return _in(0x113EF458AB6CDA67, p0, p1)
end

function Global.N_0x1148f706cf4ebdda(p0, p1, p2)
	return _in(0x1148F706CF4EBDDA, p0, p1, p2, _r, _ri)
end

function Global.N_0x1180a2974d251b7b(p0)
	return _in(0x1180A2974D251B7B, p0, _r, _ri)
end

function Global.N_0x11820d1ae80dea39(p0, p1)
	return _in(0x11820D1AE80DEA39, p0, p1, _r, _ri)
end

function Global.N_0x118873dd538490b4(p0, p1)
	return _in(0x118873DD538490B4, p0, p1)
end

function Global.N_0x118d476a6f1a13f1(p0)
	return _in(0x118D476A6F1A13F1, p0, _r, _ri)
end

function Global.N_0x11986b05885564d2(p0)
	return _in(0x11986B05885564D2, p0)
end

function Global.N_0x119a5714578f4e05(p0, p1)
	return _in(0x119A5714578F4E05, p0, p1)
end

function Global.N_0x11a7ff918ef6bc66(p0, p1)
	return _in(0x11A7FF918EF6BC66, p0, p1)
end

function Global.N_0x11b0a0b282fa9b10(p0)
	return _in(0x11B0A0B282FA9B10, p0)
end

function Global.N_0x11c7ce1ae38911b5(p0)
	return _in(0x11C7CE1AE38911B5, p0, _r, _ri)
end

function Global.N_0x11cd066f54da0133(p0)
	return _in(0x11CD066F54DA0133, p0, _r, _ri)
end

function Global.N_0x11cdabdc7783b2bc(p0, p1, p2, p3)
	return _in(0x11CDABDC7783B2BC, p0, p1, p2, p3)
end

function Global.N_0x11e73195e735b25b(p0)
	return _in(0x11E73195E735B25B, p0, _r, _ri)
end

function Global.N_0x11ea52cad1b55910()
	return _in(0x11EA52CAD1B55910, _r)
end

function Global.N_0x11f32bb61b756732(p0, p1)
	return _in(0x11F32BB61B756732, p0, p1)
end

function Global.N_0x120376c23f019c6c(p0, p1)
	return _in(0x120376C23F019C6C, p0, p1, _r, _ri)
end

function Global.N_0x1204eb53a5fbc63d()
	return _in(0x1204EB53A5FBC63D, _r, _ri)
end

function Global.N_0x121d2005dd64496b(p0, p1, p2)
	return _in(0x121D2005DD64496B, p0, p1, p2, _r, _ri)
end

function Global.N_0x1240e8596a8308b9(p0, p1)
	return _in(0x1240E8596A8308B9, p0, p1)
end

function Global.N_0x1252c029fc8ebb4d()
	return _in(0x1252C029FC8EBB4D, _r, _ri)
end

function Global.N_0x126cbebba46693cf(p0, p1, p2)
	return _in(0x126CBEBBA46693CF, p0, p1, p2, _r, _ri)
end

function Global.N_0x12769eeb8dbd7a7b()
	return _in(0x12769EEB8DBD7A7B)
end

function Global.N_0x128fc3a893bf853a(p0)
	return _in(0x128FC3A893BF853A, p0)
end

function Global.N_0x1298b3d8e4c2409f(p0)
	return _in(0x1298B3D8E4C2409F, p0)
end

function Global.N_0x12990818c1d35886(p0, p1, p2)
	return _in(0x12990818C1D35886, p0, p1, p2)
end

function Global.N_0x12aeb56b489415c5()
	return _in(0x12AEB56B489415C5, _r, _ri)
end

function Global.N_0x12e09e278c6c29b7(p0)
	return _in(0x12E09E278C6C29B7, p0)
end

function Global.N_0x12e981d53b07bf48(p0)
	return _in(0x12E981D53B07BF48, p0, _r, _ri)
end

function Global.N_0x12eb4e31f092c9b3(p0)
	return _in(0x12EB4E31F092C9B3, p0, _r, _ri)
end

function Global.N_0x12f2d161bf4031fc(p0, p1)
	return _in(0x12F2D161BF4031FC, p0, p1)
end

function Global.N_0x12f6c6ed3eff42de(p0, p1, p2, p3)
	return _in(0x12F6C6ED3EFF42DE, p0, p1, p2, p3)
end

function Global.N_0x12fb95fe3d579238(p0, p1, p2, p3, p4, p5)
	return _in(0x12FB95FE3D579238, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x12fcaa23f2320422(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x12FCAA23F2320422, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x13154a76ce0cf9ab(p0, p1)
	return _in(0x13154A76CE0CF9AB, p0, p1, _r, _ri)
end

function Global.N_0x131e294ef60160df(p0, p1, p2, p3, p4, p5)
	return _in(0x131E294EF60160DF, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x131ec9247e7a2903(p0)
	return _in(0x131EC9247E7A2903, p0, _r, _ri)
end

function Global.N_0x13430d3d5a45f14b(p0)
	return _in(0x13430D3D5A45F14B, p0, _r, _ri)
end

function Global.N_0x134775b093ad5c38(p0)
	return _in(0x134775B093AD5C38, p0, _r, _ri)
end

function Global.N_0x1359c181bc625503()
	return _in(0x1359C181BC625503, _r, _ri)
end

function Global.N_0x137772000daf42c5(p0)
	return _in(0x137772000DAF42C5, p0, _r, _ri)
end

function Global.N_0x138398153824e332()
	return _in(0x138398153824E332)
end

function Global.N_0x138adb94f8b90616()
	return _in(0x138ADB94F8B90616)
end

function Global.N_0x1392105da88bbffb(p0, p1, p2, p3, p4)
	return _in(0x1392105DA88BBFFB, p0, p1, p2, p3, p4)
end

function Global.N_0x139805c2a67c4795(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x139805C2A67C4795, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x139efb0a71dd9011()
	return _in(0x139EFB0A71DD9011, _r, _ri)
end

function Global.N_0x13a1b061007c906b(p0)
	return _in(0x13A1B061007C906B, p0, _r, _ri)
end

function Global.N_0x13a210949fcbd92b(p0, p1)
	return _in(0x13A210949FCBD92B, p0, p1)
end

function Global.N_0x13aaecda43318bfe(p0, p1)
	return _in(0x13AAECDA43318BFE, p0, p1, _r, _ri)
end

function Global.N_0x13c190302369308b(p0)
	return _in(0x13C190302369308B, p0, _r, _ri)
end

function Global.N_0x13d234a2a3f66e63(p0)
	return _in(0x13D234A2A3F66E63, p0, _r, _ri)
end

function Global.N_0x13e7320c762f0477(p0)
	return _in(0x13E7320C762F0477, p0)
end

function Global.N_0x13eb275bf81636d1(p0, p1)
	return _in(0x13EB275BF81636D1, p0, p1)
end

function Global.N_0x13f138225c202f66(p0, p1)
	return _in(0x13F138225C202F66, p0, p1)
end

function Global.N_0x13f592fc3bf0ea84(p0, p1, p2, p3, p4)
	return _in(0x13F592FC3BF0EA84, p0, p1, p2, p3, p4)
end

function Global.N_0x1407f5115fb9583e(p0, p1)
	return _in(0x1407F5115FB9583E, p0, p1, _r, _ri)
end

function Global.N_0x140b3cb1d424a945(p0, p1)
	return _in(0x140B3CB1D424A945, p0, p1)
end

function Global.N_0x1413b6bf27ab7a95()
	return _in(0x1413B6BF27AB7A95, _r, _ri)
end

function Global.N_0x14169fa823679e41(p0)
	return _in(0x14169FA823679E41, p0, _r, _ri)
end

function Global.N_0x141bc64c8d7c5529(p0)
	return _in(0x141BC64C8D7C5529, p0)
end

function Global.N_0x1431540bca1a1bd2()
	return _in(0x1431540BCA1A1BD2, _r, _ri)
end

function Global.N_0x1460b644397453eb()
	return _in(0x1460B644397453EB)
end

function Global.N_0x1461df6db886be3f(p0)
	return _in(0x1461DF6DB886BE3F, p0)
end

function Global.N_0x148e7ac8141c9e64(p0)
	return _in(0x148E7AC8141C9E64, p0, _r, _ri)
end

function Global.N_0x149a2751ab66ac02(p0)
	return _in(0x149A2751AB66AC02, p0, _r, _ri)
end

function Global.N_0x149aee66f0cb3a99(p0, p1)
	return _in(0x149AEE66F0CB3A99, p0, p1)
end

function Global.N_0x14c4a49e36c29e49()
	return _in(0x14C4A49E36C29E49, _r, _ri)
end

function Global.N_0x14d29bb12d47f68c(p0, p1, p2, p3, p4)
	return _in(0x14D29BB12D47F68C, p0, p1, p2, p3, p4)
end

function Global.N_0x14da8c4bc2ccd90a(p0)
	return _in(0x14DA8C4BC2CCD90A, p0, _r, _ri)
end

function Global.N_0x14e57f88ba0a07fc(p0)
	return _in(0x14E57F88BA0A07FC, p0)
end

function Global.N_0x14ff0c2545527f9b(p0, p1, p2)
	return _in(0x14FF0C2545527F9B, p0, p1, p2)
end

function Global.N_0x1520626ffafffa8f(p0, p1)
	return _in(0x1520626FFAFFFA8F, p0, p1)
end

function Global.N_0x15206e88ff7617df(p0, p1)
	return _in(0x15206E88FF7617DF, p0, p1)
end

function Global.N_0x152664aa3188b193(p0, p1, p2, p3, p4, p5)
	return _in(0x152664AA3188B193, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x152ed1b56e8f1f50(p0, p1)
	return _in(0x152ED1B56E8F1F50, p0, p1, _r, _ri)
end

function Global.N_0x154340e87d8cc178(p0)
	return _in(0x154340E87D8CC178, p0)
end

function Global.N_0x154b7e841ac7412f(p0, p1)
	return _in(0x154B7E841AC7412F, p0, p1)
end

function Global.N_0x15598cfb25f3dc7e(p0, p1, p2)
	return _in(0x15598CFB25F3DC7E, p0, p1, p2)
end

function Global.N_0x155b2fbe72d7d1d0(p0)
	return _in(0x155B2FBE72D7D1D0, p0, _r, _ri)
end

function Global.N_0x157d8f3de12b307f(p0, p1)
	return _in(0x157D8F3DE12B307F, p0, p1)
end

function Global.N_0x159ef5b6edce00e8(p0, p1)
	return _in(0x159EF5B6EDCE00E8, p0, p1, _r, _ri)
end

function Global.N_0x15abd5004cad2d99(p0)
	return _in(0x15ABD5004CAD2D99, p0)
end

function Global.N_0x15b0cc1b36f1de29(p0, p1, p2, p3)
	return _in(0x15B0CC1B36F1DE29, p0, p1, p2, p3)
end

function Global.N_0x15e90b6a993017aa()
	return _in(0x15E90B6A993017AA, _r, _ri)
end

function Global.N_0x15f4732c357b1d6d(p0, p1, p2)
	return _in(0x15F4732C357B1D6D, p0, p1, p2)
end

function Global.N_0x160825dadf1b04b3()
	return _in(0x160825DADF1B04B3)
end

function Global.N_0x160921255327c591(p0, p1, p2, p3)
	return _in(0x160921255327C591, p0, p1, p2, p3)
end

function Global.N_0x160c1b5ab48ab87c(p0, p1)
	return _in(0x160C1B5AB48AB87C, p0, p1)
end

function Global.N_0x160f0ce6d76a39c9()
	return _in(0x160F0CE6D76A39C9, _r, _ri)
end

function Global.N_0x162c23ca83ed0a62(p0)
	return _in(0x162C23CA83ED0A62, p0, _r)
end

function Global.N_0x1632eb9386cdbe64(p0, p1)
	return _in(0x1632EB9386CDBE64, p0, p1)
end

function Global.N_0x164cecc59e70df86(p0, p1)
	return _in(0x164CECC59E70DF86, p0, p1, _r, _ri)
end

function Global.N_0x165be2001e5e4b75(p0)
	return _in(0x165BE2001E5E4B75, p0)
end

function Global.N_0x16752daa7e6d3f72(player)
	return _in(0x16752DAA7E6D3F72, player)
end

function Global.N_0x16802c32b2fca06b(p0, p1, p2, p3)
	return _in(0x16802C32B2FCA06B, p0, p1, p2, p3)
end

function Global.N_0x16908e859c3ab698(p0, p1, p2, p3, p4)
	return _in(0x16908E859C3AB698, p0, p1, p2, p3, p4)
end

function Global.N_0x1694a053dfb61a34(p0)
	return _in(0x1694A053DFB61A34, _ts(p0))
end

function Global.N_0x16b23d4f7a1f50d9(p0, p1, p2)
	return _in(0x16B23D4F7A1F50D9, p0, p1, p2)
end

function Global.N_0x16b86a49e072aa85()
	return _in(0x16B86A49E072AA85)
end

function Global.N_0x16d3d49902f697bb()
	return _in(0x16D3D49902F697BB, _r)
end

function Global.N_0x16d9841a85fa627e(p0, p1)
	return _in(0x16D9841A85FA627E, p0, p1)
end

function Global.N_0x16e9abdd34ddd931()
	return _in(0x16E9ABDD34DDD931)
end

function Global.N_0x16efb123c4451032(p0, p1)
	return _in(0x16EFB123C4451032, p0, p1, _r, _ri)
end

function Global.N_0x16f2c8c084ab2092(p0)
	return _in(0x16F2C8C084AB2092, p0, _r, _ri)
end

function Global.N_0x16f47d434b6086bf(p0, p1)
	return _in(0x16F47D434B6086BF, p0, p1, _r, _ri)
end

function Global.N_0x16f798a05bb9e3b5(p0)
	return _in(0x16F798A05BB9E3B5, p0)
end

function Global.N_0x1710bc33cfb83634(p0)
	return _in(0x1710BC33CFB83634, p0)
end

function Global.N_0x171c18e994c1a395(p0, p1, p2, p3, p4)
	return _in(0x171C18E994C1A395, p0, p1, p2, p3, p4)
end

function Global.N_0x1726963e6049db53(p0)
	return _in(0x1726963E6049DB53, p0)
end

function Global.N_0x172e9dd35858dcd7(p0)
	return _in(0x172E9DD35858DCD7, p0)
end

function Global.N_0x1740e3dee0ae4d27(p0, p1)
	return _in(0x1740E3DEE0AE4D27, p0, p1)
end

function Global.N_0x17721003a66c72bf(p0, p1, p2)
	return _in(0x17721003A66C72BF, p0, p1, p2, _r, _ri)
end

function Global.N_0x179a6f0ee2e79026(p0)
	return _in(0x179A6F0EE2E79026, p0, _r, _ri)
end

function Global.N_0x17e3e5c46eccd308(p0, p1, p2)
	return _in(0x17E3E5C46ECCD308, p0, p1, p2)
end

function Global.N_0x18013392501ce5dc(p0)
	return _in(0x18013392501CE5DC, p0, _r, _ri)
end

function Global.N_0x1811a02277a9e49d()
	return _in(0x1811A02277A9E49D, _r, _ri)
end

function Global.N_0x18262cafebb5fbe1(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x18262CAFEBB5FBE1, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x183672fe838a661b(p0)
	return _in(0x183672FE838A661B, p0)
end

function Global.N_0x183c0b6cfeffcae4(p0)
	return _in(0x183C0B6CFEFFCAE4, p0, _r, _ri)
end

function Global.N_0x183ce355115b6e75(p0, p1)
	return _in(0x183CE355115B6E75, p0, p1)
end

function Global.N_0x1840f3b30ed0105f(p0)
	return _in(0x1840F3B30ED0105F, p0, _r, _ri)
end

function Global.N_0x1854217c640b39ec(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x1854217C640B39EC, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x186608a2ac6f9e88(p0, p1)
	return _in(0x186608A2AC6F9E88, p0, p1)
end

function Global.N_0x18675bc914891122(p0)
	return _in(0x18675BC914891122, p0, _r, _rv)
end

function Global.N_0x18714953cced17d3(p0)
	return _in(0x18714953CCED17D3, p0, _r, _ri)
end

function Global.N_0x187d65f3aec5d679(p0, p1)
	return _in(0x187D65F3AEC5D679, p0, p1)
end

function Global.N_0x188313616d184213(p0, p1, p2, p3)
	return _in(0x188313616D184213, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x188736456d1dede6(p0, p1)
	return _in(0x188736456D1DEDE6, p0, p1, _r, _ri)
end

function Global.N_0x188b748861b5ba17(p0, p1, p2)
	return _in(0x188B748861B5BA17, p0, p1, p2, _r, _ri)
end

function Global.N_0x188f8071f244b9b8(p0, p1)
	return _in(0x188F8071F244B9B8, p0, p1)
end

function Global.N_0x189739a7631c1867()
	return _in(0x189739A7631C1867, _r, _ri)
end

function Global.N_0x18a0d48df9211c07()
	return _in(0x18A0D48DF9211C07)
end

function Global.N_0x18b94666cf610aeb()
	return _in(0x18B94666CF610AEB, _r, _ri)
end

function Global.N_0x18c3dfac458783bb()
	return _in(0x18C3DFAC458783BB)
end

function Global.N_0x18d6869fbffec0f8(p0, p1, p2, p3)
	return _in(0x18D6869FBFFEC0F8, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x18e93ebfc1fcfa48(p0, p1, p2)
	return _in(0x18E93EBFC1FCFA48, p0, p1, p2, _r, _ri)
end

function Global.N_0x18fc740ffdcd7454()
	return _in(0x18FC740FFDCD7454, _r, _ri)
end

function Global.N_0x18ff3110cf47115d(p0, p1, p2)
	return _in(0x18FF3110CF47115D, p0, p1, p2)
end

function Global.N_0x1902c4cfcc5be57c(p0, p1)
	return _in(0x1902C4CFCC5BE57C, p0, p1)
end

function Global.N_0x190f7da1ac09a8ef()
	return _in(0x190F7DA1AC09A8EF, _r, _ri)
end

function Global.N_0x19173c3f15367b54(p0, p1, p2)
	return _in(0x19173C3F15367B54, p0, p1, p2)
end

function Global.N_0x1919d59e60fd516e(p0, p1, p2)
	return _in(0x1919D59E60FD516E, p0, p1, p2)
end

function Global.N_0x1948bbe561a2375a(p0)
	return _in(0x1948BBE561A2375A, p0, _r, _ri)
end

function Global.N_0x194d877fc5597b7d(p0, p1, p2, p3)
	return _in(0x194D877FC5597B7D, p0, p1, p2, p3)
end

function Global.N_0x196d3acbeba4a44b(p0)
	return _in(0x196D3ACBEBA4A44B, p0)
end

function Global.N_0x19870c40c7ee15be(p0, p1)
	return _in(0x19870C40C7EE15BE, p0, p1, _r, _ri)
end

function Global.N_0x198b85cc3c7a4593(p0, p1)
	return _in(0x198B85CC3C7A4593, p0, p1, _r, _ri)
end

function Global.N_0x19a6be7d9c6884d3(p0, p1, p2, p3)
	return _in(0x19A6BE7D9C6884D3, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x19abcc581d28e6f9(p0)
	return _in(0x19ABCC581D28E6F9, p0)
end

function Global.N_0x19b14e04b009e28b(p0, p1)
	return _in(0x19B14E04B009E28B, p0, p1)
end

function Global.N_0x19b2c7a6c34fad54(p0, p1)
	return _in(0x19B2C7A6C34FAD54, p0, p1, _r, _ri)
end

function Global.N_0x19b4f71703902238(p0)
	return _in(0x19B4F71703902238, p0)
end

function Global.N_0x19b52c20b5c4757c()
	return _in(0x19B52C20B5C4757C)
end

function Global.N_0x19bc99c678fba139(p0, p1, p2)
	return _in(0x19BC99C678FBA139, p0, p1, p2)
end

function Global.N_0x19c7567d2f2287d6(p0, p1)
	return _in(0x19C7567D2F2287D6, p0, p1, _r, _ri)
end

function Global.N_0x19c975b81be53c28(p0, p1)
	return _in(0x19C975B81BE53C28, p0, p1)
end

function Global.N_0x19f70c4d80494ff8(p0, p1, p2)
	return _in(0x19F70C4D80494FF8, p0, p1, p2)
end

function Global.N_0x1a47699e8d533e8f(p0, p1, p2, p3)
	return _in(0x1A47699E8D533E8F, p0, p1, p2, p3)
end

function Global.N_0x1a51bfe60708e482(p0)
	return _in(0x1A51BFE60708E482, p0, _r, _ri)
end

function Global.N_0x1a52076d26e09004(p0, p1)
	return _in(0x1A52076D26E09004, p0, p1)
end

function Global.N_0x1a5c5d350068a673(p0, p1)
	return _in(0x1A5C5D350068A673, p0, p1)
end

function Global.N_0x1a6e84f13c952094(p0, p1, p2)
	return _in(0x1A6E84F13C952094, p0, p1, p2, _r, _ri)
end

function Global.N_0x1a7a802b2301edc0(p0)
	return _in(0x1A7A802B2301EDC0, p0)
end

function Global.N_0x1a7d63cb1b0bb223(p0)
	return _in(0x1A7D63CB1B0BB223, p0)
end

function Global.N_0x1a861f899ebbe17c(p0, p1)
	return _in(0x1A861F899EBBE17C, p0, p1)
end

function Global.N_0x1a9f09ab458d49c6(p0)
	return _in(0x1A9F09AB458D49C6, p0)
end

function Global.N_0x1ac5a8ab50cfaa33(p0)
	return _in(0x1AC5A8AB50CFAA33, p0, _r, _ri)
end

function Global.N_0x1ad896bf43619551()
	return _in(0x1AD896BF43619551)
end

function Global.N_0x1ad922ab5038def3(p0)
	return _in(0x1AD922AB5038DEF3, p0)
end

function Global.N_0x1af5e28e64a76a9f()
	return _in(0x1AF5E28E64A76A9F, _r, _ri)
end

function Global.N_0x1b065a2bf7953815(p0)
	return _in(0x1B065A2BF7953815, p0, _r, _ri)
end

function Global.N_0x1b3c2d961f5fc0e1(p0)
	return _in(0x1B3C2D961F5FC0E1, p0)
end

function Global.N_0x1b70811d3bf75db9(p0, p1)
	return _in(0x1B70811D3BF75DB9, p0, p1)
end

function Global.N_0x1b83c0deebcbb214(p0)
	return _in(0x1B83C0DEEBCBB214, p0)
end

function Global.N_0x1b89bc43b6e69107(p0, p1, p2, p3)
	return _in(0x1B89BC43B6E69107, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x1b8f3ce5a6001298(cam, p1)
	return _in(0x1B8F3CE5A6001298, cam, p1)
end

function Global.N_0x1bb50cd340a996e6()
	return _in(0x1BB50CD340A996E6, _r, _ri)
end

function Global.N_0x1bc47a9dedc8df5d(p0, p1)
	return _in(0x1BC47A9DEDC8DF5D, p0, p1)
end

function Global.N_0x1bdb56db258f052d()
	return _in(0x1BDB56DB258F052D, _r, _ri)
end

function Global.N_0x1bdb5a07307f6929(p0, p1)
	return _in(0x1BDB5A07307F6929, p0, p1)
end

function Global.N_0x1be19185b8afe299(p0)
	return _in(0x1BE19185B8AFE299, p0, _r, _ri)
end

function Global.N_0x1bf9d36a5eaffbae(p0, p1, p2)
	return _in(0x1BF9D36A5EAFFBAE, p0, p1, p2, _r, _ri)
end

function Global.N_0x1bfbafcc6760ff02(p0, p1)
	return _in(0x1BFBAFCC6760FF02, p0, p1)
end

function Global.N_0x1c38c3577901af1f()
	return _in(0x1C38C3577901AF1F)
end

function Global.N_0x1c5d33a4293e6dde(p0, p1)
	return _in(0x1C5D33A4293E6DDE, p0, p1, _r, _ri)
end

function Global.N_0x1c5eb3c27f7508cb(p0, p1)
	return _in(0x1C5EB3C27F7508CB, p0, p1)
end

function Global.N_0x1c6306e5bc25c29c()
	return _in(0x1C6306E5BC25C29C)
end

function Global.N_0x1c65cc931c0f946f(p0, p1, p2)
	return _in(0x1C65CC931C0F946F, p0, p1, p2)
end

function Global.N_0x1ce875505d45338a(p0, p1, p2)
	return _in(0x1CE875505D45338A, p0, p1, p2)
end

function Global.N_0x1cfb749ad4317bde()
	return _in(0x1CFB749AD4317BDE)
end

function Global.N_0x1d125814ebc517eb(p0, p1, p2, p3)
	return _in(0x1D125814EBC517EB, p0, p1, p2, p3)
end

function Global.N_0x1d1b448d719415ab(p0)
	return _in(0x1D1B448D719415AB, p0, _r, _ri)
end

function Global.N_0x1d23d3f70606d788(p0, p1)
	return _in(0x1D23D3F70606D788, p0, p1)
end

function Global.N_0x1d256eed194f5b58(p0)
	return _in(0x1D256EED194F5B58, p0)
end

function Global.N_0x1d4636c90bbefacb(p0, p1)
	return _in(0x1D4636C90BBEFACB, p0, p1)
end

function Global.N_0x1d46b417f926d34d(p0)
	return _in(0x1D46B417F926D34D, p0, _r, _ri)
end

function Global.N_0x1d491ccf7211fb74(p0)
	return _in(0x1D491CCF7211FB74, p0, _r, _ri)
end

function Global.N_0x1d77b47afa584e90(p0, p1, p2)
	return _in(0x1D77B47AFA584E90, p0, p1, p2)
end

function Global.N_0x1d97da8acb5d2582(p0, p1)
	return _in(0x1D97DA8ACB5D2582, p0, p1)
end

function Global.N_0x1d9f72dd4fd9a9d7(p0)
	return _in(0x1D9F72DD4FD9A9D7, p0)
end

function Global.N_0x1da5c5b0923e1b85(p0)
	return _in(0x1DA5C5B0923E1B85, p0, _r, _ri)
end

function Global.N_0x1da6cb02071055d5(p0)
	return _in(0x1DA6CB02071055D5, p0, _r, _rv)
end

function Global.N_0x1db9d61e505ae3fc()
	return _in(0x1DB9D61E505AE3FC, _r, _ri)
end

function Global.N_0x1dd95a8d6b24a0c9(p0)
	return _in(0x1DD95A8D6B24A0C9, p0)
end

function Global.N_0x1e017404784aa6a3(p0, p1)
	return _in(0x1E017404784AA6A3, p0, p1, _r, _ri)
end

function Global.N_0x1e5b70e53db661e5(p0, p1, p2, p3, p4, p5)
	return _in(0x1E5B70E53DB661E5, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x1e6f9a9fe1a99f36(p0)
	return _in(0x1E6F9A9FE1A99F36, p0)
end

function Global.N_0x1e7384ab5d4f4581(p0)
	return _in(0x1E7384AB5D4F4581, p0, _r, _ri)
end

function Global.N_0x1e804ea9b12030a4(p0, p1)
	return _in(0x1E804EA9B12030A4, p0, p1, _r, _ri)
end

function Global.N_0x1e8099f449abb0ba(p0)
	return _in(0x1E8099F449ABB0BA, p0, _r, _ri)
end

function Global.N_0x1e8a921112891651(p0)
	return _in(0x1E8A921112891651, p0, _r, _rv)
end

function Global.N_0x1ea716e0628a6f44(p0, p1)
	return _in(0x1EA716E0628A6F44, p0, p1)
end

function Global.N_0x1ecc76792f661cf5(p0)
	return _in(0x1ECC76792F661CF5, p0, _r, _ri)
end

function Global.N_0x1ecf56c040fd839c(p0, p1)
	return _in(0x1ECF56C040FD839C, p0, p1)
end

function Global.N_0x1ed8588524ac9be1(p0, p1, p2)
	return _in(0x1ED8588524AC9BE1, p0, p1, p2)
end

function Global.N_0x1ef36558fbde2daa(vehicle)
	return _in(0x1EF36558FBDE2DAA, vehicle)
end

function Global.N_0x1f0e3a4434565f8f(p0, p1)
	return _in(0x1F0E3A4434565F8F, p0, p1)
end

function Global.N_0x1f0e401031e20146(p0, p1)
	return _in(0x1F0E401031E20146, p0, p1, _r, _ri)
end

function Global.N_0x1f11702ddbd915c6(p0, p1)
	return _in(0x1F11702DDBD915C6, p0, p1, _r, _ri)
end

function Global.N_0x1f1dd794908c2bfa(p0)
	return _in(0x1F1DD794908C2BFA, p0, _r, _rv)
end

function Global.N_0x1f1fabfe9b2a1254(p0, p1)
	return _in(0x1F1FABFE9B2A1254, p0, p1)
end

function Global.N_0x1f298c7bd30d1240(p0)
	return _in(0x1F298C7BD30D1240, p0)
end

function Global.N_0x1f44b7e283c09ede(p0, p1, p2)
	return _in(0x1F44B7E283C09EDE, p0, p1, p2)
end

function Global.N_0x1f488807bc8e0630(p0)
	return _in(0x1F488807BC8E0630, p0)
end

function Global.N_0x1f51f367b710a832()
	return _in(0x1F51F367B710A832, _r, _ri)
end

function Global.N_0x1f56fb3fdb4eaf65(p0)
	return _in(0x1F56FB3FDB4EAF65, p0, _r, _ri)
end

function Global.N_0x1f5e07e14a86fafc(p0)
	return _in(0x1F5E07E14A86FAFC, p0)
end

function Global.N_0x1f6ebd94680252ce(p0, p1)
	return _in(0x1F6EBD94680252CE, p0, p1)
end

function Global.N_0x1f714e7a9dadfc42(p0)
	return _in(0x1F714E7A9DADFC42, p0, _r, _ri)
end

function Global.N_0x1f7977c9101f807f(p0)
	return _in(0x1F7977C9101F807F, p0, _r, _ri)
end

function Global.N_0x1f7a9a9c38c13a56(p0)
	return _in(0x1F7A9A9C38C13A56, p0, _r, _ri)
end

function Global.N_0x1f8215d0e446f593(p0, p1, p2)
	return _in(0x1F8215D0E446F593, p0, p1, p2)
end

function Global.N_0x1f9a64c2804b3471(p0)
	return _in(0x1F9A64C2804B3471, p0)
end

function Global.N_0x1fa132cbcd7cb239(p0, p1)
	return _in(0x1FA132CBCD7CB239, p0, p1)
end

function Global.N_0x1fbf7f5ba7e4be3a(p0)
	return _in(0x1FBF7F5BA7E4BE3A, p0)
end

function Global.N_0x1fc6c727d30ffdde(p0)
	return _in(0x1FC6C727D30FFDDE, p0)
end

function Global.N_0x1fc92bdba1106bd2(p0, p1)
	return _in(0x1FC92BDBA1106BD2, p0, p1)
end

function Global.N_0x1fda57e8908f2609(p0, p1, p2)
	return _in(0x1FDA57E8908F2609, p0, p1, p2)
end

function Global.N_0x1ff00db43026b12f()
	return _in(0x1FF00DB43026B12F)
end

function Global.N_0x1ff441d7954f8709(p0)
	return _in(0x1FF441D7954F8709, p0, _r, _ri)
end

function Global.N_0x1ff8731be1dfc0c0(p0, p1)
	return _in(0x1FF8731BE1DFC0C0, p0, p1)
end

function Global.N_0x200114e99552462b(p0, p1, p2)
	return _in(0x200114E99552462B, p0, p1, p2)
end

function Global.N_0x2001687f9562fd9d(p0)
	return _in(0x2001687F9562FD9D, p0)
end

function Global.N_0x200373a8df081f22(p0, p1)
	return _in(0x200373A8DF081F22, p0, p1, _r, _ri)
end

function Global.N_0x2009f8ab7a5e9d6d(p0)
	return _in(0x2009F8AB7A5E9D6D, p0, _r, _ri)
end

function Global.N_0x20135af9c10d2a3d(p0)
	return _in(0x20135AF9C10D2A3D, p0, _r, _ri)
end

function Global.N_0x201b8ed4ff7fe9f5(p0)
	return _in(0x201B8ED4FF7FE9F5, p0)
end

function Global.N_0x2024f4f333095fb1(p0, p1, p2)
	return _in(0x2024F4F333095FB1, p0, p1, p2, _r, _ri)
end

function Global.N_0x20389408f0e93b9a()
	return _in(0x20389408F0E93B9A, _r, _ri)
end

function Global.N_0x203beffdbe12e96a(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x203BEFFDBE12E96A, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x2045429505158d1a(p0)
	return _in(0x2045429505158D1A, p0, _r, _ri)
end

function Global.N_0x2056ab38df06825c(p0, p1, p2, p3, p4)
	return _in(0x2056AB38DF06825C, p0, p1, p2, p3, p4)
end

function Global.N_0x2064b33f6e6b92d4(p0, p1, p2, p3)
	return _in(0x2064B33F6E6B92D4, p0, p1, p2, p3)
end

function Global.N_0x20a4bf0e09bee146(itemset)
	return _in(0x20A4BF0E09BEE146, itemset)
end

function Global.N_0x20b7f69b40c6b755(p0)
	return _in(0x20B7F69B40C6B755, p0, _r, _ri)
end

function Global.N_0x20c5459379d75c1c(p0, p1)
	return _in(0x20C5459379D75C1C, p0, p1)
end

function Global.N_0x20d504994fdc4412(iplName1, iplName2)
	return _in(0x20D504994FDC4412, _ts(iplName1), _ts(iplName2))
end

function Global.N_0x20e54854def6a54a(p0, p1)
	return _in(0x20E54854DEF6A54A, p0, p1)
end

function Global.N_0x20f4cb76689acdbc(p0)
	return _in(0x20F4CB76689ACDBC, p0)
end

function Global.N_0x20faee47427a4497()
	return _in(0x20FAEE47427A4497)
end

function Global.N_0x21091b4beb6376ee(p0)
	return _in(0x21091B4BEB6376EE, p0, _r, _ri)
end

function Global.N_0x21213b833ef4dae7(p0, p1, p2)
	return _in(0x21213B833EF4DAE7, p0, p1, p2)
end

function Global.N_0x2161278c6322f740(p0, p1, p2, p3, p4, p5)
	return _in(0x2161278C6322F740, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x216343750545a486(p0, p1, p2)
	return _in(0x216343750545A486, p0, p1, p2)
end

function Global.N_0x216bc0d3d2e413d2(p0, p1)
	return _in(0x216BC0D3D2E413D2, p0, p1)
end

function Global.N_0x217f47761376e16e(p0, p1, p2, p3, p4)
	return _in(0x217F47761376E16E, p0, p1, p2, p3, p4)
end

function Global.N_0x218f7710a139d012()
	return _in(0x218F7710A139D012)
end

function Global.N_0x21a99a72b00d8002(p0, p1)
	return _in(0x21A99A72B00D8002, p0, p1, _r, _ri)
end

function Global.N_0x21d04d7bc538c146(entity)
	return _in(0x21D04D7BC538C146, entity, _r)
end

function Global.N_0x21d0890d88dfb0b0(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x21D0890D88DFB0B0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x21f00e08cbb5f37b(p0)
	return _in(0x21F00E08CBB5F37B, p0)
end

function Global.N_0x2200ab13cbd10f4e(p0, p1, p2, p3, p4, p5)
	return _in(0x2200AB13CBD10F4E, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x22031584496cfb70(p0, p1)
	return _in(0x22031584496CFB70, p0, p1)
end

function Global.N_0x2208438012482a1a(ped, p1, p2)
	return _in(0x2208438012482A1A, ped, p1, p2)
end

function Global.N_0x22084ca699219624(p0)
	return _in(0x22084CA699219624, p0, _r, _ri)
end

function Global.N_0x221f4d9912b7fe86(p0, p1)
	return _in(0x221F4D9912B7FE86, p0, p1)
end

--- Returns true if GtaThread+0x77C is equal to 1.
function Global.N_0x2238ec3ec631ab1f()
	return _in(0x2238EC3EC631AB1F, _r)
end

function Global.N_0x225640e09effdc3f()
	return _in(0x225640E09EFFDC3F, _r, _ri)
end

function Global.N_0x226c6a4e3346d288(p0, p1)
	return _in(0x226C6A4E3346D288, p0, p1)
end

function Global.N_0x226cf9b159e38f42(p0)
	return _in(0x226CF9B159E38F42, p0, _r, _ri)
end

function Global.N_0x22741652985c84d0(p0, p1)
	return _in(0x22741652985C84D0, p0, p1)
end

function Global.N_0x227522fd59ddb7e8(p0, p1, p2)
	return _in(0x227522FD59DDB7E8, p0, p1, p2, _r, _ri)
end

function Global.N_0x227b06324234fb09(p0, p1)
	return _in(0x227B06324234FB09, p0, p1, _r, _ri)
end

function Global.N_0x22b3cabeddb538b2(p0, p1)
	return _in(0x22B3CABEDDB538B2, p0, p1)
end

function Global.N_0x22c8b10802301381(p0, p1)
	return _in(0x22C8B10802301381, p0, p1)
end

function Global.N_0x22cd23bb0c45e0cd(p0)
	return _in(0x22CD23BB0C45E0CD, p0, _r, _ri)
end

function Global.N_0x22cd2c33ed4467a1(p0)
	return _in(0x22CD2C33ED4467A1, p0, _r, _ri)
end

function Global.N_0x22cdbf317c40a122(p0)
	return _in(0x22CDBF317C40A122, p0)
end

function Global.N_0x22d3a61ce053270c(p0, p1)
	return _in(0x22D3A61CE053270C, p0, p1, _r, _ri)
end

function Global.N_0x22e590f108289a9d(p0, p1, p2, p3)
	return _in(0x22E590F108289A9D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x22f2a386d43048a9(p0)
	return _in(0x22F2A386D43048A9, p0, _r, _ri)
end

function Global.N_0x2302c0264ea58d31()
	return _in(0x2302C0264EA58D31)
end

function Global.N_0x2311f15d971aa680(p0)
	return _in(0x2311F15D971AA680, p0, _r, _ri)
end

function Global.N_0x232e1eb23cdb313c()
	return _in(0x232E1EB23CDB313C, _r, _ri)
end

function Global.N_0x235c863da77bd88d(p0, p1, p2)
	return _in(0x235C863DA77BD88D, p0, p1, p2, _r, _ri)
end

function Global.N_0x236321f1178a5446(p0, p1, p2)
	return _in(0x236321F1178A5446, p0, p1, p2, _r, _ri)
end

function Global.N_0x236905c700fdb54d()
	return _in(0x236905C700FDB54D)
end

function Global.N_0x2371c39d4f91c288(p0)
	return _in(0x2371C39D4F91C288, p0)
end

function Global.N_0x2387d6e9c6b478aa(p0)
	return _in(0x2387D6E9C6B478AA, p0, _r, _ri)
end

function Global.N_0x23a3ab86e0807721(vehicle, toggle)
	return _in(0x23A3AB86E0807721, vehicle, toggle)
end

function Global.N_0x23bde06596a22cec(p0, p1, p2, p3)
	return _in(0x23BDE06596A22CEC, p0, p1, p2, p3)
end

function Global.N_0x23bf601a42f329a0(p0)
	return _in(0x23BF601A42F329A0, p0, _r, _ri)
end

function Global.N_0x23ccab8f40b9cbee()
	return _in(0x23CCAB8F40B9CBEE, _r, _ri)
end

function Global.N_0x23d9c1f2e4098edc(p0, p1, p2, p3, p4)
	return _in(0x23D9C1F2E4098EDC, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x23e33cb9f4a3f547(p0, p1)
	return _in(0x23E33CB9F4A3F547, p0, p1, _r, _ri)
end

function Global.N_0x23f66c36f8e5eaab(p0, p1)
	return _in(0x23F66C36F8E5EAAB, p0, p1)
end

function Global.N_0x23f74c2fda6e7c61(p0, p1)
	return _in(0x23F74C2FDA6E7C61, p0, p1, _r, _ri)
end

function Global.N_0x23fb9faca28779c1(p0, p1, p2)
	return _in(0x23FB9FACA28779C1, p0, p1, p2)
end

function Global.N_0x2412216fcc7b4e3e(p0)
	return _in(0x2412216FCC7B4E3E, p0)
end

function Global.N_0x2416ec2f31f75266(p0, p1, p2, p3, p4)
	return _in(0x2416EC2F31F75266, p0, p1, p2, p3, p4)
end

function Global.N_0x242edf85d4e87b65(p0)
	return _in(0x242EDF85D4E87B65, p0, _r, _ri)
end

function Global.N_0x243cede8f916b994()
	return _in(0x243CEDE8F916B994)
end

function Global.N_0x243e1b4607040057(p0)
	return _in(0x243E1B4607040057, p0, _r, _ri)
end

function Global.N_0x244430c13ba5258e(p0, p1, p2, p3)
	return _in(0x244430C13BA5258E, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x244e8c282188e40f(p0, p1)
	return _in(0x244E8C282188E40F, p0, p1)
end

function Global.N_0x245d07651b1d183b(p0, p1)
	return _in(0x245D07651B1D183B, p0, p1, _r, _ri)
end

function Global.N_0x246545c37c27a717(p0)
	return _in(0x246545C37C27A717, p0, _r, _ri)
end

function Global.N_0x247f86595d396344(p0)
	return _in(0x247F86595D396344, p0)
end

function Global.N_0x2498035289b5688f(p0, p1)
	return _in(0x2498035289B5688F, p0, p1)
end

function Global.N_0x249cd6b7285536f2(p0, p1, p2)
	return _in(0x249CD6B7285536F2, p0, p1, p2)
end

function Global.N_0x24c82ef607105faa(p0, p1)
	return _in(0x24C82EF607105FAA, p0, p1)
end

function Global.N_0x24cd8faea1368379(p0, p1, p2)
	return _in(0x24CD8FAEA1368379, p0, p1, p2, _r, _ri)
end

function Global.N_0x24db6b9f2b719043(p0)
	return _in(0x24DB6B9F2B719043, p0)
end

function Global.N_0x250c75eb1728cc0d(p0)
	return _in(0x250C75EB1728CC0D, p0)
end

function Global.N_0x250ebb11e81a10be(p0)
	return _in(0x250EBB11E81A10BE, p0, _r, _ri)
end

function Global.N_0x251241caec707106()
	return _in(0x251241CAEC707106, _r)
end

function Global.N_0x25189f9908e9cd65()
	return _in(0x25189F9908E9CD65, _r, _ri)
end

function Global.N_0x2533baffbe737e54()
	return _in(0x2533BAFFBE737E54, _r, _ri)
end

function Global.N_0x2533f2ab0eb9c6f9(p0, p1)
	return _in(0x2533F2AB0EB9C6F9, p0, p1)
end

function Global.N_0x253a63b5badbc398(p0, p1, p2, p3, p4)
	return _in(0x253A63B5BADBC398, p0, p1, p2, p3, p4)
end

function Global.N_0x254b0241e964b450(p0, p1)
	return _in(0x254B0241E964B450, p0, p1, _r, _ri)
end

function Global.N_0x25557e324489393c(p0)
	return _in(0x25557E324489393C, p0, _r, _ri)
end

function Global.N_0x255a5ef65eda9167(p0)
	return _in(0x255A5EF65EDA9167, p0, _r, _ri)
end

function Global.N_0x255b6db4e3ad3c3e(p0)
	return _in(0x255B6DB4E3AD3C3E, p0, _r, _ri)
end

function Global.N_0x256edd55c6be1482(p0)
	return _in(0x256EDD55C6BE1482, p0, _r, _ri)
end

function Global.N_0x25855b1574bf8cd5(p0)
	return _in(0x25855B1574BF8CD5, p0)
end

function Global.N_0x259acc5b52a2b2d9(p0, p1)
	return _in(0x259ACC5B52A2B2D9, p0, p1)
end

function Global.N_0x259ce340a8738814(p0)
	return _in(0x259CE340A8738814, p0, _r, _ri)
end

function Global.N_0x25b9c78a25105c35(p0, p1)
	return _in(0x25B9C78A25105C35, p0, p1)
end

function Global.N_0x25ca89b2a39dcc69()
	return _in(0x25CA89B2A39DCC69, _r, _ri)
end

function Global.N_0x26054eb81ac0893b(p0)
	return _in(0x26054EB81AC0893B, p0, _r, _ri)
end

function Global.N_0x262ef7cf49cf1eb9(p0)
	return _in(0x262EF7CF49CF1EB9, p0)
end

function Global.N_0x263d69767f76059c(p0, p1)
	return _in(0x263D69767F76059C, p0, p1)
end

function Global.N_0x264e9a5cd78c338f(p0)
	return _in(0x264E9A5CD78C338F, p0)
end

function Global.N_0x2651ddc0ea269073(p0, p1)
	return _in(0x2651DDC0EA269073, p0, p1)
end

function Global.N_0x267c78c60e806b9a(p0, p1)
	return _in(0x267C78C60E806B9A, p0, p1)
end

function Global.N_0x2686bd9566b65eda(p0, p1, p2)
	return _in(0x2686BD9566B65EDA, p0, p1, p2)
end

function Global.N_0x268ab8420a9e4ed7()
	return _in(0x268AB8420A9E4ED7, _r)
end

function Global.N_0x268b3aebf032a88d(p0)
	return _in(0x268B3AEBF032A88D, p0, _r, _ri)
end

function Global.N_0x26934083d3f2579c(p0)
	return _in(0x26934083D3F2579C, p0, _r, _ri)
end

function Global.N_0x26a5c12facff8724(p0)
	return _in(0x26A5C12FACFF8724, p0, _r, _ri)
end

function Global.N_0x26dd2fb0a88cc412(p0, p1, p2, p3)
	return _in(0x26DD2FB0A88CC412, p0, p1, p2, p3)
end

function Global.N_0x26e87218390e6729(p0, p1, p2, p3)
	return _in(0x26E87218390E6729, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x26f6bbea2ce3e3dc()
	return _in(0x26F6BBEA2CE3E3DC)
end

function Global.N_0x2701d01d5e18fc31()
	return _in(0x2701D01D5E18FC31, _r)
end

function Global.N_0x2703efb583f0949a(p0, p1)
	return _in(0x2703EFB583F0949A, p0, p1)
end

function Global.N_0x2705d18c11b61046(p0)
	return _in(0x2705D18C11B61046, p0)
end

function Global.N_0x271f95e55c663b8b(p0, p1)
	return _in(0x271F95E55C663B8B, p0, p1, _r, _ri)
end

function Global.N_0x27219300c36a8d40(p0, p1, p2, p3, p4)
	return _in(0x27219300C36A8D40, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x2728c77fbc4b9796(p0)
	return _in(0x2728C77FBC4B9796, p0)
end

function Global.N_0x2738d68d2b4e09e7(p0)
	return _in(0x2738D68D2B4E09E7, p0)
end

function Global.N_0x273915ce30780986(p0, p1)
	return _in(0x273915CE30780986, p0, p1, _r, _ri)
end

function Global.N_0x273e04a3a7ad1f2d()
	return _in(0x273E04A3A7AD1F2D, _r, _ri)
end

function Global.N_0x274ee1b90cfa669e(p0)
	return _in(0x274EE1B90CFA669E, p0, _r, _ri)
end

function Global.N_0x276aaf0f1c7f2494(p0, p1)
	return _in(0x276AAF0F1C7F2494, p0, p1)
end

function Global.N_0x277251c161b4c3f4(p0, p1, p2)
	return _in(0x277251C161B4C3F4, p0, p1, p2)
end

function Global.N_0x277865a734918ae6()
	return _in(0x277865A734918AE6, _r, _ri)
end

function Global.N_0x2797b8d66dd0ebb8(p0, p1, p2)
	return _in(0x2797B8D66DD0EBB8, p0, p1, p2)
end

function Global.N_0x2797c633dcdbbac5(p0, p1, p2)
	return _in(0x2797C633DCDBBAC5, p0, p1, p2)
end

function Global.N_0x279b0696da4657eb(p0)
	return _in(0x279B0696DA4657EB, p0, _r, _ri)
end

function Global.N_0x27a1b170aa8af84c(p0)
	return _in(0x27A1B170AA8AF84C, p0)
end

function Global.N_0x27ad7162d3fed01e(p0, p1)
	return _in(0x27AD7162D3FED01E, p0, p1, _r, _ri)
end

function Global.N_0x27af48c62b281341()
	return _in(0x27AF48C62B281341, _r, _ri)
end

function Global.N_0x27b1ae4d8c652f08(p0)
	return _in(0x27B1AE4D8C652F08, p0, _r, _ri)
end

function Global.N_0x27d3a0e1fe090a43(p0)
	return _in(0x27D3A0E1FE090A43, p0, _r, _ri)
end

function Global.N_0x27e3f2b57209fa54(p0, p1)
	return _in(0x27E3F2B57209FA54, p0, p1)
end

function Global.N_0x27e8a84c12b0b7d1(p0, p1, p2)
	return _in(0x27E8A84C12B0B7D1, p0, p1, p2, _r, _ri)
end

function Global.N_0x2804658eb7d8a50b(p0, p1)
	return _in(0x2804658EB7D8A50B, p0, p1)
end

function Global.N_0x280c7e3ac7f56e90(p0)
	return _in(0x280C7E3AC7F56E90, p0, _i, _i, _i)
end

function Global.N_0x282d36ff103d78df()
	return _in(0x282D36FF103D78DF, _r, _s)
end

function Global.N_0x283978a15512b2fe(p0, p1)
	return _in(0x283978A15512B2FE, p0, p1)
end

function Global.N_0x285438c26c732f9d()
	return _in(0x285438C26C732F9D, _r, _ri)
end

function Global.N_0x285d36c5c72b0569(p0)
	return _in(0x285D36C5C72B0569, p0, _r, _ri)
end

function Global.N_0x28717806d3bdd0d0(p0, p1)
	return _in(0x28717806D3BDD0D0, p0, p1, _r, _ri)
end

function Global.N_0x288cbb414c3c2fbb(p0)
	return _in(0x288CBB414C3C2FBB, p0, _r, _ri)
end

function Global.N_0x2890418b39bc8fff(p0, p1)
	return _in(0x2890418B39BC8FFF, p0, p1)
end

function Global.N_0x28a13bf6b05c3d83(p0, p1)
	return _in(0x28A13BF6B05C3D83, p0, p1)
end

function Global.N_0x28ae29d909c8fdce(p0)
	return _in(0x28AE29D909C8FDCE, p0, _r, _ri)
end

function Global.N_0x28cb6391acedd9db(p0)
	return _in(0x28CB6391ACEDD9DB, p0)
end

function Global.N_0x28eeace9b43d9597(p0, p1, p2)
	return _in(0x28EEACE9B43D9597, p0, p1, p2)
end

function Global.N_0x28ef780bdea8a639(p0, p1)
	return _in(0x28EF780BDEA8A639, p0, p1)
end

function Global.N_0x290b2e6ccde532e1(p0)
	return _in(0x290B2E6CCDE532E1, p0, _r, _ri)
end

function Global.N_0x2916b30dc6c41179(p0)
	return _in(0x2916B30DC6C41179, p0)
end

function Global.N_0x2917e634206b9e17(p0, p1)
	return _in(0x2917E634206B9E17, p0, p1)
end

function Global.N_0x291cc21d1fb6790e(p0)
	return _in(0x291CC21D1FB6790E, p0)
end

function Global.N_0x292ad61a33a7a485()
	return _in(0x292AD61A33A7A485)
end

function Global.N_0x292f0b6edc82e3a4(p0, p1)
	return _in(0x292F0B6EDC82E3A4, p0, p1)
end

function Global.N_0x2942457417a5fd24(p0)
	return _in(0x2942457417A5FD24, p0, _r, _ri)
end

function Global.N_0x2948235db2058e99(p0, p1)
	return _in(0x2948235DB2058E99, p0, p1)
end

function Global.N_0x294af5323f44b053(p0, p1, p2)
	return _in(0x294AF5323F44B053, p0, p1, p2, _r, _ri)
end

function Global.N_0x295514f198efd0ca(p0, p1)
	return _in(0x295514F198EFD0CA, p0, p1, _r, _ri)
end

function Global.N_0x295859eb18f48d82(p0)
	return _in(0x295859EB18F48D82, p0, _r, _ri)
end

function Global.N_0x2963b5c1637e8a27(p0)
	return _in(0x2963B5C1637E8A27, p0, _r, _ri)
end

function Global.N_0x297b72e2af094742(unk)
	return _in(0x297B72E2AF094742, unk)
end

function Global.N_0x2989e131fde37e97(p0, p1, p2, p3)
	return _in(0x2989E131FDE37E97, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x29924eb8ee9db926(p0, p1)
	return _in(0x29924EB8EE9DB926, p0, p1)
end

function Global.N_0x29ba9f78321e5a6c(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x29BA9F78321E5A6C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri)
end

function Global.N_0x29c733459a9011eb(p0, p1)
	return _in(0x29C733459A9011EB, p0, p1)
end

function Global.N_0x29cd4896ecb66c12()
	return _in(0x29CD4896ECB66C12)
end

function Global.N_0x29e6655df3590b0d(p0)
	return _in(0x29E6655DF3590B0D, p0)
end

function Global.N_0x29f3539189d3e277(p0, p1)
	return _in(0x29F3539189D3E277, p0, p1)
end

function Global.N_0x29fb4ce89472c3cb(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x29FB4CE89472C3CB, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x29fce825613fefca(p0, p1)
	return _in(0x29FCE825613FEFCA, p0, p1, _r, _ri)
end

function Global.N_0x29fe035d35b8589c(p0)
	return _in(0x29FE035D35B8589C, p0)
end

function Global.N_0x2a08a32b6d49906f(p0, p1)
	return _in(0x2A08A32B6D49906F, p0, p1, _r, _ri)
end

function Global.N_0x2a10538d0a005e81(p0, p1)
	return _in(0x2A10538D0A005E81, p0, p1)
end

function Global.N_0x2a1625858887d4e6(p0)
	return _in(0x2A1625858887D4E6, p0)
end

function Global.N_0x2a31d13c5f021d0d(p0)
	return _in(0x2A31D13C5F021D0D, p0)
end

function Global.N_0x2a32faa57b937173(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23)
	return _in(0x2A32FAA57B937173, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23)
end

function Global.N_0x2a374e6f0075ee81(p0, p1, p2, p3, p4)
	return _in(0x2A374E6F0075EE81, p0, p1, p2, p3, p4)
end

function Global.N_0x2a4765812202e671()
	return _in(0x2A4765812202E671, _r, _ri)
end

function Global.N_0x2a48d9567940598f(p0, p1, p2, p3)
	return _in(0x2A48D9567940598F, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x2a5afd2b8381a6e1(p0)
	return _in(0x2A5AFD2B8381A6E1, p0)
end

function Global.N_0x2a610bee7d341cc4(p0, p1)
	return _in(0x2A610BEE7D341CC4, p0, p1, _r, _ri)
end

function Global.N_0x2a6d1daab9ebb262(p0)
	return _in(0x2A6D1DAAB9EBB262, p0, _r, _ri)
end

function Global.N_0x2a7413168f6cd5a8()
	return _in(0x2A7413168F6CD5A8)
end

function Global.N_0x2a77ef9bec8518f4(p0)
	return _in(0x2A77EF9BEC8518F4, p0, _r, _ri)
end

function Global.N_0x2a8112a974de1ef6()
	return _in(0x2A8112A974DE1EF6, _r, _ri)
end

function Global.N_0x2ab7c81b3f70570c()
	return _in(0x2AB7C81B3F70570C, _r, _ri)
end

function Global.N_0x2af423d6ecb2c485(p0, p1)
	return _in(0x2AF423D6ECB2C485, p0, p1)
end

function Global.N_0x2b02db082258625f(p0, p1, p2, p3, p4)
	return _in(0x2B02DB082258625F, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x2b101ad9f651243a()
	return _in(0x2B101AD9F651243A, _r, _ri)
end

function Global.N_0x2b12b6fc8b8772ab(p0, p1)
	return _in(0x2B12B6FC8B8772AB, p0, p1)
end

function Global.N_0x2b32b11520626229(p0, p1, p2, p3, p4)
	return _in(0x2B32B11520626229, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x2b4ce170de09f346(p0, p1)
	return _in(0x2B4CE170DE09F346, p0, p1)
end

function Global.N_0x2b6529c54d29037a(p0)
	return _in(0x2B6529C54D29037A, p0)
end

function Global.N_0x2b6846401d68e563(p0, p1)
	return _in(0x2B6846401D68E563, p0, p1, _r, _ri)
end

function Global.N_0x2b7277484cc095fd(p0, p1)
	return _in(0x2B7277484CC095FD, p0, p1, _r, _ri)
end

function Global.N_0x2b8af29a78024bd3(p0)
	return _in(0x2B8AF29A78024BD3, p0)
end

function Global.N_0x2b9c37c01bf25edb(p0)
	return _in(0x2B9C37C01BF25EDB, p0, _r, _ri)
end

function Global.N_0x2ba1bcc99826cda2()
	return _in(0x2BA1BCC99826CDA2)
end

function Global.N_0x2ba918c823b8ba56(p0, p1)
	return _in(0x2BA918C823B8BA56, p0, p1)
end

function Global.N_0x2ba9d7bf629f920c(p0)
	return _in(0x2BA9D7BF629F920C, p0, _r, _ri)
end

function Global.N_0x2bae4880dcdd560b(p0, p1)
	return _in(0x2BAE4880DCDD560B, p0, p1, _r, _ri)
end

function Global.N_0x2bb2b5bcf0df8008(p0, p1)
	return _in(0x2BB2B5BCF0DF8008, p0, p1)
end

function Global.N_0x2bb8d58e88777499(p0)
	return _in(0x2BB8D58E88777499, p0)
end

function Global.N_0x2beed53b912537d0(p0, p1, p2)
	return _in(0x2BEED53B912537D0, p0, p1, p2)
end

function Global.N_0x2bf1953c0c21ac88(p0)
	return _in(0x2BF1953C0C21AC88, p0, _r, _ri)
end

function Global.N_0x2c04d89a0fb4e244(p0)
	return _in(0x2C04D89A0FB4E244, p0, _r, _ri)
end

function Global.N_0x2c24af8eeeef8a55(p0, p1, p2)
	return _in(0x2C24AF8EEEEF8A55, p0, p1, p2)
end

function Global.N_0x2c2d287748e8e9b7(p0)
	return _in(0x2C2D287748E8E9B7, p0)
end

function Global.N_0x2c41d93f550d5e37(p0, p1, p2)
	return _in(0x2C41D93F550D5E37, p0, p1, p2)
end

function Global.N_0x2c46d2a591d8c322(p0, p1, p2)
	return _in(0x2C46D2A591D8C322, p0, p1, p2, _r, _ri)
end

function Global.N_0x2c497bdef897c6df(p0)
	return _in(0x2C497BDEF897C6DF, p0, _r, _ri)
end

function Global.N_0x2c4e98dda475364f(p0)
	return _in(0x2C4E98DDA475364F, p0)
end

function Global.N_0x2c5bd9a43987aa27(p0)
	return _in(0x2C5BD9A43987AA27, p0, _r, _ri)
end

function Global.N_0x2c6a07af9aedabd8(p0, p1, p2, p3, p4)
	return _in(0x2C6A07AF9AEDABD8, p0, p1, p2, p3, p4)
end

function Global.N_0x2c729f2b94cea911(p0)
	return _in(0x2C729F2B94CEA911, p0, _r, _ri)
end

function Global.N_0x2c76fa0e01681f8d(p0, p1)
	return _in(0x2C76FA0E01681F8D, p0, p1, _r, _ri)
end

function Global.N_0x2c83212a7aa51d3d(p0)
	return _in(0x2C83212A7AA51D3D, p0, _r, _ri)
end

function Global.N_0x2c87c3e1c7b96ee2(p0)
	return _in(0x2C87C3E1C7B96EE2, p0)
end

function Global.N_0x2c9746d0ca15be1c(p0)
	return _in(0x2C9746D0CA15BE1C, p0, _r, _rv)
end

function Global.N_0x2cd41ac000e6f611()
	return _in(0x2CD41AC000E6F611)
end

function Global.N_0x2d053ea815702dd1(p0, p1)
	return _in(0x2D053EA815702DD1, p0, p1, _r, _ri)
end

function Global.N_0x2d0571bb55879da2(p0)
	return _in(0x2D0571BB55879DA2, p0, _r, _ri)
end

function Global.N_0x2d19bc4df626cbe7(p0, p1, p2, p3)
	return _in(0x2D19BC4DF626CBE7, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x2d3ace3de0a2b622(p0, p1)
	return _in(0x2D3ACE3DE0A2B622, p0, p1)
end

function Global.N_0x2d40bcbfe9305dea(p0, p1)
	return _in(0x2D40BCBFE9305DEA, p0, p1)
end

function Global.N_0x2d4f9c852ce8a253(p0)
	return _in(0x2D4F9C852CE8A253, p0, _r, _ri)
end

function Global.N_0x2d5dc831176d0114(p0)
	return _in(0x2D5DC831176D0114, p0, _r)
end

function Global.N_0x2d64376cf437363e(p0)
	return _in(0x2D64376CF437363E, p0, _r, _ri)
end

function Global.N_0x2d657b10f211c572(p0, p1)
	return _in(0x2D657B10F211C572, p0, p1, _r, _ri)
end

function Global.N_0x2d874ba20e8e1f20(p0)
	return _in(0x2D874BA20E8E1F20, p0, _r, _ri)
end

function Global.N_0x2d976dbdc731df80(p0)
	return _in(0x2D976DBDC731DF80, p0)
end

function Global.N_0x2db524750dc41ed4()
	return _in(0x2DB524750DC41ED4, _r, _ri)
end

function Global.N_0x2dc0e8dcbd3546e9(p0)
	return _in(0x2DC0E8DCBD3546E9, p0, _r, _ri)
end

function Global.N_0x2dd3149dc34a3f4c(p0)
	return _in(0x2DD3149DC34A3F4C, p0)
end

function Global.N_0x2dd42fad06e6f19e(p0, p1, p2)
	return _in(0x2DD42FAD06E6F19E, p0, p1, p2, _r, _ri)
end

function Global.N_0x2dd4e0e26dfad97d(p0, p1, p2)
	return _in(0x2DD4E0E26DFAD97D, p0, p1, p2, _r, _ri)
end

function Global.N_0x2df3d457d86f8e57(p0, p1)
	return _in(0x2DF3D457D86F8E57, p0, p1)
end

function Global.N_0x2df59ffe6ffd6044(p0, p1, p2, p3, p4)
	return _in(0x2DF59FFE6FFD6044, p0, p1, p2, p3, p4)
end

function Global.N_0x2df89cd2ed1d0bde(p0, p1)
	return _in(0x2DF89CD2ED1D0BDE, p0, p1)
end

function Global.N_0x2df9038c90ad5264(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x2DF9038C90AD5264, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0x2e036f0480b8bf02()
	return _in(0x2E036F0480B8BF02, _r, _ri)
end

function Global.N_0x2e1abe627c95ed9b()
	return _in(0x2E1ABE627C95ED9B, _r, _ri)
end

function Global.N_0x2e1cdc1ff3b8473e(p0, p1)
	return _in(0x2E1CDC1FF3B8473E, p0, p1, _r, _ri)
end

function Global.N_0x2e1d6d87346bb7d2(p0, p1, p2, p3)
	return _in(0x2E1D6D87346BB7D2, p0, p1, p2, p3)
end

function Global.N_0x2e20878fd208a68e(p0, p1)
	return _in(0x2E20878FD208A68E, p0, p1)
end

function Global.N_0x2e2e06023d07631e(p0, p1)
	return _in(0x2E2E06023D07631E, p0, p1, _r, _ri)
end

function Global.N_0x2e31aca7477cf00f(p0, p1, p2)
	return _in(0x2E31ACA7477CF00F, p0, p1, p2)
end

function Global.N_0x2e399eafbeea74d5()
	return _in(0x2E399EAFBEEA74D5)
end

function Global.N_0x2e545965df98d476(p0)
	return _in(0x2E545965DF98D476, p0, _r, _ri)
end

function Global.N_0x2e5b5d1f1453e08e(p0, p1)
	return _in(0x2E5B5D1F1453E08E, p0, p1)
end

function Global.N_0x2e67707bec52ca4b(p0)
	return _in(0x2E67707BEC52CA4B, p0)
end

function Global.N_0x2e78d822208e740a(p0)
	return _in(0x2E78D822208E740A, p0, _r, _ri)
end

function Global.N_0x2e957aa81f2c61c9()
	return _in(0x2E957AA81F2C61C9)
end

function Global.N_0x2eb75fb86c41f026(p0, p1, p2)
	return _in(0x2EB75FB86C41F026, p0, p1, p2)
end

function Global.N_0x2eb977293923c723(p0, p1)
	return _in(0x2EB977293923C723, p0, p1)
end

function Global.N_0x2ebf70e1d8c06683(p0, p1)
	return _in(0x2EBF70E1D8C06683, p0, p1)
end

function Global.N_0x2f050a3ff8738245(p0)
	return _in(0x2F050A3FF8738245, p0, _r, _ri)
end

function Global.N_0x2f4d53023f826ff0()
	return _in(0x2F4D53023F826FF0, _r, _ri)
end

function Global.N_0x2f54b146d3edce4d(p0)
	return _in(0x2F54B146D3EDCE4D, p0, _r, _ri)
end

function Global.N_0x2f7bb105144acf30()
	return _in(0x2F7BB105144ACF30)
end

function Global.N_0x2f7eb8b6f6afe79c(p0)
	return _in(0x2F7EB8B6F6AFE79C, p0, _r, _ri)
end

function Global.N_0x2f82cab262c8ae26(p0)
	return _in(0x2F82CAB262C8AE26, p0, _r, _ri)
end

function Global.N_0x2f901291ef177b02(p0, p1)
	return _in(0x2F901291EF177B02, p0, p1)
end

function Global.N_0x2f994cc29caa9d22(p0)
	return _in(0x2F994CC29CAA9D22, p0)
end

function Global.N_0x2f9ac754fe179d58(p0)
	return _in(0x2F9AC754FE179D58, p0)
end

function Global.N_0x2fa568bfa725f8d6(p0, p1, p2, p3)
	return _in(0x2FA568BFA725F8D6, p0, p1, p2, p3)
end

function Global.N_0x2fa86833e3617e2d(p0)
	return _in(0x2FA86833E3617E2D, p0, _r, _ri)
end

function Global.N_0x2fb53c631a49be92()
	return _in(0x2FB53C631A49BE92, _r, _ri)
end

function Global.N_0x2fcd528a397e5c88(p0, p1)
	return _in(0x2FCD528A397E5C88, p0, p1)
end

function Global.N_0x30146c25686b7836(p0, p1)
	return _in(0x30146C25686B7836, p0, p1, _r, _ri)
end

function Global.N_0x302e71c1d9ee75b9(p0, p1, p2)
	return _in(0x302E71C1D9EE75B9, p0, p1, p2, _r, _ri)
end

function Global.N_0x3034c77c79a58880(p0)
	return _in(0x3034C77C79A58880, p0)
end

function Global.N_0x3039be60b3749716(p0)
	return _in(0x3039BE60B3749716, p0, _r, _ri)
end

function Global.N_0x3053064f909b5f42(p0, p1)
	return _in(0x3053064F909B5F42, p0, p1)
end

function Global.N_0x30569f348d126a5a(p0)
	return _in(0x30569F348D126A5A, p0, _r, _ri)
end

function Global.N_0x3088634cf8c819cf(p0)
	return _in(0x3088634CF8C819CF, p0)
end

function Global.N_0x309bbebea8a3986c(p0, p1, p2, p3, p4)
	return _in(0x309BBEBEA8A3986C, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x30a768c30d385ec5(p0, p1, p2, p3, p4, p5)
	return _in(0x30A768C30D385EC5, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x30b391915538ebe2(p0)
	return _in(0x30B391915538EBE2, p0)
end

function Global.N_0x30bed53646c86d11(p0)
	return _in(0x30BED53646C86D11, p0, _r, _ri)
end

function Global.N_0x30d86b2b7622d0eb(p0)
	return _in(0x30D86B2B7622D0EB, p0, _r, _ri)
end

function Global.N_0x30e7c16b12da8211(p0)
	return _in(0x30E7C16B12DA8211, p0, _r, _ri)
end

function Global.N_0x31010318ba9897ac(p0, p1)
	return _in(0x31010318BA9897AC, p0, p1)
end

function Global.N_0x310ce349e0c0ec4b(p0, p1, p2)
	return _in(0x310CE349E0C0EC4B, p0, p1, p2)
end

function Global.N_0x31108bb5715d035f()
	return _in(0x31108BB5715D035F)
end

function Global.N_0x3112adb9d5f3426b(p0, p1)
	return _in(0x3112ADB9D5F3426B, p0, p1)
end

function Global.N_0x31160ec47e7c9549(p0, p1)
	return _in(0x31160EC47E7C9549, p0, p1)
end

function Global.N_0x31167ed4324b758d(p0)
	return _in(0x31167ED4324B758D, p0, _r, _ri)
end

function Global.N_0x313778edca9158e2()
	return _in(0x313778EDCA9158E2, _r, _ri)
end

function Global.N_0x3138582e0a13bfab(p0)
	return _in(0x3138582E0A13BFAB, p0, _r, _ri)
end

function Global.N_0x3145044f3990d321(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x3145044F3990D321, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x314c5465195f3b30(p0, p1)
	return _in(0x314C5465195F3B30, p0, p1)
end

function Global.N_0x3168ba5d6dece323()
	return _in(0x3168BA5D6DECE323)
end

function Global.N_0x316cdb5b6e8f4110(p0, p1, p2)
	return _in(0x316CDB5B6E8F4110, p0, p1, p2, _r, _ri)
end

function Global.N_0x317d9c9560529cc2(p0)
	return _in(0x317D9C9560529CC2, p0)
end

function Global.N_0x3180e991d4b8f248()
	return _in(0x3180E991D4B8F248)
end

function Global.N_0x318f0f9a4426cfa2(p0, p1)
	return _in(0x318F0F9A4426CFA2, p0, p1, _r, _ri)
end

function Global.N_0x31b2e7f2e3c58b89(p0, p1, p2, p3)
	return _in(0x31B2E7F2E3C58B89, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x31bb338f64d5c861(p0, p1)
	return _in(0x31BB338F64D5C861, p0, p1)
end

function Global.N_0x31c70a716cae1fee(p0)
	return _in(0x31C70A716CAE1FEE, p0, _r, _ri)
end

function Global.N_0x31dad2cd6d49546e(p0)
	return _in(0x31DAD2CD6D49546E, p0, _r, _ri)
end

function Global.N_0x31dc8d3f216d8509(p0)
	return _in(0x31DC8D3F216D8509, p0, _r, _ri)
end

function Global.N_0x31f343383f19c987(p0, p1, p2)
	return _in(0x31F343383F19C987, p0, p1, p2)
end

function Global.N_0x31fef6a20f00b963(p0)
	return _in(0x31FEF6A20F00B963, p0, _r, _ri)
end

function Global.N_0x3210bcb36af7621b(p0)
	return _in(0x3210BCB36AF7621B, p0)
end

function Global.N_0x3215bbe34d3418c5(p0)
	return _in(0x3215BBE34D3418C5, p0, _r, _ri)
end

function Global.N_0x3233c4ec0514c7ec(p0, p1, p2, p3, p4)
	return _in(0x3233C4EC0514C7EC, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x32348719dced2969(p0)
	return _in(0x32348719DCED2969, p0, _r, _ri)
end

function Global.N_0x32417cb860a3bdc4(p0, p1)
	return _in(0x32417CB860A3BDC4, p0, p1, _r, _ri)
end

function Global.N_0x324ab2a68ad8aee5()
	return _in(0x324AB2A68AD8AEE5)
end

function Global.N_0x325434c68358d282(p0)
	return _in(0x325434C68358D282, p0)
end

function Global.N_0x3255d4d2082c6339(p0, p1, p2)
	return _in(0x3255D4D2082C6339, p0, p1, p2)
end

function Global.N_0x326f7951ef0d7f75(p0, p1)
	return _in(0x326F7951EF0D7F75, p0, p1, _r, _ri)
end

function Global.N_0x329772c47dbb2fbc(p0)
	return _in(0x329772C47DBB2FBC, p0)
end

function Global.N_0x32a1e3b83d501096(p0)
	return _in(0x32A1E3B83D501096, p0, _r, _ri)
end

function Global.N_0x32a7c216344d623b(p0, p1, p2)
	return _in(0x32A7C216344D623B, p0, p1, p2, _r, _ri)
end

function Global.N_0x32c2939564d74bff(p0, p1, p2, p3, p4, p5)
	return _in(0x32C2939564D74BFF, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x32c90cdfaf40514c()
	return _in(0x32C90CDFAF40514C, _r, _ri)
end

function Global.N_0x32ccad8a981b53d3(p0)
	return _in(0x32CCAD8A981B53D3, p0)
end

function Global.N_0x32ceda9a0ab4cef7(p0, p1, p2)
	return _in(0x32CEDA9A0AB4CEF7, p0, p1, p2)
end

function Global.N_0x32d5898c4898cd95()
	return _in(0x32D5898C4898CD95)
end

function Global.N_0x32de2bffda43e62a()
	return _in(0x32DE2BFFDA43E62A)
end

function Global.N_0x32f4dbfdfcccc735(p0, p1, p2)
	return _in(0x32F4DBFDFCCCC735, p0, p1, p2)
end

function Global.N_0x330ca55a3647fa1c(p0, p1)
	return _in(0x330CA55A3647FA1C, p0, p1)
end

function Global.N_0x331550b212014b92(p0, p1)
	return _in(0x331550B212014B92, p0, p1, _r, _ri)
end

function Global.N_0x331cbd247fc5daa8(p0, p1, p2, p3, p4, p5)
	return _in(0x331CBD247FC5DAA8, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x331d349e0380b097(p0)
	return _in(0x331D349E0380B097, p0)
end

function Global.N_0x332630b862277879()
	return _in(0x332630B862277879, _r, _ri)
end

function Global.N_0x3329aae2882fc8e4(p0, p1, p2)
	return _in(0x3329AAE2882FC8E4, p0, p1, p2)
end

function Global.N_0x334ce0da4faf330c()
	return _in(0x334CE0DA4FAF330C)
end

function Global.N_0x336b3d200ab007cb(p0, p1, p2, p3, p4, p5)
	return _in(0x336B3D200AB007CB, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x3373779baf7caf48(p0, p1)
	return _in(0x3373779BAF7CAF48, p0, p1)
end

function Global.N_0x337f1cc8ee895601(p0, p1)
	return _in(0x337F1CC8EE895601, p0, p1, _r, _ri)
end

function Global.N_0x33825a7388a6b9f6(p0, p1)
	return _in(0x33825A7388A6B9F6, p0, p1, _r, _ri)
end

function Global.N_0x3397cd4e0353dfba(p0)
	return _in(0x3397CD4E0353DFBA, p0, _r, _ri)
end

function Global.N_0x33982467b1e349ef(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x33982467B1E349EF, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x33992a808df1c1ba(vehicle, p1)
	return _in(0x33992A808DF1C1BA, vehicle, p1)
end

function Global.N_0x339e16b41780fc35(p0, p1, p2)
	return _in(0x339E16B41780FC35, p0, p1, p2, _r, _ri)
end

function Global.N_0x33c1d63e55fa4284()
	return _in(0x33C1D63E55FA4284, _r, _ri)
end

function Global.N_0x33d51f801cb16e4f()
	return _in(0x33D51F801CB16E4F)
end

function Global.N_0x33fa048675821da7(p0, p1)
	return _in(0x33FA048675821DA7, p0, p1, _r, _ri)
end

function Global.N_0x341cdd17efc2472e(p0, p1)
	return _in(0x341CDD17EFC2472E, p0, p1)
end

function Global.N_0x345c9f993a8ab4a4(p0, p1)
	return _in(0x345C9F993A8AB4A4, p0, p1)
end

function Global.N_0x345ec3b7ebde1cb5(p0, p1, p2, p3, p4, p5)
	return _in(0x345EC3B7EBDE1CB5, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x348f211ca2404039(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x348F211CA2404039, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x34a0671be613d3d0(p0)
	return _in(0x34A0671BE613D3D0, p0, _r, _ri)
end

function Global.N_0x34ae85c7ca4857aa(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x34AE85C7CA4857AA, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x34b5ceac180a5d6e(p0, p1, p2)
	return _in(0x34B5CEAC180A5D6E, p0, p1, p2)
end

function Global.N_0x34b9c4d86df2c2f3(p0)
	return _in(0x34B9C4D86DF2C2F3, p0, _r, _ri)
end

function Global.N_0x34bcf6209b9668a7(p0, p1)
	return _in(0x34BCF6209B9668A7, p0, p1)
end

function Global.N_0x34c0010188d7c54a(p0, p1)
	return _in(0x34C0010188D7C54A, p0, p1)
end

function Global.N_0x34c11114887150fd(p0, p1)
	return _in(0x34C11114887150FD, p0, p1)
end

function Global.N_0x34c9af25649172d0(p0)
	return _in(0x34C9AF25649172D0, p0)
end

function Global.N_0x34d6ac1157c8226c(p0, p1)
	return _in(0x34D6AC1157C8226C, p0, p1, _r, _ri)
end

function Global.N_0x34eddd59364ad74a(p0, p1)
	return _in(0x34EDDD59364AD74A, p0, p1)
end

function Global.N_0x34f008a7e48c496b(p0, p1)
	return _in(0x34F008A7E48C496B, p0, p1, _r, _ri)
end

function Global.N_0x350c23949e43686c()
	return _in(0x350C23949E43686C, _r, _rf)
end

function Global.N_0x350e9211074955af(p0, p1)
	return _in(0x350E9211074955AF, p0, p1, _r, _ri)
end

function Global.N_0x35165c658077cd0b()
	return _in(0x35165C658077CD0B, _r, _ri)
end

function Global.N_0x3519cc3525319a96()
	return _in(0x3519CC3525319A96, _r, _ri)
end

function Global.N_0x351d71b8b72b858b(p0)
	return _in(0x351D71B8B72B858B, p0, _r, _ri)
end

function Global.N_0x351f74ed6177ebe7()
	return _in(0x351F74ED6177EBE7, _r, _ri)
end

function Global.N_0x354ca4dddeec397a(p0)
	return _in(0x354CA4DDDEEC397A, p0, _r, _ri)
end

function Global.N_0x354f689c4ffaab37(p0)
	return _in(0x354F689C4FFAAB37, p0, _r, _ri)
end

function Global.N_0x356135b9b10a2a82(p0)
	return _in(0x356135B9B10A2A82, p0, _r, _ri)
end

function Global.N_0x356f9fb0698c1feb(p0, p1)
	return _in(0x356F9FB0698C1FEB, p0, p1, _r, _ri)
end

function Global.N_0x35815f372d43e1e5(name, p1)
	return _in(0x35815F372D43E1E5, _ts(name), p1)
end

function Global.N_0x358a1a751b335a11(p0)
	return _in(0x358A1A751B335A11, p0)
end

function Global.N_0x35b8c070e0c16e2f(p0, p1)
	return _in(0x35B8C070E0C16E2F, p0, p1)
end

function Global.N_0x35d302397e524939(p0, p1, p2, p3, p4, p5)
	return _in(0x35D302397E524939, p0, p1, p2, p3, p4, p5, _r, _rv)
end

function Global.N_0x35dc1877312fba0f(p0)
	return _in(0x35DC1877312FBA0F, p0)
end

function Global.N_0x35defecae36d4fae(p0, p1)
	return _in(0x35DEFECAE36D4FAE, p0, p1)
end

function Global.N_0x35e5e21f9159849c(p0)
	return _in(0x35E5E21F9159849C, p0, _r, _ri)
end

function Global.N_0x362086b911657b1a(p0, p1)
	return _in(0x362086B911657B1A, p0, p1)
end

function Global.N_0x3641fcd53e59b335(p0, p1, p2)
	return _in(0x3641FCD53E59B335, p0, p1, p2)
end

function Global.N_0x36486af7da93a464(p0)
	return _in(0x36486AF7DA93A464, p0, _r, _ri)
end

function Global.N_0x36513affc703c60d(p0)
	return _in(0x36513AFFC703C60D, p0)
end

function Global.N_0x36559148b78853b3(p0, p1, p2)
	return _in(0x36559148B78853B3, p0, p1, p2)
end

function Global.N_0x3660bcab3a6bb734(p0)
	return _in(0x3660BCAB3A6BB734, p0)
end

function Global.N_0x36d0f2ba2c0d9bde(p0, p1)
	return _in(0x36D0F2BA2C0D9BDE, p0, p1, _r, _ri)
end

function Global.N_0x36d188aecb26094b(p0)
	return _in(0x36D188AECB26094B, p0)
end

function Global.N_0x36e3d8b5a6552fe8(p0)
	return _in(0x36E3D8B5A6552FE8, p0, _r, _ri)
end

function Global.N_0x36e4b61dc56de77c(p0, p1, p2, p3, p4)
	return _in(0x36E4B61DC56DE77C, p0, p1, p2, p3, p4)
end

function Global.N_0x36eb4d34d4a092c5(p0, p1)
	return _in(0x36EB4D34D4A092C5, p0, p1)
end

function Global.N_0x36f69e7a22655653(p0)
	return _in(0x36F69E7A22655653, p0, _r, _ri)
end

function Global.N_0x370a973252741ac4(p0, p1)
	return _in(0x370A973252741AC4, p0, p1)
end

function Global.N_0x370f57c47f68ebca(p0)
	return _in(0x370F57C47F68EBCA, p0, _r, _ri)
end

function Global.N_0x3738b784ddd35cc6(p0, p1, p2)
	return _in(0x3738B784DDD35CC6, p0, p1, p2, _r, _ri)
end

function Global.N_0x3743ce6948194349(p0, p1, p2, p3, p4)
	return _in(0x3743CE6948194349, p0, p1, p2, p3, p4)
end

function Global.N_0x374f0e716bfcde82(p0, p1, p2, p3)
	return _in(0x374F0E716BFCDE82, p0, p1, p2, p3)
end

function Global.N_0x375f5870a7b8bec1(p0)
	return _in(0x375F5870A7B8BEC1, p0, _r, _ri)
end

function Global.N_0x3765c3a3e8192e10()
	return _in(0x3765C3A3E8192E10, _r, _ri)
end

function Global.N_0x378d3b1b11d9385b(p0)
	return _in(0x378D3B1B11D9385B, p0)
end

function Global.N_0x3799efcc3c8cd5e1(p0)
	return _in(0x3799EFCC3C8CD5E1, p0, _r, _ri)
end

function Global.N_0x37a834aec6a4f74a()
	return _in(0x37A834AEC6A4F74A, _r, _ri)
end

function Global.N_0x37b01666bae8f7ef(p0)
	return _in(0x37B01666BAE8F7EF, p0, _r, _ri)
end

function Global.N_0x37c1257849def24a(p0)
	return _in(0x37C1257849DEF24A, p0)
end

function Global.N_0x37ceb637ba3b1a47(p0)
	return _in(0x37CEB637BA3B1A47, p0)
end

function Global.N_0x37d238be69f7378a(p0)
	return _in(0x37D238BE69F7378A, p0, _r, _ri)
end

function Global.N_0x37d7bdba89f13959(p0)
	return _in(0x37D7BDBA89F13959, p0)
end

function Global.N_0x380a2e353ad30917(p0, p1, p2)
	return _in(0x380A2E353AD30917, p0, p1, p2)
end

function Global.N_0x380ffa15b72408fb(p0)
	return _in(0x380FFA15B72408FB, p0, _r, _ri)
end

function Global.N_0x3813e11a378958a5(p0)
	return _in(0x3813E11A378958A5, p0, _r, _ri)
end

function Global.N_0x383f64263f946e45(p0, p1, p2, p3, p4, p5)
	return _in(0x383F64263F946E45, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x38497f139981c5c9(p0, p1, p2, p3)
	return _in(0x38497F139981C5C9, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3852237a3d9df145(p0)
	return _in(0x3852237A3D9DF145, p0)
end

function Global.N_0x387ad749e3b69b70(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x387AD749E3B69B70, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x38c0c9cae1544500(p0)
	return _in(0x38C0C9CAE1544500, p0)
end

function Global.N_0x38c2bf94d15f464d(p0)
	return _in(0x38C2BF94D15F464D, p0, _r, _ri)
end

function Global.N_0x38d9d50f2085e9b3(p0)
	return _in(0x38D9D50F2085E9B3, p0)
end

function Global.N_0x38e7dd70a242d5cb(p0, p1)
	return _in(0x38E7DD70A242D5CB, p0, p1)
end

function Global.N_0x3900491c0d61ed4b(p0, p1)
	return _in(0x3900491C0D61ED4B, p0, p1)
end

function Global.N_0x390710d2dafa6bff(p0, p1)
	return _in(0x390710D2DAFA6BFF, p0, p1)
end

function Global.N_0x39073da4eddbc91d(p0)
	return _in(0x39073DA4EDDBC91D, p0)
end

function Global.N_0x3923ec958249657d(p0, p1, p2)
	return _in(0x3923EC958249657D, p0, p1, p2)
end

function Global.N_0x3946fc742ac305cd(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x3946FC742AC305CD, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x39654e1f68b78287()
	return _in(0x39654E1F68B78287, _r, _ri)
end

function Global.N_0x3972f78a78b5d9df(p0)
	return _in(0x3972F78A78B5D9DF, p0)
end

function Global.N_0x397769175a7dbb30(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x397769175A7DBB30, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x398066f893149856(p0, p1, p2)
	return _in(0x398066F893149856, p0, p1, p2, _r, _ri)
end

function Global.N_0x39816f6f94f385ad(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x39816F6F94F385AD, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x398fab9c96a81924(p0, p1)
	return _in(0x398FAB9C96A81924, p0, p1)
end

function Global.N_0x399657ed871b3a6c(p0, p1)
	return _in(0x399657ED871B3A6C, p0, p1)
end

function Global.N_0x39a2fc5af55a52b1(p0, p1)
	return _in(0x39A2FC5AF55A52B1, p0, p1)
end

function Global.N_0x39a8ef7af29a192c(p0, p1, p2, p3)
	return _in(0x39A8EF7AF29A192C, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x39bed552db46ffa9(p0, p1)
	return _in(0x39BED552DB46FFA9, p0, p1)
end

function Global.N_0x39d6dace323a20b6(p0)
	return _in(0x39D6DACE323A20B6, p0, _r, _ri)
end

function Global.N_0x39ed303390ddeac7(p0, p1, p2, p3, p4)
	return _in(0x39ED303390DDEAC7, p0, p1, p2, p3, p4)
end

function Global.N_0x3a00d87b20a2a5e4(p0, p1)
	return _in(0x3A00D87B20A2A5E4, p0, p1)
end

function Global.N_0x3a0b667abff87f6e(p0, p1, p2)
	return _in(0x3A0B667ABFF87F6E, p0, p1, p2, _r, _ri)
end

function Global.N_0x3a0f82f6ee2291c8(p0)
	return _in(0x3A0F82F6EE2291C8, p0, _r, _ri)
end

function Global.N_0x3a3be6b920525237(p0, p1)
	return _in(0x3A3BE6B920525237, p0, p1)
end

function Global.N_0x3a3d5568af297cd5(p0)
	return _in(0x3A3D5568AF297CD5, p0, _r)
end

function Global.N_0x3a50753042b6891b(p0, p1)
	return _in(0x3A50753042B6891B, p0, p1)
end

function Global.N_0x3a5697b80fed5ebe(p0, p1, p2, p3, p4)
	return _in(0x3A5697B80FED5EBE, p0, p1, p2, p3, p4)
end

function Global.N_0x3a65f4844913a047(p0, p1)
	return _in(0x3A65F4844913A047, p0, p1, _r, _ri)
end

function Global.N_0x3a66f1963b223f61()
	return _in(0x3A66F1963B223F61, _r, _ri)
end

function Global.N_0x3a6ae4eee30370fe(p0, p1)
	return _in(0x3A6AE4EEE30370FE, p0, p1, _r, _ri)
end

function Global.N_0x3a77dae8b4fd7586(p0, p1)
	return _in(0x3A77DAE8B4FD7586, p0, p1)
end

function Global.N_0x3a8611bd7bde84f7(p0, p1)
	return _in(0x3A8611BD7BDE84F7, p0, p1)
end

function Global.N_0x3a87fda8f1b6cdfb(p0, p1, p2)
	return _in(0x3A87FDA8F1B6CDFB, p0, p1, p2)
end

function Global.N_0x3a9a281ff71249e9(p0, p1)
	return _in(0x3A9A281FF71249E9, p0, p1)
end

function Global.N_0x3aa0cdc63696166d(p0)
	return _in(0x3AA0CDC63696166D, p0, _r, _ri)
end

function Global.N_0x3aa24ccc0d451379(p0)
	return _in(0x3AA24CCC0D451379, p0, _r, _ri)
end

function Global.N_0x3ab3a77672f6473f(p0, p1, p2, p3)
	return _in(0x3AB3A77672F6473F, p0, p1, p2, p3, _r, _rv)
end

function Global.N_0x3ab6c7b0bb0df4b1(p0, p1)
	return _in(0x3AB6C7B0BB0DF4B1, p0, p1, _r, _ri)
end

function Global.N_0x3abfa128f5bf5a70(p0, p1, p2)
	return _in(0x3ABFA128F5BF5A70, p0, p1, p2)
end

function Global.N_0x3acac8832e77bc93(p0, p1)
	return _in(0x3ACAC8832E77BC93, p0, p1)
end

function Global.N_0x3acc128510142b9d(p0, p1, p2, p3)
	return _in(0x3ACC128510142B9D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3acce14dfa6ba8c2(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x3ACCE14DFA6BA8C2, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x3ad212429e095efb(p0, p1)
	return _in(0x3AD212429E095EFB, p0, p1)
end

function Global.N_0x3ad8eff9703be657(p0, p1)
	return _in(0x3AD8EFF9703BE657, p0, p1)
end

function Global.N_0x3adc71a66356d706()
	return _in(0x3ADC71A66356D706, _r, _ri)
end

function Global.N_0x3ae3552e7c207cc5(p0, p1)
	return _in(0x3AE3552E7C207CC5, p0, p1)
end

function Global.N_0x3ae451860f03ca8a(p0, p1)
	return _in(0x3AE451860F03CA8A, p0, p1, _r, _ri)
end

function Global.N_0x3aeabae3f3c7600c()
	return _in(0x3AEABAE3F3C7600C, _r, _ri)
end

function Global.N_0x3aec4a410ecaf30d(p0)
	return _in(0x3AEC4A410ECAF30D, p0, _r, _ri)
end

function Global.N_0x3b005ff0538ed2a9(p0)
	return _in(0x3B005FF0538ED2A9, p0, _r, _ri)
end

function Global.N_0x3b296934db026873(p0, p1)
	return _in(0x3B296934DB026873, p0, p1)
end

function Global.N_0x3b31732fade5baf3()
	return _in(0x3B31732FADE5BAF3, _r, _ri)
end

function Global.N_0x3b393716c3fd8237(p0)
	return _in(0x3B393716C3FD8237, p0, _r, _ri)
end

function Global.N_0x3b7b7908b7adfb4b(p0, p1)
	return _in(0x3B7B7908B7ADFB4B, p0, p1)
end

function Global.N_0x3b82acc3f4b6240c()
	return _in(0x3B82ACC3F4B6240C, _r, _ri)
end

function Global.N_0x3b8e3ad9677ce12b(p0, p1, p2)
	return _in(0x3B8E3AD9677CE12B, p0, p1, p2)
end

function Global.N_0x3bb84f812e052c90(p0)
	return _in(0x3BB84F812E052C90, p0)
end

function Global.N_0x3bbdd6143ff16f98(p0, p1, p2, p3, p4)
	return _in(0x3BBDD6143FF16F98, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x3bbeecc5b8f35318(p0, p1)
	return _in(0x3BBEECC5B8F35318, p0, p1)
end

function Global.N_0x3bcf32ff37ea9f1d(p0)
	return _in(0x3BCF32FF37EA9F1D, p0)
end

function Global.N_0x3bdfcf25b58b0415(p0)
	return _in(0x3BDFCF25B58B0415, p0, _r, _ri)
end

function Global.N_0x3bf0767cf33fcc88(p0)
	return _in(0x3BF0767CF33FCC88, p0)
end

function Global.N_0x3c3c7b1b5ec08764()
	return _in(0x3C3C7B1B5EC08764)
end

function Global.N_0x3c486e334520579d()
	return _in(0x3C486E334520579D)
end

function Global.N_0x3c4ae8506638c7e2(p0, p1)
	return _in(0x3C4AE8506638C7E2, p0, p1)
end

function Global.N_0x3c529a827998f9b3(p0, p1, p2)
	return _in(0x3C529A827998F9B3, p0, p1, p2)
end

function Global.N_0x3c61b52b00848c26(p0, p1, p2, p3, p4)
	return _in(0x3C61B52B00848C26, p0, p1, p2, p3, p4)
end

function Global.N_0x3c6490d940ff5d0b(p0, p1, p2, p3, p4)
	return _in(0x3C6490D940FF5D0B, p0, p1, p2, p3, p4)
end

function Global.N_0x3c67506996001f5e()
	return _in(0x3C67506996001F5E, _r, _ri)
end

function Global.N_0x3c7a9c2c953128fe(p0)
	return _in(0x3C7A9C2C953128FE, p0)
end

function Global.N_0x3c8f74e8fe751614()
	return _in(0x3C8F74E8FE751614)
end

function Global.N_0x3c9628a811cbd724(p0)
	return _in(0x3C9628A811CBD724, p0, _r, _ri)
end

function Global.N_0x3ca5e58c9731a16b(p0, p1)
	return _in(0x3CA5E58C9731A16B, p0, p1)
end

function Global.N_0x3caad93fa5b9579a(p0, p1, p2)
	return _in(0x3CAAD93FA5B9579A, p0, p1, p2)
end

function Global.N_0x3cb8859f04763c78(p0, p1)
	return _in(0x3CB8859F04763C78, p0, p1, _r, _ri)
end

function Global.N_0x3cf46f55c6585590()
	return _in(0x3CF46F55C6585590, _r, _ri)
end

function Global.N_0x3cf96e16265b7dc8(p0)
	return _in(0x3CF96E16265B7DC8, p0, _r, _ri)
end

function Global.N_0x3d084d5568fb4028(p0)
	return _in(0x3D084D5568FB4028, p0, _r, _ri)
end

function Global.N_0x3d0bbccf401b5fdb()
	return _in(0x3D0BBCCF401B5FDB)
end

function Global.N_0x3d10d7179d7034af(p0, p1, p2)
	return _in(0x3D10D7179D7034AF, p0, p1, p2, _r, _ri)
end

function Global.N_0x3d2674828a4e6b3c()
	return _in(0x3D2674828A4E6B3C, _r, _ri)
end

function Global.N_0x3d69537039f8d824(p0)
	return _in(0x3D69537039F8D824, p0, _r, _ri)
end

function Global.N_0x3d86997a86feef0d(p0, p1)
	return _in(0x3D86997A86FEEF0D, p0, p1)
end

function Global.N_0x3d9da5c9efd20d88(p0, p1)
	return _in(0x3D9DA5C9EFD20D88, p0, p1)
end

function Global.N_0x3d9f958834ab9c30(p0)
	return _in(0x3D9F958834AB9C30, p0, _r, _ri)
end

function Global.N_0x3da7a10583a4bec0()
	return _in(0x3DA7A10583A4BEC0, _r, _ri)
end

function Global.N_0x3daabe78a23694bc(p0, p1)
	return _in(0x3DAABE78A23694BC, p0, p1)
end

function Global.N_0x3df7ee3a76185108()
	return _in(0x3DF7EE3A76185108)
end

function Global.N_0x3e2616e7ea539480(p0)
	return _in(0x3E2616E7EA539480, p0, _r, _ri)
end

function Global.N_0x3e2a25b2416dd67e(p0)
	return _in(0x3E2A25B2416DD67E, p0, _r, _rv)
end

function Global.N_0x3e2fddbe435a8787()
	return _in(0x3E2FDDBE435A8787)
end

function Global.N_0x3e4a16bc669e71b3()
	return _in(0x3E4A16BC669E71B3, _r, _ri)
end

function Global.N_0x3e4e811480b3ae79(p0, p1, p2, p3)
	return _in(0x3E4E811480B3AE79, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3e592d0486dec0f6(p0)
	return _in(0x3E592D0486DEC0F6, p0, _r, _ri)
end

function Global.N_0x3e593df9c2962ec6(p0)
	return _in(0x3E593DF9C2962EC6, p0, _r, _ri)
end

function Global.N_0x3e74a687a73979c6(p0)
	return _in(0x3E74A687A73979C6, p0)
end

function Global.N_0x3e8cce6769db5f34(p0)
	return _in(0x3E8CCE6769DB5F34, p0, _r, _ri)
end

function Global.N_0x3e93dddcbb6111e4(p0, p1)
	return _in(0x3E93DDDCBB6111E4, p0, p1)
end

function Global.N_0x3e98ac9d8c56c62c(p0)
	return _in(0x3E98AC9D8C56C62C, p0)
end

function Global.N_0x3ea62e56f386c997(p0, p1)
	return _in(0x3EA62E56F386C997, p0, p1)
end

function Global.N_0x3eb2791a1fbc8a42(p0, p1)
	return _in(0x3EB2791A1FBC8A42, p0, p1)
end

function Global.N_0x3ec28da1ffac9ddd(p0, p1, p2, p3)
	return _in(0x3EC28DA1FFAC9DDD, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3ee1f7a8c32f24e1(p0, p1, p2, p3)
	return _in(0x3EE1F7A8C32F24E1, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3eecaadab0d9fe29()
	return _in(0x3EECAADAB0D9FE29, _r, _ri)
end

function Global.N_0x3efabb21e14a6bd1(p0, p1, p2)
	return _in(0x3EFABB21E14A6BD1, p0, p1, p2)
end

function Global.N_0x3f08c6163a4ab1d6(p0)
	return _in(0x3F08C6163A4AB1D6, p0)
end

function Global.N_0x3f0abae38a0515ad(p0, p1)
	return _in(0x3F0ABAE38A0515AD, p0, p1)
end

function Global.N_0x3f2ee18a3e294801(p0)
	return _in(0x3F2EE18A3E294801, p0, _r, _ri)
end

function Global.N_0x3f4fd4bed07ab8c4(p0)
	return _in(0x3F4FD4BED07AB8C4, p0, _r, _ri)
end

function Global.N_0x3f59fe6f37869576(p0, p1)
	return _in(0x3F59FE6F37869576, p0, p1, _r, _ri)
end

function Global.N_0x3f6fd87d2030adc6()
	return _in(0x3F6FD87D2030ADC6, _r, _ri)
end

function Global.N_0x3f73aed12a5ef0ff(p0)
	return _in(0x3F73AED12A5EF0FF, p0, _r, _ri)
end

function Global.N_0x3f81ea4275d39d6f(p0)
	return _in(0x3F81EA4275D39D6F, p0, _r, _ri)
end

function Global.N_0x3f8387db1b9f31b7(p0, p1)
	return _in(0x3F8387DB1B9F31B7, p0, p1, _r, _ri)
end

function Global.N_0x3f9fddba79117c69(p0, p1, p2, p3)
	return _in(0x3F9FDDBA79117C69, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3fa09dd57b93c0de(p0, p1, p2, p3, p4)
	return _in(0x3FA09DD57B93C0DE, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x3fa7d7d1e0ea809e(p0, p1)
	return _in(0x3FA7D7D1E0EA809E, p0, p1)
end

function Global.N_0x3faa928a79591761(p0)
	return _in(0x3FAA928A79591761, p0, _r, _ri)
end

function Global.N_0x3fbb838aea30c1d8()
	return _in(0x3FBB838AEA30C1D8)
end

function Global.N_0x3fbc3f51bf12dfbf(p0)
	return _in(0x3FBC3F51BF12DFBF, p0, _r, _ri)
end

function Global.N_0x3fc4c027fd0936f4(p0)
	return _in(0x3FC4C027FD0936F4, p0)
end

function Global.N_0x3fcbb5fcfd968698(p0, p1, p2, p3, p4)
	return _in(0x3FCBB5FCFD968698, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x3fda2b79aeee351c(p0, p1, p2, p3)
	return _in(0x3FDA2B79AEEE351C, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x3fdbb99efd8ce4af(p0, p1, p2)
	return _in(0x3FDBB99EFD8CE4AF, p0, p1, p2)
end

function Global.N_0x3fdcc1f8c17e303e(p0, p1, p2)
	return _in(0x3FDCC1F8C17E303E, p0, p1, p2)
end

function Global.N_0x3fe141fdb990e3d1()
	return _in(0x3FE141FDB990E3D1)
end

function Global.N_0x3fe4fb41ef7d2196(p0)
	return _in(0x3FE4FB41EF7D2196, p0)
end

function Global.N_0x3feb770d8ed9047a(p0)
	return _in(0x3FEB770D8ED9047A, p0, _r, _ri)
end

function Global.N_0x3ffb15534067dcd4(p0)
	return _in(0x3FFB15534067DCD4, p0, _r, _ri)
end

function Global.N_0x3ffcd7bba074cc80(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x3FFCD7BBA074CC80, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0x3ffe60dd8a936551(p0, p1)
	return _in(0x3FFE60DD8A936551, p0, p1, _r, _ri)
end

function Global.N_0x402e1a61d2587fcd(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x402E1A61D2587FCD, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x404514d231db27a0(p0, p1)
	return _in(0x404514D231DB27A0, p0, p1)
end

function Global.N_0x404527bc03da0e6c(p0)
	return _in(0x404527BC03DA0E6C, p0, _r, _ri)
end

function Global.N_0x4046493d2eeaca0e()
	return _in(0x4046493D2EEACA0E)
end

function Global.N_0x405180b14da5a935(p0, p1)
	return _in(0x405180B14DA5A935, p0, p1)
end

function Global.N_0x405ddefb1f531b18(p0, p1, p2, p3)
	return _in(0x405DDEFB1F531B18, p0, p1, p2, p3)
end

function Global.N_0x406808610220405b(p0)
	return _in(0x406808610220405B, p0)
end

function Global.N_0x406ccf555b04fad3(p0, p1, p2)
	return _in(0x406CCF555B04FAD3, p0, p1, p2)
end

function Global.N_0x40851bcc33acd9ab(p0)
	return _in(0x40851BCC33ACD9AB, p0, _r, _ri)
end

function Global.N_0x408d1149c5e39c1e(p0, p1)
	return _in(0x408D1149C5E39C1E, p0, p1)
end

function Global.N_0x40914ccf2a1ab531()
	return _in(0x40914CCF2A1AB531, _r, _ri)
end

function Global.N_0x409fe0ca6a4d1d49(p0, p1, p2)
	return _in(0x409FE0CA6A4D1D49, p0, p1, p2, _r, _ri)
end

function Global.N_0x40ab73092c95b5f5(p0, p1, p2, p3)
	return _in(0x40AB73092C95B5F5, p0, p1, p2, p3)
end

function Global.N_0x40c3524d4ed83554(p0, p1)
	return _in(0x40C3524D4ED83554, p0, p1)
end

function Global.N_0x40c9155af8bc13f3(p0)
	return _in(0x40C9155AF8BC13F3, p0, _r, _ri)
end

function Global.N_0x40ca665ab9d8d505(p0, p1)
	return _in(0x40CA665AB9D8D505, p0, p1)
end

function Global.N_0x40d72189f46d2e15(p0, p1)
	return _in(0x40D72189F46D2E15, p0, p1)
end

function Global.N_0x40f769d31a00d5a0(p0, p1)
	return _in(0x40F769D31A00D5A0, p0, p1, _r, _ri)
end

function Global.N_0x411189e51b8020ba(p0, p1)
	return _in(0x411189E51B8020BA, p0, p1)
end

function Global.N_0x41323f4e0c4ae94b(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x41323F4E0C4AE94B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x41365db586cd9e8e(p0, p1)
	return _in(0x41365DB586CD9E8E, p0, p1)
end

function Global.N_0x413697ec260aabbf(p0, p1, p2)
	return _in(0x413697EC260AABBF, p0, p1, p2)
end

function Global.N_0x4138ee36bc3dc0a7(p0, p1)
	return _in(0x4138EE36BC3DC0A7, p0, p1, _r, _ri)
end

function Global.N_0x41452e8a3b9c0c4b()
	return _in(0x41452E8A3B9C0C4B, _r, _ri)
end

function Global.N_0x41503629d1139abc(p0, p1, p2, p3, p4)
	return _in(0x41503629D1139ABC, p0, p1, p2, p3, p4)
end

function Global.N_0x4154b7d8c75e5dcf(p0)
	return _in(0x4154B7D8C75E5DCF, p0)
end

function Global.N_0x415fe28ed44bff14()
	return _in(0x415FE28ED44BFF14)
end

function Global.N_0x4161648394262fdf(p0, p1, p2, p3)
	return _in(0x4161648394262FDF, p0, p1, p2, p3)
end

function Global.N_0x4182c037aa1f0091(p0, p1)
	return _in(0x4182C037AA1F0091, p0, p1)
end

function Global.N_0x41afa5f228b0b6b0()
	return _in(0x41AFA5F228B0B6B0)
end

function Global.N_0x41c23a8e6b344867(p0, p1)
	return _in(0x41C23A8E6B344867, p0, p1)
end

function Global.N_0x41cda90ee3450921(p0)
	return _in(0x41CDA90EE3450921, p0)
end

function Global.N_0x41d1331afad5a091(p0, p1, p2)
	return _in(0x41D1331AFAD5A091, p0, p1, p2)
end

function Global.N_0x41e452a3c580d1a7()
	return _in(0x41E452A3C580D1A7)
end

function Global.N_0x41f0b254ddf71473(p0)
	return _in(0x41F0B254DDF71473, p0)
end

function Global.N_0x41f88a85a579a61d(p0)
	return _in(0x41F88A85A579A61D, p0)
end

function Global.N_0x422179c7f6ad9304(p0, p1)
	return _in(0x422179C7F6AD9304, p0, p1)
end

function Global.N_0x423c6b1f3786d28b(p0, p1)
	return _in(0x423C6B1F3786D28B, p0, p1)
end

function Global.N_0x42404d57d621601a(p0)
	return _in(0x42404D57D621601A, p0, _r, _ri)
end

function Global.N_0x42429c674b61238b(p0)
	return _in(0x42429C674B61238B, p0, _r, _ri)
end

function Global.N_0x4248ab2eeb3c75ad(p0, p1, p2)
	return _in(0x4248AB2EEB3C75AD, p0, p1, p2)
end

function Global.N_0x424b17a7dc5c90bc(p0)
	return _in(0x424B17A7DC5C90BC, p0, _r, _ri)
end

function Global.N_0x424ffcb9f0d2d4b5(p0, p1)
	return _in(0x424FFCB9F0D2D4B5, p0, p1)
end

function Global.N_0x42688e94e96fd9b4(p0, p1, p2)
	return _in(0x42688E94E96FD9B4, p0, p1, p2, _r, _ri)
end

function Global.N_0x427c919e9809e370(p0, p1)
	return _in(0x427C919E9809E370, p0, p1)
end

function Global.N_0x4285804fd65d8066(p0, p1)
	return _in(0x4285804FD65D8066, p0, p1)
end

function Global.N_0x42871327315edae8(p0)
	return _in(0x42871327315EDAE8, p0, _r, _ri)
end

function Global.N_0x4293b44a855f82cc(p0, p1, p2)
	return _in(0x4293B44A855F82CC, p0, p1, p2, _r, _ri)
end

function Global.N_0x42a2f33a1942e865(p0)
	return _in(0x42A2F33A1942E865, p0, _r, _ri)
end

function Global.N_0x42a429cdfed6d99d(p0, p1, p2)
	return _in(0x42A429CDFED6D99D, p0, p1, p2)
end

function Global.N_0x42cfd8fd8cc8dc69(p0, p1)
	return _in(0x42CFD8FD8CC8DC69, p0, p1)
end

function Global.N_0x42ed56b02e05d109(p0, p1)
	return _in(0x42ED56B02E05D109, p0, p1)
end

function Global.N_0x43037abfe214a851()
	return _in(0x43037ABFE214A851)
end

function Global.N_0x4308812a6e9ca62e(p0, p1)
	return _in(0x4308812A6E9CA62E, p0, p1, _r, _ri)
end

function Global.N_0x430ee0a19bc5a287(p0, p1, p2)
	return _in(0x430EE0A19BC5A287, p0, p1, p2, _r, _ri)
end

function Global.N_0x430f8319ae56c8a9(p0, p1)
	return _in(0x430F8319AE56C8A9, p0, p1, _r, _rv)
end

function Global.N_0x431240a58484d5d0(p0, p1)
	return _in(0x431240A58484D5D0, p0, p1)
end

function Global.N_0x4358bcf14c91761c(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x4358BCF14C91761C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x437c08db4febe2bd(p0, p1, p2, p3)
	return _in(0x437C08DB4FEBE2BD, p0, p1, p2, p3)
end

function Global.N_0x43ab9d5a7d415478()
	return _in(0x43AB9D5A7D415478, _r)
end

function Global.N_0x43ad8fc02b429d33(p0, p1, p2, p3)
	return _in(0x43AD8FC02B429D33, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x43c21623e42b821b(p0)
	return _in(0x43C21623E42B821B, p0, _r, _ri)
end

function Global.N_0x43cf999205084b4b()
	return _in(0x43CF999205084B4B)
end

function Global.N_0x43e4da469541a9c9(p0)
	return _in(0x43E4DA469541A9C9, p0, _r, _ri)
end

function Global.N_0x43f35ddb2905d945(p0, p1)
	return _in(0x43F35DDB2905D945, p0, p1, _r, _ri)
end

function Global.N_0x43f50a7cd2482156(p0, p1)
	return _in(0x43F50A7CD2482156, p0, p1)
end

function Global.N_0x43f867ef5c463a53(p0)
	return _in(0x43F867EF5C463A53, p0)
end

function Global.N_0x43ff27fc1829c202(p0, p1)
	return _in(0x43FF27FC1829C202, p0, p1, _r, _ri)
end

function Global.N_0x44026e3db3ced602(p0, p1)
	return _in(0x44026E3DB3CED602, p0, p1, _r, _ri)
end

function Global.N_0x4402960666000e62(p0, p1)
	return _in(0x4402960666000E62, p0, p1, _r, _ri)
end

function Global.N_0x442b4347b6ec36e8(entity, p1, p2)
	return _in(0x442B4347B6EC36E8, entity, p1, p2)
end

function Global.N_0x443174c20b8b9e7f(p0, p1, p2)
	return _in(0x443174C20B8B9E7F, p0, p1, p2)
end

function Global.N_0x4440fee3efe78f54(p0)
	return _in(0x4440FEE3EFE78F54, p0)
end

function Global.N_0x444c910a5058e568(p0, p1)
	return _in(0x444C910A5058E568, p0, p1)
end

function Global.N_0x445d7d8ea66e373e(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
	return _in(0x445D7D8EA66E373E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
end

function Global.N_0x4465c3d1475bd3fd(p0)
	return _in(0x4465C3D1475BD3FD, p0)
end

function Global.N_0x44813684f72b563c(p0, p1)
	return _in(0x44813684F72B563C, p0, p1)
end

function Global.N_0x449995ea846d3fc2(p0)
	return _in(0x449995EA846D3FC2, p0)
end

function Global.N_0x44a5eef54f62e823(p0)
	return _in(0x44A5EEF54F62E823, p0, _r, _ri)
end

function Global.N_0x44b09a23d728045a(p0)
	return _in(0x44B09A23D728045A, p0, _r, _ri)
end

function Global.N_0x44b3a36933ac009c(p0, p1, p2)
	return _in(0x44B3A36933AC009C, p0, p1, p2, _r, _ri)
end

function Global.N_0x44c8f4908f1b2622(p0, p1)
	return _in(0x44C8F4908F1B2622, p0, p1, _r, _ri)
end

function Global.N_0x44d59ec597bbf348(p0, p1)
	return _in(0x44D59EC597BBF348, p0, p1)
end

function Global.N_0x450080ddedb91258(p0, p1)
	return _in(0x450080DDEDB91258, p0, p1)
end

function Global.N_0x450769c833d58844()
	return _in(0x450769C833D58844, _r, _ri)
end

function Global.N_0x4538ee7c321590bc()
	return _in(0x4538EE7C321590BC, _r, _ri)
end

function Global.N_0x453d16d41fc51d3e(p0)
	return _in(0x453D16D41FC51D3E, p0)
end

function Global.N_0x454ad4da6c41b5bd(p0)
	return _in(0x454AD4DA6C41B5BD, p0, _r, _ri)
end

function Global.N_0x455156f47dc6b78c(p0)
	return _in(0x455156F47DC6B78C, p0)
end

function Global.N_0x455ecca0715c507f()
	return _in(0x455ECCA0715C507F)
end

function Global.N_0x45853f4e17d847d5(p0)
	return _in(0x45853F4E17D847D5, p0, _r, _ri)
end

function Global.N_0x4592b8b9b0ef5f48(p0)
	return _in(0x4592B8B9B0EF5F48, p0)
end

function Global.N_0x45ab66d02b601fa7(p0)
	return _in(0x45AB66D02B601FA7, p0, _r, _ri)
end

function Global.N_0x45bf3a6239a576b7()
	return _in(0x45BF3A6239A576B7, _r, _ri)
end

function Global.N_0x45d50415e4d885ff()
	return _in(0x45D50415E4D885FF, _r)
end

function Global.N_0x45e57fdd531c9477(p0, p1)
	return _in(0x45E57FDD531C9477, p0, p1)
end

function Global.N_0x45ef176b532ca851(p0, p1)
	return _in(0x45EF176B532CA851, p0, p1)
end

function Global.N_0x45f13b7e0a15c880(p0, p1, p2, p3, p4)
	return _in(0x45F13B7E0A15C880, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x45fea6d5539bd474(p0, p1)
	return _in(0x45FEA6D5539BD474, p0, p1)
end

function Global.N_0x4607d57c5f7d332a(p0)
	return _in(0x4607D57C5F7D332A, p0, _r, _ri)
end

function Global.N_0x461fcbdeb4d06717(p0, p1)
	return _in(0x461FCBDEB4D06717, p0, p1)
end

function Global.N_0x462c687bea254bd9(p0)
	return _in(0x462C687BEA254BD9, p0, _r, _ri)
end

function Global.N_0x462ff2a432733a44(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x462FF2A432733A44, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x463803429297117c(p0, p1, p2, p3, p4, p5)
	return _in(0x463803429297117C, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x4642182a298187d0(p0, p1, p2, p3, p4)
	return _in(0x4642182A298187D0, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x4647842fe8f31c1e(p0, p1)
	return _in(0x4647842FE8F31C1E, p0, p1)
end

function Global.N_0x4653a741d17f2cd0()
	return _in(0x4653A741D17F2CD0, _r, _ri)
end

function Global.N_0x465f04f68ad38197(p0, p1, p2)
	return _in(0x465F04F68AD38197, p0, p1, p2, _r, _ri)
end

function Global.N_0x4662bfe01938d98d(p0, p1, p2, p3, p4)
	return _in(0x4662BFE01938D98D, p0, p1, p2, p3, p4)
end

function Global.N_0x4664d213a0ccaf40()
	return _in(0x4664D213A0CCAF40, _r, _ri)
end

function Global.N_0x46743bbfedbc859e(p0, p1, p2)
	return _in(0x46743BBFEDBC859E, p0, p1, p2)
end

function Global.N_0x4687e69d258bbe41(p0)
	return _in(0x4687E69D258BBE41, p0, _r, _ri)
end

function Global.N_0x46bf2a810679d6e6(p0, p1)
	return _in(0x46BF2A810679D6E6, p0, p1, _r, _ri)
end

function Global.N_0x46cbcf0e98a4e156(p0, p1)
	return _in(0x46CBCF0E98A4E156, p0, p1)
end

function Global.N_0x46db71883ee9d5af(p0, p1, p2, p3)
	return _in(0x46DB71883EE9D5AF, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x46f032b8ddf46cde(p0)
	return _in(0x46F032B8DDF46CDE, p0, _r, _ri)
end

function Global.N_0x46fa0ae18f4c7fa9(p0)
	return _in(0x46FA0AE18F4C7FA9, p0, _r, _ri)
end

function Global.N_0x4707e9c23d8ca3fe(p0, p1)
	return _in(0x4707E9C23D8CA3FE, p0, p1)
end

function Global.N_0x4735e2a4bb83d9da(p0)
	return _in(0x4735E2A4BB83D9DA, p0, _r, _ri)
end

function Global.N_0x4752f68eb7f2d280(p0, p1, p2)
	return _in(0x4752F68EB7F2D280, p0, p1, p2)
end

function Global.N_0x4759cc730f947c81()
	return _in(0x4759CC730F947C81)
end

function Global.N_0x476038b5a0734c10(p0, p1)
	return _in(0x476038B5A0734C10, p0, p1)
end

function Global.N_0x477122b8d05e7968(p0, p1, p2)
	return _in(0x477122B8D05E7968, p0, p1, p2, _r, _ri)
end

function Global.N_0x478f6b9920446ce2(p0, p1)
	return _in(0x478F6B9920446CE2, p0, p1)
end

function Global.N_0x4791899615d70fa2(p0, p1, p2)
	return _in(0x4791899615D70FA2, p0, p1, p2)
end

function Global.N_0x4820a6939d7cef28(p0, p1)
	return _in(0x4820A6939D7CEF28, p0, p1)
end

function Global.N_0x48229ce0c7938237(p0)
	return _in(0x48229CE0C7938237, p0, _r, _ri)
end

function Global.N_0x4822a65d5af64e69(p0)
	return _in(0x4822A65D5AF64E69, p0, _r, _ri)
end

function Global.N_0x4823f13a21f51964(p0, p1)
	return _in(0x4823F13A21F51964, p0, p1, _r, _ri)
end

function Global.N_0x482d17e45665da44(p0, p1)
	return _in(0x482D17E45665DA44, p0, p1)
end

function Global.N_0x483b8c542103ad72()
	return _in(0x483B8C542103AD72, _r, _ri)
end

function Global.N_0x483d4e917b0d35a9(p0, p1)
	return _in(0x483D4E917B0D35A9, p0, p1)
end

function Global.N_0x4845e7e7643a908c(p0, p1)
	return _in(0x4845E7E7643A908C, p0, p1)
end

--- Sets bit 0 in GtaThread+0x784
function Global.N_0x4858148e3b8a75d0()
	return _in(0x4858148E3B8A75D0)
end

function Global.N_0x485b05ef05b9aee9(p0, p1)
	return _in(0x485B05EF05B9AEE9, p0, p1)
end

function Global.N_0x48a88fc684c55fdc(p0)
	return _in(0x48A88FC684C55FDC, p0, _r, _ri)
end

function Global.N_0x48d82c83987e18e4(p0)
	return _in(0x48D82C83987E18E4, p0, _r, _ri)
end

function Global.N_0x48e4d50f87a96aa5(p0, p1, p2, p3, p4, p5)
	return _in(0x48E4D50F87A96AA5, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x4907d0e4fb26ee65(p0)
	return _in(0x4907D0E4FB26EE65, p0)
end

function Global.N_0x4912dfe492db98cd(p0, p1)
	return _in(0x4912DFE492DB98CD, p0, p1, _r, _ri)
end

function Global.N_0x491439aef410a2fc(p0)
	return _in(0x491439AEF410A2FC, p0)
end

function Global.N_0x494a9874f17a7d50(p0)
	return _in(0x494A9874F17A7D50, p0, _r)
end

function Global.N_0x495a04caec263af8(p0, p1)
	return _in(0x495A04CAEC263AF8, p0, p1, _r, _ri)
end

function Global.N_0x495cfab2924237c7(p0)
	return _in(0x495CFAB2924237C7, p0, _r, _ri)
end

function Global.N_0x49623bcfc3a3d829(p0, p1)
	return _in(0x49623BCFC3A3D829, p0, p1, _r, _ri)
end

function Global.N_0x497a18f8f88aa9d8()
	return _in(0x497A18F8F88AA9D8)
end

function Global.N_0x497a6539bb0e8787(p0, p1, p2)
	return _in(0x497A6539BB0E8787, p0, p1, p2)
end

function Global.N_0x498f2e77982d6945(p0, p1)
	return _in(0x498F2E77982D6945, p0, p1, _r, _ri)
end

function Global.N_0x49a8c2cd97815215(p0)
	return _in(0x49A8C2CD97815215, p0, _r, _ri)
end

function Global.N_0x49c44fe78a135a1d(p0)
	return _in(0x49C44FE78A135A1D, p0)
end

function Global.N_0x49c63fdf69744a27(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x49C63FDF69744A27, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x49cf17a564918e8d()
	return _in(0x49CF17A564918E8D)
end

function Global.N_0x49dadfc4cd808b0a(p0, p1, p2)
	return _in(0x49DADFC4CD808B0A, p0, p1, p2)
end

function Global.N_0x49e40483948af062(p0)
	return _in(0x49E40483948AF062, p0, _r, _ri)
end

function Global.N_0x49f1d143ade32656(p0)
	return _in(0x49F1D143ADE32656, p0, _r, _ri)
end

function Global.N_0x49f3241c28ebbfbc(p0)
	return _in(0x49F3241C28EBBFBC, p0)
end

function Global.N_0x4a056257802dd3e5(p0, p1)
	return _in(0x4A056257802DD3E5, p0, p1)
end

function Global.N_0x4a3da74c3ccb1725()
	return _in(0x4A3DA74C3CCB1725, _r, _ri)
end

function Global.N_0x4a47e38ea3d60939(p0, p1)
	return _in(0x4A47E38EA3D60939, p0, p1)
end

function Global.N_0x4a7d73989f52eb37(p0, p1)
	return _in(0x4A7D73989F52EB37, p0, p1)
end

function Global.N_0x4a8fefc43fd8ac9b(p0, p1, p2)
	return _in(0x4A8FEFC43FD8AC9B, p0, p1, p2)
end

function Global.N_0x4a98e228a936dbcc(p0)
	return _in(0x4A98E228A936DBCC, p0, _r, _ri)
end

function Global.N_0x4aa5ea1edfb25786(p0)
	return _in(0x4AA5EA1EDFB25786, p0)
end

function Global.N_0x4ac38dfd286dad14(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x4AC38DFD286DAD14, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x4ad019591e94c064(p0, p1, p2, p3)
	return _in(0x4AD019591E94C064, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x4ae07eba3462c5d5(p0, p1)
	return _in(0x4AE07EBA3462C5D5, p0, p1)
end

--- BG_*
-- @param scriptIndex :
-- @param p1 :
function Global.N_0x4ae1dff337a86fde(scriptIndex, p1)
	return _in(0x4AE1DFF337A86FDE, scriptIndex, _ts(p1), _r)
end

function Global.N_0x4aef1fb5b9011d75(p0)
	return _in(0x4AEF1FB5B9011D75, p0, _r, _ri)
end

function Global.N_0x4afc7288c77238b3(p0)
	return _in(0x4AFC7288C77238B3, p0, _r, _ri)
end

function Global.N_0x4b0501a468b749f8()
	return _in(0x4B0501A468B749F8)
end

function Global.N_0x4b05b97ba46f419d(p0)
	return _in(0x4B05B97BA46F419D, p0)
end

function Global.N_0x4b101dbcc9482f2d(p0)
	return _in(0x4B101DBCC9482F2D, p0, _r, _ri)
end

function Global.N_0x4b19f171450e0d4f(p0)
	return _in(0x4B19F171450E0D4F, p0, _r, _ri)
end

function Global.N_0x4b2b1a891d437ca7(p0)
	return _in(0x4B2B1A891D437CA7, p0)
end

function Global.N_0x4b4038796f0d6566(p0)
	return _in(0x4B4038796F0D6566, p0, _r, _ri)
end

function Global.N_0x4b436bac8cbe9b07(p0, p1, p2)
	return _in(0x4B436BAC8CBE9B07, p0, p1, p2)
end

function Global.N_0x4b52bf96e225d230(p0)
	return _in(0x4B52BF96E225D230, p0)
end

function Global.N_0x4b6c9a43f7d9109b(p0, p1)
	return _in(0x4B6C9A43F7D9109B, p0, p1)
end

function Global.N_0x4b85b3cf91972222(p0)
	return _in(0x4B85B3CF91972222, p0, _r, _ri)
end

function Global.N_0x4b85b3cf9197aedf(p0)
	return _in(0x4B85B3CF9197AEDF, p0)
end

function Global.N_0x4b9668db91dc39b8(p0)
	return _in(0x4B9668DB91DC39B8, p0)
end

function Global.N_0x4ba972d0e5ad8122(p0, p1)
	return _in(0x4BA972D0E5AD8122, p0, p1)
end

function Global.N_0x4bd66b4e3427689b(p0)
	return _in(0x4BD66B4E3427689B, p0)
end

function Global.N_0x4bdebea5702b97a9(p0, p1, p2, p3, p4, p5)
	return _in(0x4BDEBEA5702B97A9, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x4be3ec91c01f0fe8()
	return _in(0x4BE3EC91C01F0FE8)
end

function Global.N_0x4be6c13a45cca8ec(p0)
	return _in(0x4BE6C13A45CCA8EC, p0, _r, _ri)
end

function Global.N_0x4beb42aebca732e9()
	return _in(0x4BEB42AEBCA732E9, _r, _ri)
end

function Global.N_0x4bf66f8878f67663(p0)
	return _in(0x4BF66F8878F67663, p0, _r, _ri)
end

function Global.N_0x4c05b42a8d937796()
	return _in(0x4C05B42A8D937796)
end

function Global.N_0x4c11ccacb7c02b6e(p0)
	return _in(0x4C11CCACB7C02B6E, p0, _r, _ri)
end

function Global.N_0x4c39c95ae5db1329(p0, p1, p2)
	return _in(0x4C39C95AE5DB1329, p0, p1, p2, _r, _ri)
end

function Global.N_0x4c543d5dfcd2dafd(p0, p1)
	return _in(0x4C543D5DFCD2DAFD, p0, p1, _r, _ri)
end

function Global.N_0x4c57f27d1554e6b0(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x4C57F27D1554E6B0, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x4c60c333f9cca2b6(p0, p1)
	return _in(0x4C60C333F9CCA2B6, p0, p1)
end

function Global.N_0x4c8b59171957bcf7(p0)
	return _in(0x4C8B59171957BCF7, p0, _r, _ri)
end

function Global.N_0x4c9f782180712742(p0, p1)
	return _in(0x4C9F782180712742, p0, p1, _r, _ri)
end

function Global.N_0x4cabe596d632e4b0(p0)
	return _in(0x4CABE596D632E4B0, p0, _r, _ri)
end

function Global.N_0x4cc5f2fc1332577f(p0)
	return _in(0x4CC5F2FC1332577F, p0)
end

function Global.N_0x4cdffe3189ebdbd0(p0)
	return _in(0x4CDFFE3189EBDBD0, p0, _r, _ri)
end

function Global.N_0x4cfa2b7fae115ecb(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x4CFA2B7FAE115ECB, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x4d0d2e3d8bc000eb(p0, p1, p2)
	return _in(0x4D0D2E3D8BC000EB, p0, p1, p2, _r, _ri)
end

function Global.N_0x4d107406667423be(p0, p1)
	return _in(0x4D107406667423BE, p0, p1)
end

function Global.N_0x4d14af567fc02885(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x4D14AF567FC02885, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x4d15e49764cb328a(p0, p1)
	return _in(0x4D15E49764CB328A, p0, p1)
end

function Global.N_0x4d1699543b1c023c(p0, p1)
	return _in(0x4D1699543B1C023C, p0, p1)
end

function Global.N_0x4d2f46d1b28d90fb(p0, p1)
	return _in(0x4D2F46D1B28D90FB, p0, p1)
end

function Global.N_0x4d40e7d749bc6e6d(p0)
	return _in(0x4D40E7D749BC6E6D, p0)
end

function Global.N_0x4d5c9cc7e7e23e09()
	return _in(0x4D5C9CC7E7E23E09)
end

function Global.N_0x4d8611dfe1126478(p0)
	return _in(0x4D8611DFE1126478, p0, _r, _ri)
end

function Global.N_0x4dac398297981b87(p0)
	return _in(0x4DAC398297981B87, p0, _r, _ri)
end

function Global.N_0x4db9d03ac4e1fa84(p0, p1, p2, p3)
	return _in(0x4DB9D03AC4E1FA84, p0, p1, p2, p3)
end

function Global.N_0x4dbc4873707e8fd6(p0, p1, p2, p3)
	return _in(0x4DBC4873707E8FD6, p0, p1, p2, p3)
end

function Global.N_0x4e42ca5bcd45444a()
	return _in(0x4E42CA5BCD45444A, _r, _ri)
end

function Global.N_0x4e4507cc5e4db869(p0, p1, p2, p3)
	return _in(0x4E4507CC5E4DB869, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x4e463a3cdefffe96()
	return _in(0x4E463A3CDEFFFE96)
end

function Global.N_0x4e68c7ef706df35d(p0, p1, p2, p3, p4, p5)
	return _in(0x4E68C7EF706DF35D, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x4e76cb57222a00e5(p0)
	return _in(0x4E76CB57222A00E5, p0, _r, _ri)
end

function Global.N_0x4e806a395d43a458(p0)
	return _in(0x4E806A395D43A458, p0)
end

function Global.N_0x4e88a65968a55c78(p0, p1)
	return _in(0x4E88A65968A55C78, p0, p1, _r, _ri)
end

function Global.N_0x4ea69188fbce6a7d(p0, p1)
	return _in(0x4EA69188FBCE6A7D, p0, p1)
end

function Global.N_0x4ec4ea2f72b36358(p0, p1)
	return _in(0x4EC4EA2F72B36358, p0, p1)
end

function Global.N_0x4ec8be63b8a5d4ef(p0, p1)
	return _in(0x4EC8BE63B8A5D4EF, p0, p1)
end

function Global.N_0x4eccc2815ca79ae2(p0)
	return _in(0x4ECCC2815CA79AE2, p0, _r, _ri)
end

function Global.N_0x4eddd9e9ca5af985(p0)
	return _in(0x4EDDD9E9CA5AF985, p0, _r, _ri)
end

function Global.N_0x4ef23e04a0c8ff51(p0, p1)
	return _in(0x4EF23E04A0C8FF51, p0, p1, _r, _ri)
end

function Global.N_0x4efc1f8ff1ad94de(p0, p1, p2, p3, p4, p5)
	return _in(0x4EFC1F8FF1AD94DE, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x4f0d2256aae94eda(p0)
	return _in(0x4F0D2256AAE94EDA, p0)
end

function Global.N_0x4f27603e44a8e4c0(p0, p1, p2)
	return _in(0x4F27603E44A8E4C0, p0, p1, p2)
end

function Global.N_0x4f2d5fa23db992de()
	return _in(0x4F2D5FA23DB992DE)
end

function Global.N_0x4f57397388e1dff8()
	return _in(0x4F57397388E1DFF8)
end

function Global.N_0x4f5ebe70081e5a20(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x4F5EBE70081E5A20, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0x4f76e3676583d951(p0)
	return _in(0x4F76E3676583D951, p0, _r, _ri)
end

function Global.N_0x4f806a6cfed89468(p0, p1)
	return _in(0x4F806A6CFED89468, p0, p1)
end

function Global.N_0x4f81ead1de8fa19b(p0)
	return _in(0x4F81EAD1DE8FA19B, p0)
end

function Global.N_0x4f89dad4156ba145(p0)
	return _in(0x4F89DAD4156BA145, p0, _r, _ri)
end

function Global.N_0x4f9e3ed7617123ac(p0)
	return _in(0x4F9E3ED7617123AC, p0, _r, _ri)
end

function Global.N_0x4fb5869e2b37fc00()
	return _in(0x4FB5869E2B37FC00)
end

function Global.N_0x4fb67d172c4476f3(p0, p1, p2, p3)
	return _in(0x4FB67D172C4476F3, p0, p1, p2, p3)
end

function Global.N_0x4fcbcc0584cd08e9(p0)
	return _in(0x4FCBCC0584CD08E9, p0)
end

function Global.N_0x4fd80c3dd84b817b(p0)
	return _in(0x4FD80C3DD84B817B, p0)
end

function Global.N_0x4ff3c2b4e6a196c1(p0, p1, p2)
	return _in(0x4FF3C2B4E6A196C1, p0, p1, p2, _r, _ri)
end

function Global.N_0x5006c36652d6ec56(p0, p1)
	return _in(0x5006C36652D6EC56, p0, p1)
end

function Global.N_0x502e1591a504f843(p0, p1)
	return _in(0x502E1591A504F843, p0, p1, _r, _ri)
end

function Global.N_0x503703ec1781b7d6(p0, p1, p2)
	return _in(0x503703EC1781B7D6, p0, p1, p2)
end

function Global.N_0x503941f65dba24ec(p0)
	return _in(0x503941F65DBA24EC, p0)
end

function Global.N_0x5060fa977cea4455()
	return _in(0x5060FA977CEA4455, _r, _ri)
end

function Global.N_0x5064db5083c29921(p0)
	return _in(0x5064DB5083C29921, p0, _r, _ri)
end

function Global.N_0x506ce71fb6e8cf5e(p0, p1)
	return _in(0x506CE71FB6E8CF5E, p0, p1)
end

function Global.N_0x506f1de1bfc75304(p0)
	return _in(0x506F1DE1BFC75304, p0, _r, _ri)
end

function Global.N_0x508f5053e3f6f0c4(p0, p1, p2, p3, p4)
	return _in(0x508F5053E3F6F0C4, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x50aa09a0da64e73c(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x50AA09A0DA64E73C, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x50b72a754ee64a71(p0)
	return _in(0x50B72A754EE64A71, p0)
end

function Global.N_0x50c14328119e1dd1(p0, p1)
	return _in(0x50C14328119E1DD1, p0, p1)
end

function Global.N_0x50c803a4cd5932c5(p0)
	return _in(0x50C803A4CD5932C5, p0)
end

function Global.N_0x50f124e6ef188b22(p0)
	return _in(0x50F124E6EF188B22, p0, _r, _ri)
end

function Global.N_0x51021d36f62aaa83()
	return _in(0x51021D36F62AAA83, _r, _ri)
end

function Global.N_0x5102307ce88798eb(p0)
	return _in(0x5102307CE88798EB, p0, _r, _ri)
end

function Global.N_0x51139d8c17b16fbc(p0)
	return _in(0x51139D8C17B16FBC, p0, _r, _ri)
end

function Global.N_0x511f1a683387c7e2(ped)
	return _in(0x511F1A683387C7E2, ped, _r, _ri)
end

function Global.N_0x5133cf81924f1129()
	return _in(0x5133CF81924F1129, _r, _ri)
end

function Global.N_0x51345ae20f22c261(p0, p1, p2, p3, p4)
	return _in(0x51345AE20F22C261, p0, p1, p2, p3, p4)
end

function Global.N_0x5136b284b67b35c7(p0)
	return _in(0x5136B284B67B35C7, p0, _r, _ri)
end

function Global.N_0x513f8aa5bf2f17cf(p0, p1, p2, p3, p4)
	return _in(0x513F8AA5BF2F17CF, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x5170dda6d63acaaa(p0)
	return _in(0x5170DDA6D63ACAAA, p0, _r, _ri)
end

function Global.N_0x517d01bf27b682d1(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x517D01BF27B682D1, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x51951de06c0d1c40(p0, p1)
	return _in(0x51951DE06C0D1C40, p0, p1)
end

function Global.N_0x5199405eabfbd7f0(p0)
	return _in(0x5199405EABFBD7F0, p0)
end

function Global.N_0x51bea356b1c60225(p0, p1)
	return _in(0x51BEA356B1C60225, p0, p1, _r, _ri)
end

function Global.N_0x51c5ef47086aa0d7()
	return _in(0x51C5EF47086AA0D7, _r, _ri)
end

function Global.N_0x51c7694e140fae43(p0)
	return _in(0x51C7694E140FAE43, p0, _r, _ri)
end

function Global.N_0x51d99497abf3f451(p0)
	return _in(0x51D99497ABF3F451, p0)
end

function Global.N_0x51de09a2196bd951(p0, p1)
	return _in(0x51DE09A2196BD951, p0, p1)
end

function Global.N_0x51e52c9687fcdeec(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x51E52C9687FCDEEC, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x51ec204a6e5b5a1a(p0, p1)
	return _in(0x51EC204A6E5B5A1A, p0, p1)
end

function Global.N_0x51f33dbc1a41cbfd()
	return _in(0x51F33DBC1A41CBFD, _r, _ri)
end

function Global.N_0x5203038ff8bae577(p0, p1, p2)
	return _in(0x5203038FF8BAE577, p0, p1, p2, _r, _ri)
end

function Global.N_0x5217b7b6db78e1f3(p0, p1, p2, p3, p4)
	return _in(0x5217B7B6DB78E1F3, p0, p1, p2, p3, p4)
end

function Global.N_0x52250b92ea70be3d(p0)
	return _in(0x52250B92EA70BE3D, p0, _r, _ri)
end

function Global.N_0x522f74636df10201(p0, p1)
	return _in(0x522F74636DF10201, p0, p1)
end

function Global.N_0x522fa3f490e2f7ac(p0, p1, p2)
	return _in(0x522FA3F490E2F7AC, p0, p1, p2)
end

function Global.N_0x5230bf34eb0ec645(p0)
	return _in(0x5230BF34EB0EC645, p0)
end

function Global.N_0x5230d3f6ee56cfe6(p0, p1)
	return _in(0x5230D3F6EE56CFE6, p0, p1)
end

--- SET_PED_CAN_*
-- @param ped :
-- @param toggle :
function Global.N_0x5240864e847c691c(ped, toggle)
	return _in(0x5240864E847C691C, ped, toggle)
end

function Global.N_0x52572b331e693aed(p0, p1, p2)
	return _in(0x52572B331E693AED, p0, p1, p2)
end

function Global.N_0x527b97c203bb8606(p0)
	return _in(0x527B97C203BB8606, p0, _r, _ri)
end

function Global.N_0x5288b7f0690f7c1f(p0)
	return _in(0x5288B7F0690F7C1F, p0, _r, _ri)
end

function Global.N_0x529b9ccd0972af4d(p0, p1)
	return _in(0x529B9CCD0972AF4D, p0, p1)
end

function Global.N_0x529b9ccd0972af4e(p0, p1)
	return _in(0x529B9CCD0972AF4E, p0, p1)
end

function Global.N_0x52a24d8a1da89658(p0, p1, p2)
	return _in(0x52A24D8A1DA89658, p0, p1, p2)
end

function Global.N_0x52bde32f21ba3b6d(p0, p1, p2, p3)
	return _in(0x52BDE32F21BA3B6D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x52fa31db8f3ad25d(p0)
	return _in(0x52FA31DB8F3AD25D, p0)
end

function Global.N_0x52fc26d2d2fc2987(p0, p1, p2)
	return _in(0x52FC26D2D2FC2987, p0, p1, p2, _r, _ri)
end

function Global.N_0x53187e563f938e76(p0)
	return _in(0x53187E563F938E76, p0, _r, _ri)
end

function Global.N_0x531a78d6bf27014b(p0)
	return _in(0x531A78D6BF27014B, p0)
end

function Global.N_0x532c5fddb986ee5c(p0, p1, p2)
	return _in(0x532C5FDDB986EE5C, p0, p1, p2, _r, _ri)
end

function Global.N_0x5337b721c51883a9(p0, p1, p2)
	return _in(0x5337B721C51883A9, p0, p1, p2)
end

function Global.N_0x535a66aad2bf68f9(p0, p1)
	return _in(0x535A66AAD2BF68F9, p0, p1)
end

function Global.N_0x535ed4605f89ab6e(p0, p1)
	return _in(0x535ED4605F89AB6E, p0, p1)
end

function Global.N_0x536b6025e94ac48f(p0, p1, p2, p3)
	return _in(0x536B6025E94AC48F, p0, p1, p2, p3)
end

function Global.N_0x53764309c4618087(p0)
	return _in(0x53764309C4618087, p0, _r, _ri)
end

function Global.N_0x53784cea0159439b(p0)
	return _in(0x53784CEA0159439B, p0, _r, _ri)
end

function Global.N_0x537ce992bd2d7bcb(p0)
	return _in(0x537CE992BD2D7BCB, p0, _r, _ri)
end

function Global.N_0x53a94294fddcf98c(p0, p1)
	return _in(0x53A94294FDDCF98C, p0, p1, _r, _ri)
end

function Global.N_0x53ba7d96b9a421d9(p0, p1)
	return _in(0x53BA7D96B9A421D9, p0, p1)
end

function Global.N_0x53cb3970ba02e3cc(p0)
	return _in(0x53CB3970BA02E3CC, p0)
end

function Global.N_0x53ce46c01a089da1(p0, p1)
	return _in(0x53CE46C01A089DA1, p0, p1)
end

function Global.N_0x53d05d60e5f5b40c(p0, p1, p2, p3)
	return _in(0x53D05D60E5F5B40C, p0, p1, p2, p3)
end

function Global.N_0x53e4d0c079ca6855(p0)
	return _in(0x53E4D0C079CA6855, p0, _r, _ri)
end

function Global.N_0x5407b7288d0478b7(p0, p1)
	return _in(0x5407B7288D0478B7, p0, p1, _r, _ri)
end

function Global.N_0x541b8576615c33de(p0, p1, p2, p3)
	return _in(0x541B8576615C33DE, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x541e5b41dca45828(p0, p1, p2)
	return _in(0x541E5B41DCA45828, p0, p1, p2)
end

function Global.N_0x54310aab97b92816(p0)
	return _in(0x54310AAB97B92816, p0, _r, _ri)
end

function Global.N_0x543dfe14be720027(p0, p1, p2)
	return _in(0x543DFE14BE720027, p0, p1, p2)
end

function Global.N_0x545bf19f86e80f11(p0, p1, p2)
	return _in(0x545BF19F86E80F11, p0, p1, p2)
end

function Global.N_0x5461c821d00fe15a(p0, p1)
	return _in(0x5461C821D00FE15A, p0, p1, _r, _ri)
end

function Global.N_0x5463c962bc7777c3(p0, p1, p2, p3, p4)
	return _in(0x5463C962BC7777C3, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x54ae4fdeefeab77e()
	return _in(0x54AE4FDEEFEAB77E, _r, _ri)
end

function Global.N_0x54b187f111d9c6f8(p0, p1)
	return _in(0x54B187F111D9C6F8, p0, p1, _r, _ri)
end

function Global.N_0x54cbdd6e1b4cb4df(p0)
	return _in(0x54CBDD6E1B4CB4DF, p0)
end

function Global.N_0x54ec7b6bc72bad69()
	return _in(0x54EC7B6BC72BAD69)
end

function Global.N_0x54f4d7b6670fbb5a(p0, p1, p2, p3, p4)
	return _in(0x54F4D7B6670FBB5A, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x550cb89dd7f4fa3d(p0, p1)
	return _in(0x550CB89DD7F4FA3D, p0, p1, _r, _ri)
end

function Global.N_0x55123d5a7d9d3c42(p0)
	return _in(0x55123D5A7D9D3C42, p0)
end

function Global.N_0x55285f885f662169()
	return _in(0x55285F885F662169)
end

function Global.N_0x553d67295ddd2309(p0)
	return _in(0x553D67295DDD2309, p0)
end

function Global.N_0x554d9d53f696d002(p0, p1, p2, p3)
	return _in(0x554D9D53F696D002, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x55546004a244302a(p0, p1)
	return _in(0x55546004A244302A, p0, p1)
end

function Global.N_0x5594afe9de0c01b7(p0)
	return _in(0x5594AFE9DE0C01B7, p0, _r, _ri)
end

function Global.N_0x559a6f8c5133b4ee(p0, p1)
	return _in(0x559A6F8C5133B4EE, p0, p1, _r, _ri)
end

--- BG_*
-- @param scriptIndex :
-- @param p1 :
function Global.N_0x55c40b7592bad213(scriptIndex, p1)
	return _in(0x55C40B7592BAD213, scriptIndex, _ts(p1), _r, _ri)
end

function Global.N_0x55cd5fddd4335c1e(p0, p1, p2, p3, p4, p5)
	return _in(0x55CD5FDDD4335C1E, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x55f37f5f3f2475e1()
	return _in(0x55F37F5F3F2475E1)
end

function Global.N_0x55f618f68ab854d3(p0)
	return _in(0x55F618F68AB854D3, p0, _r, _ri)
end

function Global.N_0x5639fbea922788da(p0)
	return _in(0x5639FBEA922788DA, p0)
end

function Global.N_0x563fcb6620523917(p0, p1)
	return _in(0x563FCB6620523917, p0, p1)
end

function Global.N_0x564552c6af1eeab1()
	return _in(0x564552C6AF1EEAB1)
end

function Global.N_0x564837d4a9ede296(p0)
	return _in(0x564837D4A9EDE296, p0)
end

function Global.N_0x5651516d947abc53()
	return _in(0x5651516D947ABC53)
end

function Global.N_0x5653ab26c82938cf(p0, p1, p2)
	return _in(0x5653AB26C82938CF, p0, p1, p2)
end

function Global.N_0x5659d87be674ab17(p0)
	return _in(0x5659D87BE674AB17, p0, _r, _ri)
end

function Global.N_0x565eaa726b2ce3b7(p0)
	return _in(0x565EAA726B2CE3B7, p0)
end

function Global.N_0x566ceb0542ef5ecf(p0, p1)
	return _in(0x566CEB0542EF5ECF, p0, p1, _r, _ri)
end

function Global.N_0x569abc36e28ddeaa()
	return _in(0x569ABC36E28DDEAA)
end

function Global.N_0x569f1e1237508deb(p0)
	return _in(0x569F1E1237508DEB, p0, _r, _ri)
end

function Global.N_0x56a786e87ff53478(p0)
	return _in(0x56A786E87FF53478, p0)
end

function Global.N_0x56b3410626a473e7(p0)
	return _in(0x56B3410626A473E7, p0)
end

function Global.N_0x56cb3b4305a4f7ce(p0, p1, p2, p3)
	return _in(0x56CB3B4305A4F7CE, p0, p1, p2, p3)
end

function Global.N_0x56e0735d6273b227(p0, p1)
	return _in(0x56E0735D6273B227, p0, p1)
end

function Global.N_0x56e4bad93d33453c(p0, p1)
	return _in(0x56E4BAD93D33453C, p0, p1, _r, _ri)
end

function Global.N_0x56e58d4d118fb45e(p0, p1)
	return _in(0x56E58D4D118FB45E, p0, p1, _r, _ri)
end

function Global.N_0x56e9c26cd29d1ed6(p0, p1)
	return _in(0x56E9C26CD29D1ED6, p0, p1)
end

function Global.N_0x5708edd71b50c008(p0, p1, p2)
	return _in(0x5708EDD71B50C008, p0, p1, p2)
end

function Global.N_0x570a13a4ca2799bb(p0, p1)
	return _in(0x570A13A4CA2799BB, p0, p1)
end

function Global.N_0x5737199af2dc609f(p0, p1, p2)
	return _in(0x5737199AF2DC609F, p0, p1, p2)
end

function Global.N_0x5744562e973e33cd(p0, p1, p2, p3, p4)
	return _in(0x5744562E973E33CD, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x5758b1ee0c3fd4ac(p0, p1)
	return _in(0x5758B1EE0C3FD4AC, p0, p1)
end

function Global.N_0x5759160ac17c13ce(p0, p1)
	return _in(0x5759160AC17C13CE, p0, p1)
end

function Global.N_0x57639fd876b68a91(p0)
	return _in(0x57639FD876B68A91, p0, _r, _ri)
end

function Global.N_0x57779b55b83e2bea(p0)
	return _in(0x57779B55B83E2BEA, p0, _r, _ri)
end

function Global.N_0x577c60ba06d0ea64(p0)
	return _in(0x577C60BA06D0EA64, p0, _r, _ri)
end

function Global.N_0x578907f59ba01b6d(p0)
	return _in(0x578907F59BA01B6D, p0, _r, _ri)
end

function Global.N_0x578e2fa64e847c60(popZone, p1)
	return _in(0x578E2FA64E847C60, popZone, p1)
end

function Global.N_0x57a197ad83f66bbf(p0)
	return _in(0x57A197AD83F66BBF, p0)
end

function Global.N_0x57c242543b7b8fb9(p0, p1)
	return _in(0x57C242543B7B8FB9, p0, p1)
end

function Global.N_0x57c6525034e76eb0()
	return _in(0x57C6525034E76EB0)
end

function Global.N_0x57d9991dc1334151(p0)
	return _in(0x57D9991DC1334151, p0, _r, _ri)
end

function Global.N_0x57e798b54c45ee1a(p0)
	return _in(0x57E798B54C45EE1A, p0, _r, _ri)
end

function Global.N_0x57e798b56c45ee15(p0)
	return _in(0x57E798B56C45EE15, p0, _r, _ri)
end

function Global.N_0x57e798b57c45ee16(p0)
	return _in(0x57E798B57C45EE16, p0, _r, _ri)
end

function Global.N_0x57f35552e771be9d(p0, p1)
	return _in(0x57F35552E771BE9D, p0, p1)
end

function Global.N_0x5801be2df2af07ec(p0)
	return _in(0x5801BE2DF2AF07EC, p0)
end

function Global.N_0x5809dbca0a37c82b(p0)
	return _in(0x5809DBCA0A37C82B, p0, _r, _ri)
end

function Global.N_0x580d71dfe0088e34(p0, p1)
	return _in(0x580D71DFE0088E34, p0, p1, _r, _ri)
end

function Global.N_0x580f34c726387226(p0, p1)
	return _in(0x580F34C726387226, p0, p1, _r, _ri)
end

function Global.N_0x58125b691f6827d5(p0)
	return _in(0x58125B691F6827D5, p0)
end

function Global.N_0x581edbe56e8d62c9(p0, p1)
	return _in(0x581EDBE56E8D62C9, p0, p1)
end

function Global.N_0x5826efd6d73c4de5(p0)
	return _in(0x5826EFD6D73C4DE5, p0)
end

function Global.N_0x5827be85a87b073d(p0)
	return _in(0x5827BE85A87B073D, p0)
end

function Global.N_0x582f73acfe969571(p0, p1, p2)
	return _in(0x582F73ACFE969571, p0, p1, p2, _r, _ri)
end

function Global.N_0x583ae9af9cee0958(p0, p1, p2, p3)
	return _in(0x583AE9AF9CEE0958, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x58425fca3d3a2d15(p0)
	return _in(0x58425FCA3D3A2D15, p0, _r, _ri)
end

function Global.N_0x58521e6dcde97d74(p0, p1, p2)
	return _in(0x58521E6DCDE97D74, p0, p1, p2)
end

function Global.N_0x585ce159db46fadb(p0, p1)
	return _in(0x585CE159DB46FADB, p0, p1)
end

function Global.N_0x58ac173a55d9d7b4(p0, p1, p2)
	return _in(0x58AC173A55D9D7B4, p0, p1, p2)
end

function Global.N_0x58cc181719256197(p0, p1, p2)
	return _in(0x58CC181719256197, p0, p1, p2, _r, _ri)
end

function Global.N_0x58d32261ae0f0843(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x58D32261AE0F0843, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0x58d378af2c8765b7(p0)
	return _in(0x58D378AF2C8765B7, p0, _r, _ri)
end

function Global.N_0x58de624fa7fb0e7f(p0)
	return _in(0x58DE624FA7FB0E7F, p0, _r, _ri)
end

function Global.N_0x58e0b01d45ca7357(p0)
	return _in(0x58E0B01D45CA7357, p0)
end

function Global.N_0x58f2244c1286d09a(p0, p1)
	return _in(0x58F2244C1286D09A, p0, p1, _r, _ri)
end

function Global.N_0x58f7db5bd8fa2288(p0)
	return _in(0x58F7DB5BD8FA2288, p0)
end

function Global.N_0x59174f1afe095b5a(p0, p1, p2, p3, p4, p5)
	return _in(0x59174F1AFE095B5A, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x592f58bc4d2a2cf3(p0, p1)
	return _in(0x592F58BC4D2A2CF3, p0, p1, _r, _ri)
end

function Global.N_0x595478b3bbc3076d()
	return _in(0x595478B3BBC3076D, _r, _ri)
end

function Global.N_0x595550376b7ea230(p0)
	return _in(0x595550376B7EA230, p0, _r, _ri)
end

function Global.N_0x59577799f6ae2f34(p0)
	return _in(0x59577799F6AE2F34, p0)
end

function Global.N_0x595f028698072dd9(p0)
	return _in(0x595F028698072DD9, p0, _r)
end

function Global.N_0x59606519ff9d3ec2(p0, p1)
	return _in(0x59606519FF9D3EC2, p0, p1, _r, _ri)
end

function Global.N_0x59643424b68d52b5(p0)
	return _in(0x59643424B68D52B5, p0, _r, _ri)
end

function Global.N_0x597f571ddee3ffac(p0)
	return _in(0x597F571DDEE3FFAC, p0)
end

function Global.N_0x59872ea4cbd11c56(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x59872EA4CBD11C56, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0x59ae5ca4ffb4e378(p0, p1)
	return _in(0x59AE5CA4FFB4E378, p0, p1, _r, _ri)
end

function Global.N_0x59aea4dc640814b9(p0, p1)
	return _in(0x59AEA4DC640814B9, p0, p1)
end

function Global.N_0x59b57c4b06531e1e(p0, p1, p2, p3, p4, p5)
	return _in(0x59B57C4B06531E1E, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x59bd177a1a48600a(p0, p1)
	return _in(0x59BD177A1A48600A, p0, p1)
end

function Global.N_0x59c7ad6fea2ac449(p0, p1, p2, p3)
	return _in(0x59C7AD6FEA2AC449, p0, p1, p2, p3)
end

function Global.N_0x59de03442b6c9598(p0)
	return _in(0x59DE03442B6C9598, p0, _r, _ri)
end

function Global.N_0x59ea80079b86d8c7(p0)
	return _in(0x59EA80079B86D8C7, p0, _r, _ri)
end

function Global.N_0x59eca796021b0539(vehicle, p1)
	return _in(0x59ECA796021B0539, vehicle, p1)
end

function Global.N_0x59f0aff3e0a1b019(p0, p1, p2)
	return _in(0x59F0AFF3E0A1B019, p0, p1, p2)
end

function Global.N_0x59fa676177dbe4c9(p0)
	return _in(0x59FA676177DBE4C9, p0, _r, _ri)
end

function Global.N_0x5a10d6506b2f2c63(p0, p1)
	return _in(0x5A10D6506B2F2C63, p0, p1)
end

function Global.N_0x5a13586a9447931f(p0)
	return _in(0x5A13586A9447931F, p0, _r, _ri)
end

function Global.N_0x5a1a929c8b729b4a(p0)
	return _in(0x5A1A929C8B729B4A, p0)
end

function Global.N_0x5a34cd9c3c5bec44(p0)
	return _in(0x5A34CD9C3C5BEC44, p0, _r)
end

function Global.N_0x5a3b54addf5472a3(p0)
	return _in(0x5A3B54ADDF5472A3, p0, _r, _ri)
end

function Global.N_0x5a40040bb5ae3ea2(p0)
	return _in(0x5A40040BB5AE3EA2, p0)
end

function Global.N_0x5a498fca232f71e1(p0, p1)
	return _in(0x5A498FCA232F71E1, p0, p1)
end

function Global.N_0x5a4e1a41e3a02ad0(p0, p1, p2)
	return _in(0x5A4E1A41E3A02AD0, p0, p1, p2)
end

function Global.N_0x5a695bd328586b44(p0, p1)
	return _in(0x5A695BD328586B44, p0, p1, _r, _ri)
end

function Global.N_0x5a79220f6d38d7c3(p0)
	return _in(0x5A79220F6D38D7C3, p0, _r, _ri)
end

function Global.N_0x5a8b01199c3e79c3()
	return _in(0x5A8B01199C3E79C3)
end

function Global.N_0x5a91bcef74944e93(p0, p1)
	return _in(0x5A91BCEF74944E93, p0, p1)
end

function Global.N_0x5a989b7ee3672a56(p0, p1)
	return _in(0x5A989B7EE3672A56, p0, p1)
end

function Global.N_0x5aabb09f6fbd1f87(p0, p1)
	return _in(0x5AABB09F6FBD1F87, p0, p1)
end

function Global.N_0x5aadc7bbbb1bceeb(p0, p1, p2, p3, p4)
	return _in(0x5AADC7BBBB1BCEEB, p0, p1, p2, p3, p4)
end

function Global.N_0x5ac0944c156e5f44(p0)
	return _in(0x5AC0944C156E5F44, p0, _r, _ri)
end

function Global.N_0x5ac6e0fa028369de()
	return _in(0x5AC6E0FA028369DE)
end

function Global.N_0x5ae0cb5f35f034fd(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x5AE0CB5F35F034FD, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x5ae17c6b0134b7f1()
	return _in(0x5AE17C6B0134B7F1, _r, _ri)
end

function Global.N_0x5af19b6cc2115d34(p0, p1, p2)
	return _in(0x5AF19B6CC2115D34, p0, p1, p2)
end

function Global.N_0x5af24ca9c974e51a(p0, p1)
	return _in(0x5AF24CA9C974E51A, p0, p1)
end

function Global.N_0x5affa9ddc87846f8(p0)
	return _in(0x5AFFA9DDC87846F8, p0, _r, _ri)
end

function Global.N_0x5b1a26bb18e7d451(p0)
	return _in(0x5B1A26BB18E7D451, p0, _r, _ri)
end

function Global.N_0x5b235f24472f2c3b(p0, p1)
	return _in(0x5B235F24472F2C3B, p0, p1, _r, _ri)
end

function Global.N_0x5b23dff8e0948bb2(p0, p1)
	return _in(0x5B23DFF8E0948BB2, p0, p1)
end

function Global.N_0x5b4a8121a47d844d(p0)
	return _in(0x5B4A8121A47D844D, p0, _r, _ri)
end

function Global.N_0x5b4bbe80ad5972dc(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x5B4BBE80AD5972DC, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x5b53ca0e2ac3ff45(p0, p1, p2)
	return _in(0x5B53CA0E2AC3FF45, p0, p1, p2, _r, _ri)
end

function Global.N_0x5b6193813e03e4e9(p0)
	return _in(0x5B6193813E03E4E9, p0, _r, _ri)
end

function Global.N_0x5b637d6f3b67716a(p0)
	return _in(0x5B637D6F3B67716A, p0)
end

function Global.N_0x5b68d0007d9c92eb(p0, p1)
	return _in(0x5B68D0007D9C92EB, p0, p1)
end

function Global.N_0x5b73975b4f12f7f3(p0, p1, p2, p3, p4)
	return _in(0x5B73975B4F12F7F3, p0, p1, p2, p3, p4)
end

function Global.N_0x5b7b97e99f84138b(p0)
	return _in(0x5B7B97E99F84138B, p0, _r, _ri)
end

function Global.N_0x5b7d7bf36d2de18b(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x5B7D7BF36D2DE18B, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x5b9813ecf7633fe8(p0)
	return _in(0x5B9813ECF7633FE8, p0)
end

function Global.N_0x5b9c6ac118fd4774()
	return _in(0x5B9C6AC118FD4774)
end

function Global.N_0x5ba659955369b0e2(p0)
	return _in(0x5BA659955369B0E2, p0, _r, _ri)
end

function Global.N_0x5ba7a68a346a5a91(p0, p1, p2)
	return _in(0x5BA7A68A346A5A91, p0, p1, p2, _r, _ri)
end

function Global.N_0x5bb04bc74a474b47(p0, p1)
	return _in(0x5BB04BC74A474B47, p0, p1)
end

function Global.N_0x5bc885ebd75faa7d(p0, p1)
	return _in(0x5BC885EBD75FAA7D, p0, p1)
end

function Global.N_0x5bcf0b79d4f5dba3(p0, p1)
	return _in(0x5BCF0B79D4F5DBA3, p0, p1)
end

function Global.N_0x5bd616735f16bf5c(entity, interior)
	return _in(0x5BD616735F16BF5C, entity, interior)
end

function Global.N_0x5bd7457221cc5ff4(p0, p1)
	return _in(0x5BD7457221CC5FF4, p0, p1)
end

function Global.N_0x5bf0b9d9a8e227a0(p0)
	return _in(0x5BF0B9D9A8E227A0, p0, _r, _ri)
end

function Global.N_0x5c16855277819bbf()
	return _in(0x5C16855277819BBF, _r, _ri)
end

function Global.N_0x5c2e5e3caeeb1f58(p0, p1, p2)
	return _in(0x5C2E5E3CAEEB1F58, p0, p1, p2)
end

function Global.N_0x5c2ea6c44f515f34(p0)
	return _in(0x5C2EA6C44F515F34, p0, _r, _ri)
end

function Global.N_0x5c3c55eaad19915f(p0, p1)
	return _in(0x5C3C55EAAD19915F, p0, p1)
end

function Global.N_0x5c497525f803486b()
	return _in(0x5C497525F803486B)
end

function Global.N_0x5c674eb487891f6b()
	return _in(0x5C674EB487891F6B, _r, _ri)
end

function Global.N_0x5c6c7c70ca302801(p0)
	return _in(0x5C6C7C70CA302801, p0, _r, _ri)
end

function Global.N_0x5c885e0978b6ad60(p0, p1, p2, p3)
	return _in(0x5C885E0978B6AD60, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x5c90e20c25e6d83c(p0)
	return _in(0x5C90E20C25E6D83C, p0)
end

function Global.N_0x5c9978a2a3dc3d0d()
	return _in(0x5C9978A2A3DC3D0D)
end

function Global.N_0x5c9c3a466b3296a8(p0)
	return _in(0x5C9C3A466B3296A8, p0, _r, _ri)
end

function Global.N_0x5ca20fbe49891bbd(p0, p1)
	return _in(0x5CA20FBE49891BBD, p0, p1)
end

function Global.N_0x5ca6bbd4a7d8145e(p0)
	return _in(0x5CA6BBD4A7D8145E, p0, _r, _ri)
end

function Global.N_0x5ca7fb7d6de49dcc()
	return _in(0x5CA7FB7D6DE49DCC, _r, _ri)
end

function Global.N_0x5cb71eaa1429a358(p0)
	return _in(0x5CB71EAA1429A358, p0)
end

function Global.N_0x5cb8b0c846d0f30b(p0)
	return _in(0x5CB8B0C846D0F30B, p0)
end

function Global.N_0x5cd3aad8ff9ed121(p0)
	return _in(0x5CD3AAD8FF9ED121, p0)
end

function Global.N_0x5ce5cacc01d0f985()
	return _in(0x5CE5CACC01D0F985)
end

function Global.N_0x5d10b3795f3fc886()
	return _in(0x5D10B3795F3FC886, _r)
end

function Global.N_0x5d1c5d8e62e8ee1c(p0)
	return _in(0x5D1C5D8E62E8EE1C, p0, _r, _ri)
end

function Global.N_0x5d3c528b7a7df836(p0)
	return _in(0x5D3C528B7A7DF836, p0)
end

function Global.N_0x5d4cd22a8c82a81a(p0, p1)
	return _in(0x5D4CD22A8C82A81A, p0, p1)
end

function Global.N_0x5d5e2102b174b8d2()
	return _in(0x5D5E2102B174B8D2, _r, _ri)
end

function Global.N_0x5d6182f3bce1333b(p0, p1)
	return _in(0x5D6182F3BCE1333B, p0, p1, _r, _ri)
end

function Global.N_0x5d7bfda2290b4e39(p0)
	return _in(0x5D7BFDA2290B4E39, p0, _r, _ri)
end

function Global.N_0x5d9b0baaf04cf65b(p0, p1, p2, p3)
	return _in(0x5D9B0BAAF04CF65B, p0, p1, p2, p3)
end

function Global.N_0x5da36cccb63c0895(p0, p1, p2)
	return _in(0x5DA36CCCB63C0895, p0, p1, p2, _r, _ri)
end

function Global.N_0x5e214112806591ea(p0, p1)
	return _in(0x5E214112806591EA, p0, p1, _r, _rv)
end

function Global.N_0x5e3ccf03995388b5(p0, p1, p2, p3)
	return _in(0x5E3CCF03995388B5, p0, p1, p2, p3)
end

function Global.N_0x5e420ff293ee5472()
	return _in(0x5E420FF293EE5472, _r, _ri)
end

function Global.N_0x5e5d96be25e9df68(p0)
	return _in(0x5E5D96BE25E9DF68, p0, _r, _ri)
end

function Global.N_0x5e6f375ca101c108(p0, p1)
	return _in(0x5E6F375CA101C108, p0, p1)
end

function Global.N_0x5e71e72a94985214(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x5E71E72A94985214, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x5e94ea09e7207c16()
	return _in(0x5E94EA09E7207C16, _r, _ri)
end

function Global.N_0x5e981c764df33117(p0, p1)
	return _in(0x5E981C764DF33117, p0, p1)
end

function Global.N_0x5e9faf6c513347b4(p0, p1)
	return _in(0x5E9FAF6C513347B4, p0, p1, _r, _ri)
end

function Global.N_0x5ea655f01d93667a(p0)
	return _in(0x5EA655F01D93667A, p0, _r, _ri)
end

function Global.N_0x5ebe38a20bc51c27(p0)
	return _in(0x5EBE38A20BC51C27, p0, _r, _ri)
end

function Global.N_0x5ed39da62beb1330(p0)
	return _in(0x5ED39DA62BEB1330, p0, _r, _ri)
end

function Global.N_0x5ee6fccc9c832ca2(p0)
	return _in(0x5EE6FCCC9C832CA2, p0, _r, _rv)
end

function Global.N_0x5efa8a3d8a60d662(p0, p1)
	return _in(0x5EFA8A3D8A60D662, p0, p1, _r, _ri)
end

function Global.N_0x5f0e99071582deca(p0, p1, p2)
	return _in(0x5F0E99071582DECA, p0, p1, p2, _r, _ri)
end

function Global.N_0x5f217bc1190503d8(p0, p1)
	return _in(0x5F217BC1190503D8, p0, p1)
end

function Global.N_0x5f53010c4c3f6baf(p0, p1, p2, p3)
	return _in(0x5F53010C4C3F6BAF, p0, p1, p2, p3)
end

function Global.N_0x5f57522bc1eb9d9d(p0, p1)
	return _in(0x5F57522BC1EB9D9D, p0, p1)
end

function Global.N_0x5f5b1b7e8e8f94c6(p0)
	return _in(0x5F5B1B7E8E8F94C6, p0, _r, _ri)
end

function Global.N_0x5f8e0303c229c84b(p0, p1)
	return _in(0x5F8E0303C229C84B, p0, p1)
end

function Global.N_0x5fc9357c26daefce()
	return _in(0x5FC9357C26DAEFCE, _r, _ri)
end

function Global.N_0x5fcf25d584065bfd(p0, p1, p2, p3)
	return _in(0x5FCF25D584065BFD, p0, p1, p2, p3)
end

function Global.N_0x5fe444eb67c70ad4(p0)
	return _in(0x5FE444EB67C70AD4, p0, _r, _ri)
end

function Global.N_0x5ff9a878c3d115b8(p0, p1, p2)
	return _in(0x5FF9A878C3D115B8, p0, p1, p2, _r, _ri)
end

function Global.N_0x600bbdd29820370c(p0)
	return _in(0x600BBDD29820370C, p0)
end

function Global.N_0x603469298a4308af(p0)
	return _in(0x603469298A4308AF, p0)
end

function Global.N_0x6035e8fbca32ac5e()
	return _in(0x6035E8FBCA32AC5E)
end

function Global.N_0x603ac35fd4602c76(p0)
	return _in(0x603AC35FD4602C76, p0, _r, _ri)
end

function Global.N_0x604190f0cf0df158(p0, p1)
	return _in(0x604190F0CF0DF158, p0, p1)
end

function Global.N_0x604e1010e3162e86(p0, p1, p2)
	return _in(0x604E1010E3162E86, p0, p1, p2)
end

function Global.N_0x6052b4de6657684f(p0)
	return _in(0x6052B4DE6657684F, p0, _r, _ri)
end

function Global.N_0x606d529dada3c940(p0, p1)
	return _in(0x606D529DADA3C940, p0, p1)
end

function Global.N_0x6072b7420a83a03f()
	return _in(0x6072B7420A83A03F, _r, _ri)
end

function Global.N_0x6076213101a47b3b(p0)
	return _in(0x6076213101A47B3B, p0)
end

function Global.N_0x608ad36a644a97fe(p0, p1, p2)
	return _in(0x608AD36A644A97FE, p0, p1, p2)
end

function Global.N_0x608bc6a6aacd5036(p0, p1, p2, p3)
	return _in(0x608BC6A6AACD5036, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x6090a031c69f384e(p0, p1)
	return _in(0x6090A031C69F384E, p0, p1)
end

function Global.N_0x6095358c4142932a(p0)
	return _in(0x6095358C4142932A, p0)
end

function Global.N_0x6098139150dcc745(p0, p1)
	return _in(0x6098139150DCC745, p0, p1, _r, _ri)
end

function Global.N_0x60b7d1dcc312697d(p0)
	return _in(0x60B7D1DCC312697D, p0, _r, _ri)
end

function Global.N_0x6102830f764b3de1(p0)
	return _in(0x6102830F764B3DE1, p0, _r, _ri)
end

function Global.N_0x610438375e5d1801(p0)
	return _in(0x610438375E5D1801, p0, _r, _ri)
end

function Global.N_0x6123e2832c34243d(p0, p1, p2, p3, p4)
	return _in(0x6123E2832C34243D, p0, p1, p2, p3, p4)
end

function Global.N_0x6127f25ed21c533c(p0)
	return _in(0x6127F25ED21C533C, p0, _r, _ri)
end

function Global.N_0x614682e715adbaac()
	return _in(0x614682E715ADBAAC)
end

function Global.N_0x614d0b4533f842d3(p0)
	return _in(0x614D0B4533F842D3, p0, _r, _ri)
end

function Global.N_0x615b3b8e73634509(p0, p1)
	return _in(0x615B3B8E73634509, p0, p1)
end

function Global.N_0x615dc4a82e90bb48(p0, p1, p2)
	return _in(0x615DC4A82E90BB48, p0, p1, p2)
end

function Global.N_0x617d3494ad58200f(p0)
	return _in(0x617D3494AD58200F, p0, _r, _ri)
end

function Global.N_0x61914209c36efddb(p0)
	return _in(0x61914209C36EFDDB, p0, _r, _ri)
end

function Global.N_0x619e63980bfc0096(p0, p1, p2)
	return _in(0x619E63980BFC0096, p0, p1, p2, _r, _ri)
end

function Global.N_0x61b2aaef645ddaf0(p0, p1, p2, p3, p4)
	return _in(0x61B2AAEF645DDAF0, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x61b98367d93f012f(p0)
	return _in(0x61B98367D93F012F, p0)
end

function Global.N_0x61bda07407754a5c(p0, p1, p2, p3)
	return _in(0x61BDA07407754A5C, p0, p1, p2, p3)
end

function Global.N_0x61be7d6186260002(p0)
	return _in(0x61BE7D6186260002, p0, _r, _ri)
end

function Global.N_0x61bfbaa795e712ad()
	return _in(0x61BFBAA795E712AD)
end

function Global.N_0x61cae9d1fd055e44()
	return _in(0x61CAE9D1FD055E44, _r, _ri)
end

function Global.N_0x621d1b289caf5978(p0)
	return _in(0x621D1B289CAF5978, p0, _r, _ri)
end

function Global.N_0x6243635af2f1b826(p0, p1, p2, p3)
	return _in(0x6243635AF2F1B826, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x627520389e288a73(p0, p1, p2)
	return _in(0x627520389E288A73, p0, p1, p2, _r, _ri)
end

function Global.N_0x627b68d9ce6ee8de(p0)
	return _in(0x627B68D9CE6EE8DE, p0, _r, _ri)
end

function Global.N_0x627f7f3a0c4c51ff(p0, p1)
	return _in(0x627F7F3A0C4C51FF, p0, p1)
end

function Global.N_0x628e742fe1f79c4a(p0, p1)
	return _in(0x628E742FE1F79C4A, p0, p1)
end

function Global.N_0x62b384fefde06817()
	return _in(0x62B384FEFDE06817, _r, _ri)
end

function Global.N_0x62b9f9a1272aed80(p0)
	return _in(0x62B9F9A1272AED80, p0)
end

function Global.N_0x62be3ecc79fbd004(p0)
	return _in(0x62BE3ECC79FBD004, p0, _r, _ri)
end

function Global.N_0x62c9eb51656d68ce(p0)
	return _in(0x62C9EB51656D68CE, p0, _r, _ri)
end

function Global.N_0x62cab7db62ead434(p0, p1)
	return _in(0x62CAB7DB62EAD434, p0, p1, _r, _ri)
end

function Global.N_0x62d5f0588915b277()
	return _in(0x62D5F0588915B277)
end

function Global.N_0x62de46f061caa468()
	return _in(0x62DE46F061CAA468, _r, _ri)
end

function Global.N_0x62ed71e133b6c9f1(p0, p1, p2, p3)
	return _in(0x62ED71E133B6C9F1, p0, p1, p2, p3)
end

function Global.N_0x62fdad5e01d2dd47(p0, p1, p2, p3, p4, p5)
	return _in(0x62FDAD5E01D2DD47, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x62fdf4e678e40cc6(p0, p1)
	return _in(0x62FDF4E678E40CC6, p0, p1, _r, _ri)
end

function Global.N_0x630e7b01f091a197(p0, p1)
	return _in(0x630E7B01F091A197, p0, p1, _r, _ri)
end

function Global.N_0x6318fb3be37e11b3(p0, p1)
	return _in(0x6318FB3BE37E11B3, p0, p1)
end

function Global.N_0x631cd2d77fdc0316(p0)
	return _in(0x631CD2D77FDC0316, p0)
end

function Global.N_0x63246a24f5747510(p0, p1)
	return _in(0x63246A24F5747510, p0, p1)
end

function Global.N_0x6329c34bee5bff4b(p0, p1)
	return _in(0x6329C34BEE5BFF4B, p0, p1, _r, _ri)
end

function Global.N_0x632aa10bf7ea53d3(p0, p1)
	return _in(0x632AA10BF7EA53D3, p0, p1)
end

function Global.N_0x632be8d84846fa56()
	return _in(0x632BE8D84846FA56)
end

function Global.N_0x63342c50ec115ce8(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x63342C50EC115CE8, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri)
end

function Global.N_0x6339c1ea3979b5f7(p0, p1)
	return _in(0x6339C1EA3979B5F7, p0, p1, _r, _ri)
end

function Global.N_0x633f83b301c87994(p0, p1)
	return _in(0x633F83B301C87994, p0, p1)
end

function Global.N_0x634c19521485ab25(p0)
	return _in(0x634C19521485AB25, p0)
end

function Global.N_0x634f4a0562cf19b8()
	return _in(0x634F4A0562CF19B8)
end

function Global.N_0x63509ddf102e08e8(p0, p1)
	return _in(0x63509DDF102E08E8, p0, p1)
end

function Global.N_0x635423d55ca84fc8(p0)
	return _in(0x635423D55CA84FC8, p0, _r, _ri)
end

function Global.N_0x6355602c02edc6df(p0, p1)
	return _in(0x6355602C02EDC6DF, p0, p1)
end

function Global.N_0x6378a235374b852f(p0, p1)
	return _in(0x6378A235374B852F, p0, p1)
end

function Global.N_0x638a3a81733086db()
	return _in(0x638A3A81733086DB, _r, _ri)
end

function Global.N_0x638fcfc6042a9473(p0, p1)
	return _in(0x638FCFC6042A9473, p0, p1)
end

function Global.N_0x63aa2b8eb087886a(p0, p1)
	return _in(0x63AA2B8EB087886A, p0, p1)
end

function Global.N_0x63b83a526329afbc(p0)
	return _in(0x63B83A526329AFBC, p0)
end

function Global.N_0x63cbbd6ca6f321f9(p0, p1)
	return _in(0x63CBBD6CA6F321F9, p0, p1)
end

function Global.N_0x63dc1f22c903b709(vehicle, p1)
	return _in(0x63DC1F22C903B709, vehicle, p1)
end

function Global.N_0x63e39f09310f481f(p0, p1)
	return _in(0x63E39F09310F481F, p0, p1)
end

function Global.N_0x63e5841a9264d016(p0)
	return _in(0x63E5841A9264D016, p0)
end

function Global.N_0x63e7279d04160477(p0, p1)
	return _in(0x63E7279D04160477, p0, p1)
end

function Global.N_0x63e9dcbc8b0931ed(p0, p1, p2)
	return _in(0x63E9DCBC8B0931ED, p0, p1, p2, _r, _ri)
end

function Global.N_0x640a602946a8c972(p0)
	return _in(0x640A602946A8C972, p0, _r, _ri)
end

function Global.N_0x640f890c3e5a3ffd(p0, p1, p2)
	return _in(0x640F890C3E5A3FFD, p0, p1, p2, _r, _ri)
end

function Global.N_0x641092322a8852ab()
	return _in(0x641092322A8852AB)
end

function Global.N_0x641351e9ad103890(p0, p1)
	return _in(0x641351E9AD103890, p0, p1)
end

function Global.N_0x642720d8d69328b6(p0, p1)
	return _in(0x642720D8D69328B6, p0, p1)
end

function Global.N_0x64340dc208d671d5(p0)
	return _in(0x64340DC208D671D5, p0)
end

function Global.N_0x643fd1556f621772(p0, p1, p2)
	return _in(0x643FD1556F621772, p0, p1, p2, _r, _ri)
end

function Global.N_0x644439b5387ee57e(p0, p1)
	return _in(0x644439B5387EE57E, p0, p1, _r, _ri)
end

function Global.N_0x644ccb76a76cfbd6(p0, p1, p2, p3, p4, p5)
	return _in(0x644CCB76A76CFBD6, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x644e02f24f9d4e98(p0, p1)
	return _in(0x644E02F24F9D4E98, p0, p1, _r, _ri)
end

function Global.N_0x6452b1d357d81742(p0, p1)
	return _in(0x6452B1D357D81742, p0, p1, _r, _ri)
end

function Global.N_0x646564a3b7df68f8(p0, p1, p2)
	return _in(0x646564A3B7DF68F8, p0, p1, p2)
end

function Global.N_0x646ed1a1d28487df(p0, p1)
	return _in(0x646ED1A1D28487DF, p0, p1)
end

function Global.N_0x6480723d3be535b6(p0)
	return _in(0x6480723D3BE535B6, p0)
end

function Global.N_0x64a36ba85ce01a81(p0, p1, p2, p3)
	return _in(0x64A36BA85CE01A81, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x64b956f4e761df5c(p0)
	return _in(0x64B956F4E761DF5C, p0)
end

function Global.N_0x64f765d9a1f8f02c(p0, p1, p2)
	return _in(0x64F765D9A1F8F02C, p0, p1, p2)
end

function Global.N_0x64ff4bf9af59e139(p0, p1)
	return _in(0x64FF4BF9AF59E139, p0, p1)
end

function Global.N_0x6506bfa755fb209c()
	return _in(0x6506BFA755FB209C, _r, _ri)
end

function Global.N_0x6507ac3bd7c99009(p0, p1, p2, p3)
	return _in(0x6507AC3BD7C99009, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x6519238858af5479(p0)
	return _in(0x6519238858AF5479, p0)
end

function Global.N_0x651f0530083c0e5a(p0, p1)
	return _in(0x651F0530083C0E5A, p0, p1)
end

function Global.N_0x6554ecce226f2a2a(p0)
	return _in(0x6554ECCE226F2A2A, p0, _r, _ri)
end

function Global.N_0x6569f31a01b4c097(p0, p1, p2)
	return _in(0x6569F31A01B4C097, p0, p1, p2)
end

function Global.N_0x6571e4327390ec0b(p0, p1, p2, p3, p4, p5)
	return _in(0x6571E4327390EC0B, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x6579860a5558524a(p0, p1)
	return _in(0x6579860A5558524A, p0, p1)
end

function Global.N_0x65887eac535a0b0c(p0)
	return _in(0x65887EAC535A0B0C, p0)
end

function Global.N_0x65a5f70f4a292ebe(p0, p1, p2)
	return _in(0x65A5F70F4A292EBE, p0, p1, p2)
end

function Global.N_0x65a8196b8d7f5e0b(p0)
	return _in(0x65A8196B8D7F5E0B, p0, _r, _ri)
end

function Global.N_0x65b205bf30c13ddb(p0)
	return _in(0x65B205BF30C13DDB, p0)
end

function Global.N_0x65d281985f2bdfc2(p0, p1)
	return _in(0x65D281985F2BDFC2, p0, p1)
end

function Global.N_0x65e65ca6a0fe59d4(p0)
	return _in(0x65E65CA6A0FE59D4, p0, _r, _ri)
end

function Global.N_0x65f040d91001ed4b(p0)
	return _in(0x65F040D91001ED4B, p0)
end

function Global.N_0x660639bc60157048(p0, p1)
	return _in(0x660639BC60157048, p0, p1, _r, _ri)
end

function Global.N_0x660a8f876df1d4f8(p0)
	return _in(0x660A8F876DF1D4F8, p0)
end

function Global.N_0x6614f9039bd31931(p0, p1, p2)
	return _in(0x6614F9039BD31931, p0, p1, p2, _r, _ri)
end

function Global.N_0x661bb1e1ff77742d(p0)
	return _in(0x661BB1E1FF77742D, p0, _r, _ri)
end

function Global.N_0x662d364abf16de2f(p0, p1)
	return _in(0x662D364ABF16DE2F, p0, p1, _r, _ri)
end

function Global.N_0x6647c5f6f5792496(ped, p1)
	return _in(0x6647C5F6F5792496, ped, p1)
end

function Global.N_0x665161d250850a9f(p0)
	return _in(0x665161D250850A9F, p0, _r, _ri)
end

function Global.N_0x6652b0c8f3d414d0(p0)
	return _in(0x6652B0C8F3D414D0, p0)
end

function Global.N_0x665b21666351cb37(p0, p1, p2)
	return _in(0x665B21666351CB37, p0, p1, p2, _r, _ri)
end

function Global.N_0x666c2f53abefc952(p0)
	return _in(0x666C2F53ABEFC952, p0, _r, _ri)
end

function Global.N_0x668af6e4933ac13f(p0, p1)
	return _in(0x668AF6E4933AC13F, p0, p1)
end

function Global.N_0x669655ffb29ef1a9(p0, p1, p2, p3)
	return _in(0x669655FFB29EF1A9, p0, p1, p2, p3)
end

function Global.N_0x669c25840c6f7ae2(p0, p1)
	return _in(0x669C25840C6F7AE2, p0, p1)
end

function Global.N_0x66b1cb778d911f49(p0, p1)
	return _in(0x66B1CB778D911F49, p0, p1)
end

function Global.N_0x66b2b83b94b22458(p0)
	return _in(0x66B2B83B94B22458, p0, _r, _ri)
end

function Global.N_0x66b957aac2eaaeab(p0, p1, p2, p3, p4, p5)
	return _in(0x66B957AAC2EAAEAB, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x66bc28e50e85270e(p0)
	return _in(0x66BC28E50E85270E, p0, _r, _ri)
end

function Global.N_0x66c047719b0e80e1(p0, p1)
	return _in(0x66C047719B0E80E1, p0, p1)
end

function Global.N_0x66ee5b93c308f734(p0)
	return _in(0x66EE5B93C308F734, p0, _r, _ri)
end

function Global.N_0x66f35dd9d2b58579()
	return _in(0x66F35DD9D2B58579, _r, _ri)
end

function Global.N_0x66f9eb44342bb4c5(p0, p1)
	return _in(0x66F9EB44342BB4C5, p0, p1)
end

function Global.N_0x66ff395445a88a6e(p0, p1, p2)
	return _in(0x66FF395445A88A6E, p0, p1, p2)
end

function Global.N_0x6703872ec09bc158(p0, p1)
	return _in(0x6703872EC09BC158, p0, p1)
end

function Global.N_0x6718f40313a2b5a6(p0)
	return _in(0x6718F40313A2B5A6, p0, _r, _ri)
end

function Global.N_0x671a07c9a1cd50a5(p0)
	return _in(0x671A07C9A1CD50A5, p0, _r, _ri)
end

function Global.N_0x6734f0a6a52c371c(p0, p1)
	return _in(0x6734F0A6A52C371C, p0, p1)
end

function Global.N_0x673a8779d229ba5a(p0, p1, p2, p3, p4, p5)
	return _in(0x673A8779D229BA5A, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x674b90be1115846d(p0, p1)
	return _in(0x674B90BE1115846D, p0, p1)
end

function Global.N_0x675680d089bfa21f(p0, p1)
	return _in(0x675680D089BFA21F, p0, p1)
end

function Global.N_0x6759bee6762e140b(p0)
	return _in(0x6759BEE6762E140B, p0)
end

function Global.N_0x67659a8f248e0141(p0, p1)
	return _in(0x67659A8F248E0141, p0, p1)
end

function Global.N_0x6786d7afac3162b3(p0)
	return _in(0x6786D7AFAC3162B3, p0)
end

function Global.N_0x678d3226cf70b9c8(p0, p1)
	return _in(0x678D3226CF70B9C8, p0, p1, _r, _ri)
end

function Global.N_0x678f00858980f516(p0, p1, p2)
	return _in(0x678F00858980F516, p0, p1, p2, _r, _ri)
end

function Global.N_0x67995318f5faa496(p0)
	return _in(0x67995318F5FAA496, p0, _r, _ri)
end

function Global.N_0x67a43ea3f6fe0076(p0)
	return _in(0x67A43EA3F6FE0076, p0)
end

function Global.N_0x67b0778c62e74423(p0)
	return _in(0x67B0778C62E74423, p0)
end

function Global.N_0x67bfced22909834d(p0)
	return _in(0x67BFCED22909834D, p0)
end

function Global.N_0x67ccdf74c4df7169()
	return _in(0x67CCDF74C4DF7169, _r, _ri)
end

function Global.N_0x67e21acc5c0c970c(p0, p1, p2)
	return _in(0x67E21ACC5C0C970C, p0, p1, p2)
end

function Global.N_0x67f7ceac2391e114(p0, p1)
	return _in(0x67F7CEAC2391E114, p0, p1)
end

function Global.N_0x68103e2247887242()
	return _in(0x68103E2247887242)
end

function Global.N_0x6818d1a194e29983()
	return _in(0x6818D1A194E29983, _r, _ri)
end

function Global.N_0x68319452c5064aba(p0, p1)
	return _in(0x68319452C5064ABA, p0, p1)
end

function Global.N_0x6835afea10e186f4(p0, p1)
	return _in(0x6835AFEA10E186F4, p0, p1)
end

function Global.N_0x6852288340b43239(p0, p1)
	return _in(0x6852288340B43239, p0, p1, _r, _ri)
end

function Global.N_0x6862e4d93f64cf01(p0, p1, p2, p3)
	return _in(0x6862E4D93F64CF01, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x68821369a2ceadd5(p0, p1)
	return _in(0x68821369A2CEADD5, p0, p1, _r, _ri)
end

function Global.N_0x68830738a6bfb370(p0, p1)
	return _in(0x68830738A6BFB370, p0, p1)
end

function Global.N_0x6888a43c35a5f630(p0)
	return _in(0x6888A43C35A5F630, p0, _r, _ri)
end

function Global.N_0x68a0389e0718ac8f(p0)
	return _in(0x68A0389E0718AC8F, p0, _r, _ri)
end

function Global.N_0x68f6a75fdf5a70d6(p0, p1, p2, p3)
	return _in(0x68F6A75FDF5A70D6, p0, p1, p2, p3)
end

function Global.N_0x690806bc83bc8ca2(p0)
	return _in(0x690806BC83BC8CA2, p0, _r, _ri)
end

function Global.N_0x691e4de5309eaefc(p0, p1)
	return _in(0x691E4DE5309EAEFC, p0, p1)
end

function Global.N_0x6929e22158e52265(p0, p1, p2)
	return _in(0x6929E22158E52265, p0, p1, p2, _r, _ri)
end

function Global.N_0x694ffa4308060cd1(p0, p1)
	return _in(0x694FFA4308060CD1, p0, p1)
end

function Global.N_0x695dac2db928f308(p0, p1)
	return _in(0x695DAC2DB928F308, p0, p1)
end

function Global.N_0x6968ce7ac32f6788(p0)
	return _in(0x6968CE7AC32F6788, p0)
end

function Global.N_0x69786495c92a3044(p0)
	return _in(0x69786495C92A3044, p0, _r, _ri)
end

function Global.N_0x697df68f3a761a50(p0)
	return _in(0x697DF68F3A761A50, p0)
end

function Global.N_0x69c810b72291d831(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x69C810B72291D831, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0x69d65e89ffd72313(p0, p1)
	return _in(0x69D65E89FFD72313, p0, p1)
end

function Global.N_0x69e181772886f48b(p0)
	return _in(0x69E181772886F48B, p0, _r, _ri)
end

function Global.N_0x6a0184e904cdf25e(p0, p1)
	return _in(0x6A0184E904CDF25E, p0, p1)
end

function Global.N_0x6a190b94c2541a99(p0)
	return _in(0x6A190B94C2541A99, p0)
end

function Global.N_0x6a1af481407bf6e9(p0)
	return _in(0x6A1AF481407BF6E9, p0)
end

function Global.N_0x6a4404bdfa62ce2c(p0, p1)
	return _in(0x6A4404BDFA62CE2C, p0, p1)
end

function Global.N_0x6a489892e813951a(p0)
	return _in(0x6A489892E813951A, p0)
end

function Global.N_0x6a4d224fc7643941(p0)
	return _in(0x6A4D224FC7643941, p0)
end

function Global.N_0x6a564540fac12211(p0, p1)
	return _in(0x6A564540FAC12211, p0, p1)
end

function Global.N_0x6a648d42bf271dc7(p0, p1, p2, p3, p4, p5)
	return _in(0x6A648D42BF271DC7, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x6a6e79fbe8678c98()
	return _in(0x6A6E79FBE8678C98)
end

function Global.N_0x6a9df0fcd0c87ff9()
	return _in(0x6A9DF0FCD0C87FF9)
end

function Global.N_0x6aa3dca2c6f5eb6d(p0)
	return _in(0x6AA3DCA2C6F5EB6D, p0, _r, _ri)
end

function Global.N_0x6ab944df68b512d3(p0)
	return _in(0x6AB944DF68B512D3, p0)
end

function Global.N_0x6abad7b0a854f8fb(p0)
	return _in(0x6ABAD7B0A854F8FB, p0, _r, _ri)
end

function Global.N_0x6abc50979655bee7(p0, p1, p2)
	return _in(0x6ABC50979655BEE7, p0, p1, p2)
end

function Global.N_0x6ac4af46a6b8dfb2(p0)
	return _in(0x6AC4AF46A6B8DFB2, p0)
end

function Global.N_0x6ad66548840472e5(p0)
	return _in(0x6AD66548840472E5, p0, _r, _ri)
end

function Global.N_0x6adf821fbf21920e(p0, p1)
	return _in(0x6ADF821FBF21920E, p0, p1)
end

function Global.N_0x6afd84aeaa3ea538(p0)
	return _in(0x6AFD84AEAA3EA538, p0, _r, _ri)
end

function Global.N_0x6afda2264925bd11(p0)
	return _in(0x6AFDA2264925BD11, p0)
end

function Global.N_0x6b1044fdc2b09101(p0, p1)
	return _in(0x6B1044FDC2B09101, p0, p1)
end

function Global.N_0x6b34be961f639e21(p0, p1)
	return _in(0x6B34BE961F639E21, p0, p1)
end

function Global.N_0x6b44f13d888f770d(p0, p1, p2, p3, p4, p5)
	return _in(0x6B44F13D888F770D, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x6b53f4b811e583d2(p0, p1)
	return _in(0x6B53F4B811E583D2, p0, p1)
end

function Global.N_0x6b5ddfb967e5073d(p0, p1)
	return _in(0x6B5DDFB967E5073D, p0, p1)
end

function Global.N_0x6b67320e0d57856a(p0, p1, p2, p3)
	return _in(0x6B67320E0D57856A, p0, p1, p2, p3)
end

function Global.N_0x6b7a88a61b41e589(p0)
	return _in(0x6B7A88A61B41E589, p0)
end

function Global.N_0x6b89faa36fc909a3(p0, p1, p2, p3)
	return _in(0x6B89FAA36FC909A3, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x6b9c5c38838fb6e6(p0)
	return _in(0x6B9C5C38838FB6E6, p0)
end

function Global.N_0x6b9fe4f0ba521a19(p0, p1)
	return _in(0x6B9FE4F0BA521A19, p0, p1)
end

function Global.N_0x6ba606ab3a83bc4d(p0)
	return _in(0x6BA606AB3A83BC4D, p0, _r, _ri)
end

function Global.N_0x6bab7aced1017204(p0, p1)
	return _in(0x6BAB7ACED1017204, p0, p1, _r, _ri)
end

function Global.N_0x6bcf5f3d8ffe988d(p0, p1)
	return _in(0x6BCF5F3D8FFE988D, p0, p1)
end

function Global.N_0x6bcf7b5cd338281a(p0, p1, p2)
	return _in(0x6BCF7B5CD338281A, p0, p1, p2)
end

function Global.N_0x6bed40493a1afdb8(p0, p1)
	return _in(0x6BED40493A1AFDB8, p0, p1)
end

function Global.N_0x6befaa907b076859(p0)
	return _in(0x6BEFAA907B076859, p0)
end

function Global.N_0x6bfbdc46139c45ab(p0, p1, p2)
	return _in(0x6BFBDC46139C45AB, p0, p1, p2, _r, _ri)
end

function Global.N_0x6bff5f84102df80a(player)
	return _in(0x6BFF5F84102DF80A, player)
end

function Global.N_0x6bffb7c276866996(p0)
	return _in(0x6BFFB7C276866996, p0, _r, _ri)
end

function Global.N_0x6c03118e9e5c1a14(p0)
	return _in(0x6C03118E9E5C1A14, p0)
end

function Global.N_0x6c1053c433a573cf(p0)
	return _in(0x6C1053C433A573CF, p0)
end

function Global.N_0x6c269f673c47031e(p0)
	return _in(0x6C269F673C47031E, p0, _r, _ri)
end

function Global.N_0x6c27442a225a241a(p0)
	return _in(0x6C27442A225A241A, p0, _r, _ri)
end

function Global.N_0x6c31b06e91518269(p0, p1)
	return _in(0x6C31B06E91518269, p0, p1)
end

function Global.N_0x6c3f12eceb6d2e2a(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x6C3F12ECEB6D2E2A, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0x6c4dbf553885f9eb(p0, p1, p2)
	return _in(0x6C4DBF553885F9EB, p0, p1, p2, _r, _ri)
end

function Global.N_0x6c50b9dccca70023(p0)
	return _in(0x6C50B9DCCCA70023, p0, _r, _ri)
end

function Global.N_0x6c54e69516cc56bd(p0)
	return _in(0x6C54E69516CC56BD, p0, _r, _ri)
end

function Global.N_0x6c57bea886a20c6b(p0, p1)
	return _in(0x6C57BEA886A20C6B, p0, p1)
end

function Global.N_0x6c76bc24f8bb709a(p0, p1, p2)
	return _in(0x6C76BC24F8BB709A, p0, p1, p2)
end

function Global.N_0x6c7b68d3ce60e8de(p0)
	return _in(0x6C7B68D3CE60E8DE, p0, _r, _ri)
end

function Global.N_0x6c7e04e9de451789()
	return _in(0x6C7E04E9DE451789)
end

function Global.N_0x6c87f49bfa181db5(p0, p1, p2)
	return _in(0x6C87F49BFA181DB5, p0, p1, p2, _r, _ri)
end

function Global.N_0x6c9f12700bce69f4(p0, p1)
	return _in(0x6C9F12700BCE69F4, p0, p1, _r, _ri)
end

function Global.N_0x6ca484c9a7377e4f(p0, p1)
	return _in(0x6CA484C9A7377E4F, p0, p1, _r, _ri)
end

function Global.N_0x6cab0ba160b168d2()
	return _in(0x6CAB0BA160B168D2)
end

function Global.N_0x6cd79468a1e595c6(padIndex)
	return _in(0x6CD79468A1E595C6, padIndex, _r)
end

function Global.N_0x6cee2e30021daec6()
	return _in(0x6CEE2E30021DAEC6)
end

function Global.N_0x6cf82a7f65a5ad5f(p0, p1)
	return _in(0x6CF82A7F65A5AD5F, p0, p1, _r, _ri)
end

function Global.N_0x6cfc373008a1edaf(p0)
	return _in(0x6CFC373008A1EDAF, p0, _r, _ri)
end

function Global.N_0x6d07b371e9439019(p0)
	return _in(0x6D07B371E9439019, p0)
end

function Global.N_0x6d206d383bb5f6b1(p0, p1)
	return _in(0x6D206D383BB5F6B1, p0, p1, _r, _ri)
end

function Global.N_0x6d2f987736a42d4c(p0, p1, p2)
	return _in(0x6D2F987736A42D4C, p0, p1, p2)
end

function Global.N_0x6d3ac61694a791c5(p0)
	return _in(0x6D3AC61694A791C5, p0, _r, _ri)
end

function Global.N_0x6d4d25c2137ff511(p0, p1, p2)
	return _in(0x6D4D25C2137FF511, p0, p1, p2)
end

function Global.N_0x6d58167f62238284(p0)
	return _in(0x6D58167F62238284, p0, _r, _ri)
end

function Global.N_0x6d5f9e69ba1be783(p0)
	return _in(0x6D5F9E69BA1BE783, p0)
end

function Global.N_0x6d85126f6ccf02c9(p0, p1, p2)
	return _in(0x6D85126F6CCF02C9, p0, p1, p2)
end

function Global.N_0x6d87ba8ef15226cd()
	return _in(0x6D87BA8EF15226CD, _r, _ri)
end

function Global.N_0x6da15746d5cc1a92(p0, p1, p2, p3, p4, p5)
	return _in(0x6DA15746D5CC1A92, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x6dad6630ae4a74cb(p0, p1)
	return _in(0x6DAD6630AE4A74CB, p0, p1)
end

function Global.N_0x6db875afc584fa32(p0, p1)
	return _in(0x6DB875AFC584FA32, p0, p1, _r, _ri)
end

function Global.N_0x6dbf2d78709ad70b(p0, p1)
	return _in(0x6DBF2D78709AD70B, p0, p1)
end

function Global.N_0x6de03bcc15e81710(p0, p1, p2)
	return _in(0x6DE03BCC15E81710, p0, p1, p2, _r, _rv)
end

function Global.N_0x6de072ac8a95ffc1(p0, p1)
	return _in(0x6DE072AC8A95FFC1, p0, p1)
end

function Global.N_0x6df942c4179be5ab(p0, p1)
	return _in(0x6DF942C4179BE5AB, p0, p1, _r, _ri)
end

function Global.N_0x6dfd37e586d4f44f()
	return _in(0x6DFD37E586D4F44F, _r, _ri)
end

function Global.N_0x6e0d3c3f828da773(p0, p1)
	return _in(0x6E0D3C3F828DA773, p0, p1)
end

function Global.N_0x6e2aa80bb0c03728(p0, p1)
	return _in(0x6E2AA80BB0C03728, p0, p1, _r, _ri)
end

function Global.N_0x6e2fd8cf7eb10e53(p0, p1)
	return _in(0x6E2FD8CF7EB10E53, p0, p1, _r, _ri)
end

function Global.N_0x6e4e1a82081eabed(p0)
	return _in(0x6E4E1A82081EABED, p0, _r, _ri)
end

function Global.N_0x6e585a616abb8401(p0)
	return _in(0x6E585A616ABB8401, p0, _r, _ri)
end

function Global.N_0x6e5cbcb3941d7d08(p0, p1)
	return _in(0x6E5CBCB3941D7D08, p0, p1, _r, _ri)
end

function Global.N_0x6e8b87139854022d(p0, p1)
	return _in(0x6E8B87139854022D, p0, p1)
end

function Global.N_0x6e8eb45a4f4460eb(p0)
	return _in(0x6E8EB45A4F4460EB, p0)
end

function Global.N_0x6e969927cf632608(p0)
	return _in(0x6E969927CF632608, p0)
end

function Global.N_0x6ea0e93cffa472cc(p0)
	return _in(0x6EA0E93CFFA472CC, p0)
end

function Global.N_0x6ea1273d525427f4(p0, p1, p2)
	return _in(0x6EA1273D525427F4, p0, p1, p2)
end

function Global.N_0x6ec2a67962296f49(p0, p1, p2, p3)
	return _in(0x6EC2A67962296F49, p0, p1, p2, p3)
end

function Global.N_0x6ecfc621a168424c(p0, p1, p2)
	return _in(0x6ECFC621A168424C, p0, p1, p2)
end

function Global.N_0x6edb5d08cb03e763(p0, p1)
	return _in(0x6EDB5D08CB03E763, p0, p1)
end

function Global.N_0x6eead6af637da752(p0, p1, p2, p3, p4, p5)
	return _in(0x6EEAD6AF637DA752, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x6ef4e31b4d5d2da0(p0, p1)
	return _in(0x6EF4E31B4D5D2DA0, p0, p1, _r, _ri)
end

function Global.N_0x6f02b5e50511721e(p0)
	return _in(0x6F02B5E50511721E, p0, _r, _ri)
end

function Global.N_0x6f1f0b17109309da(p0, p1)
	return _in(0x6F1F0B17109309DA, p0, p1, _r, _ri)
end

function Global.N_0x6f3068258a499e52(p0, p1, p2, p3, p4)
	return _in(0x6F3068258A499E52, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x6f43c351a5d51e2f(p0, p1)
	return _in(0x6F43C351A5D51E2F, p0, p1, _r, _ri)
end

function Global.N_0x6f46f8acb44c4fc1(p0)
	return _in(0x6F46F8ACB44C4FC1, p0, _r, _ri)
end

function Global.N_0x6f62fae266dcfc81(p0, p1, p2, p3, p4, p5)
	return _in(0x6F62FAE266DCFC81, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x6f700a4bf7c3331b(p0)
	return _in(0x6F700A4BF7C3331B, p0)
end

function Global.N_0x6f73efab11651d7f(p0, p1)
	return _in(0x6F73EFAB11651D7F, p0, p1)
end

function Global.N_0x6fb1da3ca9da7d90(p0, p1, p2, p3, p4, p5)
	return _in(0x6FB1DA3CA9DA7D90, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x6fb76442469abd68(p0)
	return _in(0x6FB76442469ABD68, p0, _r, _ri)
end

function Global.N_0x6fd7bdf10304363a(p0, p1)
	return _in(0x6FD7BDF10304363A, p0, p1)
end

function Global.N_0x6fd992c4a1c1b986()
	return _in(0x6FD992C4A1C1B986, _r, _ri)
end

function Global.N_0x7020839c7302d8ac(p0)
	return _in(0x7020839C7302D8AC, p0, _r, _ri)
end

function Global.N_0x702b75dc9d3ede56(p0)
	return _in(0x702B75DC9D3EDE56, p0)
end

function Global.N_0x70379b5c3ff1d209()
	return _in(0x70379B5C3FF1D209, _r, _ri)
end

function Global.N_0x703d4fb366da4452(p0, p1)
	return _in(0x703D4FB366DA4452, p0, p1)
end

function Global.N_0x7043d0681285ba2d(p0)
	return _in(0x7043D0681285BA2D, p0)
end

function Global.N_0x704c908e9c405136(p0)
	return _in(0x704C908E9C405136, p0)
end

function Global.N_0x704f92b3af20d857(p0)
	return _in(0x704F92B3AF20D857, p0)
end

function Global.N_0x705be297eebdb95d(p0)
	return _in(0x705BE297EEBDB95D, p0, _r, _ri)
end

function Global.N_0x70605812abc9ff0f(p0, p1)
	return _in(0x70605812ABC9FF0F, p0, p1)
end

function Global.N_0x706b434fefad6a24(p0)
	return _in(0x706B434FEFAD6A24, p0)
end

function Global.N_0x708df841b8f27aa2(p0)
	return _in(0x708DF841B8F27AA2, _ts(p0))
end

function Global.N_0x709ba8c08c5c008d()
	return _in(0x709BA8C08C5C008D)
end

function Global.N_0x70a6658d476c6187()
	return _in(0x70A6658D476C6187)
end

function Global.N_0x710448d44a64c213(p0)
	return _in(0x710448D44A64C213, p0)
end

function Global.N_0x712b2c2b2471b493(p0, p1)
	return _in(0x712B2C2B2471B493, p0, p1)
end

function Global.N_0x7146cf430965927c(p0, p1)
	return _in(0x7146CF430965927C, p0, p1)
end

function Global.N_0x714a0ea7de1167be(p0, p1)
	return _in(0x714A0EA7DE1167BE, p0, p1, _r, _ri)
end

function Global.N_0x716f17f8a0419f95(p0)
	return _in(0x716F17F8A0419F95, p0, _r, _ri)
end

function Global.N_0x717da2281df90855(p0)
	return _in(0x717DA2281DF90855, p0, _r, _ri)
end

function Global.N_0x7182edda1ee7db5a(p0)
	return _in(0x7182EDDA1EE7DB5A, p0)
end

function Global.N_0x71845905bccde781(p0)
	return _in(0x71845905BCCDE781, p0)
end

function Global.N_0x718c6ecf5e8cbdd4()
	return _in(0x718C6ECF5E8CBDD4)
end

function Global.N_0x718eb706b6e998a0(p0)
	return _in(0x718EB706B6E998A0, p0)
end

function Global.N_0x71d71e08a7ed5bd7(p0)
	return _in(0x71D71E08A7ED5BD7, p0)
end

function Global.N_0x71fa2d1880c48032(p0)
	return _in(0x71FA2D1880C48032, p0)
end

function Global.N_0x72068021f498e6e3(p0, p1, p2, p3)
	return _in(0x72068021F498E6E3, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x722d6a49200174fe(p0, p1, p2, p3, p4)
	return _in(0x722D6A49200174FE, p0, p1, p2, p3, p4)
end

function Global.N_0x722fbe08ef5b87bd(p0, p1, p2, p3, p4)
	return _in(0x722FBE08EF5B87BD, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x725d52f21a5e9e22(p0)
	return _in(0x725D52F21A5E9E22, p0, _r, _ri)
end

function Global.N_0x725d52f21a5e9ef6(p0)
	return _in(0x725D52F21A5E9EF6, p0, _r, _ri)
end

function Global.N_0x7264f9ca87a9830b(p0)
	return _in(0x7264F9CA87A9830B, p0, _r, _ri)
end

function Global.N_0x7274f84b1501b523(p0)
	return _in(0x7274F84B1501B523, p0)
end

function Global.N_0x727ab6f008bb9f29(p0, p1)
	return _in(0x727AB6F008BB9F29, p0, p1, _r, _ri)
end

function Global.N_0x728491fb3dffef99(p0)
	return _in(0x728491FB3DFFEF99, p0)
end

function Global.N_0x72904d3d62af5839()
	return _in(0x72904D3D62AF5839, _r, _ri)
end

function Global.N_0x729d52461aea9e22(p0)
	return _in(0x729D52461AEA9E22, p0, _r, _ri)
end

function Global.N_0x729d52f61a5a9e22(p0)
	return _in(0x729D52F61A5A9E22, p0, _r, _ri)
end

function Global.N_0x72ad59f7b7fb6e24(p0, p1)
	return _in(0x72AD59F7B7FB6E24, p0, p1, _r, _ri)
end

function Global.N_0x72b2e00c9bac6789(p0, p1)
	return _in(0x72B2E00C9BAC6789, p0, p1, _r, _ri)
end

function Global.N_0x72b7f65f11fc8896(p0)
	return _in(0x72B7F65F11FC8896, p0)
end

function Global.N_0x72d4cb5db927009c(p0, p1, p2)
	return _in(0x72D4CB5DB927009C, p0, p1, p2)
end

function Global.N_0x72e30372e7cc4415(p0, p1)
	return _in(0x72E30372E7CC4415, p0, p1)
end

function Global.N_0x72e4d1c4639bc465(p0, p1)
	return _in(0x72E4D1C4639BC465, p0, p1, _r, _ri)
end

function Global.N_0x73118a3ee9c9b6db(p0, p1, p2)
	return _in(0x73118A3EE9C9B6DB, p0, p1, p2)
end

function Global.N_0x733077295ab51304(p0)
	return _in(0x733077295AB51304, p0)
end

function Global.N_0x7332461fc59eb7ec(p0)
	return _in(0x7332461FC59EB7EC, p0, _r, _ri)
end

function Global.N_0x73348402566ecb6e(p0, p1, p2, p3)
	return _in(0x73348402566ECB6E, p0, p1, p2, p3)
end

function Global.N_0x733c87d4ce22bea2(p0)
	return _in(0x733C87D4CE22BEA2, p0)
end

function Global.N_0x734311e2852760d0(p0, p1, p2)
	return _in(0x734311E2852760D0, p0, p1, p2, _r, _ri)
end

function Global.N_0x7351da734f989f4e(p0)
	return _in(0x7351DA734F989F4E, p0, _r, _ri)
end

function Global.N_0x735662994e60a710(p0, p1)
	return _in(0x735662994E60A710, p0, p1)
end

function Global.N_0x735762e8d7573e42(p0, p1, p2)
	return _in(0x735762E8D7573E42, p0, p1, p2)
end

function Global.N_0x73616e64696c132e(p0, p1)
	return _in(0x73616E64696C132E, p0, p1, _r, _ri)
end

function Global.N_0x73616e64696c616e(p0, p1, p2, p3)
	return _in(0x73616E64696C616E, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x738271b660fe0695(p0, p1, p2, p3, p4)
	return _in(0x738271B660FE0695, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x739b9c6d0e7f7f93(p0, p1)
	return _in(0x739B9C6D0E7F7F93, p0, p1)
end

function Global.N_0x73b40d97d7baad77(p0, p1, p2, p3)
	return _in(0x73B40D97D7BAAD77, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x73b6f907b913c860(p0, p1)
	return _in(0x73B6F907B913C860, p0, p1)
end

function Global.N_0x73bad7b2f2db50de(p0, p1)
	return _in(0x73BAD7B2F2DB50DE, p0, p1)
end

function Global.N_0x73eb2ef2e92d23bf()
	return _in(0x73EB2EF2E92D23BF, _r, _ri)
end

function Global.N_0x73f0d0327bfa0812(p0)
	return _in(0x73F0D0327BFA0812, p0, _r, _ri)
end

function Global.N_0x73f1e4f6df26fe30(p0)
	return _in(0x73F1E4F6DF26FE30, p0)
end

function Global.N_0x73ff6be63dc18819()
	return _in(0x73FF6BE63DC18819, _r, _ri)
end

function Global.N_0x7406c71f4ac2ffcc(p0)
	return _in(0x7406C71F4AC2FFCC, p0)
end

function Global.N_0x7408b5c66ba31adb(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x7408B5C66BA31ADB, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0x7409669c5ed50144(p0)
	return _in(0x7409669C5ED50144, p0, _r, _ri)
end

function Global.N_0x7423f7835770f619(p0)
	return _in(0x7423F7835770F619, p0)
end

function Global.N_0x7455cd705f7e933e()
	return _in(0x7455CD705F7E933E)
end

function Global.N_0x745808bb01cec6b9(p0)
	return _in(0x745808BB01CEC6B9, p0)
end

function Global.N_0x7467165ee97d3c68(p0)
	return _in(0x7467165EE97D3C68, p0, _r, _ri)
end

function Global.N_0x747257807b8721ce(p0, p1)
	return _in(0x747257807B8721CE, p0, p1, _r, _ri)
end

function Global.N_0x748c5f51a18cb8f0(p0)
	return _in(0x748C5F51A18CB8F0, p0)
end

function Global.N_0x748d5e0d2a1a4c61(p0, p1, p2)
	return _in(0x748D5E0D2A1A4C61, p0, p1, p2)
end

function Global.N_0x74aca66484cebaf0(p0)
	return _in(0x74ACA66484CEBAF0, p0)
end

function Global.N_0x74bcceb233ad95b2(p0, p1)
	return _in(0x74BCCEB233AD95B2, p0, p1)
end

function Global.N_0x74c2365fdd1bb48f(p0, p1)
	return _in(0x74C2365FDD1BB48F, p0, p1)
end

function Global.N_0x74c2b3dc0b294102(p0)
	return _in(0x74C2B3DC0B294102, p0)
end

function Global.N_0x74c333e34df74e8a(action)
	return _in(0x74C333E34DF74E8A, _ts(action))
end

function Global.N_0x74c3b1093728d263(p0, p1)
	return _in(0x74C3B1093728D263, p0, p1, _r, _ri)
end

function Global.N_0x74c8000fdd1bb111(p0, p1)
	return _in(0x74C8000FDD1BB111, p0, p1, _r, _ri)
end

function Global.N_0x74c8000fdd1bb222(p0, p1)
	return _in(0x74C8000FDD1BB222, p0, p1, _r, _ri)
end

function Global.N_0x74c9080fdd1bb48e(p0, p1)
	return _in(0x74C9080FDD1BB48E, p0, p1)
end

function Global.N_0x74c9080fdd1bb48f(p0, p1)
	return _in(0x74C9080FDD1BB48F, p0, p1)
end

function Global.N_0x74c9090fdd1bb48e(p0, p1, p2, p3)
	return _in(0x74C9090FDD1BB48E, p0, p1, p2, p3)
end

function Global.N_0x74c90aaacc1dd48f(p0)
	return _in(0x74C90AAACC1DD48F, p0)
end

function Global.N_0x74e2261d2a66849a(p0)
	return _in(0x74E2261D2A66849A, p0)
end

function Global.N_0x74f0209674864cbd()
	return _in(0x74F0209674864CBD, _r, _ri)
end

function Global.N_0x74f1d22efa71fab8()
	return _in(0x74F1D22EFA71FAB8, _r, _ri)
end

function Global.N_0x74f512e29cb717e2(p0, p1, p2, p3)
	return _in(0x74F512E29CB717E2, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x74f99ef7ef503398(p0)
	return _in(0x74F99EF7EF503398, p0, _r, _ri)
end

function Global.N_0x74fb3e29e6d10fa9()
	return _in(0x74FB3E29E6D10FA9, _r, _ri)
end

function Global.N_0x750d42c013f64ae7(p0, p1)
	return _in(0x750D42C013F64AE7, p0, p1)
end

function Global.N_0x751a7e0eaedad0d3(p0, p1, p2)
	return _in(0x751A7E0EAEDAD0D3, p0, p1, p2, _r, _ri)
end

function Global.N_0x751df00eeff122e3(p0)
	return _in(0x751DF00EEFF122E3, p0)
end

function Global.N_0x7528720101a807a5(p0, p1)
	return _in(0x7528720101A807A5, p0, p1)
end

function Global.N_0x753b15ad0fd6f3e3(p0)
	return _in(0x753B15AD0FD6F3E3, p0, _r, _ri)
end

function Global.N_0x754616ec6965d1bf()
	return _in(0x754616EC6965D1BF)
end

function Global.N_0x754616ec6965d1fb()
	return _in(0x754616EC6965D1FB)
end

function Global.N_0x754937c28271bc65(p0)
	return _in(0x754937C28271BC65, p0)
end

function Global.N_0x7549b9e841940695(vehicle, p1)
	return _in(0x7549B9E841940695, vehicle, p1)
end

function Global.N_0x755901c7598b97bc(p0, p1)
	return _in(0x755901C7598B97BC, p0, p1, _r, _ri)
end

function Global.N_0x755e08680f21ef30(p0)
	return _in(0x755E08680F21EF30, p0, _r, _ri)
end

function Global.N_0x7563cbca99253d1a(p0, p1)
	return _in(0x7563CBCA99253D1A, p0, p1)
end

function Global.N_0x756c7b4c43df0422(p0)
	return _in(0x756C7B4C43DF0422, p0, _r, _ri)
end

function Global.N_0x7581972adf5d699a(p0, p1)
	return _in(0x7581972ADF5D699A, p0, p1)
end

function Global.N_0x7583a9d35248b83f(p0)
	return _in(0x7583A9D35248B83F, p0, _r, _ri)
end

function Global.N_0x758f081db204ddde(p0)
	return _in(0x758F081DB204DDDE, p0, _r, _ri)
end

function Global.N_0x75a082563b4452e5(p0, p1, p2, p3)
	return _in(0x75A082563B4452E5, p0, p1, p2, p3)
end

function Global.N_0x75b49acd73617437(vehicle, p1)
	return _in(0x75B49ACD73617437, vehicle, p1)
end

function Global.N_0x75ba1cb3b7d40caf(ped, p1)
	return _in(0x75BA1CB3B7D40CAF, ped, p1)
end

function Global.N_0x75cbf20ba47e4f89(p0, p1, p2, p3)
	return _in(0x75CBF20BA47E4F89, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x75cfac49301e134e(p0, p1, p2)
	return _in(0x75CFAC49301E134E, p0, p1, p2)
end

function Global.N_0x75cfac49301e134f(p0, p1, p2)
	return _in(0x75CFAC49301E134F, p0, p1, p2)
end

function Global.N_0x75d3333409cd33ce(p0, p1, p2)
	return _in(0x75D3333409CD33CE, p0, p1, p2)
end

function Global.N_0x75df9e73f2f005fd(p0)
	return _in(0x75DF9E73F2F005FD, p0, _r, _ri)
end

function Global.N_0x75f90e4051cc084c(p0, p1)
	return _in(0x75F90E4051CC084C, p0, p1)
end

function Global.N_0x75fc34a2ba345bd1()
	return _in(0x75FC34A2BA345BD1, _r, _ri)
end

function Global.N_0x76160e0396142765(p0)
	return _in(0x76160E0396142765, p0, _r, _ri)
end

function Global.N_0x762fdc4c19e5a981(p0, p1)
	return _in(0x762FDC4C19E5A981, p0, p1)
end

function Global.N_0x763637f9b838b0a7(p0, p1, p2)
	return _in(0x763637F9B838B0A7, p0, p1, p2)
end

function Global.N_0x764db5a48390fbad(p0, p1)
	return _in(0x764DB5A48390FBAD, p0, p1)
end

function Global.N_0x765e60a1dcb8b1ce()
	return _in(0x765E60A1DCB8B1CE)
end

function Global.N_0x766315a564594401(p0, p1, p2)
	return _in(0x766315A564594401, p0, p1, p2)
end

function Global.N_0x7678fe0455ed1145(p0, p1, p2)
	return _in(0x7678FE0455ED1145, p0, p1, p2, _r, _ri)
end

function Global.N_0x767931c727df2ed7(p0, p1)
	return _in(0x767931C727DF2ED7, p0, p1, _r, _ri)
end

function Global.N_0x7681b677400c7071(p0, p1, p2, p3, p4)
	return _in(0x7681B677400C7071, p0, p1, p2, p3, p4)
end

function Global.N_0x768e81ae285a4b67(p0, p1)
	return _in(0x768E81AE285A4B67, p0, p1)
end

function Global.N_0x769bb7626b8cdb06(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x769BB7626B8CDB06, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x769e848c66e3c2bb(p0)
	return _in(0x769E848C66E3C2BB, p0, _i, _i, _r)
end

function Global.N_0x76bad9d538bca1aa(p0, p1)
	return _in(0x76BAD9D538BCA1AA, p0, p1)
end

function Global.N_0x76cbcd9eadc00955()
	return _in(0x76CBCD9EADC00955)
end

function Global.N_0x76cf93d4b416b288(p0)
	return _in(0x76CF93D4B416B288, p0, _r, _ri)
end

function Global.N_0x76f7e1bcd623a429(p0)
	return _in(0x76F7E1BCD623A429, p0)
end

function Global.N_0x771dfcb24d19c2f6(p0)
	return _in(0x771DFCB24D19C2F6, p0, _r, _ri)
end

function Global.N_0x77243ed4f7caaa55(p0)
	return _in(0x77243ED4F7CAAA55, p0, _r, _ri)
end

function Global.N_0x772a1969f649e902(p0)
	return _in(0x772A1969F649E902, p0, _r, _ri)
end

function Global.N_0x77525bbf433f2cd6(p0)
	return _in(0x77525BBF433F2CD6, p0, _r, _ri)
end

function Global.N_0x775a1ca7893aa8b5(p0)
	return _in(0x775A1CA7893AA8B5, p0, _r, _ri)
end

function Global.N_0x775b2ed944e44973(p0, p1, p2, p3, p4, p5)
	return _in(0x775B2ED944E44973, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x7761a30432c91297(p0, p1, p2)
	return _in(0x7761A30432C91297, p0, p1, p2)
end

function Global.N_0x777d0571a466b520(p0)
	return _in(0x777D0571A466B520, p0)
end

function Global.N_0x778d4733e0f2f265(p0)
	return _in(0x778D4733E0F2F265, p0)
end

function Global.N_0x77a6e4ad0c496f81(p0)
	return _in(0x77A6E4AD0C496F81, p0, _r, _ri)
end

function Global.N_0x77b0b6d17a3ac9aa(p0, p1)
	return _in(0x77B0B6D17A3AC9AA, p0, p1)
end

function Global.N_0x77b299e8799b1332(p0, p1, p2)
	return _in(0x77B299E8799B1332, p0, p1, p2, _r, _ri)
end

function Global.N_0x77ba37622e22023b(p0, p1, p2, p3, p4)
	return _in(0x77BA37622E22023B, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x77d65669a05d1a1a()
	return _in(0x77D65669A05D1A1A)
end

function Global.N_0x77e83c315a3b31ca(p0)
	return _in(0x77E83C315A3B31CA, p0)
end

function Global.N_0x78030c7867d8b9b6(p0, p1)
	return _in(0x78030C7867D8B9B6, p0, p1)
end

function Global.N_0x7803436e68c32b26()
	return _in(0x7803436E68C32B26)
end

function Global.N_0x780c5b9ae2819807(p0, p1)
	return _in(0x780C5B9AE2819807, p0, p1, _r, _ri)
end

function Global.N_0x782c94db6469634d(p0)
	return _in(0x782C94DB6469634D, p0)
end

function Global.N_0x78335e12db0bf961(p0)
	return _in(0x78335E12DB0BF961, p0, _r, _ri)
end

function Global.N_0x7840576c50a13dba(p0, p1)
	return _in(0x7840576C50A13DBA, p0, p1)
end

function Global.N_0x785177e4d57d7389(p0, p1, p2, p3, p4)
	return _in(0x785177E4D57D7389, p0, p1, p2, p3, p4)
end

function Global.N_0x785639d89f8451ab(p0, p1)
	return _in(0x785639D89F8451AB, p0, p1, _r, _rv)
end

function Global.N_0x787e43477746876f(p0)
	return _in(0x787E43477746876F, p0)
end

function Global.N_0x78815fc52832b690(p0, p1)
	return _in(0x78815FC52832B690, p0, p1)
end

function Global.N_0x78857fc65cadb909(p0)
	return _in(0x78857FC65CADB909, p0)
end

function Global.N_0x789dabd18e9024db(p0, p1, p2)
	return _in(0x789DABD18E9024DB, p0, p1, p2)
end

function Global.N_0x78a9535af83715c6()
	return _in(0x78A9535AF83715C6, _r, _ri)
end

function Global.N_0x78b3d19af6391a55(p0, p1)
	return _in(0x78B3D19AF6391A55, p0, p1)
end

function Global.N_0x78b4567e18b54480(p0)
	return _in(0x78B4567E18B54480, p0)
end

function Global.N_0x78c2e029db205a3a(p0, p1)
	return _in(0x78C2E029DB205A3A, p0, p1)
end

function Global.N_0x78c56b8a7b1d000c()
	return _in(0x78C56B8A7B1D000C, _r, _ri)
end

function Global.N_0x78d8c1d4eb80c588(p0)
	return _in(0x78D8C1D4EB80C588, p0, _r, _ri)
end

function Global.N_0x7907969497ea92f5(p0)
	return _in(0x7907969497EA92F5, p0, _r, _ri)
end

function Global.N_0x790ec421078f5c4e(p0, p1, p2)
	return _in(0x790EC421078F5C4E, p0, p1, p2, _r, _ri)
end

function Global.N_0x79197f7d2bb5e73a(p0, p1, p2, p3, p4, p5)
	return _in(0x79197F7D2BB5E73A, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x792e3ef76c911959(p0)
	return _in(0x792E3EF76C911959, p0, _r, _ri)
end

function Global.N_0x7933754f260b428a(p0)
	return _in(0x7933754F260B428A, p0, _r, _ri)
end

function Global.N_0x79407d33328286c6(p0)
	return _in(0x79407D33328286C6, p0, _r, _ri)
end

function Global.N_0x79443d56c8df45ee(p0)
	return _in(0x79443D56C8DF45EE, p0, _r, _ri)
end

function Global.N_0x794ab1379a74064d(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x794AB1379A74064D, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0x79559bad83ccd038(p0, p1, p2, p3, p4, p5)
	return _in(0x79559BAD83CCD038, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x796085220adcc847()
	return _in(0x796085220ADCC847, _r, _ri)
end

function Global.N_0x796eecff0c6d39be(p0, p1, p2)
	return _in(0x796EECFF0C6D39BE, p0, p1, p2, _r, _ri)
end

function Global.N_0x797b3d4d92e56094(p0, p1)
	return _in(0x797B3D4D92E56094, p0, p1, _r, _ri)
end

function Global.N_0x7981037a96e7d174(p0)
	return _in(0x7981037A96E7D174, p0)
end

function Global.N_0x798be43c9393632b(p0)
	return _in(0x798BE43C9393632B, p0)
end

function Global.N_0x79b1a6e780266db0(p0)
	return _in(0x79B1A6E780266DB0, p0, _r, _ri)
end

function Global.N_0x79c2bec82cfd7f7f(p0)
	return _in(0x79C2BEC82CFD7F7F, p0, _r, _ri)
end

function Global.N_0x79e1e511ff7efb13(p0)
	return _in(0x79E1E511FF7EFB13, p0, _r, _ri)
end

function Global.N_0x79f478ff5f9f4f05(p0)
	return _in(0x79F478FF5F9F4F05, p0)
end

function Global.N_0x79f9c57b8d0dfe90(p0, p1)
	return _in(0x79F9C57B8D0DFE90, p0, p1, _r, _ri)
end

function Global.N_0x7a17b7981560ffa5(p0)
	return _in(0x7A17B7981560FFA5, p0)
end

function Global.N_0x7a1bd123e5cdb6e5()
	return _in(0x7A1BD123E5CDB6E5)
end

function Global.N_0x7a1fdcf35eaa140f(p0)
	return _in(0x7A1FDCF35EAA140F, p0)
end

function Global.N_0x7a35a72a692be9db(p0)
	return _in(0x7A35A72A692BE9DB, p0, _r, _ri)
end

function Global.N_0x7a49d40de437bc8d(p0, p1)
	return _in(0x7A49D40DE437BC8D, p0, p1)
end

function Global.N_0x7a4e00364b5d727b(p0)
	return _in(0x7A4E00364B5D727B, p0, _r, _ri)
end

function Global.N_0x7a54d82227a139db(p0, p1)
	return _in(0x7A54D82227A139DB, p0, p1)
end

function Global.N_0x7a56d66c78d8ef8e(p0, p1)
	return _in(0x7A56D66C78D8EF8E, p0, p1, _r, _ri)
end

function Global.N_0x7a76104cc2cc69e8(p0, p1, p2)
	return _in(0x7A76104CC2CC69E8, p0, p1, p2, _r, _ri)
end

function Global.N_0x7a8e8df782b47eb0(p0, p1, p2)
	return _in(0x7A8E8DF782B47EB0, p0, p1, p2, _r, _ri)
end

function Global.N_0x7aa043f6c41d151e(p0)
	return _in(0x7AA043F6C41D151E, p0, _r, _ri)
end

function Global.N_0x7abbd9e449e0db00(p0, p1)
	return _in(0x7ABBD9E449E0DB00, p0, p1)
end

function Global.N_0x7ac752103856fb20(p0)
	return _in(0x7AC752103856FB20, p0)
end

function Global.N_0x7ae93c45ec14a166(p0, p1)
	return _in(0x7AE93C45EC14A166, p0, p1, _r, _ri)
end

function Global.N_0x7af1bb4504ea5ed9()
	return _in(0x7AF1BB4504EA5ED9, _r, _ri)
end

function Global.N_0x7b0279170961a73f(p0)
	return _in(0x7B0279170961A73F, p0)
end

function Global.N_0x7b204f88f6c3d287(p0)
	return _in(0x7B204F88F6C3D287, p0)
end

function Global.N_0x7b3ff2d193628126(p0)
	return _in(0x7B3FF2D193628126, p0)
end

function Global.N_0x7b5c293238ee4f20(p0)
	return _in(0x7B5C293238EE4F20, p0, _r, _ri)
end

function Global.N_0x7b6a04f98bbafb2c(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0x7B6A04F98BBAFB2C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.N_0x7b8c2b846c05e5ad()
	return _in(0x7B8C2B846C05E5AD, _r, _ri)
end

function Global.N_0x7baa30c9bbe8aee7(p0, p1)
	return _in(0x7BAA30C9BBE8AEE7, p0, p1, _r, _ri)
end

function Global.N_0x7bb810e8b343ac7b(p0)
	return _in(0x7BB810E8B343AC7B, p0, _r, _ri)
end

function Global.N_0x7bca0a3972708436(p0, p1)
	return _in(0x7BCA0A3972708436, p0, p1, _r, _ri)
end

function Global.N_0x7bcc6087d130312a(p0)
	return _in(0x7BCC6087D130312A, p0, _r, _ri)
end

function Global.N_0x7be0746539def0c8(p0, p1)
	return _in(0x7BE0746539DEF0C8, p0, p1, _r, _ri)
end

function Global.N_0x7be607daff382fd2(p0, p1, p2)
	return _in(0x7BE607DAFF382FD2, p0, p1, p2, _r, _ri)
end

function Global.N_0x7c00cfc48a782dc0(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x7C00CFC48A782DC0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x7c015d8bcec72cf4(p0, p1)
	return _in(0x7C015D8BCEC72CF4, p0, p1)
end

function Global.N_0x7c06330bfdda182e(p0)
	return _in(0x7C06330BFDDA182E, p0)
end

function Global.N_0x7c08e7cb8d951b70(p0, p1)
	return _in(0x7C08E7CB8D951B70, p0, p1)
end

function Global.N_0x7c10221ce718aa72(p0, p1)
	return _in(0x7C10221CE718AA72, p0, p1)
end

function Global.N_0x7c1c2062cfad06fe(unlockHash, data)
	return _in(0x7C1C2062CFAD06FE, _ch(unlockHash), _ii(data) --[[ may be optional ]])
end

function Global.N_0x7c2abf6e556b21fc(p0, p1, p2, p3)
	return _in(0x7C2ABF6E556B21FC, p0, p1, p2, p3)
end

function Global.N_0x7c32191d9fb2bdea(p0)
	return _in(0x7C32191D9FB2BDEA, p0)
end

function Global.N_0x7c334ff4d9215912(p0)
	return _in(0x7C334FF4D9215912, p0, _r, _ri)
end

function Global.N_0x7c348310a6e2fb91(p0, p1)
	return _in(0x7C348310A6E2FB91, p0, p1)
end

function Global.N_0x7c511e91738a0828(p0, p1, p2, p3)
	return _in(0x7C511E91738A0828, p0, p1, p2, p3)
end

function Global.N_0x7c680ff55617f82f()
	return _in(0x7C680FF55617F82F, _r, _ri)
end

function Global.N_0x7c709c01d43d94cd()
	return _in(0x7C709C01D43D94CD)
end

function Global.N_0x7c7e4ab748ea3b07()
	return _in(0x7C7E4AB748EA3B07, _r, _ri)
end

function Global.N_0x7c803bdc8343228d(p0)
	return _in(0x7C803BDC8343228D, p0, _r, _ri)
end

function Global.N_0x7c8aa850617651d9(p0, p1)
	return _in(0x7C8AA850617651D9, p0, p1, _r, _ri)
end

function Global.N_0x7c907e8a725e5fd2(p0)
	return _in(0x7C907E8A725E5FD2, p0)
end

function Global.N_0x7c981de05a7403a0()
	return _in(0x7C981DE05A7403A0, _r)
end

function Global.N_0x7c9e45a4ced2e8da(p0, p1)
	return _in(0x7C9E45A4CED2E8DA, p0, p1)
end

function Global.N_0x7cc2186c32d3540a(p0, p1)
	return _in(0x7CC2186C32D3540A, p0, p1, _r, _ri)
end

function Global.N_0x7ce9dc58e3e4755f()
	return _in(0x7CE9DC58E3E4755F, _r, _ri)
end

function Global.N_0x7cef4ac79f7e7fad(p0, p1, p2, p3, p4)
	return _in(0x7CEF4AC79F7E7FAD, p0, p1, p2, p3, p4)
end

function Global.N_0x7cf96f1250ef3221(p0)
	return _in(0x7CF96F1250EF3221, p0, _r, _ri)
end

function Global.N_0x7d0f2014db28dd01(p0, p1, p2)
	return _in(0x7D0F2014DB28DD01, p0, p1, p2, _r, _ri)
end

function Global.N_0x7d4411d6736cd295(p0, p1)
	return _in(0x7D4411D6736CD295, p0, p1, _r, _ri)
end

function Global.N_0x7d4e70a67a651c71(p0)
	return _in(0x7D4E70A67A651C71, p0)
end

function Global.N_0x7d654266025e921b(p0)
	return _in(0x7D654266025E921B, p0)
end

function Global.N_0x7d7285efeab5af15(p0, p1)
	return _in(0x7D7285EFEAB5AF15, p0, p1)
end

function Global.N_0x7dd7fb3480d8083e(p0)
	return _in(0x7DD7FB3480D8083E, p0)
end

function Global.N_0x7dddcf815e650ff5(p0)
	return _in(0x7DDDCF815E650FF5, p0, _r, _ri)
end

function Global.N_0x7de4643157ad646c(p0)
	return _in(0x7DE4643157AD646C, p0)
end

function Global.N_0x7de9692c6f64cfe8(p0, p1, p2, p3)
	return _in(0x7DE9692C6F64CFE8, p0, p1, p2, p3)
end

function Global.N_0x7dfb49bcdb73089a(p0, p1)
	return _in(0x7DFB49BCDB73089A, p0, p1)
end

function Global.N_0x7dff8f94937d2659()
	return _in(0x7DFF8F94937D2659)
end

function Global.N_0x7e002a36aefcfb55()
	return _in(0x7E002A36AEFCFB55)
end

function Global.N_0x7e02e4218d916b94(p0, p1, p2)
	return _in(0x7E02E4218D916B94, p0, p1, p2, _r, _ri)
end

function Global.N_0x7e176c676f8652a9(p0)
	return _in(0x7E176C676F8652A9, p0)
end

function Global.N_0x7e2c766adb2c5f1a(p0, p1)
	return _in(0x7E2C766ADB2C5F1A, p0, p1)
end

function Global.N_0x7e300b5b86ab1d1a(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0x7E300B5B86AB1D1A, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.N_0x7e3f546acfe6c8d9(entity)
	return _in(0x7E3F546ACFE6C8D9, entity)
end

function Global.N_0x7e40a01b11398fcb()
	return _in(0x7E40A01B11398FCB)
end

function Global.N_0x7e5185b979706210(p0, p1)
	return _in(0x7E5185B979706210, p0, p1)
end

function Global.N_0x7e6bc0b94f5928f0(popZone, p1, p2)
	return _in(0x7E6BC0B94F5928F0, popZone, p1, p2)
end

function Global.N_0x7e7b19a4355fee13(p0, p1)
	return _in(0x7E7B19A4355FEE13, p0, p1, _r, _ri)
end

function Global.N_0x7e8f86a4fa33033c()
	return _in(0x7E8F86A4FA33033C, _r, _ri)
end

function Global.N_0x7e8f9949b7aabbf0(p0, p1, p2)
	return _in(0x7E8F9949B7AABBF0, p0, p1, p2)
end

function Global.N_0x7ec0d68233e391ac(p0)
	return _in(0x7EC0D68233E391AC, p0, _r, _ri)
end

function Global.N_0x7ee3a8660f38797e(p0)
	return _in(0x7EE3A8660F38797E, p0, _r, _ri)
end

function Global.N_0x7ef2a2fe38d74456(p0, p1)
	return _in(0x7EF2A2FE38D74456, p0, p1)
end

function Global.N_0x7efacc589b98c488(p0)
	return _in(0x7EFACC589B98C488, p0, _r, _ri)
end

function Global.N_0x7f090958ae95b61b(p0, p1)
	return _in(0x7F090958AE95B61B, p0, p1, _r, _ri)
end

function Global.N_0x7f20092547b4ddea(p0)
	return _in(0x7F20092547B4DDEA, p0)
end

function Global.N_0x7f458b543006c8fe(p0, p1)
	return _in(0x7F458B543006C8FE, p0, p1)
end

function Global.N_0x7f4ce164d9a11dfe()
	return _in(0x7F4CE164D9A11DFE, _r, _ri)
end

function Global.N_0x7f5d88333ee8a86f(p0, p1)
	return _in(0x7F5D88333EE8A86F, p0, p1)
end

function Global.N_0x7f78cd75cc4539e4(p0)
	return _in(0x7F78CD75CC4539E4, p0)
end

function Global.N_0x7f89e15a8fb8de97()
	return _in(0x7F89E15A8FB8DE97)
end

function Global.N_0x7f8e2b131e1dca6c(p0, p1)
	return _in(0x7F8E2B131E1DCA6C, p0, p1)
end

function Global.N_0x7f9b9791d4cb71f6(p0, p1, p2, p3)
	return _in(0x7F9B9791D4CB71F6, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x7fa58ced69405f9a(p0, p1)
	return _in(0x7FA58CED69405F9A, p0, p1)
end

function Global.N_0x7fb0088e8769cddb(p0, p1)
	return _in(0x7FB0088E8769CDDB, p0, p1)
end

function Global.N_0x7fb78b2199c10e92(p0)
	return _in(0x7FB78B2199C10E92, p0)
end

function Global.N_0x7fc60c94c83c5cd7(p0, p1, p2)
	return _in(0x7FC60C94C83C5CD7, p0, p1, p2)
end

function Global.N_0x7fc667f6ddfbcdcc(p0)
	return _in(0x7FC667F6DDFBCDCC, p0, _r, _ri)
end

function Global.N_0x7fc84e85d98f063d(p0)
	return _in(0x7FC84E85D98F063D, p0, _r, _ri)
end

function Global.N_0x7fcd49388bc9b775(p0, p1)
	return _in(0x7FCD49388BC9B775, p0, p1)
end

function Global.N_0x7fd78dfd0c5d7b9b(p0)
	return _in(0x7FD78DFD0C5D7B9B, p0, _r, _ri)
end

function Global.N_0x7fee4f07c54b6b3c(p0, p1)
	return _in(0x7FEE4F07C54B6B3C, p0, p1, _r, _ri)
end

function Global.N_0x7ff72de061df55e2(p0, p1, p2)
	return _in(0x7FF72DE061DF55E2, p0, p1, p2)
end

function Global.N_0x800df3fc913355f3(p0)
	return _in(0x800DF3FC913355F3, p0, _r, _ri)
end

function Global.N_0x801917e7d7bce418(p0)
	return _in(0x801917E7D7BCE418, p0)
end

function Global.N_0x801bd27403f3cba0(p0, p1, p2, p3)
	return _in(0x801BD27403F3CBA0, p0, p1, p2, p3)
end

function Global.N_0x802092b07e3b1eea(p0, p1, p2, p3, p4)
	return _in(0x802092B07E3B1EEA, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x804425c4bbd00883(p0)
	return _in(0x804425C4BBD00883, p0, _r, _ri)
end

function Global.N_0x8049b17bec937662(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x8049B17BEC937662, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x806862e5d266cf38(p0, p1, p2)
	return _in(0x806862E5D266CF38, p0, p1, p2, _r, _ri)
end

function Global.N_0x807e119f80231732(p0)
	return _in(0x807E119F80231732, p0)
end

function Global.N_0x808077647856de62(p0, p1)
	return _in(0x808077647856DE62, p0, p1, _r, _ri)
end

function Global.N_0x80a02d9f948a8bca(p0, p1)
	return _in(0x80A02D9F948A8BCA, p0, p1, _r, _ri)
end

function Global.N_0x80b3e0597366adf1()
	return _in(0x80B3E0597366ADF1)
end

function Global.N_0x80bb243789008a82(p0, p1)
	return _in(0x80BB243789008A82, p0, p1, _r, _ri)
end

function Global.N_0x80d78bdc9d88ef07(p0, p1, p2, p3)
	return _in(0x80D78BDC9D88EF07, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x80d7a3e39b120bc4()
	return _in(0x80D7A3E39B120BC4, _r, _ri)
end

function Global.N_0x80ddccb2f4a3eb57(ped, vehicle, p2, p3, p4)
	return _in(0x80DDCCB2F4A3EB57, ped, vehicle, p2, p3, p4, _r)
end

function Global.N_0x80e9c316ef84dd81(p0)
	return _in(0x80E9C316EF84DD81, p0, _r, _ri)
end

function Global.N_0x80fdeb3a9e9aa578(p0, p1)
	return _in(0x80FDEB3A9E9AA578, p0, p1)
end

function Global.N_0x8101ba1c0b462412(p0, p1)
	return _in(0x8101BA1C0B462412, p0, p1)
end

function Global.N_0x810e8ae9afea7e54(p0)
	return _in(0x810E8AE9AFEA7E54, p0, _r, _ri)
end

function Global.N_0x811a748b1be231ba(p0)
	return _in(0x811A748B1BE231BA, p0, _r, _ri)
end

function Global.N_0x8127c5aa05c5a210(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x8127C5AA05C5A210, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x812c1563185c6fb2()
	return _in(0x812C1563185C6FB2)
end

function Global.N_0x812ce61debcab948(p0, p1, p2)
	return _in(0x812CE61DEBCAB948, p0, p1, p2)
end

function Global.N_0x814729078aed6d30()
	return _in(0x814729078AED6D30)
end

function Global.N_0x814d453fcfdf119f(p0, p1, p2)
	return _in(0x814D453FCFDF119F, p0, p1, p2)
end

function Global.N_0x815653a42c5abe76()
	return _in(0x815653A42C5ABE76)
end

function Global.N_0x815c0074a1bc0d93(p0, p1)
	return _in(0x815C0074A1BC0D93, p0, p1)
end

function Global.N_0x815c4065ae6e6071(p0, p1, p2)
	return _in(0x815C4065AE6E6071, p0, p1, p2, _r, _ri)
end

function Global.N_0x816a3acd265e2297(p0, p1)
	return _in(0x816A3ACD265E2297, p0, p1)
end

function Global.N_0x81801291806dbc50(p0)
	return _in(0x81801291806DBC50, p0, _r, _ri)
end

function Global.N_0x818241b3eda84191(p0, p1)
	return _in(0x818241B3EDA84191, p0, p1)
end

function Global.N_0x81847c2134039bdc(p0)
	return _in(0x81847C2134039BDC, p0, _r, _ri)
end

function Global.N_0x818c6ca9b659e8ec(p0)
	return _in(0x818C6CA9B659E8EC, p0)
end

function Global.N_0x81948dfe4f5a0283(p0)
	return _in(0x81948DFE4F5A0283, p0)
end

function Global.N_0x819add5ef1742f47(p0, p1)
	return _in(0x819ADD5EF1742F47, p0, p1)
end

function Global.N_0x81b75428a7813e67(p0, p1)
	return _in(0x81B75428A7813E67, p0, p1)
end

function Global.N_0x81d7183e7a8eca72(p0)
	return _in(0x81D7183E7A8ECA72, p0, _r, _ri)
end

function Global.N_0x81dcfd13cf39920e()
	return _in(0x81DCFD13CF39920E, _r, _ri)
end

function Global.N_0x81f4e92be3958364(p0, p1, p2)
	return _in(0x81F4E92BE3958364, p0, p1, p2)
end

function Global.N_0x81fb74c83c2ed69f(p0)
	return _in(0x81FB74C83C2ED69F, p0, _r, _ri)
end

function Global.N_0x821c32c728b24477(p0, p1, p2)
	return _in(0x821C32C728B24477, p0, p1, p2)
end

function Global.N_0x822a001bcea5bd81(p0, p1, p2, p3)
	return _in(0x822A001BCEA5BD81, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x8232f37df762acb2(p0)
	return _in(0x8232F37DF762ACB2, p0)
end

function Global.N_0x8245c1f3262f4ac2(p0)
	return _in(0x8245C1F3262F4AC2, p0)
end

function Global.N_0x825f6dd559a0895b(p0)
	return _in(0x825F6DD559A0895B, p0, _r, _ri)
end

function Global.N_0x8268b098f6fca4e2(p0, p1)
	return _in(0x8268B098F6FCA4E2, p0, p1)
end

function Global.N_0x827a58ced9d4d5b4(p0, p1)
	return _in(0x827A58CED9D4D5B4, p0, p1)
end

--- BG_*
-- @param p0 :
function Global.N_0x829cd22e043a2577(p0)
	return _in(0x829CD22E043A2577, _ch(p0), _r, _ri)
end

function Global.N_0x82cb0f3f0c7785e5(p0)
	return _in(0x82CB0F3F0C7785E5, p0, _r, _ri)
end

function Global.N_0x82e41d6ade924fca(p0)
	return _in(0x82E41D6ADE924FCA, p0)
end

function Global.N_0x82ed59f095056550(p0, p1)
	return _in(0x82ED59F095056550, p0, p1)
end

function Global.N_0x82f11e1296996574(p0)
	return _in(0x82F11E1296996574, p0)
end

function Global.N_0x82fa24c3d3fcd9b7(p0, p1, p2)
	return _in(0x82FA24C3D3FCD9B7, p0, p1, p2, _r, _ri)
end

function Global.N_0x8301d87b1b89e219(p0, p1)
	return _in(0x8301D87B1B89E219, p0, p1)
end

function Global.N_0x8312f09c56149a8a(p0)
	return _in(0x8312F09C56149A8A, p0)
end

function Global.N_0x8314fc2013ece2da(p0, p1, p2)
	return _in(0x8314FC2013ECE2DA, p0, p1, p2, _r, _ri)
end

function Global.N_0x831bf01c56149a8a(p0)
	return _in(0x831BF01C56149A8A, p0)
end

function Global.N_0x833d8268d51b4522(p0)
	return _in(0x833D8268D51B4522, p0, _r, _ri)
end

function Global.N_0x833f0053340ef413(p0)
	return _in(0x833F0053340EF413, p0, _r, _ri)
end

function Global.N_0x835f131e7dc8f97a(p0, p1, p2)
	return _in(0x835F131E7DC8F97A, p0, p1, p2, _r, _ri)
end

function Global.N_0x8360c47380b6f351(p0, p1, p2, p3)
	return _in(0x8360C47380B6F351, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x8370d34bd2e60b73()
	return _in(0x8370D34BD2E60B73)
end

function Global.N_0x8379e05871ad24e0()
	return _in(0x8379E05871AD24E0)
end

function Global.N_0x838c216c2b05a009(p0, p1)
	return _in(0x838C216C2B05A009, p0, p1)
end

function Global.N_0x8398438d8f14f56d(p0, p1, p2, p3, p4, p5)
	return _in(0x8398438D8F14F56D, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x839c9f124be74d94(p0, p1, p2, p3, p4)
	return _in(0x839C9F124BE74D94, p0, p1, p2, p3, p4)
end

function Global.N_0x83acc65d9acec5ef(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x83ACC65D9ACEC5EF, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _rv)
end

function Global.N_0x83b8d50eb9446bba(p0, p1)
	return _in(0x83B8D50EB9446BBA, p0, p1)
end

function Global.N_0x83c989d5b5b5b466(p0, p1)
	return _in(0x83C989D5B5B5B466, p0, p1)
end

function Global.N_0x83d43f0fd5276e4d(p0, p1)
	return _in(0x83D43F0FD5276E4D, p0, p1, _r, _ri)
end

function Global.N_0x83f28ce49fbbffba(p0)
	return _in(0x83F28CE49FBBFFBA, p0, _r)
end

function Global.N_0x83fcd6921fc8fd05(p0, p1)
	return _in(0x83FCD6921FC8FD05, p0, p1)
end

function Global.N_0x83fe8d7229593017()
	return _in(0x83FE8D7229593017)
end

function Global.N_0x841475ac96e794d1(p0)
	return _in(0x841475AC96E794D1, p0, _r, _ri)
end

function Global.N_0x8425c5f057012dab(p0)
	return _in(0x8425C5F057012DAB, p0, _r, _ri)
end

function Global.N_0x842ccc9491ffcd9b(p0)
	return _in(0x842CCC9491FFCD9B, p0, _r, _ri)
end

function Global.N_0x8433e1954be323fc(p0)
	return _in(0x8433E1954BE323FC, p0, _r, _ri)
end

function Global.N_0x84481018e668e1b8(p0, p1, p2)
	return _in(0x84481018E668E1B8, p0, p1, p2)
end

function Global.N_0x844ceee428ea35b0(p0, p1)
	return _in(0x844CEEE428EA35B0, p0, p1, _r, _ri)
end

function Global.N_0x8451e87d3c2b0286(p0, p1, p2)
	return _in(0x8451E87D3C2B0286, p0, p1, p2)
end

function Global.N_0x8459b3e64257b21d(p0)
	return _in(0x8459B3E64257B21D, p0)
end

function Global.N_0x8462be2341a55b6f(p0)
	return _in(0x8462BE2341A55B6F, p0)
end

function Global.N_0x8472a1789478f82f(p0)
	return _in(0x8472A1789478F82F, p0)
end

function Global.N_0x847748ae5d7b1071(p0)
	return _in(0x847748AE5D7B1071, p0, _r, _ri)
end

function Global.N_0x84848e1c0fc67dbb(p0)
	return _in(0x84848E1C0FC67DBB, p0, _r, _ri)
end

function Global.N_0x849791ebbdba0362(p0)
	return _in(0x849791EBBDBA0362, p0, _r, _ri)
end

function Global.N_0x849bd6c6314793d0(p0)
	return _in(0x849BD6C6314793D0, p0, _r, _ri)
end

function Global.N_0x84bd27ddf9575816(p0, p1)
	return _in(0x84BD27DDF9575816, p0, p1)
end

function Global.N_0x84ccf9a12942c83d(p0, p1, p2, p3, p4, p5)
	return _in(0x84CCF9A12942C83D, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x84d0bf2b21862059(p0)
	return _in(0x84D0BF2B21862059, p0, _r, _ri)
end

function Global.N_0x84eedb2c6e650000(p0)
	return _in(0x84EEDB2C6E650000, p0)
end

function Global.N_0x84f0ba7462ff8d58(p1, p2, p3)
	return _in(0x84F0BA7462FF8D58, _i, p1, p2, p3, _r)
end

function Global.N_0x8505e05fc8822843(p0)
	return _in(0x8505E05FC8822843, p0)
end

function Global.N_0x850c940ee3e7b8b5(entity, toggle)
	return _in(0x850C940EE3E7B8B5, entity, toggle)
end

function Global.N_0x850ce59dec2028f3(p0, p1)
	return _in(0x850CE59DEC2028F3, p0, p1)
end

function Global.N_0x851966e1e35af491(p0, p1)
	return _in(0x851966E1E35AF491, p0, p1)
end

function Global.N_0x8521c2e235558278(p0)
	return _in(0x8521C2E235558278, p0, _r, _ri)
end

function Global.N_0x853b0fa4d8732c57(p0)
	return _in(0x853B0FA4D8732C57, p0, _r, _ri)
end

function Global.N_0x854bc9b1a1ccd034(p0, p1)
	return _in(0x854BC9B1A1CCD034, p0, p1, _r, _ri)
end

function Global.N_0x8569c38d2fb80650(p0, p1)
	return _in(0x8569C38D2FB80650, p0, p1, _r, _ri)
end

function Global.N_0x856ce8fde2416602(p0)
	return _in(0x856CE8FDE2416602, p0, _r, _ri)
end

function Global.N_0x857acb0ab4bd0d55(p0)
	return _in(0x857ACB0AB4BD0D55, p0, _r, _ri)
end

function Global.N_0x8591ee69cc3ed257(p0, p1)
	return _in(0x8591EE69CC3ED257, p0, p1)
end

function Global.N_0x8593a8cb0ed2c3b4(p0)
	return _in(0x8593A8CB0ED2C3B4, p0, _r, _ri)
end

function Global.N_0x85b8f04555ab49b8(p0)
	return _in(0x85B8F04555AB49B8, p0, _r, _ri)
end

function Global.N_0x85d39f5e3b6d7eb0(p0, p1, p2)
	return _in(0x85D39F5E3B6D7EB0, p0, p1, p2, _r, _ri)
end

function Global.N_0x85e4d7b225a30ed1(p0, p1)
	return _in(0x85E4D7B225A30ED1, p0, p1, _r, _ri)
end

function Global.N_0x85ea0bec7b1f7622()
	return _in(0x85EA0BEC7B1F7622, _r, _ri)
end

function Global.N_0x85f500f4e24ca43e(p0, p1)
	return _in(0x85F500F4E24CA43E, p0, p1)
end

function Global.N_0x860ddfe97cc94df0(p0, p1, p2)
	return _in(0x860DDFE97CC94DF0, p0, p1, p2, _r, _ri)
end

function Global.N_0x862c5040f4888741(p0, p1)
	return _in(0x862C5040F4888741, p0, p1, _r, _ri)
end

function Global.N_0x864a842b86993851(p0)
	return _in(0x864A842B86993851, p0)
end

function Global.N_0x865732725536ee39(p0)
	return _in(0x865732725536EE39, p0, _r, _rv)
end

function Global.N_0x865f36299079fb75(p0)
	return _in(0x865F36299079FB75, p0, _r, _ri)
end

function Global.N_0x865fec2fa899f29c(p0)
	return _in(0x865FEC2FA899F29C, p0, _r, _ri)
end

function Global.N_0x8674d138391ffb1b(p0, p1)
	return _in(0x8674D138391FFB1B, p0, p1)
end

function Global.N_0x869a7015bd4606e9(p0)
	return _in(0x869A7015BD4606E9, p0)
end

function Global.N_0x86a68e84e5884951(p0)
	return _in(0x86A68E84E5884951, p0)
end

function Global.N_0x86afc343cf7f0b34(p0, p1, p2, p3, p4)
	return _in(0x86AFC343CF7F0B34, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x86bb5ff45f193a02(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x86BB5FF45F193A02, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x86f0b6730c32ac14(p0, p1)
	return _in(0x86F0B6730C32AC14, p0, p1)
end

function Global.N_0x86fa6d8b48667d75(p0)
	return _in(0x86FA6D8B48667D75, p0, _r, _ri)
end

function Global.N_0x86fafc18e3d4380c(p0, p1)
	return _in(0x86FAFC18E3D4380C, p0, p1)
end

function Global.N_0x86fd10251a7118a4(p0, p1)
	return _in(0x86FD10251A7118A4, p0, p1, _r, _ri)
end

function Global.N_0x8702d9150d9fbb3d(p0, p1)
	return _in(0x8702D9150D9FBB3D, p0, p1, _r, _ri)
end

function Global.N_0x870634493cb4372c(p0, p1)
	return _in(0x870634493CB4372C, p0, p1)
end

function Global.N_0x870708a6e147a9ad(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x870708A6E147A9AD, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.N_0x870e9981ed27c815(p0, p1, p2, p3, p4, p5)
	return _in(0x870E9981ED27C815, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x87247bc60b60bed8(p0)
	return _in(0x87247BC60B60BED8, p0)
end

function Global.N_0x87344305778e5415(p0, p1)
	return _in(0x87344305778E5415, p0, p1)
end

function Global.N_0x873aaf600cc36dac(p0)
	return _in(0x873AAF600CC36DAC, p0)
end

function Global.N_0x873c792e07a32c8b(p0, p1)
	return _in(0x873C792E07A32C8B, p0, p1)
end

function Global.N_0x8750f69a720c2e41(p0, p1, p2)
	return _in(0x8750F69A720C2E41, p0, p1, p2, _r, _ri)
end

function Global.N_0x877ea24eb1614495(p0, p1, p2)
	return _in(0x877EA24EB1614495, p0, p1, p2, _r, _ri)
end

function Global.N_0x8785e6e40c7a8819(p0)
	return _in(0x8785E6E40C7A8819, p0, _r, _ri)
end

function Global.N_0x878b68960c1c2a35(p0, p1)
	return _in(0x878B68960C1C2A35, p0, p1, _r, _ri)
end

function Global.N_0x878e8104fa27cdae(p0, p1)
	return _in(0x878E8104FA27CDAE, p0, p1)
end

function Global.N_0x8798cf6815b8fe0f(p0, p1)
	return _in(0x8798CF6815B8FE0F, p0, p1)
end

function Global.N_0x87b66d77d545db66(p0, p1, p2, p3)
	return _in(0x87B66D77D545DB66, p0, p1, p2, p3)
end

function Global.N_0x87b974e54c71ba7b(p0, p1)
	return _in(0x87B974E54C71BA7B, p0, p1)
end

function Global.N_0x87c2724a56f66020(p0)
	return _in(0x87C2724A56F66020, p0)
end

function Global.N_0x87e6302fc61208cc(p0)
	return _in(0x87E6302FC61208CC, p0)
end

function Global.N_0x87f005c969ef1563()
	return _in(0x87F005C969EF1563, _r, _ri)
end

function Global.N_0x8800776e410eb669(p0)
	return _in(0x8800776E410EB669, p0, _r, _ri)
end

function Global.N_0x8822f124788b8d0a(p0, p1)
	return _in(0x8822F124788B8D0A, p0, p1)
end

function Global.N_0x8822f139408b8d0a(p0)
	return _in(0x8822F139408B8D0A, p0, _r, _ri)
end

function Global.N_0x88544c0e3291dcae(p0)
	return _in(0x88544C0E3291DCAE, p0)
end

function Global.N_0x885d19ac2b6fbff4(p0, p1)
	return _in(0x885D19AC2B6FBFF4, p0, p1)
end

function Global.N_0x886171a12f400b89(p0, p1, p2)
	return _in(0x886171A12F400B89, p0, p1, p2, _r, _ri)
end

function Global.N_0x886dfd3e185c8a89(p0, p1, p2, p3, p4)
	return _in(0x886DFD3E185C8A89, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x8878ff3eee2868a9(p0, p1)
	return _in(0x8878FF3EEE2868A9, p0, p1)
end

function Global.N_0x8886d83a430537fd(p0, p1)
	return _in(0x8886D83A430537FD, p0, p1)
end

function Global.N_0x88a5564b19c15391(p0)
	return _in(0x88A5564B19C15391, p0, _r, _ri)
end

function Global.N_0x88a95bb640fc186f(p0)
	return _in(0x88A95BB640FC186F, p0)
end

function Global.N_0x88ad6cc10d8d35b2(p0)
	return _in(0x88AD6CC10D8D35B2, p0, _r, _ri)
end

function Global.N_0x88b2026a3b0be33d(p0, p1)
	return _in(0x88B2026A3B0BE33D, p0, p1)
end

function Global.N_0x88b58b83a43a8cab(p0, p1, p2)
	return _in(0x88B58B83A43A8CAB, p0, p1, p2, _r, _ri)
end

function Global.N_0x88bc5f4aef77fc4e(p0, p1)
	return _in(0x88BC5F4AEF77FC4E, p0, p1)
end

function Global.N_0x88d9d76d78065487(p0)
	return _in(0x88D9D76D78065487, p0, _r, _ri)
end

function Global.N_0x88e32db8c1a4aa4b(ped, p1)
	return _in(0x88E32DB8C1A4AA4B, ped, p1)
end

function Global.N_0x88effed5fe8b0b4a(p0)
	return _in(0x88EFFED5FE8B0B4A, p0, _r, _ri)
end

function Global.N_0x88fd60d846d9cd63(p0)
	return _in(0x88FD60D846D9CD63, p0)
end

function Global.N_0x8910c24b7e0046ec()
	return _in(0x8910C24B7E0046EC)
end

function Global.N_0x893128cdb4b81fbb(p0, p1, p2)
	return _in(0x893128CDB4B81FBB, p0, p1, p2, _r, _ri)
end

function Global.N_0x89314fb3463e28de(p0)
	return _in(0x89314FB3463E28DE, p0)
end

function Global.N_0x894b5ecab45d2342(p0, p1)
	return _in(0x894B5ECAB45D2342, p0, p1)
end

function Global.N_0x8952e857696b8a79(p0)
	return _in(0x8952E857696B8A79, p0)
end

function Global.N_0x89783fddf079c88d(p0)
	return _in(0x89783FDDF079C88D, p0)
end

function Global.N_0x897934e868eddd6c(p0, p1, p2, p3, p4)
	return _in(0x897934E868EDDD6C, p0, p1, p2, p3, p4)
end

function Global.N_0x89816b58c3466262(p0)
	return _in(0x89816B58C3466262, p0, _r, _ri)
end

function Global.N_0x898586729db5221d(p0)
	return _in(0x898586729DB5221D, p0)
end

function Global.N_0x8996fa6ad9fe4e90(p0)
	return _in(0x8996FA6AD9FE4E90, p0)
end

function Global.N_0x899a04afcc725d04(p0, p1)
	return _in(0x899A04AFCC725D04, p0, p1)
end

function Global.N_0x899c97a1cce7d483(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x899C97A1CCE7D483, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0x899dfa0009ac93de(p0, p1)
	return _in(0x899DFA0009AC93DE, p0, p1)
end

function Global.N_0x89bfdf6d53145545(p0)
	return _in(0x89BFDF6D53145545, p0, _r, _ri)
end

function Global.N_0x89cf5ff3d363311e(p0)
	return _in(0x89CF5FF3D363311E, p0, _r, _ri)
end

function Global.N_0x89d803cd48622150(p0)
	return _in(0x89D803CD48622150, p0)
end

function Global.N_0x89d9bde7334b110f()
	return _in(0x89D9BDE7334B110F, _r, _ri)
end

function Global.N_0x89e005b1662f6e48(p0, p1, p2)
	return _in(0x89E005B1662F6E48, p0, p1, p2, _r, _ri)
end

function Global.N_0x89e59dbd15e21177(p0, p1)
	return _in(0x89E59DBD15E21177, p0, p1)
end

function Global.N_0x89ec2fc89ecb1005()
	return _in(0x89EC2FC89ECB1005, _r, _ri)
end

function Global.N_0x89f5e7adecccb49c(p0, p1)
	return _in(0x89F5E7ADECCCB49C, p0, p1)
end

function Global.N_0x8a0643b0b4ca276b(p0, p1)
	return _in(0x8A0643B0B4CA276B, p0, p1, _r, _ri)
end

function Global.N_0x8a3945405b31048f()
	return _in(0x8A3945405B31048F, _r, _ri)
end

function Global.N_0x8a59d44189af2bc5(p0, p1)
	return _in(0x8A59D44189AF2BC5, p0, p1)
end

function Global.N_0x8a67120dbc299525()
	return _in(0x8A67120DBC299525, _r, _ri)
end

function Global.N_0x8a779706da5ca3dd(p0, p1, p2)
	return _in(0x8A779706DA5CA3DD, p0, p1, p2)
end

function Global.N_0x8a8208ae92bf87a5(p0)
	return _in(0x8A8208AE92BF87A5, p0)
end

function Global.N_0x8ac1d721b2097b6e(p0, p1, p2)
	return _in(0x8AC1D721B2097B6E, p0, p1, p2)
end

function Global.N_0x8acc0506743a8a5c(p0, p1, p2, p3)
	return _in(0x8ACC0506743A8A5C, p0, p1, p2, p3)
end

function Global.N_0x8ae059f47158417e(p0, p1, p2, p3)
	return _in(0x8AE059F47158417E, p0, p1, p2, p3)
end

function Global.N_0x8ae4efa464dae42d(p0, p1)
	return _in(0x8AE4EFA464DAE42D, p0, p1)
end

function Global.N_0x8af46e5159a5b620(p0, p1)
	return _in(0x8AF46E5159A5B620, p0, p1)
end

function Global.N_0x8af8e647d6b2a649(p0, p1)
	return _in(0x8AF8E647D6B2A649, p0, p1, _r, _ri)
end

function Global.N_0x8afccc0f18d70018(p0, p1)
	return _in(0x8AFCCC0F18D70018, p0, p1)
end

function Global.N_0x8b1e8e35a6e814ea(p0, p1, p2)
	return _in(0x8B1E8E35A6E814EA, p0, p1, p2)
end

function Global.N_0x8b1fdf63c3193eda(p0, p1)
	return _in(0x8B1FDF63C3193EDA, p0, p1)
end

function Global.N_0x8b25a18e390f75bf(p0)
	return _in(0x8B25A18E390F75BF, p0, _r, _ri)
end

function Global.N_0x8b3296278328b5eb(p0)
	return _in(0x8B3296278328B5EB, p0)
end

function Global.N_0x8b3b71c80a29a4bb(p0, p1, p2)
	return _in(0x8B3B71C80A29A4BB, p0, p1, p2)
end

function Global.N_0x8b3cb08158e98481(p0, p1)
	return _in(0x8B3CB08158E98481, p0, p1)
end

function Global.N_0x8b44273a92cd406c(p0)
	return _in(0x8B44273A92CD406C, p0)
end

function Global.N_0x8b61c950a148ffa2(p0, p1, p2, p3)
	return _in(0x8B61C950A148FFA2, p0, p1, p2, p3)
end

function Global.N_0x8b6f0f59b1b99801(p0, p1)
	return _in(0x8B6F0F59B1B99801, p0, p1)
end

function Global.N_0x8b74032ddd2156fe(p0, p1, p2, p3, p4)
	return _in(0x8B74032DDD2156FE, p0, p1, p2, p3, p4)
end

function Global.N_0x8ba0c65ac15a7d33(p0, p1, p2, p3)
	return _in(0x8BA0C65AC15A7D33, p0, p1, p2, p3)
end

function Global.N_0x8ba3d7b1e83ef803(p0)
	return _in(0x8BA3D7B1E83EF803, p0, _r, _ri)
end

function Global.N_0x8ba83cc4288cd56d(p0, p1)
	return _in(0x8BA83CC4288CD56D, p0, p1)
end

function Global.N_0x8bb283a7888ad1ad(p0, p1, p2)
	return _in(0x8BB283A7888AD1AD, p0, p1, p2)
end

function Global.N_0x8bb99b85444544d9(p0, p1)
	return _in(0x8BB99B85444544D9, p0, p1, _r, _ri)
end

function Global.N_0x8bc555034a5a5e8c(p0, p1)
	return _in(0x8BC555034A5A5E8C, p0, p1)
end

function Global.N_0x8bc7c1f929d07bf3(p0)
	return _in(0x8BC7C1F929D07BF3, p0)
end

function Global.N_0x8be24d74d74c6e9b(p0)
	return _in(0x8BE24D74D74C6E9B, p0, _r, _ri)
end

function Global.N_0x8bf907833be275de(p0, p1)
	return _in(0x8BF907833BE275DE, p0, p1)
end

function Global.N_0x8c03cd6b5e0e85e8(p0, p1)
	return _in(0x8C03CD6B5E0E85E8, p0, p1, _r, _ri)
end

function Global.N_0x8c0f6a3d7236deeb(p0, p1)
	return _in(0x8C0F6A3D7236DEEB, p0, p1)
end

function Global.N_0x8c109958c9bb559d(p0, p1, p2, p3, p4, p5)
	return _in(0x8C109958C9BB559D, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0x8c598a930f471938(name, p1)
	return _in(0x8C598A930F471938, _ts(name), p1)
end

function Global.N_0x8c6d9a399126c194(p0, p1)
	return _in(0x8C6D9A399126C194, p0, p1)
end

function Global.N_0x8c8371edfaf014a0(p0, p1)
	return _in(0x8C8371EDFAF014A0, p0, p1)
end

function Global.N_0x8c889e4cbb4b2356(p0, p1)
	return _in(0x8C889E4CBB4B2356, p0, p1)
end

function Global.N_0x8cb2553c559102c1(p0, p1, p2)
	return _in(0x8CB2553C559102C1, p0, p1, p2)
end

function Global.N_0x8cbe916cfc64ad5c(p0)
	return _in(0x8CBE916CFC64AD5C, p0, _r, _ri)
end

function Global.N_0x8d029948ca29409b(p0, p1, p2)
	return _in(0x8D029948CA29409B, p0, p1, p2, _r, _ri)
end

function Global.N_0x8d1249bd28791878(p0, p1, p2)
	return _in(0x8D1249BD28791878, p0, p1, p2, _r, _ri)
end

function Global.N_0x8d3230a0ed7de39f(vehicle, p1)
	return _in(0x8D3230A0ED7DE39F, vehicle, p1)
end

function Global.N_0x8d56bda343d9519f(p0)
	return _in(0x8D56BDA343D9519F, p0, _r, _ri)
end

function Global.N_0x8d59079c37c21d78(p0, p1)
	return _in(0x8D59079C37C21D78, p0, p1)
end

function Global.N_0x8d81e7824b7753f7(p0, p1, p2)
	return _in(0x8D81E7824B7753F7, p0, p1, p2, _r, _ri)
end

function Global.N_0x8d913e493bafe0a3(p0)
	return _in(0x8D913E493BAFE0A3, p0, _r, _ri)
end

function Global.N_0x8d9bfce3352de47f(p0)
	return _in(0x8D9BFCE3352DE47F, p0, _r, _ri)
end

function Global.N_0x8d9db115fba8e23d(p0)
	return _in(0x8D9DB115FBA8E23D, p0)
end

function Global.N_0x8db104ccebcd58c5(p0, p1)
	return _in(0x8DB104CCEBCD58C5, p0, p1, _r, _ri)
end

function Global.N_0x8dc9aa3b508b1a85()
	return _in(0x8DC9AA3B508B1A85, _r, _ri)
end

function Global.N_0x8dccc98dc0dbf9e4(p0)
	return _in(0x8DCCC98DC0DBF9E4, p0)
end

function Global.N_0x8de104bec243a73b(p0)
	return _in(0x8DE104BEC243A73B, p0)
end

function Global.N_0x8de41e9902e85756(p0)
	return _in(0x8DE41E9902E85756, p0, _r, _ri)
end

function Global.N_0x8de82bc774f3b862(p0)
	return _in(0x8DE82BC774F3B862, p0)
end

function Global.N_0x8decd262602548b9(p0, p1)
	return _in(0x8DECD262602548B9, p0, p1)
end

function Global.N_0x8df5f6a19f99f0d5(p0, p1)
	return _in(0x8DF5F6A19F99F0D5, p0, p1, _r, _ri)
end

function Global.N_0x8e036b41c37d0e5f(p0)
	return _in(0x8E036B41C37D0E5F, p0)
end

function Global.N_0x8e10df0ffa63fb65(p0, p1, p2, p3, p4)
	return _in(0x8E10DF0FFA63FB65, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0x8e1dde26d270cc5e(p0, p1)
	return _in(0x8E1DDE26D270CC5E, p0, p1)
end

function Global.N_0x8e2143144b8e188d(p0)
	return _in(0x8E2143144B8E188D, p0, _r, _ri)
end

function Global.N_0x8e462db1eaa9c47c(p0)
	return _in(0x8E462DB1EAA9C47C, p0, _r, _ri)
end

function Global.N_0x8e46e18aa828334f(p0, p1, p2)
	return _in(0x8E46E18AA828334F, p0, p1, p2, _r, _ri)
end

function Global.N_0x8e587fcd30e05592()
	return _in(0x8E587FCD30E05592, _r, _ri)
end

function Global.N_0x8e5da070bad3279e(p0, p1)
	return _in(0x8E5DA070BAD3279E, p0, p1)
end

function Global.N_0x8e6aff353c09652e(p0)
	return _in(0x8E6AFF353C09652E, p0)
end

function Global.N_0x8e7ce19219669aeb(p0)
	return _in(0x8E7CE19219669AEB, p0, _r, _ri)
end

function Global.N_0x8e84119a23c16623(p0, p1, p2)
	return _in(0x8E84119A23C16623, p0, p1, p2, _r, _ri)
end

function Global.N_0x8e8ffb9e4ad051d2(p0, p1, p2, p3)
	return _in(0x8E8FFB9E4AD051D2, p0, p1, p2, p3)
end

function Global.N_0x8e901b65206c2d3e(p0)
	return _in(0x8E901B65206C2D3E, p0)
end

function Global.N_0x8ec44ae8decff841(p0)
	return _in(0x8EC44AE8DECFF841, p0, _r, _ri)
end

function Global.N_0x8ec47dd4300bf063(p0, p1)
	return _in(0x8EC47DD4300BF063, p0, p1)
end

function Global.N_0x8ec7890d446bd9c1(p0, p1, p2)
	return _in(0x8EC7890D446BD9C1, p0, p1, p2)
end

function Global.N_0x8ec7cd701f872f87(p0, p1, p2, p3, p4, p5)
	return _in(0x8EC7CD701F872F87, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x8eedfd8921389928(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x8EEDFD8921389928, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0x8f2a81c09da9124a(p0)
	return _in(0x8F2A81C09DA9124A, p0)
end

function Global.N_0x8f3333f0a6900b3c(p0, p1)
	return _in(0x8F3333F0A6900B3C, p0, p1, _r, _ri)
end

function Global.N_0x8f44ebb3ba8f6d44(p0, p1)
	return _in(0x8F44EBB3BA8F6D44, p0, p1)
end

function Global.N_0x8f4f050054005c27(p0, p1)
	return _in(0x8F4F050054005C27, p0, p1, _r, _ri)
end

function Global.N_0x8f75941c86eebfca(vehicle, p1)
	return _in(0x8F75941C86EEBFCA, vehicle, p1)
end

function Global.N_0x8f8c84363810691a(p0, p1)
	return _in(0x8F8C84363810691A, p0, p1)
end

function Global.N_0x8faf4d262faba99c(p0)
	return _in(0x8FAF4D262FABA99C, p0, _r, _ri)
end

function Global.N_0x8fb7c254cfcbf78e(p0)
	return _in(0x8FB7C254CFCBF78E, p0, _r, _ri)
end

function Global.N_0x8fb98b719aa0075a(p0, p1, p2, p3, p4)
	return _in(0x8FB98B719AA0075A, p0, p1, p2, p3, p4)
end

function Global.N_0x8fbf9edb378ccb8c(p0, p1)
	return _in(0x8FBF9EDB378CCB8C, p0, p1)
end

function Global.N_0x8ff6059da26e688a()
	return _in(0x8FF6059DA26E688A, _r, _ri)
end

function Global.N_0x900ca00ce703e1e2(p0)
	return _in(0x900CA00CE703E1E2, p0, _r, _ri)
end

function Global.N_0x901e0dc25080c8b9(p0)
	return _in(0x901E0DC25080C8B9, p0, _r, _ri)
end

function Global.N_0x90403e8107b60e81(p0)
	return _in(0x90403E8107B60E81, p0, _r, _ri)
end

function Global.N_0x904103d5d2333977(p0)
	return _in(0x904103D5D2333977, p0, _r, _ri)
end

function Global.N_0x9044835be9d9dbfe(p0, p1)
	return _in(0x9044835BE9D9DBFE, p0, p1)
end

function Global.N_0x9050df2c53801208(p0, p1)
	return _in(0x9050DF2C53801208, p0, p1)
end

function Global.N_0x90703a8f75ee4abd(p0, p1)
	return _in(0x90703A8F75EE4ABD, p0, p1, _r, _ri)
end

function Global.N_0x9073ec5456651a90(p0, p1)
	return _in(0x9073EC5456651A90, p0, p1)
end

function Global.N_0x9078fb0557364099(p0)
	return _in(0x9078FB0557364099, p0)
end

function Global.N_0x907b16b3834c69e2(p0, p1)
	return _in(0x907B16B3834C69E2, p0, p1)
end

function Global.N_0x908bb14bce85c80e(p0)
	return _in(0x908BB14BCE85C80E, p0, _r, _ri)
end

function Global.N_0x908d4b72854c8f62(p0)
	return _in(0x908D4B72854C8F62, p0)
end

function Global.N_0x909ad9e9a92a10df(p0)
	return _in(0x909AD9E9A92A10DF, p0, _r, _ri)
end

function Global.N_0x909e3c7fae539fb1(p0)
	return _in(0x909E3C7FAE539FB1, p0)
end

function Global.N_0x90da5ba5c2635416()
	return _in(0x90DA5BA5C2635416, _r, _ri)
end

function Global.N_0x90eb1cb189923587(p0)
	return _in(0x90EB1CB189923587, p0, _r, _ri)
end

function Global.N_0x910b088e51a511ac()
	return _in(0x910B088E51A511AC, _r, _ri)
end

function Global.N_0x910e260aead855de()
	return _in(0x910E260AEAD855DE)
end

function Global.N_0x913d04a5176f84c9(p0)
	return _in(0x913D04A5176F84C9, p0, _r, _ri)
end

function Global.N_0x914071ff93af2692(p0, p1)
	return _in(0x914071FF93AF2692, p0, p1)
end

function Global.N_0x916b8e075abc8b4e(p0, p1)
	return _in(0x916B8E075ABC8B4E, p0, p1, _r, _ri)
end

function Global.N_0x917760cfe7a0e0f1(p0)
	return _in(0x917760CFE7A0E0F1, p0, _r, _ri)
end

function Global.N_0x9184788bff1edad7(p0, p1)
	return _in(0x9184788BFF1EDAD7, p0, p1)
end

function Global.N_0x918990bd9ce08582(p0)
	return _in(0x918990BD9CE08582, p0, _r, _ri)
end

function Global.N_0x919af2d93e9aa89d(p0)
	return _in(0x919AF2D93E9AA89D, p0, _r, _ri)
end

function Global.N_0x91a4f58e01ed5e4c(p0, p1)
	return _in(0x91A4F58E01ED5E4C, p0, p1)
end

function Global.N_0x91a5f9cbebb9d936(p0)
	return _in(0x91A5F9CBEBB9D936, p0, _r, _ri)
end

function Global.N_0x91bab9e064f036cd(p0, p1)
	return _in(0x91BAB9E064F036CD, p0, p1)
end

function Global.N_0x91c9e2a0f9dd6dd4()
	return _in(0x91C9E2A0F9DD6DD4, _r, _ri)
end

function Global.N_0x91cb5e431f579ba1(p0)
	return _in(0x91CB5E431F579BA1, p0, _r, _rv)
end

function Global.N_0x91d657230bc208d2(p0, p1)
	return _in(0x91D657230BC208D2, _ts(p0), _ts(p1))
end

function Global.N_0x91ded5dd64bb2691(p0)
	return _in(0x91DED5DD64BB2691, p0)
end

function Global.N_0x91fe941f9fcfb702(p0, p1)
	return _in(0x91FE941F9FCFB702, p0, p1, _r, _ri)
end

function Global.N_0x922a79cd4a033b8b(p0)
	return _in(0x922A79CD4A033B8B, p0, _r, _ri)
end

function Global.N_0x923346025512dfb7(p0)
	return _in(0x923346025512DFB7, p0, _r, _ri)
end

function Global.N_0x923583741dc87bce(p0, p1)
	return _in(0x923583741DC87BCE, p0, p1)
end

function Global.N_0x9238a3d970bbb0a9(p0, p1)
	return _in(0x9238A3D970BBB0A9, p0, p1)
end

function Global.N_0x925a160133003ac6(p0, p1)
	return _in(0x925A160133003AC6, p0, p1)
end

function Global.N_0x92690b0822493ce0()
	return _in(0x92690B0822493CE0)
end

function Global.N_0x927861b2c08dbea5(p0)
	return _in(0x927861B2C08DBEA5, p0, _r, _ri)
end

function Global.N_0x927b810e43e99932(p0)
	return _in(0x927B810E43E99932, p0, _r, _ri)
end

function Global.N_0x92a1b55a59720395(p0, p1)
	return _in(0x92A1B55A59720395, p0, p1)
end

function Global.N_0x92a32ba29622763f(id, index, p2)
	return _in(0x92A32BA29622763F, id, index, _ii(p2) --[[ may be optional ]], _r)
end

function Global.N_0x92a78d0bedb332a3(p0)
	return _in(0x92A78D0BEDB332A3, p0, _r, _ri)
end

function Global.N_0x92aefb5f6e294023(object, p1, p2)
	return _in(0x92AEFB5F6E294023, object, p1, p2)
end

function Global.N_0x92c8eaca29f6bed6(p0)
	return _in(0x92C8EACA29F6BED6, p0, _r, _ri)
end

function Global.N_0x92daaba2c1c10b0e(p0)
	return _in(0x92DAABA2C1C10B0E, p0)
end

function Global.N_0x93171dddab274eb8(p0, p1)
	return _in(0x93171DDDAB274EB8, p0, p1)
end

function Global.N_0x931b241409216c1f(p0, p1, p2)
	return _in(0x931B241409216C1F, p0, p1, p2)
end

function Global.N_0x932786ce3c76477c(p0, p1)
	return _in(0x932786CE3C76477C, p0, p1)
end

function Global.N_0x932db3c05a7465d1()
	return _in(0x932DB3C05A7465D1)
end

function Global.N_0x9337183fda2e9035(p0, p1)
	return _in(0x9337183FDA2E9035, p0, p1, _r, _ri)
end

function Global.N_0x935a30aa88fb1014(p0)
	return _in(0x935A30AA88FB1014, p0, _r, _rv)
end

function Global.N_0x935cf6e42baf7f4d(p0)
	return _in(0x935CF6E42BAF7F4D, p0)
end

function Global.N_0x935dbd96d4a3da1f(p0, p1)
	return _in(0x935DBD96D4A3DA1F, p0, p1, _r, _ri)
end

function Global.N_0x93624b36e8851b42(p0)
	return _in(0x93624B36E8851B42, p0)
end

function Global.N_0x936e7cad0ae2ee14(p0)
	return _in(0x936E7CAD0AE2EE14, p0, _r, _ri)
end

function Global.N_0x93759a83d0d844e7(p0)
	return _in(0x93759A83D0D844E7, p0)
end

function Global.N_0x93a91a351a07360e(p0)
	return _in(0x93A91A351A07360E, p0, _r, _ri)
end

function Global.N_0x93f2e7b5db85657b(p0, p1)
	return _in(0x93F2E7B5DB85657B, p0, p1, _r, _ri)
end

function Global.N_0x93f499cae53fcd05(p0, p1, p2)
	return _in(0x93F499CAE53FCD05, p0, p1, p2)
end

function Global.N_0x93ffd92f05ec32fd(p0)
	return _in(0x93FFD92F05EC32FD, p0, _r, _ri)
end

function Global.N_0x9409c62504a8f9e9(p0, p1)
	return _in(0x9409C62504A8F9E9, p0, p1)
end

function Global.N_0x94132d7c8d3575c4(p0)
	return _in(0x94132D7C8D3575C4, p0, _r, _ri)
end

function Global.N_0x9420fb11b8d77948(p0)
	return _in(0x9420FB11B8D77948, p0, _r, _ri)
end

function Global.N_0x9422743a5ba50e10(p0)
	return _in(0x9422743A5BA50E10, p0, _r, _ri)
end

function Global.N_0x9427c94d2e4094a4(p0, p1)
	return _in(0x9427C94D2E4094A4, p0, p1, _r, _ri)
end

function Global.N_0x9428447ded71fc7e(p0)
	return _in(0x9428447DED71FC7E, p0)
end

function Global.N_0x9461a8fab0378e5b(p0, p1)
	return _in(0x9461A8FAB0378E5B, p0, p1)
end

function Global.N_0x946d46cd6dfb9742(p0, p1, p2)
	return _in(0x946D46CD6DFB9742, p0, p1, p2)
end

function Global.N_0x947e43f544b6ab34(p0, p1, p2, p3)
	return _in(0x947E43F544B6AB34, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x94995829ed15a598(p0)
	return _in(0x94995829ED15A598, p0, _r, _rv)
end

function Global.N_0x949b2f9ed2917f5d(p0, p1)
	return _in(0x949B2F9ED2917F5D, p0, p1)
end

function Global.N_0x94a3c1b804d291ec(p0, p1, p2, p3, p4)
	return _in(0x94A3C1B804D291EC, p0, p1, p2, p3, p4)
end

function Global.N_0x94b261f1f35293e1(p0)
	return _in(0x94B261F1F35293E1, p0)
end

function Global.N_0x94b745ce41db58a1(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x94B745CE41DB58A1, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0x94e8ca3dee952789(p0, p1)
	return _in(0x94E8CA3DEE952789, p0, p1, _r, _ri)
end

function Global.N_0x94f3d956bfaeae18(p0, p1, p2)
	return _in(0x94F3D956BFAEAE18, p0, p1, p2)
end

function Global.N_0x94fcadcf9f0c368e(p0)
	return _in(0x94FCADCF9F0C368E, p0)
end

function Global.N_0x951847cef3d829ff(p0, p1, p2)
	return _in(0x951847CEF3D829FF, p0, p1, p2)
end

function Global.N_0x9520175b35e2268d(p0, p1)
	return _in(0x9520175B35E2268D, p0, p1)
end

function Global.N_0x95384c6ce1526eff(p0, p1)
	return _in(0x95384C6CE1526EFF, p0, p1)
end

function Global.N_0x95423627a9ca598e(p0)
	return _in(0x95423627A9CA598E, p0)
end

function Global.N_0x954451ea2d2120fb(p0, p1)
	return _in(0x954451EA2D2120FB, p0, p1)
end

function Global.N_0x95531a4a20cce7bc(p0, p1)
	return _in(0x95531A4A20CCE7BC, p0, p1, _r, _ri)
end

function Global.N_0x956510f8c36b5c64()
	return _in(0x956510F8C36B5C64)
end

function Global.N_0x957d7e750216d74b(p0)
	return _in(0x957D7E750216D74B, p0, _r, _ri)
end

function Global.N_0x9585ff23c4b8ede0(p0, p1)
	return _in(0x9585FF23C4B8EDE0, p0, p1)
end

function Global.N_0x95878b13e272ef1f(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x95878B13E272EF1F, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x9587913b9e772d29(p0, p1)
	return _in(0x9587913B9E772D29, p0, p1, _r, _ri)
end

function Global.N_0x958debd9353c0935(p0, p1, p2)
	return _in(0x958DEBD9353C0935, p0, p1, p2)
end

function Global.N_0x959383dcd42040da(p0)
	return _in(0x959383DCD42040DA, p0, _r, _ri)
end

function Global.N_0x95b8e397b8f4360f(p0)
	return _in(0x95B8E397B8F4360F, p0, _r, _ri)
end

function Global.N_0x95ca12e2c68043e5(p0, p1)
	return _in(0x95CA12E2C68043E5, p0, p1, _r, _ri)
end

function Global.N_0x95cbc65780de7eb1(p0, p1)
	return _in(0x95CBC65780DE7EB1, p0, p1, _r, _ri)
end

function Global.N_0x95ee1dee1dcd9070(p0, p1)
	return _in(0x95EE1DEE1DCD9070, p0, p1)
end

function Global.N_0x9609dbdde18fad8c(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x9609DBDDE18FAD8C, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0x9617b6e5f6537b63(p0)
	return _in(0x9617B6E5F6537B63, p0)
end

function Global.N_0x9629faf6460d35cb(p0, p1)
	return _in(0x9629FAF6460D35CB, p0, p1)
end

function Global.N_0x964000d355219fc0(p0)
	return _in(0x964000D355219FC0, p0, _r, _ri)
end

function Global.N_0x9641a9a20310f6b8(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x9641A9A20310F6B8, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri)
end

function Global.N_0x96498d922d8d0d0a()
	return _in(0x96498D922D8D0D0A)
end

function Global.N_0x96595b36d6a2279b(p0, p1)
	return _in(0x96595B36D6A2279B, p0, p1)
end

function Global.N_0x9667cce29bfa0780(p0)
	return _in(0x9667CCE29BFA0780, p0)
end

function Global.N_0x966dd84fb6a46017()
	return _in(0x966DD84FB6A46017)
end

function Global.N_0x966de09688a1de39(p0, p1, p2, p3, p4)
	return _in(0x966DE09688A1DE39, p0, p1, p2, p3, p4)
end

function Global.N_0x96722257e5381e00(player)
	return _in(0x96722257E5381E00, player)
end

function Global.N_0x967ff5bc0cfe6d26(p0, p1)
	return _in(0x967FF5BC0CFE6D26, p0, p1)
end

function Global.N_0x9682f850056c9ade(p0)
	return _in(0x9682F850056C9ADE, p0, _r, _ri)
end

function Global.N_0x96c349de04c49011(p0, p1)
	return _in(0x96C349DE04C49011, p0, p1)
end

function Global.N_0x96c638784db4c815(p0)
	return _in(0x96C638784DB4C815, p0, _r, _ri)
end

function Global.N_0x96c6ed22fb742c3e(p0, p1)
	return _in(0x96C6ED22FB742C3E, p0, p1, _r, _ri)
end

function Global.N_0x96c7b659854de629(p0, p1)
	return _in(0x96C7B659854DE629, p0, p1)
end

function Global.N_0x96fd694fe5be55dc(p0)
	return _in(0x96FD694FE5BE55DC, p0, _r, _ri)
end

function Global.N_0x9700e8efc4ab9089(p0, p1, p2, p3)
	return _in(0x9700E8EFC4AB9089, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x970339efa4fde518(p0, p1, p2)
	return _in(0x970339EFA4FDE518, p0, p1, p2, _r, _ri)
end

function Global.N_0x974da3408dec4e79(p0)
	return _in(0x974DA3408DEC4E79, p0, _r, _ri)
end

function Global.N_0x975bd6351648935f(p0)
	return _in(0x975BD6351648935F, p0, _r, _ri)
end

function Global.N_0x975f6ebb62632fe3()
	return _in(0x975F6EBB62632FE3, _r, _ri)
end

function Global.N_0x9772395cc73e8d1f(p0, p1)
	return _in(0x9772395CC73E8D1F, p0, p1)
end

function Global.N_0x97764e8ac6487a9a(p0, p1)
	return _in(0x97764E8AC6487A9A, p0, p1, _r, _ri)
end

function Global.N_0x978aa2323ed32209(p0, p1)
	return _in(0x978AA2323ED32209, p0, p1)
end

function Global.N_0x979765465a6f25fc()
	return _in(0x979765465A6F25FC, _r, _ri)
end

function Global.N_0x97a38b65ebda3d50(p0, p1)
	return _in(0x97A38B65EBDA3D50, p0, p1)
end

function Global.N_0x97b06669ac569003(p0, p1)
	return _in(0x97B06669AC569003, p0, p1)
end

function Global.N_0x97bce4c4b3191228()
	return _in(0x97BCE4C4B3191228)
end

function Global.N_0x97c475212b327666(p0, p1)
	return _in(0x97C475212B327666, p0, p1)
end

function Global.N_0x97f6f158cc5b5ca2(p0, p1)
	return _in(0x97F6F158CC5B5CA2, p0, p1)
end

function Global.N_0x98082246107a6acf(p0, p1)
	return _in(0x98082246107A6ACF, p0, p1, _r, _ri)
end

function Global.N_0x981146e5c9ce9250(p0)
	return _in(0x981146E5C9CE9250, p0, _r, _ri)
end

function Global.N_0x981c7d863980fa51()
	return _in(0x981C7D863980FA51)
end

function Global.N_0x9821b68cd3e05f2b(p0, p1, p2, p3)
	return _in(0x9821B68CD3E05F2B, p0, p1, p2, p3)
end

function Global.N_0x9851de7aec10b4e1(p0, p1, p2, p3, p4, p5)
	return _in(0x9851DE7AEC10B4E1, p0, p1, p2, p3, p4, p5)
end

function Global.N_0x98539fc453aea639(p0, p1)
	return _in(0x98539FC453AEA639, p0, p1, _r, _ri)
end

function Global.N_0x985767f5fa45bc44(p0)
	return _in(0x985767F5FA45BC44, p0)
end

function Global.N_0x9868c0d0134855f7(p0)
	return _in(0x9868C0D0134855F7, p0)
end

function Global.N_0x986f7a51ee3e1f92(p0, p1)
	return _in(0x986F7A51EE3E1F92, p0, p1)
end

function Global.N_0x987be590fb9d41e5(p0)
	return _in(0x987BE590FB9D41E5, p0)
end

function Global.N_0x9888652b8ba77f73(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x9888652B8BA77F73, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0x98a7598c579ee871(p0, p1, p2)
	return _in(0x98A7598C579EE871, p0, p1, p2)
end

function Global.N_0x98a7cd5ea379a854()
	return _in(0x98A7CD5EA379A854)
end

function Global.N_0x98cd760de43b612e(p0, p1)
	return _in(0x98CD760DE43B612E, p0, p1)
end

function Global.N_0x98d2d9c053a1f449(p0, p1)
	return _in(0x98D2D9C053A1F449, p0, p1)
end

function Global.N_0x98f4154989b81ec6()
	return _in(0x98F4154989B81EC6, _r, _ri)
end

function Global.N_0x9911f4a24485f653(p0)
	return _in(0x9911F4A24485F653, p0)
end

function Global.N_0x991e3346d788f20f(p0, p1)
	return _in(0x991E3346D788F20F, p0, p1)
end

function Global.N_0x99230691875fc218(p0, p1, p2, p3, p4)
	return _in(0x99230691875FC218, p0, p1, p2, p3, p4)
end

function Global.N_0x9935f76407c32539(p0)
	return _in(0x9935F76407C32539, _ts(p0))
end

function Global.N_0x9937facbbf267244(p0)
	return _in(0x9937FACBBF267244, p0)
end

function Global.N_0x9945a3e2528a02e8(p0)
	return _in(0x9945A3E2528A02E8, p0, _r, _ri)
end

function Global.N_0x9963681a8bc69bf3(p0, p1, p2)
	return _in(0x9963681A8BC69BF3, p0, p1, p2)
end

function Global.N_0x997060bc223adff9()
	return _in(0x997060BC223ADFF9, _r, _ri)
end

function Global.N_0x9970ae8c3d706139()
	return _in(0x9970AE8C3D706139, _r, _ri)
end

function Global.N_0x998202b206872672(p0)
	return _in(0x998202B206872672, p0)
end

function Global.N_0x9993f1e11944a3dd(p0, p1)
	return _in(0x9993F1E11944A3DD, p0, p1, _r, _ri)
end

function Global.N_0x99a6e246c315bf60(p0, p1)
	return _in(0x99A6E246C315BF60, p0, p1, _r, _ri)
end

function Global.N_0x99abe9bf9dada162(p0)
	return _in(0x99ABE9BF9DADA162, p0, _r, _ri)
end

function Global.N_0x99b2a2e3655deaf1(p0, p1)
	return _in(0x99B2A2E3655DEAF1, p0, p1)
end

function Global.N_0x99c6ea66dfe73757(p0, p1, p2)
	return _in(0x99C6EA66DFE73757, p0, p1, p2, _r, _ri)
end

function Global.N_0x99f92061efe908ba()
	return _in(0x99F92061EFE908BA, _r, _ri)
end

function Global.N_0x9a03f22ad446eeac(p0)
	return _in(0x9A03F22AD446EEAC, p0, _r, _ri)
end

function Global.N_0x9a100f1cf4546629(p0)
	return _in(0x9A100F1CF4546629, p0, _r, _ri)
end

function Global.N_0x9a113c660aea3832(p0, p1, p2)
	return _in(0x9A113C660AEA3832, p0, p1, p2)
end

function Global.N_0x9a252aa23d7098f2()
	return _in(0x9A252AA23D7098F2)
end

function Global.N_0x9a4ac116cc1eee14(p0)
	return _in(0x9A4AC116CC1EEE14, p0)
end

function Global.N_0x9a74a9cadfa8a598(p0)
	return _in(0x9A74A9CADFA8A598, p0)
end

function Global.N_0x9a77dfd295e29b09(p0, p1)
	return _in(0x9A77DFD295E29B09, p0, p1)
end

function Global.N_0x9a92c06acbaf9731()
	return _in(0x9A92C06ACBAF9731)
end

function Global.N_0x9a957912ce2eabd1(p0, p1, p2)
	return _in(0x9A957912CE2EABD1, p0, p1, p2)
end

function Global.N_0x9aae3c1148a09bca(p0)
	return _in(0x9AAE3C1148A09BCA, p0, _r, _ri)
end

function Global.N_0x9ab192a9ef980eed(p0, p1, p2, p3)
	return _in(0x9AB192A9EF980EED, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9ab33cb5834885b3(p0, p1, p2, p3, p4)
	return _in(0x9AB33CB5834885B3, p0, p1, p2, p3, p4)
end

function Global.N_0x9ac53cb6907b4428(p0, p1, p2)
	return _in(0x9AC53CB6907B4428, p0, p1, p2, _r, _ri)
end

function Global.N_0x9ac65a36d3c0c189(p0)
	return _in(0x9AC65A36D3C0C189, p0)
end

function Global.N_0x9adac065d9f6706f(p0)
	return _in(0x9ADAC065D9F6706F, p0)
end

function Global.N_0x9addbb9242179d56(p0, p1)
	return _in(0x9ADDBB9242179D56, p0, p1)
end

function Global.N_0x9adee485726025d4(p0)
	return _in(0x9ADEE485726025D4, p0, _r, _ri)
end

function Global.N_0x9afcf9fe1884bf62(p0, p1)
	return _in(0x9AFCF9FE1884BF62, p0, p1)
end

function Global.N_0x9b0c7fa063e67629(p0, p1, p2, p3)
	return _in(0x9B0C7FA063E67629, p0, p1, p2, p3)
end

function Global.N_0x9b1fc259187c97c0(p0)
	return _in(0x9B1FC259187C97C0, p0)
end

function Global.N_0x9b39b0555cc692b5()
	return _in(0x9B39B0555CC692B5)
end

function Global.N_0x9b47971234169990(p0, p1)
	return _in(0x9B47971234169990, p0, p1)
end

function Global.N_0x9b4c564bfa7cff37(p0)
	return _in(0x9B4C564BFA7CFF37, p0)
end

function Global.N_0x9b4e793b1cb6550a()
	return _in(0x9B4E793B1CB6550A)
end

function Global.N_0x9b4f7e3e4f9c77b3(p0, p1)
	return _in(0x9B4F7E3E4F9C77B3, p0, p1, _r, _ri)
end

function Global.N_0x9b5db6ceafaa10bb(p0, p1, p2, p3)
	return _in(0x9B5DB6CEAFAA10BB, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9b65444c07b782bf(p0, p1)
	return _in(0x9B65444C07B782BF, p0, p1)
end

function Global.N_0x9b6808ec46be849b(p0, p1)
	return _in(0x9B6808EC46BE849B, p0, p1)
end

function Global.N_0x9b6a58fdb0024f12(p0, p1)
	return _in(0x9B6A58FDB0024F12, p0, p1)
end

function Global.N_0x9b8d5d4cb8af58b3(p0)
	return _in(0x9B8D5D4CB8AF58B3, p0)
end

function Global.N_0x9b90842304c938a7(p0, p1, p2)
	return _in(0x9B90842304C938A7, p0, p1, p2, _r, _ri)
end

function Global.N_0x9b9b9fa0ea283e3d(p0, p1)
	return _in(0x9B9B9FA0EA283E3D, p0, p1)
end

function Global.N_0x9bb83c4dd7be0802(p0, p1, p2, p3, p4)
	return _in(0x9BB83C4DD7BE0802, p0, p1, p2, p3, p4)
end

function Global.N_0x9bbdcb8df789ebc1(p0, p1)
	return _in(0x9BBDCB8DF789EBC1, p0, p1)
end

function Global.N_0x9bbeaf8b0c007f1e(p0, p1)
	return _in(0x9BBEAF8B0C007F1E, p0, p1)
end

function Global.N_0x9bcf28fb5d65a9be()
	return _in(0x9BCF28FB5D65A9BE, _r, _ri)
end

function Global.N_0x9bd8a9d0a774a6f8(p0, p1, p2, p3, p4)
	return _in(0x9BD8A9D0A774A6F8, p0, p1, p2, p3, p4)
end

function Global.N_0x9be7dcb22d32ccbe(p0, p1)
	return _in(0x9BE7DCB22D32CCBE, p0, p1, _r, _ri)
end

function Global.N_0x9bee018a63fffad9(p0)
	return _in(0x9BEE018A63FFFAD9, p0)
end

function Global.N_0x9bf2c0c568c61641(p0)
	return _in(0x9BF2C0C568C61641, p0)
end

function Global.N_0x9c113883487fd53c(p0, p1)
	return _in(0x9C113883487FD53C, p0, p1)
end

function Global.N_0x9c24846d0a4a2776(p0)
	return _in(0x9C24846D0A4A2776, p0)
end

function Global.N_0x9c25e8ec4c535fbd(p0)
	return _in(0x9C25E8EC4C535FBD, p0)
end

function Global.N_0x9c409bbc492cb5b1()
	return _in(0x9C409BBC492CB5B1, _r, _ri)
end

function Global.N_0x9c4352134b2835fb(p0, p1)
	return _in(0x9C4352134B2835FB, p0, p1)
end

function Global.N_0x9c54041bb66bcf9e(p0, p1)
	return _in(0x9C54041BB66BCF9E, p0, p1, _r, _ri)
end

function Global.N_0x9c5bd8c562565ce6(p0)
	return _in(0x9C5BD8C562565CE6, p0)
end

function Global.N_0x9c725d149622bfde(p0)
	return _in(0x9C725D149622BFDE, p0, _r, _ri)
end

function Global.N_0x9c77964b0e07b633(p0, p1, p2)
	return _in(0x9C77964B0E07B633, p0, p1, p2, _r, _ri)
end

function Global.N_0x9c7f95946e304778(p0, p1)
	return _in(0x9C7F95946E304778, p0, p1, _r, _ri)
end

function Global.N_0x9c81338b2e62ce0a(p0, p1, p2)
	return _in(0x9C81338B2E62CE0A, p0, p1, p2, _r, _ri)
end

function Global.N_0x9c8a2bf37e966464(p0, p1)
	return _in(0x9C8A2BF37E966464, p0, p1)
end

function Global.N_0x9c8f42a5d1859dc1(p0)
	return _in(0x9C8F42A5D1859DC1, p0)
end

function Global.N_0x9c902084f48d2e6c(p0)
	return _in(0x9C902084F48D2E6C, p0)
end

function Global.N_0x9cb1a1623062f402(p0, p1)
	return _in(0x9CB1A1623062F402, p0, p1)
end

function Global.N_0x9cc94a948eaf5372(p0, p1)
	return _in(0x9CC94A948EAF5372, p0, p1, _r, _ri)
end

function Global.N_0x9cca3131e6b53c68(p0, p1, p2)
	return _in(0x9CCA3131E6B53C68, p0, p1, p2, _r, _ri)
end

function Global.N_0x9cf1836c03fb67a2(p0, p1)
	return _in(0x9CF1836C03FB67A2, p0, p1)
end

function Global.N_0x9d096a5bd02f953e(p0, p1)
	return _in(0x9D096A5BD02F953E, p0, p1)
end

function Global.N_0x9d0f5d2e1951cd84()
	return _in(0x9D0F5D2E1951CD84, _r, _ri)
end

function Global.N_0x9d12796ef4bf9ea9(p0)
	return _in(0x9D12796EF4BF9EA9, p0)
end

function Global.N_0x9d16896f0dbe78a2(p0, p1, p2, p3)
	return _in(0x9D16896F0DBE78A2, p0, p1, p2, p3)
end

function Global.N_0x9d1b0b5066205692()
	return _in(0x9D1B0B5066205692)
end

function Global.N_0x9d1eca9337be9fc3(p0, p1)
	return _in(0x9D1ECA9337BE9FC3, p0, p1, _r, _ri)
end

function Global.N_0x9d21b185abc2dbc4(p0, p1, p2, p3)
	return _in(0x9D21B185ABC2DBC4, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9d21b185abc2dbc5(p0, p1, p2, p3)
	return _in(0x9D21B185ABC2DBC5, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9d37eb5003e0f2cf(p0, p1)
	return _in(0x9D37EB5003E0F2CF, p0, p1)
end

function Global.N_0x9d5c9a5a3321b128(p0)
	return _in(0x9D5C9A5A3321B128, p0, _r, _ri)
end

function Global.N_0x9d6dec9791a4e501(p0, p1, p2, p3)
	return _in(0x9D6DEC9791A4E501, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9d746964e0cf2c5f(p0, p1)
	return _in(0x9D746964E0CF2C5F, p0, p1)
end

function Global.N_0x9d8dfe2de9cb4dfc(p0)
	return _in(0x9D8DFE2DE9CB4DFC, p0)
end

function Global.N_0x9d9473cb82d83a30(p0, p1, p2)
	return _in(0x9D9473CB82D83A30, p0, p1, p2, _r, _ri)
end

function Global.N_0x9dae1380cc5c6451(p0, p1)
	return _in(0x9DAE1380CC5C6451, p0, p1)
end

function Global.N_0x9dd95b405ab4983e(p0, p1)
	return _in(0x9DD95B405AB4983E, p0, p1, _r, _ri)
end

function Global.N_0x9ddc222d85d5af2a(p0, p1)
	return _in(0x9DDC222D85D5AF2A, p0, p1)
end

function Global.N_0x9de63896b176ea94(p0, p1)
	return _in(0x9DE63896B176EA94, p0, p1)
end

function Global.N_0x9e036d5204ffbbc8(p0, p1)
	return _in(0x9E036D5204FFBBC8, p0, p1, _r, _ri)
end

function Global.N_0x9e13acc38ba8f9c3(p0, p1)
	return _in(0x9E13ACC38BA8F9C3, p0, p1, _r, _ri)
end

function Global.N_0x9e2d5d6bc97a5f1e(p0, p1, p2)
	return _in(0x9E2D5D6BC97A5F1E, p0, p1, p2, _r, _ri)
end

function Global.N_0x9e3842e5dad69f80(p0)
	return _in(0x9E3842E5DAD69F80, p0)
end

function Global.N_0x9e4ef615e307fbbe()
	return _in(0x9E4EF615E307FBBE, _r, _ri)
end

function Global.N_0x9e58207b194488ac(p0, p1)
	return _in(0x9E58207B194488AC, p0, p1)
end

function Global.N_0x9e66708b2b41f14a(p0, p1)
	return _in(0x9E66708B2B41F14A, p0, p1)
end

function Global.N_0x9e762a595cf88e4a(p0)
	return _in(0x9E762A595CF88E4A, p0, _r, _ri)
end

function Global.N_0x9e7738b291706746(p0, p1, p2)
	return _in(0x9E7738B291706746, p0, p1, p2, _r, _ri)
end

function Global.N_0x9e8711c81aa17876(p0, p1)
	return _in(0x9E8711C81AA17876, p0, p1)
end

function Global.N_0x9eb779765e68c52e(p0, p1)
	return _in(0x9EB779765E68C52E, p0, p1)
end

function Global.N_0x9ebd34958ab6f824(p0)
	return _in(0x9EBD34958AB6F824, p0)
end

function Global.N_0x9ed3108d6847760a(p0, p1)
	return _in(0x9ED3108D6847760A, p0, p1)
end

function Global.N_0x9eeb007317fa3b9c()
	return _in(0x9EEB007317FA3B9C, _r, _ri)
end

function Global.N_0x9eefd670f10656d7(p0, p1)
	return _in(0x9EEFD670F10656D7, p0, p1, _r, _ri)
end

function Global.N_0x9ef07cfbb19a9733()
	return _in(0x9EF07CFBB19A9733, _r, _ri)
end

function Global.N_0x9f0e1892c7f228a8(p0)
	return _in(0x9F0E1892C7F228A8, p0, _r, _ri)
end

function Global.N_0x9f130129ebc31b34(p0, p1, p2)
	return _in(0x9F130129EBC31B34, p0, p1, p2)
end

function Global.N_0x9f158a49b0d84c3c(p0)
	return _in(0x9F158A49B0D84C3C, p0)
end

function Global.N_0x9f24a34863fd35da(p0)
	return _in(0x9F24A34863FD35DA, p0)
end

function Global.N_0x9f29999dfdf2aeb8(p0, p1)
	return _in(0x9F29999DFDF2AEB8, p0, p1)
end

function Global.N_0x9f2cc2439a04e7ba(p0, p1, p2)
	return _in(0x9F2CC2439A04E7BA, p0, p1, p2, _r, _ri)
end

function Global.N_0x9f348de670423460(p0)
	return _in(0x9F348DE670423460, p0)
end

function Global.N_0x9f52ad67d1a91bad(p0, p1)
	return _in(0x9F52AD67D1A91BAD, p0, p1, _r, _ri)
end

function Global.N_0x9f67929d98e7c6e8(p0, p1, p2, p3)
	return _in(0x9F67929D98E7C6E8, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0x9f6dcd0c939c71e9()
	return _in(0x9F6DCD0C939C71E9, _r, _ri)
end

function Global.N_0x9f933e0985e12c51(p0, p1, p2, p3)
	return _in(0x9F933E0985E12C51, p0, p1, p2, p3)
end

function Global.N_0x9f97e85ec142255e(p0, p1)
	return _in(0x9F97E85EC142255E, p0, p1)
end

function Global.N_0x9f9a829c6751f3c7(p0, p1, p2)
	return _in(0x9F9A829C6751F3C7, p0, p1, p2)
end

function Global.N_0x9fa00e2fc134a9d0(p0)
	return _in(0x9FA00E2FC134A9D0, p0, _r, _ri)
end

function Global.N_0x9fc5a003fb76edbd(p0, p1)
	return _in(0x9FC5A003FB76EDBD, p0, p1)
end

function Global.N_0x9ff5f9b24e870748(p0)
	return _in(0x9FF5F9B24E870748, p0, _r, _ri)
end

function Global.N_0xa00df706c60173d1(p0)
	return _in(0xA00DF706C60173D1, p0, _r, _ri)
end

function Global.N_0xa021095c983f20d8()
	return _in(0xA021095C983F20D8, _r, _ri)
end

function Global.N_0xa033d7e4bbf9844d(p0)
	return _in(0xA033D7E4BBF9844D, p0, _r, _ri)
end

function Global.N_0xa03a6812529ad9c8()
	return _in(0xA03A6812529AD9C8)
end

function Global.N_0xa04ef43030593abc(p0, p1)
	return _in(0xA04EF43030593ABC, p0, p1)
end

function Global.N_0xa052608a12559bbb(p0, p1)
	return _in(0xA052608A12559BBB, p0, p1)
end

function Global.N_0xa05f3f20889d7a5b(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xA05F3F20889D7A5B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xa064bbabb064446f(p0)
	return _in(0xA064BBABB064446F, p0)
end

function Global.N_0xa0774e388ce4a679(p0, p1, p2, p3)
	return _in(0xA0774E388CE4A679, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xa079300af757fb1a(p0)
	return _in(0xA079300AF757FB1A, p0, _r, _ri)
end

function Global.N_0xa079ff7cfb9ac8bd(p0, p1)
	return _in(0xA079FF7CFB9AC8BD, p0, p1)
end

function Global.N_0xa07cf1b21b56f041(p0, p1, p2, p3)
	return _in(0xA07CF1B21B56F041, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xa08111b053d84b4d(p0)
	return _in(0xA08111B053D84B4D, p0)
end

function Global.N_0xa0ae7653e8181725(p0)
	return _in(0xA0AE7653E8181725, p0, _r, _ri)
end

function Global.N_0xa0b7094629724974(p0, p1)
	return _in(0xA0B7094629724974, p0, p1, _r, _ri)
end

function Global.N_0xa0bc8faed8cfeb3c(p0)
	return _in(0xA0BC8FAED8CFEB3C, p0, _r, _ri)
end

function Global.N_0xa0c683284df027c7(p0, p1, p2)
	return _in(0xA0C683284DF027C7, p0, p1, p2)
end

function Global.N_0xa0cefcea390aab9b(p0)
	return _in(0xA0CEFCEA390AAB9B, p0)
end

function Global.N_0xa0f4d12d6042f6d5(p0, p1)
	return _in(0xA0F4D12D6042F6D5, p0, p1)
end

function Global.N_0xa1300de03e5d1973(p0)
	return _in(0xA1300DE03E5D1973, p0, _r, _ri)
end

function Global.N_0xa13028e22564a1bd(p0, p1)
	return _in(0xA13028E22564A1BD, p0, p1)
end

function Global.N_0xa14d5fe82bcb1d9e()
	return _in(0xA14D5FE82BCB1D9E, _r, _ri)
end

function Global.N_0xa15bffc0a01b34e1()
	return _in(0xA15BFFC0A01B34E1, _r, _ri)
end

function Global.N_0xa15ccab8ad038291(p0, p1, p2, p3)
	return _in(0xA15CCAB8AD038291, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xa16b4fba7887d7ba()
	return _in(0xA16B4FBA7887D7BA, _r, _ri)
end

function Global.N_0xa180fbd502a03125(p0, p1, p2)
	return _in(0xA180FBD502A03125, p0, p1, p2, _r, _ri)
end

function Global.N_0xa19447d83294e29f(p0, p1, p2)
	return _in(0xA19447D83294E29F, p0, p1, p2, _r, _ri)
end

function Global.N_0xa197c35f73ac0f12(p0, p1, p2, p3)
	return _in(0xA197C35F73AC0F12, p0, p1, p2, p3)
end

function Global.N_0xa1a86055792fb249(p0)
	return _in(0xA1A86055792FB249, p0)
end

function Global.N_0xa1b0e6301e2e02a6(name, p1)
	return _in(0xA1B0E6301E2E02A6, _ts(name), p1)
end

function Global.N_0xa1b4052c2a3dcc1e()
	return _in(0xA1B4052C2A3DCC1E)
end

function Global.N_0xa1cfb35069d23c23(p0)
	return _in(0xA1CFB35069D23C23, p0)
end

function Global.N_0xa1eb5d029e0191d3(p0, p1, p2)
	return _in(0xA1EB5D029E0191D3, p0, p1, p2)
end

function Global.N_0xa1fbac56d38563e2(p0)
	return _in(0xA1FBAC56D38563E2, p0, _r, _ri)
end

function Global.N_0xa201a3d0ac087c37(p0)
	return _in(0xA201A3D0AC087C37, p0)
end

function Global.N_0xa20398536b7f1134(p0, p1, p2, p3, p4, p5)
	return _in(0xA20398536B7F1134, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xa2058154357726bb(p0, p1)
	return _in(0xA2058154357726BB, p0, p1)
end

function Global.N_0xa2091482ed42ef85(p0, p1)
	return _in(0xA2091482ED42EF85, p0, p1, _r, _ri)
end

function Global.N_0xa2116c1e4ed85c24(p0, p1)
	return _in(0xA2116C1E4ED85C24, p0, p1)
end

function Global.N_0xa218d2bbcaa7388c(p0, p1)
	return _in(0xA218D2BBCAA7388C, p0, p1, _r, _ri)
end

function Global.N_0xa21aa2f0c2180125(p0, p1)
	return _in(0xA21AA2F0C2180125, p0, p1)
end

function Global.N_0xa21af60c9f99ccc5()
	return _in(0xA21AF60C9F99CCC5)
end

function Global.N_0xa21e3bad0a42d199()
	return _in(0xA21E3BAD0A42D199, _r, _ri)
end

function Global.N_0xa22712e8471aa08e(p0, p1, p2)
	return _in(0xA22712E8471AA08E, p0, p1, p2)
end

function Global.N_0xa22c46f16359471c()
	return _in(0xA22C46F16359471C, _r, _ri)
end

function Global.N_0xa230a5dde12ed374(p0)
	return _in(0xA230A5DDE12ED374, p0)
end

function Global.N_0xa2323a2eae32a290(p0, p1, p2)
	return _in(0xA2323A2EAE32A290, p0, p1, p2)
end

function Global.N_0xa24c1d341c6e0d53(p0, p1, p2)
	return _in(0xA24C1D341C6E0D53, p0, p1, p2, _r, _ri)
end

function Global.N_0xa263adbbc8056214(p0, p1)
	return _in(0xA263ADBBC8056214, p0, p1)
end

function Global.N_0xa274f51ef7e34b95(p0, p1)
	return _in(0xA274F51EF7E34B95, p0, p1, _r, _ri)
end

function Global.N_0xa2837a5e21fb5a58(p0)
	return _in(0xA2837A5E21FB5A58, p0, _r, _ri)
end

function Global.N_0xa29fd00d45311eb7(p0, p1)
	return _in(0xA29FD00D45311EB7, p0, p1, _r, _ri)
end

function Global.N_0xa2a51869bded733b(p0, p1)
	return _in(0xA2A51869BDED733B, p0, p1, _r, _ri)
end

function Global.N_0xa2b18ff8d39f6d87(p0)
	return _in(0xA2B18FF8D39F6D87, p0)
end

function Global.N_0xa2b1c7ef759a63ce()
	return _in(0xA2B1C7EF759A63CE, _r, _ri)
end

function Global.N_0xa2b851605748ad0e()
	return _in(0xA2B851605748AD0E)
end

function Global.N_0xa2b8e47442c76cec(p0, p1)
	return _in(0xA2B8E47442C76CEC, p0, p1)
end

function Global.N_0xa2cac9def0195e6f(p0)
	return _in(0xA2CAC9DEF0195E6F, p0, _r, _ri)
end

function Global.N_0xa2d5a26208421426(p0)
	return _in(0xA2D5A26208421426, p0, _r, _ri)
end

function Global.N_0xa2db3c6270c122e3(p0, p1)
	return _in(0xA2DB3C6270C122E3, p0, p1, _r, _ri)
end

function Global.N_0xa2e2bea4e83f6270(p0)
	return _in(0xA2E2BEA4E83F6270, p0, _r, _ri)
end

function Global.N_0xa2f8b3b5fedfc100(p0, p1)
	return _in(0xA2F8B3B5FEDFC100, p0, p1)
end

function Global.N_0xa31013798fadcadc(p0, p1, p2)
	return _in(0xA31013798FADCADC, p0, p1, p2)
end

function Global.N_0xa31d350d66fa1855(p0)
	return _in(0xA31D350D66FA1855, p0, _r, _ri)
end

function Global.N_0xa31dafcdc33775e9()
	return _in(0xA31DAFCDC33775E9, _r, _ri)
end

function Global.N_0xa32b0b05eff75730()
	return _in(0xA32B0B05EFF75730)
end

function Global.N_0xa33914b00ca55756(p0, p1)
	return _in(0xA33914B00CA55756, p0, p1, _r, _ri)
end

function Global.N_0xa33f5069b0cb89b8()
	return _in(0xA33F5069B0CB89B8)
end

function Global.N_0xa342495f93b7b838(p0, p1)
	return _in(0xA342495F93B7B838, p0, p1)
end

function Global.N_0xa35e7bf20fa269e0(p0)
	return _in(0xA35E7BF20FA269E0, p0)
end

function Global.N_0xa3716a77dcf17424(p0, p1, p2)
	return _in(0xA3716A77DCF17424, p0, p1, p2)
end

function Global.N_0xa3791b915b8b84c6(p0, p1, p2, p3, p4, p5)
	return _in(0xA3791B915B8B84C6, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xa381de86ee170c4a(p0, p1, p2)
	return _in(0xA381DE86EE170C4A, p0, p1, p2, _r, _ri)
end

function Global.N_0xa3a8926951471c82()
	return _in(0xA3A8926951471C82)
end

function Global.N_0xa3a9299c4f2adb98(p0)
	return _in(0xA3A9299C4F2ADB98, p0)
end

function Global.N_0xa3bd6ff95e713ee5(p0, p1, p2)
	return _in(0xA3BD6FF95E713EE5, p0, p1, p2)
end

function Global.N_0xa3c53cde922bc78b(p0, p1)
	return _in(0xA3C53CDE922BC78B, p0, p1)
end

function Global.N_0xa3db37edf9a74635(p0, p1, p2, p3, p4)
	return _in(0xA3DB37EDF9A74635, p0, p1, p2, p3, p4)
end

function Global.N_0xa3eec0a5aff3fc5b(p0)
	return _in(0xA3EEC0A5AFF3FC5B, p0, _r, _ri)
end

function Global.N_0xa3f2149aa24f3d8e(p0, p1, p2)
	return _in(0xA3F2149AA24F3D8E, p0, p1, p2)
end

function Global.N_0xa405bf9f01960c16(p0)
	return _in(0xA405BF9F01960C16, p0)
end

function Global.N_0xa42dc7919159cccf(p0)
	return _in(0xA42DC7919159CCCF, p0)
end

function Global.N_0xa42edf1e88734a7e()
	return _in(0xA42EDF1E88734A7E, _r, _ri)
end

function Global.N_0xa4454592dcf7c992(p0)
	return _in(0xA4454592DCF7C992, p0, _r, _ri)
end

function Global.N_0xa4484173759749b1()
	return _in(0xA4484173759749B1)
end

function Global.N_0xa44d65e6c624526f(p0)
	return _in(0xA44D65E6C624526F, p0, _r, _ri)
end

function Global.N_0xa454d234e45bb6e5(p0, p1)
	return _in(0xA454D234E45BB6E5, p0, p1, _r, _ri)
end

function Global.N_0xa4550fe9c512e3dd(p0)
	return _in(0xA4550FE9C512E3DD, p0, _r, _ri)
end

function Global.N_0xa45884db10ec7ee3(p0, p1, p2, p3)
	return _in(0xA45884DB10EC7EE3, p0, p1, p2, p3)
end

function Global.N_0xa46e98bdc407e23d(p0, p1, p2, p3)
	return _in(0xA46E98BDC407E23D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xa46fd001d1be896c()
	return _in(0xA46FD001D1BE896C, _r, _s)
end

function Global.N_0xa47d48d06aa5a188()
	return _in(0xA47D48D06AA5A188, _r, _ri)
end

function Global.N_0xa486008892065fb9(p0, p1)
	return _in(0xA486008892065FB9, p0, p1, _r, _ri)
end

function Global.N_0xa48e4801debdf7e4(p0, p1)
	return _in(0xA48E4801DEBDF7E4, p0, p1)
end

function Global.N_0xa49d6d503e3ea847(p0, p1, p2, p3, p4)
	return _in(0xA49D6D503E3EA847, p0, p1, p2, p3, p4)
end

function Global.N_0xa4a4359320345b34(p0)
	return _in(0xA4A4359320345B34, p0, _r, _ri)
end

function Global.N_0xa4ac05b1a364ebc5(p0, p1, p2)
	return _in(0xA4AC05B1A364EBC5, p0, p1, p2, _r, _ri)
end

function Global.N_0xa4d3a1c008f250df(p0)
	return _in(0xA4D3A1C008F250DF, p0)
end

function Global.N_0xa4dcb3f0dd7488bd(p0, p1, p2, p3, p4)
	return _in(0xA4DCB3F0DD7488BD, p0, p1, p2, p3, p4)
end

function Global.N_0xa520c7b05fa4eb2a(p0, p1)
	return _in(0xA520C7B05FA4EB2A, p0, p1)
end

function Global.N_0xa53c8d7d0f8c74d0(p0)
	return _in(0xA53C8D7D0F8C74D0, p0)
end

function Global.N_0xa54000d4bfd90bde(p0)
	return _in(0xA54000D4BFD90BDE, p0, _r, _ri)
end

function Global.N_0xa54d643d0773eb65(p0, p1, p2)
	return _in(0xA54D643D0773EB65, p0, p1, p2)
end

function Global.N_0xa565fac215cbc77d()
	return _in(0xA565FAC215CBC77D)
end

function Global.N_0xa586fbeb32a53dbb()
	return _in(0xA586FBEB32A53DBB, _r, _ri)
end

function Global.N_0xa5950e16b8f31052(p0, p1, p2)
	return _in(0xA5950E16B8F31052, p0, p1, p2)
end

function Global.N_0xa59590050f80ff2e(p0, p1, p2, p3)
	return _in(0xA59590050F80FF2E, p0, p1, p2, p3)
end

function Global.N_0xa59d1997ecd99f0a()
	return _in(0xA59D1997ECD99F0A)
end

function Global.N_0xa5bae410b03e7371(p0, p1, p2, p3)
	return _in(0xA5BAE410B03E7371, p0, p1, p2, p3)
end

function Global.N_0xa5bd585005efcad4(p0)
	return _in(0xA5BD585005EFCAD4, p0, _r, _ri)
end

function Global.N_0xa622e66eee92a08d(p0)
	return _in(0xA622E66EEE92A08D, p0, _r, _ri)
end

function Global.N_0xa62bbaae67a05bb0(p0)
	return _in(0xA62BBAAE67A05BB0, p0, _r, _ri)
end

function Global.N_0xa635c11b8c44afc2()
	return _in(0xA635C11B8C44AFC2, _r, _ri)
end

function Global.N_0xa63cd20f19b961ab(p0, p1, p2)
	return _in(0xA63CD20F19B961AB, p0, p1, p2, _r, _ri)
end

function Global.N_0xa63e4f050f20021f()
	return _in(0xA63E4F050F20021F)
end

function Global.N_0xa63fcad3a6fec6d2(p0, p1)
	return _in(0xA63FCAD3A6FEC6D2, p0, p1)
end

function Global.N_0xa657ec9dbc6cc900(p0)
	return _in(0xA657EC9DBC6CC900, p0)
end

function Global.N_0xa67f0b039d9cd513()
	return _in(0xA67F0B039D9CD513, _r, _ri)
end

function Global.N_0xa6847bba4fcdd13f(p0, p1)
	return _in(0xA6847BBA4FCDD13F, p0, p1)
end

function Global.N_0xa691c10054275290(p0, p1, p2)
	return _in(0xA691C10054275290, p0, p1, p2)
end

function Global.N_0xa69899995997a63b(p0, p1)
	return _in(0xA69899995997A63B, p0, p1)
end

function Global.N_0xa6a3a3f96b8b030e()
	return _in(0xA6A3A3F96B8B030E, _r, _ri)
end

function Global.N_0xa6a76d666a281f2d(p0, p1)
	return _in(0xA6A76D666A281F2D, p0, p1)
end

function Global.N_0xa6a9712955f53d9c(p0)
	return _in(0xA6A9712955F53D9C, p0, _r, _ri)
end

function Global.N_0xa6aa9f56bc6cff58(p0, p1)
	return _in(0xA6AA9F56BC6CFF58, p0, p1)
end

function Global.N_0xa6ac35db4a7957a8(p0)
	return _in(0xA6AC35DB4A7957A8, p0)
end

function Global.N_0xa6bf569956c60a60(p0, p1)
	return _in(0xA6BF569956C60A60, p0, p1, _r, _ri)
end

function Global.N_0xa6c0787443c9583e(p0)
	return _in(0xA6C0787443C9583E, p0, _r, _ri)
end

function Global.N_0xa6c6a4adb3bac409(p0)
	return _in(0xA6C6A4ADB3BAC409, p0, _r, _ri)
end

function Global.N_0xa6d6f03095c88f59(p0)
	return _in(0xA6D6F03095C88F59, p0)
end

function Global.N_0xa6e210fb4283b767(p0, p1, p2)
	return _in(0xA6E210FB4283B767, p0, p1, p2)
end

function Global.N_0xa6e6a66fc4ca4224(p0)
	return _in(0xA6E6A66FC4CA4224, p0)
end

function Global.N_0xa6ef0c54a3443e70(p0, p1)
	return _in(0xA6EF0C54A3443E70, p0, p1, _r, _ri)
end

function Global.N_0xa6f1baabff6ad7b9(p0)
	return _in(0xA6F1BAABFF6AD7B9, p0)
end

function Global.N_0xa6f4216ab10eb08e(p0, p1, p2, p3)
	return _in(0xA6F4216AB10EB08E, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xa6f67bec53379a32(p0, p1)
	return _in(0xA6F67BEC53379A32, p0, p1)
end

function Global.N_0xa710dc5d25f8b942(p0, p1)
	return _in(0xA710DC5D25F8B942, p0, p1, _r, _ri)
end

function Global.N_0xa72773c3134f9a57(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xA72773C3134F9A57, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xa72b1bf3857b94d7(p0, p1)
	return _in(0xA72B1BF3857B94D7, p0, p1)
end

function Global.N_0xa7309ac0dcf6d950(p0, p1)
	return _in(0xA7309AC0DCF6D950, p0, p1, _r, _ri)
end

function Global.N_0xa73f50e8796150d5(p0, p1)
	return _in(0xA73F50E8796150D5, p0, p1)
end

function Global.N_0xa7479fb665361edb(p0, p1)
	return _in(0xA7479FB665361EDB, p0, p1)
end

function Global.N_0xa762c9d6cf165e0d(p0, p1, p2, p3)
	return _in(0xA762C9D6CF165E0D, p0, p1, p2, p3)
end

function Global.N_0xa769d753922b031b(p0, p1, p2)
	return _in(0xA769D753922B031B, p0, p1, p2)
end

function Global.N_0xa77fa7be9312f8c0(p0)
	return _in(0xA77FA7BE9312F8C0, p0)
end

function Global.N_0xa7966807953a18ee(p0, p1)
	return _in(0xA7966807953A18EE, p0, p1)
end

function Global.N_0xa7a57e89e965d839(p0, p1)
	return _in(0xA7A57E89E965D839, p0, p1)
end

function Global.N_0xa7a806677f8de138(p0)
	return _in(0xA7A806677F8DE138, p0)
end

function Global.N_0xa7dc9266ed6a4e51(p0)
	return _in(0xA7DC9266ED6A4E51, p0)
end

function Global.N_0xa7e51b53309eac97(p0)
	return _in(0xA7E51B53309EAC97, p0, _r, _ri)
end

function Global.N_0xa80ff73f772acf6a(p0, p1)
	return _in(0xA80FF73F772ACF6A, p0, p1)
end

function Global.N_0xa8120ebeaf290c7a(p0)
	return _in(0xA8120EBEAF290C7A, p0, _r, _ri)
end

function Global.N_0xa81d24ae0af99a5e(p0)
	return _in(0xA81D24AE0AF99A5E, p0, _r, _ri)
end

function Global.N_0xa82964b9d8d6a983()
	return _in(0xA82964B9D8D6A983, _r, _ri)
end

function Global.N_0xa8432a14d4dc2101(p0, p1, p2)
	return _in(0xA8432A14D4DC2101, p0, p1, p2)
end

function Global.N_0xa844feb5c22c2c74()
	return _in(0xA844FEB5C22C2C74)
end

function Global.N_0xa8452dd321607029(p0, p1)
	return _in(0xA8452DD321607029, p0, p1, _r, _rv)
end

function Global.N_0xa86b0ee9b39d15d6(p0)
	return _in(0xA86B0EE9B39D15D6, p0)
end

function Global.N_0xa881f5c77a560906(p0)
	return _in(0xA881F5C77A560906, p0)
end

function Global.N_0xa88e1d7fa1e20080(p0)
	return _in(0xA88E1D7FA1E20080, p0, _r, _ri)
end

function Global.N_0xa88e215ceb0435c0(p0, p1, p2, p3, p4, p5)
	return _in(0xA88E215CEB0435C0, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xa8a74aa79fb67159(name, p1)
	return _in(0xA8A74AA79FB67159, _ts(name), p1)
end

function Global.N_0xa8a95cecb1906ea2(p0, p1)
	return _in(0xA8A95CECB1906EA2, p0, p1)
end

function Global.N_0xa8ba0bae0173457b(p0, p1)
	return _in(0xA8BA0BAE0173457B, p0, p1, _r, _ri)
end

function Global.N_0xa8c406c2a56edc16(p0)
	return _in(0xA8C406C2A56EDC16, p0)
end

--- nullsub, doesn't do anything
function Global.N_0xa8d970d8a72640a6()
	return _in(0xA8D970D8A72640A6, _r, _ri)
end

function Global.N_0xa9016536015de29d(p0, p1)
	return _in(0xA9016536015DE29D, p0, p1, _r, _ri)
end

function Global.N_0xa90684ed185ccb4b(p0, p1, p2, p3)
	return _in(0xA90684ED185CCB4B, p0, p1, p2, p3)
end

function Global.N_0xa911ee21edf69daf(p0)
	return _in(0xA911EE21EDF69DAF, p0, _r, _ri)
end

function Global.N_0xa91e6cf94404e8c9(p0)
	return _in(0xA91E6CF94404E8C9, p0)
end

function Global.N_0xa92450b5ae687aaf(p0)
	return _in(0xA92450B5AE687AAF, p0, _r, _ri)
end

--- nullsub, doesn't do anything
-- @param p0 :
function Global.N_0xa9342743b634a462(p0)
	return _in(0xA9342743B634A462, p0)
end

function Global.N_0xa93f925f1942e434(p0, p1)
	return _in(0xA93F925F1942E434, p0, p1)
end

function Global.N_0xa94ece191d90637a()
	return _in(0xA94ECE191D90637A, _r, _ri)
end

function Global.N_0xa95470da137587f5(p0)
	return _in(0xA95470DA137587F5, p0)
end

function Global.N_0xa96619fe85159ed2(p0)
	return _in(0xA96619FE85159ED2, p0, _r, _ri)
end

function Global.N_0xa967d6a8ed2d713b(p0, p1)
	return _in(0xA967D6A8ED2D713B, p0, p1)
end

function Global.N_0xa97ee5e4589fcf5a(p0, p1)
	return _in(0xA97EE5E4589FCF5A, p0, p1, _r, _ri)
end

function Global.N_0xa9c28516a6dc9d56(p0, p1, p2, p3, p4, p5)
	return _in(0xA9C28516A6DC9D56, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xa9c3b0f746375162(p0, p1, p2)
	return _in(0xA9C3B0F746375162, p0, p1, p2, _r, _ri)
end

function Global.N_0xa9cc7856d52dbd25(p0)
	return _in(0xA9CC7856D52DBD25, p0, _r, _ri)
end

function Global.N_0xa9ceae8d6637fbad(p0)
	return _in(0xA9CEAE8D6637FBAD, p0)
end

function Global.N_0xa9e185d498b9ac67(p0, p1)
	return _in(0xA9E185D498B9AC67, p0, p1, _r, _ri)
end

function Global.N_0xa9e6d8f2ddfc4db9(p0, p1)
	return _in(0xA9E6D8F2DDFC4DB9, p0, p1)
end

function Global.N_0xa9e7672f8c6c6f74(p0)
	return _in(0xA9E7672F8C6C6F74, p0, _r, _ri)
end

function Global.N_0xa9eb4d606076615d(p0)
	return _in(0xA9EB4D606076615D, p0, _r, _ri)
end

function Global.N_0xa9ef4ad10bdddb57(p0, p1, p2)
	return _in(0xA9EF4AD10BDDDB57, p0, p1, p2)
end

function Global.N_0xaa03f130a637d923(p0)
	return _in(0xAA03F130A637D923, p0)
end

function Global.N_0xaa0af6025160243a(p0, p1)
	return _in(0xAA0AF6025160243A, p0, p1)
end

function Global.N_0xaa235e2f2c09e952(p0)
	return _in(0xAA235E2F2C09E952, p0, _r, _ri)
end

function Global.N_0xaa35fd9abab490a3(p0)
	return _in(0xAA35FD9ABAB490A3, p0, _r, _ri)
end

function Global.N_0xaa5a52204e077883(p0, p1)
	return _in(0xAA5A52204E077883, p0, p1)
end

function Global.N_0xaa6c49ae90a32299(p0, p1)
	return _in(0xAA6C49AE90A32299, p0, p1)
end

function Global.N_0xaa9ee2aafc717623(p0, p1, p2, p3, p4, p5)
	return _in(0xAA9EE2AAFC717623, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xaa9f048dcf69b6dc(p0)
	return _in(0xAA9F048DCF69B6DC, p0, _r, _ri)
end

function Global.N_0xaaa92b631b13f614(p0)
	return _in(0xAAA92B631B13F614, p0, _r, _ri)
end

function Global.N_0xaaacb74442c1bed3(p0)
	return _in(0xAAACB74442C1BED3, p0, _r, _ri)
end

function Global.N_0xaaacf33cbf9b990a(p0, p1)
	return _in(0xAAACF33CBF9B990A, p0, p1)
end

function Global.N_0xaab050da48b57978(p0, p1, p2, p3, p4)
	return _in(0xAAB050DA48B57978, p0, p1, p2, p3, p4)
end

function Global.N_0xaab0fe202e9fc9f0(p0, p1)
	return _in(0xAAB0FE202E9FC9F0, p0, p1, _r, _ri)
end

function Global.N_0xaab86462966168ce(p0, p1)
	return _in(0xAAB86462966168CE, p0, p1, _r, _ri)
end

function Global.N_0xaac0ee3b4999abb5(p0, p1)
	return _in(0xAAC0EE3B4999ABB5, p0, p1)
end

function Global.N_0xaaded99a6b268a27()
	return _in(0xAADED99A6B268A27, _r, _ri)
end

function Global.N_0xaaed694ce814817f(p0)
	return _in(0xAAED694CE814817F, p0, _r, _ri)
end

function Global.N_0xab0d553fe20a6e25(p0)
	return _in(0xAB0D553FE20A6E25, p0)
end

function Global.N_0xab26deee120fd3fd(p0, p1)
	return _in(0xAB26DEEE120FD3FD, p0, p1)
end

function Global.N_0xab3773e7aa1e9dcc(p0)
	return _in(0xAB3773E7AA1E9DCC, p0, _r, _ri)
end

function Global.N_0xab3d3f45436db1d8(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xAB3D3F45436DB1D8, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xab43d1c80b5e9500(p0)
	return _in(0xAB43D1C80B5E9500, p0)
end

function Global.N_0xab591ae6b48b913e(p0, p1)
	return _in(0xAB591AE6B48B913E, p0, p1)
end

function Global.N_0xab5f12746a099a0e(p0, p1)
	return _in(0xAB5F12746A099A0E, p0, p1, _r, _ri)
end

function Global.N_0xab643407d0b26f07(p0, p1, p2, p3, p4)
	return _in(0xAB643407D0B26F07, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xab6a04cec428258b(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0xAB6A04CEC428258B, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _fi(p12) --[[ may be optional ]], _r)
end

function Global.N_0xab72c67163dc4db4(p0, p1)
	return _in(0xAB72C67163DC4DB4, p0, p1)
end

function Global.N_0xabc18a28bad4b46f(p0, p1)
	return _in(0xABC18A28BAD4B46F, p0, p1, _r, _ri)
end

function Global.N_0xabdb4863d3d72021(p0, p1, p2, p3, p4)
	return _in(0xABDB4863D3D72021, p0, p1, p2, p3, p4)
end

function Global.N_0xac22aa6df4d1c1de(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xAC22AA6DF4D1C1DE, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xac355980681a7f89(p0)
	return _in(0xAC355980681A7F89, p0)
end

function Global.N_0xac37644a538f7524(p0)
	return _in(0xAC37644A538F7524, p0)
end

function Global.N_0xac5045ab7f1a34fd(p0)
	return _in(0xAC5045AB7F1A34FD, p0, _r, _ri)
end

function Global.N_0xac6153a0722f524c()
	return _in(0xAC6153A0722F524C, _r, _ri)
end

function Global.N_0xac67098a1e54abb0(p0, p1, p2)
	return _in(0xAC67098A1E54ABB0, p0, p1, p2)
end

function Global.N_0xac77757c05de9e5a(p0)
	return _in(0xAC77757C05DE9E5A, p0)
end

function Global.N_0xac84686c06184b0d(p0, p1)
	return _in(0xAC84686C06184B0D, p0, p1, _r, _ri)
end

function Global.N_0xac8fab22a914ae34(p0, p1, p2, p3)
	return _in(0xAC8FAB22A914AE34, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xac959ab99aaf3d9f()
	return _in(0xAC959AB99AAF3D9F, _r, _ri)
end

function Global.N_0xac9ae68f0a463752(p0)
	return _in(0xAC9AE68F0A463752, p0)
end

function Global.N_0xaca45ddcef6071c4(p0, p1)
	return _in(0xACA45DDCEF6071C4, p0, p1)
end

function Global.N_0xaca7fb30269096d4(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xACA7FB30269096D4, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0xacb7e1418a8b6e32(p0)
	return _in(0xACB7E1418A8B6E32, p0, _r, _ri)
end

function Global.N_0xacc44768af229042()
	return _in(0xACC44768AF229042)
end

function Global.N_0xacd4f9831dfad7f5(p0)
	return _in(0xACD4F9831DFAD7F5, p0, _r, _ri)
end

--- nullsub, doesn't do anything
function Global.N_0xacf9cb705befa8cb()
	return _in(0xACF9CB705BEFA8CB, _r, _ri)
end

function Global.N_0xad03b03737ce6810(p0)
	return _in(0xAD03B03737CE6810, p0, _r, _ri)
end

function Global.N_0xad17a18215dd23d6(p0, p1, p2)
	return _in(0xAD17A18215DD23D6, p0, p1, p2, _r, _ri)
end

function Global.N_0xad22ab64fa428df3(p0)
	return _in(0xAD22AB64FA428DF3, p0)
end

function Global.N_0xad3330e3c3e98007(p0, p1)
	return _in(0xAD3330E3C3E98007, p0, p1)
end

function Global.N_0xad3e07c37a7c1adc(name, p1)
	return _in(0xAD3E07C37A7C1ADC, _ts(name), p1)
end

function Global.N_0xad401c63158acbaa(p0)
	return _in(0xAD401C63158ACBAA, p0, _r, _ri)
end

function Global.N_0xad44856a1cd29635(p0, p1, p2)
	return _in(0xAD44856A1CD29635, p0, p1, p2)
end

function Global.N_0xad74c22a541ab987(p0)
	return _in(0xAD74C22A541AB987, p0)
end

function Global.N_0xad8f2424c6e1e3a8(p0)
	return _in(0xAD8F2424C6E1E3A8, p0)
end

function Global.N_0xadb56322eedfbdc9(p0, p1, p2)
	return _in(0xADB56322EEDFBDC9, p0, p1, p2, _r, _ri)
end

function Global.N_0xadc45010bc17af0e(p0, p1)
	return _in(0xADC45010BC17AF0E, p0, p1)
end

function Global.N_0xadd31a5c7a5faa73(p0, p1)
	return _in(0xADD31A5C7A5FAA73, p0, p1)
end

function Global.N_0xaddd1e7c0ecf7d95(p0, p1)
	return _in(0xADDD1E7C0ECF7D95, p0, p1, _r, _ri)
end

function Global.N_0xadf1d53f3b1fe0a7(p0, p1, p2, p3)
	return _in(0xADF1D53F3B1FE0A7, p0, p1, p2, p3)
end

function Global.N_0xae00387e53b1e9fc()
	return _in(0xAE00387E53B1E9FC)
end

function Global.N_0xae4bcc79c587ebbf(p0, p1, p2)
	return _in(0xAE4BCC79C587EBBF, p0, p1, p2)
end

function Global.N_0xae5ada4fe3e21adc(p0)
	return _in(0xAE5ADA4FE3E21ADC, p0, _r, _ri)
end

function Global.N_0xae6004120c18df97(p0, p1, p2)
	return _in(0xAE6004120C18DF97, p0, p1, p2)
end

function Global.N_0xae637bb8ef017875(p0, p1)
	return _in(0xAE637BB8EF017875, p0, p1)
end

function Global.N_0xae693ec3a178f6c2(p0)
	return _in(0xAE693EC3A178F6C2, p0)
end

function Global.N_0xae6ada8fe7e84acc(p0, p1)
	return _in(0xAE6ADA8FE7E84ACC, p0, p1, _r, _ri)
end

function Global.N_0xae6b68a83abbe7c0(p0)
	return _in(0xAE6B68A83ABBE7C0, p0)
end

function Global.N_0xae6de22de0ed4554(p0, p1)
	return _in(0xAE6DE22DE0ED4554, p0, p1)
end

function Global.N_0xae7bf7ca9e4ba48d(p0)
	return _in(0xAE7BF7CA9E4BA48D, p0)
end

function Global.N_0xae7e66a61e7c17a5(p0, p1)
	return _in(0xAE7E66A61E7C17A5, p0, p1)
end

function Global.N_0xaeb97d84cdf3c00b(p0, p1)
	return _in(0xAEB97D84CDF3C00B, p0, p1)
end

function Global.N_0xaec5f0119867e457(p0, p1)
	return _in(0xAEC5F0119867E457, p0, p1, _r, _ri)
end

function Global.N_0xaedf1bc1c133d6e3()
	return _in(0xAEDF1BC1C133D6E3, _r, _ri)
end

function Global.N_0xaee6c800e124cfe1(p0, p1)
	return _in(0xAEE6C800E124CFE1, p0, p1)
end

function Global.N_0xaf041c10756c30fb(p0, p1, p2, p3)
	return _in(0xAF041C10756C30FB, p0, p1, p2, p3)
end

function Global.N_0xaf2ef28ce3084505(p0, p1, p2, p3)
	return _in(0xAF2EF28CE3084505, p0, p1, p2, p3)
end

function Global.N_0xaf341032e97fb061(p0, p1)
	return _in(0xAF341032E97FB061, p0, p1)
end

function Global.N_0xaf3a84c7de6a1dc5(p0, p1)
	return _in(0xAF3A84C7DE6A1DC5, p0, p1)
end

function Global.N_0xaf4d239b8903fcbe()
	return _in(0xAF4D239B8903FCBE)
end

function Global.N_0xaf530e56505d1bd6(p0)
	return _in(0xAF530E56505D1BD6, p0, _r, _ri)
end

function Global.N_0xaf61b3cd8c3b82c3(p0)
	return _in(0xAF61B3CD8C3B82C3, p0, _r, _ri)
end

function Global.N_0xaf6e67d073d2dce2()
	return _in(0xAF6E67D073D2DCE2, _r, _ri)
end

function Global.N_0xaf787e081ac4a8ee(p0)
	return _in(0xAF787E081AC4A8EE, p0, _r, _ri)
end

--- SET_ENTITY_LO*
-- @param entity :
-- @param p1 :
-- @param p2 :
-- @param p3 :
function Global.N_0xaf7f3099b9feb535(entity, p1, p2, p3)
	return _in(0xAF7F3099B9FEB535, entity, p1, p2, p3)
end

function Global.N_0xaf9d167a5656d6a6(p0, p1)
	return _in(0xAF9D167A5656D6A6, p0, p1, _r, _ri)
end

function Global.N_0xafa14f98327791ce(p0)
	return _in(0xAFA14F98327791CE, p0, _r, _ri)
end

function Global.N_0xafa87a7d41ee346a(p0)
	return _in(0xAFA87A7D41EE346A, p0)
end

function Global.N_0xafd3599a3cc5637d()
	return _in(0xAFD3599A3CC5637D, _r, _ri)
end

function Global.N_0xafe2ae66f6251c66(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xAFE2AE66F6251C66, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xaff2fd8add927585()
	return _in(0xAFF2FD8ADD927585)
end

function Global.N_0xaff5be9ba496ce40(p0, p1, p2, p3, p4)
	return _in(0xAFF5BE9BA496CE40, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xaffd0ccf31f469b8(p0)
	return _in(0xAFFD0CCF31F469B8, p0, _r, _ri)
end

function Global.N_0xb00ce33465b5406d(p0, p1)
	return _in(0xB00CE33465B5406D, p0, p1, _r, _ri)
end

function Global.N_0xb03140014aca6c40(p0, p1)
	return _in(0xB03140014ACA6C40, p0, p1)
end

function Global.N_0xb032c085d9a03907()
	return _in(0xB032C085D9A03907)
end

function Global.N_0xb03944057fd735ba(p0, p1, p2)
	return _in(0xB03944057FD735BA, p0, p1, p2)
end

function Global.N_0xb04b69cf277d15c0(p0)
	return _in(0xB04B69CF277D15C0, p0, _r, _ri)
end

function Global.N_0xb059d7bd3d78c16f(p0, p1)
	return _in(0xB059D7BD3D78C16F, p0, p1, _r, _ri)
end

function Global.N_0xb05cc690cde8a4a9(p0, p1)
	return _in(0xB05CC690CDE8A4A9, p0, p1, _r, _ri)
end

function Global.N_0xb06f5f1def417216(p0, p1, p2, p3)
	return _in(0xB06F5F1DEF417216, p0, p1, p2, p3)
end

function Global.N_0xb07d3185e11657a5(entity)
	return _in(0xB07D3185E11657A5, entity, _r)
end

function Global.N_0xb086c8c0f5701d14(p0)
	return _in(0xB086C8C0F5701D14, p0, _r, _ri)
end

function Global.N_0xb08c4fa25bc29db9(p0)
	return _in(0xB08C4FA25BC29DB9, p0)
end

function Global.N_0xb096547d61868254(p0)
	return _in(0xB096547D61868254, p0, _r, _ri)
end

function Global.N_0xb0b2c6d170b0e8e5(p0)
	return _in(0xB0B2C6D170B0E8E5, p0, _r, _ri)
end

function Global.N_0xb0e8599243b3f568(p0)
	return _in(0xB0E8599243B3F568, p0, _r, _ri)
end

function Global.N_0xb0fb9b196a3d13f0(p0, p1, p2)
	return _in(0xB0FB9B196A3D13F0, p0, p1, p2)
end

function Global.N_0xb112b9262ec29c20(p0, p1)
	return _in(0xB112B9262EC29C20, p0, p1, _r, _ri)
end

function Global.N_0xb131e686bd97b3f8()
	return _in(0xB131E686BD97B3F8)
end

function Global.N_0xb138ca787f3dd858(p0, p1, p2)
	return _in(0xB138CA787F3DD858, p0, p1, p2)
end

function Global.N_0xb15cd2f9932c9ab5(p0)
	return _in(0xB15CD2F9932C9AB5, p0, _r, _ri)
end

function Global.N_0xb16223cb7da965f0(p0)
	return _in(0xB16223CB7DA965F0, p0, _r, _ri)
end

function Global.N_0xb16c780c51e51e2b(p0)
	return _in(0xB16C780C51E51E2B, p0, _r, _ri)
end

function Global.N_0xb16fc7b364d86585()
	return _in(0xB16FC7B364D86585)
end

function Global.N_0xb173599d61faeb31()
	return _in(0xB173599D61FAEB31)
end

function Global.N_0xb18fec133c7c6c69(p0)
	return _in(0xB18FEC133C7C6C69, p0, _r, _ri)
end

function Global.N_0xb190bca3f4042f95(p0, p1, p2, p3)
	return _in(0xB190BCA3F4042F95, p0, p1, p2, p3)
end

function Global.N_0xb1964a83b345b4ab(p0)
	return _in(0xB1964A83B345B4AB, p0, _r, _ri)
end

function Global.N_0xb1a196bafe650402(p0, p1)
	return _in(0xB1A196BAFE650402, p0, p1)
end

function Global.N_0xb1f6665aa54dcd5c(p0)
	return _in(0xB1F6665AA54DCD5C, p0, _r, _ri)
end

function Global.N_0xb204bf9f30298d77(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xB204BF9F30298D77, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xb213d2a560b2e48b(p0, p1, p2)
	return _in(0xB213D2A560B2E48B, p0, p1, p2, _r, _ri)
end

function Global.N_0xb219612b5568e9ec(p0)
	return _in(0xB219612B5568E9EC, p0, _r, _ri)
end

function Global.N_0xb223249b7798eeed(p0, p1, p2, p3)
	return _in(0xB223249B7798EEED, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xb22b1d9f74095382(p0)
	return _in(0xB22B1D9F74095382, p0)
end

function Global.N_0xb22f05732f72f70c(p0)
	return _in(0xB22F05732F72F70C, p0)
end

function Global.N_0xb249ebcb30dd88e0(p0, p1, p2)
	return _in(0xB249EBCB30DD88E0, p0, p1, p2, _r, _ri)
end

function Global.N_0xb25b5a375be5be26(p0, p1)
	return _in(0xB25B5A375BE5BE26, p0, p1)
end

function Global.N_0xb25e57fc8e37114d(p0)
	return _in(0xB25E57FC8E37114D, p0, _r, _ri)
end

function Global.N_0xb285ad0ec870b2df(p0, p1)
	return _in(0xB285AD0EC870B2DF, p0, p1)
end

function Global.N_0xb28894cd7408bd0c()
	return _in(0xB28894CD7408BD0C, _r, _ri)
end

function Global.N_0xb2920b9760f0f36b(p0, p1, p2)
	return _in(0xB2920B9760F0F36B, p0, p1, p2, _r, _ri)
end

function Global.N_0xb292203008ebbaac(p0)
	return _in(0xB292203008EBBAAC, p0, _r, _ri)
end

function Global.N_0xb29c553ba582d09e(p0, p1, p2, p3)
	return _in(0xB29C553BA582D09E, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xb2a38826e5886e83(p0, p1)
	return _in(0xB2A38826E5886E83, p0, p1)
end

function Global.N_0xb2aff10216defa2f(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xB2AFF10216DEFA2F, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0xb2b42607f7867576(p0, p1, p2)
	return _in(0xB2B42607F7867576, p0, p1, p2, _r, _ri)
end

function Global.N_0xb2cea5105aac8dde(p0)
	return _in(0xB2CEA5105AAC8DDE, p0, _r, _ri)
end

function Global.N_0xb2de3aebe31150e2(p0, p1)
	return _in(0xB2DE3AEBE31150E2, p0, p1, _r, _ri)
end

function Global.N_0xb2f47a1afdfcc595(p0, p1)
	return _in(0xB2F47A1AFDFCC595, p0, p1)
end

function Global.N_0xb331d8a73f9d2bdf(p0, p1)
	return _in(0xB331D8A73F9D2BDF, p0, p1, _r, _ri)
end

function Global.N_0xb33a604345f58202(p0)
	return _in(0xB33A604345F58202, p0, _r, _ri)
end

function Global.N_0xb346c85d49cc998e(p0, p1)
	return _in(0xB346C85D49CC998E, p0, p1, _r, _ri)
end

function Global.N_0xb34a6009a0db80b8(p0)
	return _in(0xB34A6009A0DB80B8, p0)
end

function Global.N_0xb35370d5353995cb(p0, p1, p2)
	return _in(0xB35370D5353995CB, p0, p1, p2)
end

function Global.N_0xb36d3ec70963be60(p0, p1)
	return _in(0xB36D3EC70963BE60, p0, p1, _r, _ri)
end

function Global.N_0xb389289f031f059a()
	return _in(0xB389289F031F059A, _r, _ri)
end

function Global.N_0xb38a29ccd5447783(p0, p1, p2)
	return _in(0xB38A29CCD5447783, p0, p1, p2)
end

function Global.N_0xb38c256498748413()
	return _in(0xB38C256498748413)
end

function Global.N_0xb395a44a0c7ca615(p0, p1, p2)
	return _in(0xB395A44A0C7CA615, p0, p1, p2, _r, _ri)
end

function Global.N_0xb3b1546d23df8de1(p0, p1, p2, p3, p4)
	return _in(0xB3B1546D23DF8DE1, p0, p1, p2, p3, p4)
end

function Global.N_0xb3e8841f6bdaf83e()
	return _in(0xB3E8841F6BDAF83E)
end

function Global.N_0xb3f2829907403c13()
	return _in(0xB3F2829907403C13, _r, _ri)
end

function Global.N_0xb3fb80a32bae3065(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xB3FB80A32BAE3065, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0xb40ea9e0d2e2f7f3(p0, p1)
	return _in(0xB40EA9E0D2E2F7F3, p0, p1)
end

function Global.N_0xb4158c8c9a3b5dce(p0, p1, p2, p3)
	return _in(0xB4158C8C9A3B5DCE, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xb4241ad8f5aee9ed(p0)
	return _in(0xB4241AD8F5AEE9ED, p0, _r, _ri)
end

function Global.N_0xb427911ea6dffef3(p0, p1)
	return _in(0xB427911EA6DFFEF3, p0, p1)
end

function Global.N_0xb429f58803d285b1(p0, p1)
	return _in(0xB429F58803D285B1, p0, p1, _r, _ri)
end

function Global.N_0xb42c87521d1bdd2f(p0, p1, p2, p3)
	return _in(0xB42C87521D1BDD2F, p0, p1, p2, p3)
end

function Global.N_0xb440f4e35393fc39(p0, p1)
	return _in(0xB440F4E35393FC39, p0, p1)
end

function Global.N_0xb4411d4d6b81438e()
	return _in(0xB4411D4D6B81438E, _r, _ri)
end

function Global.N_0xb462d69d406a2602(p0)
	return _in(0xB462D69D406A2602, p0, _r, _ri)
end

function Global.N_0xb469cfd9e065eb99(p0, p1)
	return _in(0xB469CFD9E065EB99, p0, p1)
end

function Global.N_0xb48050d326e9a2f3(p0)
	return _in(0xB48050D326E9A2F3, p0, _r, _ri)
end

function Global.N_0xb4a25351d79b444c(p0)
	return _in(0xB4A25351D79B444C, p0, _r, _ri)
end

function Global.N_0xb4b7c92fce7347b7(p0)
	return _in(0xB4B7C92FCE7347B7, p0)
end

function Global.N_0xb4c71ba9cab097bd(p0, p1, p2, p3, p4)
	return _in(0xB4C71BA9CAB097BD, p0, p1, p2, p3, p4)
end

function Global.N_0xb520dbda7fcf573f(p0)
	return _in(0xB520DBDA7FCF573F, p0, _r, _ri)
end

function Global.N_0xb527099d1e1eed49(p0, p1, p2)
	return _in(0xB527099D1E1EED49, p0, p1, p2, _r, _ri)
end

function Global.N_0xb56d41a694e42e86(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xB56D41A694E42E86, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xb5c4b18b12a2af23(p0, p1)
	return _in(0xB5C4B18B12A2AF23, p0, p1, _r, _ri)
end

function Global.N_0xb5ded7b65c604fdf(p0)
	return _in(0xB5DED7B65C604FDF, p0, _r, _ri)
end

function Global.N_0xb5e2eda2135e0fa1(p0, p1, p2)
	return _in(0xB5E2EDA2135E0FA1, p0, p1, p2, _r, _ri)
end

function Global.N_0xb5ef6fef2dc9ebed(interior)
	return _in(0xB5EF6FEF2DC9EBED, interior, _r, _ri)
end

function Global.N_0xb60c9f9ed47abb76(p0)
	return _in(0xB60C9F9ED47ABB76, p0, _r, _ri)
end

function Global.N_0xb63b9178d0f58d82(p0)
	return _in(0xB63B9178D0F58D82, p0)
end

function Global.N_0xb655db7582aec805(p0)
	return _in(0xB655DB7582AEC805, p0, _r, _ri)
end

function Global.N_0xb65927f861e7ae39(p0, p1)
	return _in(0xB65927F861E7AE39, p0, p1, _r, _ri)
end

function Global.N_0xb65a4dab460a19bd(p0)
	return _in(0xB65A4DAB460A19BD, p0, _r, _ri)
end

function Global.N_0xb65e7f733956cf25(p0)
	return _in(0xB65E7F733956CF25, p0)
end

function Global.N_0xb676efda03dada52(p0, p1)
	return _in(0xB676EFDA03DADA52, p0, p1, _r, _ri)
end

function Global.N_0xb6857100f8fd433c(p0, p1)
	return _in(0xB6857100F8FD433C, p0, p1, _r, _ri)
end

function Global.N_0xb6cbd40f8ea69e8a(p0)
	return _in(0xB6CBD40F8EA69E8A, p0, _r, _ri)
end

function Global.N_0xb6cfec32e3742779(p0, p1, p2, p3)
	return _in(0xB6CFEC32E3742779, p0, p1, p2, p3)
end

function Global.N_0xb6e1a185c2b9319a(p0, p1, p2)
	return _in(0xB6E1A185C2B9319A, p0, p1, p2, _r, _ri)
end

function Global.N_0xb6e79850b759a30e(p0, p1)
	return _in(0xB6E79850B759A30E, p0, p1)
end

function Global.N_0xb6f4557060ef0fb4(p0, p1)
	return _in(0xB6F4557060EF0FB4, p0, p1, _r, _ri)
end

function Global.N_0xb6f4825153920582()
	return _in(0xB6F4825153920582)
end

function Global.N_0xb6fd96420c0126a1(p0, p1)
	return _in(0xB6FD96420C0126A1, p0, p1)
end

function Global.N_0xb7017da4d498269f(p0, p1)
	return _in(0xB7017DA4D498269F, p0, p1)
end

function Global.N_0xb7079f4c72896756(p0, p1, p2, p3, p4)
	return _in(0xB7079F4C72896756, p0, p1, p2, p3, p4)
end

function Global.N_0xb711eb4bc8d06013()
	return _in(0xB711EB4BC8D06013)
end

function Global.N_0xb71b91b398f8f067(p0, p1)
	return _in(0xB71B91B398F8F067, p0, p1, _r, _ri)
end

function Global.N_0xb7223b91cd6b7e07(p0)
	return _in(0xB7223B91CD6B7E07, p0, _r, _ri)
end

function Global.N_0xb727a847862cb00a(p0)
	return _in(0xB727A847862CB00A, p0, _r, _ri)
end

function Global.N_0xb729679356a889ae(p0)
	return _in(0xB729679356A889AE, p0, _r, _ri)
end

function Global.N_0xb72999d3120599df(p0, p1, p2)
	return _in(0xB72999D3120599DF, p0, p1, p2, _r, _ri)
end

function Global.N_0xb7469cb9ac3c0fd4(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xB7469CB9AC3C0FD4, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xb779f4fa19269aec(p0)
	return _in(0xB779F4FA19269AEC, p0)
end

function Global.N_0xb782f8238512bad5(p0, p1)
	return _in(0xB782F8238512BAD5, p0, _ii(p1) --[[ may be optional ]])
end

function Global.N_0xb783f75940b23014(p0, p1)
	return _in(0xB783F75940B23014, p0, p1)
end

function Global.N_0xb79817db31ff72b9(p0, p1)
	return _in(0xB79817DB31FF72B9, p0, p1)
end

function Global.N_0xb7c7bdc375aea9a4(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xB7C7BDC375AEA9A4, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xb7dbb2986b87e230(p0, p1)
	return _in(0xB7DBB2986B87E230, p0, p1, _r, _ri)
end

function Global.N_0xb7df150605eedc9b(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xB7DF150605EEDC9B, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0xb7e0590c86e1711f(p0)
	return _in(0xB7E0590C86E1711F, p0, _r, _ri)
end

function Global.N_0xb832f1a686b9b810(p0, p1, p2)
	return _in(0xB832F1A686B9B810, p0, p1, p2)
end

function Global.N_0xb85c13e0bf1f2a1c(p0)
	return _in(0xB85C13E0BF1F2A1C, p0)
end

function Global.N_0xb881ca836cc4b6d4(p0)
	return _in(0xB881CA836CC4B6D4, p0, _r, _ri)
end

function Global.N_0xb89fcff19dafff28(p0, p1)
	return _in(0xB89FCFF19DAFFF28, p0, p1, _r, _ri)
end

function Global.N_0xb8ab265426cfe6dd(p0, p1)
	return _in(0xB8AB265426CFE6DD, p0, p1)
end

function Global.N_0xb8b207c34285e978(p0)
	return _in(0xB8B207C34285E978, p0)
end

function Global.N_0xb8b6430ead2d2437(p0, p1)
	return _in(0xB8B6430EAD2D2437, p0, p1)
end

function Global.N_0xb8c984c0d47f4f07(p0, p1, p2)
	return _in(0xB8C984C0D47F4F07, p0, p1, p2)
end

function Global.N_0xb8de69d9473b7593(p0, p1)
	return _in(0xB8DE69D9473B7593, p0, p1)
end

function Global.N_0xb8e213d02f37947d(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xB8E213D02F37947D, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xb8e2d655e1d5bd39(p0)
	return _in(0xB8E2D655E1D5BD39, p0, _r, _ri)
end

function Global.N_0xb8e3486d107f4194(p0, p1)
	return _in(0xB8E3486D107F4194, p0, p1)
end

function Global.N_0xb8f52a3f84a7cc59(p0)
	return _in(0xB8F52A3F84A7CC59, p0, _r, _ri)
end

function Global.N_0xb9020ec89c07df04(p0, p1, p2)
	return _in(0xB9020EC89C07DF04, p0, p1, p2, _r, _ri)
end

function Global.N_0xb9050a97594c8832(p0)
	return _in(0xB9050A97594C8832, p0, _r, _ri)
end

function Global.N_0xb909149f2bb5f6da(p0, p1)
	return _in(0xB909149F2BB5F6DA, p0, p1)
end

function Global.N_0xb91ab3be7f655d49(p0)
	return _in(0xB91AB3BE7F655D49, p0, _r, _ri)
end

function Global.N_0xb93a769b8b726950(p0, p1)
	return _in(0xB93A769B8B726950, p0, p1)
end

function Global.N_0xb93ea7184baa85c3(p0, p1)
	return _in(0xB93EA7184BAA85C3, p0, p1, _r, _ri)
end

function Global.N_0xb9467e41dab1cf2c(p0, p1, p2, p3)
	return _in(0xB9467E41DAB1CF2C, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xb952a3ac41d58f2f(p0)
	return _in(0xB952A3AC41D58F2F, p0, _r, _ri)
end

function Global.N_0xb958d97a0dfaa0c2(p0)
	return _in(0xB958D97A0DFAA0C2, p0, _r, _ri)
end

function Global.N_0xb961dd799a837bd7()
	return _in(0xB961DD799A837BD7)
end

function Global.N_0xb981dd2dfaf9b1c9(p0, p1, p2, p3, p4)
	return _in(0xB981DD2DFAF9B1C9, p0, p1, p2, p3, p4)
end

function Global.N_0xb991fe166faf84fd(p0, p1, p2)
	return _in(0xB991FE166FAF84FD, p0, p1, p2, _r, _ri)
end

--- Sorts some unknown data.
-- Likely SORT_*
function Global.N_0xb9b9e47edb9d63db()
	return _in(0xB9B9E47EDB9D63DB)
end

function Global.N_0xb9bdfae609dfb7c5(p0, p1, p2)
	return _in(0xB9BDFAE609DFB7C5, p0, p1, p2)
end

function Global.N_0xb9c92616929cc25d(p0, p1)
	return _in(0xB9C92616929CC25D, p0, p1)
end

function Global.N_0xb9d5bdda88e1bb66(p0)
	return _in(0xB9D5BDDA88E1BB66, p0, _r, _ri)
end

function Global.N_0xba0163b277c2d2d0(p0)
	return _in(0xBA0163B277C2D2D0, p0, _r, _ri)
end

function Global.N_0xba0980b5c0a11924(p0)
	return _in(0xBA0980B5C0A11924, p0)
end

function Global.N_0xba208a8d6399a3ac(p0, p1)
	return _in(0xBA208A8D6399A3AC, p0, p1, _r, _ri)
end

function Global.N_0xba24095ea96dfe17(p0)
	return _in(0xBA24095EA96DFE17, p0, _r, _ri)
end

function Global.N_0xba2a089e60ed1163(p0, p1, p2, p3, p4)
	return _in(0xBA2A089E60ED1163, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xba2c49ea6a8d24ff(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xBA2C49EA6A8D24FF, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xba5ca1feb5de0df6(p0, p1, p2, p3, p4, p5)
	return _in(0xBA5CA1FEB5DE0DF6, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xba62b4d80fa66bd6(p0, p1, p2, p3)
	return _in(0xBA62B4D80FA66BD6, p0, p1, p2, p3)
end

function Global.N_0xba8818212633500a(p0, p1, p2)
	return _in(0xBA8818212633500A, p0, p1, p2)
end

function Global.N_0xba958f68031ddbfc(p0, p1)
	return _in(0xBA958F68031DDBFC, p0, p1, _r, _rv)
end

function Global.N_0xbaab791aa72c2821(p0, p1)
	return _in(0xBAAB791AA72C2821, p0, p1)
end

function Global.N_0xbad2a311667a50d7(p0, p1)
	return _in(0xBAD2A311667A50D7, p0, p1)
end

function Global.N_0xbae08f00021bffb2(p0, p1)
	return _in(0xBAE08F00021BFFB2, p0, p1)
end

function Global.N_0xbae0eedf93f05eaa(p0, p1)
	return _in(0xBAE0EEDF93F05EAA, p0, p1)
end

function Global.N_0xbaffde5f953720d9()
	return _in(0xBAFFDE5F953720D9, _r, _ri)
end

function Global.N_0xbb1e41dd3d3c6250(p0, p1, p2)
	return _in(0xBB1E41DD3D3C6250, p0, p1, p2)
end

function Global.N_0xbb1ec8c2eef33baa(p0)
	return _in(0xBB1EC8C2EEF33BAA, p0)
end

function Global.N_0xbb282cf5d2333fb8(p0, p1)
	return _in(0xBB282CF5D2333FB8, p0, p1)
end

function Global.N_0xbb3e5370ebb6be28(p0, p1)
	return _in(0xBB3E5370EBB6BE28, p0, p1, _r, _ri)
end

function Global.N_0xbb3e9b073e66c3c9(p0, p1, p2, p3, p4)
	return _in(0xBB3E9B073E66C3C9, p0, p1, p2, p3, p4)
end

function Global.N_0xbb51299166b844f3()
	return _in(0xBB51299166B844F3)
end

function Global.N_0xbb68908cd11aebdc(p0)
	return _in(0xBB68908CD11AEBDC, p0)
end

function Global.N_0xbb68d4d3ca3de402(p0, p1)
	return _in(0xBB68D4D3CA3DE402, p0, p1)
end

function Global.N_0xbb697756309d77ee(p0)
	return _in(0xBB697756309D77EE, p0, _r, _ri)
end

function Global.N_0xbb6c707f20d955d4(p0)
	return _in(0xBB6C707F20D955D4, p0)
end

function Global.N_0xbb6ea5d59e926095(p0, p1)
	return _in(0xBB6EA5D59E926095, p0, p1)
end

function Global.N_0xbb765b8fd49a796c(p0)
	return _in(0xBB765B8FD49A796C, p0, _r, _ri)
end

function Global.N_0xbb7f4273c186bc4b(p0, p1)
	return _in(0xBB7F4273C186BC4B, p0, p1)
end

function Global.N_0xbba140062b15a8ac(p0)
	return _in(0xBBA140062B15A8AC, p0)
end

function Global.N_0xbbadfb5e5e5766fb(p0, p1)
	return _in(0xBBADFB5E5E5766FB, p0, p1)
end

function Global.N_0xbbc67a6f965c688a(p0, p1, p2)
	return _in(0xBBC67A6F965C688A, p0, p1, p2, _r, _ri)
end

function Global.N_0xbbe5b63effb08e68(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xBBE5B63EFFB08E68, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xbbe768e3ae76e07c(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0xBBE768E3AE76E07C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, _r, _ri)
end

function Global.N_0xbbf6d1d07c02d00a(p0, p1)
	return _in(0xBBF6D1D07C02D00A, p0, p1)
end

function Global.N_0xbc016635d6a73b31(p0, p1, p2)
	return _in(0xBC016635D6A73B31, p0, p1, p2)
end

function Global.N_0xbc02b3d151d3859f(p0, p1)
	return _in(0xBC02B3D151D3859F, p0, p1)
end

function Global.N_0xbc0884bc590951c7(p0, p1)
	return _in(0xBC0884BC590951C7, p0, p1, _r, _ri)
end

function Global.N_0xbc0df006a4952c68(p0, p1, p2)
	return _in(0xBC0DF006A4952C68, p0, p1, p2)
end

function Global.N_0xbc1dc48270468444(p0)
	return _in(0xBC1DC48270468444, p0)
end

function Global.N_0xbc2c927f5c264243(p0)
	return _in(0xBC2C927F5C264243, p0)
end

function Global.N_0xbc3f847ae2c3dc65(p0, p1)
	return _in(0xBC3F847AE2C3DC65, p0, p1)
end

function Global.N_0xbc4735f48cd983ef(p0, p1)
	return _in(0xBC4735F48CD983EF, p0, p1)
end

function Global.N_0xbc6df00d7a4a6819(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xBC6DF00D7A4A6819, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xbc6f454e310124da(p0, p1, p2)
	return _in(0xBC6F454E310124DA, p0, p1, p2)
end

function Global.N_0xbc781d24aa11f179(p0)
	return _in(0xBC781D24AA11F179, p0)
end

function Global.N_0xbc7d36946d19e60e(p0)
	return _in(0xBC7D36946D19E60E, p0)
end

function Global.N_0xbc864a70ad55e0c1(p0, p1)
	return _in(0xBC864A70AD55E0C1, p0, p1, _r, _ri)
end

function Global.N_0xbc8a281ff125c655()
	return _in(0xBC8A281FF125C655, _r, _ri)
end

function Global.N_0xbc90bdf4e5228ea1()
	return _in(0xBC90BDF4E5228EA1)
end

function Global.N_0xbcc6dc59e32a2bdc(p0)
	return _in(0xBCC6DC59E32A2BDC, p0)
end

function Global.N_0xbcc76708e5677e1d(p0, p1)
	return _in(0xBCC76708E5677E1D, p0, p1)
end

function Global.N_0xbcda0ba8762facb9(p0)
	return _in(0xBCDA0BA8762FACB9, p0)
end

function Global.N_0xbce668aaf83608be(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xBCE668AAF83608BE, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0xbd090f5b1db82189(p0, p1)
	return _in(0xBD090F5B1DB82189, p0, p1)
end

function Global.N_0xbd0e4f52f6d95242(p0)
	return _in(0xBD0E4F52F6D95242, p0, _r, _ri)
end

function Global.N_0xbd1c3c0f271c39d3(p0, p1)
	return _in(0xBD1C3C0F271C39D3, p0, p1)
end

function Global.N_0xbd3324281e8b9933(p0, p1, p2, p3)
	return _in(0xBD3324281E8B9933, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xbd3c4a2ed509205e(p0)
	return _in(0xBD3C4A2ED509205E, p0, _r, _ri)
end

function Global.N_0xbd629c1c4f501c80(p0)
	return _in(0xBD629C1C4F501C80, p0, _r, _ri)
end

function Global.N_0xbd62d98799a3daf0(p0, p1)
	return _in(0xBD62D98799A3DAF0, p0, p1, _r, _ri)
end

function Global.N_0xbd6b242b8bd5543a(p0)
	return _in(0xBD6B242B8BD5543A, p0, _r, _ri)
end

function Global.N_0xbd70108d01875299(p0)
	return _in(0xBD70108D01875299, p0, _r, _ri)
end

function Global.N_0xbd75500141e4725c(p0, p1)
	return _in(0xBD75500141E4725C, p0, p1)
end

function Global.N_0xbd861ae8a5181ed7(p0, p1)
	return _in(0xBD861AE8A5181ED7, p0, p1)
end

function Global.N_0xbd944a3d36e992de()
	return _in(0xBD944A3D36E992DE)
end

function Global.N_0xbd94cecfb2d65119(p0, p1, p2, p3, p4, p5)
	return _in(0xBD94CECFB2D65119, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xbd96185264ddaaea(p0, p1)
	return _in(0xBD96185264DDAAEA, p0, p1)
end

function Global.N_0xbdc6e364c9c78178(p0)
	return _in(0xBDC6E364C9C78178, p0, _r, _ri)
end

function Global.N_0xbdcc671b911040f9(p0)
	return _in(0xBDCC671B911040F9, p0)
end

function Global.N_0xbdd9c235d8d1052e(p0)
	return _in(0xBDD9C235D8D1052E, p0, _r, _ri)
end

function Global.N_0xbdda0c290c228159(p0, p1, p2)
	return _in(0xBDDA0C290C228159, p0, p1, p2)
end

function Global.N_0xbdda142759307528(p0)
	return _in(0xBDDA142759307528, p0)
end

function Global.N_0xbded916a9f9b0604(p0, p1, p2, p3, p4, p5)
	return _in(0xBDED916A9F9B0604, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xbdfeeb7600bcd938(p0)
	return _in(0xBDFEEB7600BCD938, p0)
end

function Global.N_0xbe012571b25f5aca(p0, p1, p2, p3, p4)
	return _in(0xBE012571B25F5ACA, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xbe0c524970892d41(p0, p1)
	return _in(0xBE0C524970892D41, p0, p1)
end

function Global.N_0xbe1067cd1c9570f6(p0)
	return _in(0xBE1067CD1C9570F6, p0, _r, _ri)
end

function Global.N_0xbe28db99556ff8d9(p0)
	return _in(0xBE28DB99556FF8D9, p0, _r, _ri)
end

function Global.N_0xbe551c2cc421185d(p0, p1)
	return _in(0xBE551C2CC421185D, p0, p1)
end

function Global.N_0xbe711b14a159e84f(p0, p1)
	return _in(0xBE711B14A159E84F, p0, p1)
end

function Global.N_0xbe72591d1509ffe4(p0)
	return _in(0xBE72591D1509FFE4, p0, _r, _ri)
end

function Global.N_0xbe7d814cfa181b56()
	return _in(0xBE7D814CFA181B56)
end

function Global.N_0xbe83cae8ed77a94f(p0)
	return _in(0xBE83CAE8ED77A94F, p0)
end

function Global.N_0xbe8daa9d8d01da6a(p0, p1, p2)
	return _in(0xBE8DAA9D8D01DA6A, p0, p1, p2)
end

function Global.N_0xbea3a6e5f5f79a6f(p0, p1)
	return _in(0xBEA3A6E5F5F79A6F, p0, p1, _r, _ri)
end

function Global.N_0xbea7d3cb47e1479c()
	return _in(0xBEA7D3CB47E1479C, _r, _ri)
end

function Global.N_0xbec65c6049b3219d(p0, p1, p2, p3, p4, p5)
	return _in(0xBEC65C6049B3219D, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xbed386157f65942c(p0, p1)
	return _in(0xBED386157F65942C, p0, p1)
end

function Global.N_0xbedbe39b5fd98fd6(p0)
	return _in(0xBEDBE39B5FD98FD6, p0, _r, _ri)
end

function Global.N_0xbeefbb608d2aa68a(p0)
	return _in(0xBEEFBB608D2AA68A, p0)
end

function Global.N_0xbefed69ce8317f91(p0)
	return _in(0xBEFED69CE8317F91, p0, _r, _ri)
end

function Global.N_0xbf2dd155b2adcd0a(p0)
	return _in(0xBF2DD155B2ADCD0A, p0, _r, _ri)
end

function Global.N_0xbf4dc1784be94dfa(ped, p1, hash)
	return _in(0xBF4DC1784BE94DFA, ped, p1, _ch(hash))
end

function Global.N_0xbf4f34a85ca2970d()
	return _in(0xBF4F34A85CA2970D)
end

function Global.N_0xbf567df2bef211a6(p0, p1)
	return _in(0xBF567DF2BEF211A6, p0, p1)
end

function Global.N_0xbf5987e1cde63501(p0, p1, p2, p3)
	return _in(0xBF5987E1CDE63501, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xbf5e791bbbf90a3c(p0, p1)
	return _in(0xBF5E791BBBF90A3C, p0, p1, _r, _ri)
end

function Global.N_0xbf6583e926d13890(p0, p1)
	return _in(0xBF6583E926D13890, p0, p1)
end

function Global.N_0xbf8276e51761f9da()
	return _in(0xBF8276E51761F9DA, _r, _ri)
end

function Global.N_0xbfa6b7731c3baf02()
	return _in(0xBFA6B7731C3BAF02)
end

function Global.N_0xbfc83da249befcc9(p0, p1, p2)
	return _in(0xBFC83DA249BEFCC9, p0, p1, p2)
end

function Global.N_0xbfca7afabf9d7967(p0, p1)
	return _in(0xBFCA7AFABF9D7967, p0, p1, _r, _ri)
end

function Global.N_0xbfcb17895bb99e4e(p0, p1)
	return _in(0xBFCB17895BB99E4E, p0, p1)
end

function Global.N_0xbfff81e12a745a5f()
	return _in(0xBFFF81E12A745A5F)
end

function Global.N_0xc0258742b034dfaf(p0)
	return _in(0xC0258742B034DFAF, p0)
end

function Global.N_0xc028b3f52c707c49(p0)
	return _in(0xC028B3F52C707C49, p0, _r, _ri)
end

function Global.N_0xc0474c8bcf6787ad(p0)
	return _in(0xC0474C8BCF6787AD, p0, _r, _ri)
end

function Global.N_0xc04f47d488ef9eba(p0, p1, p2, p3)
	return _in(0xC04F47D488EF9EBA, p0, p1, p2, p3)
end

function Global.N_0xc061e50f8d299f95(p0, p1, p2, p3)
	return _in(0xC061E50F8D299F95, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xc06cff658b2e51da(p0, p1, p2)
	return _in(0xC06CFF658B2E51DA, p0, p1, p2, _r, _ri)
end

function Global.N_0xc07b91b996c1de89(p0, p1)
	return _in(0xC07B91B996C1DE89, p0, p1)
end

function Global.N_0xc07cff658b2e51da(p0, p1)
	return _in(0xC07CFF658B2E51DA, p0, p1, _r, _ri)
end

function Global.N_0xc080ff658b2e51da(p0)
	return _in(0xC080FF658B2E51DA, p0, _r, _ri)
end

function Global.N_0xc084ff658b2e52da(p0)
	return _in(0xC084FF658B2E52DA, p0, _r, _ri)
end

function Global.N_0xc084ff658b2e53da()
	return _in(0xC084FF658B2E53DA, _r, _ri)
end

function Global.N_0xc084ff658b2e54da(p0)
	return _in(0xC084FF658B2E54DA, p0, _r, _ri)
end

function Global.N_0xc084ff658b2e55da(p0, p1)
	return _in(0xC084FF658B2E55DA, p0, p1, _r, _ri)
end

function Global.N_0xc084ff658b2e61da(p0)
	return _in(0xC084FF658B2E61DA, p0, _r, _ri)
end

function Global.N_0xc084ff658b2e71da(p0, p1, p2)
	return _in(0xC084FF658B2E71DA, p0, p1, p2, _r, _ri)
end

function Global.N_0xc084ff658b2e81da(p0, p1, p2)
	return _in(0xC084FF658B2E81DA, p0, p1, p2, _r, _ri)
end

function Global.N_0xc086ff658b2e51da(p0)
	return _in(0xC086FF658B2E51DA, p0, _r, _ri)
end

function Global.N_0xc086ff658b2e51db()
	return _in(0xC086FF658B2E51DB, _r, _ri)
end

function Global.N_0xc087ff658b2e51da(p0, p1)
	return _in(0xC087FF658B2E51DA, p0, p1, _r, _ri)
end

function Global.N_0xc088ff658b2e51da()
	return _in(0xC088FF658B2E51DA, _r, _ri)
end

function Global.N_0xc089ff658b2e51da(p0, p1)
	return _in(0xC089FF658B2E51DA, p0, p1, _r, _ri)
end

function Global.N_0xc08aff658b2e51da(p0)
	return _in(0xC08AFF658B2E51DA, p0)
end

function Global.N_0xc08aff658b2e51db(p0)
	return _in(0xC08AFF658B2E51DB, p0)
end

function Global.N_0xc08bff658b2e51da(p0)
	return _in(0xC08BFF658B2E51DA, p0, _r, _ri)
end

function Global.N_0xc08cff658b2e51da(p0, p1)
	return _in(0xC08CFF658B2E51DA, p0, p1, _r, _ri)
end

function Global.N_0xc08def658b2e51da(p0)
	return _in(0xC08DEF658B2E51DA, p0, _r, _ri)
end

function Global.N_0xc08dff658b2e51da()
	return _in(0xC08DFF658B2E51DA, _r, _ri)
end

function Global.N_0xc08dff658b2e51db(p0)
	return _in(0xC08DFF658B2E51DB, p0, _r, _ri)
end

function Global.N_0xc08e804c91f47c80(p0, p1)
	return _in(0xC08E804C91F47C80, p0, p1, _r, _ri)
end

function Global.N_0xc08eff658b2e51db(p0, p1)
	return _in(0xC08EFF658B2E51DB, p0, p1, _r, _ri)
end

function Global.N_0xc08fff658b2e51da()
	return _in(0xC08FFF658B2E51DA, _r, _ri)
end

function Global.N_0xc08fff658b2e51db(p0)
	return _in(0xC08FFF658B2E51DB, p0, _r, _ri)
end

function Global.N_0xc0940ac858c1e126(p0)
	return _in(0xC0940AC858C1E126, p0, _r, _ri)
end

function Global.N_0xc09cff658b2e51da(p0, p1, p2)
	return _in(0xC09CFF658B2E51DA, p0, p1, p2, _r, _ri)
end

function Global.N_0xc0abf784590798a9(p0)
	return _in(0xC0ABF784590798A9, p0)
end

function Global.N_0xc0b1c05b313693d1(p0, p1)
	return _in(0xC0B1C05B313693D1, p0, p1)
end

function Global.N_0xc0b21f235c02139c(p0)
	return _in(0xC0B21F235C02139C, p0)
end

function Global.N_0xc0cffda87c2c163d(p0, p1, p2)
	return _in(0xC0CFFDA87C2C163D, p0, p1, p2, _r, _ri)
end

function Global.N_0xc0df161950fb101e(p0)
	return _in(0xC0DF161950FB101E, p0, _r, _ri)
end

function Global.N_0xc0e880b7a441164d(p0, p1)
	return _in(0xC0E880B7A441164D, p0, p1, _r, _ri)
end

function Global.N_0xc0edef16d90661ee(p0, p1)
	return _in(0xC0EDEF16D90661EE, p0, p1)
end

function Global.N_0xc0f0417a90402742(p0, p1)
	return _in(0xC0F0417A90402742, p0, p1)
end

function Global.N_0xc1193521e3b9fadd(p0, p1)
	return _in(0xC1193521E3B9FADD, p0, p1)
end

function Global.N_0xc163dac52ac975d3(p0, p1)
	return _in(0xC163DAC52AC975D3, p0, p1)
end

function Global.N_0xc177c827cefc0aa4(p0, p1)
	return _in(0xC177C827CEFC0AA4, p0, p1)
end

function Global.N_0xc1799fafd2fdf52b(p0, p1, p2, p3)
	return _in(0xC1799FAFD2FDF52B, p0, p1, p2, p3)
end

function Global.N_0xc17a94cc8fc3c61a(p0, p1, p2, p3, p4)
	return _in(0xC17A94CC8FC3C61A, p0, p1, p2, p3, p4)
end

function Global.N_0xc17f69e1418cd11f(p0)
	return _in(0xC17F69E1418CD11F, p0, _r, _ri)
end

function Global.N_0xc1842f40fd501da2(p0, p1)
	return _in(0xC1842F40FD501DA2, p0, p1)
end

function Global.N_0xc184ff658b2e55da(p0, p1)
	return _in(0xC184FF658B2E55DA, p0, p1, _r, _ri)
end

function Global.N_0xc1ab7eefd3e6ee49(p0, p1)
	return _in(0xC1AB7EEFD3E6EE49, p0, p1)
end

function Global.N_0xc1e1a3d5ed7617b8(p0, p1)
	return _in(0xC1E1A3D5ED7617B8, p0, p1)
end

function Global.N_0xc1f04fb37e3f0e57(p0, p1)
	return _in(0xC1F04FB37E3F0E57, p0, p1, _r, _ri)
end

function Global.N_0xc205b3c54c6a4e37(p0)
	return _in(0xC205B3C54C6A4E37, p0)
end

function Global.N_0xc212f1d05a8232bb(p0)
	return _in(0xC212F1D05A8232BB, p0, _r, _ri)
end

function Global.N_0xc223d299c670413d(p0, p1, p2, p3)
	return _in(0xC223D299C670413D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xc2266aa617668ad3(p0, p1)
	return _in(0xC2266AA617668AD3, p0, p1)
end

function Global.N_0xc22aa08a8adb87d4(p0)
	return _in(0xC22AA08A8ADB87D4, p0, _r, _ri)
end

function Global.N_0xc239dbd9a57d2a71(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xC239DBD9A57D2A71, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0xc252c0cc969af79a(p0)
	return _in(0xC252C0CC969AF79A, p0)
end

function Global.N_0xc2745d9261664901(p0, p1)
	return _in(0xC2745D9261664901, p0, p1)
end

function Global.N_0xc276fe69dda22bad(p0)
	return _in(0xC276FE69DDA22BAD, p0, _r, _ri)
end

function Global.N_0xc284ff658b2e55da(p0, p1, p2)
	return _in(0xC284FF658B2E55DA, p0, p1, p2, _r, _ri)
end

function Global.N_0xc285fd21294a1c49(p0)
	return _in(0xC285FD21294A1C49, p0, _r, _ri)
end

function Global.N_0xc28f62ac9774fc1b()
	return _in(0xC28F62AC9774FC1B, _r, _ri)
end

function Global.N_0xc29996a337bdd099(p0)
	return _in(0xC29996A337BDD099, p0, _r, _ri)
end

function Global.N_0xc2b8164c3be871a4()
	return _in(0xC2B8164C3BE871A4)
end

function Global.N_0xc2c05defe85a0b64()
	return _in(0xC2C05DEFE85A0B64, _r)
end

function Global.N_0xc2e62678d602853c(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xC2E62678D602853C, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xc2e71d7e0a7b4c89(p0)
	return _in(0xC2E71D7E0A7B4C89, p0, _r, _ri)
end

function Global.N_0xc2ef407645beecdc(p0)
	return _in(0xC2EF407645BEECDC, p0, _r, _ri)
end

function Global.N_0xc310239acccf5579()
	return _in(0xC310239ACCCF5579)
end

function Global.N_0xc31c44c43b48fde3(p0, p1)
	return _in(0xC31C44C43B48FDE3, p0, p1)
end

function Global.N_0xc325a6baa62cf8a2(p0, p1)
	return _in(0xC325A6BAA62CF8A2, p0, p1)
end

function Global.N_0xc332c91388f5580b(p0)
	return _in(0xC332C91388F5580B, p0)
end

function Global.N_0xc346a546612c49a9(p0)
	return _in(0xC346A546612C49A9, p0, _r, _ri)
end

function Global.N_0xc349ee1e6efa494b(p0, p1, p2, p3)
	return _in(0xC349EE1E6EFA494B, p0, p1, p2, p3)
end

function Global.N_0xc351394b932a6a50(p0)
	return _in(0xC351394B932A6A50, p0)
end

function Global.N_0xc3544ad0522e69b4(p0, p1)
	return _in(0xC3544AD0522E69B4, p0, p1)
end

function Global.N_0xc369e2234e34a0ca(p0, p1)
	return _in(0xC369E2234E34A0CA, p0, p1, _r, _ri)
end

function Global.N_0xc372b6a88f6e4ad8(p0, p1, p2)
	return _in(0xC372B6A88F6E4AD8, p0, p1, p2)
end

function Global.N_0xc37792a3f9c90771()
	return _in(0xC37792A3F9C90771, _r, _ri)
end

function Global.N_0xc3896d03e2852236(p0)
	return _in(0xC3896D03E2852236, p0)
end

function Global.N_0xc38b4952b728397a(p0, p1)
	return _in(0xC38B4952B728397A, p0, p1)
end

function Global.N_0xc394ff658b2e55da(p0, p1, p2, p3)
	return _in(0xC394FF658B2E55DA, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xc395355843be134b(p0)
	return _in(0xC395355843BE134B, p0, _r, _ri)
end

function Global.N_0xc3995d396f1d97b6(p0, p1, p2)
	return _in(0xC3995D396F1D97B6, p0, p1, p2, _r, _ri)
end

function Global.N_0xc399cc89fba05da0(p0, p1)
	return _in(0xC399CC89FBA05DA0, p0, p1)
end

function Global.N_0xc3abcfbc7d74afa5(p0, p1, p2)
	return _in(0xC3ABCFBC7D74AFA5, p0, p1, p2)
end

function Global.N_0xc3adf4880784fa9c(p0)
	return _in(0xC3ADF4880784FA9C, p0)
end

function Global.N_0xc3d4b754c0e86b9e(p0, p1)
	return _in(0xC3D4B754C0E86B9E, p0, p1, _r, _ri)
end

function Global.N_0xc3d581a34bc0a1f0(p0, p1)
	return _in(0xC3D581A34BC0A1F0, p0, p1)
end

function Global.N_0xc3e9e5d4f413b773(p0, p1)
	return _in(0xC3E9E5D4F413B773, p0, p1)
end

function Global.N_0xc4019cf9ae8e931a(p0)
	return _in(0xC4019CF9AE8E931A, p0, _r, _rv)
end

function Global.N_0xc412aa1c73111fe0(p0, p1, p2, p3, p4)
	return _in(0xC412AA1C73111FE0, p0, p1, p2, p3, p4)
end

function Global.N_0xc43cd2668b204419()
	return _in(0xC43CD2668B204419, _r, _ri)
end

function Global.N_0xc4533e3e87125c9e(p0)
	return _in(0xC4533E3E87125C9E, p0)
end

function Global.N_0xc47d9080a9a8856a(p0, p1)
	return _in(0xC47D9080A9A8856A, p0, p1)
end

function Global.N_0xc48152bc6b3e821c(p0, p1, p2)
	return _in(0xC48152BC6B3E821C, p0, p1, p2, _r, _ri)
end

function Global.N_0xc484ff658b2e55da(p0)
	return _in(0xC484FF658B2E55DA, p0)
end

function Global.N_0xc4873b053054c04b(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xC4873B053054C04B, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xc488b8c0e52560d8(p0)
	return _in(0xC488B8C0E52560D8, p0, _r, _ri)
end

function Global.N_0xc489fe31ac726512(p0, p1)
	return _in(0xC489FE31AC726512, p0, p1)
end

function Global.N_0xc48a9eb0d499b3e5(p0)
	return _in(0xC48A9EB0D499B3E5, p0, _r, _ri)
end

function Global.N_0xc48af420371c7407(p0, p1)
	return _in(0xC48AF420371C7407, p0, p1, _r, _ri)
end

function Global.N_0xc494c76a34266e82(p0, p1)
	return _in(0xC494C76A34266E82, p0, p1)
end

function Global.N_0xc4a2c11fc0d41916(p0, p1)
	return _in(0xC4A2C11FC0D41916, p0, p1)
end

function Global.N_0xc4b67ef3fd65622d(p0, p1, p2, p3, p4, p5)
	return _in(0xC4B67EF3FD65622D, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xc4cfce4c656ef480(p0)
	return _in(0xC4CFCE4C656EF480, p0)
end

function Global.N_0xc4dec3ca8c365a5d(p0)
	return _in(0xC4DEC3CA8C365A5D, p0, _r, _ri)
end

function Global.N_0xc505036a35afd01b(toggle)
	return _in(0xC505036A35AFD01B, toggle)
end

function Global.N_0xc5196c42de19f646()
	return _in(0xC5196C42DE19F646, _r, _ri)
end

function Global.N_0xc5303f460a40d21d(p0, p1)
	return _in(0xC5303F460A40D21D, p0, p1, _r, _ri)
end

function Global.N_0xc570b881754df609(p0, p1)
	return _in(0xC570B881754DF609, p0, p1, _r, _ri)
end

function Global.N_0xc584ff658b2e55da(p0)
	return _in(0xC584FF658B2E55DA, p0)
end

function Global.N_0xc5899c4cd2e2495d(p0)
	return _in(0xC5899C4CD2E2495D, p0)
end

function Global.N_0xc58ce6824e604dec(p0)
	return _in(0xC58CE6824E604DEC, p0)
end

function Global.N_0xc59ab6a04333c502()
	return _in(0xC59AB6A04333C502, _r, _ri)
end

function Global.N_0xc5b78e41dcf8227c(p0, p1)
	return _in(0xC5B78E41DCF8227C, p0, p1)
end

function Global.N_0xc5bf29f4035277c2(p0)
	return _in(0xC5BF29F4035277C2, p0, _r, _ri)
end

function Global.N_0xc5c395c60b542a3c(p0)
	return _in(0xC5C395C60B542A3C, p0, _r, _ri)
end

function Global.N_0xc5c7a2f6567fccbc()
	return _in(0xC5C7A2F6567FCCBC)
end

function Global.N_0xc5cb91d65852ed7e(p0)
	return _in(0xC5CB91D65852ED7E, p0)
end

function Global.N_0xc5e7204f322e49eb(p0, p1, p2)
	return _in(0xC5E7204F322E49EB, p0, p1, p2, _r, _ri)
end

function Global.N_0xc5eb2755fa25f1e9(p0)
	return _in(0xC5EB2755FA25F1E9, p0)
end

function Global.N_0xc6136b40fffb778b(p0)
	return _in(0xC6136B40FFFB778B, p0)
end

function Global.N_0xc6170856e54557b2(p0, p1, p2)
	return _in(0xC6170856E54557B2, p0, p1, p2)
end

function Global.N_0xc61edebf16cd9668(p0, p1, p2)
	return _in(0xC61EDEBF16CD9668, p0, p1, p2)
end

function Global.N_0xc6258f41d86676e0(p0, p1, p2)
	return _in(0xC6258F41D86676E0, p0, p1, p2)
end

function Global.N_0xc63540aef8384732(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xC63540AEF8384732, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xc63540aef8384769()
	return _in(0xC63540AEF8384769)
end

function Global.N_0xc6366a585659d15c(p0, p1)
	return _in(0xC6366A585659D15C, p0, p1)
end

function Global.N_0xc64abc0676af262b()
	return _in(0xC64ABC0676AF262B)
end

function Global.N_0xc64e597783be9a1d(entity, toggle)
	return _in(0xC64E597783BE9A1D, entity, toggle)
end

function Global.N_0xc64e7a62632ad2fe(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xC64E7A62632AD2FE, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xc67a4910425f11f1(p0, p1)
	return _in(0xC67A4910425F11F1, p0, p1)
end

function Global.N_0xc684ff658b2e55da(p0)
	return _in(0xC684FF658B2E55DA, p0)
end

function Global.N_0xc685b014ce3d988b(p0)
	return _in(0xC685B014CE3D988B, p0, _r, _ri)
end

function Global.N_0xc687a23e166dcf68(p0)
	return _in(0xC687A23E166DCF68, p0, _r, _ri)
end

function Global.N_0xc695870b8a149b96(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0xC695870B8A149B96, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri)
end

function Global.N_0xc6981aff6d2a71c2(p0)
	return _in(0xC6981AFF6D2A71C2, p0)
end

function Global.N_0xc6a6789bb405d11c(p0, p1)
	return _in(0xC6A6789BB405D11C, p0, p1, _r, _ri)
end

function Global.N_0xc6a7dc546e94fed5(p0, p1, p2, p3)
	return _in(0xC6A7DC546E94FED5, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xc6c4e15cf7d52fea(p0, p1)
	return _in(0xC6C4E15CF7D52FEA, p0, p1)
end

function Global.N_0xc6d7ddc843176701(p0)
	return _in(0xC6D7DDC843176701, p0, _r, _ri)
end

function Global.N_0xc6dcc2a3a8825c85(p0)
	return _in(0xC6DCC2A3A8825C85, p0)
end

function Global.N_0xc6f81fcd15350323(p0, p1)
	return _in(0xC6F81FCD15350323, p0, p1)
end

function Global.N_0xc70041408e16be2d(p0, p1, p2)
	return _in(0xC70041408E16BE2D, p0, p1, p2)
end

function Global.N_0xc70041408e16be2e(p0, p1, p2)
	return _in(0xC70041408E16BE2E, p0, p1, p2)
end

function Global.N_0xc71b50ae58d07369(p0)
	return _in(0xC71B50AE58D07369, _ii(p0) --[[ may be optional ]], _r, _ri)
end

function Global.N_0xc71d07c96946e263(p0, p1)
	return _in(0xC71D07C96946E263, p0, p1)
end

function Global.N_0xc71fe230a513c30f(p0, p1)
	return _in(0xC71FE230A513C30F, p0, p1, _r, _ri)
end

function Global.N_0xc72ce37081dae625(p0, p1, p2, p3)
	return _in(0xC72CE37081DAE625, p0, p1, p2, p3)
end

function Global.N_0xc75386174ece95d5(p0)
	return _in(0xC75386174ECE95D5, p0, _r, _ri)
end

function Global.N_0xc76e94a78127412b(p0, p1, p2)
	return _in(0xC76E94A78127412B, p0, p1, p2)
end

function Global.N_0xc76f252371150d9a(p0)
	return _in(0xC76F252371150D9A, p0)
end

function Global.N_0xc76fc4c2fc5f4405(p0)
	return _in(0xC76FC4C2FC5F4405, p0)
end

function Global.N_0xc7dc5a0a7df608cb(p0)
	return _in(0xC7DC5A0A7DF608CB, p0, _r, _ri)
end

function Global.N_0xc805eb785824f712(p0)
	return _in(0xC805EB785824F712, p0)
end

function Global.N_0xc81a9e2c8efd28d5(p0)
	return _in(0xC81A9E2C8EFD28D5, p0)
end

function Global.N_0xc84e138448507567(vehicle, p1)
	return _in(0xC84E138448507567, vehicle, p1)
end

function Global.N_0xc853230e76a152df(p0)
	return _in(0xC853230E76A152DF, p0, _r, _ri)
end

function Global.N_0xc886cd666add42e1(p0, p1)
	return _in(0xC886CD666ADD42E1, p0, p1)
end

function Global.N_0xc89e7410a93ac19a(p0, p1)
	return _in(0xC89E7410A93AC19A, p0, p1)
end

function Global.N_0xc8b29d18022ea2b7(p0)
	return _in(0xC8B29D18022EA2B7, p0, _r, _ri)
end

function Global.N_0xc8b6d18e22484643()
	return _in(0xC8B6D18E22484643)
end

function Global.N_0xc8ccdb712fbcba92(p0)
	return _in(0xC8CCDB712FBCBA92, p0, _r, _ri)
end

function Global.N_0xc8d0611d9a0cf5d3(p0)
	return _in(0xC8D0611D9A0CF5D3, p0)
end

function Global.N_0xc8d523bf5bbd3808(p0, p1)
	return _in(0xC8D523BF5BBD3808, p0, p1, _r, _ri)
end

function Global.N_0xc8e21c1677dc5e6f(p0, p1)
	return _in(0xC8E21C1677DC5E6F, p0, p1)
end

function Global.N_0xc8fc3b2432e8229d()
	return _in(0xC8FC3B2432E8229D, _r, _ri)
end

function Global.N_0xc900a465364a85d6(p0)
	return _in(0xC900A465364A85D6, p0)
end

function Global.N_0xc900cec8a172375b(p0, p1, p2)
	return _in(0xC900CEC8A172375B, p0, p1, p2)
end

function Global.N_0xc9151483cc06a414(p0)
	return _in(0xC9151483CC06A414, p0)
end

function Global.N_0xc927890aa64e9661(p0, p1, p2, p3)
	return _in(0xC927890AA64E9661, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xc93a9a45430d484e(p0)
	return _in(0xC93A9A45430D484E, p0, _r, _ri)
end

function Global.N_0xc95611869e14f8af(p0, p1, p2, p3)
	return _in(0xC95611869E14F8AF, p0, p1, p2, p3)
end

function Global.N_0xc964fcd3d1720697()
	return _in(0xC964FCD3D1720697, _r, _ri)
end

function Global.N_0xc97e0d2302382211(p0, p1)
	return _in(0xC97E0D2302382211, p0, p1, _r, _ri)
end

function Global.N_0xc991ef46fe323867(p0, p1)
	return _in(0xC991EF46FE323867, p0, p1)
end

function Global.N_0xc99f104bdf8c7f5a(p0, p1)
	return _in(0xC99F104BDF8C7F5A, p0, p1)
end

function Global.N_0xc9b4b3a36f81fd75(p0)
	return _in(0xC9B4B3A36F81FD75, p0, _r, _ri)
end

function Global.N_0xc9caeaeec1256e54(p0)
	return _in(0xC9CAEAEEC1256E54, p0)
end

function Global.N_0xc9ea26893c9e4024(p0, p1, p2, p3, p4)
	return _in(0xC9EA26893C9E4024, p0, p1, p2, p3, p4)
end

function Global.N_0xca0bac376c541978()
	return _in(0xCA0BAC376C541978, _r, _ri)
end

function Global.N_0xca1315c33b9a2847(p0)
	return _in(0xCA1315C33B9A2847, p0, _r, _ri)
end

function Global.N_0xca1f0b5103936891(p0)
	return _in(0xCA1F0B5103936891, p0, _r, _ri)
end

function Global.N_0xca27a86caa4e98ed(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xCA27A86CAA4E98ED, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xca41e86545413b5b(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xCA41E86545413B5B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xca56dd6ab7a39f64(p0)
	return _in(0xCA56DD6AB7A39F64, p0, _r, _ri)
end

function Global.N_0xca58d4fd20d70f24(p0)
	return _in(0xCA58D4FD20D70F24, p0, _r, _ri)
end

function Global.N_0xca59808e51fd67c4(p0, p1)
	return _in(0xCA59808E51FD67C4, p0, p1)
end

function Global.N_0xca5c90d40665d5ce(p0, p1)
	return _in(0xCA5C90D40665D5CE, p0, p1, _r, _ri)
end

function Global.N_0xca95924c893a0c91(p0, p1)
	return _in(0xCA95924C893A0C91, p0, p1, _r, _ri)
end

function Global.N_0xca95c156c14b2054(p0, p1)
	return _in(0xCA95C156C14B2054, p0, p1)
end

function Global.N_0xcaae29cb5591b2a5(p0, p1)
	return _in(0xCAAE29CB5591B2A5, p0, p1, _r, _ri)
end

function Global.N_0xcaaf2bccfef37f77(p0, p1)
	return _in(0xCAAF2BCCFEF37F77, p0, p1)
end

function Global.N_0xcab4dd2d5b2b7246(p0, p1)
	return _in(0xCAB4DD2D5B2B7246, p0, p1)
end

function Global.N_0xcac43d060099ea72(p0)
	return _in(0xCAC43D060099EA72, p0)
end

function Global.N_0xcacab2b123bbdbd6(p0, p1, p2)
	return _in(0xCACAB2B123BBDBD6, p0, p1, p2, _r, _ri)
end

function Global.N_0xcacc2f9d994504b7(p0)
	return _in(0xCACC2F9D994504B7, p0, _r, _ri)
end

function Global.N_0xcad4fe9398820d24(p0, p1)
	return _in(0xCAD4FE9398820D24, p0, p1, _r, _ri)
end

function Global.N_0xcaf4ca2f87779f8f(p0, p1)
	return _in(0xCAF4CA2F87779F8F, p0, p1, _r, _ri)
end

function Global.N_0xcaf50048c8d0fba0(p0, p1)
	return _in(0xCAF50048C8D0FBA0, p0, p1, _r, _ri)
end

function Global.N_0xcaff2c9747103c02(p0, p1, p2)
	return _in(0xCAFF2C9747103C02, p0, p1, p2, _r, _ri)
end

function Global.N_0xcb0360efefb2580d(padIndex)
	return _in(0xCB0360EFEFB2580D, padIndex)
end

function Global.N_0xcb0b9506bc91e441(p0, p1)
	return _in(0xCB0B9506BC91E441, p0, p1)
end

function Global.N_0xcb1a3864c524f784(p0, p1)
	return _in(0xCB1A3864C524F784, p0, p1)
end

function Global.N_0xcb2ca620c48bc875(p0, p1)
	return _in(0xCB2CA620C48BC875, p0, p1, _r, _ri)
end

function Global.N_0xcb42afe2b613ee55(p0)
	return _in(0xCB42AFE2B613EE55, p0, _r, _ri)
end

function Global.N_0xcb4ef7edae2e16f1()
	return _in(0xCB4EF7EDAE2E16F1, _r, _ri)
end

function Global.N_0xcb5d11f9508a928d(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xCB5D11F9508A928D, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xcb61a63aa53d7d22(p0, p1)
	return _in(0xCB61A63AA53D7D22, p0, p1)
end

function Global.N_0xcb690f680a3ea971(p0, p1)
	return _in(0xCB690F680A3EA971, p0, p1, _r, _ri)
end

function Global.N_0xcb86d3e3e3708901(p0, p1, p2, p3, p4)
	return _in(0xCB86D3E3E3708901, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xcb8f4c9343ebe240(p0, p1, p2)
	return _in(0xCB8F4C9343EBE240, p0, p1, p2, _r, _ri)
end

function Global.N_0xcb9401f918cb0f75(p0, p1, p2, p3)
	return _in(0xCB9401F918CB0F75, p0, p1, p2, p3)
end

function Global.N_0xcbac13f065c47596()
	return _in(0xCBAC13F065C47596, _r, _ri)
end

function Global.N_0xcbb54cc7ffffab86(p0, p1, p2, p3)
	return _in(0xCBB54CC7FFFFAB86, p0, p1, p2, p3)
end

function Global.N_0xcbb7b6edfa933ade(p0)
	return _in(0xCBB7B6EDFA933ADE, p0, _r, _ri)
end

function Global.N_0xcbc7b6f9a56b79f6(p0, p1)
	return _in(0xCBC7B6F9A56B79F6, p0, p1)
end

function Global.N_0xcbccf73ffa69cc6b(player)
	return _in(0xCBCCF73FFA69CC6B, player)
end

function Global.N_0xcbd9ec60495c728c(p0)
	return _in(0xCBD9EC60495C728C, p0)
end

function Global.N_0xcbde59c48f2b06f5(p0, p1, p2)
	return _in(0xCBDE59C48F2B06F5, p0, p1, p2)
end

function Global.N_0xcbf2bebb468a34f3(p0)
	return _in(0xCBF2BEBB468A34F3, p0)
end

function Global.N_0xcbf743c984695cf3()
	return _in(0xCBF743C984695CF3, _r, _ri)
end

function Global.N_0xcbf88256e44d5d39(p0, p1)
	return _in(0xCBF88256E44D5D39, p0, p1)
end

function Global.N_0xcbfb4951f2e3934c(p0, p1)
	return _in(0xCBFB4951F2E3934C, p0, p1)
end

function Global.N_0xcbfbd38f2e0a263b(p0, p1)
	return _in(0xCBFBD38F2E0A263B, p0, p1)
end

function Global.N_0xcbfc7725de6ce2e0(p0, p1)
	return _in(0xCBFC7725DE6CE2E0, p0, p1, _r, _ri)
end

function Global.N_0xcc1baf72d571db8d(p0, p1, p2)
	return _in(0xCC1BAF72D571DB8D, p0, p1, p2, _r, _ri)
end

function Global.N_0xcc24cb07f60b496e(p0, p1)
	return _in(0xCC24CB07F60B496E, p0, p1, _r, _ri)
end

function Global.N_0xcc2b20596e29e4e3(p0, p1)
	return _in(0xCC2B20596E29E4E3, p0, p1, _r, _ri)
end

function Global.N_0xcc3b787e73e64160(p0, p1, p2, p3, p4)
	return _in(0xCC3B787E73E64160, p0, p1, p2, p3, p4)
end

function Global.N_0xcc3edc5614b03f61(p0)
	return _in(0xCC3EDC5614B03F61, p0)
end

function Global.N_0xcc4e72c339461ed1()
	return _in(0xCC4E72C339461ED1, _r, _ri)
end

function Global.N_0xcc61d8d6c19d9f14(p0)
	return _in(0xCC61D8D6C19D9F14, p0)
end

function Global.N_0xcc644bc1dd655269(p0, p1)
	return _in(0xCC644BC1DD655269, p0, p1, _r, _ri)
end

function Global.N_0xcc6b5aafc87bfc7b(p0, p1, p2)
	return _in(0xCC6B5AAFC87BFC7B, p0, p1, p2)
end

function Global.N_0xcc7fc854b956a128(p0, p1)
	return _in(0xCC7FC854B956A128, _ts(p0), _ts(p1))
end

function Global.N_0xcc8ca3e88256e58f(p0, p1, p2, p3, p4, p5)
	return _in(0xCC8CA3E88256E58F, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xcc9c4393523833e2(p0, p1, p2)
	return _in(0xCC9C4393523833E2, p0, p1, p2)
end

function Global.N_0xccb4635a071fb62d()
	return _in(0xCCB4635A071FB62D)
end

function Global.N_0xccb97b51893c662f(p0, p1)
	return _in(0xCCB97B51893C662F, p0, p1, _r, _ri)
end

function Global.N_0xccd9b77f70d31c9d(p0)
	return _in(0xCCD9B77F70D31C9D, p0, _r, _ri)
end

function Global.N_0xcce219c922737bfa(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xCCE219C922737BFA, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xcce7c695c164c35f(p0)
	return _in(0xCCE7C695C164C35F, p0, _r, _ri)
end

function Global.N_0xccf71fcfa0070b1a()
	return _in(0xCCF71FCFA0070B1A, _r, _ri)
end

function Global.N_0xccf878d50f8ab10d(p0)
	return _in(0xCCF878D50F8AB10D, p0, _r, _ri)
end

function Global.N_0xcd072523791ddc1b(p0)
	return _in(0xCD072523791DDC1B, p0, _r, _ri)
end

function Global.N_0xcd284e2f6ac27ee9(p0)
	return _in(0xCD284E2F6AC27EE9, p0)
end

function Global.N_0xcd53e6cbf609c012(p0)
	return _in(0xCD53E6CBF609C012, p0, _r, _ri)
end

function Global.N_0xcd66fea29400a0b5(p0)
	return _in(0xCD66FEA29400A0B5, p0, _r, _ri)
end

function Global.N_0xcd6f8a0335d821f9(p0)
	return _in(0xCD6F8A0335D821F9, p0)
end

function Global.N_0xcd954f330693f5f2()
	return _in(0xCD954F330693F5F2, _r, _ri)
end

function Global.N_0xcd9a485f2b383b44(p0, p1, p2, p3)
	return _in(0xCD9A485F2B383B44, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xcd9e2d9bc52fd80f(p0, p1)
	return _in(0xCD9E2D9BC52FD80F, p0, p1)
end

function Global.N_0xcd9e5f94a2f38683(p0, p1)
	return _in(0xCD9E5F94A2F38683, p0, p1)
end

function Global.N_0xcdb682bb47c02f0a(p0, p1)
	return _in(0xCDB682BB47C02F0A, p0, p1)
end

function Global.N_0xcdc25355c0d65963(p0)
	return _in(0xCDC25355C0D65963, p0, _r, _ri)
end

function Global.N_0xcdc5512a407cf08d(p0)
	return _in(0xCDC5512A407CF08D, p0, _r, _ri)
end

function Global.N_0xcdcd7b2d49aee73a(p0)
	return _in(0xCDCD7B2D49AEE73A, p0)
end

function Global.N_0xcddd4b74660e2335(p0, p1, p2)
	return _in(0xCDDD4B74660E2335, p0, p1, p2)
end

function Global.N_0xcdfb8c04d4c95d9b(p0, p1, p2, p3)
	return _in(0xCDFB8C04D4C95D9B, p0, p1, p2, p3)
end

function Global.N_0xce0d2f5586627cce(p0, p1, p2, p3, p4)
	return _in(0xCE0D2F5586627CCE, p0, p1, p2, p3, p4)
end

function Global.N_0xce1531927ad6c9f8(p0, p1)
	return _in(0xCE1531927AD6C9F8, p0, p1)
end

function Global.N_0xce27824b5968b79a(p0, p1)
	return _in(0xCE27824B5968B79A, p0, p1)
end

function Global.N_0xce285a4413b00b7f(p0, p1)
	return _in(0xCE285A4413B00B7F, p0, p1)
end

function Global.N_0xce2acd6f602803e5(p0)
	return _in(0xCE2ACD6F602803E5, p0, _r, _ri)
end

function Global.N_0xce4e669400e5f8aa(p0, p1, p2, p3)
	return _in(0xCE4E669400E5F8AA, p0, p1, p2, p3)
end

function Global.N_0xce54c9abe6fbc6db(p0)
	return _in(0xCE54C9ABE6FBC6DB, p0, _r, _ri)
end

function Global.N_0xce5d0ffe83939af1(p0, p1, p2, p3)
	return _in(0xCE5D0FFE83939AF1, p0, p1, p2, p3)
end

function Global.N_0xce6b874286d640bb(p0, p1)
	return _in(0xCE6B874286D640BB, p0, p1)
end

function Global.N_0xce71c2f9baa3f975(p0, p1)
	return _in(0xCE71C2F9BAA3F975, p0, p1)
end

function Global.N_0xce7690c0a0d1c36d(p0)
	return _in(0xCE7690C0A0D1C36D, p0)
end

function Global.N_0xce7a6c1d5cde1f9d(p0, p1, p2, p3)
	return _in(0xCE7A6C1D5CDE1F9D, p0, p1, p2, p3)
end

function Global.N_0xce88a261dcbba0d9(p0, p1)
	return _in(0xCE88A261DCBBA0D9, p0, p1, _r, _ri)
end

function Global.N_0xceab54f4632c6ef6(p0, p1)
	return _in(0xCEAB54F4632C6EF6, p0, p1)
end

function Global.N_0xceb1f1eed484a5b4(p0, p1)
	return _in(0xCEB1F1EED484A5B4, p0, p1)
end

function Global.N_0xceb40b678e403759(p0)
	return _in(0xCEB40B678E403759, p0, _r, _ri)
end

function Global.N_0xcec4ca2cab8fa98c(vehicle, p1)
	return _in(0xCEC4CA2CAB8FA98C, vehicle, p1)
end

function Global.N_0xcedbf17efcc0e4a4(p0, p1, p2)
	return _in(0xCEDBF17EFCC0E4A4, p0, p1, p2, _r, _ri)
end

function Global.N_0xcedc16930526f728(p0)
	return _in(0xCEDC16930526F728, p0)
end

function Global.N_0xceec64bd27a59312(p0)
	return _in(0xCEEC64BD27A59312, p0, _r, _ri)
end

function Global.N_0xcef4c65de502d367(p0, p1, p2, p3, p4)
	return _in(0xCEF4C65DE502D367, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xcf0b19806473d324(p0, p1, p2, p3)
	return _in(0xCF0B19806473D324, p0, p1, p2, p3)
end

function Global.N_0xcf213a5fc3abfc08(p0, p1, p2)
	return _in(0xCF213A5FC3ABFC08, p0, p1, p2)
end

function Global.N_0xcf23ab5bd47b384d(p0)
	return _in(0xCF23AB5BD47B384D, p0)
end

function Global.N_0xcf342503ca4c8df1(p0, p1)
	return _in(0xCF342503CA4C8DF1, p0, p1)
end

function Global.N_0xcf45df50c7775f2a()
	return _in(0xCF45DF50C7775F2A, _r, _ri)
end

function Global.N_0xcf63ef77b0df0397(p0, p1, p2, p3)
	return _in(0xCF63EF77B0DF0397, p0, p1, p2, p3)
end

function Global.N_0xcf69ea05cd9c33c9()
	return _in(0xCF69EA05CD9C33C9)
end

function Global.N_0xcf9da72002fc16bf(p0, p1, p2)
	return _in(0xCF9DA72002FC16BF, p0, p1, p2)
end

function Global.N_0xcfad2c8cd1054523(p0, p1, p2, p3)
	return _in(0xCFAD2C8CD1054523, p0, p1, p2, p3)
end

function Global.N_0xcfb2eed4fcb7bd77(p0, p1, p2)
	return _in(0xCFB2EED4FCB7BD77, p0, p1, p2)
end

function Global.N_0xcfc0bd09bb1b73ff(p0)
	return _in(0xCFC0BD09BB1B73FF, p0, _r, _ri)
end

function Global.N_0xcfda2518f322d836(p0)
	return _in(0xCFDA2518F322D836, p0, _r, _ri)
end

function Global.N_0xcfe122ec635cc2b2(p0, p1, p2, p3)
	return _in(0xCFE122EC635CC2B2, p0, p1, p2, p3)
end

function Global.N_0xcffc3eccd7a5cceb(p0, p1, p2)
	return _in(0xCFFC3ECCD7A5CCEB, p0, p1, p2)
end

function Global.N_0xd0116df21e6c7b36(p0, p1)
	return _in(0xD0116DF21E6C7B36, p0, p1, _r, _ri)
end

function Global.N_0xd041a32992a55f84(p0, p1)
	return _in(0xD041A32992A55F84, p0, p1)
end

function Global.N_0xd04241bbf6d03a5e(p0)
	return _in(0xD04241BBF6D03A5E, p0, _r, _ri)
end

function Global.N_0xd0498ad30e16b6bd()
	return _in(0xD0498AD30E16B6BD, _r, _ri)
end

function Global.N_0xd049920cd29f6cc8(p0, p1, p2, p3, p4)
	return _in(0xD049920CD29F6CC8, p0, p1, p2, p3, p4)
end

function Global.N_0xd049fdaf089fddb0(p0, p1, p2)
	return _in(0xD049FDAF089FDDB0, p0, p1, p2)
end

function Global.N_0xd04ad186ce8bb129(p0, p1, p2)
	return _in(0xD04AD186CE8BB129, p0, p1, p2)
end

function Global.N_0xd0541ef28e9c4783()
	return _in(0xD0541EF28E9C4783, _r, _ri)
end

function Global.N_0xd05590c1ab38f068(p0, p1, p2, p3)
	return _in(0xD05590C1AB38F068, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xd05ad61f242c626b(p0, p1)
	return _in(0xD05AD61F242C626B, p0, p1)
end

function Global.N_0xd0730c1fa40348d9(p0)
	return _in(0xD0730C1FA40348D9, p0, _r, _ri)
end

function Global.N_0xd08066e00d26c448(p0)
	return _in(0xD08066E00D26C448, p0, _r, _ri)
end

function Global.N_0xd08685ba892dbfab(p0, p1, p2, p3)
	return _in(0xD08685BA892DBFAB, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xd090abef4d6a7d96(p0)
	return _in(0xD090ABEF4D6A7D96, p0, _r, _ri)
end

function Global.N_0xd0976cc34002db57(p0)
	return _in(0xD0976CC34002DB57, p0, _r, _ri)
end

function Global.N_0xd0aabe5b9f8fa589(p0, p1)
	return _in(0xD0AABE5B9F8FA589, p0, p1)
end

function Global.N_0xd0b0b044112bf424(player)
	return _in(0xD0B0B044112BF424, player)
end

function Global.N_0xd0b7aeb56229d317(p0)
	return _in(0xD0B7AEB56229D317, p0, _r, _ri)
end

function Global.N_0xd0ba1853d76683c8(p0, p1, p2, p3, p4)
	return _in(0xD0BA1853D76683C8, p0, p1, p2, p3, p4)
end

function Global.N_0xd0e02aa618020d17(p0, p1)
	return _in(0xD0E02AA618020D17, p0, p1)
end

function Global.N_0xd1031b83ac093bc7(p0)
	return _in(0xD1031B83AC093BC7, p0)
end

function Global.N_0xd103f6dbb5442be8(p0, p1)
	return _in(0xD103F6DBB5442BE8, p0, p1)
end

function Global.N_0xd1555fbc96c88444(p0, p1, p2, p3, p4)
	return _in(0xD1555FBC96C88444, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xd17672447692478e(p0, p1)
	return _in(0xD17672447692478E, p0, p1)
end

function Global.N_0xd1a226f2e05e58fc(p0, p1)
	return _in(0xD1A226F2E05E58FC, p0, p1)
end

function Global.N_0xd1a70c1e8d1031fe(p0, p1)
	return _in(0xD1A70C1E8D1031FE, p0, p1)
end

function Global.N_0xd1ba66940e94c547()
	return _in(0xD1BA66940E94C547, _r, _ri)
end

function Global.N_0xd1bf325c8252a982(p0, p1)
	return _in(0xD1BF325C8252A982, p0, p1, _r, _ri)
end

function Global.N_0xd1df5e54f4acbe1a(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD1DF5E54F4ACBE1A, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xd1efa8d68bf5d63d(p0, p1, p2, p3)
	return _in(0xD1EFA8D68BF5D63D, p0, p1, p2, p3)
end

function Global.N_0xd1f6b912785bfd35(p0)
	return _in(0xD1F6B912785BFD35, p0, _r, _ri)
end

function Global.N_0xd1ffb246f4e088ac(p0)
	return _in(0xD1FFB246F4E088AC, p0, _r, _ri)
end

function Global.N_0xd21a3d421e7f09f7(p0, p1)
	return _in(0xD21A3D421E7F09F7, p0, p1)
end

function Global.N_0xd21c7418c590bb40(p0)
	return _in(0xD21C7418C590BB40, p0, _r, _ri)
end

function Global.N_0xd2209866b0cb72ea(p0, p1)
	return _in(0xD2209866B0CB72EA, p0, p1, _r, _ri)
end

function Global.N_0xd2b9c78537ed5759(p0)
	return _in(0xD2B9C78537ED5759, p0)
end

function Global.N_0xd2ba051b94ca9bcc(p0)
	return _in(0xD2BA051B94CA9BCC, p0, _r, _ri)
end

function Global.N_0xd2c9126410dfa1b2(p0)
	return _in(0xD2C9126410DFA1B2, p0, _r, _ri)
end

function Global.N_0xd2cb0fb0fdcb473d(p0, p1)
	return _in(0xD2CB0FB0FDCB473D, p0, p1)
end

function Global.N_0xd2d74f89df844a50(p0)
	return _in(0xD2D74F89DF844A50, p0)
end

function Global.N_0xd2dfc9cca5596a11(p0)
	return _in(0xD2DFC9CCA5596A11, p0)
end

function Global.N_0xd2f0fe8805d91647(p0, p1)
	return _in(0xD2F0FE8805D91647, p0, p1)
end

function Global.N_0xd346248c1dce0d76(p0, p1, p2, p3)
	return _in(0xD346248C1DCE0D76, p0, p1, p2, p3)
end

function Global.N_0xd355e2f1bb41087e(p0, p1)
	return _in(0xD355E2F1BB41087E, p0, p1, _r, _ri)
end

function Global.N_0xd3750ccc00635fc2(p0)
	return _in(0xD3750CCC00635FC2, p0, _r, _ri)
end

function Global.N_0xd389a2549c4efb30(p0)
	return _in(0xD389A2549C4EFB30, p0, _r, _ri)
end

function Global.N_0xd39a72ae5ebd57e5()
	return _in(0xD39A72AE5EBD57E5)
end

function Global.N_0xd39d32eb3b52dd83(p0)
	return _in(0xD39D32EB3B52DD83, p0, _r, _ri)
end

function Global.N_0xd3a0da8f91612c6e(p0, p1, p2)
	return _in(0xD3A0DA8F91612C6E, p0, p1, p2)
end

function Global.N_0xd3a3c8b9f3bdef81()
	return _in(0xD3A3C8B9F3BDEF81, _r, _ri)
end

function Global.N_0xd3a7b003ed343fd9(p0, p1, p2, p3, p4)
	return _in(0xD3A7B003ED343FD9, p0, p1, p2, p3, p4)
end

function Global.N_0xd3f58e9316b7fc2a(p0)
	return _in(0xD3F58E9316B7FC2A, p0)
end

function Global.N_0xd3f7445cea2e5035(p0)
	return _in(0xD3F7445CEA2E5035, p0, _r, _ri)
end

function Global.N_0xd3f943b88f55376a(p0)
	return _in(0xD3F943B88F55376A, p0)
end

function Global.N_0xd4022c7286b0dfa2(p0, p1, p2)
	return _in(0xD4022C7286B0DFA2, p0, p1, p2, _r, _ri)
end

function Global.N_0xd4071efc83794b2f(p0, p1)
	return _in(0xD4071EFC83794B2F, p0, p1)
end

function Global.N_0xd414be129bb81b32()
	return _in(0xD414BE129BB81B32, _r, _rf)
end

function Global.N_0xd42514c182121c23(p0)
	return _in(0xD42514C182121C23, p0, _r, _ri)
end

function Global.N_0xd426e2e3288469d6(p0, p1)
	return _in(0xD426E2E3288469D6, p0, p1)
end

function Global.N_0xd428c3f92fc3f6f8(p0, p1)
	return _in(0xD428C3F92FC3F6F8, p0, p1)
end

function Global.N_0xd453bb601d4a606e(p0)
	return _in(0xD453BB601D4A606E, p0, _r, _ri)
end

function Global.N_0xd45547d8396f002a()
	return _in(0xD45547D8396F002A)
end

function Global.N_0xd45bb89b53fc0cfd(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xD45BB89B53FC0CFD, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xd460135c98940274(p0, p1)
	return _in(0xD460135C98940274, p0, p1)
end

function Global.N_0xd4636c2edb0dea8a(p0)
	return _in(0xD4636C2EDB0DEA8A, p0, _r, _ri)
end

function Global.N_0xd46bf94c4c66fab0(p0, p1, p2, p3)
	return _in(0xD46BF94C4C66FAB0, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xd470725e0703d22f(p0)
	return _in(0xD470725E0703D22F, p0, _r, _ri)
end

function Global.N_0xd47d47efbf103fb8(p0, p1)
	return _in(0xD47D47EFBF103FB8, p0, p1)
end

function Global.N_0xd48993a61938c64d(p0, p1)
	return _in(0xD48993A61938C64D, p0, p1, _r, _ri)
end

function Global.N_0xd4907ef4334c7602(p0, p1)
	return _in(0xD4907EF4334C7602, p0, p1)
end

function Global.N_0xd4958e8cf0de0dd0(p0)
	return _in(0xD4958E8CF0DE0DD0, p0)
end

function Global.N_0xd4b614179bcd0654(p0)
	return _in(0xD4B614179BCD0654, p0)
end

function Global.N_0xd4d403ea031f351c(p0)
	return _in(0xD4D403EA031F351C, p0, _r, _ri)
end

function Global.N_0xd4e5c1e93c466127(p0, p1)
	return _in(0xD4E5C1E93C466127, p0, p1, _r, _ri)
end

function Global.N_0xd4ee21b7cc7fd350(p0)
	return _in(0xD4EE21B7CC7FD350, p0)
end

function Global.N_0xd4f5efb55769d272(p0, p1)
	return _in(0xD4F5EFB55769D272, p0, p1, _r, _ri)
end

function Global.N_0xd4fa73fe628fec63(p0, p1)
	return _in(0xD4FA73FE628FEC63, p0, p1)
end

function Global.N_0xd503d6f0986d58bc(p0, p1)
	return _in(0xD503D6F0986D58BC, p0, p1)
end

function Global.N_0xd508fa229f1c4900(p0, p1, p2, p3, p4, p5)
	return _in(0xD508FA229F1C4900, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xd52d20b0c76bb26d(p0, p1)
	return _in(0xD52D20B0C76BB26D, p0, p1, _r, _ri)
end

function Global.N_0xd52df30355ea7c8e(p0, p1, p2)
	return _in(0xD52DF30355EA7C8E, p0, p1, p2)
end

function Global.N_0xd53846b9c931c181(p0, p1, p2)
	return _in(0xD53846B9C931C181, p0, p1, p2)
end

function Global.N_0xd543487a1f12828f(p0, p1, p2, p3)
	return _in(0xD543487A1F12828F, p0, p1, p2, p3)
end

function Global.N_0xd543d3a8fde4f185(p0, p1)
	return _in(0xD543D3A8FDE4F185, p0, p1, _r, _ri)
end

function Global.N_0xd55a871e1ce3481b(p0, p1, p2, p3)
	return _in(0xD55A871E1CE3481B, p0, p1, p2, p3)
end

function Global.N_0xd55db4466d00a258(p0)
	return _in(0xD55DB4466D00A258, p0, _r, _ri)
end

function Global.N_0xd56e5f336c675efa(p0)
	return _in(0xD56E5F336C675EFA, p0, _r, _ri)
end

function Global.N_0xd56ff170710fc826(p0, p1)
	return _in(0xD56FF170710FC826, p0, p1, _r, _ri)
end

function Global.N_0xd5910ecf81a2278c(p0, p1, p2, p3)
	return _in(0xD5910ECF81A2278C, p0, p1, p2, p3)
end

function Global.N_0xd5bd1b5318a81994(p0, p1)
	return _in(0xD5BD1B5318A81994, p0, p1)
end

function Global.N_0xd5d72f1624f3ba7c(p0)
	return _in(0xD5D72F1624F3BA7C, p0)
end

function Global.N_0xd5fe956c70ff370b(p0)
	return _in(0xD5FE956C70FF370B, p0, _r, _ri)
end

function Global.N_0xd61fcf9fcfd515b7(p0, p1, p2)
	return _in(0xD61FCF9FCFD515B7, p0, p1, p2)
end

function Global.N_0xd635df6baa5a6017()
	return _in(0xD635DF6BAA5A6017, _r, _ri)
end

function Global.N_0xd637d327080cd86e(p0)
	return _in(0xD637D327080CD86E, p0)
end

function Global.N_0xd63b4ba3a02a99e0(p0, p1)
	return _in(0xD63B4BA3A02A99E0, p0, p1)
end

function Global.N_0xd64dbc8b0424135f(p0, p1)
	return _in(0xD64DBC8B0424135F, p0, p1)
end

function Global.N_0xd65fdc686a031c83(p0, p1, p2)
	return _in(0xD65FDC686A031C83, p0, p1, p2)
end

function Global.N_0xd6663ec374092383()
	return _in(0xD6663EC374092383, _r, _ri)
end

function Global.N_0xd66c9e72b3cc4982(p1)
	return _in(0xD66C9E72B3CC4982, _i, p1, _r, _ri)
end

function Global.N_0xd6740e14e4cefc0b(p0)
	return _in(0xD6740E14E4CEFC0B, p0, _r, _ri)
end

function Global.N_0xd67b6f3bcf81ba47(p0, p1)
	return _in(0xD67B6F3BCF81BA47, p0, p1)
end

function Global.N_0xd699e688b49c0fd2(p0, p1, p2, p3, p4)
	return _in(0xD699E688B49C0FD2, p0, p1, p2, p3, p4)
end

function Global.N_0xd6bd313cfa41e57a(p0)
	return _in(0xD6BD313CFA41E57A, p0, _r, _ri)
end

function Global.N_0xd6c0a8c7c0b2f82c(p0, p1)
	return _in(0xD6C0A8C7C0B2F82C, p0, p1)
end

function Global.N_0xd6cb05ddaee43afd(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD6CB05DDAEE43AFD, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xd6e39dc5d46df4ab(p0)
	return _in(0xD6E39DC5D46DF4AB, p0, _r, _ri)
end

function Global.N_0xd6f6acf4392187fb(p0)
	return _in(0xD6F6ACF4392187FB, p0, _r, _ri)
end

function Global.N_0xd70c7a30412f8fa0(p0)
	return _in(0xD70C7A30412F8FA0, p0, _r, _ri)
end

function Global.N_0xd710a5007c2ac539(p0, p1, p2)
	return _in(0xD710A5007C2AC539, p0, p1, p2)
end

function Global.N_0xd730281e496621fb(p0, p1)
	return _in(0xD730281E496621FB, p0, p1)
end

function Global.N_0xd733528b6c35647a(p0, p1)
	return _in(0xD733528B6C35647A, p0, p1)
end

function Global.N_0xd740f11fbc8aef43(p0, p1, p2)
	return _in(0xD740F11FBC8AEF43, p0, p1, p2)
end

function Global.N_0xd743c4293f47afad(p0)
	return _in(0xD743C4293F47AFAD, p0, _r, _ri)
end

function Global.N_0xd747979c053efa7a(p0)
	return _in(0xD747979C053EFA7A, p0)
end

function Global.N_0xd7494ded50c6ef52(p0, p1, p2)
	return _in(0xD7494DED50C6EF52, p0, p1, p2)
end

function Global.N_0xd74acdf7db8114af(p0)
	return _in(0xD74ACDF7DB8114AF, p0)
end

function Global.N_0xd77ae48611b7b10a(p0, p1)
	return _in(0xD77AE48611B7B10A, p0, p1)
end

function Global.N_0xd785864798258032()
	return _in(0xD785864798258032, _r, _ri)
end

function Global.N_0xd78a26024bb13e08(p0)
	return _in(0xD78A26024BB13E08, p0)
end

function Global.N_0xd798df5db67b1659(p0)
	return _in(0xD798DF5DB67B1659, p0, _r, _ri)
end

function Global.N_0xd7ad3c7ebaf88c92(p0)
	return _in(0xD7AD3C7EBAF88C92, p0, _r, _ri)
end

function Global.N_0xd7bad4062074b9c1(p0)
	return _in(0xD7BAD4062074B9C1, p0, _r, _ri)
end

function Global.N_0xd7d22f5592aed8ba(p0)
	return _in(0xD7D22F5592AED8BA, p0, _r, _ri)
end

function Global.N_0xd7d2f45c56a4f4df(p0, p1, p2)
	return _in(0xD7D2F45C56A4F4DF, p0, p1, p2)
end

function Global.N_0xd7db94ab78e8ebe4(p0, p1)
	return _in(0xD7DB94AB78E8EBE4, p0, p1, _r, _ri)
end

function Global.N_0xd7f6781a0abaf6fb(p0)
	return _in(0xD7F6781A0ABAF6FB, p0, _r, _ri)
end

function Global.N_0xd806cd2a4f2c2996(p0)
	return _in(0xD806CD2A4F2C2996, p0, _r, _ri)
end

function Global.N_0xd80a8854db5cfba5(p0, p1, p2, p3)
	return _in(0xD80A8854DB5CFBA5, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xd80faf919a2e56ea(p0, p1)
	return _in(0xD80FAF919A2E56EA, p0, p1)
end

function Global.N_0xd8254cb2c586412b(p0, p1)
	return _in(0xD8254CB2C586412B, p0, p1, _r, _ri)
end

function Global.N_0xd826690b5cf3beff(p0, p1)
	return _in(0xD826690B5CF3BEFF, p0, p1)
end

function Global.N_0xd8402b858f4ddd88(p0, p1)
	return _in(0xD8402B858F4DDD88, p0, p1, _r, _ri)
end

function Global.N_0xd840c130d7aacfa5(p0, p1, p2)
	return _in(0xD840C130D7AACFA5, p0, p1, p2)
end

function Global.N_0xd8736efda38edc5c(p0, p1, p2, p3, p4)
	return _in(0xD8736EFDA38EDC5C, p0, p1, p2, p3, p4)
end

function Global.N_0xd882c5b3991575b7(p0, p1, p2, p3, p4)
	return _in(0xD882C5B3991575B7, p0, p1, p2, p3, p4, _r, _rv)
end

function Global.N_0xd894437e12c17aec(p0, p1)
	return _in(0xD894437E12C17AEC, p0, p1)
end

function Global.N_0xd89504d9d7d5057d(p0)
	return _in(0xD89504D9D7D5057D, p0, _r, _ri)
end

function Global.N_0xd8c7162ab2e2af45(p0)
	return _in(0xD8C7162AB2E2AF45, p0)
end

function Global.N_0xd8ceeed54c672b5d(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD8CEEED54C672B5D, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xd8e3d22aa4f0e0a5()
	return _in(0xD8E3D22AA4F0E0A5, _r, _ri)
end

function Global.N_0xd904f75dbd7ab865(entity)
	return _in(0xD904F75DBD7AB865, entity)
end

function Global.N_0xd9130842d7226045(p0, p1)
	return _in(0xD9130842D7226045, p0, p1, _r, _ri)
end

function Global.N_0xd91e55b6c005eb09(p0, p1)
	return _in(0xD91E55B6C005EB09, p0, p1, _r, _ri)
end

function Global.N_0xd9267375834c5eab(p0)
	return _in(0xD9267375834C5EAB, p0, _r, _ri)
end

function Global.N_0xd92fa81b64920e85(p0, p1, p2)
	return _in(0xD92FA81B64920E85, p0, p1, p2)
end

function Global.N_0xd9459157eb22c895()
	return _in(0xD9459157EB22C895, _r, _ri)
end

function Global.N_0xd955fee4b87afa07(p0)
	return _in(0xD955FEE4B87AFA07, p0, _r, _ri)
end

function Global.N_0xd95d777f828b2bbb(p0)
	return _in(0xD95D777F828B2BBB, p0)
end

function Global.N_0xd95f04a4e73be85e(p0, p1)
	return _in(0xD95F04A4E73BE85E, p0, p1, _r, _ri)
end

function Global.N_0xd962f8579d702db5()
	return _in(0xD962F8579D702DB5)
end

function Global.N_0xd97d8d905f1562f2(p0)
	return _in(0xD97D8D905F1562F2, p0, _r, _ri)
end

function Global.N_0xd99229fe93b46286(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD99229FE93B46286, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xd999e379265a4501(p0, p1, p2)
	return _in(0xD999E379265A4501, p0, p1, p2)
end

function Global.N_0xd9bc98b55bcfaa9b(p0)
	return _in(0xD9BC98B55BCFAA9B, p0)
end

function Global.N_0xd9bf3ed8efb67ea3(p0, p1, p2, p3, p4)
	return _in(0xD9BF3ED8EFB67EA3, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xd9c24f53631f2372(p0, p1, p2)
	return _in(0xD9C24F53631F2372, p0, p1, p2, _r, _ri)
end

function Global.N_0xd9edb2e4512d563e(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xD9EDB2E4512D563E, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xd9f2ff4af394d926()
	return _in(0xD9F2FF4AF394D926)
end

function Global.N_0xda0a30153fcc0ffd()
	return _in(0xDA0A30153FCC0FFD)
end

function Global.N_0xda1a9adc4e3d4b16(p0, p1, p2)
	return _in(0xDA1A9ADC4E3D4B16, p0, p1, p2)
end

function Global.N_0xda1bfed8582f61f0()
	return _in(0xDA1BFED8582F61F0, _r, _ri)
end

function Global.N_0xda26263c07cce9c2(p0)
	return _in(0xDA26263C07CCE9C2, p0)
end

function Global.N_0xda26263c87cce9c1(p0, p1, p2, p3)
	return _in(0xDA26263C87CCE9C1, p0, p1, p2, p3)
end

function Global.N_0xda37a053c1522f5d(p0, p1, p2, p3)
	return _in(0xDA37A053C1522F5D, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xda4b1a479c414fb2()
	return _in(0xDA4B1A479C414FB2, _r, _ri)
end

function Global.N_0xda4d8eb04e8e2928(p0)
	return _in(0xDA4D8EB04E8E2928, p0)
end

function Global.N_0xda5d3f2c6dd5b5d4(p0)
	return _in(0xDA5D3F2C6DD5B5D4, p0)
end

function Global.N_0xda7fdeff4de86839()
	return _in(0xDA7FDEFF4DE86839, _r, _ri)
end

function Global.N_0xda801f7f6a5278d3(p0)
	return _in(0xDA801F7F6A5278D3, p0, _r, _ri)
end

function Global.N_0xda8b2eaf29e872e2(p0, p1, p2)
	return _in(0xDA8B2EAF29E872E2, p0, p1, p2, _r, _ri)
end

function Global.N_0xda98246c7a3c2189(p0)
	return _in(0xDA98246C7A3C2189, p0)
end

function Global.N_0xda9d7be231fe865f(p0, p1, p2)
	return _in(0xDA9D7BE231FE865F, p0, p1, p2, _r, _ri)
end

function Global.N_0xdab6a2fc56b7de65(p0)
	return _in(0xDAB6A2FC56B7DE65, p0, _r, _ri)
end

function Global.N_0xdabfe48ba0d457aa()
	return _in(0xDABFE48BA0D457AA, _r, _ri)
end

function Global.N_0xdace03c65c6666db(p0, p1)
	return _in(0xDACE03C65C6666DB, p0, p1)
end

function Global.N_0xdad6cd07caa4f382()
	return _in(0xDAD6CD07CAA4F382)
end

function Global.N_0xdad7fb8402651654()
	return _in(0xDAD7FB8402651654)
end

function Global.N_0xdaefdfdb2aeece37(p0, p1)
	return _in(0xDAEFDFDB2AEECE37, p0, p1, _r, _ri)
end

function Global.N_0xdb1bd07fb464584d(p0, p1)
	return _in(0xDB1BD07FB464584D, p0, p1)
end

function Global.N_0xdb382fe20c2da222(p0)
	return _in(0xDB382FE20C2DA222, p0)
end

function Global.N_0xdb438cc9bc6f4022()
	return _in(0xDB438CC9BC6F4022, _r, _ri)
end

function Global.N_0xdb48e99f8e064e56(p0)
	return _in(0xDB48E99F8E064E56, p0)
end

function Global.N_0xdb622ecd3dcbe078()
	return _in(0xDB622ECD3DCBE078, _r, _ri)
end

function Global.N_0xdb7abdd203fa3704()
	return _in(0xDB7ABDD203FA3704, _r, _ri)
end

function Global.N_0xdbbf12ea7c1029b2(p0, p1)
	return _in(0xDBBF12EA7C1029B2, p0, p1)
end

function Global.N_0xdbc4b552b2ae9a83(p0, p1)
	return _in(0xDBC4B552B2AE9A83, p0, p1, _r, _ri)
end

function Global.N_0xdc0556d0f484ecaa(p0)
	return _in(0xDC0556D0F484ECAA, p0)
end

function Global.N_0xdc057b86fc157031()
	return _in(0xDC057B86FC157031, _r, _ri)
end

function Global.N_0xdc0a1f0ecec9f0c0(p0, p1)
	return _in(0xDC0A1F0ECEC9F0C0, p0, p1)
end

function Global.N_0xdc2f83a0612ca34d(p0)
	return _in(0xDC2F83A0612CA34D, p0, _r, _ri)
end

function Global.N_0xdc3914a99b4a5fdf(p0)
	return _in(0xDC3914A99B4A5FDF, p0, _r, _ri)
end

function Global.N_0xdc416ca762bc4f43(p0, p1, p2, p3, p4, p5)
	return _in(0xDC416CA762BC4F43, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xdc44f405a6b98d03(p0, p1)
	return _in(0xDC44F405A6B98D03, p0, p1, _r, _ri)
end

function Global.N_0xdc5e09d012d759c4(p0, p1, p2)
	return _in(0xDC5E09D012D759C4, p0, p1, p2)
end

function Global.N_0xdc62cd70658e7a02()
	return _in(0xDC62CD70658E7A02, _r, _ri)
end

function Global.N_0xdc68829bb3f37023(p0, p1)
	return _in(0xDC68829BB3F37023, p0, p1)
end

function Global.N_0xdc69f6913cca0b99(p0, p1)
	return _in(0xDC69F6913CCA0B99, p0, p1)
end

function Global.N_0xdc6ad5c046f33ab4(p0, p1)
	return _in(0xDC6AD5C046F33AB4, p0, p1)
end

function Global.N_0xdc88d06719070c39(p0)
	return _in(0xDC88D06719070C39, p0, _r, _ri)
end

function Global.N_0xdc91f22f09bc6c2f(p0, p1)
	return _in(0xDC91F22F09BC6C2F, p0, p1)
end

function Global.N_0xdc9273d95976ba22(p0)
	return _in(0xDC9273D95976BA22, p0, _r, _ri)
end

function Global.N_0xdc93f0948f2c28f4(p0)
	return _in(0xDC93F0948F2C28F4, p0)
end

function Global.N_0xdc9655d47dec0353(p0)
	return _in(0xDC9655D47DEC0353, p0, _r, _ri)
end

function Global.N_0xdc9b361cb7776673(p0)
	return _in(0xDC9B361CB7776673, p0)
end

function Global.N_0xdca4a74135e1dea5(p0)
	return _in(0xDCA4A74135E1DEA5, p0, _r, _ri)
end

function Global.N_0xdca6abdb9288fbe4(p0, p1)
	return _in(0xDCA6ABDB9288FBE4, p0, p1)
end

function Global.N_0xdcc4b7f7112e8ab7(p0)
	return _in(0xDCC4B7F7112E8AB7, p0, _r, _ri)
end

function Global.N_0xdccaa7c3bfd88862(p0, p1, p2, p3, p4, p5)
	return _in(0xDCCAA7C3BFD88862, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xdcec875a02991ad0(p0, p1, p2, p3)
	return _in(0xDCEC875A02991AD0, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xdcf06d0cdff68424(p0, p1, p2)
	return _in(0xDCF06D0CDFF68424, p0, p1, p2, _r, _ri)
end

function Global.N_0xdcf12b89624aac96(p0)
	return _in(0xDCF12B89624AAC96, p0)
end

function Global.N_0xdcf5ba95bbf0faba(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xDCF5BA95BBF0FABA, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xdd03fc2089ad093c(p0, p1, p2, p3)
	return _in(0xDD03FC2089AD093C, p0, p1, p2, p3)
end

function Global.N_0xdd0660c997de94fd(p0, p1)
	return _in(0xDD0660C997DE94FD, p0, p1)
end

function Global.N_0xdd0b7c5ae58f721d(p0)
	return _in(0xDD0B7C5AE58F721D, p0, _r, _ri)
end

function Global.N_0xdd0bc0edcb2162f6(p0)
	return _in(0xDD0BC0EDCB2162F6, p0)
end

function Global.N_0xdd100ce1ebbf37e3(p0, p1)
	return _in(0xDD100CE1EBBF37E3, p0, p1)
end

function Global.N_0xdd1232b332cbb9e7(p0, p1, p2)
	return _in(0xDD1232B332CBB9E7, p0, p1, p2)
end

function Global.N_0xdd1e1393d966d39a(p0, p1)
	return _in(0xDD1E1393D966D39A, p0, p1, _r, _ri)
end

function Global.N_0xdd33a82352c4652f(p0, p1, p2)
	return _in(0xDD33A82352C4652F, p0, p1, p2)
end

function Global.N_0xdd560abef5d3784c(p0, p1)
	return _in(0xDD560ABEF5D3784C, p0, p1)
end

function Global.N_0xdd5fd601481f648b(p0)
	return _in(0xDD5FD601481F648B, p0, _r, _ri)
end

function Global.N_0xdd73c9838ce7181d()
	return _in(0xDD73C9838CE7181D, _r, _ri)
end

function Global.N_0xdd7806fd0543bc3d()
	return _in(0xDD7806FD0543BC3D, _r, _ri)
end

function Global.N_0xdd9540e7b1c9714f(p0, p1, p2, p3, p4)
	return _in(0xDD9540E7B1C9714F, p0, p1, p2, p3, p4)
end

function Global.N_0xdd9dc1ab63d513ce(p0, p1, p2)
	return _in(0xDD9DC1AB63D513CE, p0, p1, p2)
end

function Global.N_0xddaeb478e58f8dea(p0, p1)
	return _in(0xDDAEB478E58F8DEA, p0, p1, _r, _ri)
end

function Global.N_0xddb2578e95ef7138(p0)
	return _in(0xDDB2578E95EF7138, p0, _r, _ri)
end

function Global.N_0xddbd560745b1ee98(p0, p1, p2)
	return _in(0xDDBD560745B1EE98, p0, p1, p2, _r, _ri)
end

function Global.N_0xddbea5506c848227(p0)
	return _in(0xDDBEA5506C848227, p0, _r, _ri)
end

function Global.N_0xddc64f5e31eedab6(p0)
	return _in(0xDDC64F5E31EEDAB6, p0, _r, _ri)
end

function Global.N_0xddce8e960d1de240(p0)
	return _in(0xDDCE8E960D1DE240, p0)
end

function Global.N_0xddceb0f26c89c00f(p0)
	return _in(0xDDCEB0F26C89C00F, p0, _r, _ri)
end

function Global.N_0xddcf6fea5d7acc17(p0, p1)
	return _in(0xDDCF6FEA5D7ACC17, p0, p1)
end

function Global.N_0xddfad4deaa7fa362(p0, p1, p2, p3, p4)
	return _in(0xDDFAD4DEAA7FA362, p0, p1, p2, p3, p4)
end

function Global.N_0xde0c8b145ea466ff(p0, p1, p2, p3, p4, p5)
	return _in(0xDE0C8B145EA466FF, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xde0ea444735c1368(p0)
	return _in(0xDE0EA444735C1368, p0, _r, _ri)
end

function Global.N_0xde116ecffdd4b997(p0, p1)
	return _in(0xDE116ECFFDD4B997, p0, p1)
end

function Global.N_0xde1b1907a83a1550(p0, p1)
	return _in(0xDE1B1907A83A1550, p0, p1)
end

function Global.N_0xde2c3b74d2b3705c(p0, p1)
	return _in(0xDE2C3B74D2B3705C, p0, p1)
end

function Global.N_0xde3904b22695d9f9(p0, p1)
	return _in(0xDE3904B22695D9F9, p0, p1, _r, _ri)
end

function Global.N_0xde544b7ec0c187cc(p0)
	return _in(0xDE544B7EC0C187CC, p0)
end

function Global.N_0xde5faa741a781f73(p0, p1)
	return _in(0xDE5FAA741A781F73, p0, p1)
end

function Global.N_0xde6c85975f9d4894(p0)
	return _in(0xDE6C85975F9D4894, p0, _r, _ri)
end

function Global.N_0xde7b2b4144906cdf(p0, p1)
	return _in(0xDE7B2B4144906CDF, p0, p1)
end

function Global.N_0xde8c5b9f65017fa1(p0)
	return _in(0xDE8C5B9F65017FA1, p0, _r, _ri)
end

function Global.N_0xde9bad3292aa6d5e(p0)
	return _in(0xDE9BAD3292AA6D5E, p0, _r, _ri)
end

function Global.N_0xdea083c16bb91345()
	return _in(0xDEA083C16BB91345)
end

function Global.N_0xdeb2b99a1af1a2a6(p0)
	return _in(0xDEB2B99A1AF1A2A6, p0, _r, _ri)
end

function Global.N_0xdeb369f6ad168c58(p0, p1)
	return _in(0xDEB369F6AD168C58, p0, p1)
end

function Global.N_0xdedbed3020da49dc(p0)
	return _in(0xDEDBED3020DA49DC, p0)
end

function Global.N_0xdede679ed29dd4e7(p0, p1)
	return _in(0xDEDE679ED29DD4E7, p0, p1)
end

function Global.N_0xdee80fedfdd43c9b(p0, p1)
	return _in(0xDEE80FEDFDD43C9B, p0, p1)
end

function Global.N_0xdee8d30aa5c2e28d(p0, p1, p2)
	return _in(0xDEE8D30AA5C2E28D, p0, p1, p2)
end

function Global.N_0xdeede7c41742e011(p0)
	return _in(0xDEEDE7C41742E011, p0)
end

function Global.N_0xdf4a3404d022adde(p0, p1, p2)
	return _in(0xDF4A3404D022ADDE, p0, p1, p2, _r, _ri)
end

function Global.N_0xdf516e598d966d06(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xDF516E598D966D06, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xdf56a2b50c04dea4(p0, p1)
	return _in(0xDF56A2B50C04DEA4, p0, p1, _r, _ri)
end

function Global.N_0xdf631e4bce1b1fc4(p0, p1, p2, p3)
	return _in(0xDF631E4BCE1B1FC4, p0, p1, p2, p3)
end

function Global.N_0xdf66a37936d5f3d9(p0)
	return _in(0xDF66A37936D5F3D9, p0, _r, _ri)
end

function Global.N_0xdf728c5ae137fc14(p0, p1, p2)
	return _in(0xDF728C5AE137FC14, p0, p1, p2, _r, _ri)
end

function Global.N_0xdf7993356f52359a(p0, p1)
	return _in(0xDF7993356F52359A, p0, p1, _r, _ri)
end

function Global.N_0xdf7b5144e25cd3fe(p0, p1)
	return _in(0xDF7B5144E25CD3FE, p0, p1, _r, _ri)
end

function Global.N_0xdf7f5be9150e47e4(p0)
	return _in(0xDF7F5BE9150E47E4, p0)
end

function Global.N_0xdf8a5855b9f9a97b(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
	return _in(0xDF8A5855B9F9A97B, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
end

function Global.N_0xdf8e49ea89a01db1(p0, p1, p2)
	return _in(0xDF8E49EA89A01DB1, p0, p1, p2, _r, _ri)
end

function Global.N_0xdf93973251fb2ca5(p0, p1)
	return _in(0xDF93973251FB2CA5, p0, p1)
end

function Global.N_0xdf947fe0d551684e(p0, p1)
	return _in(0xDF947FE0D551684E, p0, p1, _r, _ri)
end

function Global.N_0xdf94844d474f31e5(p0)
	return _in(0xDF94844D474F31E5, p0)
end

function Global.N_0xdf95df488a645ce7()
	return _in(0xDF95DF488A645CE7)
end

function Global.N_0xdfa1237f5228263f(p0, p1)
	return _in(0xDFA1237F5228263F, p0, p1)
end

function Global.N_0xdfc2b226d56d85f6(p0, p1)
	return _in(0xDFC2B226D56D85F6, p0, p1, _r, _ri)
end

function Global.N_0xdfc85c5199045026(p0, p1)
	return _in(0xDFC85C5199045026, p0, p1)
end

function Global.N_0xdfce8ce9f3ebe93f(p0)
	return _in(0xDFCE8CE9F3EBE93F, p0)
end

function Global.N_0xdfe332a5da6fe7c9(p0)
	return _in(0xDFE332A5DA6FE7C9, p0, _r, _ri)
end

function Global.N_0xdfea23ec90113657(p0)
	return _in(0xDFEA23EC90113657, p0)
end

function Global.N_0xdffc15aa63d04aab()
	return _in(0xDFFC15AA63D04AAB, _r, _ri)
end

function Global.N_0xe015cf1f2c0959d8(p0)
	return _in(0xE015CF1F2C0959D8, p0, _r, _ri)
end

function Global.N_0xe01c8dc8edd28d31(p0, p1)
	return _in(0xE01C8DC8EDD28D31, p0, p1)
end

function Global.N_0xe01f55b2896f6b37(p0, p1)
	return _in(0xE01F55B2896F6B37, p0, p1)
end

function Global.N_0xe022cc1b545f1d9f(p0)
	return _in(0xE022CC1B545F1D9F, p0, _r, _ri)
end

function Global.N_0xe057fea9a22eb3ee(p0)
	return _in(0xE057FEA9A22EB3EE, p0)
end

function Global.N_0xe05a5d39be6e93af(p0)
	return _in(0xE05A5D39BE6E93AF, p0)
end

function Global.N_0xe083beda81709891(p0)
	return _in(0xE083BEDA81709891, p0, _r, _ri)
end

function Global.N_0xe0884c184728c75b(p0, p1, p2, p3)
	return _in(0xE0884C184728C75B, p0, p1, p2, p3)
end

function Global.N_0xe0961aed72642b80(p0)
	return _in(0xE0961AED72642B80, p0)
end

function Global.N_0xe0b45e983bfc0768()
	return _in(0xE0B45E983BFC0768)
end

function Global.N_0xe0b61ed8bb37712f(p0)
	return _in(0xE0B61ED8BB37712F, p0)
end

function Global.N_0xe0cb4ab15cb32710(p0, p1, p2)
	return _in(0xE0CB4AB15CB32710, p0, p1, p2)
end

function Global.N_0xe0d6c2a146a5c993(p0, p1)
	return _in(0xE0D6C2A146A5C993, p0, p1)
end

function Global.N_0xe0d73cddea79ddcd(p0)
	return _in(0xE0D73CDDEA79DDCD, p0, _r, _ri)
end

function Global.N_0xe0e65e0d261f7507(p0)
	return _in(0xE0E65E0D261F7507, p0)
end

function Global.N_0xe0fa74aa3cce650b(p0, p1)
	return _in(0xE0FA74AA3CCE650B, p0, p1)
end

function Global.N_0xe0fe107ab174d64a(p0, p1)
	return _in(0xE0FE107AB174D64A, p0, p1)
end

function Global.N_0xe10f2d7715ababec(p0)
	return _in(0xE10F2D7715ABABEC, p0, _r, _ri)
end

function Global.N_0xe1103300f3456de7(p0, p1, p2)
	return _in(0xE1103300F3456DE7, p0, p1, p2)
end

function Global.N_0xe116f6f2da2d777e(p0)
	return _in(0xE116F6F2DA2D777E, p0, _r, _rv)
end

function Global.N_0xe124889ae0521fcf(p0, p1, p2, p3)
	return _in(0xE124889AE0521FCF, p0, p1, p2, p3)
end

function Global.N_0xe12d7b4b959644cd()
	return _in(0xE12D7B4B959644CD)
end

function Global.N_0xe12f56cb25d9ce23(p0)
	return _in(0xE12F56CB25D9CE23, p0, _r, _ri)
end

function Global.N_0xe12f5ed49f44d40d(p0)
	return _in(0xE12F5ED49F44D40D, p0)
end

function Global.N_0xe133c1ec5300f740(p0, p1, p2)
	return _in(0xE133C1EC5300F740, p0, p1, p2)
end

function Global.N_0xe13634bb6baf0734(p0, p1)
	return _in(0xE13634BB6BAF0734, p0, p1, _r, _ri)
end

function Global.N_0xe141f6b40b1e3683(p0, p1)
	return _in(0xE141F6B40B1E3683, p0, p1)
end

function Global.N_0xe157a8a336c7f04a(p0, p1)
	return _in(0xE157A8A336C7F04A, p0, p1)
end

function Global.N_0xe19035eb65ab2932(p0, p1)
	return _in(0xE19035EB65AB2932, p0, p1)
end

function Global.N_0xe195c5a82156321d(p0, p1)
	return _in(0xE195C5A82156321D, p0, p1, _r, _ri)
end

function Global.N_0xe1a83d4a3b5d7938(p0)
	return _in(0xE1A83D4A3B5D7938, p0, _r, _ri)
end

function Global.N_0xe1aadd0055d76603(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xE1AADD0055D76603, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0xe1b3be07d3aadded(p0, p1, p2)
	return _in(0xE1B3BE07D3AADDED, p0, p1, p2)
end

function Global.N_0xe1bc73d6815ba361(p0, p1, p2)
	return _in(0xE1BC73D6815BA361, p0, p1, p2)
end

function Global.N_0xe1c0f8781bf130c2(p0, p1)
	return _in(0xE1C0F8781BF130C2, p0, p1, _r, _ri)
end

function Global.N_0xe1c105e6bba48270()
	return _in(0xE1C105E6BBA48270, _r, _ri)
end

function Global.N_0xe1c708ba4885796b(p0, p1)
	return _in(0xE1C708BA4885796B, p0, p1)
end

function Global.N_0xe1f365c4c8f259d8(p0, p1, p2)
	return _in(0xE1F365C4C8F259D8, p0, p1, p2, _r, _ri)
end

function Global.N_0xe1f45a67a9f0dcbc(p0)
	return _in(0xE1F45A67A9F0DCBC, p0)
end

function Global.N_0xe20027b414bfe6c7(p0, p1)
	return _in(0xE20027B414BFE6C7, p0, p1)
end

function Global.N_0xe22060121602493b(p0, p1, p2)
	return _in(0xE22060121602493B, p0, p1, p2)
end

function Global.N_0xe225cef1901f6108(p0, p1)
	return _in(0xE225CEF1901F6108, p0, p1)
end

function Global.N_0xe24822a4cfc9107a(p0, p1)
	return _in(0xE24822A4CFC9107A, p0, p1, _r, _ri)
end

function Global.N_0xe2487779957fe897(p0, p1)
	return _in(0xE2487779957FE897, p0, p1)
end

function Global.N_0xe24c64d9aded2ef5(p0, p1)
	return _in(0xE24C64D9ADED2EF5, p0, p1, _r, _ri)
end

function Global.N_0xe258570e0c116a66()
	return _in(0xE258570E0C116A66, _r, _ri)
end

function Global.N_0xe26970a7ae0f28e9(p0, p1, p2, p3)
	return _in(0xE26970A7AE0F28E9, p0, p1, p2, p3)
end

function Global.N_0xe28f73212a813e82(p0, p1, p2, p3)
	return _in(0xE28F73212A813E82, p0, p1, p2, p3)
end

function Global.N_0xe296208c273bd7f0(p0, p1, p2, p3, p4, p5)
	return _in(0xE296208C273BD7F0, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xe29d8cd66553dbaa(p0)
	return _in(0xE29D8CD66553DBAA, p0)
end

function Global.N_0xe2b3b852b537c398(p0)
	return _in(0xE2B3B852B537C398, p0)
end

function Global.N_0xe2bb2d6a9fe2ecde(p0)
	return _in(0xE2BB2D6A9FE2ECDE, p0)
end

function Global.N_0xe2be6ffa4a13cbb0(p0, p1, p2)
	return _in(0xE2BE6FFA4A13CBB0, p0, p1, p2)
end

function Global.N_0xe2c2fbb7825ffc66()
	return _in(0xE2C2FBB7825FFC66)
end

function Global.N_0xe2c3cec3c0903a00(p0)
	return _in(0xE2C3CEC3C0903A00, p0, _r, _ri)
end

function Global.N_0xe2cf104add49d4bf(p0)
	return _in(0xE2CF104ADD49D4BF, p0)
end

function Global.N_0xe3144b932dfdff65(p0, p1, p2, p3, p4)
	return _in(0xE3144B932DFDFF65, p0, p1, p2, p3, p4)
end

function Global.N_0xe31a04513237dc89()
	return _in(0xE31A04513237DC89, _r, _ri)
end

function Global.N_0xe31c0cb1c3186d40(p0)
	return _in(0xE31C0CB1C3186D40, p0)
end

function Global.N_0xe31fc20319874cb3(p0, p1, p2)
	return _in(0xE31FC20319874CB3, p0, p1, p2, _r, _ri)
end

function Global.N_0xe33f98bd76490abc(p0, p1, p2)
	return _in(0xE33F98BD76490ABC, p0, p1, p2, _r, _ri)
end

function Global.N_0xe348d1404bd80146(p0)
	return _in(0xE348D1404BD80146, p0, _r, _ri)
end

function Global.N_0xe3639db78b3b5400(p0)
	return _in(0xE3639DB78B3B5400, p0)
end

function Global.N_0xe368e8422c860ba7(p0, p1, p2)
	return _in(0xE368E8422C860BA7, p0, p1, p2, _r, _ri)
end

function Global.N_0xe36d2cb540597ef7(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xE36D2CB540597EF7, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.N_0xe36d4a38d28d9cfb(p0)
	return _in(0xE36D4A38D28D9CFB, p0)
end

function Global.N_0xe37acee15ac50c7e(p0, p1)
	return _in(0xE37ACEE15AC50C7E, p0, p1)
end

function Global.N_0xe38450dbcbc70e3d(p0, p1)
	return _in(0xE38450DBCBC70E3D, p0, p1, _r, _ri)
end

function Global.N_0xe39600e50d608693(p0, p1)
	return _in(0xE39600E50D608693, p0, p1, _r, _ri)
end

function Global.N_0xe3a46370f70f3607(p0, p1)
	return _in(0xE3A46370F70F3607, p0, p1)
end

function Global.N_0xe3ab5eefcb6671a2(p0)
	return _in(0xE3AB5EEFCB6671A2, p0)
end

function Global.N_0xe404bff0aba23cdc(p0)
	return _in(0xE404BFF0ABA23CDC, p0, _r, _ri)
end

function Global.N_0xe47001b7cb8b98ae(p0, p1, p2, p3, p4, p5)
	return _in(0xE47001B7CB8B98AE, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xe4770da1b8ff4fd1(p0)
	return _in(0xE4770DA1B8FF4FD1, p0, _r, _ri)
end

function Global.N_0xe47dd64b9f02677d(p0)
	return _in(0xE47DD64B9F02677D, p0, _r, _ri)
end

function Global.N_0xe483bb6be686f632(p0)
	return _in(0xE483BB6BE686F632, p0, _r, _ri)
end

function Global.N_0xe4abe20dce7c7cfe(p0, p1, p2)
	return _in(0xE4ABE20DCE7C7CFE, p0, p1, p2)
end

function Global.N_0xe4b7945ef4f1bfb2(p0, p1)
	return _in(0xE4B7945EF4F1BFB2, p0, p1)
end

function Global.N_0xe4c11f104620ddce(p0, p1)
	return _in(0xE4C11F104620DDCE, p0, p1, _r, _ri)
end

function Global.N_0xe4c51a8a3bd1664c(p0)
	return _in(0xE4C51A8A3BD1664C, p0, _r, _ri)
end

function Global.N_0xe4c64cd37cb176aa(p0)
	return _in(0xE4C64CD37CB176AA, p0, _r, _ri)
end

function Global.N_0xe4c95e0ae31c6512(p0, p1)
	return _in(0xE4C95E0AE31C6512, p0, p1)
end

function Global.N_0xe4d6e45f491a66cb(p0, p1)
	return _in(0xE4D6E45F491A66CB, p0, p1, _r, _ri)
end

function Global.N_0xe4e2c581f127a11c(p0, p1)
	return _in(0xE4E2C581F127A11C, p0, p1)
end

function Global.N_0xe4ef4382e22c780c(p0)
	return _in(0xE4EF4382E22C780C, p0)
end

function Global.N_0xe4efb315bcd2a838(p0, p1)
	return _in(0xE4EFB315BCD2A838, p0, p1)
end

function Global.N_0xe50a67c33514a390(p0, p1)
	return _in(0xE50A67C33514A390, p0, p1, _r, _ri)
end

function Global.N_0xe525878a35b9eebd(p0, p1)
	return _in(0xE525878A35B9EEBD, p0, p1, _r, _ri)
end

function Global.N_0xe532d6811b3a4d2a(p0)
	return _in(0xE532D6811B3A4D2A, p0, _r)
end

function Global.N_0xe53a308ac35877a8()
	return _in(0xE53A308AC35877A8, _r, _ri)
end

function Global.N_0xe546bda1b3e288ee(p0)
	return _in(0xE546BDA1B3E288EE, p0, _r, _ri)
end

function Global.N_0xe54bf2ce6c7d23a9(p0, p1, p2, p3, p4)
	return _in(0xE54BF2CE6C7D23A9, p0, p1, p2, p3, p4)
end

function Global.N_0xe54dc27571d5edc4(p0)
	return _in(0xE54DC27571D5EDC4, p0, _r, _ri)
end

function Global.N_0xe54dc27571d5edc5(p0)
	return _in(0xE54DC27571D5EDC5, p0, _r, _ri)
end

function Global.N_0xe55478c5edf70ac2(p0)
	return _in(0xE55478C5EDF70AC2, p0, _r, _ri)
end

function Global.N_0xe5634491a58c2703(p0)
	return _in(0xE5634491A58C2703, p0)
end

function Global.N_0xe57529d23541d2dd(p0, p1, p2)
	return _in(0xE57529D23541D2DD, p0, p1, p2)
end

function Global.N_0xe578c8ae173719b3(p0)
	return _in(0xE578C8AE173719B3, p0, _r, _ri)
end

function Global.N_0xe5822422197bbba3(p0, p1, p2)
	return _in(0xE5822422197BBBA3, p0, p1, p2, _r, _ri)
end

function Global.N_0xe5831aa1e2fd147c(p0)
	return _in(0xE5831AA1E2FD147C, p0)
end

function Global.N_0xe588b5a8a005cb5e(p0, p1, p2, p3)
	return _in(0xE588B5A8A005CB5E, p0, p1, p2, p3)
end

function Global.N_0xe59f4924bd3a718d(p0)
	return _in(0xE59F4924BD3A718D, p0, _r, _ri)
end

function Global.N_0xe5a680a5d8b1f687(p0)
	return _in(0xE5A680A5D8B1F687, p0)
end

function Global.N_0xe5a7f70b7c0f3271(p0, p1)
	return _in(0xE5A7F70B7C0F3271, p0, p1)
end

function Global.N_0xe5b76e5b56cd77dd()
	return _in(0xE5B76E5B56CD77DD, _r, _ri)
end

function Global.N_0xe5d3eb37abc1eb03(p0)
	return _in(0xE5D3EB37ABC1EB03, p0)
end

function Global.N_0xe5ef9de716ff737e(p0, p1, p2)
	return _in(0xE5EF9DE716FF737E, p0, p1, p2)
end

function Global.N_0xe5ff65cff5160752()
	return _in(0xE5FF65CFF5160752)
end

function Global.N_0xe600f61f54a444a6()
	return _in(0xE600F61F54A444A6, _r, _ri)
end

function Global.N_0xe62754d09354f6cf(p0)
	return _in(0xE62754D09354F6CF, p0, _r, _ri)
end

function Global.N_0xe631eaf35828fa67(p0)
	return _in(0xE631EAF35828FA67, p0, _r, _ri)
end

function Global.N_0xe63d68f455ca0b47(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xE63D68F455CA0B47, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xe65c5cba95f0e510(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xE65C5CBA95F0E510, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0xe67af24c5a3b6058(p0, p1, p2)
	return _in(0xE67AF24C5A3B6058, p0, p1, p2)
end

function Global.N_0xe682002db1f30669(p0)
	return _in(0xE682002DB1F30669, p0)
end

function Global.N_0xe69fda40aac3efc0(p0, p1)
	return _in(0xE69FDA40AAC3EFC0, p0, p1)
end

function Global.N_0xe6a151364c600b24(p0)
	return _in(0xE6A151364C600B24, p0, _r, _ri)
end

function Global.N_0xe6aab897120492d6(p0, p1)
	return _in(0xE6AAB897120492D6, p0, p1, _r, _ri)
end

function Global.N_0xe6aab897120492d7(p0, p1, p2)
	return _in(0xE6AAB897120492D7, p0, p1, p2)
end

function Global.N_0xe6b763c7f4902201(p0, p1)
	return _in(0xE6B763C7F4902201, p0, p1)
end

function Global.N_0xe6bd7dd3fd474415(p0, p1)
	return _in(0xE6BD7DD3FD474415, p0, p1)
end

function Global.N_0xe6c5e2125eb210c1(p0, p1, p2)
	return _in(0xE6C5E2125EB210C1, p0, p1, p2)
end

function Global.N_0xe6cb36f43a95d75f(p0)
	return _in(0xE6CB36F43A95D75F, p0)
end

function Global.N_0xe6d4e435b56d5bd0(p0, p1)
	return _in(0xE6D4E435B56D5BD0, p0, p1)
end

function Global.N_0xe6dc9b21ac7a8729(p0, p1, p2, p3)
	return _in(0xE6DC9B21AC7A8729, p0, p1, p2, p3)
end

function Global.N_0xe6f364de6c2fdefe()
	return _in(0xE6F364DE6C2FDEFE)
end

function Global.N_0xe7282390542f570d(p0)
	return _in(0xE7282390542F570D, p0, _r, _ri)
end

function Global.N_0xe72e234b30da7b7a()
	return _in(0xE72E234B30DA7B7A, _r, _ri)
end

function Global.N_0xe72e5c1289bd1f40(p0)
	return _in(0xE72E5C1289BD1F40, p0, _r, _ri)
end

function Global.N_0xe72f591958f3acab(p0)
	return _in(0xE72F591958F3ACAB, p0, _r, _ri)
end

function Global.N_0xe735a7da22e88359(p0)
	return _in(0xE735A7DA22E88359, p0)
end

function Global.N_0xe737d5f14304a2ec(p0, p1, p2)
	return _in(0xE737D5F14304A2EC, p0, p1, p2)
end

function Global.N_0xe75cddebf618c8ff(p0)
	return _in(0xE75CDDEBF618C8FF, p0, _r, _ri)
end

function Global.N_0xe75eea8db59a9f39(p0, p1, p2, p3, p4, p5)
	return _in(0xE75EEA8DB59A9F39, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xe76687023d8c8505(p0, p1)
	return _in(0xE76687023D8C8505, p0, p1, _r, _ri)
end

function Global.N_0xe7687eb2f634abf0(p0)
	return _in(0xE7687EB2F634ABF0, p0, _r, _ri)
end

function Global.N_0xe777ddf3e78397e8(p0)
	return _in(0xE777DDF3E78397E8, p0, _r, _ri)
end

function Global.N_0xe787f05dfc977bde(p0, p1)
	return _in(0xE787F05DFC977BDE, p0, p1, _r, _ri)
end

function Global.N_0xe78993ff9022c064(p0)
	return _in(0xE78993FF9022C064, p0)
end

function Global.N_0xe7998fec53a33bbe(p0, p1, p2, p3, p4, p5)
	return _in(0xE7998FEC53A33BBE, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xe79ba3bc265895da(p0)
	return _in(0xE79BA3BC265895DA, p0, _r, _ri)
end

function Global.N_0xe79c70e77e0973c7(p0, p1, p2, p3)
	return _in(0xE79C70E77E0973C7, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xe7bbc4e56b989449(p0, p1, p2)
	return _in(0xE7BBC4E56B989449, p0, p1, p2, _r, _ri)
end

function Global.N_0xe7dda8bd3bcf751c(p0)
	return _in(0xE7DDA8BD3BCF751C, p0)
end

function Global.N_0xe7e4c198b0185900(p0, p1, p2)
	return _in(0xE7E4C198B0185900, p0, p1, p2)
end

function Global.N_0xe7e6cb8b713ed190()
	return _in(0xE7E6CB8B713ED190)
end

function Global.N_0xe7f8707269544b29(p0, p1)
	return _in(0xE7F8707269544B29, p0, p1, _r, _ri)
end

function Global.N_0xe7fa07624574b79a(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xE7FA07624574B79A, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xe80e50bee276a54a(p0, p1)
	return _in(0xE80E50BEE276A54A, p0, p1, _r, _ri)
end

function Global.N_0xe8126623008372aa()
	return _in(0xE8126623008372AA)
end

function Global.N_0xe824ce7d13fcb300(p0, p1)
	return _in(0xE824CE7D13FCB300, p0, p1)
end

function Global.N_0xe824ce7d13fcb35e(p0)
	return _in(0xE824CE7D13FCB35E, p0, _r, _ri)
end

function Global.N_0xe8346e62fd7fb962()
	return _in(0xE8346E62FD7FB962)
end

function Global.N_0xe843d21a8e2498aa(p0, p1)
	return _in(0xE843D21A8E2498AA, p0, p1, _r, _ri)
end

function Global.N_0xe84aac1b22a73e99(p0, p1)
	return _in(0xE84AAC1B22A73E99, p0, p1)
end

function Global.N_0xe8770ee02aee45c2(p0)
	return _in(0xE8770EE02AEE45C2, p0)
end

function Global.N_0xe887bd31d97793f6(p0)
	return _in(0xE887BD31D97793F6, p0, _r, _ri)
end

function Global.N_0xe891504b2f0e2dba(p0, p1)
	return _in(0xE891504B2F0E2DBA, p0, p1)
end

function Global.N_0xe8a8378bf651079c(p0, p1, p2, p3, p4)
	return _in(0xE8A8378BF651079C, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xe8abe3b73fc7fe17(p0, p1, p2, p3)
	return _in(0xE8ABE3B73FC7FE17, p0, p1, p2, p3)
end

function Global.N_0xe8c296b75eacc357(p0, p1)
	return _in(0xE8C296B75EACC357, p0, p1)
end

function Global.N_0xe8d1ccb9375c101b(p0, p1)
	return _in(0xE8D1CCB9375C101B, p0, p1, _r, _ri)
end

function Global.N_0xe8e633215471bb5d(p0)
	return _in(0xE8E633215471BB5D, p0, _r, _ri)
end

function Global.N_0xe8eaff7b41edd291(p0, p1, p2)
	return _in(0xE8EAFF7B41EDD291, p0, p1, p2)
end

function Global.N_0xe8f1a5b4ced3725a(p0, p1, p2, p3, p4)
	return _in(0xE8F1A5B4CED3725A, p0, p1, p2, p3, p4)
end

function Global.N_0xe910932f4b30be23(p0)
	return _in(0xE910932F4B30BE23, p0)
end

function Global.N_0xe92012611461a42a(p0, p1, p2, p3, p4)
	return _in(0xE92012611461A42A, p0, p1, p2, p3, p4)
end

function Global.N_0xe9225354fb7437a7(p0, p1)
	return _in(0xE9225354FB7437A7, p0, p1)
end

function Global.N_0xe92261bd28c0878f(p0)
	return _in(0xE92261BD28C0878F, p0, _r, _ri)
end

function Global.N_0xe931354fea710038(p0)
	return _in(0xE931354FEA710038, p0)
end

function Global.N_0xe93415b3307208e5(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xE93415B3307208E5, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0xe94b5e938619712e()
	return _in(0xE94B5E938619712E)
end

function Global.N_0xe956c2340a76272e(p0)
	return _in(0xE956C2340A76272E, p0, _r, _ri)
end

function Global.N_0xe961bf23eab76b12(p0, p1)
	return _in(0xE961BF23EAB76B12, p0, p1, _r, _ri)
end

function Global.N_0xe97240065406cb80(p0, p1)
	return _in(0xE97240065406CB80, p0, p1)
end

function Global.N_0xe979bb5602ad3402(p0, p1)
	return _in(0xE979BB5602AD3402, p0, p1, _r, _ri)
end

function Global.N_0xe98204d3c25ae14c(p0)
	return _in(0xE98204D3C25AE14C, p0)
end

function Global.N_0xe98d55c5983f2509(p0)
	return _in(0xE98D55C5983F2509, p0, _r, _ri)
end

function Global.N_0xe9a6400d1a0e7a55(p0)
	return _in(0xE9A6400D1A0E7A55, p0, _r, _ri)
end

function Global.N_0xe9ac8466abe484bb(p0, p1)
	return _in(0xE9AC8466ABE484BB, p0, p1)
end

function Global.N_0xe9b168527b337bf0(p0, p1)
	return _in(0xE9B168527B337BF0, p0, p1, _r, _ri)
end

function Global.N_0xe9b3fec825668291(p0, p1, p2)
	return _in(0xE9B3FEC825668291, p0, p1, p2)
end

function Global.N_0xe9bd19f8121ade3e(p0, p1)
	return _in(0xE9BD19F8121ADE3E, p0, p1)
end

function Global.N_0xe9c59f6809373a99(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xE9C59F6809373A99, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri)
end

function Global.N_0xe9cd9a67834985a7(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xE9CD9A67834985A7, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.N_0xe9e06ea514a69061(p0, p1)
	return _in(0xE9E06EA514A69061, p0, p1)
end

function Global.N_0xe9e7a0bac7f57746(p0, p1)
	return _in(0xE9E7A0BAC7F57746, p0, p1)
end

function Global.N_0xe9eb79cbf9c0f58a(p0)
	return _in(0xE9EB79CBF9C0F58A, p0, _r, _ri)
end

function Global.N_0xe9f24081d84931b8()
	return _in(0xE9F24081D84931B8)
end

function Global.N_0xe9f676788f8d5e1e(p0)
	return _in(0xE9F676788F8D5E1E, p0, _r, _ri)
end

function Global.N_0xea113bf9b0c0c5d7(p0, p1, p2)
	return _in(0xEA113BF9B0C0C5D7, p0, p1, p2, _r, _ri)
end

function Global.N_0xea31f199a73801d3(p0)
	return _in(0xEA31F199A73801D3, p0, _r, _ri)
end

function Global.N_0xea323f5e1a4da2f1(p0, p1)
	return _in(0xEA323F5E1A4DA2F1, p0, p1)
end

function Global.N_0xea41d44a8d42057b()
	return _in(0xEA41D44A8D42057B, _r, _ri)
end

function Global.N_0xea44e97849e9f3dd(p0)
	return _in(0xEA44E97849E9F3DD, p0, _r, _ri)
end

function Global.N_0xea522f991e120d45(p0)
	return _in(0xEA522F991E120D45, p0, _r, _ri)
end

function Global.N_0xea546c31fd45f8cd(p0)
	return _in(0xEA546C31FD45F8CD, p0)
end

function Global.N_0xea6de0cd15aecbe2(p0)
	return _in(0xEA6DE0CD15AECBE2, p0)
end

function Global.N_0xea8763e505afd49a(p0, p1, p2)
	return _in(0xEA8763E505AFD49A, p0, p1, p2)
end

function Global.N_0xea8f168a76a0b9bc(p0, p1, p2, p3)
	return _in(0xEA8F168A76A0B9BC, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xeaa8242c8479c27d(p0, p1)
	return _in(0xEAA8242C8479C27D, p0, p1)
end

function Global.N_0xeaa885ba3cea4e4a(p0, p1, p2, p3)
	return _in(0xEAA885BA3CEA4E4A, p0, p1, p2, p3)
end

function Global.N_0xeab3d91d30a344f1(p0)
	return _in(0xEAB3D91D30A344F1, p0)
end

function Global.N_0xeacebaae0a33fb3f(p0)
	return _in(0xEACEBAAE0A33FB3F, p0)
end

function Global.N_0xeae3b5b019c8d23f(p0, p1)
	return _in(0xEAE3B5B019C8D23F, p0, p1)
end

function Global.N_0xeaf529446488eb18(p0)
	return _in(0xEAF529446488EB18, p0)
end

function Global.N_0xeaf682a14f8e5f53(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xEAF682A14F8E5F53, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.N_0xeaf87da2be78a15b(p0, p1)
	return _in(0xEAF87DA2BE78A15B, p0, p1)
end

function Global.N_0xeb1a4dd8352ec828(p0)
	return _in(0xEB1A4DD8352EC828, p0, _r, _ri)
end

function Global.N_0xeb2ed1dc3aec0654(p0, p1, p2, p3, p4)
	return _in(0xEB2ED1DC3AEC0654, p0, p1, p2, p3, p4)
end

function Global.N_0xeb3cb3386c775d72(p0)
	return _in(0xEB3CB3386C775D72, p0)
end

function Global.N_0xeb48ce48eec41fd4(p0)
	return _in(0xEB48CE48EEC41FD4, p0)
end

function Global.N_0xeb4d592620b8c209(p0)
	return _in(0xEB4D592620B8C209, p0)
end

function Global.N_0xeb6027fd1b4600d5(p0, p1, p2)
	return _in(0xEB6027FD1B4600D5, p0, p1, p2)
end

function Global.N_0xeb67d4e056c85a81(p0)
	return _in(0xEB67D4E056C85A81, p0, _r, _ri)
end

function Global.N_0xeb6f1a9b5510a5d2(p0, p1)
	return _in(0xEB6F1A9B5510A5D2, p0, p1)
end

function Global.N_0xeb8886e1065654cd(p0, p1, p2, p3)
	return _in(0xEB8886E1065654CD, p0, p1, p2, p3)
end

function Global.N_0xeb946b9e579729ad(p0, p1)
	return _in(0xEB946B9E579729AD, p0, p1)
end

function Global.N_0xeb98b38ca60742d7(p0)
	return _in(0xEB98B38CA60742D7, p0, _r, _ri)
end

function Global.N_0xeba2081e0a5f4d17(p0)
	return _in(0xEBA2081E0A5F4D17, p0)
end

function Global.N_0xeba314768fb35d58(p0)
	return _in(0xEBA314768FB35D58, p0, _r, _ri)
end

function Global.N_0xeba51a294c73292e(p0)
	return _in(0xEBA51A294C73292E, p0)
end

function Global.N_0xeba87b9273835cf3(p0, p1)
	return _in(0xEBA87B9273835CF3, p0, p1)
end

function Global.N_0xebaac9a750e7563b(p0)
	return _in(0xEBAAC9A750E7563B, p0, _r, _ri)
end

function Global.N_0xebb208d6ae712c03(p0)
	return _in(0xEBB208D6AE712C03, p0, _r, _ri)
end

function Global.N_0xebb6e27ac2ff32da(p0, p1, p2, p3, p4)
	return _in(0xEBB6E27AC2FF32DA, p0, p1, p2, p3, p4)
end

function Global.N_0xebd49472bccf7642(p0, p1)
	return _in(0xEBD49472BCCF7642, p0, p1)
end

function Global.N_0xebdc12861d079aba(p0, p1)
	return _in(0xEBDC12861D079ABA, p0, p1)
end

function Global.N_0xebe46b501bc3fbcf(p0, p1, p2)
	return _in(0xEBE46B501BC3FBCF, p0, p1, p2)
end

function Global.N_0xebe89623eb861271(p0, p1)
	return _in(0xEBE89623EB861271, p0, p1, _r, _ri)
end

function Global.N_0xebfa8d50addc54c4(p0)
	return _in(0xEBFA8D50ADDC54C4, p0, _r)
end

function Global.N_0xebff94328ff7a18a(p0, p1)
	return _in(0xEBFF94328FF7A18A, p0, p1)
end

function Global.N_0xec089f84a9c16c62()
	return _in(0xEC089F84A9C16C62, _r, _ri)
end

function Global.N_0xec0bd8736dcaf841(p0)
	return _in(0xEC0BD8736DCAF841, p0)
end

function Global.N_0xec116edb683ad479(p0)
	return _in(0xEC116EDB683AD479, p0)
end

function Global.N_0xec174adbcb611ecc(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xEC174ADBCB611ECC, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0xec254c2c9b0f08f1(p0, p1)
	return _in(0xEC254C2C9B0F08F1, p0, p1, _r, _ri)
end

function Global.N_0xec3959e9950bf56b(p0)
	return _in(0xEC3959E9950BF56B, p0, _r, _ri)
end

function Global.N_0xec3d8c228fe553d7(p0)
	return _in(0xEC3D8C228FE553D7, p0, _r, _ri)
end

function Global.N_0xec3f7f24eeeb3ba3()
	return _in(0xEC3F7F24EEEB3BA3)
end

function Global.N_0xec43c2ffb70e3f30(p0, p1, p2, p3)
	return _in(0xEC43C2FFB70E3F30, p0, p1, p2, p3)
end

function Global.N_0xec516fe805d2cb2d(p0)
	return _in(0xEC516FE805D2CB2D, p0)
end

function Global.N_0xec60d1d225bc50aa(p0, p1)
	return _in(0xEC60D1D225BC50AA, p0, p1)
end

function Global.N_0xec6935ebe0847b90(p0, p1, p2, p3)
	return _in(0xEC6935EBE0847B90, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xec6b59be445fec51(p0)
	return _in(0xEC6B59BE445FEC51, p0, _r, _ri)
end

function Global.N_0xec7e480ff8bd0bed(p0)
	return _in(0xEC7E480FF8BD0BED, p0, _r, _ri)
end

function Global.N_0xec819d612038ef4b(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xEC819D612038EF4B, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.N_0xec8703e4536a9952()
	return _in(0xEC8703E4536A9952)
end

function Global.N_0xec97101a8f311282(p0)
	return _in(0xEC97101A8F311282, p0, _r, _ri)
end

function Global.N_0xec9a1261bf0ce510(p0)
	return _in(0xEC9A1261BF0CE510, p0, _r, _ri)
end

function Global.N_0xecbb26529a737ef6(p0)
	return _in(0xECBB26529A737EF6, p0)
end

function Global.N_0xecd67e9fa677cccf(p0)
	return _in(0xECD67E9FA677CCCF, p0)
end

function Global.N_0xece3c34b270428d5()
	return _in(0xECE3C34B270428D5, _r, _ri)
end

function Global.N_0xece6a0c1b59cd8be(p0)
	return _in(0xECE6A0C1B59CD8BE, p0, _r, _ri)
end

function Global.N_0xed00d72f81cf7278(p0, p1, p2)
	return _in(0xED00D72F81CF7278, p0, p1, p2)
end

function Global.N_0xed1c764997a86d5a(p0, p1)
	return _in(0xED1C764997A86D5A, p0, p1)
end

function Global.N_0xed1f514af4732258(p0)
	return _in(0xED1F514AF4732258, p0, _r, _ri)
end

function Global.N_0xed22be4c5a399e63(p0, p1, p2, p3)
	return _in(0xED22BE4C5A399E63, p0, p1, p2, p3)
end

function Global.N_0xed27560703f37258(p0)
	return _in(0xED27560703F37258, p0)
end

function Global.N_0xed4413cee1bf142c(p0)
	return _in(0xED4413CEE1BF142C, p0, _r, _ri)
end

function Global.N_0xed4b0c1057892b2e(p0, p1, p2, p3)
	return _in(0xED4B0C1057892B2E, p0, p1, p2, p3)
end

function Global.N_0xed591cb17c8ba216(p0, p1, p2)
	return _in(0xED591CB17C8BA216, p0, p1, p2)
end

function Global.N_0xed9582b3da8f02b4(p0)
	return _in(0xED9582B3DA8F02B4, p0)
end

function Global.N_0xeda5cbecf56e1386(p0)
	return _in(0xEDA5CBECF56E1386, p0)
end

function Global.N_0xedd964b7984ac291(p0, p1)
	return _in(0xEDD964B7984AC291, p0, p1, _r, _ri)
end

function Global.N_0xedfc6c1fd1c964f5(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xEDFC6C1FD1C964F5, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xee04c0afd4efaf0e(p0)
	return _in(0xEE04C0AFD4EFAF0E, p0, _r, _ri)
end

function Global.N_0xee1d6ff54caf7714(p0, p1)
	return _in(0xEE1D6FF54CAF7714, p0, p1, _r, _ri)
end

function Global.N_0xee4f20004d0288b7()
	return _in(0xEE4F20004D0288B7)
end

function Global.N_0xee5ae9956743ba20(p0, p1)
	return _in(0xEE5AE9956743BA20, p0, p1)
end

--- SET_PED_CAN_*
-- @param ped :
-- @param toggle :
function Global.N_0xee9df765990e8d1d(ped, toggle)
	return _in(0xEE9DF765990E8D1D, ped, toggle)
end

function Global.N_0xeeb7818b1d307212(p0)
	return _in(0xEEB7818B1D307212, p0)
end

function Global.N_0xeed08a3a98b847e2(p0, p1, p2)
	return _in(0xEED08A3A98B847E2, p0, p1, p2)
end

function Global.N_0xeedc9b29314b2733(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xEEDC9B29314B2733, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0xeee4829304f93eee(p0, p1)
	return _in(0xEEE4829304F93EEE, p0, p1)
end

function Global.N_0xeeed8fafec331a70(p0, p1, p2, p3, p4)
	return _in(0xEEED8FAFEC331A70, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xeef83a759ae06a27(p0)
	return _in(0xEEF83A759AE06A27, p0, _r, _ri)
end

function Global.N_0xef1a8a484118735e()
	return _in(0xEF1A8A484118735E)
end

function Global.N_0xef254f1a4c08b7e6(p0)
	return _in(0xEF254F1A4C08B7E6, p0, _r, _ri)
end

function Global.N_0xef259aa1e097e0ad(p0, p1)
	return _in(0xEF259AA1E097E0AD, p0, p1)
end

function Global.N_0xef28a614b4b264b8(p0, p1)
	return _in(0xEF28A614B4B264B8, p0, p1)
end

function Global.N_0xef2d9ed7ce684f08(p0)
	return _in(0xEF2D9ED7CE684F08, p0, _r, _ri)
end

function Global.N_0xef2e6f870783369b(p0, p1)
	return _in(0xEF2E6F870783369B, p0, p1, _r, _ri)
end

function Global.N_0xef324e9550a394d5(p0)
	return _in(0xEF324E9550A394D5, p0, _r, _ri)
end

function Global.N_0xef371232bc6053e1(p0)
	return _in(0xEF371232BC6053E1, p0)
end

function Global.N_0xef3a8772f085b4aa(p0)
	return _in(0xEF3A8772F085B4AA, p0, _r, _ri)
end

function Global.N_0xef3c68f56bad7b69(p0, p1)
	return _in(0xEF3C68F56BAD7B69, p0, p1)
end

function Global.N_0xef42f56f69877125()
	return _in(0xEF42F56F69877125)
end

function Global.N_0xef50e344a8f93784(p0, p1, p2, p3)
	return _in(0xEF50E344A8F93784, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xef51242e35242b47(p0)
	return _in(0xEF51242E35242B47, p0)
end

function Global.N_0xef5a3d2285d8924b(p0, p1)
	return _in(0xEF5A3D2285D8924B, p0, p1)
end

function Global.N_0xef6f2a35faaf2ed7(p0)
	return _in(0xEF6F2A35FAAF2ED7, p0, _r, _ri)
end

function Global.N_0xef7ab1a0e8c86170(p0, p1)
	return _in(0xEF7AB1A0E8C86170, p0, p1)
end

function Global.N_0xef9a3132a0aa6b19()
	return _in(0xEF9A3132A0AA6B19, _r, _ri)
end

function Global.N_0xefb5f34cc0953b27(p0)
	return _in(0xEFB5F34CC0953B27, p0)
end

function Global.N_0xefc4303ddc6e60d3(p0)
	return _in(0xEFC4303DDC6E60D3, p0, _r, _ri)
end

function Global.N_0xefc535c9faf563b3(p0)
	return _in(0xEFC535C9FAF563B3, p0, _r, _ri)
end

function Global.N_0xefc5c6670e0b99ba()
	return _in(0xEFC5C6670E0B99BA)
end

function Global.N_0xefd875c2791ebefd(p0, p1, p2, p3)
	return _in(0xEFD875C2791EBEFD, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xf008e0ba1fe1d644(p0)
	return _in(0xF008E0BA1FE1D644, p0)
end

function Global.N_0xf01c570e0a0a1e67(p0)
	return _in(0xF01C570E0A0A1E67, p0, _r, _ri)
end

function Global.N_0xf01d21df39554115(p0)
	return _in(0xF01D21DF39554115, p0)
end

function Global.N_0xf02a9c330bbfc5c7(p0)
	return _in(0xF02A9C330BBFC5C7, p0)
end

function Global.N_0xf0460c7bf80011ea(p0)
	return _in(0xF0460C7BF80011EA, p0, _r, _ri)
end

function Global.N_0xf05dfaf1adfef2cd(p0, p1, p2, p3, p4, p5)
	return _in(0xF05DFAF1ADFEF2CD, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xf06c5b66de20b2b8(p0)
	return _in(0xF06C5B66DE20B2B8, p0)
end

function Global.N_0xf06cbb8ccca823c0(p0, p1)
	return _in(0xF06CBB8CCCA823C0, p0, p1)
end

function Global.N_0xf08d8feb455f2c8c(p0, p1)
	return _in(0xF08D8FEB455F2C8C, p0, p1)
end

function Global.N_0xf08e42bfa46bdff8(p0, p1)
	return _in(0xF08E42BFA46BDFF8, p0, p1, _r, _ri)
end

function Global.N_0xf092b6030d6fd49c(p0, p1)
	return _in(0xF092B6030D6FD49C, p0, p1)
end

function Global.N_0xf0b4f759f35cc7f5(p0, p1, p2, p3, p4)
	return _in(0xF0B4F759F35CC7F5, p0, p1, p2, p3, p4)
end

function Global.N_0xf0b67bad53c35bd9(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xF0B67BAD53C35BD9, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xf0c0c94b404206fa()
	return _in(0xF0C0C94B404206FA, _r, _ri)
end

function Global.N_0xf0d545c1eead614a()
	return _in(0xF0D545C1EEAD614A, _r, _ri)
end

function Global.N_0xf0d54e0651dd7e07()
	return _in(0xF0D54E0651DD7E07)
end

function Global.N_0xf0d728eea3c99775(p0, p1, p2)
	return _in(0xF0D728EEA3C99775, p0, p1, p2)
end

function Global.N_0xf0ee69f500952fa5(p0)
	return _in(0xF0EE69F500952FA5, p0, _r, _ri)
end

function Global.N_0xf0fbf193f1f5c0ea(p0)
	return _in(0xF0FBF193F1F5C0EA, p0)
end

function Global.N_0xf0fbfb9ab15f7734(p0, p1, p2)
	return _in(0xF0FBFB9AB15F7734, p0, p1, p2, _r, _ri)
end

function Global.N_0xf0fe8e790bfeb5bb(p0, p1)
	return _in(0xF0FE8E790BFEB5BB, p0, p1)
end

function Global.N_0xf103823ffe72bb49(p0)
	return _in(0xF103823FFE72BB49, p0, _r, _ri)
end

function Global.N_0xf1142e5d64b47802(p0, p1)
	return _in(0xF1142E5D64B47802, p0, p1)
end

function Global.N_0xf11d7cb962fcd747(p0)
	return _in(0xF11D7CB962FCD747, p0)
end

function Global.N_0xf14bcef290f869e1(p0, p1, p2, p3, p4, p5)
	return _in(0xF14BCEF290F869E1, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xf1622ce88a1946fb()
	return _in(0xF1622CE88A1946FB)
end

function Global.N_0xf184b3ece36219cf(p0, p1)
	return _in(0xF184B3ECE36219CF, p0, p1, _r, _ri)
end

function Global.N_0xf18af483df70bbde(p0)
	return _in(0xF18AF483DF70BBDE, p0, _r, _ri)
end

function Global.N_0xf19706b1f8ffa88f(p0, p1)
	return _in(0xF19706B1F8FFA88F, p0, p1)
end

function Global.N_0xf1a6feedf3776ef9()
	return _in(0xF1A6FEEDF3776EF9)
end

function Global.N_0xf1ad3dd218e6558a(p0, p1)
	return _in(0xF1AD3DD218E6558A, p0, p1, _r, _ri)
end

function Global.N_0xf1b84178f8674195(p0)
	return _in(0xF1B84178F8674195, p0)
end

function Global.N_0xf1c03a5352243a30(p0)
	return _in(0xF1C03A5352243A30, p0)
end

function Global.N_0xf1c5310feaa36b48(p0, p1, p2, p3, p4, p5)
	return _in(0xF1C5310FEAA36B48, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xf1e6979c0b779985(p0)
	return _in(0xF1E6979C0B779985, p0)
end

function Global.N_0xf1ea2a881eb7f2cd(p0, p1)
	return _in(0xF1EA2A881EB7F2CD, p0, p1)
end

function Global.N_0xf20b18a330e6db5c(p0)
	return _in(0xF20B18A330E6DB5C, p0, _r, _ri)
end

function Global.N_0xf216f74101968db0(p0)
	return _in(0xF216F74101968DB0, p0, _r, _ri)
end

function Global.N_0xf21a5d66874fcedd(p0, p1, p2)
	return _in(0xF21A5D66874FCEDD, p0, p1, p2)
end

function Global.N_0xf21c7a3f3ffba629(p0)
	return _in(0xF21C7A3F3FFBA629, p0)
end

function Global.N_0xf232c2c546ac16d0(p0)
	return _in(0xF232C2C546AC16D0, p0)
end

function Global.N_0xf236c84c6adfcb2f()
	return _in(0xF236C84C6ADFCB2F, _r, _ri)
end

function Global.N_0xf239400e16c23e08(p0, p1)
	return _in(0xF239400E16C23E08, p0, p1)
end

function Global.N_0xf23a6d6c11d8ec15(p0)
	return _in(0xF23A6D6C11D8EC15, p0, _r, _ri)
end

function Global.N_0xf23d6475640d29eb(p0)
	return _in(0xF23D6475640D29EB, p0, _r, _ri)
end

function Global.N_0xf252a85b8f3f8c58(p0, p1)
	return _in(0xF252A85B8F3F8C58, p0, p1, _r, _ri)
end

function Global.N_0xf256a75210c5c0eb(p0, p1, p2, p3)
	return _in(0xF256A75210C5C0EB, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xf260af6f43953316(p0)
	return _in(0xF260AF6F43953316, p0, _r, _ri)
end

function Global.N_0xf2753d691bcda314(p0, p1, p2)
	return _in(0xF2753D691BCDA314, p0, p1, p2, _r, _ri)
end

function Global.N_0xf27f1a8de4f50a1b(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xF27F1A8DE4F50A1B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.N_0xf29a186ed428b552(p0, p1)
	return _in(0xF29A186ED428B552, p0, p1, _r, _ri)
end

function Global.N_0xf2a2177ac848b3a8(p0, p1, p2)
	return _in(0xF2A2177AC848B3A8, p0, p1, p2)
end

function Global.N_0xf2cbc969c4f090c7()
	return _in(0xF2CBC969C4F090C7, _r, _ri)
end

function Global.N_0xf2cca7b68cfab2b9(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
	return _in(0xF2CCA7B68CFAB2B9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
end

function Global.N_0xf2ea041f1146d75b(p0, p1, p2, p3, p4)
	return _in(0xF2EA041F1146D75B, p0, p1, p2, p3, p4)
end

function Global.N_0xf2f543d48f319a3a()
	return _in(0xF2F543D48F319A3A)
end

function Global.N_0xf2f585411e748b9c(p0, p1)
	return _in(0xF2F585411E748B9C, p0, p1, _r, _ri)
end

function Global.N_0xf2fddcc8c6bae1b3(p0)
	return _in(0xF2FDDCC8C6BAE1B3, p0, _r, _ri)
end

function Global.N_0xf302ab9d978352ee()
	return _in(0xF302AB9D978352EE, _r, _ri)
end

function Global.N_0xf330a5c062b29bed(p0)
	return _in(0xF330A5C062B29BED, p0, _r, _ri)
end

function Global.N_0xf3354d6ca46f419d(p0, p1)
	return _in(0xF3354D6CA46F419D, p0, p1)
end

function Global.N_0xf336e9f989b3518f(p0)
	return _in(0xF336E9F989B3518F, p0, _r, _ri)
end

function Global.N_0xf342f6bd0a8287d5(p0)
	return _in(0xF342F6BD0A8287D5, p0)
end

function Global.N_0xf3735acd11acd500(p0, p1)
	return _in(0xF3735ACD11ACD500, p0, p1, _r, _ri)
end

function Global.N_0xf3735acd11acd501(p0, p1)
	return _in(0xF3735ACD11ACD501, p0, p1, _r, _ri)
end

function Global.N_0xf37a2149bc9a8a27(p0, p1, p2, p3, p4)
	return _in(0xF37A2149BC9A8A27, p0, p1, p2, p3, p4)
end

function Global.N_0xf382c92ccc1ccdbc(p0, p1, p2)
	return _in(0xF382C92CCC1CCDBC, p0, p1, p2, _r, _ri)
end

function Global.N_0xf383e96c4904df0c(p0, p1, p2, p3)
	return _in(0xF383E96C4904DF0C, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xf3a2fba5985c8cd5(p0, p1, p2, p3)
	return _in(0xF3A2FBA5985C8CD5, p0, p1, p2, p3)
end

function Global.N_0xf3c873ed0c595109(p0)
	return _in(0xF3C873ED0C595109, p0, _r, _ri)
end

function Global.N_0xf3de57a46d5585e9(p0)
	return _in(0xF3DE57A46D5585E9, p0, _r, _ri)
end

function Global.N_0xf3e039322bfbd4d8(p0)
	return _in(0xF3E039322BFBD4D8, p0)
end

function Global.N_0xf3fda9a617a15145(p0, p1, p2)
	return _in(0xF3FDA9A617A15145, p0, p1, p2)
end

function Global.N_0xf40a109b4b79a848(p0, p1, p2)
	return _in(0xF40A109B4B79A848, p0, p1, p2)
end

function Global.N_0xf40ab58d83c35027(p0)
	return _in(0xF40AB58D83C35027, p0)
end

function Global.N_0xf40ef49b3099e98e(p0, p1, p2, p3, p4, p5)
	return _in(0xF40EF49B3099E98E, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xf41e2979d5bc5370(p0)
	return _in(0xF41E2979D5BC5370, p0)
end

function Global.N_0xf42db680a8b2a4d9(p0)
	return _in(0xF42DB680A8B2A4D9, p0, _r, _ri)
end

function Global.N_0xf4452ce83118c738(p0, p1)
	return _in(0xF4452CE83118C738, p0, p1, _r, _ri)
end

function Global.N_0xf445de8da80a1792()
	return _in(0xF445DE8DA80A1792, _r, _ri)
end

function Global.N_0xf45e46deecf7df6e(p0, p1, p2, p3, p4)
	return _in(0xF45E46DEECF7DF6E, p0, p1, p2, p3, p4)
end

function Global.N_0xf4601c1203b1a78d(p0, p1)
	return _in(0xF4601C1203B1A78D, p0, p1, _r, _ri)
end

function Global.N_0xf46108c50a22b029()
	return _in(0xF46108C50A22B029, _r, _ri)
end

function Global.N_0xf47a1eb2a538a3a3()
	return _in(0xF47A1EB2A538A3A3, _r, _ri)
end

function Global.N_0xf47e33f8d2523825(p0, p1)
	return _in(0xF47E33F8D2523825, p0, p1, _r, _ri)
end

function Global.N_0xf4823c813cb8277d(p0, p1, p2, p3)
	return _in(0xF4823C813CB8277D, p0, p1, p2, p3)
end

function Global.N_0xf4860514ad354226(p0, p1, p2, p3, p4, p5)
	return _in(0xF4860514AD354226, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xf48664e9c83825e3(p0, p1)
	return _in(0xF48664E9C83825E3, p0, p1)
end

function Global.N_0xf489f94bfee12bb0(p0, p1)
	return _in(0xF489F94BFEE12BB0, p0, p1)
end

function Global.N_0xf49574e2332a8f06(p0, p1)
	return _in(0xF49574E2332A8F06, p0, p1)
end

function Global.N_0xf49f14462f0ae27c(p0)
	return _in(0xF49F14462F0AE27C, p0, _r, _ri)
end

function Global.N_0xf4a5c4509bf923b1(p0, p1)
	return _in(0xF4A5C4509BF923B1, p0, p1)
end

function Global.N_0xf4ac4fa844fd559a(p0)
	return _in(0xF4AC4FA844FD559A, p0, _r, _ri)
end

function Global.N_0xf4cb347d7b5eb0fd()
	return _in(0xF4CB347D7B5EB0FD, _r, _ri)
end

function Global.N_0xf52bd94b47ccf736(p0, p1, p2, p3)
	return _in(0xF52BD94B47CCF736, p0, p1, p2, p3)
end

function Global.N_0xf533d68ff970d190(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xF533D68FF970D190, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xf5622fa6acfca7db(p0, p1)
	return _in(0xF5622FA6ACFCA7DB, p0, p1)
end

function Global.N_0xf569e33fb72ed28e()
	return _in(0xF569E33FB72ED28E)
end

function Global.N_0xf5793bb386e1ff9c(p0)
	return _in(0xF5793BB386E1FF9C, p0)
end

function Global.N_0xf57db8e83dcd8349(p0)
	return _in(0xF57DB8E83DCD8349, p0, _r, _ri)
end

function Global.N_0xf59fde7b4d31a630(p0)
	return _in(0xF59FDE7B4D31A630, p0, _r, _ri)
end

function Global.N_0xf5e45cb1cf965d2d(p0, p1, p2)
	return _in(0xF5E45CB1CF965D2D, p0, p1, p2)
end

function Global.N_0xf5ea41c1408695fb(p0, p1, p2, p3)
	return _in(0xF5EA41C1408695FB, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xf5ead898ef387e73(p0)
	return _in(0xF5EAD898EF387E73, p0)
end

function Global.N_0xf5ffb08976911b50(p0, p1, p2, p3)
	return _in(0xF5FFB08976911B50, p0, p1, p2, p3)
end

function Global.N_0xf60165e1d2c5370b(ped)
	return _in(0xF60165E1D2C5370B, ped, _i, _i, _r)
end

function Global.N_0xf60386770878a98f(p0, p1, p2, p3, p4)
	return _in(0xF60386770878A98F, p0, p1, p2, p3, p4)
end

function Global.N_0xf611de44aeb36a1d(p0, p1)
	return _in(0xF611DE44AEB36A1D, p0, p1)
end

function Global.N_0xf61cfedeab627bfa(p0)
	return _in(0xF61CFEDEAB627BFA, p0, _r, _ri)
end

function Global.N_0xf620f47b4f4a78c4(p0, p1)
	return _in(0xF620F47B4F4A78C4, p0, p1)
end

function Global.N_0xf6262491c7704a63(p0, p1)
	return _in(0xF6262491C7704A63, p0, p1)
end

function Global.N_0xf634e2892220ef34(p0, p1)
	return _in(0xF634E2892220EF34, p0, p1)
end

function Global.N_0xf63fa29d4a9aca86(p0, p1)
	return _in(0xF63FA29D4A9ACA86, p0, p1)
end

function Global.N_0xf64034d533ce8aac(p0, p1, p2)
	return _in(0xF64034D533CE8AAC, p0, p1, p2)
end

function Global.N_0xf65ede5d02a7a760(p0, p1)
	return _in(0xF65EDE5D02A7A760, p0, p1)
end

function Global.N_0xf66090013de648d5(p0)
	return _in(0xF66090013DE648D5, p0, _r, _ri)
end

function Global.N_0xf666ef30f4f0ac4e(p0)
	return _in(0xF666EF30F4F0AC4E, p0)
end

function Global.N_0xf6a7c08df2e28b28(p0, p1, p2, p3)
	return _in(0xF6A7C08DF2E28B28, p0, p1, p2, p3)
end

function Global.N_0xf6a8a652a6b186cd(p0)
	return _in(0xF6A8A652A6B186CD, p0, _r, _ri)
end

function Global.N_0xf6a8c4b4a11ae89c(p0, p1, p2, p3, p4, p5)
	return _in(0xF6A8C4B4A11AE89C, p0, p1, p2, p3, p4, p5, _r, _ri)
end

function Global.N_0xf6b82fce03b43a37(p0, p1)
	return _in(0xF6B82FCE03B43A37, p0, p1)
end

function Global.N_0xf6bee7e80ec5ca40(p0)
	return _in(0xF6BEE7E80EC5CA40, p0)
end

function Global.N_0xf6ce6f9c3897804e(p0)
	return _in(0xF6CE6F9C3897804E, p0, _r, _ri)
end

function Global.N_0xf6d9e1f3560cbf8e(p0, p1, p2, p3, p4)
	return _in(0xF6D9E1F3560CBF8E, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.N_0xf6de98516fd3ac9b()
	return _in(0xF6DE98516FD3AC9B)
end

function Global.N_0xf6e3d38869d0f7ad(p0)
	return _in(0xF6E3D38869D0F7AD, p0)
end

function Global.N_0xf6e88489b4e6ebe5(p0, p1)
	return _in(0xF6E88489B4E6EBE5, p0, p1)
end

function Global.N_0xf6f5447d418daa82(p0)
	return _in(0xF6F5447D418DAA82, p0, _r, _ri)
end

function Global.N_0xf708298675abdc6a(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xF708298675ABDC6A, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.N_0xf70f00013a62f866(p0)
	return _in(0xF70F00013A62F866, p0, _r, _rv)
end

function Global.N_0xf718931a82eeb898()
	return _in(0xF718931A82EEB898)
end

function Global.N_0xf7327acc7a89aef1(p0, p1, p2)
	return _in(0xF7327ACC7A89AEF1, p0, p1, p2, _r, _ri)
end

function Global.N_0xf7424890e4a094c0(p0, p1)
	return _in(0xF7424890E4A094C0, p0, p1, _r, _ri)
end

function Global.N_0xf74e134f40192884(p0, p1)
	return _in(0xF74E134F40192884, p0, p1)
end

function Global.N_0xf78e669fdc202e73()
	return _in(0xF78E669FDC202E73)
end

function Global.N_0xf794765390a6dca5(p0, p1)
	return _in(0xF794765390A6DCA5, p0, p1, _r, _ri)
end

function Global.N_0xf7c180f57f85d0b8(p0)
	return _in(0xF7C180F57F85D0B8, p0, _r, _ri)
end

function Global.N_0xf7ea250b9a919e03(p0, p1)
	return _in(0xF7EA250B9A919E03, p0, p1)
end

function Global.N_0xf7f51a57349739f2()
	return _in(0xF7F51A57349739F2, _r, _ri)
end

function Global.N_0xf8096df9b87246e3(p0)
	return _in(0xF8096DF9B87246E3, p0)
end

function Global.N_0xf8181b5ef156862c(p0)
	return _in(0xF8181B5EF156862C, p0)
end

function Global.N_0xf81c53561d15f330()
	return _in(0xF81C53561D15F330, _r, _ri)
end

function Global.N_0xf8204ef17410bf43(p0, p1, p2, p3)
	return _in(0xF8204EF17410BF43, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xf824530b612fe0ce()
	return _in(0xF824530B612FE0CE, _r, _ri)
end

function Global.N_0xf83d3dda4d3c8169(p0)
	return _in(0xF83D3DDA4D3C8169, p0, _r, _ri)
end

function Global.N_0xf8806ec3ff840fdc()
	return _in(0xF8806EC3FF840FDC, _r, _ri)
end

function Global.N_0xf8938cf3984092a5(p0)
	return _in(0xF8938CF3984092A5, p0)
end

function Global.N_0xf89d82a0582e46ed(p0, p1)
	return _in(0xF89D82A0582E46ED, p0, p1)
end

function Global.N_0xf8b48a361dc388ae(p0)
	return _in(0xF8B48A361DC388AE, p0, _r, _ri)
end

function Global.N_0xf8bcc5eca33ac9c1()
	return _in(0xF8BCC5ECA33AC9C1, _r, _ri)
end

function Global.N_0xf8c20282b237e3f7(p0)
	return _in(0xF8C20282B237E3F7, p0)
end

function Global.N_0xf8ca39d5c0d1d9a1(p0, p1)
	return _in(0xF8CA39D5C0D1D9A1, p0, p1)
end

function Global.N_0xf8d09ef8ce61d7bf(p0, p1)
	return _in(0xF8D09EF8CE61D7BF, p0, p1, _r, _ri)
end

function Global.N_0xf8d1d2dab6007eef(p0, p1)
	return _in(0xF8D1D2DAB6007EEF, p0, p1, _r, _ri)
end

function Global.N_0xf8de7154f7d1458f(p0)
	return _in(0xF8DE7154F7D1458F, p0, _r, _ri)
end

function Global.N_0xf8f0705e77a0e705(p0)
	return _in(0xF8F0705E77A0E705, p0, _r, _ri)
end

function Global.N_0xf8f7da13cfbd4532(p0, p1)
	return _in(0xF8F7DA13CFBD4532, p0, p1)
end

function Global.N_0xf917f92bf22ecbab(p0)
	return _in(0xF917F92BF22ECBAB, p0)
end

function Global.N_0xf92099527db8e2a7(p0, p1)
	return _in(0xF92099527DB8E2A7, p0, p1)
end

function Global.N_0xf92fa8890dececf6(p0, p1)
	return _in(0xF92FA8890DECECF6, p0, p1)
end

function Global.N_0xf9331b3a314eb49d(p0)
	return _in(0xF9331B3A314EB49D, p0, _r, _ri)
end

function Global.N_0xf94692eb9dc15d74(p0, p1)
	return _in(0xF94692EB9DC15D74, p0, p1, _r, _ri)
end

function Global.N_0xf948f4356f010f11(p0, p1, p2)
	return _in(0xF948F4356F010F11, p0, p1, p2)
end

function Global.N_0xf94a0d5b254375df(p0)
	return _in(0xF94A0D5B254375DF, p0)
end

function Global.N_0xf972f0ab16dc5260(p0, p1, p2)
	return _in(0xF972F0AB16DC5260, p0, p1, p2)
end

function Global.N_0xf97c34c33487d569(p0, p1)
	return _in(0xF97C34C33487D569, p0, p1, _r, _ri)
end

function Global.N_0xf97f462779b31786(p0)
	return _in(0xF97F462779B31786, p0, _r, _ri)
end

function Global.N_0xf98dde0a8ed09323(p0)
	return _in(0xF98DDE0A8ED09323, p0)
end

function Global.N_0xf9933164965533b7(p0, p1)
	return _in(0xF9933164965533B7, p0, p1, _r, _ri)
end

function Global.N_0xf993373285053d77(p0, p1, p2)
	return _in(0xF993373285053D77, p0, p1, p2)
end

function Global.N_0xf9acf4a08098ea25(ped, p1)
	return _in(0xF9ACF4A08098EA25, ped, p1)
end

function Global.N_0xf9b83b77929d8863()
	return _in(0xF9B83B77929D8863, _r, _ri)
end

function Global.N_0xf9b91c5129eabc08(p0, p1)
	return _in(0xF9B91C5129EABC08, p0, p1, _r, _ri)
end

function Global.N_0xf9c1681347c8bd15(object)
	return _in(0xF9C1681347C8BD15, object)
end

function Global.N_0xf9cbd46433e36713(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xF9CBD46433E36713, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0xf9cff5bb70e8a2cb(p0, p1)
	return _in(0xF9CFF5BB70E8A2CB, p0, p1)
end

function Global.N_0xf9e7dbb39080640b()
	return _in(0xF9E7DBB39080640B, _r, _ri)
end

function Global.N_0xf9e951a1e5517c06()
	return _in(0xF9E951A1E5517C06)
end

function Global.N_0xf9f0b3028431967b(p0, p1)
	return _in(0xF9F0B3028431967B, p0, p1, _r, _ri)
end

function Global.N_0xf9f14080d80937bd(p0)
	return _in(0xF9F14080D80937BD, p0)
end

function Global.N_0xfa0d206b489a6846(p0, p1, p2, p3, p4)
	return _in(0xFA0D206B489A6846, p0, p1, p2, p3, p4)
end

function Global.N_0xfa15c9a320e707b0()
	return _in(0xFA15C9A320E707B0)
end

function Global.N_0xfa1d5e8d1c3ccd67(p0, p1)
	return _in(0xFA1D5E8D1C3CCD67, p0, p1)
end

function Global.N_0xfa2ecc78a6014d4f(p0, p1, p2, p3)
	return _in(0xFA2ECC78A6014D4F, p0, p1, p2, p3)
end

function Global.N_0xfa30e2254461adeb(p0, p1)
	return _in(0xFA30E2254461ADEB, p0, p1)
end

function Global.N_0xfa38b52f91b59075()
	return _in(0xFA38B52F91B59075, _r, _ri)
end

function Global.N_0xfa3b61ec249b4674(p0)
	return _in(0xFA3B61EC249B4674, p0, _r, _ri)
end

function Global.N_0xfa437fa0738c370c(p0, p1, p2, p3, p4)
	return _in(0xFA437FA0738C370C, p0, p1, p2, p3, p4)
end

function Global.N_0xfa50f79257745e74(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xFA50F79257745E74, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xfa742b82d093d848(p0, p1, p2)
	return _in(0xFA742B82D093D848, p0, p1, p2)
end

function Global.N_0xfa7c5b7e087a4ceb()
	return _in(0xFA7C5B7E087A4CEB, _r, _ri)
end

function Global.N_0xfa7daae3959e6c7b(p0, p1)
	return _in(0xFA7DAAE3959E6C7B, p0, p1)
end

function Global.N_0xfa821997794f48e7(p0, p1, p2)
	return _in(0xFA821997794F48E7, p0, p1, p2)
end

function Global.N_0xfa8c10dce0706d43(p0)
	return _in(0xFA8C10DCE0706D43, p0, _r, _ri)
end

function Global.N_0xfa91736933ab3d93(p0)
	return _in(0xFA91736933AB3D93, p0)
end

function Global.N_0xfaad23de7a54fc14()
	return _in(0xFAAD23DE7A54FC14)
end

function Global.N_0xfaed234c7f53abeb()
	return _in(0xFAED234C7F53ABEB, _r, _ri)
end

function Global.N_0xfb0e622b401884d3(p0)
	return _in(0xFB0E622B401884D3, p0)
end

function Global.N_0xfb16f08f47b83b4c(p0)
	return _in(0xFB16F08F47B83B4C, p0)
end

function Global.N_0xfb1e7998b8595825(p0, p1)
	return _in(0xFB1E7998B8595825, p0, p1, _r, _ri)
end

function Global.N_0xfb4891bd7578cdc1(p0, p1)
	return _in(0xFB4891BD7578CDC1, p0, p1, _r, _ri)
end

function Global.N_0xfb5674687a1b2814(p0, p1, p2)
	return _in(0xFB5674687A1B2814, p0, p1, p2, _r, _ri)
end

function Global.N_0xfb680a9b33d0edbe(p0)
	return _in(0xFB680A9B33D0EDBE, p0)
end

function Global.N_0xfb6e111908502871(p0)
	return _in(0xFB6E111908502871, p0)
end

function Global.N_0xfb6eb8785f808551(player, p1, p2)
	return _in(0xFB6EB8785F808551, player, p1, p2, _r)
end

function Global.N_0xfb7cf1de938a3e22(p0)
	return _in(0xFB7CF1DE938A3E22, p0, _r, _ri)
end

function Global.N_0xfb9153a54ac713e8(p0, p1)
	return _in(0xFB9153A54AC713E8, p0, p1)
end

function Global.N_0xfb9eced5b68f3b78(p0)
	return _in(0xFB9ECED5B68F3B78, p0, _r, _ri)
end

function Global.N_0xfbc30b70b3cdb87e()
	return _in(0xFBC30B70B3CDB87E, _r, _ri)
end

function Global.N_0xfbd137bf0ec50fc9(p0, p1)
	return _in(0xFBD137BF0EC50FC9, p0, p1, _r, _ri)
end

function Global.N_0xfbdfe1c1356e12e8(p0, p1)
	return _in(0xFBDFE1C1356E12E8, p0, p1, _r, _ri)
end

function Global.N_0xfbe782b3165ac8ec(p0)
	return _in(0xFBE782B3165AC8EC, p0, _r, _ri)
end

function Global.N_0xfbf161fcfec8589e(p0, p1, p2, p3)
	return _in(0xFBF161FCFEC8589E, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xfc23348f0f4e245f(p0, p1, p2, p3)
	return _in(0xFC23348F0F4E245F, p0, p1, p2, p3)
end

function Global.N_0xfc3b580c4380b5b7(p0)
	return _in(0xFC3B580C4380B5B7, p0, _r, _ri)
end

function Global.N_0xfc3bab1801a8255a(p0, p1)
	return _in(0xFC3BAB1801A8255A, p0, p1)
end

function Global.N_0xfc3db99c8144cd81(p0, p1, p2, p3, p4)
	return _in(0xFC3DB99C8144CD81, p0, p1, p2, p3, p4)
end

function Global.N_0xfc3f638be2b6bb02()
	return _in(0xFC3F638BE2B6BB02)
end

function Global.N_0xfc4165c9165c166f()
	return _in(0xFC4165C9165C166F, _r, _ri)
end

function Global.N_0xfc464598f6ee97b0()
	return _in(0xFC464598F6EE97B0, _r, _ri)
end

function Global.N_0xfc4f15a7dddc47b1(p0, p1)
	return _in(0xFC4F15A7DDDC47B1, p0, p1)
end

function Global.N_0xfc6ecb9170145ece()
	return _in(0xFC6ECB9170145ECE)
end

function Global.N_0xfc6fcf4c03f1bbf6()
	return _in(0xFC6FCF4C03F1BBF6)
end

function Global.N_0xfc7563f482781a3d()
	return _in(0xFC7563F482781A3D, _r, _ri)
end

function Global.N_0xfc77c5b44d5ff7c0(p0)
	return _in(0xFC77C5B44D5FF7C0, p0)
end

function Global.N_0xfc79dcc94d0a5897(p0, p1, p2)
	return _in(0xFC79DCC94D0A5897, p0, p1, p2)
end

function Global.N_0xfc7f71cf49f70b6b(p0)
	return _in(0xFC7F71CF49F70B6B, p0)
end

function Global.N_0xfc81d7c7a151cfaa(p0, p1, p2)
	return _in(0xFC81D7C7A151CFAA, p0, p1, p2, _r, _ri)
end

function Global.N_0xfc832b06127d8e99(p0, p1)
	return _in(0xFC832B06127D8E99, p0, p1, _r, _ri)
end

function Global.N_0xfc9806da9a460093(p0, p1, p2, p3, p4, p5)
	return _in(0xFC9806DA9A460093, p0, p1, p2, p3, p4, p5)
end

function Global.N_0xfc9b53c072f418e0()
	return _in(0xFC9B53C072F418E0, _r, _ri)
end

function Global.N_0xfca8fb9e15fa80d3(p0, p1)
	return _in(0xFCA8FB9E15FA80D3, p0, p1)
end

function Global.N_0xfcc6db8dbe709bc8(p0)
	return _in(0xFCC6DB8DBE709BC8, p0)
end

function Global.N_0xfccc886ede3c63ec(p0, p1, p2)
	return _in(0xFCCC886EDE3C63EC, p0, p1, p2)
end

function Global.N_0xfcdec42b1c78b7f8(p0, p1)
	return _in(0xFCDEC42B1C78B7F8, p0, p1)
end

function Global.N_0xfcf96ccbd81b24c8(p0)
	return _in(0xFCF96CCBD81B24C8, p0, _r, _ri)
end

function Global.N_0xfd010a2154b40676(p0, p1)
	return _in(0xFD010A2154B40676, p0, p1)
end

function Global.N_0xfd05b1dde83749fa(p0)
	return _in(0xFD05B1DDE83749FA, p0, _r, _ri)
end

function Global.N_0xfd0759658268fd8e(p0)
	return _in(0xFD0759658268FD8E, p0, _r, _ri)
end

function Global.N_0xfd0e389cd44434b6(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0xFD0E389CD44434B6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri)
end

function Global.N_0xfd1ac0b3858f224c(p0, p1, p2, p3)
	return _in(0xFD1AC0B3858F224C, p0, p1, p2, p3)
end

function Global.N_0xfd1ba1eef7985bb8(p0, p1)
	return _in(0xFD1BA1EEF7985BB8, p0, p1, _r, _ri)
end

function Global.N_0xfd3c31a2e45671e7(p0, p1)
	return _in(0xFD3C31A2E45671E7, p0, p1)
end

function Global.N_0xfd41d1d4350f6413(p0)
	return _in(0xFD41D1D4350F6413, p0)
end

function Global.N_0xfd4272a137703449()
	return _in(0xFD4272A137703449)
end

function Global.N_0xfd461d0aba5559b1(p0, p1)
	return _in(0xFD461D0ABA5559B1, p0, p1)
end

function Global.N_0xfd5bb35aab83fd48(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xFD5BB35AAB83FD48, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

--- SET_PED_CAN_*
-- @param ped :
-- @param toggle :
function Global.N_0xfd6943b6df77e449(ped, toggle)
	return _in(0xFD6943B6DF77E449, ped, toggle)
end

function Global.N_0xfd8e853f0bc2e942(p0, p1)
	return _in(0xFD8E853F0BC2E942, p0, p1)
end

function Global.N_0xfdb008b3bcf5992f(p0, p1, p2)
	return _in(0xFDB008B3BCF5992F, p0, p1, p2)
end

function Global.N_0xfdcedfb0577a390d(p0, p1)
	return _in(0xFDCEDFB0577A390D, p0, p1, _r, _ri)
end

function Global.N_0xfdecca06e8b81346(p0)
	return _in(0xFDECCA06E8B81346, p0, _r, _ri)
end

function Global.N_0xfdf38e2b711bf78e(p0, p1)
	return _in(0xFDF38E2B711BF78E, p0, p1, _r, _ri)
end

function Global.N_0xfdfc14799373283f(p0)
	return _in(0xFDFC14799373283F, p0, _r, _ri)
end

function Global.N_0xfdfecc6ee4491e11(p0)
	return _in(0xFDFECC6EE4491E11, p0)
end

function Global.N_0xfe0304050261442c(p0, p1)
	return _in(0xFE0304050261442C, p0, p1, _r, _ri)
end

function Global.N_0xfe2b3d5500b1b2e4(p0, p1)
	return _in(0xFE2B3D5500B1B2E4, p0, p1)
end

function Global.N_0xfe53b1f8d43f19bf(p0, p1)
	return _in(0xFE53B1F8D43F19BF, p0, p1, _r, _ri)
end

function Global.N_0xfe5c6177064bd390(p0)
	return _in(0xFE5C6177064BD390, p0, _r, _ri)
end

function Global.N_0xfe5d28b9b7837cc1(p0, p1, p2, p3)
	return _in(0xFE5D28B9B7837CC1, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xfe691e89c08937b6(p0, p1)
	return _in(0xFE691E89C08937B6, p0, p1, _r, _ri)
end

function Global.N_0xfe7966df01452f32(p0, p1, p2)
	return _in(0xFE7966DF01452F32, p0, p1, p2)
end

function Global.N_0xfe7c9cf376d23342(p0, p1)
	return _in(0xFE7C9CF376D23342, p0, p1)
end

function Global.N_0xfea6126c34df2532(p0, p1)
	return _in(0xFEA6126C34DF2532, p0, p1)
end

function Global.N_0xfeab3db4edb236eb(p0)
	return _in(0xFEAB3DB4EDB236EB, p0, _r, _ri)
end

function Global.N_0xfeb8646818294c75(p0, p1)
	return _in(0xFEB8646818294C75, p0, p1)
end

function Global.N_0xfec1d4b5c82c176f(p0)
	return _in(0xFEC1D4B5C82C176F, p0, _r, _ri)
end

function Global.N_0xfec85339aaca2a35(p0, p1)
	return _in(0xFEC85339AACA2A35, p0, p1)
end

function Global.N_0xfeca17cf3343694b(p0, p1)
	return _in(0xFECA17CF3343694B, p0, p1)
end

function Global.N_0xfeca2081f61ed2cd(p0, p1, p2, p3)
	return _in(0xFECA2081F61ED2CD, p0, p1, p2, p3)
end

function Global.N_0xfee4a5459472a9f8()
	return _in(0xFEE4A5459472A9F8)
end

function Global.N_0xfefcc345ce357453(p0, p1, p2, p3)
	return _in(0xFEFCC345CE357453, p0, p1, p2, p3, _r, _ri)
end

function Global.N_0xfefddc6e8fdf8a75(p0, p1)
	return _in(0xFEFDDC6E8FDF8A75, p0, p1)
end

function Global.N_0xfeff01b5725bcd22(p0)
	return _in(0xFEFF01B5725BCD22, p0, _r, _ri)
end

function Global.N_0xff07cf465f48b830(p0)
	return _in(0xFF07CF465F48B830, p0, _r, _ri)
end

function Global.N_0xff1e339ce40eaaaf(p0, p1)
	return _in(0xFF1E339CE40EAAAF, p0, p1)
end

function Global.N_0xff252e2bafb7330f(p0)
	return _in(0xFF252E2BAFB7330F, p0)
end

function Global.N_0xff2b1f59fb892f14(p0)
	return _in(0xFF2B1F59FB892F14, p0)
end

function Global.N_0xff36f36b07e69059(p0)
	return _in(0xFF36F36B07E69059, p0)
end

function Global.N_0xff5791b7639c2a46(p0, p1)
	return _in(0xFF5791B7639C2A46, p0, p1, _r, _ri)
end

function Global.N_0xff584f097c17fa8f()
	return _in(0xFF584F097C17FA8F, _r, _ri)
end

function Global.N_0xff745b0346e19e2c(p0)
	return _in(0xFF745B0346E19E2C, p0)
end

function Global.N_0xff8018c778349234(p0)
	return _in(0xFF8018C778349234, p0)
end

function Global.N_0xff83af534156b399(p0, p1)
	return _in(0xFF83AF534156B399, p0, p1)
end

function Global.N_0xff8afca532b500d4(p0, p1)
	return _in(0xFF8AFCA532B500D4, p0, p1)
end

function Global.N_0xff9052bc7a3b7d33(p0, p1, p2, p3)
	return _in(0xFF9052BC7A3B7D33, p0, p1, p2, p3)
end

function Global.N_0xff975bc4435a0fa3(p0)
	return _in(0xFF975BC4435A0FA3, p0, _r, _ri)
end

--- SET_ENTITY_LO*
-- @param entity :
-- @param toggle :
function Global.N_0xff9965c47fa404da(entity, toggle)
	return _in(0xFF9965C47FA404DA, entity, toggle)
end

function Global.N_0xffa13742e43507e3(p0, p1)
	return _in(0xFFA13742E43507E3, p0, p1, _r, _ri)
end

function Global.N_0xffa1594703ed27ca(p0, p1)
	return _in(0xFFA1594703ED27CA, p0, p1)
end

function Global.N_0xffb520a3e16f7b7b(p0, p1)
	return _in(0xFFB520A3E16F7B7B, p0, p1)
end

function Global.N_0xffb99ffd17f65889(p0, p1)
	return _in(0xFFB99FFD17F65889, p0, p1)
end

function Global.N_0xffcc2db2d9953401(p0, p1, p2)
	return _in(0xFFCC2DB2D9953401, p0, p1, p2, _r, _ri)
end

function Global.N_0xffd54d9fe71b966a(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xFFD54D9FE71B966A, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.N_0xffddf802279be128(p0, p1, p2)
	return _in(0xFFDDF802279BE128, p0, p1, p2)
end

function Global.N_0xffde295662405b25(p0)
	return _in(0xFFDE295662405B25, p0, _r, _ri)
end

function Global.N_0xffe9c53deea3db0b(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xFFE9C53DEEA3DB0B, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.N_0xffebe5aa96bc2e4e(p0, p1, p2)
	return _in(0xFFEBE5AA96BC2E4E, p0, p1, p2, _r, _ri)
end

function Global.N_0xffec4b0a1a3ed515(p0, p1)
	return _in(0xFFEC4B0A1A3ED515, p0, p1, _r, _ri)
end

function Global.N_0xfff6579cf0139fce(p0)
	return _in(0xFFF6579CF0139FCE, p0)
end

function Global.N_0xfffe15b433300b8c(p0, p1, p2)
	return _in(0xFFFE15B433300B8C, p0, p1, p2)
end

function Global.NetToEnt(netHandle)
	return _in(0xBFFEAB45A9A9094A, netHandle, _r, _ri)
end

function Global.NetToObj(netHandle)
	return _in(0xD8515F5FEA14CB3F, netHandle, _r, _ri)
end

function Global.NetToPed(netHandle)
	return _in(0xBDCD95FC216A8B3E, netHandle, _r, _ri)
end

function Global.NetToVeh(netHandle)
	return _in(0x367B936610BA360C, netHandle, _r, _ri)
end

function Global.NetworkAccessTunableBool(tunableContext, tunableName)
	return _in(0xAA6A47A573ABB75A, _ch(tunableContext), _ch(tunableName), _r)
end

function Global.NetworkAccessTunableInt(tunableContext, tunableName, value)
	return _in(0x8BE1146DFD5D4468, _ch(tunableContext), _ch(tunableName), _ii(value) --[[ may be optional ]], _r)
end

function Global.NetworkAddFriend(message)
	return _in(0x8E02D73914064223, _i, _ts(message), _r)
end

function Global.NetworkAreHandlesTheSame()
	return _in(0x57DBA049E110F217, _i, _i, _r)
end

--- Returns value of fwuiCachedSetting "general.onlineNotificationsInStoryMode"
function Global.NetworkAreOnlineNotificationsShownInStoryMode()
	return _in(0xF5C5929E07512F80, _r)
end

function Global.NetworkCanAccessMultiplayer(loadingState)
	return _in(0xAF50DA1A3F8B1BA4, _ii(loadingState) --[[ may be optional ]], _r)
end

function Global.NetworkCanSessionEnd()
	return _in(0x4EEBC3694E49C572, _r)
end

function Global.NetworkClanGetLocalMembershipsCount()
	return _in(0x1F471B79ACC90BEF, _r, _ri)
end

function Global.NetworkClanGetMembershipDesc(p1)
	return _in(0x48DE78AF2C8885B8, _i, p1, _r)
end

function Global.NetworkClanIsEmblemReady(p0, p1)
	return _in(0xA134777FF7F33331, p0, _ii(p1) --[[ may be optional ]], _r)
end

function Global.NetworkClanPlayerGetDesc(bufferSize)
	return _in(0xEEE6EACBE8874FBA, _i, bufferSize, _i, _r)
end

function Global.NetworkClanPlayerIsActive(networkHandle)
	return _in(0xB124B57F571D8F18, _ii(networkHandle) --[[ may be optional ]], _r)
end

function Global.NetworkClanReleaseEmblem(p0)
	return _in(0x113E6E3E50E286B0, p0)
end

function Global.NetworkClanRequestEmblem(p0)
	return _in(0x13518FF1C6B28938, p0, _r)
end

function Global.NetworkClanServiceIsValid()
	return _in(0x579CCED0265D4896, _r)
end

function Global.NetworkClearClockTimeOverride()
	return _in(0xD972DF67326F966E)
end

function Global.NetworkClearFoundGamers()
	return _in(0x6D14CCEE1B40381A)
end

function Global.NetworkClearGetGamerStatus()
	return _in(0x86E0660E4F5C956D)
end

function Global.NetworkClockTimeOverride(hour, minute, second, p3, p4)
	return _in(0x669E223E64B1903C, hour, minute, second, p3, p4)
end

function Global.NetworkClockTimeOverride_2(hour, minute, second, p3, p4, p5)
	return _in(0xE28C13ECC36FF14E, hour, minute, second, p3, p4, p5)
end

function Global.NetworkConcealPlayer(player, toggle)
	return _in(0xBBDF066252829606, player, toggle)
end

function Global.NetworkDisableProximityMigration(netID)
	return _in(0x407091CF6037118E, netID)
end

function Global.NetworkDoesNetworkIdExist(netID)
	return _in(0x38CE16C96BD11344, netID, _r)
end

function Global.NetworkDoesTunableExist(tunableContext, tunableName)
	return _in(0x85E5F8B9B898B20A, _ch(tunableContext), _ch(tunableName), _r)
end

function Global.NetworkEndTutorialSession()
	return _in(0xD0AFAFF5A51D72F7)
end

function Global.NetworkGetClockTimeOverride()
	return _in(0x11A7ADCD629E170F, _i, _i, _i, _r)
end

function Global.NetworkGetDestroyerOfEntity(p0, p1, weaponHash)
	return _in(0x4CACA84440FA26F6, p0, p1, _ii(weaponHash) --[[ may be optional ]], _r)
end

function Global.NetworkGetDestroyerOfNetworkId(netId, weaponHash)
	return _in(0x7A1ADEEF01740A24, netId, _ii(weaponHash) --[[ may be optional ]], _r, _ri)
end

function Global.NetworkGetEntityFromNetworkId(netId)
	return _in(0xCE4E5D9B0A4FF560, netId, _r, _ri)
end

function Global.NetworkGetEntityIsNetworked(entity)
	return _in(0xC7827959479DCC78, entity, _r)
end

function Global.NetworkGetEntityKillerOfPlayer(player, weaponHash)
	return _in(0x42B2DAA6B596F5F8, player, _ii(weaponHash) --[[ may be optional ]], _r, _ri)
end

--- Returns the owner ID of the specified entity.
-- @param entity The entity to get the owner for.
-- @return On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function Global.NetworkGetEntityOwner(entity)
	return _in(0x526fee31, entity, _r, _ri)
end

function Global.NetworkGetGamertagFromHandle()
	return _in(0x426141162EBE5CDB, _r, _s)
end

function Global.NetworkGetGlobalMultiplayerClock()
	return _in(0x6D03BFBD643B2A02, _i, _i, _i)
end

function Global.NetworkGetLocalHandle(p0)
	return _in(0xE86051786B66CD8E, p0)
end

function Global.NetworkGetMaxNumParticipants()
	return _in(0xA6C90FBC38E395EE, _r, _ri)
end

function Global.NetworkGetNetworkIdFromEntity(entity)
	return _in(0xA11700682F3AD45C, entity, _r, _ri)
end

function Global.NetworkGetNumConnectedPlayers()
	return _in(0xA4A79DD2D9600654, _r, _ri)
end

function Global.NetworkGetNumParticipants()
	return _in(0x18D0456E86604654, _r, _ri)
end

function Global.NetworkGetNumScriptParticipants(p1, p2)
	return _in(0x3658E8CD94FC121A, _i, p1, p2, _r, _ri)
end

function Global.NetworkGetNumUnackedForPlayer()
	return _in(0xFF8FCF9FFC458A1C, _r, _ri)
end

function Global.NetworkGetOldestResendCountForPlayer()
	return _in(0x52C1EADAF7B10302, _r, _ri)
end

function Global.NetworkGetParticipantIndex(index)
	return _in(0x1B84DF6AF2A46938, index, _r, _ri)
end

function Global.NetworkGetPlayerFromGamerHandle(networkHandle)
	return _in(0xCE5F689CF5A0A49D, _ii(networkHandle) --[[ may be optional ]], _r, _ri)
end

function Global.NetworkGetPlayerIndex(player)
	return _in(0x24FB80D107371267, player, _r, _ri)
end

function Global.NetworkGetPlayerIndexFromPed(ped)
	return _in(0x6C0E2E0125610278, ped, _r, _ri)
end

function Global.NetworkGetPlayerTutorialSessionInstance(player)
	return _in(0x3B39236746714134, player, _r, _ri)
end

function Global.NetworkGetPrimaryClanDataClear()
	return _in(0x9AA46BADAD0E27ED, _r, _ri)
end

function Global.NetworkGetPrimaryClanDataNew()
	return _in(0xC080FF658B2E41DA, _i, _i, _r)
end

function Global.NetworkGetPrimaryClanDataPending()
	return _in(0xB5074DB804E28CE7, _r, _ri)
end

function Global.NetworkGetPrimaryClanDataStart(p1)
	return _in(0xCE86D8191B762107, _i, p1, _r)
end

function Global.NetworkGetPrimaryClanDataSuccess()
	return _in(0x5B4F04F19376A0BA, _r, _ri)
end

function Global.NetworkGetRandomIntRanged(rangeStart, rangeEnd)
	return _in(0xE30CF56F1EFA5F43, rangeStart, rangeEnd, _r, _ri)
end

function Global.NetworkGetScriptStatus()
	return _in(0x57D158647A6BFABF, _r, _ri)
end

function Global.NetworkGetThisScriptIsNetworkScript()
	return _in(0x2910669969E9535E, _r)
end

function Global.NetworkGetTimeoutTime()
	return _in(0x5ED0356A0CE3A34F, _r, _ri)
end

function Global.NetworkGetTotalNumPlayers()
	return _in(0xCF61D4B4702EE9EB, _r, _ri)
end

function Global.NetworkHandleFromFriend(p0, p1)
	return _in(0xD45CB817D7E177D2, p0, p1)
end

function Global.NetworkHandleFromPlayer(p0, p1)
	return _in(0x388EB2B86C73B6B3, p0, p1)
end

function Global.NetworkHasControlOfEntity(entity)
	return _in(0x01BF60A500E28887, entity, _r)
end

function Global.NetworkHasControlOfNetworkId(netId)
	return _in(0x4D36070FE0215186, netId, _r)
end

function Global.NetworkHasControlOfPickup(pickup)
	return _in(0x5BC9495F0B3B6FA6, pickup, _r)
end

function Global.NetworkHasPlayerBeenBanned()
	return _in(0x8020A73847E0CA7D, _r)
end

function Global.NetworkHasRosPrivilege(index)
	return _in(0xA699957E60D80214, index, _r)
end

function Global.NetworkHasSocialClubAccount()
	return _in(0x67A5589628E0CFF6, _r)
end

function Global.NetworkHashFromPlayerHandle(player)
	return _in(0xBC1D768F2F5D6C05, player, _r, _ri)
end

function Global.NetworkHaveJustUploadLater()
	return _in(0x85443FF4C328F53B, _r)
end

function Global.NetworkHaveOnlinePrivileges()
	return _in(0x25CB5A9F37BFD063, _r)
end

function Global.NetworkIsClockTimeOverridden()
	return _in(0xD7C95D322FF57522, _r)
end

function Global.NetworkIsCloudAvailable()
	return _in(0x9A4CF4F48AD77302, _r)
end

function Global.NetworkIsFindingGamers()
	return _in(0xDDDF64C91BFCF0AA, _r)
end

function Global.NetworkIsFriend(networkHandle)
	return _in(0x1A24A179F9B31654, _ii(networkHandle) --[[ may be optional ]], _r)
end

function Global.NetworkIsGameInProgress()
	return _in(0x10FAB35428CCC9D7, _r)
end

function Global.NetworkIsGamerInMySession(networkHandle)
	return _in(0x0F10B05DDF8D16E9, _ii(networkHandle) --[[ may be optional ]], _r)
end

function Global.NetworkIsHandleValid(p0)
	return _in(0x6F79B93B0A8E4133, p0, _r)
end

function Global.NetworkIsHost()
	return _in(0x8DB296B814EDDA07, _r)
end

function Global.NetworkIsHostOfThisScript()
	return _in(0x83CD99A1E6061AB5, _r)
end

function Global.NetworkIsInMpCutscene()
	return _in(0x6CC27C9FA2040220, _r)
end

function Global.NetworkIsInPlatformParty()
	return _in(0x2FC5650B0271CB57, _r)
end

function Global.NetworkIsInPlatformPartyChat()
	return _in(0xFD8B834A8BA05048, _r)
end

function Global.NetworkIsInSession()
	return _in(0xCA97246103B63917, _r)
end

function Global.NetworkIsInSpectatorMode()
	return _in(0x048746E388762E11, _r)
end

function Global.NetworkIsInTutorialSession()
	return _in(0xADA24309FE08DACF, _r)
end

function Global.NetworkIsParticipantActive(p0)
	return _in(0x6FF8FF40B6357D45, p0, _r)
end

function Global.NetworkIsPendingFriend(p0)
	return _in(0x0BE73DA6984A6E33, p0, _r, _ri)
end

function Global.NetworkIsPlayerAParticipant(player)
	return _in(0x3CA58F6CB7CBD784, player, _r)
end

function Global.NetworkIsPlayerAParticipantOnScript(p0, p2)
	return _in(0x1AD5B71586B94820, p0, _i, p2, _r)
end

function Global.NetworkIsPlayerActive(player)
	return _in(0xB8DFD30D6973E135, player, _r)
end

function Global.NetworkIsPlayerConcealed(player)
	return _in(0x919B3C98ED8292F9, player, _r)
end

function Global.NetworkIsPlayerConnected(player)
	return _in(0x93DC1BE4E1ABE9D1, player, _r)
end

function Global.NetworkIsPlayerEqualToIndex(player, index)
	return _in(0x9DE986FC9A87C474, player, index, _r)
end

function Global.NetworkIsPlayerInMpCutscene(player)
	return _in(0x63F9EE203C3619F2, player, _r)
end

function Global.NetworkIsPlayerInSpectatorMode(player)
	return _in(0x5B709519997ECF0F, player, _r)
end

function Global.NetworkIsScriptActive(scriptName, player, p2, p3)
	return _in(0x9D40DF90FAD26098, _ts(scriptName), player, p2, p3, _r)
end

function Global.NetworkIsSessionActive()
	return _in(0xD83C2B94E7508980, _r)
end

function Global.NetworkIsSessionStarted()
	return _in(0x9DE624D2FC4B603F, _r)
end

function Global.NetworkIsSignedOnline()
	return _in(0x1077788E268557C2, _r)
end

function Global.NetworkIsTunableCloudRequestPending()
	return _in(0x0467C11ED88B7D28, _r)
end

function Global.NetworkIsTutorialSessionChangePending()
	return _in(0x35F0B98A8387274D, _r)
end

function Global.NetworkPlayerIdToInt()
	return _in(0x8A9386F0749A17FA, _r, _ri)
end

function Global.NetworkRegisterEntityAsNetworked(entity)
	return _in(0x06FAACD625D80CAA, entity)
end

function Global.NetworkRegisterHostBroadcastVariables(p0, p1, p2)
	return _in(0x3E9B2F01C50DF595, p0, p1, p2)
end

function Global.NetworkRegisterPlayerBroadcastVariables(p0, p1, p2)
	return _in(0x3364AA97340CA215, p0, p1, p2)
end

function Global.NetworkRequestControlOfEntity(entity)
	return _in(0xB69317BF5E782347, entity, _r)
end

function Global.NetworkRequestControlOfNetworkId(netId)
	return _in(0xA670B3662FAFFBD0, netId, _r)
end

function Global.NetworkResurrectLocalPlayer(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.NetworkSessionIsPrivate()
	return _in(0xCEF70AA5B3F89BA1, _r)
end

function Global.NetworkSessionLeave()
	return _in(0x17C21B7319A05047, _r)
end

function Global.NetworkSetEntityInvisibleToNetwork(entity, toggle)
	return _in(0xF1CA12B18AEF5298, entity, toggle)
end

function Global.NetworkSetFriendlyFireOption(toggle)
	return _in(0xF808475FA571D823, toggle)
end

function Global.NetworkSetInMpCutscene(p0, p1, p2, p3)
	return _in(0x9CA5DE655269FEC4, p0, p1, p2, p3)
end

function Global.NetworkSetInSpectatorMode(toggle, playerPed)
	return _in(0x423DE3854BB50894, toggle, playerPed)
end

function Global.NetworkSetInStaticSpectatorMode(toggle, x, y, z)
	return _in(0xFBF1ECFB39A77B5F, toggle, x, y, z)
end

function Global.NetworkSetLocalPlayerInvincibleTime(time)
	return _in(0x2D95C7E2D7E07307, time)
end

function Global.NetworkSetLocalPlayerSyncLookAt(toggle)
	return _in(0x524FF0AEFF9C3973, toggle)
end

function Global.NetworkSetMissionFinished()
	return _in(0x3B3D11CD9FFCDFC9)
end

function Global.NetworkSetRichPresence(p0, p1, p2, p3)
	return _in(0x1DCCACDCFC569362, p0, p1, p2, p3)
end

function Global.NetworkSetScriptIsSafeForNetworkGame()
	return _in(0x3D0EAC6385DD6100)
end

function Global.NetworkSetThisScriptIsNetworkScript(lobbySize, p1, playerId)
	return _in(0x1CA59E306ECB80A5, lobbySize, p1, playerId)
end

function Global.NetworkSetVehicleWheelsDestructible(p0, p1)
	return _in(0x0C8BC052AE87D744, p0, p1)
end

function Global.NetworkShowProfileUi(networkHandle)
	return _in(0x859ED1CEA343FCA8, _ii(networkHandle) --[[ may be optional ]])
end

function Global.NetworkStartSoloTutorialSession()
	return _in(0x17E0198B3882C2CB)
end

function Global.NetworkTryAccessTunableBool(tunableContext, tunableName, defaultValue)
	return _in(0xB2AD5D29A99D4B26, _ch(tunableContext), _ch(tunableName), defaultValue, _r)
end

function Global.NetworkTryAccessTunableFloat(tunableContext, tunableName, defaultValue)
	return _in(0xA18393089C05E49C, _ch(tunableContext), _ch(tunableName), defaultValue, _r, _rf)
end

function Global.NetworkTryAccessTunableInt(tunableContext, tunableName, defaultValue)
	return _in(0xA25E006B36719774, _ch(tunableContext), _ch(tunableName), defaultValue, _r, _ri)
end

function Global.ObjToNet(object)
	return _in(0x99BFDC94A603E541, object, _r, _ri)
end

function Global.ObjectValueAddInteger(key, value)
	return _in(0x26FDF5E99AA2F3E9, _i, _ts(key), value)
end

function Global.ObjectValueGetArray(key)
	return _in(0x1B5447CF18544B18, _i, _ts(key), _r, _ri)
end

function Global.ObjectValueGetBoolean(key)
	return _in(0x175E915A486EE548, _i, _ts(key), _r)
end

function Global.ObjectValueGetFloat(key)
	return _in(0x814643ECA258ADF5, _i, _ts(key), _r, _rf)
end

function Global.ObjectValueGetInteger(key)
	return _in(0x9D896A3B87D96E2B, _i, _ts(key), _r, _ri)
end

function Global.ObjectValueGetObject(key)
	return _in(0x4D7A30130F46AC9C, _i, _ts(key), _r, _ri)
end

function Global.ObjectValueGetString(key)
	return _in(0xE37B38C0B4E95DFA, _i, _ts(key), _r, _s)
end

function Global.ObjectValueGetType(key)
	return _in(0x92E11E3CA4C7CDF0, _i, _ts(key), _r, _ri)
end

function Global.ObjectValueGetVector3(key)
	return _in(0xE459C941431E0FFA, _i, _ts(key), _r, _rv)
end

function Global.OpenPatrolRoute(patrolRoute)
	return _in(0xA36BFB5EE89F3D82, _ts(patrolRoute))
end

function Global.OpenSequenceTask(taskSequenceId)
	return _in(0xE8854A4326B9E12B, _ii(taskSequenceId) --[[ may be optional ]])
end

function Global.OverrideSaveHouse(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xB2C69E11A37B5AF0, p0, p1, p2, p3, p4, p5, p6, p7, _r)
end

function Global.ParticipantId()
	return _in(0x90986E8876CE0A83, _r, _ri)
end

function Global.ParticipantIdToInt()
	return _in(0x57A3BDDAD8E5AA0A, _r, _ri)
end

function Global.PauseClock(toggle, unused)
	return _in(0x4D1A590C92BF377E, toggle, unused)
end

function Global.PauseClockThisFrame(toggle)
	return _in(0x568D998A9FF96774, toggle)
end

function Global.PauseDeathArrestRestart(toggle)
	return _in(0x66AB6B6C7E72F393, toggle)
end

function Global.PauseScriptedConversation(p0, p1, p2, p3, p4)
	return _in(0x8530AD776CD72B12, p0, p1, p2, p3, p4)
end

function Global.PedCowerInPlace(ped, ped2)
	return _in(0xF6E1E9F47A7686F8, ped, ped2)
end

function Global.PedCowerMoveToPoint(ped, p1, p2, p3, ped2, p5)
	return _in(0x1E4C940233FC0C6F, ped, p1, p2, p3, ped2, p5)
end

function Global.PedHasUseScenarioTask(ped)
	return _in(0x295E3CCEC879CCD7, ped, _r)
end

function Global.PedToNet(ped)
	return _in(0x0EDEC3C276198689, ped, _r, _ri)
end

function Global.PinInteriorInMemory(interior)
	return _in(0xBD3D33EABF680168, interior)
end

function Global.PlaceObjectOnGroundProperly(p0, p1)
	return _in(0x58A850EAEE20FAA3, p0, p1, _r)
end

function Global.PlayAmbientSpeech1(p0, p1)
	return _in(0x8E04FEDD28D42462, p0, p1, _r, _ri)
end

function Global.PlayAmbientSpeechAtCoords(p0, p1, p2, p3)
	return _in(0xED640017ED337E45, p0, p1, p2, p3, _r, _ri)
end

function Global.PlayAnimOnRunningScenario(ped, animDict, animName)
	return _in(0x748040460F8DF5DC, ped, _ts(animDict), _ts(animName))
end

function Global.PlayAnimalVocalization(pedHandle, p1, p2)
	return _in(0xEE066C7006C49C0A, pedHandle, p1, _ii(p2) --[[ may be optional ]])
end

function Global.PlayCamAnim(cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10)
	return _in(0xA263DDF694D563F6, cam, _ts(animName), _ts(animDictionary), x, y, z, xRot, yRot, zRot, p9, p10, _r)
end

function Global.PlayEndCreditsMusic(play)
	return _in(0xCD536C4D33DCC900, play)
end

function Global.PlayEntityAnim(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset)
	return _in(0xDC6D22FAB76D4874, entity, _ts(animName), _ts(animDict), p3, loop, stayInAnim, p6, delta, bitset, _r)
end

function Global.PlayEntityScriptedAnim(p0, p1)
	return _in(0x77A1EEC547E7FCF1, p0, p1)
end

function Global.PlayPain(p0, p1, p2, p3, p4)
	return _in(0xBC9AE166038A5CEC, p0, p1, p2, p3, p4)
end

function Global.PlaySound(audioName, audioRef, p2, p3, p4, p5)
	return _in(0x7FF4944CC209192D, _ts(audioName), _ts(audioRef), p2, p3, p4, p5)
end

function Global.PlaySoundFrontend(audioName, audioRef, p2, p3)
	return _in(0x67C540AA08E4A6F5, _ts(audioName), _ts(audioRef), p2, p3)
end

function Global.PlayStreamFromPed(p0, p1)
	return _in(0x89049DD63C08B5D1, p0, p1)
end

function Global.PlayStreamFromPosition(p0, p1, p2, p3)
	return _in(0x21442F412E8DE56B, p0, p1, p2, p3)
end

function Global.PlayStreamFrontend(p0)
	return _in(0x58FCE43488F9F5F4, p0)
end

function Global.PlayerId()
	return _in(0x217E9DC48139933D, _r, _ri)
end

function Global.PlayerPedId()
	return _in(0x096275889B8E0EE0, _r, _ri)
end

function Global.PointCamAtCoord(cam, x, y, z)
	return _in(0x948B39341C3A40C2, cam, x, y, z)
end

function Global.PointCamAtEntity(cam, entity, p2, p3, p4, p5)
	return _in(0xFC2867E6074D3A61, cam, entity, p2, p3, p4, p5)
end

function Global.PokerBuyIn(p0, p1)
	return _in(0xB4D610EA5A1FDE74, p0, p1, _r, _ri)
end

function Global.PokerCall(p0, p1)
	return _in(0x8DED681B161EBD78, p0, p1, _r, _ri)
end

function Global.PokerCheck(p0, p1)
	return _in(0x49A045628D9B1B86, p0, p1, _r, _ri)
end

function Global.PokerFold(p0)
	return _in(0x3DFAB7D9BB45B5BE, p0, _r, _ri)
end

function Global.PokerGetGameSettingsForId(p0)
	return _in(0x2D20E12E1990D584, p0, _r, _ri)
end

function Global.PokerRaise(p0, p1)
	return _in(0xECCF45A79A17BB96, p0, p1, _r, _ri)
end

function Global.PokerReveal(p0)
	return _in(0x2F2131DB0A8B02DC, p0, _r, _ri)
end

function Global.PopulateNow()
	return _in(0xEA6DC3A8ADD2005F)
end

function Global.Pow(base, exponent)
	return _in(0xE3621CC40F31FE2E, base, exponent, _r, _rf)
end

function Global.PrefetchSrl(srl)
	return _in(0x354837E5A5BAA5AF, _ts(srl))
end

function Global.PreloadScriptConversation(p0, p1, p2, p3)
	return _in(0x3B3CAD6166916D87, p0, p1, p2, p3)
end

function Global.PrepareMusicEvent(eventName)
	return _in(0x1E5185B72EF5158A, _ts(eventName), _r)
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

function Global.PromptAddGroupLink(p0, prompt, p2)
	return _in(0x684C96CC7C66E8EF, p0, prompt, p2)
end

function Global.PromptAddGroupReturnLink(p0, prompt)
	return _in(0x837972ED28159536, p0, prompt)
end

function Global.PromptClearFavouredPedForConflictResolution()
	return _in(0x51259AE5C72D4A1B)
end

function Global.PromptCreate(inputHash, labelName, p2, p3, p4, p5)
	return _in(0x29FA7910726C3889, _ch(inputHash), _ts(labelName), p2, p3, p4, p5, _r, _ri)
end

function Global.PromptDelete(prompt)
	return _in(0x00EDE88D4D13CF59, prompt)
end

function Global.PromptDisablePromptTypeThisFrame(p0)
	return _in(0xFC094EF26DD153FA, p0)
end

function Global.PromptDoesAmbientGroupExist(hash)
	return _in(0xEB550B927B34A1BB, _ch(hash), _r)
end

function Global.PromptEnablePromptTypeThisFrame(p0)
	return _in(0x06565032897BA861, p0)
end

function Global.PromptFilterClear()
	return _in(0x6A2F820452017EA2)
end

function Global.PromptGetGroupActivePage(hash)
	return _in(0xC1FCC36C3F7286C8, _ch(hash), _r, _ri)
end

function Global.PromptGetGroupIdForScenarioPoint(p0, p1)
	return _in(0xCB73D7521E7103F0, p0, p1, _r, _ri)
end

function Global.PromptGetGroupIdForTargetEntity(entity)
	return _in(0xB796970BD125FCE8, entity, _r, _ri)
end

function Global.PromptGetMashModeProgress(prompt)
	return _in(0x8A9585293863B8A5, prompt, _r, _ri)
end

function Global.PromptGetUrgentPulsingEnabled(prompt)
	return _in(0x1FBA0DABECDDB52B, prompt, _r)
end

function Global.PromptHasHoldAutoFillMode(prompt)
	return _in(0x8010BEBD0D5ED5BC, prompt, _r)
end

function Global.PromptHasHoldModeCompleted(prompt)
	return _in(0xE0F65F0640EF0617, prompt, _r)
end

function Global.PromptHasMashModeCompleted(prompt)
	return _in(0x845CE958416DC473, prompt, _r)
end

function Global.PromptHasMashModeFailed(prompt)
	return _in(0x25B18E530CF39D6F, prompt, _r)
end

function Global.PromptHasPressedTimedModeCompleted(prompt)
	return _in(0x3CE854D250A88DAF, prompt, _r, _ri)
end

function Global.PromptHasPressedTimedModeFailed(prompt)
	return _in(0x1A17B9ECFF617562, prompt, _r, _ri)
end

function Global.PromptHasStandardModeCompleted(prompt, p1)
	return _in(0xC92AC953F0A982AE, prompt, p1, _r)
end

function Global.PromptIsActive(prompt)
	return _in(0x546E342E01DE71CF, prompt, _r)
end

function Global.PromptIsEnabled(prompt)
	return _in(0x0D00EDDFB58B7F28, prompt, _r, _ri)
end

function Global.PromptIsHoldModeRunning(prompt)
	return _in(0xC7D70EAEF92EFF48, prompt, _r)
end

function Global.PromptIsJustPressed(prompt)
	return _in(0x2787CC611D3FACC5, prompt, _r)
end

function Global.PromptIsJustReleased(prompt)
	return _in(0x635CC82FA297A827, prompt, _r)
end

function Global.PromptIsPressed(prompt)
	return _in(0x21E60E230086697F, prompt, _r)
end

function Global.PromptIsReleased(prompt)
	return _in(0xAFC887BA7A7756D6, prompt, _r)
end

function Global.PromptIsValid(prompt)
	return _in(0x347469FBDD1589A9, prompt, _r)
end

function Global.PromptRegisterBegin()
	return _in(0x04F97DE45A519419, _r, _ri)
end

function Global.PromptRegisterEnd(prompt)
	return _in(0xF7AA2696A22AD8B9, prompt)
end

function Global.PromptRemoveGroup(prompt, p1)
	return _in(0x4E52C800A28F7BE8, prompt, p1)
end

function Global.PromptRestartModes(prompt)
	return _in(0xDC6C55DFA2C24EE5, prompt)
end

function Global.PromptSetActiveGroupThisFrame(hash, p1, p2, p3, p4, prompt)
	return _in(0xC65A45D4453C2627, _ch(hash), p1, p2, p3, p4, prompt, _r, _ri)
end

function Global.PromptSetAllowedAction(prompt, p1)
	return _in(0x565C1CE183CB0EAF, prompt, p1)
end

function Global.PromptSetAmbientGroupThisFrame(entity, p1, p2, p3, p4, p5, p6)
	return _in(0x315C81D760609108, entity, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.PromptSetAttribute(prompt, p1, p2)
	return _in(0x560E76D5E2E1803F, prompt, p1, p2)
end

function Global.PromptSetBeatMode(prompt, p1)
	return _in(0xF957A1654C6322FE, prompt, p1)
end

function Global.PromptSetBeatModeGrayedOut(prompt, p1)
	return _in(0xB487A4936FBF40AC, prompt, p1)
end

function Global.PromptSetControlAction(prompt, p1)
	return _in(0xB5352B7494A08258, prompt, p1, _r, _ri)
end

function Global.PromptSetEnabled(prompt, p1)
	return _in(0x8A0FB4D03A630D21, prompt, p1)
end

function Global.PromptSetFavouredPedForConflictResolution(ped)
	return _in(0x530A428705BE5DEF, ped)
end

function Global.PromptSetGroup(prompt, p1, p2)
	return _in(0x2F11D3A254169EA4, prompt, p1, p2)
end

function Global.PromptSetHoldAutoFillMode(prompt, p1, p2)
	return _in(0x3CE932E737C145D6, prompt, p1, p2)
end

function Global.PromptSetHoldIndefinitelyMode(prompt)
	return _in(0xEA5CCF4EEB2F82D1, prompt)
end

function Global.PromptSetHoldMode(prompt, p1)
	return _in(0x94073D5CA3F16B7B, prompt, p1)
end

function Global.PromptSetMashAutoFillMode(prompt, p1, p2)
	return _in(0x6C39587D7CC66801, prompt, p1, p2)
end

function Global.PromptSetMashIndefinitelyMode(prompt)
	return _in(0x7B66E89312727274, prompt)
end

function Global.PromptSetMashManualCanFailMode(prompt, p1, p2, p3, p4)
	return _in(0x179DCF71F705DA20, prompt, p1, p2, p3, p4)
end

function Global.PromptSetMashManualMode(prompt, p1, p2, p3, p4)
	return _in(0x32DF729D8BD3C1C6, prompt, p1, p2, p3, p4)
end

function Global.PromptSetMashManualModeDecaySpeed(prompt, p1)
	return _in(0x7D393C247FB9B431, prompt, p1)
end

function Global.PromptSetMashManualModeIncreasePerPress(prompt, p1)
	return _in(0xA0D1D79C6036A855, prompt, p1)
end

function Global.PromptSetMashManualModePressedGrowthSpeed(prompt, p1)
	return _in(0x56DBB26F98582C29, prompt, p1)
end

function Global.PromptSetMashMode(prompt, p1)
	return _in(0xDF6423BF071C7F71, prompt, p1)
end

function Global.PromptSetMashWithResistanceCanFailMode(prompt, p1, p2, p3)
	return _in(0xDC0CB602DEADBA53, prompt, p1, p2, p3)
end

function Global.PromptSetMashWithResistanceMode(prompt, p1, p2, p3)
	return _in(0xCD1BDFF15EFA79F5, prompt, p1, p2, p3)
end

function Global.PromptSetOrderingAsInputType(prompt, p1)
	return _in(0x2F385ECC5200938D, prompt, p1)
end

function Global.PromptSetPosition(prompt, p1, p2, p3)
	return _in(0xAE84C5EE2C384FB3, prompt, p1, p2, p3)
end

function Global.PromptSetPressedTimedMode(prompt, p1)
	return _in(0x1473D3AF51D54276, prompt, p1)
end

function Global.PromptSetPriority(prompt, p1)
	return _in(0xCA24F528D0D16289, prompt, p1)
end

function Global.PromptSetRotateMode(prompt, p1, p2)
	return _in(0x7ABE7095FB3D2581, prompt, p1, p2)
end

function Global.PromptSetSpinnerPosition(prompt, p1)
	return _in(0x832CB510DE546282, prompt, p1)
end

function Global.PromptSetSpinnerSpeed(prompt, p1)
	return _in(0xAC6586A7FDCD4B68, prompt, p1)
end

function Global.PromptSetStandardMode(prompt, p1)
	return _in(0xCC6656799977741B, prompt, p1)
end

function Global.PromptSetStandardizedHoldMode(prompt, p1)
	return _in(0x74C7D7B72ED0D3CF, prompt, p1)
end

function Global.PromptSetTag(prompt, p1)
	return _in(0xDEC85C174751292B, prompt, p1)
end

function Global.PromptSetTargetMode(prompt, p1, p2, p3)
	return _in(0x5F6503D9CD2754EB, prompt, p1, p2, p3)
end

function Global.PromptSetTargetModeProgress(prompt, p1)
	return _in(0x00123054BEC8A30F, prompt, p1)
end

function Global.PromptSetTargetModeTarget(prompt, p1, p2)
	return _in(0x5E019C45DD3B6A14, prompt, p1, p2)
end

function Global.PromptSetText(prompt, p1)
	return _in(0x5DD02A8318420DD7, prompt, p1)
end

function Global.PromptSetTransportMode(prompt, p1)
	return _in(0x876E4A35C73A6655, prompt, p1)
end

function Global.PromptSetUrgentPulsingEnabled(prompt, p1)
	return _in(0xC5F428EE08FA7F2C, prompt, p1)
end

function Global.PromptSetVisible(prompt, p1)
	return _in(0x71215ACCFDE075EE, prompt, p1)
end

function Global.PromptWasBeatModePressedInTimeWindow(prompt)
	return _in(0x1FE4788AB1430C55, prompt, _r)
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
-- @param factory A function returning a list of archetypes.
function Global.RegisterArchetypes(factory)
	return _in(0x3c2f9037, _mfr(factory))
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

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
-- At this time, this function **should not be used in a live environment**.
-- @param factory A function returning a list of entities.
function Global.RegisterEntities(factory)
	return _in(0x410da7d3, _mfr(factory))
end

--- Registers a specified .gfx file as GFx font library.
-- The .gfx file has to be registered with the streamer already.
-- @param fileName The name of the .gfx file, without extension.
function Global.RegisterFontFile(fileName)
	return _in(0x1b3a363, _ts(fileName))
end

--- Registers a specified font name for use with text draw commands.
-- @param fontName The name of the font in the GFx font library.
-- @return An index to use with [SET_TEXT_FONT](#_0x66E0276CC5F6B9DA) and similar natives.
function Global.RegisterFontId(fontName)
	return _in(0xacf6d8ee, _ts(fontName), _r, _ri)
end

function Global.RegisterHatedTargetsAroundPed(ped, radius)
	return _in(0x9222F300BF8354FE, ped, radius)
end

function Global.RegisterNamedRendertarget(name, p1)
	return _in(0x98AF2BB6F62BD588, _ts(name), p1, _r)
end

function Global.RegisterNuiCallbackType(callbackType)
	return _in(0xcd03cda9, _ts(callbackType))
end

function Global.RegisterObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5)
	return _in(0x16AF9B4EEAC3B305, _ts(scriptName), _ch(modelHash), p2, activationRange, p4, p5)
end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
-- @param eventName An event name, or "\*" to disable HLL event filtering for this resource.
function Global.RegisterResourceAsEventHandler(eventName)
	return _in(0xd233a168, _ts(eventName))
end

function Global.RegisterScriptWithAudio(p0)
	return _in(0xC6ED9D5092438D91, p0)
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a dynamic streaming asset from the server with the GTA streaming module system.
-- @param resourceName The resource to add the asset to.
-- @param fileName A file name in the resource.
-- @param cacheString The string returned from `REGISTER_RESOURCE_ASSET` on the server.
function Global.RegisterStreamingFileFromCache(resourceName, fileName, cacheString)
	return _in(0xcead2d4b, _ts(resourceName), _ts(fileName), _ts(cacheString))
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
-- @param kvsKey The KVP key in the current resource to register as an asset.
function Global.RegisterStreamingFileFromKvs(kvsKey)
	return _in(0x1493dcc1, _ts(kvsKey))
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
-- Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
-- @param registerAs The file name to register as, for example `asset.ydr`.
-- @param url The URL to fetch the asset from.
function Global.RegisterStreamingFileFromUrl(registerAs, url)
	return _in(0xf44bfb95, _ts(registerAs), _ts(url))
end

function Global.RegisterTarget(p0, p1, p2)
	return _in(0x2F25D9AEFA34FBA2, p0, p1, p2)
end

function Global.ReleaseFlowBlock(p0)
	return _in(0xF320A77DD5F781DF, p0)
end

function Global.ReleaseNamedRendertarget(name)
	return _in(0x0E692EE61761361F, _ts(name), _r)
end

function Global.ReleaseNamedScriptAudioBank(audioBank)
	return _in(0x77ED170667F50170, _ts(audioBank))
end

function Global.ReleaseScriptAudioBank()
	return _in(0x7A2D8AD0A9EB9C3F)
end

function Global.ReleaseSoundId(soundId)
	return _in(0x353FC880830B88FA, soundId)
end

function Global.RemoveAllCoverBlockingAreas()
	return _in(0xDB6708C0B46F56D8)
end

function Global.RemoveAllPedWeapons(ped, p1, p2)
	return _in(0xF25DF915FA38C5F3, ped, p1, p2)
end

function Global.RemoveAllPickupsOfType(pickupHash)
	return _in(0x27F9D613092159CF, _ch(pickupHash))
end

function Global.RemoveAllShockingEvents(p0)
	return _in(0xD47A168C2AB90DC4, p0)
end

function Global.RemoveAnimDict(animDict)
	return _in(0x4763145053A33D46, _ts(animDict))
end

function Global.RemoveAnimSceneEntity(animScene, p1, p2)
	return _in(0x2BF96692C67F3E53, animScene, p1, p2)
end

function Global.RemoveBlip(blip)
	return _in(0xF2C3C9DA47AAA54A, _ii(blip) --[[ may be optional ]])
end

function Global.RemoveClipSet(clipSet)
	return _in(0x817FA1B1EE7CD6F0, _ts(clipSet))
end

function Global.RemoveCoverPoint(coverpoint)
	return _in(0xAE287C923D891715, coverpoint)
end

function Global.RemoveCurrentRise(p0)
	return _in(0x4BEF8DD75AF6C71C, p0)
end

function Global.RemoveDecal(decal)
	return _in(0x49A720552EB0BB88, decal)
end

function Global.RemoveDecalsFromObject(obj)
	return _in(0xFB8972BAE0013140, obj)
end

function Global.RemoveDecalsInRange(x, y, z, range)
	return _in(0x86DE59FA02902B40, x, y, z, range)
end

function Global.RemoveDispatchSpawnBlockingArea(p0)
	return _in(0x49F751F6868DDC5B, p0)
end

function Global.RemoveDoorFromSystem(doorHash)
	return _in(0x464D8E1427156FE4, _ch(doorHash))
end

function Global.RemoveEntityFromAudioMixGroup(entity, p1)
	return _in(0x18EB48CFC41F2EA0, entity, p1)
end

function Global.RemoveForcedObject(p0, p1, p2, p3, p4)
	return _in(0x553FA683F2BCD814, p0, p1, p2, p3, p4)
end

function Global.RemoveFromItemset(itemset, p1)
	return _in(0xC5BAA432B429DC24, itemset, p1)
end

function Global.RemoveGroup(groupId)
	return _in(0x8EB2F69076AF7053, groupId)
end

function Global.RemoveGuardZone(name)
	return _in(0x67EBDD958835956C, _ts(name))
end

function Global.RemoveImap(imapHash)
	return _in(0x5A3E5CF7B4014B96, _ch(imapHash))
end

function Global.RemoveImap_2(imapHash)
	return _in(0x431E3AB760629B34, _ch(imapHash))
end

function Global.RemoveModelHide(p0, p1, p2, p3, p4, p5)
	return _in(0x3F38A98576F6213A, p0, p1, p2, p3, p4, p5)
end

function Global.RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6)
	return _in(0x824E1C26A14CB817, x, y, z, radius, _ch(originalModel), _ch(newModel), p6)
end

function Global.RemoveMpGamerTag(gamerTagId)
	return _in(0x839BFD7D7E49FE09, gamerTagId)
end

function Global.RemoveNamedPtfxAsset(fxNameHash)
	return _in(0xF20866829E1C81A2, _ch(fxNameHash))
end

function Global.RemoveNavmeshBlockingObject(p0)
	return _in(0x46399A7895957C0E, p0)
end

function Global.RemoveParticleFx(ptfxHandle, p1)
	return _in(0x459598F579C98929, ptfxHandle, p1)
end

function Global.RemoveParticleFxFromEntity(entity)
	return _in(0x92884B4A49D81325, entity)
end

function Global.RemoveParticleFxInRange(X, Y, Z, radius)
	return _in(0x87B5905ECA623B68, X, Y, Z, radius)
end

function Global.RemovePedDefensiveArea(ped, toggle)
	return _in(0x74D4E028107450A9, ped, toggle)
end

function Global.RemovePedFromGroup(ped)
	return _in(0xED74007FFB146BC2, ped)
end

function Global.RemovePickup(pickup)
	return _in(0x3288D8ACAECD2AB2, pickup)
end

function Global.RemovePopMultiplierArea(id, p1)
	return _in(0x88CB484364EFB37A, id, p1)
end

function Global.RemovePortalSettingsOverride(p0)
	return _in(0xB4BBFD9CD8B3922B, _ts(p0))
end

function Global.RemovePtfxAsset()
	return _in(0x042F9049EA419E86)
end

function Global.RemoveRelationshipGroup(groupHash)
	return _in(0xB6BA2444AB393DA2, _ch(groupHash))
end

--- Experimental natives, please do not use in a live environment.
-- @param origTxd 
-- @param origTxn 
function Global.RemoveReplaceTexture(origTxd, origTxn)
	return _in(0xa896b20a, _ts(origTxd), _ts(origTxn))
end

function Global.RemoveScenarioBlockingArea(p0, p1)
	return _in(0x31D16B74C6E29D66, p0, p1)
end

function Global.RemoveScenarioBlockingAreas()
	return _in(0xD37401D78A929A49)
end

function Global.RemoveScriptFire(fireHandle)
	return _in(0x790125C36E194069, fireHandle)
end

function Global.RemoveShockingEvent(event)
	return _in(0xE8BB3CC253A34559, event, _r)
end

function Global.RemoveShockingEventSpawnBlockingAreas()
	return _in(0xDB249021652420C5)
end

function Global.RemoveSpeedZone(speedzone)
	return _in(0xFE9AB3354ACE6C9C, speedzone, _r)
end

function Global.RemoveStealthKill(hash, p1)
	return _in(0x7ACF124C12A2B045, _ch(hash), p1)
end

function Global.RemoveVehicleAsset(vehicleAsset)
	return _in(0x888A4E675B38F5AD, vehicleAsset)
end

function Global.RemoveVehicleRecording(p0, p1)
	return _in(0x139E35755418F6AA, p0, _ii(p1) --[[ may be optional ]])
end

function Global.RemoveVehicleWindow(vehicle, windowIndex)
	return _in(0x745F15A215F2DDF1, vehicle, windowIndex)
end

function Global.RemoveVehiclesFromGeneratorsInArea(p0, p1, p2, p3, p4, p5)
	return _in(0xC619A44639BC0CB4, p0, p1, p2, p3, p4, p5)
end

function Global.RemoveWaypointRecording(name)
	return _in(0xFF1B8B4AA1C25DC8, _ts(name))
end

function Global.RemoveWeaponComponentFromWeaponObject(p0, p1)
	return _in(0xF7D82B0D66777611, p0, p1)
end

function Global.RemoveWeaponFromPed(ped, weaponHash, p2, p3)
	return _in(0x4899CB088EDF59B8, ped, _ch(weaponHash), p2, _ch(p3))
end

function Global.RenderFirstPersonCam(p0, p1, p2, p3, p4, p5)
	return _in(0x8C7C7FF7CF0E5153, p0, p1, p2, p3, p4, p5)
end

function Global.RenderScriptCams(render, ease, easeTime, p3, p4, p5)
	return _in(0x33281167E4942E4F, render, ease, easeTime, p3, p4, p5)
end

function Global.RequestAnimDict(animDict)
	return _in(0xA862A2AD321F94B4, _ts(animDict))
end

function Global.RequestClipSet(clipSet)
	return _in(0xEF7611B57A820126, _ts(clipSet))
end

function Global.RequestCollisionAtCoord(x, y, z)
	return _in(0x0A3720F162A033C9, x, y, z)
end

function Global.RequestCollisionForModel(model)
	return _in(0xF1767BE37F661551, _ch(model))
end

function Global.RequestFlowBlock(p0)
	return _in(0xC0081B34E395CE48, p0, _r, _ri)
end

function Global.RequestImap(imapHash)
	return _in(0x59767C5A7A9AE6DA, _ch(imapHash))
end

function Global.RequestImap_2(imapHash)
	return _in(0x9E211A378F95C97C, _ch(imapHash))
end

function Global.RequestModel(model, p1)
	return _in(0xFA28FE3A6246FC30, _ch(model), p1)
end

function Global.RequestNamedPtfxAsset(fxNameHash)
	return _in(0xF2B2353BBC0D4E8F, _ch(fxNameHash))
end

function Global.RequestPedVehicleVisibilityTracking(ped, p1)
	return _in(0x2BC338A7B21F4608, ped, p1)
end

function Global.RequestPedVisibilityTracking(ped)
	return _in(0x7D7A2E43E74E2EB8, ped)
end

function Global.RequestPtfxAsset()
	return _in(0x001FF43843028E0C)
end

function Global.RequestScript(scriptName)
	return _in(0x46ED607DDD40D7FE, _ts(scriptName))
end

function Global.RequestScriptAudioBank(p0)
	return _in(0x2F844A8B08D76685, p0, _r)
end

function Global.RequestScriptWithNameHash(scriptHash)
	return _in(0xF6B9CE3F8D5B9B74, _ch(scriptHash))
end

function Global.RequestStreamedTextureDict(textureDict, p1)
	return _in(0xC1BA29DF5631B0F8, _ts(textureDict), p1)
end

function Global.RequestTaskMoveNetworkStateTransition(ped, name)
	return _in(0xD01015C7316AE176, ped, _ts(name))
end

function Global.RequestVehicleAsset(vehicleHash, vehicleAsset)
	return _in(0x81A15811460FAB3A, _ch(vehicleHash), vehicleAsset)
end

function Global.RequestVehicleHighDetailModel(vehicle)
	return _in(0x84B81EF78BD22357, vehicle)
end

function Global.RequestVehicleRecording(i, name)
	return _in(0xC474CF16EDA45DC9, i, _ts(name))
end

function Global.RequestWaypointRecording(name)
	return _in(0x9EEFB62EB27B5792, _ts(name))
end

function Global.ReserveNetworkMissionObjects(amount)
	return _in(0x4E5C93BD0C32FBF8, amount)
end

function Global.ReserveNetworkMissionPeds(amount)
	return _in(0xB60FEBA45333D36F, amount)
end

function Global.ReserveNetworkMissionVehicles(amount)
	return _in(0x76B02E21ED27A469, amount)
end

function Global.ResetAiWeaponDamageModifier()
	return _in(0xEA16670E7BA4743C)
end

function Global.ResetAnimScene(animScene, p1)
	return _in(0x8FDF221F13537936, animScene, _ts(p1))
end

function Global.ResetBenchmarkRecording()
	return _in(0xECBABD0307FB216F)
end

function Global.ResetDispatchIdealSpawnDistance()
	return _in(0xC7817264BC4B6377)
end

function Global.ResetEntityAlpha(entity)
	return _in(0x744B9EF44779D9AB, entity)
end

function Global.ResetGroupFormationDefaultSpacing(groupHandle)
	return _in(0x63DAB4CCB3273205, groupHandle)
end

--- Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
-- @param index Zoom level index.
function Global.ResetMapZoomDataLevel(index)
	return _in(0x11a5b7ed, index)
end

function Global.ResetParticleFxOverride(name)
	return _in(0x274B3DABF7E72DEF, _ts(name))
end

function Global.ResetPausedRenderphases()
	return _in(0xCCD9AAD85E1B559E)
end

function Global.ResetPedInVehicleContext(ped)
	return _in(0x22EF8FF8778030EB, ped)
end

function Global.ResetPedLastVehicle(ped)
	return _in(0xBB8DE8CF6A8DD8BB, ped)
end

function Global.ResetPedRagdollTimer(ped)
	return _in(0x9FA4664CF62E47E8, ped)
end

function Global.ResetPedWeaponMovementClipset(ped)
	return _in(0x97B0DB5B4AA74E77, ped)
end

function Global.ResetPlayerArrestState(player)
	return _in(0x12917931C31F1750, player)
end

function Global.ResetPlayerInputGait(player)
	return _in(0x61A2EECAB274829B, player)
end

function Global.ResetScenarioGroupsEnabled()
	return _in(0xDD902D0349AFAD3A)
end

function Global.ResetScenarioTypesEnabled()
	return _in(0x0D40EE2A7F2B2D6D)
end

function Global.ResetScriptTimeWithinFrame()
	return _in(0x1411A7CBC3A6EB7B)
end

function Global.ResetVehicleStuckTimer(vehicle, nullAttributes)
	return _in(0x23298B468F7D88B6, vehicle, nullAttributes)
end

function Global.ResetWantedLevelDifficulty(player)
	return _in(0x062D14F18E8B0CAE, player)
end

function Global.RestartScriptedConversation(p0)
	return _in(0x9AEB285D1818C9AC, p0)
end

function Global.RestorePlayerStamina(player, p1)
	return _in(0xC41F4B6E23FE6A4A, player, p1)
end

function Global.ResumeAnimSceneFromLastCheckpoint(animScene)
	return _in(0x8E1BA705F63C1925, animScene)
end

function Global.ResurrectPed(ped)
	return _in(0x71BC8E838B9C6035, ped)
end

function Global.ReviveInjuredPed(ped)
	return _in(0x8D8ACD8388CD99CE, ped)
end

function Global.RopeDrawShadowEnabled(toggle)
	return _in(0xF159A63806BB5BA8, _i, toggle)
end

function Global.RopeForceLength(ropeId, length)
	return _in(0xD009F759A723DB1B, ropeId, length)
end

function Global.RopeSetUpdateOrder(ropeId, p1)
	return _in(0xDC57A637A20006ED, ropeId, p1)
end

function Global.Round(value)
	return _in(0xF2DB717A73826179, value, _r, _ri)
end

function Global.SaveBenchmarkRecording()
	return _in(0xF4743E2ECC02B3DA)
end

function Global.ScFeedSubmitPresetMessage(type, subType)
	return _in(0xEFB64240F6B17817, type, subType, _r, _ri)
end

function Global.ScInboxMessageGetDataInt(p0, context, out)
	return _in(0x95BB39C4DA99F348, p0, _ts(context), _ii(out) --[[ may be optional ]], _r)
end

function Global.ScInboxMessageGetDataString(p0, context, out)
	return _in(0x66F77FD58506FF6B, p0, _ts(context), _ts(out), _r)
end

function Global.ScInboxMessageGetString()
	return _in(0x176D077685CD83E4, _r, _s)
end

function Global.ScInboxMessageInit(p0)
	return _in(0xFF92537C4DDC1241, p0, _r, _ri)
end

function Global.ScInboxMessagePop(p0)
	return _in(0x63CAC501FFF66DC4, p0, _r)
end

function Global.ScProfanityCheckString(string, token)
	return _in(0x9C74AC9D87B3FFF4, _ts(string), _ii(token) --[[ may be optional ]], _r)
end

function Global.ScProfanityGetCheckIsPending(token)
	return _in(0x3A10BCD0C8AA0B82, token, _r)
end

function Global.ScProfanityGetCheckIsValid(token)
	return _in(0x08C8052AF40C4247, token, _r)
end

function Global.ScProfanityGetStringPassed(token)
	return _in(0xF302973BB8BE70E6, token, _r)
end

function Global.ScProfanityGetStringStatus(token)
	return _in(0x0CF3BFB99EBBE5B1, token, _r, _ri)
end

function Global.ScriptThreadIteratorGetNextThreadId()
	return _in(0x3CE3FB167E837D7C, _r, _ri)
end

function Global.ScriptThreadIteratorReset()
	return _in(0x39382EB8DCD8684D)
end

--- Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
-- @param duiObject The DUI browser handle.
-- @param jsonString The message, encoded as JSON.
function Global.SendDuiMessage(duiObject, jsonString)
	return _in(0xcd380da9, duiObject, _ts(jsonString))
end

--- Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
-- @param duiObject The DUI browser handle.
-- @param button Either `'left'`, `'middle'` or `'right'`.
function Global.SendDuiMouseDown(duiObject, button)
	return _in(0x5d01f191, duiObject, _ts(button))
end

--- Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
-- @param duiObject The DUI browser handle.
-- @param x The mouse X position.
-- @param y The mouse Y position.
function Global.SendDuiMouseMove(duiObject, x, y)
	return _in(0xd9d7a0aa, duiObject, x, y)
end

--- Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
-- @param duiObject The DUI browser handle.
-- @param button Either `'left'`, `'middle'` or `'right'`.
function Global.SendDuiMouseUp(duiObject, button)
	return _in(0x1d735b93, duiObject, _ts(button))
end

--- Injects a 'mouse wheel' event for a DUI object.
-- @param duiObject The DUI browser handle.
-- @param deltaY The wheel Y delta.
-- @param deltaX The wheel X delta.
function Global.SendDuiMouseWheel(duiObject, deltaY, deltaX)
	return _in(0x2d62133a, duiObject, deltaY, deltaX)
end

--- Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
-- @param jsonString The JSON-encoded message.
-- @return A success value.
function Global.SendLoadingScreenMessage(jsonString)
	return _in(0x8bbe6cc0, _ts(jsonString), _r)
end

function Global.SendNuiMessage(jsonString)
	return _in(0x78608acb, _ts(jsonString), _r)
end

function Global.SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(object, toggle)
	return _in(0x406137F8EF90EAF5, object, toggle)
end

function Global.SetAiMeleeWeaponDamageModifier(modifier)
	return _in(0x66460DEDDD417254, modifier)
end

function Global.SetAiWeaponDamageModifier(value)
	return _in(0x1B1E2A40A65B8521, value)
end

function Global.SetAirDragMultiplierForPlayersVehicle(player, multiplier)
	return _in(0x5DA6500FE849DA16, player, multiplier)
end

function Global.SetAllRandomPedsFlee(player, toggle)
	return _in(0xE705309B8C6445A4, player, toggle)
end

function Global.SetAllRandomPedsFleeThisFrame(player)
	return _in(0xD5C198A62F1DEB0A, player)
end

function Global.SetAllVehicleGeneratorsActive()
	return _in(0x3D596E6E88A02C24)
end

function Global.SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7)
	return _in(0xBBB134FB9D50C0CC, x1, y1, z1, x2, y2, z2, p6, p7)
end

function Global.SetAmbientPedRangeMultiplierThisFrame(multiplier)
	return _in(0x0B919E1FB47CC4E0, multiplier)
end

function Global.SetAmbientVoiceName(ped, name)
	return _in(0x6C8065A3B780185B, ped, _ts(name))
end

function Global.SetAmbientZoneListState(p1, p2)
	return _in(0x9748FA4DE50CCE3E, _i, p1, p2)
end

function Global.SetAmbientZoneListStatePersistent(ambientZone, p1, p2)
	return _in(0xF3638DAE8C4045E1, _ts(ambientZone), p1, p2)
end

function Global.SetAmbientZoneState(zoneName, p1, p2)
	return _in(0xBDA07E5950085E46, _ts(zoneName), p1, p2)
end

function Global.SetAmbientZoneStatePersistent(ambientZone, p1, p2)
	return _in(0x1D6650420CEC9D3B, _ts(ambientZone), p1, p2)
end

function Global.SetAmmoInClip(ped, weaponHash, ammo)
	return _in(0xDCD2A934D65CB497, ped, _ch(weaponHash), ammo, _r)
end

function Global.SetAnimRate(p0, p1, p2, p3)
	return _in(0x032D49C5E359C847, p0, p1, p2, p3)
end

function Global.SetAnimSceneBool(animScene, p1, p2, p3)
	return _in(0x519E96C2C68B404B, animScene, p1, p2, p3)
end

function Global.SetAnimSceneEntity(animScene, p1, p2, p3)
	return _in(0x8B720AD451CA2AB3, animScene, p1, p2, p3)
end

function Global.SetAnimSceneFloat(animScene, p1, p2, p3, p4)
	return _in(0x6BC5104E68CBEFE8, animScene, p1, p2, p3, p4)
end

function Global.SetAnimSceneInt(animScene, p1, p2, p3)
	return _in(0x3A379D2166CF5B92, animScene, p1, p2, p3)
end

function Global.SetAnimSceneOrigin(animScene, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x020894BF17A02EF2, animScene, p1, p2, p3, p4, p5, p6, p7)
end

function Global.SetAnimScenePaused(animScene, p1)
	return _in(0xD6824B7D24DC0CE0, animScene, p1)
end

function Global.SetAnimScenePlaybackList(animScene, p1)
	return _in(0xAB5E7CAB074D6B84, animScene, p1)
end

function Global.SetAnimSceneRate(animScene, p1)
	return _in(0x75820B801CFF262A, animScene, p1)
end

function Global.SetAnimalMood(animal, mood)
	return _in(0xCC97B29285B1DC3B, animal, mood)
end

function Global.SetAnimalTuningBoolParam(animal, p1, p2)
	return _in(0x9FF1E042FA597187, animal, p1, p2)
end

function Global.SetAnimalTuningFloatParam(animal, p1, p2)
	return _in(0xCBDA22C87977244F, animal, p1, p2)
end

function Global.SetArtificialLightsState(state)
	return _in(0xB2797619A7C7747B, state)
end

function Global.SetAttributeBaseRank(p0, p1, p2)
	return _in(0x5DA12E025D47D4E5, p0, p1, p2)
end

function Global.SetAttributeBonusRank(p0, p1, p2)
	return _in(0x920F9488BD115EFB, p0, p1, p2)
end

function Global.SetAttributePoints(p0, p1, p2)
	return _in(0x09A59688C26D88DF, p0, p1, p2)
end

function Global.SetAudioFlag(flagName, toggle)
	return _in(0xB9EFD5C25018725A, _ts(flagName), toggle)
end

function Global.SetAudioSceneVariable(scene, variable, value)
	return _in(0xEF21A9EF089A2668, _ts(scene), _ts(variable), value)
end

function Global.SetAudioVehiclePriority(vehicle, p1)
	return _in(0xE5564483E407F914, vehicle, p1)
end

function Global.SetBit(offset)
	return _in(0xF73FBE4845C43B5B, _i, offset)
end

function Global.SetBitsInRange(rangeStart, rangeEnd, p3)
	return _in(0x324DC1CEF57F31E6, _i, rangeStart, rangeEnd, p3)
end

function Global.SetBlipCoords(blip, posX, posY, posZ)
	return _in(0x4FF674F5E23D49CE, blip, posX, posY, posZ)
end

function Global.SetBlipFlashTimer(p0, p1, p2)
	return _in(0x02FF4CF43B7209D1, p0, p1, p2)
end

function Global.SetBlipFlashes(p0, p1, p2)
	return _in(0x0DF2B55F717DDB10, p0, p1, p2, _r, _ri)
end

function Global.SetBlipNameFromTextFile(blip, gxtEntry)
	return _in(0x0A062D6D7C0B2C2C, blip, _ts(gxtEntry))
end

function Global.SetBlipNameToPlayerName(blip, player)
	return _in(0x093DD5A31BC2B459, blip, player)
end

function Global.SetBlipRotation(blip, rotation)
	return _in(0x6049966A94FBE706, blip, rotation)
end

function Global.SetBlipScale(blip, scale)
	return _in(0xD38744167B2FA257, blip, scale)
end

function Global.SetBlipSprite(p0, p1, p2)
	return _in(0x74F74D3207ED525C, p0, p1, p2)
end

function Global.SetBlockOfPlayerBits(p0, p1, p2)
	return _in(0xC6DFB8C04C86D5A5, p0, p1, p2)
end

function Global.SetBlockingOfNonTemporaryEvents(ped, toggle)
	return _in(0x9F8AA94D6D97DBF4, ped, toggle)
end

function Global.SetBoatAnchor(vehicle, toggle)
	return _in(0xAEAB044F05B92659, vehicle, toggle)
end

function Global.SetBoatAnchorBuoyancyCoefficient(vehicle, value)
	return _in(0xE3261532550D6A9F, vehicle, value)
end

function Global.SetBoatFrozenWhenAnchored(p0, p1, p2)
	return _in(0x286771F3059A37A7, p0, p1, p2)
end

function Global.SetBoatSinksWhenWrecked(vehicle, toggle)
	return _in(0x62A6D317A011EA1D, vehicle, toggle)
end

function Global.SetCamActive(cam, active)
	return _in(0x87295BCA613800C8, cam, active)
end

function Global.SetCamActiveWithInterp(camTo, camFrom, duration, easeLocation, easeRotation)
	return _in(0x8B15AE2987C1AC8F, camTo, camFrom, duration, easeLocation, easeRotation)
end

function Global.SetCamAffectsAiming(cam, toggle)
	return _in(0x3CB9E8BDE5E76F33, cam, toggle)
end

function Global.SetCamCoord(cam, posX, posY, posZ)
	return _in(0xF9EE7D419EE49DE6, cam, posX, posY, posZ)
end

function Global.SetCamFarClip(cam, farClip)
	return _in(0x5E32817BF6302111, cam, farClip)
end

function Global.SetCamFov(cam, fieldOfView)
	return _in(0x27666E5988D9D429, cam, fieldOfView)
end

function Global.SetCamMotionBlurStrength(cam, strength)
	return _in(0x45FD891364181F9E, cam, strength)
end

function Global.SetCamNearClip(cam, nearClip)
	return _in(0xA924028272A61364, cam, nearClip)
end

function Global.SetCamParams(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
	return _in(0xA47BBFFFB83D4D0A, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
end

function Global.SetCamRot(cam, rotX, rotY, rotZ, rotationOrder)
	return _in(0x63DFA6810AD78719, cam, rotX, rotY, rotZ, rotationOrder)
end

function Global.SetCamSplineDuration(cam, timeDuration)
	return _in(0xFF6311652CA91015, cam, timeDuration)
end

function Global.SetCamSplinePhase(cam, p1)
	return _in(0xF1898A68E7C15636, cam, p1)
end

function Global.SetCamSplineSmoothingStyle(cam, smoothingStyle)
	return _in(0x84B3645618E726B0, cam, smoothingStyle)
end

function Global.SetCanAutoVaultOnEntity(entity, toggle)
	return _in(0x80646744FA88F9D7, entity, toggle)
end

function Global.SetCanClimbOnEntity(entity, toggle)
	return _in(0x24AED2A608F93C4C, entity, toggle)
end

function Global.SetCheckpointIconRgba(checkpoint, red, green, blue, alpha)
	return _in(0x99AFF17222D4DEB4, checkpoint, red, green, blue, alpha)
end

function Global.SetCheckpointRgba(checkpoint, red, green, blue, alpha)
	return _in(0xCAAFC225E33B1D15, checkpoint, red, green, blue, alpha)
end

function Global.SetCinematicButtonActive(p0)
	return _in(0xB90411F480457A6C, p0)
end

function Global.SetCinematicModeActive(p0)
	return _in(0xCE7A90B160F75046, p0)
end

function Global.SetClockDate(day, month, year)
	return _in(0x02AD3092562941E2, day, month, year)
end

function Global.SetClockTime(hour, minute, second)
	return _in(0x3A52C59FFB2DEED8, hour, minute, second)
end

function Global.SetCombatFloat(ped, combatType, p2)
	return _in(0xFF41B4B141ED981C, ped, combatType, p2)
end

function Global.SetControlGroupColor(padIndex, red, green, blue)
	return _in(0x8290252FFF36ACB5, padIndex, red, green, blue)
end

function Global.SetControlNormal(padIndex, control, amount)
	return _in(0xE8A25867FBA3B05E, padIndex, _ch(control), amount, _r)
end

function Global.SetCreateRandomCops(toggle)
	return _in(0x102E68B2024D536D, toggle)
end

function Global.SetCreditsActive(toggle)
	return _in(0xD37BECF862DA726F, toggle)
end

function Global.SetCurrentPedVehicleWeapon(ped, weaponHash)
	return _in(0x75C55983C2C39DAA, ped, _ch(weaponHash), _r)
end

function Global.SetCurrentPedWeapon(ped, weaponHash, equipNow, p3, p4, p5)
	return _in(0xADF692B254977C0C, ped, _ch(weaponHash), equipNow, p3, p4, p5)
end

function Global.SetDamping(entity, vertex, value)
	return _in(0xEEA3B200A6FEB65B, entity, vertex, value)
end

function Global.SetDecisionMaker(ped, name)
	return _in(0x8AE2F981CDDB8FA4, ped, _ch(name))
end

function Global.SetDisableBreaking(object, toggle)
	return _in(0x5CEC1A84620E7D5B, object, toggle)
end

function Global.SetDisableFragDamage(object, toggle)
	return _in(0x01BA3AED21C16CFB, object, toggle)
end

function Global.SetDisableRandomTrainsThisFrame(toggle)
	return _in(0xD4288603E8766FF7, toggle)
end

function Global.SetDisableVehicleEngineFires(vehicle, p1)
	return _in(0xD146EE5F2B06B95E, vehicle, p1)
end

function Global.SetDisableVehiclePetrolTankDamage(vehicle, toggle)
	return _in(0x5795FBE7A2001C14, vehicle, toggle)
end

function Global.SetDisableVehiclePetrolTankFires(vehicle, toggle)
	return _in(0xB70986AB19B04AFF, vehicle, toggle)
end

--- This native sets the app id for the discord rich presence implementation.
function Global.SetDiscordAppId(appId)
	return _in(0x6a02254d, _ts(appId))
end

--- This native sets the image asset for the discord rich presence implementation.
-- @param assetName The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function Global.SetDiscordRichPresenceAsset(assetName)
	return _in(0x53dfd530, _ts(assetName))
end

--- This native sets the small image asset for the discord rich presence implementation.
-- @param assetName The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function Global.SetDiscordRichPresenceAssetSmall(assetName)
	return _in(0xf61d04c4, _ts(assetName))
end

--- This native sets the hover text of the small image asset for the discord rich presence implementation.
-- @param text Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
function Global.SetDiscordRichPresenceAssetSmallText(text)
	return _in(0x35e62b6a, _ts(text))
end

--- This native sets the hover text of the image asset for the discord rich presence implementation.
-- @param text Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
function Global.SetDiscordRichPresenceAssetText(text)
	return _in(0xb029d2fa, _ts(text))
end

function Global.SetDispatchIdealSpawnDistance(p0)
	return _in(0xEAB6823B82FBD283, p0)
end

function Global.SetDriveTaskCruiseSpeed(driver, cruiseSpeed)
	return _in(0x5C9B84BD7D31D908, driver, cruiseSpeed)
end

function Global.SetDriveTaskMaxCruiseSpeed(p0, p1)
	return _in(0x404A5AA9B9F0B746, p0, p1)
end

function Global.SetDrivebyTaskTarget(shootingPed, targetPed, targetVehicle, x, y, z)
	return _in(0xE5B302114D8162EE, shootingPed, targetPed, targetVehicle, x, y, z)
end

--- Navigates the specified DUI browser to a different URL.
-- @param duiObject The DUI browser handle.
-- @param url The new URL.
function Global.SetDuiUrl(duiObject, url)
	return _in(0xf761d9f3, duiObject, _ts(url))
end

function Global.SetEnableBoundAnkles(ped, toggle)
	return _in(0xC52E0F855C58FC2E, ped, toggle)
end

function Global.SetEnableHandcuffs(ped, p1, p2)
	return _in(0xDF1AF8B5D56542FA, ped, p1, p2)
end

function Global.SetEnableSpeedRestrainForWaypointRecordingLeader(p0, p1)
	return _in(0x295F03DC97BEEBC1, p0, p1)
end

function Global.SetEntityAlpha(entity, alphaLevel, skin)
	return _in(0x0DF7692B1D9E7BA7, entity, alphaLevel, skin)
end

function Global.SetEntityAlwaysPrerender(entity, toggle)
	return _in(0xACAD101E1FB66689, entity, toggle)
end

function Global.SetEntityAsMissionEntity(entity, p1, p2)
	return _in(0xDC19C288082E586E, entity, p1, p2)
end

function Global.SetEntityAsNoLongerNeeded(entity)
	return _in(0x4971D2F8162B9674, _ii(entity) --[[ may be optional ]])
end

function Global.SetEntityCanBeDamaged(entity, toggle)
	return _in(0x0D06D522B90E861F, entity, toggle)
end

function Global.SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup)
	return _in(0x0EF1AFB18649E015, entity, bCanBeDamaged, relGroup)
end

function Global.SetEntityCanBeTargetedWithoutLos(entity, toggle)
	return _in(0x6D09F32E284D0FB7, entity, toggle)
end

function Global.SetEntityCollision(entity, toggle, keepPhysics)
	return _in(0xF66F820909453B8C, entity, toggle, keepPhysics)
end

function Global.SetEntityCompletelyDisableCollision(entity, p1, p2)
	return _in(0xE0580EC84813875A, entity, p1, p2)
end

function Global.SetEntityCoords(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
	return _in(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
end

function Global.SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis)
	return _in(0x239A3351AC1DA385, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis)
end

function Global.SetEntityDynamic(entity, toggle)
	return _in(0xFBFC4473F66CE344, entity, toggle)
end

function Global.SetEntityHasGravity(entity, toggle)
	return _in(0x0CEDB728A1083FA7, entity, toggle)
end

function Global.SetEntityHeading(entity, heading)
	return _in(0xCF2B9C0645C4651B, entity, heading)
end

--- Sets the entity's health. healthAmount sets the health value to that, and sets the maximum health core value. Setting healthAmount to 0 will kill the entity. Unclear what role p2 serves, but it's either 0 or an entity handle.
-- @param entity :
-- @param healthAmount :
-- @param p2 :
function Global.SetEntityHealth(entity, healthAmount, p2)
	return _in(0xAC2767ED8BDFAB15, entity, healthAmount, p2)
end

function Global.SetEntityInvincible(entity, toggle)
	return _in(0xA5C38736C426FCB8, entity, toggle)
end

function Global.SetEntityIsTargetPriority(entity, p1, p2)
	return _in(0x0A5D170C44CB2189, entity, p1, p2)
end

function Global.SetEntityLoadCollisionFlag(p0, p1)
	return _in(0x9B9EE31AED48072E, p0, p1)
end

function Global.SetEntityLodDist(entity, value)
	return _in(0x5FB407F0A7C877BF, entity, value)
end

function Global.SetEntityMaxHealth(entity, value)
	return _in(0x166E7CF68597D8B5, entity, value)
end

function Global.SetEntityMotionBlur(entity, toggle)
	return _in(0x516C6ABD18322B63, entity, toggle)
end

function Global.SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly)
	return _in(0xE037BF068223C38D, entity1, entity2, thisFrameOnly)
end

function Global.SetEntityOnlyDamagedByPlayer(entity, toggle)
	return _in(0x473598683095D430, entity, toggle)
end

function Global.SetEntityOnlyDamagedByRelationshipGroup(entity, p1, p2)
	return _in(0x6C1F6AA2F0ADD104, entity, p1, p2)
end

function Global.SetEntityProofs(entity, proofsBitset, p2)
	return _in(0xFAEE099C6F890BB8, entity, proofsBitset, p2)
end

function Global.SetEntityQuaternion(entity, x, y, z, w)
	return _in(0x100E7007D13E3687, entity, x, y, z, w)
end

function Global.SetEntityRenderScorched(entity, toggle)
	return _in(0x85B8A7534E44BC23, entity, toggle)
end

function Global.SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5)
	return _in(0x9CC8314DFEDE441E, entity, pitch, roll, yaw, rotationOrder, p5)
end

function Global.SetEntitySomething(entity, toggle)
	return _in(0x740CB4F3F602C9F4, entity, toggle)
end

function Global.SetEntityVelocity(entity, x, y, z)
	return _in(0x1C99BB7B6E96D16F, entity, x, y, z)
end

function Global.SetEntityVisible(entity, toggle)
	return _in(0x1794B4FCC84D812F, entity, toggle)
end

function Global.SetEntityVisibleInCutscene(p0, p1, p2, p3)
	return _in(0xE0031D3C8F36AB82, p0, p1, p2, p3)
end

function Global.SetEventFlagForDeletion(p0, p1, p2)
	return _in(0x4768D5252EAEB76F, p0, p1, p2)
end

function Global.SetEveryoneIgnorePlayer(player, toggle)
	return _in(0x34630A768925B852, player, toggle)
end

function Global.SetExtraTimecycleModifierStrength(strength)
	return _in(0x6FE93BCC7BF12B63, strength)
end

function Global.SetFacialIdleAnimOverride(ped, animName, animDict)
	return _in(0xFFC24B988B938B38, ped, _ts(animName), _ts(animDict))
end

function Global.SetFadeInAfterDeathArrest(toggle)
	return _in(0xDF3B5846DE5904AF, toggle)
end

function Global.SetFadeInAfterLoad(toggle)
	return _in(0xAC806C4CAB973517, toggle)
end

function Global.SetFarShadowsSuppressed(toggle)
	return _in(0x8FBFD2AEB196B369, toggle)
end

function Global.SetFirstPersonCamPitchRange(p0, p1)
	return _in(0x715B7F5E8BED32A2, p0, p1)
end

function Global.SetFocusEntity(entity)
	return _in(0x955AEDD58F4BD309, entity)
end

function Global.SetFocusPosAndVel(x, y, z, offsetX, offsetY, offsetZ)
	return _in(0x25F6EF88664540E2, x, y, z, offsetX, offsetY, offsetZ)
end

function Global.SetForceHdVehicle(vehicle, toggle)
	return _in(0x373CB1283308BD7B, vehicle, toggle)
end

function Global.SetForceObjectThisFrame(x, y, z, p3)
	return _in(0xF538081986E49E9D, x, y, z, p3)
end

function Global.SetFormationPositionsTargetRadius(p0, p1)
	return _in(0x7CC7D3B7AF7FB71F, p0, p1, _r, _ri)
end

function Global.SetFrontendActive(active)
	return _in(0xCE47C21C0687EBC2, active)
end

function Global.SetGamePaused(toggle)
	return _in(0xFAEC088D28B1DE4A, toggle)
end

function Global.SetGamePausesForStreaming(toggle)
	return _in(0xB3BC8250F4FE8B63, toggle)
end

function Global.SetGameplayCamRelativeHeading(p0, p1)
	return _in(0x5D1EB123EAC5D071, p0, p1)
end

function Global.SetGameplayCamRelativePitch(x, Value2)
	return _in(0xFB760AF4F537B8BF, x, Value2)
end

function Global.SetGameplayCamShakeAmplitude(amplitude)
	return _in(0x570E35F5C4A44838, amplitude)
end

function Global.SetGameplayCoordHint(x, y, z, duration, blendOutDuration, blendInDuration, unk)
	return _in(0xFA33B8C69A4A6A0F, x, y, z, duration, blendOutDuration, blendInDuration, unk)
end

function Global.SetGameplayEntityHint(entity, xOffset, yOffset, zOffset, p4, p5, p6, p7, p8)
	return _in(0xD1F7F32640ADFD12, entity, xOffset, yOffset, zOffset, p4, p5, p6, p7, p8)
end

function Global.SetGameplayHintAngle(p0)
	return _in(0x421192A2DA48FD01, p0)
end

function Global.SetGameplayHintAnimOffsetx(p0)
	return _in(0xF86B6F93727C59C9, p0)
end

function Global.SetGameplayHintAnimOffsety(p0)
	return _in(0x29E74F819150CC32, p0)
end

function Global.SetGameplayHintAnimOffsetz(p0)
	return _in(0xDDDC54181868F81F, p0)
end

function Global.SetGameplayHintFov(FOV)
	return _in(0x661E58BC6F00A49A, FOV)
end

function Global.SetGameplayObjectHint(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xC40551D65F2BF297, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.SetGameplayPedHint(p0, x1, y1, z1, p4, p5, p6, p7)
	return _in(0x90FB951648851733, p0, x1, y1, z1, p4, p5, p6, p7)
end

function Global.SetGameplayVehicleHint(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xE2B2BB7DAC280515, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.SetGlobalBlockCanBeAccessed(index, toggle)
	return _in(0xE66F392BFCE734AF, index, toggle)
end

function Global.SetGpsActive(active)
	return _in(0x3BD3F52BA9B1E4E8, active)
end

function Global.SetGpsCustomRouteRender(p0, p1, p2)
	return _in(0xF6CEF599FC470B33, p0, p1, p2)
end

function Global.SetGpsFlags(p0, p1)
	return _in(0x5DE61C90DDECFA2D, p0, p1)
end

function Global.SetGpsMultiRouteRender(toggle)
	return _in(0x4426D65E029A4DC0, toggle)
end

function Global.SetGroupFormation(groupId, formationType)
	return _in(0xCE2F5FC3AF7E8C1E, groupId, formationType)
end

function Global.SetGroupFormationSpacing(groupId, p1, p2, p3)
	return _in(0x1D9D45004C28C916, groupId, p1, p2, p3)
end

function Global.SetGroupSeparationRange(groupHandle, separationRange)
	return _in(0x4102C7858CFEE4E4, groupHandle, separationRange)
end

function Global.SetGuardZonePosition(name, x, y, z)
	return _in(0x7E7BF59F89FC6C6D, _ts(name), x, y, z)
end

function Global.SetGuardZonePosition_2(name, x, y, z)
	return _in(0x2F9005E2EA4E5EE4, _ts(name), x, y, z)
end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
-- Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
-- @param vehicle The vehicle class to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The value to set.
function Global.SetHandlingField(vehicle, class_, fieldName, value)
	return _in(0xfe8064e3, _ts(vehicle), _ts(class_), _ts(fieldName), value)
end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
-- Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
-- @param vehicle The vehicle class to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The floating-point value to set.
function Global.SetHandlingFloat(vehicle, class_, fieldName, value)
	return _in(0x90dd01c, _ts(vehicle), _ts(class_), _ts(fieldName), value)
end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
-- @param vehicle The vehicle class to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The integer value to set.
function Global.SetHandlingInt(vehicle, class_, fieldName, value)
	return _in(0x8ab3f46c, _ts(vehicle), _ts(class_), _ts(fieldName), value)
end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
-- Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
-- @param vehicle The vehicle class to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The Vector3 value to set.
function Global.SetHandlingVector(vehicle, class_, fieldName, value)
	return _in(0x7f9d543, _ts(vehicle), _ts(class_), _ts(fieldName), value)
end

function Global.SetHdArea(x, y, z, radius)
	return _in(0xB88B905AFA35CB4D, x, y, z, radius)
end

function Global.SetHidofEnvBlurParams(p0, p1, p2, p3, p4, p5)
	return _in(0xCC23AA1A7CBFE840, p0, p1, p2, p3, p4, p5)
end

function Global.SetHighFallTask(ped, p1, p2, p3)
	return _in(0x8C825BDC7741D37C, ped, p1, p2, p3)
end

function Global.SetHornEnabled(vehicle, toggle)
	return _in(0x76D683C108594D0E, vehicle, toggle)
end

function Global.SetIgnoreNoGpsFlag(toggle)
	return _in(0x72751156E7678833, toggle)
end

function Global.SetIkTarget(ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration)
	return _in(0xC32779C16FCEECD9, ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration)
end

function Global.SetInputExclusive(padIndex, control)
	return _in(0xEDE476E5EE29EDB1, padIndex, _ch(control))
end

function Global.SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ)
	return _in(0x87f43553, interiorId, portalIndex, cornerIndex, posX, posY, posZ)
end

function Global.SetInteriorPortalFlag(interiorId, portalIndex, flag)
	return _in(0x88b2355e, interiorId, portalIndex, flag)
end

function Global.SetInteriorPortalRoomFrom(interiorId, portalIndex, roomFrom)
	return _in(0x298fc783, interiorId, portalIndex, roomFrom)
end

function Global.SetInteriorPortalRoomTo(interiorId, portalIndex, roomTo)
	return _in(0x58982680, interiorId, portalIndex, roomTo)
end

function Global.SetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ)
	return _in(0x4fdcf51e, interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ)
end

function Global.SetInteriorRoomFlag(interiorId, roomIndex, flag)
	return _in(0x5518d60b, interiorId, roomIndex, flag)
end

function Global.SetInteriorRoomTimecycle(interiorId, roomIndex, timecycleHash)
	return _in(0x31c9a848, interiorId, roomIndex, timecycleHash)
end

function Global.SetLocalPlayerCanUsePickupsWithThisModel(modelHash, toggle)
	return _in(0x88EAEC617CD26926, _ch(modelHash), toggle)
end

function Global.SetLocalPlayerInvisibleLocally(p0)
	return _in(0xE5F773C1A1D9D168, p0)
end

function Global.SetLocalPlayerVisibleInCutscene(p0, p1, p2)
	return _in(0xD1065D68947E7B6E, p0, p1, p2)
end

--- Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
-- you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
-- @param manualShutdown TRUE to manually shut down the loading screen NUI.
function Global.SetManualShutdownLoadingScreenNui(manualShutdown)
	return _in(0x1722c938, manualShutdown)
end

--- Sets values to the zoom level data by index.
-- @param index Zoom level index.
-- @param zoomScale fZoomScale value.
-- @param zoomSpeed fZoomSpeed value.
-- @param scrollSpeed fScrollSpeed value.
-- @param tilesX vTiles X.
-- @param tilesY vTiles Y.
function Global.SetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY)
	return _in(0x447c718e, index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY)
end

function Global.SetMapdatacullboxEnabled(name, toggle)
	return _in(0x3CACC83F6FED837C, _ts(name), toggle)
end

function Global.SetMaxWantedLevel(maxWantedLevel)
	return _in(0x28A4BD2CEE236E19, maxWantedLevel)
end

function Global.SetMillisecondsPerGameMinute(ms)
	return _in(0x04EEDB3848DACF68, ms)
end

--- Overrides how many real ms are equal to one game minute.
-- A setter for [`GetMillisecondsPerGameMinute`](#_0x2F8B4D1C595B11DB).
-- @param value Milliseconds.
function Global.SetMillisecondsPerGameMinute(value)
	return _in(0x36ca2554, value)
end

--- Reveals the entire minimap (FOW = Fog of War)
-- @param toggle :
function Global.SetMinimapHideFow(toggle)
	return _in(0x4B8F743A4A6D2FF8, toggle)
end

--- Sets the display info for a minimap overlay.
-- @param miniMap The minimap overlay ID.
-- @param x The X position for the overlay. This is equivalent to a game coordinate X.
-- @param y The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
-- @param xScale The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
-- @param yScale The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
-- @param alpha The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
function Global.SetMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha)
	return _in(0x6a48b3ca, miniMap, x, y, xScale, yScale, alpha)
end

function Global.SetMissionFlag(toggle)
	return _in(0x36694B456BE80D0A, toggle)
end

function Global.SetMissionName(p0, name)
	return _in(0x402669A4BDAA72DA, p0, _ts(name))
end

function Global.SetMissionName_2(p0, name)
	return _in(0xD98630CE73C61E98, p0, _ts(name))
end

function Global.SetMissionTrainAsNoLongerNeeded(p1)
	return _in(0xBBE7648349B49BE8, _i, p1)
end

function Global.SetMissionTrainCoords(train, x, y, z)
	return _in(0x7632755962AB9922, train, x, y, z)
end

function Global.SetModelAsNoLongerNeeded(model)
	return _in(0x4AD96EF928BD4F9A, _ch(model))
end

function Global.SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation)
	return _in(0x7f6b8d75, _ch(modelHash), ratePerSecond, headlightRotation, invertRotation)
end

function Global.SetMouseCursorActiveThisFrame()
	return _in(0xF12E4CCAF249DC10)
end

function Global.SetMouseCursorSprite(spriteId)
	return _in(0x7F5858AAB5A58CCE, spriteId)
end

function Global.SetMpGamerTagBigText(gamerTagId, string)
	return _in(0xA0D7CE5F83259663, gamerTagId, _ts(string))
end

function Global.SetMpGamerTagName(gamerTagId, string)
	return _in(0xEA6F4B8D4B4B5B3E, gamerTagId, _ts(string))
end

function Global.SetNetworkIdExistsOnAllMachines(netId, toggle)
	return _in(0xE05E81A888FA63C8, netId, toggle)
end

function Global.SetNetworkIdSyncToPlayer(netId, player, toggle)
	return _in(0xA8A024587329F36A, netId, player, toggle)
end

function Global.SetNetworkIdVisibleInCutscene(p0, p1, p2, p3)
	return _in(0xA6928482543022B4, p0, p1, p2, p3)
end

function Global.SetNoLoadingScreen(toggle)
	return _in(0x5CB83156AA038F95, toggle)
end

function Global.SetNuiFocus(hasFocus, hasCursor)
	return _in(0x5b98ae30, hasFocus, hasCursor)
end

function Global.SetObjectAsNoLongerNeeded(object)
	return _in(0x3AE22DEB5BA5A3E6, _ii(object) --[[ may be optional ]])
end

function Global.SetObjectCanClimbOn(object, toggle)
	return _in(0x4D89D607CB3DD1D2, object, toggle)
end

function Global.SetObjectPhysicsParams(object, weight, p2, p3, p4, p5, gravity, p7, p8, p9, p10, buoyancy)
	return _in(0xF6DF6E90DE7DF90F, object, weight, p2, p3, p4, p5, gravity, p7, p8, p9, p10, buoyancy)
end

function Global.SetObjectTargettable(object, targettable)
	return _in(0x8A7391690F5AFD81, object, targettable)
end

function Global.SetObjectTextureVariation(object, textureVariation)
	return _in(0x971DA0055324D033, object, textureVariation)
end

function Global.SetPadShake(padIndex, duration, frequency)
	return _in(0x48B3886C1358D0D5, padIndex, duration, frequency)
end

function Global.SetParkedVehicleDensityMultiplierThisFrame(multiplier)
	return _in(0xFEDFA97638D61D4A, multiplier)
end

function Global.SetParticleFxLoopedAlpha(ptfxHandle, alpha)
	return _in(0x88786E76234F7054, ptfxHandle, alpha)
end

function Global.SetParticleFxLoopedColour(ptfxHandle, r, g, b, p4)
	return _in(0x239879FC61C610CC, ptfxHandle, r, g, b, p4)
end

function Global.SetParticleFxLoopedEvolution(ptfxHandle, propertyName, amount, noNetwork)
	return _in(0x3674F389B0FACD80, ptfxHandle, _ts(propertyName), amount, noNetwork)
end

function Global.SetParticleFxLoopedFarClipDist(ptfxHandle, range)
	return _in(0x9B04D471DA0AD7AA, ptfxHandle, range)
end

function Global.SetParticleFxLoopedOffsets(ptfxHandle, x, y, z, rotX, rotY, rotZ)
	return _in(0xD3A4A95FC94FE83B, ptfxHandle, x, y, z, rotX, rotY, rotZ)
end

function Global.SetParticleFxLoopedScale(ptfxHandle, scale)
	return _in(0x1A9E1C0D98D093B7, ptfxHandle, scale)
end

function Global.SetParticleFxNonLoopedColour(r, g, b)
	return _in(0x60B85BED6577A35B, r, g, b)
end

function Global.SetParticleFxOverride(oldAsset, newAsset)
	return _in(0xBE711A169E9C7E95, _ts(oldAsset), _ts(newAsset))
end

function Global.SetPedAccuracy(ped, accuracy)
	return _in(0x7AEFB85C1D49DEB6, ped, accuracy)
end

function Global.SetPedAmmo(ped, weaponHash, ammo)
	return _in(0x14E56BC5B5DB6A19, ped, _ch(weaponHash), ammo)
end

function Global.SetPedAmmoByType(ped, ammoType, ammo)
	return _in(0x5FD1E1F011E76D7E, ped, ammoType, ammo)
end

function Global.SetPedAmmoToDrop(p0, p1, p2)
	return _in(0xA4EFEF9440A5B0EF, p0, p1, p2)
end

function Global.SetPedAsCop(ped, toggle)
	return _in(0xBB03C38DD3FB7FFD, ped, toggle)
end

function Global.SetPedAsGroupLeader(p0, p1, p2)
	return _in(0x2A7819605465FBCE, p0, p1, p2)
end

function Global.SetPedAsGroupMember(ped, groupId)
	return _in(0x9F3480FE65DB31B5, ped, groupId)
end

function Global.SetPedAsNoLongerNeeded(ped)
	return _in(0x2595DD4236549CE3, _ii(ped) --[[ may be optional ]])
end

function Global.SetPedCanArmIk(ped, toggle)
	return _in(0x6C3B4D6D13B4C841, ped, toggle)
end

function Global.SetPedCanBeKnockedOffVehicle(ped, state)
	return _in(0x7A6535691B477C48, ped, state)
end

function Global.SetPedCanBeTargetted(ped, toggle)
	return _in(0x63F58F7C80513AAD, ped, toggle)
end

function Global.SetPedCanBeTargettedByPlayer(ped, player, toggle)
	return _in(0x66B57B72E0836A76, ped, player, toggle)
end

function Global.SetPedCanBeTargettedByTeam(ped, team, toggle)
	return _in(0xBF1CA77833E58F2C, ped, team, toggle)
end

function Global.SetPedCanHeadIk(ped, toggle)
	return _in(0xC11C18092C5530DC, ped, toggle)
end

function Global.SetPedCanLegIk(ped, toggle)
	return _in(0x73518ECE2485412B, ped, toggle)
end

function Global.SetPedCanPlayAmbientAnims(ped, toggle)
	return _in(0x6373D1349925A70E, ped, toggle)
end

function Global.SetPedCanPlayAmbientBaseAnims(ped, toggle)
	return _in(0x0EB0585D15254740, ped, toggle)
end

function Global.SetPedCanPlayGestureAnims(p0, p1, p2)
	return _in(0xBAF20C5432058024, p0, p1, p2)
end

function Global.SetPedCanRagdoll(ped, toggle)
	return _in(0xB128377056A54E2A, ped, toggle)
end

function Global.SetPedCanRagdollFromPlayerImpact(ped, toggle)
	return _in(0xDF993EE5E90ABA25, ped, toggle)
end

function Global.SetPedCanTeleportToGroupLeader(pedHandle, groupHandle, toggle)
	return _in(0x2E2F4240B3F24647, pedHandle, groupHandle, toggle)
end

function Global.SetPedCanTorsoIk(ped, toggle)
	return _in(0xF2B7106D37947CE0, ped, toggle)
end

function Global.SetPedCanTorsoReactIk(ped, p1)
	return _in(0xF5846EDB26A98A24, ped, p1)
end

function Global.SetPedCanUseAutoConversationLookat(ped, toggle)
	return _in(0xEC4686EC06434678, ped, toggle)
end

function Global.SetPedCapsule(ped, value)
	return _in(0x364DF566EC833DE2, ped, value)
end

function Global.SetPedClothPackageIndex(p0, p1)
	return _in(0x78C4E9961DB3EB5B, p0, p1)
end

function Global.SetPedCombatAbility(ped, p1)
	return _in(0xC7622C0D36B2FDA8, ped, p1)
end

function Global.SetPedCombatAttributes(ped, attributeIndex, enabled)
	return _in(0x9F7794730795E019, ped, attributeIndex, enabled)
end

function Global.SetPedCombatMovement(ped, combatMovement)
	return _in(0x4D9CA1009AFBD057, ped, combatMovement)
end

function Global.SetPedCombatRange(ped, p1)
	return _in(0x3C606747B23E497B, ped, p1)
end

function Global.SetPedConfigFlag(ped, flagId, value)
	return _in(0x1913FE4CBF41C463, ped, flagId, value)
end

function Global.SetPedCurrentWeaponVisible(ped, visible, deselectWeapon, p3, p4)
	return _in(0x0725A4CCFDED9A70, ped, visible, deselectWeapon, p3, p4)
end

function Global.SetPedDefensiveAreaDirection(ped, p1, p2, p3, p4)
	return _in(0x413C6C763A4AFFAD, ped, p1, p2, p3, p4)
end

function Global.SetPedDesiredHeading(ped, heading)
	return _in(0xAA5A7ECE2AA8FE70, ped, heading)
end

function Global.SetPedDesiredMoveBlendRatio(ped, p1)
	return _in(0x1E982AC8716912C5, ped, p1)
end

function Global.SetPedDropsInventoryWeapon(ped, weaponHash, xOffset, yOffset, zOffset, ammoCount)
	return _in(0x208A1888007FC0E6, ped, _ch(weaponHash), xOffset, yOffset, zOffset, ammoCount)
end

function Global.SetPedDropsWeaponsWhenDead(ped, toggle)
	return _in(0x476AE72C1D19D1A8, ped, toggle)
end

function Global.SetPedFiringPattern(ped, patternHash)
	return _in(0x9AC577F5A12AD8A9, ped, _ch(patternHash))
end

function Global.SetPedFleeAttributes(ped, attributeFlags, enable)
	return _in(0x70A2D1137C8ED7C9, ped, attributeFlags, enable)
end

function Global.SetPedGestureGroup(p0, p1, p2)
	return _in(0xDDF803377F94AAA8, p0, p1, p2)
end

function Global.SetPedGravity(ped, toggle)
	return _in(0x9FF447B6B6AD960A, ped, toggle)
end

function Global.SetPedGroupMemberPassengerIndex(ped, index)
	return _in(0x0BDDB8D9EC6BCF3C, ped, index)
end

function Global.SetPedHearingRange(ped, value)
	return _in(0x33A8F7F7D5F7F33C, ped, value)
end

function Global.SetPedHighlyPerceptive(ped, toggle)
	return _in(0x52D59AB61DDC05DD, ped, toggle)
end

function Global.SetPedIdRange(ped, value)
	return _in(0xF107E836A70DCE05, ped, value)
end

function Global.SetPedInfiniteAmmo(ped, toggle, weaponHash)
	return _in(0x3EDCB0505123623B, ped, toggle, _ch(weaponHash))
end

function Global.SetPedInfiniteAmmoClip(ped, toggle)
	return _in(0xFBAA1E06B6BCA741, ped, toggle)
end

function Global.SetPedIntoVehicle(ped, vehicle, seatIndex)
	return _in(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
end

function Global.SetPedIsDrunk(ped, toggle)
	return _in(0x95D2D383D5396B8A, ped, toggle)
end

function Global.SetPedKeepTask(ped, toggle)
	return _in(0x971D38760FBC02EF, ped, toggle)
end

function Global.SetPedLegIkMode(ped, mode)
	return _in(0xC396F5B86FF9FEBD, ped, mode)
end

function Global.SetPedLodMultiplier(ped, multiplier)
	return _in(0xDC2C5C242AAC342B, ped, multiplier)
end

function Global.SetPedMaxHealth(ped, value)
	return _in(0xF5F6378C4F3419D3, ped, value)
end

function Global.SetPedMaxMoveBlendRatio(ped, value)
	return _in(0x433083750C5E064A, ped, value)
end

function Global.SetPedMaxTimeInWater(ped, value)
	return _in(0x43C851690662113D, ped, value)
end

function Global.SetPedMaxTimeUnderwater(ped, value)
	return _in(0x6BA428C528D9E522, ped, value)
end

function Global.SetPedMinMoveBlendRatio(ped, value)
	return _in(0x01A898D26E2333DD, ped, value)
end

function Global.SetPedModelIsSuppressed(ped, toggle)
	return _in(0xE163A4BCE4DE6F11, ped, toggle)
end

function Global.SetPedMoney(ped, amount)
	return _in(0xA9C8960E8684C1B5, ped, amount)
end

function Global.SetPedMoveAnimsBlendOut(ped)
	return _in(0x9E8C908F41584ECD, ped)
end

function Global.SetPedMoveRateOverride(ped, value)
	return _in(0x085BF80FA50A39D1, ped, value)
end

function Global.SetPedNameDebug(ped, name)
	return _in(0x98EFA132A4117BE1, ped, _ts(name))
end

function Global.SetPedNonCreationArea(x1, y1, z1, x2, y2, z2)
	return _in(0xEE01041D559983EA, x1, y1, z1, x2, y2, z2)
end

--- Sets the outfit preset for the ped. The presetId is an index which determines it's preset outfit. p2 is always 0.
-- @param ped :
-- @param presetId :
-- @param p2 :
function Global.SetPedOutfitPreset(ped, presetId, p2)
	return _in(0x77FF8D35EEC6BBC4, ped, presetId, p2)
end

function Global.SetPedPanicExitScenario(p0, p1, p2, p3)
	return _in(0xFE07FF6495D52E2A, p0, p1, p2, p3, _r, _ri)
end

function Global.SetPedPathAvoidFire(ped, avoidFire)
	return _in(0x4455517B28441E60, ped, avoidFire)
end

function Global.SetPedPathCanDropFromHeight(ped, Toggle)
	return _in(0xE361C5C71C431A4F, ped, Toggle)
end

function Global.SetPedPathCanUseClimbovers(ped, Toggle)
	return _in(0x8E06A6FE76C9EFF4, ped, Toggle)
end

function Global.SetPedPathCanUseLadders(ped, Toggle)
	return _in(0x77A5B103C87F476E, ped, Toggle)
end

function Global.SetPedPathMayEnterWater(ped, mayEnterWater)
	return _in(0xF35425A4204367EC, ped, mayEnterWater)
end

function Global.SetPedPathPreferToAvoidWater(p0, p1, p2)
	return _in(0x38FE1EC73743793C, p0, p1, p2)
end

function Global.SetPedPathsBackToOriginal(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xE04B48F2CC926253, p0, p1, p2, p3, p4, p5, p6)
end

function Global.SetPedPathsInArea(x1, y1, z1, x2, y2, z2, unknown, p7)
	return _in(0x34F060F4BF92E018, x1, y1, z1, x2, y2, z2, unknown, p7)
end

function Global.SetPedPromptName(ped, name)
	return _in(0x4A48B6E03BABB4AC, ped, _ts(name))
end

function Global.SetPedRagdollForceFall(ped)
	return _in(0x01F6594B923B9251, ped)
end

function Global.SetPedRagdollOnCollision(p0, p1, p2)
	return _in(0xF0A4F1BBF4FA7497, p0, p1, p2)
end

function Global.SetPedRandomComponentVariation(ped, p1)
	return _in(0xC8A9481A01E63C28, ped, p1)
end

function Global.SetPedRelationshipGroupDefaultHash(ped, hash)
	return _in(0xADB3F206518799E8, ped, _ch(hash))
end

function Global.SetPedRelationshipGroupHash(ped, hash)
	return _in(0xC80A74AC829DDD92, ped, _ch(hash))
end

function Global.SetPedResetFlag(ped, flagId, doReset)
	return _in(0xC1E8A365BF3B29F2, ped, flagId, doReset)
end

function Global.SetPedScale(ped, scale)
	return _in(0x25ACFC650B65C538, ped, scale)
end

function Global.SetPedSeeingRange(ped, value)
	return _in(0xF29CF591C4BF6CEE, ped, value)
end

function Global.SetPedShootRate(ped, shootRate)
	return _in(0x614DA022990752DC, ped, shootRate)
end

function Global.SetPedSphereDefensiveArea(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x9D3151A373974804, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.SetPedStealthMovement(p0, p1, p2, p3)
	return _in(0x88CBB5CEB96B7BD2, p0, p1, p2, p3)
end

function Global.SetPedSweat(ped, sweat)
	return _in(0x27B0405F59637D1F, ped, sweat)
end

function Global.SetPedTargetLossResponse(ped, responseType)
	return _in(0x0703B9079823DA4A, ped, responseType)
end

function Global.SetPedToInformRespectedFriends(ped, radius, maxFriends)
	return _in(0x112942C6E708F70B, ped, radius, maxFriends)
end

function Global.SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6)
	return _in(0xAE99FB955581844A, ped, time1, time2, ragdollType, p4, p5, p6, _r)
end

function Global.SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13)
	return _in(0xD76632D99E4966C8, ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13, _r)
end

function Global.SetPedUsingActionMode(ped, p1, p2, action)
	return _in(0xD75ACCF5E0FB5367, ped, p1, p2, _ts(action))
end

function Global.SetPedVisualFieldCenterAngle(ped, angle)
	return _in(0x3B6405E8AB34A907, ped, angle)
end

function Global.SetPedVisualFieldMaxAngle(ped, value)
	return _in(0x70793BDCA1E854D4, ped, value)
end

function Global.SetPedVisualFieldMinAngle(ped, value)
	return _in(0x2DB492222FB21E26, ped, value)
end

function Global.SetPedVisualFieldPeripheralRange(ped, range)
	return _in(0x9C74B0BC831B753A, ped, range)
end

function Global.SetPedWaypointRouteOffset(p0, p1, p2, p3)
	return _in(0xED98E10B0AFCE4B4, p0, p1, p2, p3, _r, _ri)
end

function Global.SetPedWetnessEnabledThisFrame(ped)
	return _in(0xB5485E4907B53019, ped)
end

function Global.SetPedWetnessHeight(ped, height)
	return _in(0x44CB6447D2571AA0, ped, height)
end

function Global.SetPickupGenerationRangeMultiplier(multiplier)
	return _in(0x318516E02DE3ECE2, multiplier)
end

function Global.SetPickupHiddenWhenUncollectable(p0, p1)
	return _in(0x81218CE01B672219, p0, p1)
end

function Global.SetPickupNotLootable(p0, p1)
	return _in(0x92E87F60F21A0C3A, p0, p1)
end

function Global.SetPickupParticleFxHighlight(p0, p1)
	return _in(0x1607C7D9B3021DF5, p0, p1)
end

function Global.SetPickupParticleFxSpawn(p0, p1)
	return _in(0xEB9740A38FD6D634, p0, p1)
end

function Global.SetPickupRegenerationTime(pickup, duration)
	return _in(0x78015C9B4B3ECC9D, pickup, duration)
end

function Global.SetPickupUncollectable(p0, p1)
	return _in(0x4A8CB328CD6F1C9B, p0, p1)
end

function Global.SetPlaybackSpeed(vehicle, speed)
	return _in(0xD78084EED4CD94C6, vehicle, speed)
end

function Global.SetPlayerCanBeHassledByGangs(player, toggle)
	return _in(0xC7FE774412046825, player, toggle)
end

function Global.SetPlayerCanUseCover(player, toggle)
	return _in(0x5EDA520F7A3BAF4E, player, toggle)
end

function Global.SetPlayerClothPinFrames(player, toggle)
	return _in(0xD0D9317DFEEF9A66, player, toggle)
end

function Global.SetPlayerControl(p0, p1, p2, p3)
	return _in(0x4D51E59243281D80, p0, p1, p2, p3)
end

function Global.SetPlayerForcedAim(p0, p1, p2, p3, p4)
	return _in(0xD5FCC166AEB2FD0F, p0, p1, p2, p3, p4)
end

function Global.SetPlayerHealthRechargeMultiplier(player, regenRate)
	return _in(0x8899C244EBCF70DE, player, regenRate)
end

function Global.SetPlayerInvincible(player, toggle)
	return _in(0xFEBEEBC9CBDF4B12, player, toggle)
end

function Global.SetPlayerInvisibleLocally(player, toggle)
	return _in(0x12B37D54667DB0B8, player, toggle)
end

function Global.SetPlayerLockon(player, toggle)
	return _in(0x462AA1973CBBA75E, player, toggle)
end

function Global.SetPlayerLockonRangeOverride(player, range)
	return _in(0x3A3CD06597388322, player, range)
end

function Global.SetPlayerMayNotEnterAnyVehicle(player)
	return _in(0xBEC463B3A11C909E, player)
end

function Global.SetPlayerMayOnlyEnterThisVehicle(player, vehicle)
	return _in(0xDA35A134038557EC, player, vehicle)
end

function Global.SetPlayerMeleeWeaponDamageModifier(p0, p1)
	return _in(0xE4CB5A3F18170381, p0, p1)
end

function Global.SetPlayerModel(p0, p1, p2)
	return _in(0xED40380076A31506, p0, p1, p2)
end

function Global.SetPlayerNoiseMultiplier(player, multiplier)
	return _in(0xB5EC6BDAEBCA454C, player, multiplier)
end

function Global.SetPlayerSimulateAiming(player, toggle)
	return _in(0xE0447DEF81CCDFD2, player, toggle)
end

function Global.SetPlayerSneakingNoiseMultiplier(player, multiplier)
	return _in(0x4DE44FA389DCA565, player, multiplier)
end

--- the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
-- This function doesn't need to be called every frame, it works like a switcher.
-- @param player The target player.
-- @param state Overriding state.
function Global.SetPlayerTalkingOverride(player, state)
	return _in(0xfc02caf6, player, state)
end

function Global.SetPlayerTargetingMode(targetMode)
	return _in(0xD66A941F401E7302, targetMode)
end

function Global.SetPlayerTeam(p0, p1, p2)
	return _in(0xE8DD8536F01DE600, p0, p1, p2)
end

function Global.SetPlayerVisibleLocally(player, toggle)
	return _in(0xFAA10F1FAFB11AF2, player, toggle)
end

function Global.SetPlayerWantedLevel(player, wantedLevel, disableNoMission)
	return _in(0x384D4765395E006C, player, wantedLevel, disableNoMission)
end

function Global.SetPlayerWeaponDamageModifier(player, modifier)
	return _in(0x94D529F7B73D7A85, player, modifier)
end

function Global.SetPlayerWeaponDefenseModifier(player, modifier)
	return _in(0xD15CC2D493160BE3, player, modifier)
end

function Global.SetPoliceRadarBlips(toggle)
	return _in(0x6FD7DD6B63F2820E, toggle)
end

function Global.SetPopControlSphereThisFrame(p0, p1, p2, p3, p4)
	return _in(0xD8C3BE3EE94CAF2D, p0, p1, p2, p3, p4)
end

function Global.SetPopzonePopulationSet(popZone, populationSetHash)
	return _in(0x3E6A49D9B519E85C, popZone, _ch(populationSetHash))
end

function Global.SetPortalSettingsOverride(p0, p1)
	return _in(0x044DBAD7A7FA2BE5, _ts(p0), _ts(p1))
end

function Global.SetRadarAsExteriorThisFrame()
	return _in(0xA8EBBAE986FB5457)
end

function Global.SetRadarZoom(zoomLevel)
	return _in(0xCAF6489DA2C8DD9E, zoomLevel)
end

function Global.SetRagdollBlockingFlags(ped, flags)
	return _in(0x26695EC767728D84, ped, flags)
end

function Global.SetRainFxIntensity(intensity)
	return _in(0x193DFC0526830FD6, intensity)
end

function Global.SetRandomBoats(toggle)
	return _in(0xF44D446D4E36DB87, toggle)
end

function Global.SetRandomEventFlag(toggle)
	return _in(0xB1ADCCC4150C6473, toggle)
end

function Global.SetRandomSeed(seed)
	return _in(0x5CD7A49104AFCB6B, seed)
end

function Global.SetRandomTrains(toggle)
	return _in(0x1156C6EE7E82A98A, toggle)
end

function Global.SetRandomVehicleDensityMultiplierThisFrame(multiplier)
	return _in(0x1F91D44490E1EA0C, multiplier)
end

function Global.SetRandomWeatherType(p0, p1)
	return _in(0x6E5A7FBEECAB3C72, p0, p1)
end

function Global.SetRelationshipBetweenGroups(relationship, group1, group2)
	return _in(0xBF25EB89375A37AD, relationship, _ch(group1), _ch(group2))
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

--- Sets the player's rich presence detail state for social platform providers to a specified string.
-- @param presenceState The rich presence string to set.
function Global.SetRichPresence(presenceState)
	return _in(0x7bdcbd45, _ts(presenceState))
end

function Global.SetRoadsBackToOriginal(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x1EE7063B80FFC77C, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.SetRoadsBackToOriginalInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x0027501B9F3B407E, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.SetRoadsInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x1A5AA1208AF5DB59, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.SetRoadsInArea(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xBF1A602B5BA52FEE, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.SetRpgIconVisibility(p0, p1)
	return _in(0xC116E6DF68DCE667, p0, p1)
end

function Global.SetRuntimeTextureArgbData(tex, buffer, length)
	return _in(0x3963d527, tex, _ts(buffer), length, _r)
end

--- Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
-- @param tex A handle to the runtime texture.
-- @param x The X position of the pixel to change.
-- @param y The Y position of the pixel to change.
-- @param r The new R value (0-255).
-- @param g The new G value (0-255).
-- @param b The new B value (0-255).
-- @param a The new A value (0-255).
function Global.SetRuntimeTexturePixel(tex, x, y, r, g, b, a)
	return _in(0xab65acee, tex, x, y, r, g, b, a)
end

function Global.SetScenarioGroupEnabled(scenarioGroup, toggle)
	return _in(0x02C8E5B49848664E, _ts(scenarioGroup), toggle)
end

function Global.SetScenarioGroupEnabledHash(scenarioGroup, toggle)
	return _in(0x9925EDDB6EAB88CD, _ch(scenarioGroup), toggle)
end

function Global.SetScenarioPedDensityMultiplierThisFrame(p0)
	return _in(0x7A556143A1C03898, p0)
end

function Global.SetScenarioTypeEnabled(scenarioType, toggle)
	return _in(0xEB47EC4E34FB7EE1, _ts(scenarioType), toggle)
end

function Global.SetScenarioTypeEnabledHash(scenarioType, toggle)
	return _in(0xD00E50E673802D71, _ch(scenarioType), toggle)
end

function Global.SetScriptAsNoLongerNeeded(scriptName)
	return _in(0x0086D3067E1CFD1C, _ts(scriptName))
end

function Global.SetScriptGfxDrawBehindPausemenu(toggle)
	return _in(0x906B86E6D7896B9E, toggle)
end

function Global.SetScriptGfxDrawOrder(drawOrder)
	return _in(0xCFCC78391C8B3814, drawOrder)
end

function Global.SetScriptWithNameHashAsNoLongerNeeded(scriptHash)
	return _in(0x50723A1567C8361E, _ch(scriptHash))
end

function Global.SetSequenceToRepeat(taskSequenceId, repeat_)
	return _in(0x58C70CF3A41E4AE7, taskSequenceId, repeat_)
end

function Global.SetSnakeoilForEntry(name, path, data)
	return _in(0xa7dd3209, _ts(name), _ts(path), _ts(data))
end

function Global.SetSpawnerInfoPriority(p0, p1, priority)
	return _in(0x60CDE717A6D47769, _ch(p0), _ch(p1), priority)
end

function Global.SetSpeciesTuningBoolParam(p0, p1, p2, p3)
	return _in(0x6D1D94C2459B42EE, _ch(p0), p1, p2, p3)
end

function Global.SetSpeciesTuningFloatParam(p0, p1, p2, p3)
	return _in(0x963240B6C252BA49, _ch(p0), p1, p2, p3)
end

function Global.SetSrlTime(p0)
	return _in(0x18231AEF458BCFF2, p0)
end

function Global.SetStateOfRayfireMapObject(object, state)
	return _in(0x5C29F698D404C5E1, object, state)
end

function Global.SetStaticEmitterEnabled(emitterName, toggle)
	return _in(0x399D2D3B33F1B8EB, _ts(emitterName), toggle)
end

function Global.SetStreamedTextureDictAsNoLongerNeeded(textureDict)
	return _in(0x4ACA10A91F66F1E2, _ts(textureDict))
end

function Global.SetSuperJumpThisFrame(player)
	return _in(0xB3E9BE963F10C445, player)
end

function Global.SetSwimMultiplierForPlayer(player, multiplier)
	return _in(0xBFCEABDE34DA5085, player, multiplier)
end

function Global.SetTaskMoveNetworkSignalBool(ped, signalName, value)
	return _in(0xB0A6CFD2C69C1088, ped, _ts(signalName), value)
end

function Global.SetTaskMoveNetworkSignalFloat(ped, signalName, value)
	return _in(0xD5BB4025AE449A4E, ped, _ts(signalName), value)
end

function Global.SetTeamPickupObject(object, p1, p2)
	return _in(0x53E0DF1A2A3CF0CA, object, p1, p2)
end

function Global.SetTextCentre(align)
	return _in(0xBE5261939FBECB8C, align)
end

function Global.SetTextChatEnabled(enabled)
	return _in(0x97b2f9f8, enabled, _r)
end

function Global.SetTextColor(r, g, b, a)
	return _in(0x50A41AD966910F03, r, g, b, a)
end

function Global.SetTextDropshadow(distance, r, g, b, a)
	return _in(0x1BE39DBAA7263CA5, distance, r, g, b, a)
end

function Global.SetTextFontForCurrentCommand(fontId)
	return _in(0xada9255d, fontId)
end

function Global.SetTextRenderId(renderId)
	return _in(0xE550CDE128D56757, renderId)
end

function Global.SetTextScale(scale, size)
	return _in(0x4170B650590B3B00, scale, size)
end

function Global.SetThisScriptCanBePaused(toggle)
	return _in(0x3215376E79F6EA18, toggle)
end

function Global.SetThisScriptCanRemoveBlipsCreatedByAnyScript(toggle)
	return _in(0x8ABD939C2E5D00ED, toggle)
end

--- 0 = high
-- 1 = normal
-- 2 = low
-- @param priority :
function Global.SetThreadPriority(priority)
	return _in(0x42B65DEEF2EDF2A1, priority)
end

function Global.SetTimeScale(timeScale)
	return _in(0x9682AF6050854856, timeScale)
end

function Global.SetTimecycleModifier(modifierName)
	return _in(0xFA08722A5EA82DA7, _ts(modifierName))
end

function Global.SetTimecycleModifierStrength(strength)
	return _in(0xFDB74C9CC54C3F37, strength)
end

function Global.SetTrackedPointInfo(point, x, y, z, radius)
	return _in(0xF6FDA3D4404D4F2C, point, x, y, z, radius)
end

function Global.SetTrainCruiseSpeed(train, speed)
	return _in(0x01021EB2E96B793C, train, speed)
end

function Global.SetTrainSpeed(train, speed)
	return _in(0xDFBA6BBFF7CCAFBB, train, speed)
end

function Global.SetTransitionTimecycleModifier(modifierName, transition)
	return _in(0xFF927A09F481D80C, _ts(modifierName), transition)
end

function Global.SetTvAudioFrontend(toggle)
	return _in(0x64437C98FCC5F291, toggle)
end

function Global.SetTvChannel(channel)
	return _in(0x593FAF7FC9401A56, channel)
end

function Global.SetTvChannelPlaylist(tvChannel, playlistName, restart)
	return _in(0xDEC6B25F5DC8925B, tvChannel, _ts(playlistName), restart)
end

function Global.SetTvVolume(volume)
	return _in(0x73A97068787D7231, volume)
end

function Global.SetUpSpeedRestrainInformationForPlayerFollower(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xB5C51DD544F14F58, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.SetVehicleAlarmTimeLeft(vehicle, time)
	return _in(0xc108ee6f, vehicle, time)
end

function Global.SetVehicleAllowNoPassengersLockon(veh, toggle)
	return _in(0xECB9E9BC887E8060, veh, toggle)
end

function Global.SetVehicleAsNoLongerNeeded(vehicle)
	return _in(0x629BFA74418D6239, _ii(vehicle) --[[ may be optional ]])
end

--- Disables the vehicle from being repaired when a vehicle extra is enabled.
-- @param vehicle The vehicle to set disable auto vehicle repair.
-- @param value Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
function Global.SetVehicleAutoRepairDisabled(vehicle, value)
	return _in(0x5f3a3574, vehicle, value)
end

function Global.SetVehicleAutomaticallyAttaches(vehicle, p1, p2)
	return _in(0x501354951CD942DE, vehicle, p1, p2, _r, _ri)
end

function Global.SetVehicleBodyHealth(vehicle, value)
	return _in(0x55CCAAE4F28C67A0, vehicle, value)
end

function Global.SetVehicleCanBeTargetted(vehicle, state)
	return _in(0x05254BA0B44ADC16, vehicle, state)
end

function Global.SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle)
	return _in(0xE42952510F84AFDB, vehicle, toggle)
end

function Global.SetVehicleCanBeVisiblyDamaged(vehicle, state)
	return _in(0x4BF8131AE811541C, vehicle, state)
end

function Global.SetVehicleCanBreak(vehicle, toggle)
	return _in(0xC5ED9D59B4646611, vehicle, toggle)
end

function Global.SetVehicleClutch(vehicle, clutch)
	return _in(0x2f70aced, vehicle, clutch)
end

function Global.SetVehicleCurrentRpm(vehicle, rpm)
	return _in(0x2a01a8fc, vehicle, rpm)
end

function Global.SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, p6)
	return _in(0x1D7678F81452BB41, vehicle, xOffset, yOffset, zOffset, damage, radius, p6)
end

function Global.SetVehicleDensityMultiplierThisFrame(multiplier)
	return _in(0x606374EBFC27B133, multiplier)
end

function Global.SetVehicleDirtLevel(vehicle, dirtLevel)
	return _in(0x758C3460EE915D0A, vehicle, dirtLevel)
end

function Global.SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor)
	return _in(0x9666CF20A1C6D780, vehicle, doorIndex, deleteDoor)
end

function Global.SetVehicleDoorCanBreak(vehicle, doorIndex, isBreakable)
	return _in(0x081FB9D6422F804C, vehicle, doorIndex, isBreakable)
end

function Global.SetVehicleDoorControl(vehicle, doorIndex, speed, angle)
	return _in(0xD57F10EBBA814ECF, vehicle, doorIndex, speed, angle)
end

function Global.SetVehicleDoorDestroyType(vehicle, doorIndex, destroyType)
	return _in(0xA9F1D75195CC40F6, vehicle, doorIndex, destroyType)
end

function Global.SetVehicleDoorLatched(vehicle, doorIndex, p2, p3, p4)
	return _in(0x06F8A202EB312A3C, vehicle, doorIndex, p2, p3, p4)
end

function Global.SetVehicleDoorOpen(vehicle, doorIndex, loose, openInstantly)
	return _in(0x550CE392A4672412, vehicle, doorIndex, loose, openInstantly)
end

function Global.SetVehicleDoorShut(vehicle, doorIndex, closeInstantly)
	return _in(0x6A3C24B91FD0EA09, vehicle, doorIndex, closeInstantly)
end

function Global.SetVehicleDoorsLocked(vehicle, doorLockStatus)
	return _in(0x96F78A6A075D55D9, vehicle, doorLockStatus)
end

function Global.SetVehicleDoorsLockedForAllPlayers(vehicle, toggle)
	return _in(0x2381977DA948F8DC, vehicle, toggle)
end

function Global.SetVehicleDoorsLockedForPlayer(vehicle, player, toggle)
	return _in(0x359A8EA1FB8D6F0F, vehicle, player, toggle)
end

function Global.SetVehicleDoorsLockedForTeam(vehicle, team, toggle)
	return _in(0xE712BC978770F105, vehicle, team, toggle)
end

function Global.SetVehicleDoorsShut(vehicle, closeInstantly)
	return _in(0xA4FFCD645B11F25A, vehicle, closeInstantly)
end

function Global.SetVehicleEngineCanDegrade(vehicle, toggle)
	return _in(0x48E4C137A71C2688, vehicle, toggle)
end

function Global.SetVehicleEngineHealth(vehicle, health)
	return _in(0x8BDC5B998B4654EF, vehicle, health)
end

function Global.SetVehicleEngineOn(p0, p1, p2)
	return _in(0xB64CFA14CB9A2E78, p0, p1, p2)
end

function Global.SetVehicleEngineTemperature(vehicle, temperature)
	return _in(0x6c93c4a9, vehicle, temperature)
end

function Global.SetVehicleExclusiveDriver(vehicle, toggle)
	return _in(0x0893DAFBFA67110E, vehicle, toggle)
end

function Global.SetVehicleExclusiveDriver_2(vehicle, ped, index)
	return _in(0xC6B9BF123B9463B6, vehicle, ped, index)
end

function Global.SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle)
	return _in(0xA402939C6761E1A3, vehicle, toggle)
end

function Global.SetVehicleExtra(vehicle, extraId, disable)
	return _in(0xBB6F89150BC9D16B, vehicle, extraId, disable)
end

function Global.SetVehicleFixed(vehicle)
	return _in(0x79811282A9D1AE56, vehicle)
end

function Global.SetVehicleForwardSpeed(vehicle, speed)
	return _in(0xF9F92AF49F12F6E7, vehicle, speed)
end

function Global.SetVehicleFuelLevel(vehicle, level)
	return _in(0xba970511, vehicle, level)
end

function Global.SetVehicleGravityAmount(vehicle, gravity)
	return _in(0x1a963e58, vehicle, gravity)
end

function Global.SetVehicleHandbrake(vehicle, toggle)
	return _in(0x91BE51AEC4E99710, vehicle, toggle)
end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
-- Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
-- @param vehicle The vehicle to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The value to set.
function Global.SetVehicleHandlingField(vehicle, class_, fieldName, value)
	return _in(0x2ba40795, vehicle, _ts(class_), _ts(fieldName), value)
end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
-- Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
-- @param vehicle The vehicle to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The floating-point value to set.
function Global.SetVehicleHandlingFloat(vehicle, class_, fieldName, value)
	return _in(0x488c86d2, vehicle, _ts(class_), _ts(fieldName), value)
end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
-- @param vehicle The vehicle to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The integer value to set.
function Global.SetVehicleHandlingInt(vehicle, class_, fieldName, value)
	return _in(0xc37f4cf9, vehicle, _ts(class_), _ts(fieldName), value)
end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
-- @param vehicle The vehicle to set data for.
-- @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
-- @param fieldName The field name to set. These match the keys in `handling.meta`.
-- @param value The Vector3 value to set.
function Global.SetVehicleHandlingVector(vehicle, class_, fieldName, value)
	return _in(0x12497890, vehicle, _ts(class_), _ts(fieldName), value)
end

function Global.SetVehicleHasBeenOwnedByPlayer(vehicle, owned)
	return _in(0xBB5A3FA8ED3979C5, vehicle, owned)
end

function Global.SetVehicleHasStrongAxles(vehicle, toggle)
	return _in(0x252253C8A45AA1FC, vehicle, toggle)
end

function Global.SetVehicleHighGear(vehicle, gear)
	return _in(0x20b1b3e6, vehicle, gear)
end

function Global.SetVehicleInactiveDuringPlayback(vehicle, toggle)
	return _in(0x4EA71B4C9DB3C3F1, vehicle, toggle)
end

function Global.SetVehicleIsConsideredByPlayer(vehicle, toggle)
	return _in(0x54800D386C5825E5, vehicle, toggle)
end

function Global.SetVehicleIsStolen(vehicle, isStolen)
	return _in(0x6C32FC81DFF25C9A, vehicle, isStolen)
end

function Global.SetVehicleJetEngineOn(vehicle, toggle)
	return _in(0x1549BA7FE83A2383, vehicle, toggle)
end

function Global.SetVehicleLights(vehicle, state)
	return _in(0x629F0A0E952CAE7D, vehicle, state)
end

function Global.SetVehicleLightsCanBeVisiblyDamaged(vehicle, p1)
	return _in(0xC903855E028A05F2, vehicle, p1)
end

function Global.SetVehicleLodMultiplier(vehicle, multiplier)
	return _in(0x5F5E2B1B9EAECC0F, vehicle, multiplier)
end

function Global.SetVehicleOilLevel(vehicle, level)
	return _in(0x90d1cad1, vehicle, level)
end

function Global.SetVehicleOnGroundProperly(vehicle, p1)
	return _in(0x7263332501E07F52, vehicle, p1, _r)
end

function Global.SetVehiclePetrolTankHealth(vehicle, health)
	return _in(0x6AB2918EE3BEC94C, vehicle, health)
end

function Global.SetVehicleProvidesCover(vehicle, toggle)
	return _in(0x652712478F1721F4, vehicle, toggle)
end

function Global.SetVehicleShootAtTarget(p0, p1, p2, p3, p4, p5)
	return _in(0xB79BE78C665B3E6D, p0, p1, p2, p3, p4, p5)
end

function Global.SetVehicleSteerBias(vehicle, value)
	return _in(0x84DAAE11E9EE4FC3, vehicle, value)
end

function Global.SetVehicleSteeringAngle(vehicle, angle)
	return _in(0xffccc2ea, vehicle, angle)
end

function Global.SetVehicleSteeringScale(vehicle, scale)
	return _in(0xeb46596f, vehicle, scale)
end

function Global.SetVehicleStrong(vehicle, toggle)
	return _in(0xAB315515C9F8803D, vehicle, toggle)
end

function Global.SetVehicleTurboPressure(vehicle, pressure)
	return _in(0x6485615e, vehicle, pressure)
end

function Global.SetVehicleTyresCanBurst(vehicle, toggle)
	return _in(0xEBD0A4E935106FE5, vehicle, toggle)
end

function Global.SetVehicleUndriveable(vehicle, toggle)
	return _in(0x6E884BAB713A2A94, vehicle, toggle)
end

function Global.SetVehicleWheelHealth(vehicle, wheelIndex, health)
	return _in(0xb22ecefd, vehicle, wheelIndex, health)
end

--- Adjusts the offset of the specified wheel relative to the wheel's axle center.
-- Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
-- This function can be especially useful to set the track width of a vehicle, for example:
-- ```
-- function SetVehicleFrontTrackWidth(vehicle, width)
-- SetVehicleWheelXOffset(vehicle, 0, -width/2)
-- SetVehicleWheelXOffset(vehicle, 1, width/2)
-- end
-- ```
-- @param vehicle 
-- @param wheelIndex 
-- @param offset 
function Global.SetVehicleWheelXOffset(vehicle, wheelIndex, offset)
	return _in(0xbd6357d, vehicle, wheelIndex, offset)
end

function Global.SetVehicleWheelYRotation(vehicle, wheelIndex, value)
	return _in(0xc6c2171f, vehicle, wheelIndex, value)
end
Global.SetVehicleWheelXrot = Global.SetVehicleWheelYRotation

--- Example script: <https://pastebin.com/J6XGbkCW>
-- List of known states:
-- ```
-- 1: Not wheeling.
-- 65: Vehicle is ready to do wheelie (burnouting).
-- 129: Vehicle is doing wheelie.
-- ```
-- @param vehicle Vehicle
-- @param state Wheelie state
function Global.SetVehicleWheelieState(vehicle, state)
	return _in(0xeab8db65, vehicle, state)
end

function Global.SetVehicleWheelsCanBreak(vehicle, enabled)
	return _in(0x839137C40275FB77, vehicle, enabled)
end

function Global.SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle)
	return _in(0xC462C79379ABBCB1, vehicle, toggle)
end

--- Overrides a floating point value from `visualsettings.dat` temporarily.
-- @param name The name of the value to set, such as `pedLight.color.red`.
-- @param value The value to write.
function Global.SetVisualSettingFloat(name, value)
	return _in(0xd1d31681, _ts(name), value)
end

function Global.SetWantedLevelMultiplier(multiplier)
	return _in(0xD7FA719CB54866C2, multiplier)
end

function Global.SetWaypointOff()
	return _in(0xFA8C41E8020D3439)
end

function Global.SetWeatherTypeTransition(p0, p1, p2, p3)
	return _in(0xFA3E3CA8A1DE6D5D, p0, p1, p2, p3)
end

function Global.SetWidescreenBorders(p0, p1)
	return _in(0xD7F4D54CF80AFA34, p0, p1)
end

function Global.SetWindDirection(direction)
	return _in(0xB56C4F5F57A45600, direction)
end

function Global.SetWindSpeed(speed)
	return _in(0xD00C2D82DC04A99F, speed)
end

function Global.Settimera(value)
	return _in(0xC1B1E9A034A63A62, value)
end

function Global.Settimerb(value)
	return _in(0x5AE11BC36633DE4E, value)
end

function Global.ShakeCam(cam, type, amplitude)
	return _in(0xF9A7BCF5D050D4E7, cam, _ts(type), amplitude)
end

function Global.ShakeGameplayCam(shakeName, intensity)
	return _in(0xD9B31B4650520529, _ts(shakeName), intensity)
end

function Global.ShiftLeft(value, bitShift)
	return _in(0xEDD95A39E5544DE8, value, bitShift, _r, _ri)
end

function Global.ShiftRight(value, bitShift)
	return _in(0x97EF1E5BCE9DC075, value, bitShift, _r, _ri)
end

function Global.ShootSingleBulletBetweenCoords(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
	return _in(0x867654CBC7606F2C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
end

function Global.ShootSingleBulletBetweenCoordsIgnoreEntityNew(p0)
	return _in(0xCBC9A21F6A2A679C, p0)
end

function Global.ShouldUseMetricMeasurements()
	return _in(0x4FB556ACEFA93098, _r)
end

--- Same as SHOULD_USE_METRIC_MEASUREMENTS
function Global.ShouldUseMetricMeasurements_2()
	return _in(0x58BCDC75BA52110A, _r)
end

function Global.ShouldUseMetricTemperature()
	return _in(0xFF4AAF3275BAAB4F, _r)
end

function Global.ShouldUseMetricWeight()
	return _in(0x8F24157FEDB85EA2, _r)
end

function Global.ShouldUse_24HourClock()
	return _in(0x0177CF20345F44DD, _r)
end

function Global.ShutdownLoadingScreen()
	return _in(0xFC179D7E8886DADF)
end

--- Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
function Global.ShutdownLoadingScreenNui()
	return _in(0xb9234afb)
end

function Global.SimulatePlayerInputGait(player, amount, gaitType, speed, p4, p5)
	return _in(0xFA0C063C422C4355, player, amount, gaitType, speed, p4, p5)
end

function Global.SimulatedRouteGetEta(p0)
	return _in(0x2DD5F78D73B24172, p0, _r, _ri)
end

function Global.SimulatedRouteIsLoaded(p0)
	return _in(0x240915043CB799D7, p0, _r, _ri)
end

function Global.SimulatedRouteTravelToPoint(p0, p1, p2)
	return _in(0xA1A3DE1C215C7394, p0, p1, p2)
end

function Global.Sin(value)
	return _in(0x0BADBFA3B172435F, value, _r, _rf)
end

function Global.SkipTimeInPlaybackRecordedVehicle(p0, p1)
	return _in(0x5F5E6379C59EFC56, p0, p1)
end

function Global.SkipToNextScriptedConversationLine(p0)
	return _in(0x9663FE6B7A61EB00, p0)
end

function Global.SlideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collision)
	return _in(0x2FDFF4107B8C1147, object, toX, toY, toZ, speedX, speedY, speedZ, collision, _r)
end

function Global.SpactionproxyGetNextPendingBuyAction(data)
	return _in(0x1F471B79ACC98BEF, _ii(data) --[[ may be optional ]], _r)
end

function Global.SpactionproxyGetNextPendingCraftingAction(data)
	return _in(0x1F471B79ACC97BEF, _ii(data) --[[ may be optional ]], _r)
end

function Global.SpactionproxyManagerIsFailed()
	return _in(0x1F471B79ACC91BEC, _r)
end

function Global.SpactionproxyManagerIsReady()
	return _in(0x1F471B79ACC91BED, _r)
end

function Global.SpactionproxyProcessAction(p0, p1)
	return _in(0x1F471B79ACC94BEF, p0, p1, _r)
end

function Global.SpactionproxyStartManager()
	return _in(0x1F471B79ACC91BEE, _r)
end

function Global.Sqrt(value)
	return _in(0x71D93B57D07F9804, value, _r, _rf)
end

function Global.StartAnimScene(animScene)
	return _in(0xF4D94AF761768700, animScene)
end

function Global.StartAudioScene(scene)
	return _in(0x013A80FC08F6E4F2, _ts(scene), _r)
end

function Global.StartBenchmarkRecording()
	return _in(0x29D1F6DF864A094E)
end

function Global.StartEntityFire(p0, p1, p2, p3)
	return _in(0xC4DC7418A44D6822, p0, p1, p2, p3)
end

function Global.StartFindKvp(prefix)
	return _in(0xdd379006, _ts(prefix), _r, _ri)
end

function Global.StartGpsMultiRoute(hudColor, p1, p2)
	return _in(0x3D3D15AF7BCAAF83, hudColor, p1, p2)
end

function Global.StartNetworkedParticleFxLoopedOnEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x8F90AB32E1944BDE, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri)
end

function Global.StartNetworkedParticleFxLoopedOnEntityBone(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x9C56621462FFE7A6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri)
end

function Global.StartNetworkedParticleFxNonLoopedAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xFB97618457994A62, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r)
end

function Global.StartNetworkedParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ)
	return _in(0xE6CFE43937061143, _ts(effectName), entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ, _r)
end

function Global.StartNewScript(scriptName, stackSize)
	return _in(0xE81651AD79516E48, _ts(scriptName), stackSize, _r, _ri)
end

function Global.StartNewScriptWithArgs(scriptName, argCount, stackSize)
	return _in(0xB8BA7F44DF1575E1, _ts(scriptName), _i, argCount, stackSize, _r, _ri)
end

function Global.StartNewScriptWithNameHash(scriptHash, stackSize)
	return _in(0xEB1C67C3A5333A92, _ch(scriptHash), stackSize, _r, _ri)
end

function Global.StartNewScriptWithNameHashAndArgs(scriptHash, argCount, stackSize)
	return _in(0xC4BB298BD441BE78, _ch(scriptHash), _i, argCount, stackSize, _r, _ri)
end

function Global.StartParticleFxLoopedAtCoord(effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11)
	return _in(0xBA32867E86125D3A, _ts(effectName), x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11, _r, _ri)
end

function Global.StartParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
	return _in(0xBD41E1440CE39800, _ts(effectName), entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, _r, _ri)
end

function Global.StartParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis)
	return _in(0xD3BA6EC7F2FBD5E9, _ts(effectName), entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis, _r, _ri)
end

function Global.StartParticleFxLoopedOnPedBone(effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis)
	return _in(0xE689C1B1432BB8AF, _ts(effectName), ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis, _r, _ri)
end

function Global.StartParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
	return _in(0x2E80BF72EF7C87AC, _ts(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, _r, _ri)
end

function Global.StartParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ)
	return _in(0xFF4C64C513388C12, _ts(effectName), entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ, _r)
end

function Global.StartParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ)
	return _in(0x3FAA72BD940C3AC0, _ts(effectName), ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ, _r)
end

function Global.StartPetrolTrailDecals(p0, p1)
	return _in(0x46F246D6504F0031, p0, p1)
end

function Global.StartPlaybackRecordedVehicle(vehicle, p1, playback, p3)
	return _in(0x4932B84E3276508E, vehicle, p1, _ts(playback), p3)
end

function Global.StartPlayerTeleport(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xDF8822C55EDDA65B, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.StartPreloadedConversation(p0)
	return _in(0x23641AFE870AF385, p0)
end

function Global.StartRopeUnwindingFront(ropeId)
	return _in(0x538D1179EC1AA9A9, ropeId)
end

function Global.StartRopeWinding(ropeId)
	return _in(0x1461C72C889E343E, ropeId)
end

function Global.StartScriptConversation(p0, p1, p2, p3)
	return _in(0x6B17C62C9635D2DC, p0, p1, p2, p3)
end

function Global.StartScriptFire(x, y, z, p3, p4, p5, soundsetName, p7, p8)
	return _in(0x6B83617E04503888, x, y, z, p3, p4, p5, _ts(soundsetName), p7, p8, _r, _ri)
end

function Global.StartShapeTestBox(x, y, z, x1, y2, z2, rotX, rotY, rotZ, p9, p10, entity, p12)
	return _in(0xFE466162C4401D18, x, y, z, x1, y2, z2, rotX, rotY, rotZ, p9, p10, entity, p12, _r, _ri)
end

function Global.StartShapeTestCapsule(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9)
	return _in(0x28579D1B8F8AAC80, x1, y1, z1, x2, y2, z2, radius, flags, entity, p9, _r, _ri)
end

function Global.StartShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, entity, p8)
	return _in(0x7EE9F5D83DD4F90E, x1, y1, z1, x2, y2, z2, flags, entity, p8, _r, _ri)
end

function Global.StartShapeTestRay(x1, y1, z1, x2, y2, z2, flags, entity, p8)
	return _in(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, _r, _ri)
end

function Global.StartShapeTestSurroundingCoords(flag, entity, flag2)
	return _in(0x9839013D8B6014F1, _v, _v, flag, entity, flag2, _r, _ri)
end

function Global.StartShapeTestSweptSphere(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9)
	return _in(0xAA5B7C8309F73230, x1, y1, z1, x2, y2, z2, radius, flags, entity, p9, _r, _ri)
end

function Global.StartVehicleHorn(vehicle, duration, mode, forever)
	return _in(0xB4E3BFC39CA16057, vehicle, duration, _ch(mode), forever)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param value :
function Global.StatIdGetBool()
	return _in(0x11B5E6D2AE73F48F, _i, _i --[[ actually bool ]], _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param date :
function Global.StatIdGetDate()
	return _in(0x8B0FACEFC36C824C, _i, _i, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param value :
function Global.StatIdGetFloat()
	return _in(0xD7AE6C9C9C6AC54D, _i, _f, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param p1 :
function Global.StatIdGetInt()
	return _in(0x767FBC2AC802EF3E, _i, _i, _r)
end

--- struct StatId
-- {
-- alignas(8) Hash BaseId;
-- alignas(8) Hash PermutationId;
-- }
-- @param statId :
function Global.StatIdIsValid(statId)
	return _in(0xC48FE1971C9743FF, _ii(statId) --[[ may be optional ]], _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param value :
-- @param p2 :
function Global.StatIdSetBool(value, p2)
	return _in(0x3B5107353267D7A1, _i, value, p2, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param date :
-- @param p2 :
function Global.StatIdSetDate(p2)
	return _in(0x1FAE9B2FAA2DFE06, _i, _i, p2, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param value :
-- @param p2 :
function Global.StatIdSetFloat(value, p2)
	return _in(0x481BDF6A10C5EF68, _i, value, p2, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param label :
-- @param p2 :
function Global.StatIdSetGxtLabel(label, p2)
	return _in(0x05060A54834F2382, _i, _ts(label), p2, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
-- @param value :
-- @param p2 :
function Global.StatIdSetInt(value, p2)
	return _in(0xA4DDF5DF95E65EEE, _i, value, p2, _r)
end

--- statId: see 0xC48FE1971C9743FF
-- @param statId :
function Global.StatIdSetToPosseId(statId)
	return _in(0x34B22DE38477EDB4, _ii(statId) --[[ may be optional ]])
end

function Global.StateMachineCreate(p0, p1)
	return _in(0x4C6F2C4B7A03A266, p0, p1, _r, _ri)
end

function Global.StateMachineDestroy(p0)
	return _in(0x4EB122210A90E2D8, p0)
end

function Global.StateMachineRequestTransition(p0, p1)
	return _in(0x7EA9C3547E80350E, p0, p1, _r, _ri)
end

function Global.StopAnimPlayback(ped, p1, p2)
	return _in(0xEE08C992D238C5D1, ped, p1, p2)
end

function Global.StopAnimTask(ped, animDictionary, animationName, p3)
	return _in(0x97FF36A1D40EA00A, ped, _ts(animDictionary), _ts(animationName), p3)
end

function Global.StopAudioScene(scene)
	return _in(0xDFE8422B3B94E688, _ts(scene))
end

function Global.StopAudioScenes()
	return _in(0xBAC7FC81A75EC1A1)
end

function Global.StopBenchmarkRecording()
	return _in(0xB89AEC71AFF2B599)
end

function Global.StopCamPointing(cam)
	return _in(0xCA1B30A3357C71F1, cam)
end

function Global.StopCamShaking(cam, p1)
	return _in(0xB78CC4B4706614B0, cam, p1)
end

function Global.StopCurrentPlayingAmbientSpeech(p0, p1)
	return _in(0xB8BEC0CA6F0EDB0F, p0, p1)
end

function Global.StopCurrentPlayingSpeech(p0, p1)
	return _in(0x79D2F0E66F81D90D, p0, p1)
end

function Global.StopEntityAnim(entity, animation, animGroup, p3)
	return _in(0x786591D986DE9159, entity, _ts(animation), _ts(animGroup), p3, _r, _ri)
end

function Global.StopEntityFire(p0, p1)
	return _in(0x8390751DC40C1E98, p0, p1)
end

function Global.StopFireInRange(x, y, z, radius)
	return _in(0xDB38F247BD421708, x, y, z, radius)
end

function Global.StopGameplayCamShaking(p0)
	return _in(0xE0DE43D290FB65F9, p0)
end

function Global.StopGameplayHint(p0)
	return _in(0x1BCEC33D54CFCA8A, p0)
end

function Global.StopPadShake(padIndex)
	return _in(0x38C16A305E8CDC8D, padIndex)
end

function Global.StopParticleFxLooped(ptfxHandle, p1)
	return _in(0x22970F3A088B133B, ptfxHandle, p1)
end

function Global.StopPedSpeaking(ped, shaking)
	return _in(0x9D64D7405520E3D3, ped, shaking)
end

function Global.StopPlaybackRecordedVehicle(vehicle)
	return _in(0xBF9B4D6267E8C26D, vehicle)
end

function Global.StopPlayerTeleport()
	return _in(0x0858B86146601BE8)
end

function Global.StopRecordingThisFrame()
	return _in(0xA8C44C13419634F2)
end

function Global.StopRopeUnwindingFront(ropeId)
	return _in(0xFFF3A50779EFBBB3, ropeId)
end

function Global.StopRopeWinding(ropeId)
	return _in(0xCB2D4AB84A19AA7C, ropeId)
end

function Global.StopScriptedConversation(p0, p1, p2)
	return _in(0xD79DEEFB53455EBA, p0, p1, p2, _r, _ri)
end

function Global.StopStream(p0)
	return _in(0xA4718A1419D18151, p0)
end

function Global.StringToInt(string, outInteger)
	return _in(0xF2DD2298B3AF23E2, _ts(string), _ii(outInteger) --[[ may be optional ]], _r)
end

function Global.SuppressShockingEventsNextFrame()
	return _in(0x84994FAD4E4E4E69)
end

function Global.TakeOwnershipOfAnimScene(animScene)
	return _in(0xF7A4C571E572D237, animScene)
end

function Global.Tan(p0)
	return _in(0x8C13DB96497B7ABF, p0, _r, _rf)
end

function Global.TaskAchieveHeading(ped, heading, timeout)
	return _in(0x93B93A37987F1F3D, ped, heading, timeout)
end

function Global.TaskAimAtCoord(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x4AF1D73861212F52, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskAimAtEntity(p0, p1, p2, p3, p4)
	return _in(0xCF7569BD0FB480A0, p0, p1, p2, p3, p4)
end

function Global.TaskAimGunAtCoord(ped, x, y, z, time, p5, p6)
	return _in(0x6671F3EEC681BDA1, ped, x, y, z, time, p5, p6)
end

function Global.TaskAimGunAtEntity(p0, p1, p2, p3, p4)
	return _in(0x9B53BB6E8943AF53, p0, p1, p2, p3, p4)
end

function Global.TaskAmbientAnimalHunt(p0, p1, p2)
	return _in(0x4B39D8F9D0FE7749, p0, p1, p2)
end

function Global.TaskAmbientAnimalStalk(p0, p1, p2)
	return _in(0x37C13863ABA1B4A3, p0, p1, p2)
end

function Global.TaskAnimalAlerted(p0, p1, p2)
	return _in(0x979D93372FC8C565, p0, p1, p2)
end

function Global.TaskAnimalFlee(p0, p1, p2)
	return _in(0xA899B61C66F09134, p0, p1, p2)
end

function Global.TaskAnimalInteraction(p0, p1, p2, p3, p4)
	return _in(0xCD181A959CFDD7F4, p0, p1, p2, p3, p4)
end

function Global.TaskAnimalUnalerted(p0, p1, p2, p3, p4)
	return _in(0x21FDF9A25CFE1CE5, p0, p1, p2, p3, p4)
end

function Global.TaskAnimalWrithe(p0, p1, p2)
	return _in(0x8C038A39C4A4B6D6, p0, p1, p2)
end

function Global.TaskArrestPed(ped, target)
	return _in(0xF3B9A78A178572B1, ped, target)
end

function Global.TaskBark(p0, p1, p2)
	return _in(0x83BFC1F836B2F3F2, p0, p1, p2)
end

function Global.TaskBoardVehicle(p0, p1, p2, p3, p4, p5)
	return _in(0xE53D17AD837CBF7C, p0, p1, p2, p3, p4, p5)
end

function Global.TaskBoardVehicle_2(p0, p1, p2, p3, p4)
	return _in(0xE41A09C8DDFF7AA4, p0, p1, p2, p3, p4)
end

function Global.TaskBoatMission(pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11)
	return _in(0x15C86013127CE63F, pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11)
end

function Global.TaskBreakVehicleDoorLock(p0, p1)
	return _in(0xBB28D1BC9EA8A6A5, p0, p1)
end

function Global.TaskClearDefensiveArea(p0)
	return _in(0x95A6C46A31D1917D, p0)
end

function Global.TaskClearLookAt(ped)
	return _in(0x0F804F1DB19B9689, ped)
end

function Global.TaskClimb(ped, unused)
	return _in(0x89D9FCC2435112F1, ped, unused)
end

function Global.TaskClimbLadder(p0, p1, p2, p3)
	return _in(0xB6C987F9285A3814, p0, p1, p2, p3)
end

function Global.TaskClimb_2(p0, p1)
	return _in(0xDF1D85BCAF60D537, p0, p1)
end

function Global.TaskCombatAnimalCharge(p0, p1, p2, p3)
	return _in(0xEE3AA414CF99F368, p0, p1, p2, p3)
end

function Global.TaskCombatAnimalWarn(p0, p1, p2)
	return _in(0xF960F3D57B660E96, p0, p1, p2)
end

function Global.TaskCombatHatedTargets(p0, p1)
	return _in(0x8182B561A29BD597, p0, p1)
end

function Global.TaskCombatHatedTargetsAroundPed(p0, p1, p2, p3)
	return _in(0x7BF835BB9E2698C8, p0, p1, p2, p3)
end

function Global.TaskCombatHatedTargetsAroundPedTimed(p0, p1, p2, p3)
	return _in(0x2BBA30B854534A0C, p0, p1, p2, p3)
end

function Global.TaskCombatHatedTargetsInArea(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x4CF5F55DAC3280A0, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskCombatHatedTargetsNoLosTest(p0, p1)
	return _in(0xB5BC69D9C4060BC3, p0, p1)
end

function Global.TaskCombatPed(ped, targetPed, p2, p3)
	return _in(0xF166E48407BAC484, ped, targetPed, p2, p3)
end

function Global.TaskCombatPedTimed(p0, ped, p2, p3)
	return _in(0x944F30DCB7096BDE, p0, ped, p2, p3)
end

function Global.TaskCombatPed_3(p0, p1, p2, p3, p4, p5)
	return _in(0xC624414FA748B9BA, p0, p1, p2, p3, p4, p5)
end

function Global.TaskCompanionAmbient(p0, p1)
	return _in(0xE017CF6E2527FE4F, p0, p1)
end

function Global.TaskConfront(p0, p1, p2)
	return _in(0x3A2A2071DF5CC569, p0, p1, p2, _r, _ri)
end

function Global.TaskCower(p0, p1, p2, p3)
	return _in(0x3EB1FE9E8E908E15, p0, p1, p2, p3)
end

function Global.TaskCutFreeHogtiedTargetPed(p0, p1)
	return _in(0x81D16C4FF3A77ADF, p0, p1)
end

function Global.TaskCutFreeHogtiedTargetPed_2(p0, p1, p2)
	return _in(0x525421A507216084, p0, p1, p2)
end

function Global.TaskDisembarkVehicle(p0, p1, p2, p3, p4, p5)
	return _in(0xA7C6854BB5A4192A, p0, p1, p2, p3, p4, p5)
end

function Global.TaskDisembarkVehicle_2(p0, p1, p2)
	return _in(0x0A11F3BDEC03ED5F, p0, p1, p2)
end

--- Dismounts the ped from the animal it's mounted on. taskFlag affects what side the rider gets off. 1 << 18 will get off on the left side, where any other value will get off on the right side. The only other known value are 1 << 17 and 1 << 24, which has the behavior of any other value (getting off the animal from the right side). p2-p5 are almost always 0.
-- @param rider :
-- @param taskFlag :
-- @param p2 :
-- @param p3 :
-- @param p4 :
-- @param p5 :
function Global.TaskDismountAnimal(rider, taskFlag, p2, p3, p4, p5)
	return _in(0x48E92D3DDE23C23A, rider, taskFlag, p2, p3, p4, p5)
end

function Global.TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern)
	return _in(0x2F8AF0E82773A171, driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, _ch(firingPattern))
end

function Global.TaskDuck(p0, p1)
	return _in(0xA14B5FBF986BAC23, p0, p1)
end

function Global.TaskDuel(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x5D5B0D5BC3626E5A, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskDumpCarriableFromParent(p0, p1, p2)
	return _in(0x17CA98707B15926A, p0, p1, p2)
end

function Global.TaskEat(p0, p1, p2)
	return _in(0xBD7949BD07299672, p0, p1, p2)
end

function Global.TaskEmote(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xB31A277C1AC7B7FF, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskEmote_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x884E3436CC1F41DD, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskEnterAnimScene(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xC2329B0206426644, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskEnterCover(p0)
	return _in(0x4972A022AE6DAFA1, p0)
end

function Global.TaskEnterTransport(p0)
	return _in(0xAEE3ADD08829CB6F, p0)
end

function Global.TaskEnterVehicle(ped, vehicle, timeout, seat, speed, flag, p6)
	return _in(0xC20E50AA46D09CA8, ped, vehicle, timeout, seat, speed, flag, p6)
end

function Global.TaskEvasiveAnim(p0, p1, p2)
	return _in(0x5F22926E1BCE9B08, p0, p1, p2)
end

function Global.TaskEveryoneLeaveVehicle(p0, p1)
	return _in(0x7F93691AB4B92272, p0, p1)
end

function Global.TaskEveryoneLeaveVehicleInOrder(p0, p1)
	return _in(0x6F1C49F275BD25B3, p0, p1)
end

function Global.TaskExitCover(p0)
	return _in(0x2BC4A6D92D140112, p0)
end

function Global.TaskExitTransport(p0)
	return _in(0xC273A5B8488F7838, p0)
end

function Global.TaskExtendRoute(x, y, z)
	return _in(0x1E7889778264843A, x, y, z)
end

function Global.TaskFleeFromCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x6879FF208ED87F2A, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
end

function Global.TaskFleeFromPed(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x7B74D8EEDE9B5727, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskFlushRoute()
	return _in(0x841142A1376E9006)
end

function Global.TaskFlyAway(p0, p1)
	return _in(0xE86A537B5A3C297C, p0, p1)
end

function Global.TaskFlyToCoord(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD6CFC2D59DA72042, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskFlyingCircle(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x72997893BFB8ECCC, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskFollowAndConverseWithPed(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x489FFCCCE7392B55, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskFollowEntityAlongWaypointRecordingAtOffset(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x4D2B787BAE9AB760, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskFollowEntityWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x2D532EAA142CF83F, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskFollowNavMeshToCoord(ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk)
	return _in(0x15D3A79D4E44B913, ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk)
end

function Global.TaskFollowNavMeshToCoordAdvanced(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x17F58B88D085DBAC, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
end

function Global.TaskFollowPavementToCoord(p0, p1)
	return _in(0x1B1475414E70DD8E, p0, p1)
end

function Global.TaskFollowPointRoute(p0, p1, p2, p3, p4, p5)
	return _in(0x0E14C5550DC3CD1D, p0, p1, p2, p3, p4, p5)
end

function Global.TaskFollowToOffsetOfCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0x2E3676282C18A692, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskFollowToOffsetOfEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x304AE42E357B8C7E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
end

function Global.TaskFollowWaypointRecording(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x0759591819534F7B, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskFollowWaypointRecordingAdvanced(p0, p1)
	return _in(0x0CFC13EBC19BCA52, p0, p1)
end

function Global.TaskFollowWaypointRecordingAtOffset(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xBE9B0520BD7C445B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskForceMotionState(ped, state, p2)
	return _in(0x4F056E1AFFEF17AB, ped, _ch(state), p2)
end

function Global.TaskGoStraightToCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xD76B57B44F1E6F8B, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskGoStraightToCoordRelativeToEntity(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x61E360B7E040D12E, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskGoToCoordAndAimAtHatedEntitiesNearCoord(pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, firingPattern)
	return _in(0xA55547801EB331FC, pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, _ch(firingPattern))
end

function Global.TaskGoToCoordAndAimAtHatedEntitiesNearCoordUsingCombatStyle(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0x87BD711FC31EA273, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8)
	return _in(0x5BC448CB78FA3E88, ped, x, y, z, speed, p5, p6, walkingStyle, p8)
end

function Global.TaskGoToCoordAnyMeansExtraParams(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12)
	return _in(0x1DD45F9ECFDB1BC9, ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12)
end

function Global.TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0xB8ECD61F531A7B02, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskGoToCoordWhileAimingAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
	return _in(0x11315AB3385B8AC0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
end

function Global.TaskGoToCoordWhileAimingAtCoordUsingCombatStyle(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
	return _in(0x639C0425A0B4E77E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
end

function Global.TaskGoToCoordWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0xB2A16444EAD9AE47, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskGoToCoordWhileAimingAtEntityUsingCombatStyle(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0x78426D0982D083C9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskGoToEntity(entity, target, duration, distance, speed, p5, p6)
	return _in(0x6A071245EB0D1882, entity, target, duration, distance, speed, p5, p6)
end

function Global.TaskGoToEntityWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x97465886D35210E9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskGoToEntityWhileAimingAtEntityUsingCombatStyle(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0xCEF0117C233026AD, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskGoToWhistle(p0, p1, p2)
	return _in(0xBAD6545608CECA6E, p0, p1, p2)
end

function Global.TaskGotoEntityAiming(ped, target, distanceToStopAt, StartAimingDist)
	return _in(0xA9DA48FAB8A76C12, ped, target, distanceToStopAt, StartAimingDist)
end

function Global.TaskGotoEntityOffset(ped, p1, p2, x, y, z, duration)
	return _in(0xE39B4FF4FDEBDE27, ped, p1, p2, x, y, z, duration)
end

function Global.TaskGotoEntityOffsetXy(p0, oed, duration, p3, p4, p5, p6, p7)
	return _in(0x338E7EF52B6095A9, p0, oed, duration, p3, p4, p5, p6, p7)
end

function Global.TaskGotoEntityOffsetXyAiming(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x901BD69984400F62, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskGotoEntityOffsetXyzAiming(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x41B0832CA96B5351, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskGrapple(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x779A2FFACEFAEA7B, p0, p1, p2, p3, p4, p5, p6, _r, _ri)
end

function Global.TaskGuard(p0, p1, p2)
	return _in(0xB9FB242EACCAF30F, p0, p1, p2)
end

function Global.TaskGuardAssignedDefensiveArea(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD2A207EEBDF9889B, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskGuardAssignedDefensiveArea_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x1FC9B33976BACD6C, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskGuardCurrentPosition(p0, p1, p2, p3)
	return _in(0x4A58A47A72E3FCB4, p0, p1, p2, p3)
end

function Global.TaskHandsUp(ped, duration, facingPed, p3, p4)
	return _in(0xF2EAB31979A7F910, ped, duration, facingPed, p3, p4)
end

function Global.TaskHitchAnimal(p0, p1, p2)
	return _in(0x9030AD4B6207BFE8, p0, p1, p2)
end

function Global.TaskHogtieTargetPed(p0, p1)
	return _in(0x27829AFD3E03AC1A, p0, p1)
end

function Global.TaskHogtieable(p0)
	return _in(0x6AFD8FE0D723328F, p0)
end

function Global.TaskHorseAction(p0, p1, p2, p3)
	return _in(0xA09CFD29100F06C3, p0, p1, p2, p3)
end

function Global.TaskIntimidated(p0, p1, p2, p3, p4)
	return _in(0x648B75D44930D6BD, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.TaskIntimidated_2(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x933ACC1A1771A288, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri)
end

function Global.TaskInvestigate(p0, p1, p2, p3, p4, p5)
	return _in(0x5C8514540D27FBFB, p0, p1, p2, p3, p4, p5)
end

function Global.TaskItemInteraction(p0, p1, p2, p3, p4, p5)
	return _in(0xAE72E7DF013AAA61, p0, p1, p2, p3, p4, p5)
end

function Global.TaskItemInteraction_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x72F52AA2D2B172CC, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskItemInteraction_3(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xD61D5E1AD9876DEB, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskJump(ped, unused)
	return _in(0x0AE4086104E067B1, ped, unused)
end

function Global.TaskJump_2(ped, x, y, z, entity)
	return _in(0x91083103137D7254, ped, x, y, z, entity)
end

function Global.TaskKnockedOut(p0, p1, p2)
	return _in(0xF90427F00A495A28, p0, p1, p2)
end

function Global.TaskKnockedOutAndHogtied(p0, p1, p2)
	return _in(0x42AC6401ABB8C7E5, p0, p1, p2)
end

function Global.TaskLassoPed(p0, p1)
	return _in(0xC716EB2BD16370A3, p0, p1)
end

function Global.TaskLeadAndConverse(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xAA19711D33C6708C, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskLeadHorse(p0, p1)
	return _in(0x9A7A4A54596FE09D, p0, p1)
end

function Global.TaskLeaveAnyVehicle(ped, p1, p2)
	return _in(0x504D54DF3F6F2247, ped, p1, p2)
end

function Global.TaskLeaveVehicle(p0, p1, p2, p3)
	return _in(0xD3DBCE61A490BE02, p0, p1, p2, p3)
end

function Global.TaskLookAtCoord(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x6FA46612594F7973, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskLookAtEntity(p0, p1, p2, p3, p4, p5)
	return _in(0x69F4BE8C8CC4796C, p0, p1, p2, p3, p4, p5)
end

function Global.TaskLootEntity(p0, p1)
	return _in(0x48FAE038401A2888, p0, p1)
end

function Global.TaskLootNearestEntity(p0, p1, p2, p3, p4, p5)
	return _in(0xCF1501CBC4059412, p0, p1, p2, p3, p4, p5)
end

function Global.TaskMelee(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x482C99D0B38D1B0A, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri)
end

function Global.TaskMountAnimal(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x92DB0739813C5186, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskMoveBeInFormation(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x4AA5AA97C65E4A2F, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskMoveInTraffic(p0, p1, p2, p3)
	return _in(0x8AA1593AEC087A29, p0, p1, p2, p3)
end

function Global.TaskMoveInTraffic_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xDCA3A13F7A45338B, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskMoveInTraffic_3(p0, p1, p2, p3, p4)
	return _in(0x13DED0BC45600FE1, p0, p1, p2, p3, p4)
end

function Global.TaskMoveInTraffic_4(p0, p1, p2, p3, p4, p5)
	return _in(0x79482C12482A860D, p0, p1, p2, p3, p4, p5)
end

function Global.TaskMoveNetworkAdvancedByNameWithInitParamsAttached(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
	return _in(0xF92171093BCABED4, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
end

function Global.TaskMoveNetworkByName(ped, task, multiplier, p3, animDict, flags)
	return _in(0x2D537BA194896636, ped, _ts(task), multiplier, p3, _ts(animDict), flags)
end

function Global.TaskPatrol(ped, p1, p2, p3, p4)
	return _in(0xBDA5DF49D080FE4E, ped, _ts(p1), p2, p3, p4)
end

function Global.TaskPatrol_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x964B06C88E4C86DB, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskPause(ped, ms)
	return _in(0xE73A266DB0CA9042, ped, ms)
end

function Global.TaskPedSlideToCoord(ped, x, y, z, heading, p5)
	return _in(0xD04FE6765D990A06, ped, x, y, z, heading, p5)
end

function Global.TaskPerformSequence(ped, taskSequenceId)
	return _in(0x5ABA3986D90D8A3B, ped, taskSequenceId)
end

function Global.TaskPerformSequenceFromProgress(p0, p1, p2, p3)
	return _in(0x89221B16730234F0, p0, p1, p2, p3)
end

function Global.TaskPerformSequence_2(p0, p1, p2, p3)
	return _in(0x4FC0AF869D6E309D, p0, p1, p2, p3)
end

function Global.TaskPersistentCharacter(p0)
	return _in(0x4391700CBD89C3D8, p0)
end

function Global.TaskPickUpWeapon(p0, p1)
	return _in(0x55B0ECFD98596624, p0, p1)
end

function Global.TaskPickupCarriableEntity(p0, p1)
	return _in(0x502EC17B1BED4BFA, p0, p1)
end

function Global.TaskPlaceCarriedEntityAtCoord(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xC7F0B43DCDC57E3D, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskPlaceCarriedEntityOnMount(p0, p1, p2, p3)
	return _in(0x6D3D87C57B3D52C7, p0, p1, p2, p3)
end

function Global.TaskPlantBomb(ped, x, y, z, heading)
	return _in(0x965FEC691D55E9BF, ped, x, y, z, heading)
end

function Global.TaskPlayAnim(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0xEA47FE3719165B94, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
end

function Global.TaskPlayAnimAdvanced(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
	return _in(0x83CDB10EA29B370B, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16)
end

function Global.TaskPlayUpperAnimFacingEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
	return _in(0xAD67214236AB1CFE, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14)
end

function Global.TaskPolice(p0, p1)
	return _in(0x87BE56724650408E, p0, p1, _r, _ri)
end

function Global.TaskPutPedDirectlyIntoCover(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
	return _in(0x4172393E6BE1FECE, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
end

function Global.TaskPutPedDirectlyIntoMelee(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x1C6CD14A876FFE39, p0, p1, p2, p3, p4, p5, p6)
end

--- Has the ped react to another entity. The reactionType determines how the ped reacts. p3 is 7.5f in the scripts. p4 is 0f. unkFlag is always 4. The rest of the parameters are unknown, but 0 is acceptable input. Here is a list of the different reaction type values by Mooshe: https://pastebin.com/Ju7BbmMt
-- @param ped :
-- @param reactingTo :
-- @param reactionType :
-- @param p3 :
-- @param p4 :
-- @param unkFlag :
-- @param p6 :
-- @param p7 :
-- @param p8 :
function Global.TaskReact(ped, reactingTo, reactionType, p3, p4, unkFlag, p6, p7, p8)
	return _in(0xC4C32C31920E1B70, ped, reactingTo, reactionType, p3, p4, unkFlag, p6, p7, p8)
end

function Global.TaskReloadWeapon(ped, unused)
	return _in(0x62D2916F56B9CD2D, ped, unused)
end

function Global.TaskReviveTarget(p0, p1, p2)
	return _in(0x356088527D9EBAAD, p0, p1, p2)
end

function Global.TaskRideTrain(p0, p1, p2, p3)
	return _in(0x37FB1C870E2EC2C6, p0, p1, p2, p3)
end

function Global.TaskRobPed(p0, p1, p2, p3, p4)
	return _in(0x7BB967F85D8CCBDB, p0, p1, p2, p3, p4)
end

function Global.TaskScriptedAnimation(p0, p1)
	return _in(0x126EF75F1E17ABE5, p0, p1)
end

function Global.TaskSeekClearLosToEntity(p0, p1, p2, p3, p4)
	return _in(0x8D7F2A63688C20A4, p0, p1, p2, p3, p4)
end

function Global.TaskSeekCoverFromPed(p0, p1, p2, p3, p4, p5)
	return _in(0x84D32B3BEC531324, p0, p1, p2, p3, p4, p5)
end

function Global.TaskSeekCoverFromPos(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x75AC2B60386D89F2, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskSeekCoverToCoords(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x39246A6958EF072C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskSeekCoverToCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xD43D95C7A869447F, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskSetBlockingOfNonTemporaryEvents(ped, toggle)
	return _in(0x90D2156198831D69, ped, toggle)
end

function Global.TaskSetCrouchMovement(ped, p1, p2, p3)
	return _in(0x17293C633C8AC019, ped, p1, p2, p3)
end

function Global.TaskSetSphereDefensiveArea(p0, p1, p2, p3, p4)
	return _in(0x933C06518B52A9A4, p0, p1, p2, p3, p4)
end

function Global.TaskSetStealthMovement(ped, p1, p2, p3)
	return _in(0x4C3FA937B44A90FA, ped, p1, p2, p3)
end

function Global.TaskShockingEventReact(p0, p1, p2)
	return _in(0x452419CBD838065B, p0, p1, p2)
end

function Global.TaskShootAtCoord(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x46A6CC01E0826106, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskShootAtEntity(p0, p1, p2, p3, p4)
	return _in(0x08DA95E8298AE772, p0, p1, p2, p3, p4)
end

function Global.TaskShootWithWeapon(p0, p1)
	return _in(0x08AA95E8298AE772, p0, p1)
end

function Global.TaskShuffleToNextVehicleSeat(p0, p1)
	return _in(0x7AA80209BDA643EB, p0, p1)
end

function Global.TaskSmartFleeCoord(ped, x, y, z, distance, time, p6, p7)
	return _in(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
end

function Global.TaskSmartFleePed(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x22B0D0E37CCB840D, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskSmartFleeStyleCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x58428248BF4B64E4, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskSmartFleeStyleCoordVia(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x390E0B697D25EAF5, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
end

function Global.TaskSmartFleeStylePed(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xFD45175A6DFD7CE9, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskSmartFleeStylePedVia(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x5802E0F910E4CF1D, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskStandGuard(ped, x, y, z, heading, scenarioName)
	return _in(0xAE032F8BBA959E90, ped, x, y, z, heading, _ts(scenarioName))
end

function Global.TaskStandStill(ped, time)
	return _in(0x919BE13EED931959, ped, time)
end

function Global.TaskStartScenarioAtPosition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
	return _in(0x4D1F61FC34AF3CD1, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
end

function Global.TaskStartScenarioInPlace(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x524B54361229154F, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskStartScenarioInPlace_2(p0, p1, p2, p3, p4, p5, p6)
	return _in(0xA917E39F2CEFD215, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskStayInCover(ped)
	return _in(0xE5DA8615A6180789, ped)
end

function Global.TaskSwapFishingBait(p0, p1, p2)
	return _in(0x2C28AC30A72722DA, p0, p1, p2)
end

function Global.TaskSwapWeapon(p0, p1, p2, p3, p4)
	return _in(0xA21C51255B205245, p0, p1, p2, p3, p4)
end

function Global.TaskThrowProjectile(p0, p1, p2, p3)
	return _in(0x7285951DBF6B5A51, p0, p1, p2, p3)
end

function Global.TaskThrowProjectile_2(p0, p1, p2, p3)
	return _in(0x7282356DFF6B5A51, p0, p1, p2, p3)
end

function Global.TaskTurnPedToFaceCoord(ped, x, y, z, duration)
	return _in(0x1DDA930A0AC38571, ped, x, y, z, duration)
end

function Global.TaskTurnPedToFaceEntity(p0, p1, p2, p3, p4, p5)
	return _in(0x5AD23D40115353AC, p0, p1, p2, p3, p4, p5)
end

function Global.TaskTurnToFaceClosestPed(p0, p1, p2, p3)
	return _in(0x84179419DBDD36F2, p0, p1, p2, p3)
end

function Global.TaskUseNearestScenarioChainToCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x9FDA1B3D7E7028B3, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskUseNearestScenarioChainToCoordWarp(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x97A28E63F0BA5631, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskUseNearestScenarioToCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x322BFDEA666E2B0E, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskUseNearestScenarioToCoordWarp(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0x58E2E0F23F6B76C3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskUseNearestTrainScenarioToCoordWarp(p0, p1, p2, p3, p4)
	return _in(0x3774B03456DD6106, p0, p1, p2, p3, p4)
end

function Global.TaskUseRandomScenarioInGroup(p0, p1, p2, p3, p4)
	return _in(0x14747F4A5971DE4E, p0, p1, p2, p3, p4)
end

function Global.TaskUseScenarioPoint(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
	return _in(0xCCDAE6324B6A821C, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
end

function Global.TaskUseScenarioPoint_2(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x0F6641449DD86FBE, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskVehicleAimAtCoord(ped, x, y, z)
	return _in(0x447C1E9EF844BC0F, ped, x, y, z)
end

function Global.TaskVehicleAimAtPed(ped, target)
	return _in(0xE41885592B08B097, ped, target)
end

function Global.TaskVehicleDriveToCoord(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10)
	return _in(0xE2A2AA2F659D77A7, ped, vehicle, x, y, z, speed, p6, _ch(vehicleModel), drivingMode, stopRange, p10)
end

function Global.TaskVehicleDriveToCoord_2(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0xF0108F01FB105DA2, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskVehicleDriveToDestination(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x7F241A0D14354583, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskVehicleDriveToDestination_2(p0, p1, p2, p3, p4, p5, p6, p7, p8)
	return _in(0x391073B9D3CCE2BA, p0, p1, p2, p3, p4, p5, p6, p7, p8)
end

function Global.TaskVehicleDriveToPoint(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x089FF2FB965F0A29, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskVehicleDriveToPoint_2(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x6524A8981E8BE7C9, p0, p1, p2, p3, p4, p5, p6)
end

function Global.TaskVehicleDriveWander(ped, vehicle, speed, drivingStyle)
	return _in(0x480142959D337D00, ped, vehicle, speed, drivingStyle)
end

function Global.TaskVehicleEscort(ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance)
	return _in(0x0FA6E4B75F302400, ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance)
end

function Global.TaskVehicleFollowWaypointRecording(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
	return _in(0x3123FAA6DB1CF7ED, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
end

function Global.TaskVehicleGotoNavmesh(ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange)
	return _in(0x195AEEB13CEFE2EE, ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange)
end

function Global.TaskVehicleMission(p0, p1, veh, p3, p4, p5, p6, p7, p8)
	return _in(0x659427E0EF36BCDE, p0, p1, veh, p3, p4, p5, p6, p7, p8)
end

function Global.TaskVehicleMissionPedTarget(ped, vehicle, pedTarget, mode, maxSpeed, drivingStyle, minDistance, p7, p8)
	return _in(0x9454528DF15D657A, ped, vehicle, pedTarget, mode, maxSpeed, drivingStyle, minDistance, p7, p8)
end

function Global.TaskVehicleShootAtCoord(ped, x, y, z, p4)
	return _in(0x5190796ED39C9B6D, ped, x, y, z, p4)
end

function Global.TaskVehicleShootAtPed(ped, target, p2)
	return _in(0x10AB107B887214D8, ped, target, p2)
end

function Global.TaskVehicleTempAction(driver, vehicle, action, time)
	return _in(0xC429DCEEB339E129, driver, vehicle, action, time)
end

function Global.TaskWalkAway(p0, p1)
	return _in(0x04ACFAC71E6858F9, p0, p1)
end

function Global.TaskWanderAndConverseWithPed(p0, p1, p2, p3)
	return _in(0x8AC76D1408731732, p0, p1, p2, p3)
end

function Global.TaskWanderInArea(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0xE054346CA3A0F315, p0, p1, p2, p3, p4, p5, p6, p7)
end

function Global.TaskWanderInVolume(p0, p1, p2, p3, p4)
	return _in(0x9FDA168777B28424, p0, p1, p2, p3, p4)
end

function Global.TaskWanderStandard(ped, p1, p2)
	return _in(0xBB9CE077274F6A1B, ped, p1, p2)
end

function Global.TaskWanderSwim(p0, p1)
	return _in(0x527EA3DB8BC7F03B, p0, p1)
end

function Global.TaskWarpPedIntoVehicle(ped, vehicle, seat)
	return _in(0x9A7D091411C5F684, ped, vehicle, seat)
end

function Global.TaskWeapon(ped)
	return _in(0x7157B82D60E4BC46, ped)
end

function Global.TaskWhistleAnim(p0, p1, p2)
	return _in(0xD6401A1B2F63BED6, p0, p1, p2)
end

--- Works in MP only.
-- @param uuid :
function Global.TelemetryCreateUuid(uuid)
	return _in(0xE692D336F8A2A97F, _ii(uuid) --[[ may be optional ]], _r)
end

function Global.TelemetryPlayerSpawned(ped)
	return _in(0x5DA4718DF897EB25, ped)
end

function Global.TerminateThisThread()
	return _in(0x5E8B6D17FF91CD59)
end

function Global.TerminateThread(threadId)
	return _in(0x87ED52AE40EA1A52, threadId)
end

function Global.TestProbeAgainstAllWater(p0, p1, p2, p3, p4, p5, p6, p7)
	return _in(0x8974647ED222EA5F, p0, p1, p2, p3, p4, p5, p6, p7, _r)
end

function Global.TestVerticalProbeAgainstAllWater(x, y, z, p3, height)
	return _in(0x2B3451FA1E3142E2, x, y, z, p3, _fi(height) --[[ may be optional ]], _r)
end

function Global.TextureDownloadGetName(p0)
	return _in(0x3448505B6E35262D, p0, _r, _s)
end

function Global.TextureDownloadRelease(p0)
	return _in(0x487EB90B98E9FB19, p0)
end

function Global.TextureDownloadRequest(FilePath, Name, p3)
	return _in(0x16160DA74A8E74A2, _i, _ts(FilePath), _ts(Name), p3, _r, _ri)
end

function Global.Timera()
	return _in(0x83666F9FB8FEBD4B, _r, _ri)
end

function Global.Timerb()
	return _in(0xC9D9444186B5A374, _r, _ri)
end

function Global.Timestep()
	return _in(0x0000000050597EE2, _r, _rf)
end

function Global.ToFloat(value)
	return _in(0xBBDA792448DB5A89, value, _r, _rf)
end

function Global.TogglePausedRenderphases(toggle)
	return _in(0xEF9E1C45732F55FA, toggle)
end

function Global.TrackObjectVisibility(object)
	return _in(0xB252BC036B525623, object)
end

function Global.TrackVehicleVisibility(vehicle)
	return _in(0x1F3969B140DEE157, vehicle)
end

--- The backing function for TriggerEvent.
-- @param eventName 
-- @param eventPayload 
-- @param payloadLength 
function Global.TriggerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x91310870, _ts(eventName), _ts(eventPayload), payloadLength)
end

--- The backing function for TriggerLatentServerEvent.
-- @param eventName 
-- @param eventPayload 
-- @param payloadLength 
-- @param bps 
function Global.TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps)
	return _in(0x128737ea, _ts(eventName), _ts(eventPayload), payloadLength, bps)
end

function Global.TriggerMusicEvent(eventName)
	return _in(0x706D57B0F50DA710, _ts(eventName), _r)
end

function Global.TriggerScriptEvent(p0, p1, p2, p3, p4)
	return _in(0x5AE99C571D5BBE5D, p0, p1, p2, p3, p4)
end

--- The backing function for TriggerServerEvent.
-- @param eventName 
-- @param eventPayload 
-- @param payloadLength 
function Global.TriggerServerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x7fdd1128, _ts(eventName), _ts(eventPayload), payloadLength)
end

function Global.TriggerSonarBlip(p0, p1, p2, p3)
	return _in(0x72DD432F3CDFC0EE, p0, p1, p2, p3)
end

function Global.UgcGetCachedDescription(p0, length)
	return _in(0x40F7E66472DF3E5C, p0, length, _r, _s)
end

function Global.UgcIsLanguageSupported(languageId)
	return _in(0xF53E48461B71EECB, languageId, _r)
end

function Global.UgcQueryByContentId(contentId, latestVersion, contentTypeName)
	return _in(0x69D22E183580113F, _ts(contentId), latestVersion, _ts(contentTypeName), _r)
end

function Global.UgcRequestCachedDescription(p0)
	return _in(0x5E0165278F6339EE, p0, _r, _ri)
end

function Global.UgcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4)
	return _in(0x7FD2990AF016795E, _ts(contentTypeName), _ts(contentId), p2, p3, p4, _r, _ri)
end

function Global.UgcTextureDownloadRequest(p1, p2, p3, p5)
	return _in(0x308F96458B7087CC, _i, p1, p2, p3, _i, p5, _r, _ri)
end

function Global.UiIsSingleplayerPauseMenuActive()
	return _in(0x4FFA0386A6216113, _r)
end

function Global.UiappRequestTransitionByHash(p0, p1)
	return _in(0x7689CD255655BFD7, p0, p1, _r, _ri)
end

function Global.UncuffPed(ped)
	return _in(0x67406F2C8F87FC4F, ped)
end

function Global.UnlockIsLootable(unlockHash)
	return _in(0x66BF197E066050DE, _ch(unlockHash), _r)
end

function Global.UnlockIsNew(unlockHash)
	return _in(0x644166BA7AA49DEA, _ch(unlockHash), _r)
end

function Global.UnlockIsUnlockFlagSet(unlockHash, flag)
	return _in(0x6B6369647F26F09F, _ch(unlockHash), flag, _r)
end

function Global.UnlockIsUnlocked(unlockHash)
	return _in(0xC4B660C7B6040E75, _ch(unlockHash), _r)
end

function Global.UnlockIsVisible(unlockHash)
	return _in(0x8588A14B75AF096B, _ch(unlockHash), _r)
end

function Global.UnlockMinimapAngle()
	return _in(0x5373DE8E179BC2A0)
end

function Global.UnlockSetNew(unlockHash, toggle)
	return _in(0xA6D79C7AEF870A99, _ch(unlockHash), toggle)
end

function Global.UnlockSetUnlocked(unlockHash, toggle)
	return _in(0x1B7C5ADA8A6910A0, _ch(unlockHash), toggle)
end

function Global.UnlockSetVisible(unlockHash, toggle)
	return _in(0x46B901A8ECDB5A61, _ch(unlockHash), toggle)
end

function Global.UnpinInterior(interior)
	return _in(0x07FD1A0B814F6055, interior)
end

function Global.UnregisterScriptWithAudio()
	return _in(0xA8638BE228D4751A)
end

function Global.UpdateLightsOnEntity(entity)
	return _in(0xBDBACB52A03CC760, entity)
end

function Global.UpdateOnscreenKeyboard()
	return _in(0x37DF360F235A3893, _r, _ri)
end

function Global.UpdateTaskHandsUpDuration(ped, duration)
	return _in(0xA98FCAFD7893C834, ped, duration)
end

function Global.UseParticleFxAsset(name)
	return _in(0xA10DB07FC234DD12, _ts(name))
end

function Global.UsePlayerColourInsteadOfTeamColour(toggle)
	return _in(0x5FFE9B4144F9712F, toggle)
end

function Global.UseWaypointRecordingAsAssistedMovementRoute(p0, p1, p2, p3, p4)
	return _in(0x5A353B8E6B1095B5, p0, p1, p2, p3, p4)
end

function Global.Vdist(x1, y1, z1, x2, y2, z2)
	return _in(0x2A488C176D52CCA5, x1, y1, z1, x2, y2, z2, _r, _rf)
end

function Global.Vdist2(x1, y1, z1, x2, y2, z2)
	return _in(0xB7A628320EFF8E47, x1, y1, z1, x2, y2, z2, _r, _rf)
end

function Global.VehToNet(vehicle)
	return _in(0xB4C94523F023419C, vehicle, _r, _ri)
end

function Global.VehicleWaypointPlaybackGetIsPaused(p0)
	return _in(0x4D6D30AB18B0B089, p0, _r, _ri)
end

function Global.VehicleWaypointPlaybackOverrideSpeed(vehicle, speed)
	return _in(0x121F0593E0A431D7, vehicle, speed)
end

function Global.VehicleWaypointPlaybackPause(vehicle)
	return _in(0x8A4E6AC373666BC5, vehicle)
end

function Global.VehicleWaypointPlaybackResume(vehicle)
	return _in(0xDC04FCAA7839D492, vehicle)
end

function Global.VehicleWaypointPlaybackUseDefaultSpeed(vehicle)
	return _in(0x5CEB25A7D2848963, vehicle)
end

function Global.VirtualCollectionExists(p0)
	return _in(0x37963B56755BFB35, p0, _r, _ri)
end

function Global.VirtualCollectionItemAdd(p0, p1, p2, p3)
	return _in(0x6DCBF187221CF73D, p0, p1, p2, p3)
end

function Global.VirtualCollectionReset(p0)
	return _in(0x09D95666ED2B5F60, p0)
end

function Global.VirtualCollectionSetInterestIndex(p0, p1)
	return _in(0x49A8447533308BCF, p0, p1)
end

function Global.VirtualCollectionSetSize(p0, p1)
	return _in(0x9DCE9B01A93B58BC, p0, p1)
end

function Global.Vmag(x, y, z)
	return _in(0x652D2EEEF1D3E62C, x, y, z, _r, _rf)
end

function Global.Vmag2(x, y, z)
	return _in(0xA8CEACB4F35AE058, x, y, z, _r, _rf)
end

function Global.Wait(ms)
	return _in(0x4EDE34FBADD967A6, ms)
end

--- Returns whether or not the currently executing event was canceled.
-- @return A boolean.
function Global.WasEventCanceled()
	return _in(0x58382a19, _r)
end

function Global.WasPedSkeletonUpdated(ped)
	return _in(0x11B499C1E0FF8559, ped, _r)
end

function Global.WaypointPlaybackGetIsAiming(p0)
	return _in(0xD73A5D1F0325C71C, p0, _r, _ri)
end

function Global.WaypointPlaybackGetIsPaused(p0)
	return _in(0x701375A7D43F01CB, p0, _r)
end

function Global.WaypointPlaybackGetIsShooting(p0)
	return _in(0xA5B94DF8AF058F46, p0, _r, _ri)
end

function Global.WaypointPlaybackOverrideSpeed(p0, p1, p2, p3, p4)
	return _in(0x7D7D2B47FA788E85, p0, p1, p2, p3, p4)
end

function Global.WaypointPlaybackPause(p0, p1, p2, p3)
	return _in(0x0F342546AA06FED5, p0, p1, p2, p3)
end

function Global.WaypointPlaybackResume(p0, p1, p2, p3)
	return _in(0x244F70C84C547D2D, p0, p1, p2, p3)
end

function Global.WaypointPlaybackStartAimingAtCoord(p0, p1, p2, p3, p4, p5)
	return _in(0x8968400D900ED8B3, p0, p1, p2, p3, p4, p5)
end

function Global.WaypointPlaybackStartAimingAtEntity(p0, p1, p2, p3)
	return _in(0x4F158205E0C74385, p0, p1, p2, p3)
end

function Global.WaypointPlaybackStartAimingAtPed(p0, p1, p2, p3)
	return _in(0x20E330937C399D29, p0, p1, p2, p3)
end

function Global.WaypointPlaybackStartShootingAtCoord(p0, p1, p2, p3, p4, p5, p6)
	return _in(0x057A25CFCC9DB671, p0, p1, p2, p3, p4, p5, p6)
end

function Global.WaypointPlaybackStartShootingAtEntity(p0, p1, p2, p3, p4)
	return _in(0x4AF458F71C1196D2, p0, p1, p2, p3, p4)
end

function Global.WaypointPlaybackStartShootingAtPed(p0, p1, p2, p3, p4)
	return _in(0xE70BA7B90F8390DC, p0, p1, p2, p3, p4)
end

function Global.WaypointPlaybackStopAimingOrShooting(p0)
	return _in(0x47EFA040EBB8E2EA, p0)
end

function Global.WaypointPlaybackUseDefaultSpeed(p0)
	return _in(0x6599D834B12D0800, p0)
end

function Global.WaypointRecordingGetClosestWaypoint(name, x, y, z, point)
	return _in(0xB629A298081F876F, _ts(name), x, y, z, _ii(point) --[[ may be optional ]], _r)
end

function Global.WaypointRecordingGetCoord(name, point, coord)
	return _in(0x2FB897405C90B361, _ts(name), point, _v, _r)
end

function Global.WaypointRecordingGetNumPoints(name, points)
	return _in(0x5343532C01A07234, _ts(name), _ii(points) --[[ may be optional ]], _r)
end

function Global.WaypointRecordingGetSpeedAtPoint(name, point)
	return _in(0x005622AEBC33ACA9, _ts(name), point, _r, _rf)
end

function Global.WeeklyCollectibleGetItemInSet(p0, p1, p2, p3, p4)
	return _in(0xBA61BA6205A3F5A8, p0, p1, p2, p3, p4, _r, _ri)
end

function Global.WeeklyCollectibleGetItemSetBuyAward(p0, p1)
	return _in(0x610783F646894D25, p0, p1, _r, _ri)
end

function Global.WeeklyCollectibleGetItemSetLabel(p0, p1)
	return _in(0xBFFA88522FF0F730, p0, p1, _r, _ri)
end

function Global.WeeklyCollectibleGetNumItemsInSet(p0, p1)
	return _in(0x7D675C9DDDB365BE, p0, p1, _r, _ri)
end

function Global.WeeklyCollectibleGetNumSets(p0)
	return _in(0x8F5317729F791D10, p0, _r, _ri)
end

function Global.WouldEntityBeOccluded(entityModelHash, x, y, z, p4)
	return _in(0x3546FAB293FF2981, _ch(entityModelHash), x, y, z, p4, _r)
end

