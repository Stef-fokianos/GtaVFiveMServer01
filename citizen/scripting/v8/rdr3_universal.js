const _i = Citizen.pointerValueInt();
const _f = Citizen.pointerValueFloat();
const _v = Citizen.pointerValueVector();
const _r = Citizen.returnResultAnyway();
const _ri = Citizen.resultAsInteger();
const _rf = Citizen.resultAsFloat();
const _rl = Citizen.resultAsLong();
const _s = Citizen.resultAsString();
const _rv = Citizen.resultAsVector();
const _ro = Citizen.resultAsObject();
const _in = Citizen.invokeNativeByHash;
const _ii = Citizen.pointerValueIntInitialized;
const _fi = Citizen.pointerValueFloatInitialized;
function _ch(hash) {
	if (typeof hash === 'string') {
		return global.GetHashKey(hash);
	}

	return hash;
}

function _ts(num) {
	if (num === 0 || num === null || num === undefined || num === false) { // workaround for users calling string parameters with '0', also nil being translated
		return null;
	}
	if (ArrayBuffer.isView(num) || num instanceof ArrayBuffer) { // these are handled as strings internally
		return num;
	}
	return num.toString();
}
function _fv(flt) {
	return flt + 0.0000001;
}

function _mfr(fn) {
	return Citizen.makeRefFunction(fn);
}

const _ENV = null;

global.AbortAnimScene = function (animScene, p1) {
	return _in(0x718cf132, 0x8d20c2b3, animScene, p1);
};

global.Absf = function (value) {
	return _in(0x134549b3, 0x88167cbf, _fv(value), _r, _rf);
};

global.Absi = function (value) {
	return _in(0x0c214d5b, 0x8a38c828, value, _r, _ri);
};

global.Acos = function (p0) {
	return _in(0x586690f0, 0x176dc575, _fv(p0), _r, _rf);
};

global.ActivateDamageTrackerOnNetworkId = function (netID, toggle) {
	return _in(0xd45b1ffc, 0xcd52ff19, netID, toggle);
};

global.ActivateInteriorEntitySet = function (p0, p1, p2) {
	return _in(0x174d0aab, 0x11ced739, p0, p1, p2);
};

global.ActivatePhysics = function (entity) {
	return _in(0x710311ad, 0xf0e20730, entity);
};

global.AddArmourToPed = function (ped, amount) {
	return _in(0x5ba652a0, 0xcd14df2f, ped, amount);
};

global.AddAttributePoints = function (p0, p1, p2) {
	return _in(0x75415ee0, 0xcb583760, p0, p1, p2);
};

global.AddCamSplineNode = function (camera, x, y, z, xRot, yRot, zRot, length, p8, p9) {
	return _in(0xf1f57f9d, 0x230f9cd1, camera, _fv(x), _fv(y), _fv(z), _fv(xRot), _fv(yRot), _fv(zRot), length, p8, p9);
};

global.AddCoverBlockingArea = function (playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9) {
	return _in(0x45c59709, 0x7dd7cb81, _fv(playerX), _fv(playerY), _fv(playerZ), _fv(radiusX), _fv(radiusY), _fv(radiusZ), p6, p7, p8, p9);
};

global.AddCoverPoint = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xd5c12a75, 0xc7b9497f, _fv(p0), _fv(p1), _fv(p2), _fv(p3), p4, p5, p6, p7, _r, _ri);
};

global.AddCustomFormationLocation = function (p0, p1, p2, p3, p4) {
	return _in(0x4e23cd07, 0xbd161e06, p0, p1, p2, p3, p4);
};

global.AddDecal = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21) {
	return _in(0x57cb2676, 0x24ef85c0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, _r, _ri);
};

global.AddEntityToAudioMixGroup = function (entity, groupName, p2) {
	return _in(0x153973ab, 0x99fe8980, entity, _ts(groupName), _fv(p2));
};

global.AddExplosion = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x7d6f58f6, 0x9da92530, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.AddExplosionWithUserVfx = function (x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) {
	return _in(0x53ba259f, 0x3a67a99e, _fv(x), _fv(y), _fv(z), explosionType, _ch(explosionFx), _fv(damageScale), isAudible, isInvisible, _fv(cameraShake));
};

global.AddFormationLocation = function (p0, p1, p2, p3) {
	return _in(0xb05945c1, 0xe9e60d91, p0, p1, p2, p3, _r, _ri);
};

/**
 * Loads a minimap overlay from a GFx file in the current resource.
 * @param name The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
 * @return A minimap overlay ID.
 */
global.AddMinimapOverlay = function (name) {
	return _in(0x00000000, 0x4afd2499, _ts(name), _r, _ri);
};

global.AddNavmeshBlockingObject = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xfcd5c8e0, 0x6e502f5a, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), p7, p8, _r, _ri);
};

global.AddNavmeshRequiredRegion = function (x, y, radius) {
	return _in(0x387ead7e, 0xe42f6685, _fv(x), _fv(y), _fv(radius));
};

global.AddOwnedExplosion = function (ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) {
	return _in(0xd84a917a, 0x64d4d016, ped, _fv(x), _fv(y), _fv(z), explosionType, _fv(damageScale), isAudible, isInvisible, _fv(cameraShake));
};

global.AddPatrolRouteLink = function (p0, p1) {
	return _in(0x23083260, 0xdec3a551, p0, p1);
};

global.AddPatrolRouteNode = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x8edf9501, 0x67586b7c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.AddPedToConversation = function (index, ped, p2) {
	return _in(0x95d9f4bc, 0x443956e7, index, ped, _ts(p2));
};

global.AddPedToFlock = function (p0, ped) {
	return _in(0x933e5d31, 0xa7d13069, p0, ped);
};

global.AddPetrolTrailDecalInfo = function (x, y, z, p3) {
	return _in(0x73354fb6, 0xd03d2e8a, _fv(x), _fv(y), _fv(z), _fv(p3));
};

global.AddPointToGpsMultiRoute = function (p0, p1, p2, p3) {
	return _in(0x64c59dd6, 0x834fa942, p0, p1, p2, p3);
};

global.AddPopMultiplierArea = function (x1, y1, z1, x2, y2, z2, p6, p7, p8, p9) {
	return _in(0x5ebda1a3, 0xb8cb5ef7, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _fv(p6), _fv(p7), p8, p9, _r, _ri);
};

global.AddRelationshipGroup = function (name, groupHash) {
	return _in(0xf372bc22, 0xfcb88606, _ts(name), _ii(groupHash) /* may be optional */, _r, _ri);
};

/**
 * Experimental natives, please do not use in a live environment.
 * @param origTxd 
 * @param origTxn 
 * @param newTxd 
 * @param newTxn 
 */
global.AddReplaceTexture = function (origTxd, origTxn, newTxd, newTxn) {
	return _in(0x00000000, 0xa66f8f75, _ts(origTxd), _ts(origTxn), _ts(newTxd), _ts(newTxn));
};

global.AddRope = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17) {
	return _in(0xe832d760, 0x399eb220, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, _r, _ri);
};

global.AddScenarioBlockingArea = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x1b5c85c6, 0x12e5256e, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.AddShockingEventAtPosition = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xd9f84554, 0x09b525e9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri);
};

global.AddShockingEventForEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x7fd8f3be, 0x76f89422, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri);
};

global.AddSpeedZoneForCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x4c221bac, 0x54d735c3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri);
};

global.AddTacticalAnalysisPoint = function (p0, p1, p2, p3) {
	return _in(0xe4ee55e6, 0x3fa9af45, p0, p1, p2, p3);
};

global.AddTextEntry = function (entryKey, entryText) {
	return _in(0x00000000, 0x32ca01c3, _ts(entryKey), _ts(entryText));
};

global.AddTextEntryByHash = function (entryKey, entryText) {
	return _in(0x00000000, 0x289da860, _ch(entryKey), _ts(entryText));
};

global.AddToClockTime = function (hours, minutes, seconds) {
	return _in(0xab7c251c, 0x7701d336, hours, minutes, seconds);
};

global.AddToItemset = function (itemset, p1) {
	return _in(0xabe74510, 0x883c7950, itemset, p1, _r);
};

global.AdvanceClockTimeTo = function (hour, minute, second) {
	return _in(0x0184750a, 0xe88d0b1d, hour, minute, second);
};

global.AllowPauseMenuWhenDeadThisFrame = function () {
	return _in(0x30996422, 0xdf1ee561);
};

global.AllowSonarBlips = function (p0) {
	return _in(0x6e6e6478, 0x8c07d2e0, p0);
};

global.AnimateGameplayCamZoom = function (p0, distance) {
	return _in(0x2126c740, 0xa4ac370b, _fv(p0), _fv(distance));
};

global.AnimpostfxIsRunning = function (effectName) {
	return _in(0x4a123e85, 0xd7c4ca0b, _ts(effectName), _r);
};

global.AnimpostfxPlay = function (effectName) {
	return _in(0x4102732d, 0xf6b4005f, _ts(effectName));
};

global.AnimpostfxStop = function (effectName) {
	return _in(0xb4fd7446, 0xbab2f394, _ts(effectName));
};

global.AnimpostfxStopAll = function () {
	return _in(0x66560a0d, 0x4c64fd21);
};

global.ApplyDamageToPed = function (p0, p1, p2, p3, p4) {
	return _in(0x697157ce, 0xd63f18d4, p0, p1, p2, p3, p4);
};

global.ApplyForceToEntity = function (entity, forceFlags, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) {
	return _in(0xf15e8f5d, 0x333f09c4, entity, forceFlags, _fv(x), _fv(y), _fv(z), _fv(offX), _fv(offY), _fv(offZ), boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13);
};

global.ApplyForceToEntityCenterOfMass = function (entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8) {
	return _in(0x31da7cec, 0x5334db37, entity, forceType, _fv(x), _fv(y), _fv(z), p5, isDirectionRel, isForceRel, p8);
};

global.ApplyPedBloodSpecific = function (ped, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xef0d582c, 0xbf2d9b0f, ped, p1, _fv(p2), _fv(p3), _fv(p4), _fv(p5), p6, _fv(p7), _ii(p8) /* may be optional */);
};

global.ApplyPedDamagePack = function (ped, damagePack, damage, mult) {
	return _in(0x46df9187, 0x88cb093f, ped, _ts(damagePack), _fv(damage), _fv(mult));
};

global.AreAnyVehicleSeatsFree = function (vehicle) {
	return _in(0xa0a42450, 0x5a1b6429, vehicle, _r);
};

global.AreCoordsCollidingWithExterior = function (x, y, z) {
	return _in(0xf291396b, 0x517e25b2, _fv(x), _fv(y), _fv(z), _r);
};

global.ArePathNodesLoadedInArea = function (x1, y1, x2, y2) {
	return _in(0xf7b79a50, 0xb905a30d, _fv(x1), _fv(y1), _fv(x2), _fv(y2), _r);
};

global.AreStringsEqual = function (string1, string2) {
	return _in(0xd3852f22, 0xab713a1f, _ts(string1), _ts(string2), _r);
};

global.ArrayValueGetBoolean = function (arrayIndex) {
	return _in(0xab1231d2, 0xde52f2d3, _i, arrayIndex, _r);
};

global.ArrayValueGetFloat = function (arrayIndex) {
	return _in(0xa9d003cf, 0x419cb81e, _i, arrayIndex, _r, _rf);
};

global.ArrayValueGetInteger = function (arrayIndex) {
	return _in(0x96dea500, 0xb6ebbe53, _i, arrayIndex, _r, _ri);
};

global.ArrayValueGetObject = function (arrayIndex) {
	return _in(0xa0106559, 0x85853485, _i, arrayIndex, _r, _ri);
};

global.ArrayValueGetSize = function (arrayData) {
	return _in(0x6a885bf6, 0x9239e539, _ii(arrayData) /* may be optional */, _r, _ri);
};

global.ArrayValueGetString = function (arrayIndex) {
	return _in(0xb6790a8f, 0xf80f889f, _i, arrayIndex, _r, _s);
};

global.ArrayValueGetType = function (arrayIndex) {
	return _in(0x151dafe6, 0xb3b9888f, _i, arrayIndex, _r, _ri);
};

global.ArrayValueGetVector3 = function (arrayIndex) {
	return _in(0x850da275, 0x0da14e9a, _i, arrayIndex, _r, _rv);
};

global.Asin = function (p0) {
	return _in(0x6e3c15d2, 0x96c15583, _fv(p0), _r, _rf);
};

global.AssistedMovementIsRouteLoaded = function (route) {
	return _in(0x60f9a439, 0x3a21f741, _ts(route), _r);
};

global.AssistedMovementRemoveRoute = function (route) {
	return _in(0x35485364, 0x85dd792b, _ts(route));
};

global.AssistedMovementSetRouteProperties = function (route, props) {
	return _in(0xd5002d78, 0xb7162e1b, _ts(route), props);
};

global.Atan = function (p0) {
	return _in(0x503054de, 0xd0b78027, _fv(p0), _r, _rf);
};

global.Atan2 = function (p0, p1) {
	return _in(0x965b220a, 0x066e3f07, _fv(p0), _fv(p1), _r, _rf);
};

global.AttachAnimSceneToEntity = function (animScene, entity, p2) {
	return _in(0xdc418495, 0xdba327a1, animScene, entity, p2);
};

global.AttachAnimSceneToEntityPreservingLocation = function (animScene, entity, p2) {
	return _in(0x1c0b105c, 0x3f30b88d, animScene, entity, p2);
};

global.AttachCamToEntity = function (cam, entity, xOffset, yOffset, zOffset, isRelative) {
	return _in(0xfdc0df7f, 0x6fb0a592, cam, entity, _fv(xOffset), _fv(yOffset), _fv(zOffset), isRelative);
};

global.AttachCamToPedBone = function (cam, ped, boneIndex, x, y, z, heading) {
	return _in(0xdfc1e4a4, 0x4c0324ca, cam, ped, boneIndex, _fv(x), _fv(y), _fv(z), heading);
};

global.AttachEntitiesToRope = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20) {
	return _in(0x3d95ec8b, 0x6d940ac3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20);
};

global.AttachEntityToEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) {
	return _in(0x6b9bbd38, 0xab0796df, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16);
};

global.AttachEntityToEntityPhysically = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21) {
	return _in(0xb629a43c, 0xa1643481, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21);
};

global.AttachPortablePickupToPed = function (pickupObject, ped) {
	return _in(0x8dc39368, 0xbdd57755, pickupObject, ped);
};

global.AttachTvAudioToEntity = function (entity) {
	return _in(0x40866a41, 0x8eb8efde, entity);
};

global.AudioIsScriptedMusicPlaying = function () {
	return _in(0x845ffc3a, 0x4feefa3e, _r);
};

global.BeginSrl = function () {
	return _in(0x03607100, 0x33be60d9);
};

/**
 * Deletes the given context from the background scripts context map.
 * @param contextName :
 */
global.BgEndContext = function (contextName) {
	return _in(0x3abf7ba1, 0xc3e2c8cf, _ts(contextName));
};

/**
 * Hashed version of BG_END_CONTEXT
 * @param contextHash :
 */
global.BgEndContextHash = function (contextHash) {
	return _in(0x6d143174, 0x4182cde8, _ch(contextHash));
};

/**
 * Inserts the given context into the background scripts context map.
 * @param contextName :
 */
global.BgStartContext = function (contextName) {
	return _in(0x49ba5678, 0xba040ca7, _ts(contextName));
};

/**
 * Hashed version of BG_START_CONTEXT
 * @param contextHash :
 */
global.BgStartContextHash = function (contextHash) {
	return _in(0x2eb67d56, 0x4dcc09d5, _ch(contextHash));
};

global.BlockDispatchServiceResourceCreation = function (dispatchService, toggle) {
	return _in(0x66947e61, 0xa44de2c6, dispatchService, toggle);
};

global.BlockPickupFromPlayerCollection = function (p0, p1) {
	return _in(0xb8f50620, 0x70bb6dbd, p0, p1);
};

global.BreakEntityGlass = function (entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x2e648d16, 0xf6e308f3, entity, _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), _fv(p7), _fv(p8), p9, p10);
};

global.BringVehicleToHalt = function (vehicle, distance, duration, unknown) {
	return _in(0x260be8f0, 0x9e326a20, vehicle, _fv(distance), duration, unknown);
};

global.BusyspinnerIsOn = function () {
	return _in(0x823bf7b1, 0xdf613a21, _r);
};

global.BusyspinnerOff = function () {
	return _in(0x58f441b9, 0x0ea84d06);
};

/**
 * This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
 * @param miniMap The minimap overlay ID.
 * @param fnName A function in the overlay's TIMELINE.
 */
global.CallMinimapScaleformFunction = function (miniMap, fnName) {
	return _in(0x00000000, 0x4c89c0ed, miniMap, _ts(fnName), _r);
};

global.CanAnchorBoatHere = function (vehicle) {
	return _in(0xc075176c, 0xfb8b4128, vehicle, _r);
};

global.CanKnockPedOffVehicle = function (ped) {
	return _in(0x51ac07a4, 0x4d4f5b8a, ped, _r);
};

global.CanLaunchAppByHash = function (p0) {
	return _in(0xe555ec27, 0xd65ede80, p0, _r, _ri);
};

global.CanPedInCombatSeeTarget = function (ped, target) {
	return _in(0xead42de3, 0x610d0721, ped, target, _r);
};

global.CanPedRagdoll = function (ped) {
	return _in(0x128f79ed, 0xcece4fd5, ped, _r);
};

global.CanPedSpeak = function (ped, speechName, unk) {
	return _in(0x49b99bf3, 0xfda89a7a, ped, _ts(speechName), unk, _r);
};

global.CanPlayerStartMission = function (player) {
	return _in(0x2df170b1, 0x185af777, player, _r);
};

global.CanRegisterMissionEntities = function (ped_amt, vehicle_amt, object_amt, pickup_amt) {
	return _in(0x69778e75, 0x64bade6d, ped_amt, vehicle_amt, object_amt, pickup_amt, _r);
};

global.CanRegisterMissionObjects = function (amount) {
	return _in(0x800dd472, 0x1a8b008b, amount, _r);
};

global.CanRegisterMissionPeds = function (amount) {
	return _in(0xbcbf4fef, 0x9fa5d781, amount, _r);
};

global.CanRegisterMissionVehicles = function (amount) {
	return _in(0x7277f1f2, 0xe085ee74, amount, _r);
};

global.CanShuffleSeat = function (vehicle, p1) {
	return _in(0xf8b2d32a, 0x2231fd24, vehicle, p1, _r);
};

/**
 * Cancels the currently executing event.
 */
global.CancelEvent = function () {
	return _in(0x00000000, 0xfa29d35d);
};

global.CancelMusicEvent = function (eventName) {
	return _in(0x5b17a902, 0x91133da5, _ts(eventName), _r);
};

global.CancelOnscreenKeyboard = function () {
	return _in(0x58a39be5, 0x97ce99cd);
};

global.CascadeshadowsResetType = function () {
	return _in(0xf7c29d7c, 0x12c36f03);
};

global.CascadeshadowsSetType = function (type) {
	return _in(0xce4774e0, 0xf9ad48d1, _ts(type));
};

global.CashinventoryInitSessionIsFaulted = function () {
	return _in(0xd1ce92d1, 0xd9be170a, _r);
};

global.CashinventoryInitSessionStatus = function () {
	return _in(0xc019112f, 0x8995dc1c, _i, _i, _r);
};

global.CashinventoryIsConnectionFaulted = function () {
	return _in(0x6ce9fb63, 0x32b5e46e, _r);
};

global.CashinventoryIsSessionReady = function () {
	return _in(0xfcc24220, 0xfddac929, _r);
};

global.CashinventoryTransactionAddItem = function (id, p2) {
	return _in(0x3745c002, 0xf5a21c45, id, _i, p2, _r);
};

global.CashinventoryTransactionAddItemWithIngredients = function (id, p2, p4) {
	return _in(0xf65d2d35, 0x037bf5ec, id, _i, p2, _i, p4, _r);
};

global.CashinventoryTransactionCheckout = function (id) {
	return _in(0x592bc00b, 0xf6629be7, id, _r);
};

global.CashinventoryTransactionCheckoutStatus = function (id, status) {
	return _in(0x26c00879, 0x1d066f37, id, _ii(status) /* may be optional */, _r);
};

global.CashinventoryTransactionDelete = function (id) {
	return _in(0x59ef5d51, 0x6e2d96b9, id, _r);
};

global.CashinventoryTransactionFireAndForgetItem = function (actionHash, p3) {
	return _in(0xffea09cc, 0xec4af32f, _ch(actionHash), _i, _i, p3, _r);
};

global.CashinventoryTransactionGetAction = function (id) {
	return _in(0xbd2d520c, 0x51ccff52, id, _r, _ri);
};

global.CashinventoryTransactionGetBasketIsValid = function (id) {
	return _in(0x52a226ad, 0xf4a270d2, id, _r);
};

global.CashinventoryTransactionGetItemInfo = function (id, index, itemInfo) {
	return _in(0x7616b5f0, 0x895c2d99, id, index, _ii(itemInfo) /* may be optional */, _r);
};

global.CashinventoryTransactionGetNumOfItems = function (id) {
	return _in(0xcf2d04d0, 0x76847478, id, _r, _ri);
};

global.CashinventoryTransactionResponseGetItemInfo = function (id, index, itemInfo) {
	return _in(0x98412398, 0xbbe73f61, id, index, _ii(itemInfo) /* may be optional */, _r);
};

global.CashinventoryTransactionStart = function (type, actionHash) {
	return _in(0xf039ec27, 0xf4490e96, _i, _ch(type), _ch(actionHash), _r);
};

global.Ceil = function (value) {
	return _in(0x11e019c8, 0xf43acc8a, _fv(value), _r, _ri);
};

global.ChalAddGoalProgressFloat = function (p0, p1, p2) {
	return _in(0x86922d8c, 0x02fb7703, p0, p1, p2);
};

global.ChalAddGoalProgressInt = function (p0, p1, p2) {
	return _in(0xddbd5607, 0x45b1ee9a, p0, p1, p2);
};

global.ChalAddGoalProgressIntByScoreId = function (p0, p1) {
	return _in(0xddbd5607, 0x45b1ee9c, p0, p1);
};

global.ChalGetMaxRanks = function (p0) {
	return _in(0x58cb53db, 0x63f84dea, p0, _r, _ri);
};

global.ChalGetNumRanksCompleted = function (p0) {
	return _in(0x58cb53db, 0x63f84de9, p0, _r, _ri);
};

global.ChalIsGoalActive = function (p0, p1) {
	return _in(0x04dac392, 0x9796eb87, p0, p1, _r, _ri);
};

global.ChalMissionAddGoalProgressInt = function (p0, p1, p2) {
	return _in(0x97e18e7c, 0x098626de, p0, p1, p2);
};

global.ChalMissionGetNumGoals = function (p0) {
	return _in(0x0b0576dd, 0x3a75e58d, p0, _r, _ri);
};

global.ChalMissionGetNumGoalsComplete = function (p0) {
	return _in(0xa785a52b, 0x59b7e7b2, p0, _r, _ri);
};

global.ChalMissionIsGoalComplete = function (p0, p1) {
	return _in(0xc0bb7747, 0x87bbf301, p0, p1, _r, _ri);
};

global.ChalNetStartChal = function (p0) {
	return _in(0x4abf7e4d, 0xb6279e8f, p0);
};

global.ChalNetStartGoal = function (p0, p1) {
	return _in(0xc3fcb473, 0x44dcb638, p0, p1);
};

global.ChalNetStopChal = function (p0) {
	return _in(0x43b01631, 0x54a50c86, p0);
};

global.ChalNetStopGoal = function (p0, p1) {
	return _in(0x00ce6a93, 0x324a590b, p0, p1);
};

global.ChalSetGoalProgressInt = function (p0, p1, p2) {
	return _in(0xddbd5607, 0x45b1ee9b, p0, p1, p2);
};

global.CheckOwnershipOfAnimScene = function (animScene) {
	return _in(0x661b8683, 0x611b9b97, animScene, _r);
};

global.ClampGameplayCamPitch = function (minimum, maximum) {
	return _in(0x326c7aa3, 0x08f3df6a, _fv(minimum), _fv(maximum));
};

global.ClampGameplayCamYaw = function (minimum, maximum) {
	return _in(0x14f39473, 0x18ca8ad2, _fv(minimum), _fv(maximum));
};

global.CleanItemset = function (itemset) {
	return _in(0x85f3a86c, 0xa9021fb0, itemset);
};

global.ClearAllHelpMessages = function () {
	return _in(0x916ed832, 0x1f087059);
};

global.ClearAmbientZoneListState = function (p1) {
	return _in(0x120c48c6, 0x14909fa4, _i, p1);
};

global.ClearAmbientZoneState = function (zoneName, p1) {
	return _in(0x218dd44a, 0xaac964ff, _ts(zoneName), p1);
};

global.ClearAngledAreaOfVehicles = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xa4d83115, 0xc1e02f8a, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.ClearArea = function (p0, p1, p2, p3, p4) {
	return _in(0x3b882a96, 0xea77d5b1, p0, p1, p2, p3, p4);
};

global.ClearBit = function (offset) {
	return _in(0x7d1d4a36, 0x02b6ad4e, _i, offset);
};

global.ClearDrivebyTaskUnderneathDrivingTask = function (ped) {
	return _in(0xc35b5cdb, 0x2824cf69, ped);
};

global.ClearEntityLastDamageEntity = function (entity) {
	return _in(0xbb19ac7d, 0x4dcefd0f, entity);
};

global.ClearFacialIdleAnimOverride = function (ped) {
	return _in(0x726256cc, 0x1eeb182f, ped);
};

global.ClearFocus = function () {
	return _in(0x86ccaf7c, 0xe493efbe);
};

global.ClearGpsCustomRoute = function () {
	return _in(0x1eaa5674, 0xb4d181c5);
};

global.ClearGpsFlags = function () {
	return _in(0x4d377123, 0x7c79ff41);
};

global.ClearGpsMultiRoute = function () {
	return _in(0x9e0ab9aa, 0xee87ce28);
};

global.ClearGpsPlayerWaypoint = function () {
	return _in(0x08fdc6f7, 0x96e350d1);
};

global.ClearHdArea = function () {
	return _in(0xd83b2243, 0x4e52728d);
};

global.ClearLastDrivenVehicle = function () {
	return _in(0x0efc5dc6, 0x2e67609b);
};

global.ClearOverrideWeather = function () {
	return _in(0x80a398f1, 0x6ffe3cc3);
};

global.ClearPedBloodDamage = function (ped) {
	return _in(0x8fe22675, 0xa5a45817, ped);
};

global.ClearPedBloodDamageByZone = function (ped, p1) {
	return _in(0x56e3b78c, 0x5408d9f4, ped, p1);
};

global.ClearPedDamageDecalByZone = function (ped, p1, p2) {
	return _in(0x523c79ae, 0xefcc4a2a, ped, p1, _ts(p2));
};

global.ClearPedDecorations = function (ped) {
	return _in(0x0e5173c1, 0x63976e38, ped);
};

global.ClearPedEnvDirt = function (ped) {
	return _in(0x6585d955, 0xa68452a5, ped);
};

global.ClearPedLastDamageBone = function (ped) {
	return _in(0x8ef6b7ac, 0x68e2f01b, ped);
};

global.ClearPedNonCreationArea = function () {
	return _in(0x2e052080, 0x86ba0651);
};

global.ClearPedSecondaryTask = function (ped) {
	return _in(0x176cecf6, 0xf920d707, ped);
};

global.ClearPedTasks = function (p0, p1, p2) {
	return _in(0xe1ef3c12, 0x16aff2cd, p0, p1, p2);
};

global.ClearPedTasksImmediately = function (p0, p1, p2) {
	return _in(0xaaa34f8a, 0x7cb32098, p0, p1, p2);
};

global.ClearPedWetness = function (ped) {
	return _in(0x9c720776, 0xdaa43e7e, ped);
};

global.ClearPlayerHasDamagedAtLeastOneNonAnimalPed = function (player) {
	return _in(0x0361096d, 0x6ce4372c, player);
};

global.ClearPlayerHasDamagedAtLeastOnePed = function (player) {
	return _in(0x270b63a6, 0x41be32f2, player);
};

global.ClearPlayerWantedLevel = function (player) {
	return _in(0x4e4b996c, 0x928c7aa6, player);
};

global.ClearRagdollBlockingFlags = function (ped, flags) {
	return _in(0xd86d101f, 0xcfd00a4b, ped, flags);
};

global.ClearRelationshipBetweenGroups = function (relationship, group1, group2) {
	return _in(0x5e29243f, 0xb56fc6d4, relationship, _ch(group1), _ch(group2));
};

global.ClearRoomForEntity = function (entity) {
	return _in(0xa1762d5b, 0xbfca13a8, entity);
};

global.ClearRoomForGameViewport = function () {
	return _in(0x951a0497, 0x65e0d450);
};

global.ClearSequenceTask = function (taskSequenceId) {
	return _in(0x3841422e, 0x9c488d8c, _ii(taskSequenceId) /* may be optional */);
};

global.ClearSpawnerInfoPriority = function (p0, p1) {
	return _in(0x217a54de, 0x2d200305, _ch(p0), _ch(p1));
};

global.ClearTacticalAnalysisPoints = function () {
	return _in(0xd93b6516, 0xc6878267);
};

global.ClearTimecycleModifier = function () {
	return _in(0x0e3f4af2, 0xd63491fb);
};

global.ClearWeatherTypePersist = function () {
	return _in(0xd85dfe5c, 0x131e4ae9);
};

global.ClonePed = function (ped, heading, isNetwork, thisScriptCheck) {
	return _in(0xef29a163, 0x37facadb, ped, _fv(heading), isNetwork, thisScriptCheck, _r, _ri);
};

global.ClonePedToTarget = function (ped, targetPed) {
	return _in(0xe952d643, 0x1689ad9a, ped, targetPed);
};

global.CloseAllApps = function () {
	return _in(0xad7b70f7, 0x230c5a12);
};

global.CloseApp = function (p0) {
	return _in(0x30156354, 0x26d1b17c, p0);
};

global.CloseAppByHash = function (p0) {
	return _in(0x2ff10c9c, 0x3f92277e, p0);
};

global.CloseAppByHashImmediate = function (p0) {
	return _in(0x04428420, 0xa248a354, p0);
};

global.ClosePatrolRoute = function () {
	return _in(0xb043eca8, 0x01b8cbc1);
};

global.CloseSequenceTask = function (taskSequenceId) {
	return _in(0x39e72bc9, 0x9e6360cb, taskSequenceId);
};

global.CloudHasRequestCompleted = function (p0) {
	return _in(0x4c61b399, 0x30d045da, p0, _r);
};

/**
 * Commits the backing pixels to the specified runtime texture.
 * @param tex The runtime texture handle.
 */
global.CommitRuntimeTexture = function (tex) {
	return _in(0x00000000, 0x19d81f4e, tex);
};

global.CompareStrings = function (str1, str2, matchCase, maxLength) {
	return _in(0xbfbb74a1, 0x5efc149b, _ts(str1), _ts(str2), matchCase, maxLength, _r, _ri);
};

global.CompendiumAnimalObservedByStatName = function (p0, p1) {
	return _in(0x725d52f2, 0x6a5e9e10, p0, p1);
};

global.CompendiumFishCaught = function (p0, p1) {
	return _in(0x725d52f2, 0x1a5e9e00, p0, p1);
};

global.CompendiumFishGetLureSuitabilityByStatItem = function (p0, p1) {
	return _in(0x725d52f2, 0x1a5e9e81, p0, p1, _r, _ri);
};

global.CompendiumGangAmbushSurvived = function (p0) {
	return _in(0x725d52f2, 0x1a5e9e04, p0);
};

global.CompendiumGangBountyCaptured = function (p0) {
	return _in(0x725d52f2, 0x1a5e9e06, p0);
};

global.CompendiumGangCampFound = function (p0, p1) {
	return _in(0x725d52f2, 0x1a5e9e03, p0, p1);
};

global.CompendiumGangEncountered = function (p0) {
	return _in(0x725d52f2, 0x1a5e9e05, p0);
};

global.CompendiumGangHideoutFound = function (p0, p1) {
	return _in(0x725d52f2, 0x1a5e9e08, p0, p1);
};

global.CompendiumGangMemberKilled = function (p0) {
	return _in(0x725d52f2, 0x1a5e9e07, p0);
};

global.CompendiumGetMapDiscoverableFromStatItem = function (p0, p1, p2, p3) {
	return _in(0x729d5412, 0x1a5e9e20, p0, p1, p2, p3, _r, _ri);
};

global.CompendiumGetShortDescriptionFromPed = function (p0) {
	return _in(0x6c5e5d48, 0xe48b4c65, p0, _r, _ri);
};

global.CompendiumHerbPicked = function (p0, p1, p2, p3) {
	return _in(0x725d52f2, 0x1a5e9e09, p0, p1, p2, p3);
};

global.CompendiumHorseBonding = function (p0, p1) {
	return _in(0x725d52f2, 0x1a5e9e50, p0, p1);
};

global.CompendiumHorseObserved = function (p0, p1) {
	return _in(0x725d58f2, 0x125e5e50, p0, p1);
};

global.CompendiumHorseWildBroken = function (p0) {
	return _in(0x725852d2, 0x1a2e9e50, p0);
};

global.CopyMemory = function (size) {
	return _in(0xf7ac7dc0, 0xdee7c9be, _i, _i, size);
};

global.CopyVehicleDamages = function (sourceVehicle, targetVehicle) {
	return _in(0xdbc28a8c, 0x683cd80b, sourceVehicle, targetVehicle);
};

global.Cos = function (value) {
	return _in(0xd0ffb162, 0xf40a139c, _fv(value), _r, _rf);
};

global.CreateAmbientPickup = function (pickupHash, x, y, z, flags, value, modelHash, p7, p8, p9, p10) {
	return _in(0x673966a0, 0xc0fd7171, _ch(pickupHash), _fv(x), _fv(y), _fv(z), flags, value, _ch(modelHash), p7, p8, p9, _fv(p10), _r, _ri);
};

global.CreateAnimScene = function (animDict, flags, p2, p3, p4) {
	return _in(0x1fca98e3, 0x3c1437b3, _ts(animDict), flags, _ts(p2), p3, p4, _r, _ri);
};

global.CreateCam = function (camName, p1) {
	return _in(0xe72cdba7, 0xf0a02dd6, _ts(camName), p1, _r, _ri);
};

global.CreateCamWithParams = function (camName, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9) {
	return _in(0x40c23491, 0xce83708e, _ts(camName), _fv(posX), _fv(posY), _fv(posZ), _fv(rotX), _fv(rotY), _fv(rotZ), _fv(fov), p8, p9, _r, _ri);
};

global.CreateCamera = function (camHash, p1) {
	return _in(0x57cdf879, 0xea466c46, _ch(camHash), p1, _r, _ri);
};

global.CreateCameraWithParams = function (camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9) {
	return _in(0x98b99b9f, 0x27e2d60b, _ch(camHash), _fv(posX), _fv(posY), _fv(posZ), _fv(rotX), _fv(rotY), _fv(rotZ), _fv(fov), p8, p9, _r, _ri);
};

global.CreateCheckpoint = function (type, posX1, posY1, posZ1, posX2, posY2, posZ2, radius, red, green, blue, alpha, reserved) {
	return _in(0x17566883, 0x6b44cbb0, type, _fv(posX1), _fv(posY1), _fv(posZ1), _fv(posX2), _fv(posY2), _fv(posZ2), _fv(radius), red, green, blue, alpha, reserved, _r, _ri);
};

/**
 * Returns a formatted string (0x%x)
 * @param rgb :
 */
global.CreateColorString = function (rgb) {
	return _in(0xbcc2cfad, 0xea1aea6c, rgb, _r, _s);
};

/**
 * Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
 * @param url The initial URL to load in the browser.
 * @param width The width of the backing surface.
 * @param height The height of the backing surface.
 * @return A DUI object.
 */
global.CreateDui = function (url, width, height) {
	return _in(0x00000000, 0x23eaf899, _ts(url), width, height, _r, _rl);
};

global.CreateFakeMpGamerTag = function (ped, username, pointedClanTag, isRockstarClan, clanTag, p5) {
	return _in(0x53cb4b50, 0x2e1c57ea, ped, _ts(username), pointedClanTag, isRockstarClan, _ts(clanTag), p5, _r, _ri);
};

global.CreateForcedObject = function (x, y, z, p3, modelHash, p5) {
	return _in(0x0961a905, 0xafbc34c7, _fv(x), _fv(y), _fv(z), p3, _ch(modelHash), p5);
};

global.CreateGroup = function (unused) {
	return _in(0x90370ebe, 0x0fee1a3d, unused, _r, _ri);
};

global.CreateGuardZone = function (name) {
	return _in(0x8f9de756, 0x80275c9f, _ts(name));
};

global.CreateIncident = function (dispatchService, x, y, z, numUnits, radius, p7, p8) {
	return _in(0x3f892caf, 0x67444ae7, dispatchService, _fv(x), _fv(y), _fv(z), numUnits, _fv(radius), _i, p7, p8, _r);
};

global.CreateItemset = function (p0) {
	return _in(0xa1af1608, 0x3320065a, p0, _r, _ri);
};

global.CreateModelHide = function (x, y, z, radius, model, p5) {
	return _in(0x069848b3, 0xfb3c4426, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(model), p5);
};

global.CreateModelHideExcludingScriptObjects = function (x, y, z, radius, model, p5) {
	return _in(0xd136090a, 0x9aaab17d, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(model), p5);
};

global.CreateModelSwap = function (x, y, z, radius, originalModel, newModel, p6) {
	return _in(0x10b22183, 0x20b6f5ac, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(originalModel), _ch(newModel), p6);
};

global.CreateMpGamerTag = function (player, username, pointedClanTag, isRockstarClan, clanTag, p5) {
	return _in(0xd877af11, 0x2ad2b41b, player, _ts(username), pointedClanTag, isRockstarClan, _ts(clanTag), p5, _r, _ri);
};

global.CreateNewScriptedConversation = function (p0) {
	return _in(0xd2c91a0b, 0x572aae56, p0, _r, _ri);
};

global.CreateObject = function (modelHash, x, y, z, p4, p5, p6, p7, p8) {
	return _in(0x509d5878, 0xeb39e842, _ch(modelHash), _fv(x), _fv(y), _fv(z), p4, p5, p6, p7, p8, _r, _ri);
};

global.CreateObjectNoOffset = function (modelHash, x, y, z, p4, p5, p6, p7) {
	return _in(0x9a294b21, 0x38abb884, _ch(modelHash), _fv(x), _fv(y), _fv(z), p4, p5, p6, p7, _r, _ri);
};

global.CreatePatrolRoute = function () {
	return _in(0xaf8a443c, 0xcc8018dc);
};

global.CreatePed = function (modelHash, x, y, z, heading, p5, p6, p7, p8) {
	return _in(0xd49f9b09, 0x55c367de, _ch(modelHash), _fv(x), _fv(y), _fv(z), _fv(heading), p5, p6, p7, p8, _r, _ri);
};

global.CreatePedInsideVehicle = function (vehicle, modelHash, seatIndex, p3, p4, p5) {
	return _in(0x7dd95987, 0x4c1fd534, vehicle, _ch(modelHash), seatIndex, p3, p4, p5, _r, _ri);
};

global.CreatePedOnMount = function (mount, modelHash, index, p3, p4, p5, p6) {
	return _in(0xf89aa2bd, 0x01fc06b7, mount, _ch(modelHash), index, p3, p4, p5, p6, _r, _ri);
};

global.CreatePickup = function (pickupHash, x, y, z, flags, p5, p6, modelHash, p8, p9) {
	return _in(0xfba08c50, 0x3dd5fa58, _ch(pickupHash), _fv(x), _fv(y), _fv(z), flags, p5, p6, _ch(modelHash), p8, _fv(p9), _r, _ri);
};

global.CreatePickupRotate = function (pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flags, p8, p9, p10, modelHash, p12, p13) {
	return _in(0x89180472, 0x7e0a98b7, _ch(pickupHash), _fv(posX), _fv(posY), _fv(posZ), _fv(rotX), _fv(rotY), _fv(rotZ), flags, p8, p9, p10, _ch(modelHash), p12, _fv(p13), _r, _ri);
};

global.CreatePopzoneFromVolume = function (volume) {
	return _in(0x9ac1c64f, 0xe46b6d09, volume, _r, _ri);
};

global.CreatePortablePickup = function (pickupHash, x, y, z, placeOnGround, modelHash) {
	return _in(0x2eaf1fdb, 0x2fb55698, _ch(pickupHash), _fv(x), _fv(y), _fv(z), placeOnGround, _ch(modelHash), _r, _ri);
};

/**
 * Creates a blank runtime texture.
 * @param txd A handle to the runtime TXD to create the runtime texture in.
 * @param txn The name for the texture in the runtime texture dictionary.
 * @param width The width of the new texture.
 * @param height The height of the new texture.
 * @return A runtime texture handle.
 */
global.CreateRuntimeTexture = function (txd, txn, width, height) {
	return _in(0x00000000, 0xfec3766d, txd, _ts(txn), width, height, _r, _rl);
};

/**
 * Creates a runtime texture from a DUI handle.
 * @param txd A handle to the runtime TXD to create the runtime texture in.
 * @param txn The name for the texture in the runtime texture dictionary.
 * @param duiHandle The DUI handle returned from GET_DUI_HANDLE.
 * @return The runtime texture handle.
 */
global.CreateRuntimeTextureFromDuiHandle = function (txd, txn, duiHandle) {
	return _in(0x00000000, 0xb135472b, txd, txn, _ts(duiHandle), _r, _rl);
};

/**
 * Creates a runtime texture from the specified file in the current resource.
 * @param txd A handle to the runtime TXD to create the runtime texture in.
 * @param txn The name for the texture in the runtime texture dictionary.
 * @param fileName The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
 * @return A runtime texture handle.
 */
global.CreateRuntimeTextureFromImage = function (txd, txn, fileName) {
	return _in(0x00000000, 0x786d8bc3, txd, _ts(txn), _ts(fileName), _r, _rl);
};

/**
 * Creates a runtime texture dictionary with the specified name.
 * Example:
 * ```lua
 * local txd = CreateRuntimeTxd('meow')
 * ```
 * @param name The name for the runtime TXD.
 * @return A handle to the runtime TXD.
 */
global.CreateRuntimeTxd = function (name) {
	return _in(0x00000000, 0x1f3ac778, _ts(name), _r, _rl);
};

global.CreateTrackedPoint = function () {
	return _in(0xfb405cb3, 0x57c69cb9, _r, _ri);
};

global.CreateVarString = function (p0, p1, variadic) {
	return _in(0xfa925ac0, 0x0eb830b9, p0, _ts(p1), variadic, _r, _rl);
};

global.CreateVehicle = function (modelHash, x, y, z, heading, p5, p6, p7, p8) {
	return _in(0xaf35d0d2, 0x583051b0, _ch(modelHash), _fv(x), _fv(y), _fv(z), _fv(heading), p5, p6, p7, p8, _r, _ri);
};

global.CreateVehicle_2 = function (modelHash, x, y, z, heading, p5, p6, p7, p8, p9) {
	return _in(0x214651fb, 0x1dfeba89, _ch(modelHash), _fv(x), _fv(y), _fv(z), _fv(heading), p5, p6, p7, p8, p9, _r, _ri);
};

global.CreateVolumeAggregate = function () {
	return _in(0x59f6f5c1, 0xd129f106, _r, _ri);
};

global.CreateVolumeAggregateWithCustomName = function (name) {
	return _in(0x5d580de6, 0x398bb162, _ts(name), _r, _ri);
};

global.CreateVolumeBox = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xdf85637f, 0x22706891, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.CreateVolumeBoxWithCustomName = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xf68485c7, 0x495d848e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.CreateVolumeByHash = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x502022fa, 0x1af9dc86, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.CreateVolumeByHashWithCustomName = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x1f85e4ac, 0x774a201e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri);
};

global.CreateVolumeCylinder = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x0522d477, 0x4b82e3e6, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.CreateVolumeCylinderWithCustomName = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xdf1e350e, 0xddf06e59, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.DatabdingGetArrayCount = function (p0) {
	return _in(0xd23f5de0, 0x4fe717e2, p0, _r, _ri);
};

global.DatabindingAddDataBool = function (p0, p1, p2) {
	return _in(0x58baa5f6, 0x35da2ff4, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataBoolByHash = function (p0, p1, p2) {
	return _in(0xbc95d3ae, 0x2eca70d6, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataBoolFromPath = function (p0, p1, p2) {
	return _in(0x37bb86a7, 0x51148a6a, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataContainer = function (p0, p1) {
	return _in(0xeb4f9a35, 0x37eeabcd, p0, p1, _r, _ri);
};

global.DatabindingAddDataContainerByHash = function (p0, p1) {
	return _in(0x98bb1434, 0x5bb68257, p0, p1, _r, _ri);
};

global.DatabindingAddDataContainerFromPath = function (p0, p1) {
	return _in(0x0c827d17, 0x5f1292f4, p0, p1, _r, _ri);
};

global.DatabindingAddDataFloat = function (p0, p1, p2) {
	return _in(0x51542282, 0x73adb9a6, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataGangId = function (p0, p1, p2) {
	return _in(0x7d0f2014, 0xdb28dd00, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataHash = function (p0, p1, p2) {
	return _in(0x8538f120, 0x5d60eca6, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataHashByHash = function (p0, p1, p2) {
	return _in(0x8e173dfb, 0x041993c6, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataInt = function (p0, p1, p2) {
	return _in(0x307a3247, 0xc5457bde, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataIntByHash = function (p0, p1, p2) {
	return _in(0x267f9527, 0xf4350ade, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataString = function (p0, p1, p2) {
	return _in(0x617fca1c, 0x5652bbad, p0, p1, p2, _r, _ri);
};

global.DatabindingAddDataStringByHash = function (p0, p1, p2) {
	return _in(0xead09e76, 0xe22630c3, p0, p1, p2, _r, _ri);
};

global.DatabindingAddHashArray = function (p0, p1) {
	return _in(0x52f5f082, 0x78ea5d75, p0, p1, _r, _ri);
};

global.DatabindingAddStringArray = function (p0, p1) {
	return _in(0x1b23e062, 0x7bdbfe85, p0, p1, _r, _ri);
};

global.DatabindingAddUiItemList = function (p0, p1) {
	return _in(0xfe74fa57, 0xe0ce6824, p0, p1, _r, _ri);
};

global.DatabindingAddUiItemListByHash = function (p0, p1) {
	return _in(0x3c779928, 0x3325181b, p0, p1, _r, _ri);
};

global.DatabindingAddUiItemListFromPath = function (p0, p1) {
	return _in(0xdb5b9a47, 0x4148f699, p0, p1, _r, _ri);
};

global.DatabindingClearBindingArray = function (p0) {
	return _in(0xa1f15c1d, 0x03df802d, p0);
};

global.DatabindingGetDataContainerFromChildIndex = function (p0, p1) {
	return _in(0x0c827d17, 0x5f1292f3, p0, p1, _r, _ri);
};

global.DatabindingGetDataContainerFromPath = function (p0) {
	return _in(0x0c827d17, 0x5f1292f2, p0, _r, _ri);
};

global.DatabindingGetItemContextByIndex = function (p0, p1) {
	return _in(0xe96d7f9f, 0xefcc105f, p0, p1, _r, _ri);
};

global.DatabindingInsertUiItemToListFromContextHashAlias = function (p0, p1, p2, p3) {
	return _in(0xee97a05c, 0x05f16e41, p0, p1, p2, p3);
};

global.DatabindingInsertUiItemToListFromContextStringAlias = function (p0, p1, p2, p3) {
	return _in(0x5859e970, 0x794d92f3, p0, p1, p2, p3);
};

global.DatabindingInsertUiItemToListFromPathStringAlias = function (p0, p1, p2, p3) {
	return _in(0x5740774f, 0x608e4fc8, p0, p1, p2, p3);
};

global.DatabindingIsDataIdValid = function (p0) {
	return _in(0x1e713079, 0x3aaaab8d, p0, _r, _ri);
};

global.DatabindingReadDataBool = function (p0) {
	return _in(0x5eefbd4b, 0x6d7cd6eb, p0, _r, _ri);
};

global.DatabindingReadDataBoolFromParent = function (p0, p1) {
	return _in(0xa8ede09f, 0xe07bd77f, p0, p1, _r, _ri);
};

global.DatabindingReadDataBoolFromParentByHash = function (p0, p1) {
	return _in(0x4cdc3fdd, 0xfae07eb3, p0, p1, _r, _ri);
};

global.DatabindingReadDataHashStringFromParent = function (p0, p1) {
	return _in(0x9b535990, 0xb01b62de, p0, p1, _r, _ri);
};

global.DatabindingReadDataHashStringFromParentByHash = function (p0, p1) {
	return _in(0x1f43bc25, 0xa119b252, p0, p1, _r, _ri);
};

global.DatabindingReadDataInt = function (p0) {
	return _in(0x570784d7, 0x82597512, p0, _r, _ri);
};

global.DatabindingReadDataIntFromParent = function (p0, p1) {
	return _in(0xffc566a4, 0x801f6b40, p0, p1, _r, _ri);
};

global.DatabindingReadDataIntFromParentByHash = function (p0, p1) {
	return _in(0xb5f668b6, 0x48ec0970, p0, p1, _r, _ri);
};

global.DatabindingReadDataString = function (p0) {
	return _in(0x3d290b5f, 0xfa7c5151, p0, _r, _ri);
};

global.DatabindingReadDataStringFromParent = function (p0, p1) {
	return _in(0x6323ad27, 0x7c4a2afb, p0, p1, _r, _ri);
};

global.DatabindingRemoveBindingArrayItemByDataContextId = function (p0, p1) {
	return _in(0xf68b1726, 0xeaf7b285, p0, p1);
};

global.DatabindingRemoveDataEntry = function (p0) {
	return _in(0x0ae9938d, 0x0541f2da, p0);
};

global.DatabindingSetTemplatedUiItemHashAlias = function (p0, p1, p2) {
	return _in(0x0ae7138d, 0x0541f2de, p0, p1, p2);
};

global.DatabindingSetTemplatedUiItemListSize = function (p0, p1) {
	return _in(0xfe74fa57, 0xe0ce6825, p0, p1);
};

global.DatabindingWriteDataBool = function (p0, p1) {
	return _in(0xab888b4b, 0x91046770, p0, p1);
};

global.DatabindingWriteDataBoolFromParent = function (p0, p1, p2) {
	return _in(0xbdfe546e, 0x4c2d0e21, p0, p1, p2);
};

global.DatabindingWriteDataFloat = function (p0, p1) {
	return _in(0xdf504bec, 0xeb15da93, p0, p1);
};

global.DatabindingWriteDataHashString = function (p0, p1) {
	return _in(0xacdef586, 0xbd71b1fd, p0, p1);
};

global.DatabindingWriteDataHashStringFromParent = function (p0, p1, p2) {
	return _in(0x0971f04e, 0x1eaa7ae8, p0, p1, p2);
};

global.DatabindingWriteDataHashStringFromParentByHash = function (p0, p1, p2) {
	return _in(0x20209529, 0x689e0953, p0, p1, p2);
};

global.DatabindingWriteDataInt = function (p0, p1) {
	return _in(0x335c3f6b, 0x3766b8d9, p0, p1);
};

global.DatabindingWriteDataIntFromParent = function (p0, p1, p2) {
	return _in(0x9efa9823, 0x8ba08fc4, p0, p1, p2);
};

global.DatabindingWriteDataIntFromParentByHash = function (p0, p1, p2) {
	return _in(0x9d6e10a4, 0x1d6ed6ec, p0, p1, p2);
};

global.DatabindingWriteDataScriptVariables = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xab888b4b, 0x91046771, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.DatabindingWriteDataString = function (p0, p1) {
	return _in(0xe1bd342f, 0x2872aee9, p0, p1);
};

global.DatabindingWriteDataStringFromParent = function (p0, p1, p2) {
	return _in(0x4ff713b2, 0xf17a391e, p0, p1, p2);
};

global.DatafileCreate = function (index) {
	return _in(0x56b7291f, 0xb953dd51, index);
};

global.DatafileDelete = function (index) {
	return _in(0x9fb90eed, 0xea9f2d5c, index);
};

global.DatafileDeleteRequestedFile = function (p0) {
	return _in(0x604b8ed1, 0xa482f9df, p0, _r);
};

global.DatafileGetBool = function (p0, p1) {
	return _in(0x0d9138f3, 0xf8261df7, p0, p1, _r, _ri);
};

global.DatafileGetDataNodeIndex = function (p0, p1) {
	return _in(0x83c3ed53, 0x2b6e5d07, p0, p1, _r, _ri);
};

global.DatafileGetFileDict = function (index) {
	return _in(0xbbd8cf82, 0x3cae557c, index, _r, _s);
};

global.DatafileGetFloat = function (p0, p1) {
	return _in(0x7f034fc3, 0xe891b57a, p0, p1, _r, _ri);
};

global.DatafileGetHash = function (p0, p1) {
	return _in(0xfbff3ff2, 0xf5e80c0b, p0, p1, _r, _ri);
};

global.DatafileGetInt = function (p0, p1) {
	return _in(0xef44acc6, 0x57352a35, p0, p1, _r, _ri);
};

global.DatafileGetNumChildren = function (p0, p1) {
	return _in(0x6beb168d, 0x5195e7ab, p0, p1, _r, _ri);
};

global.DatafileGetNumNodes = function (p0) {
	return _in(0xdf01b1f7, 0xa886b42d, p0, _r, _ri);
};

global.DatafileGetString = function (p0, p1) {
	return _in(0x08eaf8e9, 0xf2eb7b2e, p0, p1, _r, _ri);
};

global.DatafileGetVector = function (p0, p1) {
	return _in(0x06fbf89b, 0x12da279c, p0, p1, _r, _ri);
};

global.DatafileHasLoadedFileData = function (p0) {
	return _in(0x17279c82, 0x0464cee0, p0, _r);
};

global.DatafileHasValidFileData = function (p0) {
	return _in(0xe6010038, 0x9e50eade, p0, _r);
};

global.DatafileRegisterQuery = function (p0, p1, p2) {
	return _in(0xae156a74, 0x7c39a741, p0, p1, p2, _r, _ri);
};

global.DatafileSelectActiveFile = function (p0, p1) {
	return _in(0x46102a09, 0x89ad80b5, p0, p1, _r);
};

global.DatafileUnload = function (p0) {
	return _in(0x129567f0, 0xc05f81b9, p0);
};

global.DatafileWatchRequestId = function (id) {
	return _in(0xa5834834, 0xca8fd7fc, id);
};

global.DeactivateInteriorEntitySet = function (p0, p1, p2) {
	return _in(0x33b81a2c, 0x07a51fff, p0, p1, p2);
};

global.DecorExistOn = function (entity, propertyName) {
	return _in(0xd9d1cdbf, 0x3464dcdf, entity, _ts(propertyName), _r);
};

global.DecorGetBool = function (entity, propertyName) {
	return _in(0xdef3f1b0, 0x71abb197, entity, _ts(propertyName), _r);
};

global.DecorGetFloat = function (entity, propertyName) {
	return _in(0xe5ff70cd, 0x842ca9d4, entity, _ts(propertyName), _r, _rf);
};

global.DecorGetInt = function (entity, propertyName) {
	return _in(0x44db6272, 0x7762fd9b, entity, _ts(propertyName), _r, _ri);
};

global.DecorGetUint8 = function (entity, propertyName) {
	return _in(0xb1682b24, 0x43f0540b, entity, _ts(propertyName), _r, _ri);
};

global.DecorIsRegisteredAsType = function (propertyName, type) {
	return _in(0x72355278, 0xc069f272, _ts(propertyName), type, _r);
};

global.DecorRegister = function (propertyName, type) {
	return _in(0x0b253d64, 0x4e3c36b3, _ts(propertyName), type);
};

global.DecorRegister_2 = function (propertyName, type, p2) {
	return _in(0x4587374f, 0x88b7f6c2, _ts(propertyName), type, p2);
};

global.DecorRemove = function (entity, propertyName) {
	return _in(0x2ba7f587, 0x7a088a1d, entity, _ts(propertyName), _r);
};

global.DecorRemoveAll = function (entity) {
	return _in(0x88942780, 0xe0adea42, entity, _r);
};

global.DecorSetBool = function (entity, propertyName, value) {
	return _in(0xfe26e460, 0x9b1c3772, entity, _ts(propertyName), value, _r);
};

global.DecorSetFloat = function (entity, propertyName, value) {
	return _in(0x238f8b0c, 0x1c7fe834, entity, _ts(propertyName), _fv(value), _r);
};

global.DecorSetInt = function (entity, propertyName, value) {
	return _in(0xe88f4d7f, 0x52a6090f, entity, _ts(propertyName), value, _r);
};

global.DecorSetString = function (entity, propertyName, value) {
	return _in(0x0671c1a3, 0xff7afdfc, entity, _ts(propertyName), _ts(value), _r);
};

global.DecorSetUint8 = function (entity, propertyName, value) {
	return _in(0x4bdc8315, 0x0d43772d, entity, _ts(propertyName), value, _r);
};

global.DeleteAllTrains = function () {
	return _in(0xa3120a13, 0x85f17ff7);
};

global.DeleteCheckpoint = function (checkpoint) {
	return _in(0x0ded5b0c, 0x8ebaae12, checkpoint);
};

global.DeleteChildRope = function (ropeId) {
	return _in(0xaa5d6b18, 0x88e4db20, ropeId);
};

global.DeleteEntity = function (entity) {
	return _in(0x4cd38c78, 0xbd19a497, _ii(entity) /* may be optional */);
};

global.DeleteFunctionReference = function (referenceIdentity) {
	return _in(0x00000000, 0x1e86f206, _ts(referenceIdentity));
};

global.DeleteIncident = function (incidentId) {
	return _in(0x5cfd0f0d, 0x6aae0aee, incidentId);
};

global.DeleteMissionTrain = function (train) {
	return _in(0x0d3630fb, 0x07e8b570, _ii(train) /* may be optional */);
};

global.DeleteObject = function (object) {
	return _in(0x93191426, 0x8722c263, _ii(object) /* may be optional */);
};

global.DeletePatrolRoute = function (patrolRoute) {
	return _in(0x7767dd9d, 0x65e91319, _ts(patrolRoute));
};

global.DeletePed = function (ped) {
	return _in(0xcc0ef140, 0xf99365c5, _ii(ped) /* may be optional */);
};

global.DeleteResourceKvp = function (key) {
	return _in(0x00000000, 0x7389b5df, _ts(key));
};

global.DeleteRope = function (ropeId) {
	return _in(0x52b48292, 0x81364649, _ii(ropeId) /* may be optional */);
};

global.DeleteVehicle = function (vehicle) {
	return _in(0xe20a909d, 0x8c4a70f8, _ii(vehicle) /* may be optional */);
};

global.DestroyAllCams = function (thisScriptCheck) {
	return _in(0x163600d6, 0xe136c9f8, thisScriptCheck);
};

global.DestroyCam = function (cam, thisScriptCheck) {
	return _in(0x4e67e0b6, 0xd7fd5145, cam, thisScriptCheck);
};

/**
 * Destroys a DUI browser.
 * @param duiObject The DUI browser handle.
 */
global.DestroyDui = function (duiObject) {
	return _in(0x00000000, 0xa085cb10, duiObject);
};

global.DestroyItemset = function (itemset) {
	return _in(0x712bc69f, 0x10549b92, itemset);
};

global.DestroyTrackedPoint = function (point) {
	return _in(0x37a59922, 0x109f8f1c, point);
};

global.DetachAnimScene = function (animScene) {
	return _in(0x6843a1aa, 0x3a336dff, animScene);
};

global.DetachAnimScenePreservingLocation = function (animScene) {
	return _in(0xa2507c49, 0x48c83d2e, animScene);
};

global.DetachCam = function (cam) {
	return _in(0x05b41ddb, 0xeb559556, cam);
};

global.DetachEntity = function (entity, p1, collision) {
	return _in(0x64cde9d6, 0xbf8ecad3, entity, p1, collision);
};

global.DetachPortablePickupFromPed = function (pickupObject) {
	return _in(0xcf463d1e, 0x9a0aecb1, pickupObject);
};

global.DetachRopeFromEntity = function (ropeId, entity) {
	return _in(0xbcf30269, 0x12a8647d, ropeId, entity);
};

global.DisableAllControlActions = function (padIndex) {
	return _in(0x5f4b6931, 0x816e599b, padIndex);
};

global.DisableAmbientLookAtRequests = function (p0, p1) {
	return _in(0x80038740, 0xc96ad17f, p0, p1);
};

global.DisableAttributeOverpower = function (p0, p1) {
	return _in(0xf8dac3d8, 0x5636c241, p0, p1);
};

global.DisableControlAction = function (padIndex, control, disable) {
	return _in(0xfe99b66d, 0x079cf6bc, padIndex, _ch(control), disable);
};

global.DisableFirstPersonCamThisFrame = function () {
	return _in(0x9c473089, 0xa934c930);
};

global.DisableFrontendThisFrame = function () {
	return _in(0x56ce42a5, 0x28156a67);
};

global.DisableGuardZone = function (name) {
	return _in(0x26d55869, 0x2b25dd95, _ts(name));
};

global.DisableInterior = function (interior, toggle) {
	return _in(0x3c2b92a1, 0xa07d4fce, interior, toggle);
};

global.DisablePedPainAudio = function (ped, toggle) {
	return _in(0xa9a41c1e, 0x940fb0e8, ped, toggle);
};

global.DisablePlayerFiring = function (player, toggle) {
	return _in(0x2970929f, 0xd5f9fc89, player, toggle);
};

global.DisableScriptBrainSet = function (brainSet) {
	return _in(0x3f44ea61, 0x3a5b2676, brainSet);
};

global.DisableVehicleFirstPersonCamThisFrame = function () {
	return _in(0xa5929c2e, 0x57ac90d1);
};

global.DisableVehicleWeapon = function (disabled, weaponHash, vehicle, owner) {
	return _in(0x94b1e71b, 0x144356a5, disabled, _ch(weaponHash), vehicle, owner);
};

global.DisplayHud = function (toggle) {
	return _in(0xd63fe3af, 0x9fb3d53f, toggle);
};

global.DisplayOnscreenKeyboard = function (p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) {
	return _in(0x04413111, 0x8d8db3cd, p0, _ts(windowTitle), _ts(p2), _ts(defaultText), _ts(defaultConcat1), _ts(defaultConcat2), _ts(defaultConcat3), maxInputLength);
};

global.DisplayRadar = function (toggle) {
	return _in(0x1b3da717, 0xb9aff828, toggle);
};

/**
 * Note: you must use _CREATE_VAR_STRING
 * @param text :
 * @param xPos :
 * @param yPos :
 */
global.DisplayText = function (text, xPos, yPos) {
	return _in(0xd79334a4, 0xbb99bad1, text, _fv(xPos), _fv(yPos));
};

global.DoScreenFadeIn = function (duration) {
	return _in(0x6a053cf5, 0x96f67df7, duration);
};

global.DoScreenFadeOut = function (duration) {
	return _in(0x40c719a5, 0xe410b9e4, duration);
};

global.DoesAnimDictExist = function (animDict) {
	return _in(0x537f44cb, 0x0d7f150d, _ts(animDict), _r);
};

global.DoesBlipExist = function (blip) {
	return _in(0xcd82fa17, 0x4080b3b1, blip, _r);
};

global.DoesCamExist = function (cam) {
	return _in(0x153ad457, 0x764fd704, cam, _r);
};

global.DoesEntityBelongToThisScript = function (entity, p1) {
	return _in(0x622b1980, 0xcbe13332, entity, p1, _r);
};

global.DoesEntityExist = function (entity) {
	return _in(0xd42bd6eb, 0x2e0f1677, entity, _r);
};

global.DoesEntityHaveDrawable = function (entity) {
	return _in(0x20487f0d, 0xa9af164a, entity, _r);
};

global.DoesEntityHavePhysics = function (entity) {
	return _in(0xa512b3f1, 0xb2a0b51c, entity, _r);
};

global.DoesExtraExist = function (vehicle, extraId) {
	return _in(0xaf5e7e9a, 0x7620ffb5, vehicle, extraId, _r);
};

global.DoesGroupExist = function (groupId) {
	return _in(0x7c6b0c22, 0xf9f40bbe, groupId, _r);
};

global.DoesNavmeshBlockingObjectExist = function (p0) {
	return _in(0x0eaeb0db, 0x4b132399, p0, _r);
};

global.DoesObjectOfTypeExistAtCoords = function (x, y, z, radius, hash, p5) {
	return _in(0xbfa48e2f, 0xf417213f, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(hash), p5, _r);
};

global.DoesParticleFxLoopedExist = function (ptfxHandle) {
	return _in(0x9dd5aff5, 0x61e88f2a, ptfxHandle, _r);
};

global.DoesPickupExist = function (pickup) {
	return _in(0xafc1ca75, 0xad4074d1, pickup, _r);
};

global.DoesPickupObjectExist = function (pickupObject) {
	return _in(0xd9efb6db, 0xf7daaea3, pickupObject, _r);
};

global.DoesPickupOfTypeExistInArea = function (pickupHash, x, y, z, radius) {
	return _in(0xf9c36251, 0xf6e48e33, _ch(pickupHash), _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.DoesPopMultiplierAreaExist = function (id) {
	return _in(0x03ba619c, 0x81a646b3, id, _r);
};

global.DoesRayfireMapObjectExist = function (object) {
	return _in(0x52af537a, 0x0c5b8aad, object, _r);
};

global.DoesRopeExist = function (ropeId) {
	return _in(0xfd5448be, 0x3111ed96, _ii(ropeId) /* may be optional */, _r);
};

global.DoesScenarioExistInArea = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x5a59271f, 0xfadd33c1, p0, p1, p2, p3, p4, p5, p6, _r);
};

global.DoesScenarioGroupExist = function (scenarioGroup) {
	return _in(0xf9034c13, 0x6c9e00d3, _ts(scenarioGroup), _r);
};

global.DoesScenarioGroupExistHash = function (scenarioGroup) {
	return _in(0x76e98b52, 0x369a289c, _ch(scenarioGroup), _r);
};

global.DoesScriptExist = function (scriptName) {
	return _in(0x552b171e, 0x3f69e5ae, _ts(scriptName), _r);
};

global.DoesScriptWithNameHashExist = function (scriptHash) {
	return _in(0xa34e8974, 0x9f628284, _ch(scriptHash), _r);
};

global.DoesScriptedCoverPointExistAtCoords = function (p0, p1, p2, p3) {
	return _in(0xa98b8e3c, 0x088e5a31, p0, p1, p2, p3, _r);
};

global.DoesStateMachineExist = function (p0) {
	return _in(0x5d15569c, 0x0febf757, p0, _r, _ri);
};

global.DoesStringExistInString = function (p0, p1) {
	return _in(0x9382d5d4, 0x3d2aa6ff, p0, p1, _r, _ri);
};

global.DoesTextLabelExist = function (label) {
	return _in(0x73c258c6, 0x8d6f55b6, _ts(label), _r);
};

global.DominoesBuyIn = function (p0) {
	return _in(0x399e6cd1, 0x2fc8ca89, p0, _r, _ri);
};

global.DominoesPlaceDomino = function (p0, p1) {
	return _in(0xb79a29b3, 0x3bf29ba5, p0, p1, _r, _ri);
};

global.DominoesRequestValidPlacements = function (p0) {
	return _in(0xe26aee7e, 0x67d9e21d, p0, _r, _ri);
};

global.DoorSystemGetDoorState = function (doorHash) {
	return _in(0x160aa1b3, 0x2f6139b8, _ch(doorHash), _r, _ri);
};

global.DoorSystemGetOpenRatio = function (doorHash) {
	return _in(0x65499865, 0xfca6e5ec, _ch(doorHash), _r, _rf);
};

global.DoorSystemSetAutomaticDistance = function (p0, p1) {
	return _in(0x9ba001cb, 0x45cbf627, p0, p1);
};

global.DoorSystemSetAutomaticRate = function (p0, p1) {
	return _in(0x03c27e13, 0xb42a0e82, p0, p1);
};

global.DoorSystemSetDoorState = function (p0, p1) {
	return _in(0x6bab9442, 0x830c7f53, p0, p1);
};

global.DoorSystemSetOpenRatio = function (p0, p1, p2) {
	return _in(0xb6e6fba9, 0x5c7324ac, p0, p1, p2);
};

global.DrawLightWithRange = function (posX, posY, posZ, colorR, colorG, colorB, range, intensity) {
	return _in(0xd2d9e04c, 0x0df927f4, _fv(posX), _fv(posY), _fv(posZ), colorR, colorG, colorB, _fv(range), _fv(intensity));
};

global.DrawRect = function (x, y, width, height, red, green, blue, alpha, p8, p9) {
	return _in(0x40522459, 0x1df02025, _fv(x), _fv(y), _fv(width), _fv(height), red, green, blue, alpha, p8, p9);
};

global.DrawSprite = function (textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha, p11) {
	return _in(0xc9884eca, 0xde94cb34, _ts(textureDict), _ts(textureName), _fv(screenX), _fv(screenY), _fv(width), _fv(height), _fv(heading), red, green, blue, alpha, p11);
};

global.DrawTvChannel = function (xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha) {
	return _in(0xc0a14554, 0x0254a840, _fv(xPos), _fv(yPos), _fv(xScale), _fv(yScale), _fv(rotation), red, green, blue, alpha);
};

global.DuplicateFunctionReference = function (referenceIdentity) {
	return _in(0x00000000, 0xf4e2079d, _ts(referenceIdentity), _r, _s);
};

global.EnableAttributeOverpower = function (p0, p1, p2, p3) {
	return _in(0x4af5a4c7, 0xb9157d14, p0, p1, p2, p3);
};

global.EnableControlAction = function (padIndex, control, enable) {
	return _in(0x35122025, 0x5d64c155, padIndex, _ch(control), enable);
};

global.EnableDispatchService = function (dispatchService, toggle) {
	return _in(0x50e52637, 0xef70ef77, dispatchService, toggle);
};

global.EnableMovieSubtitles = function (toggle) {
	return _in(0x6fc9b065, 0x229c0787, toggle);
};

global.EnableScriptBrainSet = function (brainSet) {
	return _in(0x1cf6e5c6, 0x750eadbd, brainSet);
};

global.EndFindKvp = function (handle) {
	return _in(0x00000000, 0xb3210203, handle);
};

global.EndFindObject = function (findHandle) {
	return _in(0x00000000, 0xdeda4e50, findHandle);
};

global.EndFindPed = function (findHandle) {
	return _in(0x00000000, 0x9615c2ad, findHandle);
};

global.EndFindPickup = function (findHandle) {
	return _in(0x00000000, 0x3c407d53, findHandle);
};

global.EndFindVehicle = function (findHandle) {
	return _in(0x00000000, 0x9227415a, findHandle);
};

global.EndPetrolTrailDecals = function () {
	return _in(0x0e126aae, 0x933f3b56);
};

global.EndSrl = function () {
	return _in(0x1ce71fb3, 0x3ca079fe);
};

global.EnterFlowBlock = function (p0, p1) {
	return _in(0x3b751972, 0x0c9dcb45, p0, p1, _r, _ri);
};

global.EventManagerGetEvent = function (hash, eventData) {
	return _in(0xe24e9572, 0x94241444, _ch(hash), _ii(eventData) /* may be optional */, _r);
};

global.EventManagerIsEventPending = function (hash) {
	return _in(0x67ed5a79, 0x63f2f722, _ch(hash), _r);
};

global.EventManagerPeekEvent = function (hash, eventData) {
	return _in(0x90237103, 0xf27f7937, _ch(hash), _ii(eventData) /* may be optional */, _r);
};

global.EventManagerPopEvent = function (hash) {
	return _in(0x8e8a2369, 0xf48ec839, _ch(hash));
};

global.EventQueueIsEmpty = function (p0) {
	return _in(0x402b5d7d, 0x269ff796, p0, _r, _ri);
};

global.EventQueuePop = function (p0) {
	return _in(0xd87df294, 0xb049211d, p0);
};

global.ExecuteCommand = function (commandString) {
	return _in(0x00000000, 0x561c060b, _ts(commandString));
};

/**
 * This native is not implemented.
 * @param data 
 * @param objectId 
 * @param tree 
 */
global.ExperimentalLoadCloneCreate = function (data, objectId, tree) {
	return _in(0x00000000, 0xd2cb95a3, _ts(data), objectId, _ts(tree), _r, _ri);
};

/**
 * This native is not implemented.
 * @param entity 
 * @param data 
 */
global.ExperimentalLoadCloneSync = function (entity, data) {
	return _in(0x00000000, 0x6bc189ac, entity, _ts(data));
};

/**
 * This native is not implemented.
 * @param entity 
 */
global.ExperimentalSaveCloneCreate = function (entity) {
	return _in(0x00000000, 0x9d65cad2, entity, _r, _s);
};

/**
 * This native is not implemented.
 * @param entity 
 */
global.ExperimentalSaveCloneSync = function (entity) {
	return _in(0x00000000, 0x38d19210, entity, _r, _s);
};

global.ExplodePedHead = function (ped, weaponHash) {
	return _in(0x2d05ced3, 0xa38d0f3a, ped, _ch(weaponHash));
};

global.ExplodeVehicle = function (vehicle, isAudible, isInvisible, p3) {
	return _in(0x75dced9e, 0xec5769d7, vehicle, isAudible, isInvisible, p3);
};

global.FadeAnimSceneAudioIn = function (animScene, p1) {
	return _in(0xa41351ea, 0x2a18a0ad, animScene, _fv(p1));
};

global.FadeAnimSceneAudioOut = function (animScene, p1) {
	return _in(0x323e3ad7, 0x72ba5d57, animScene, _fv(p1));
};

global.FindAllAttachedCarriableEntities = function (ped, itemset) {
	return _in(0xb5ace8b2, 0x3a438ec0, ped, itemset);
};

global.FindAnimEventPhase = function (animDictionary, animName, p2) {
	return _in(0x42718cc5, 0x59bd7776, _ts(animDictionary), _ts(animName), _ts(p2), _i, _i, _r);
};

global.FindFirstObject = function (outEntity) {
	return _in(0x00000000, 0xfaa6cb5d, _ii(outEntity) /* may be optional */, _r, _ri);
};

global.FindFirstPed = function (outEntity) {
	return _in(0x00000000, 0xfb012961, _ii(outEntity) /* may be optional */, _r, _ri);
};

global.FindFirstPickup = function (outEntity) {
	return _in(0x00000000, 0x3ff9d340, _ii(outEntity) /* may be optional */, _r, _ri);
};

global.FindFirstVehicle = function (outEntity) {
	return _in(0x00000000, 0x15e55694, _ii(outEntity) /* may be optional */, _r, _ri);
};

global.FindKvp = function (handle) {
	return _in(0x00000000, 0xbd7bebc5, handle, _r, _s);
};

global.FindNextObject = function (findHandle, outEntity) {
	return _in(0x00000000, 0x4e129dbf, findHandle, _ii(outEntity) /* may be optional */, _r);
};

global.FindNextPed = function (findHandle, outEntity) {
	return _in(0x00000000, 0xab09b548, findHandle, _ii(outEntity) /* may be optional */, _r);
};

global.FindNextPickup = function (findHandle, outEntity) {
	return _in(0x00000000, 0x4107ef0f, findHandle, _ii(outEntity) /* may be optional */, _r);
};

global.FindNextVehicle = function (findHandle, outEntity) {
	return _in(0x00000000, 0x8839120d, findHandle, _ii(outEntity) /* may be optional */, _r);
};

global.Floor = function (value) {
	return _in(0xf34ee736, 0xcf047844, _fv(value), _r, _ri);
};

global.ForceCleanup = function (cleanupFlags) {
	return _in(0x768c017f, 0xb878e4f4, cleanupFlags);
};

global.ForceCleanupForAllThreadsWithThisName = function (name, cleanupFlags) {
	return _in(0xdaacaf8b, 0x687f2353, _ts(name), cleanupFlags);
};

global.ForceCleanupForThreadWithThisId = function (id, cleanupFlags) {
	return _in(0xf4c9512a, 0x2f0a3031, id, cleanupFlags);
};

global.ForceCloseTextInputBox = function () {
	return _in(0xfbbf5943, 0xe4c2c992);
};

global.ForceEntityAiAndAnimationUpdate = function (p0, p1) {
	return _in(0x4c9e9647, 0x3d4f1a88, p0, p1);
};

global.ForceLightningFlash = function () {
	return _in(0x369db5b2, 0x510fa080);
};

global.ForceLightningFlashAtCoords = function (x, y, z) {
	return _in(0x67943537, 0xd179597c, _fv(x), _fv(y), _fv(z));
};

global.ForcePedMotionState = function (ped, motionStateHash, p2, p3, p4) {
	return _in(0xf28965d0, 0x4f570dca, ped, _ch(motionStateHash), p2, p3, p4, _r);
};

global.ForcePickupRegenerate = function (p0) {
	return _in(0x758a5c1b, 0x3b1e1990, p0);
};

global.ForceRoomForEntity = function (entity, interior, roomHashKey) {
	return _in(0xbc29a989, 0x4c976945, entity, interior, _ch(roomHashKey));
};

global.ForceRoomForGameViewport = function (interiorID, roomHashKey) {
	return _in(0x115b4aa8, 0xfb28ab43, interiorID, _ch(roomHashKey));
};

global.ForceSonarBlipsThisFrame = function () {
	return _in(0xee1c7ba6, 0x9bb74b08, _r, _ri);
};

global.ForceVehicleEngineAudio = function (vehicle, audioName) {
	return _in(0x4f0c4139, 0x26060b38, vehicle, _ts(audioName));
};

global.FreezeEntityPosition = function (entity, toggle) {
	return _in(0x7d9efb7a, 0xd6b19754, entity, toggle);
};

global.FreezePedCameraRotation = function (ped) {
	return _in(0xff287323, 0xb0e2c69a, ped);
};

/**
 * Returns all player indices for 'active' physical players known to the client.
 * The data returned adheres to the following layout:
 * ```
 * [127, 42, 13, 37]
 * ```
 * @return An object containing a list of player indices.
 */
global.GetActivePlayers = function () {
	return global.msgpack_unpack(_in(0x00000000, 0xcf143fb9, _r, _ro));
};

global.GetActiveVehicleMissionType = function (vehicle) {
	return _in(0x534aeba6, 0xe5ed4cab, vehicle, _r, _ri);
};

global.GetAmmoInClip = function (ped, weaponHash) {
	return _in(0x2e120224, 0x8937775c, ped, _i, _ch(weaponHash), _r);
};

global.GetAmmoInPedWeapon = function (ped, weaponHash) {
	return _in(0x015a5221, 0x36d7f951, ped, _ch(weaponHash), _r, _ri);
};

global.GetAngleBetween_2dVectors = function (x1, y1, x2, y2) {
	return _in(0xd0dfe1c4, 0x86097bbb, _fv(x1), _fv(y1), _fv(x2), _fv(y2), _r, _rf);
};

global.GetAnimDuration = function (animDict, animName) {
	return _in(0x9ffaf494, 0x0a54cc09, _ts(animDict), _ts(animName), _r, _rf);
};

global.GetAnimInitialOffsetPosition = function (animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) {
	return _in(0xbe22b26d, 0xd764c040, _ts(animDict), _ts(animName), _fv(x), _fv(y), _fv(z), _fv(xRot), _fv(yRot), _fv(zRot), _fv(p8), p9, _r, _rv);
};

global.GetAnimInitialOffsetRotation = function (animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) {
	return _in(0x4b805e60, 0x46ee9e47, _ts(animDict), _ts(animName), _fv(x), _fv(y), _fv(z), _fv(xRot), _fv(yRot), _fv(zRot), _fv(p8), p9, _r, _rv);
};

global.GetAnimalTuningBoolParam = function (animal, p1) {
	return _in(0x1c199382, 0x4a396603, animal, p1, _r);
};

global.GetAnimalTuningFloatParam = function (animal, p1) {
	return _in(0x4bc3ecfd, 0xa0297e27, animal, p1, _r, _rf);
};

global.GetAttributeBaseRank = function (p0, p1) {
	return _in(0x147149f2, 0xe909323c, p0, p1, _r, _ri);
};

global.GetAttributeBonusRank = function (p0, p1) {
	return _in(0x0efa71f4, 0xb4330e04, p0, p1, _r, _ri);
};

/**
 * Gets the ped's core value on a scale of 0 to 100. The coreIndex is as follows:
 * - health = 0,
 * - stamina = 1,
 * - deadeye = 2
 * @param ped :
 * @param coreIndex :
 */
global.GetAttributeCoreValue = function (ped, coreIndex) {
	return _in(0x36731ac0, 0x41289bb1, ped, coreIndex, _r, _ri);
};

global.GetAttributePoints = function (p0, p1) {
	return _in(0x219da04b, 0xaa9cb065, p0, p1, _r, _ri);
};

global.GetAttributeRank = function (p0, p1) {
	return _in(0xa4c8e23e, 0x29040de0, p0, p1, _r, _ri);
};

global.GetBenchmarkIterationsFromCommandLine = function () {
	return _in(0x22fc52cf, 0x470cc98d, _r, _ri);
};

global.GetBenchmarkPassFromCommandLine = function () {
	return _in(0x9297dacf, 0x3a2cdff7, _r, _ri);
};

global.GetBenchmarkTime = function () {
	return _in(0x3f3172fe, 0xae3afe1c, _r, _rf);
};

global.GetBestPedWeapon = function (ped, p1, p2) {
	return _in(0x8483e98e, 0x8b888ae2, ped, p1, p2, _r, _ri);
};

global.GetBitsInRange = function (_var, rangeStart, rangeEnd) {
	return _in(0x68e1352a, 0xf48f905d, _var, rangeStart, rangeEnd, _r, _ri);
};

global.GetBlipCoords = function (blip) {
	return _in(0x201c3197, 0x97bda603, blip, _r, _rv);
};

global.GetBlipFromEntity = function (entity) {
	return _in(0x6d2c41a8, 0xbd6d6fd0, entity, _r, _ri);
};

global.GetBlockOfPlayerBits = function (p0, p1) {
	return _in(0xfa3b530a, 0x5cc693d5, p0, p1, _r, _ri);
};

global.GetCamCoord = function (cam) {
	return _in(0x6b12f11c, 0x2a9f0344, cam, _r, _rv);
};

global.GetCamFov = function (cam) {
	return _in(0x8101d32a, 0x0a6b0f60, cam, _r, _rf);
};

/**
 * Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
 * @param camera 
 * @param rightVector 
 * @param forwardVector 
 * @param upVector 
 * @param position 
 */
global.GetCamMatrix = function (camera) {
	return _in(0x00000000, 0x8f57a89d, camera, _v, _v, _v, _v);
};

global.GetCamRot = function (cam, rotationOrder) {
	return _in(0x9bf96b57, 0x254e7889, cam, rotationOrder, _r, _rv);
};

global.GetCamSplinePhase = function (cam) {
	return _in(0x095edcd2, 0x4d90033a, cam, _r, _rf);
};

global.GetCauseOfMostRecentForceCleanup = function () {
	return _in(0x84e8e29e, 0xbd4a46d2, _r, _ri);
};

global.GetClockDayOfMonth = function () {
	return _in(0xdf2fd796, 0xc54480a5, _r, _ri);
};

global.GetClockDayOfWeek = function () {
	return _in(0x4dd02d4c, 0x7fb30076, _r, _ri);
};

global.GetClockHours = function () {
	return _in(0xc82cf208, 0xc2b19199, _r, _ri);
};

global.GetClockMinutes = function () {
	return _in(0x4e162231, 0xb823dbbf, _r, _ri);
};

global.GetClockMonth = function () {
	return _in(0x2d44e8fc, 0x79eab1ac, _r, _ri);
};

global.GetClockSeconds = function () {
	return _in(0xb6101abe, 0x62b5f080, _r, _ri);
};

global.GetClockYear = function () {
	return _in(0xe136dca2, 0x8c4a48ba, _r, _ri);
};

global.GetClosestFirePos = function (x, y, z) {
	return _in(0xb646fb65, 0x7f448261, _v, _fv(x), _fv(y), _fv(z), _r);
};

global.GetClosestObjectOfType = function (x, y, z, radius, modelHash, isMission, p6, p7) {
	return _in(0xe143fa22, 0x49364369, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(modelHash), isMission, p6, p7, _r, _ri);
};

global.GetClosestPed = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xc33ab876, 0xa77f8164, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r);
};

global.GetClosestRoad = function (x, y, z, p3, p4, p10) {
	return _in(0x132f52bb, 0xa570fe92, _fv(x), _fv(y), _fv(z), _fv(p3), p4, _v, _v, _i, _i, _f, p10, _r, _ri);
};

global.GetClosestVehicle = function (x, y, z, radius, modelHash, flags) {
	return _in(0x52f45d03, 0x3645181b, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(modelHash), flags, _r, _ri);
};

global.GetClosestVehicleNode = function (x, y, z, nodeType, p5, p6) {
	return _in(0x240a1869, 0x0ae96513, _fv(x), _fv(y), _fv(z), _v, nodeType, _fv(p5), _fv(p6), _r);
};

global.GetClosestVehicleNodeWithHeading = function (x, y, z, nodeType, p6, p7) {
	return _in(0x23cffd4c, 0xcb243354, _fv(x), _fv(y), _fv(z), _v, _f, nodeType, _fv(p6), p7, _r);
};

global.GetCloudTimeAsInt = function () {
	return _in(0x9a73240b, 0x49945c76, _r, _ri);
};

global.GetCombatFloat = function (ped, p1) {
	return _in(0x52dff8a1, 0x0508090a, ped, p1, _r, _rf);
};

global.GetControlNormal = function (padIndex, control) {
	return _in(0xec3c9b8d, 0x5327b563, padIndex, _ch(control), _r, _rf);
};

global.GetControlUnboundNormal = function (padIndex, control) {
	return _in(0x5b84d09c, 0xec5209c5, padIndex, _ch(control), _r, _rf);
};

global.GetControlValue = function (padIndex, control) {
	return _in(0xd95e79e8, 0x686d2c27, padIndex, _ch(control), _r, _ri);
};

global.GetConvar = function (varName, default_) {
	return _in(0x00000000, 0x6ccd2564, _ts(varName), _ts(default_), _r, _s);
};

global.GetConvarInt = function (varName, default_) {
	return _in(0x00000000, 0x935c0ab2, _ts(varName), default_, _r, _ri);
};

global.GetCurrentLanguage = function () {
	return _in(0xdb917da5, 0xc6835fcc, _r, _ri);
};

global.GetCurrentPedVehicleWeapon = function (ped, weaponHash) {
	return _in(0x1017582b, 0xcd3832dc, ped, _ii(weaponHash) /* may be optional */, _r);
};

global.GetCurrentPedWeapon = function (ped, p2, p3, p4) {
	return _in(0x3a87e44b, 0xb9a01d54, ped, _i, p2, p3, p4, _r);
};

global.GetCurrentPedWeaponEntityIndex = function (ped, p1) {
	return _in(0x3b390a93, 0x9af0b5fc, ped, p1, _r, _ri);
};

/**
 * Returns the name of the currently executing resource.
 * @return The name of the resource.
 */
global.GetCurrentResourceName = function () {
	return _in(0x00000000, 0xe5e9ebbb, _r, _s);
};

global.GetCurrentScriptedConversationLine = function (p0) {
	return _in(0x480357ee, 0x890c295a, p0, _r, _ri);
};

/**
 * Returns the peer address of the remote game server that the user is currently connected to.
 * @return The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.
 */
global.GetCurrentServerEndpoint = function () {
	return _in(0x00000000, 0xea11bfba, _r, _s);
};

global.GetDateAndTimeFromUnixEpoch = function (unixEpoch, timeStructure) {
	return _in(0xac97af97, 0xfa68e5d5, unixEpoch, _ii(timeStructure) /* may be optional */);
};

global.GetDeadPedPickupCoords = function (ped, p1, p2) {
	return _in(0xcd5003b0, 0x97200f36, ped, _fv(p1), _fv(p2), _r, _rv);
};

global.GetDefaultAttributePointsNeededForRank = function (p0, p1, p2) {
	return _in(0x94a7f191, 0xdb49a44d, p0, p1, p2, _r, _ri);
};

global.GetDefaultAttributeRank = function (p0, p1) {
	return _in(0x958dd43d, 0x41f89a47, p0, p1, _r, _ri);
};

global.GetDefaultMaxAttributeRank = function (p0, p1) {
	return _in(0x7c059c55, 0xad940cb4, p0, p1, _r, _ri);
};

global.GetDefaultRelationshipGroupHash = function (modelHash) {
	return _in(0x3cc4a718, 0xc258bdd0, _ch(modelHash), _r, _ri);
};

global.GetDisabledControlNormal = function (padIndex, control) {
	return _in(0x11e65974, 0xa982637c, padIndex, _ch(control), _r, _rf);
};

global.GetDisabledControlUnboundNormal = function (padIndex, control) {
	return _in(0x4f8a26a8, 0x90fd62fb, padIndex, _ch(control), _r, _rf);
};

global.GetDistanceBetweenCoords = function (x1, y1, z1, x2, y2, z2, useZ) {
	return _in(0x0be7f4e3, 0xcdbafb28, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), useZ, _r, _rf);
};

/**
 * Returns the NUI window handle for a specified DUI browser object.
 * @param duiObject The DUI browser handle.
 * @return The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
 */
global.GetDuiHandle = function (duiObject) {
	return _in(0x00000000, 0x1655d41d, duiObject, _r, _s);
};

global.GetEntityAlpha = function (entity) {
	return _in(0x1bb50162, 0x4faf2bea, entity, _r, _ri);
};

global.GetEntityAttachedTo = function (entity) {
	return _in(0x56d71388, 0x8a566481, entity, _r, _ri);
};

global.GetEntityBoneIndexByName = function (entity, boneName) {
	return _in(0xbaca8fe9, 0xc76c124e, entity, _ts(boneName), _r, _ri);
};

global.GetEntityCollisionDisabled = function (entity) {
	return _in(0xaa2fadd3, 0x0f45a9da, entity, _r);
};

global.GetEntityCoords = function (entity, p1, p2) {
	return _in(0xa86d5f06, 0x9399f44d, entity, p1, p2, _r, _rv);
};

global.GetEntityForwardVector = function (entity) {
	return _in(0x2412d9c0, 0x5bb09b97, _ch(entity), _r, _rv);
};

global.GetEntityForwardX = function (entity) {
	return _in(0xdb0954e9, 0x960f6457, entity, _r, _rf);
};

global.GetEntityForwardY = function (entity) {
	return _in(0x9a5c073e, 0xcbda7ee7, entity, _r, _rf);
};

global.GetEntityHeading = function (entity) {
	return _in(0xc230dd95, 0x6e2f5507, entity, _r, _rf);
};

global.GetEntityHealth = function (entity) {
	return _in(0x82368787, 0xea73c0f7, entity, _r, _ri);
};

global.GetEntityHeight = function (entity, X, Y, Z, atTop, inWorldCoords) {
	return _in(0x296debc8, 0x4474b375, entity, _fv(X), _fv(Y), _fv(Z), atTop, inWorldCoords, _r, _rf);
};

global.GetEntityHeightAboveGround = function (entity) {
	return _in(0x0d3b5bae, 0xa08f63e9, entity, _r, _rf);
};

global.GetEntityInsideExplosionArea = function (explosionType, x1, y1, z1, x2, y2, z2, radius) {
	return _in(0x8002ddab, 0x58594d78, explosionType, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _fv(radius), _r, _ri);
};

global.GetEntityLodDist = function (entity) {
	return _in(0xdf240d0c, 0x2a948683, entity, _r, _ri);
};

global.GetEntityMatrix = function (entity) {
	return _in(0x3a9b1120, 0xaf13fbf2, entity, _v, _v, _v, _v);
};

global.GetEntityMaxHealth = function (p0, p1) {
	return _in(0x15d75760, 0x6d170c3c, p0, p1, _r, _ri);
};

global.GetEntityModel = function (entity) {
	return _in(0xda76a9f3, 0x9210d365, entity, _r, _ri);
};

global.GetEntityPitch = function (entity) {
	return _in(0xef355abe, 0xff7f5005, entity, _r, _rf);
};

global.GetEntityPlayerIsFreeAimingAt = function (player, entity) {
	return _in(0xa6817c11, 0x0b830ead, player, _ii(entity) /* may be optional */, _r);
};

global.GetEntityPopulationType = function (entity) {
	return _in(0xade28862, 0xb6d7b85b, entity, _r, _ri);
};

global.GetEntityProofs = function (entity) {
	return _in(0x6cf0dad7, 0xfa1088ea, entity, _r, _ri);
};

global.GetEntityRoll = function (entity) {
	return _in(0xbf966536, 0xfa8b6879, entity, _r, _rf);
};

global.GetEntityRotation = function (entity, rotationOrder) {
	return _in(0xe09caf86, 0xc32cb48f, entity, rotationOrder, _r, _rv);
};

global.GetEntitySpeed = function (entity) {
	return _in(0xfb6ba510, 0xa533df81, entity, _r, _rf);
};

global.GetEntitySpeedVector = function (entity, relative) {
	return _in(0xf2db0981, 0x6a419dc5, entity, relative, _r, _rv);
};

global.GetEntitySubmergedLevel = function (entity) {
	return _in(0x4a77c3f7, 0x3fd9e831, entity, _r, _rf);
};

global.GetEntityType = function (entity) {
	return _in(0x97f696ac, 0xa466b4e0, entity, _r, _ri);
};

global.GetEntityUprightValue = function (entity) {
	return _in(0x56398be6, 0x5160c3be, entity, _r, _rf);
};

global.GetEntityVelocity = function (p0, p1) {
	return _in(0x4805d2b1, 0xd8cf94a9, p0, p1, _r, _rv);
};

global.GetEventAtIndex = function (eventGroup, eventIndex) {
	return _in(0xa85e6144, 0x30eff816, eventGroup, eventIndex, _r, _ri);
};

global.GetEventData = function (eventGroup, eventIndex, argStructSize) {
	return _in(0x57ec5fa4, 0xd4d6afca, eventGroup, eventIndex, _i, argStructSize, _r);
};

global.GetEventExists = function (eventGroup, eventIndex) {
	return _in(0xc9f59c0a, 0x710ecd34, eventGroup, eventIndex, _r);
};

global.GetFinalRenderedCamCoord = function () {
	return _in(0x5352e025, 0xec2b416f, _r, _rv);
};

global.GetFinalRenderedCamFov = function () {
	return _in(0x04af7797, 0x1e508f6a, _r, _rf);
};

global.GetFinalRenderedCamRot = function (rotationOrder) {
	return _in(0x602685bd, 0x85dd26ca, rotationOrder, _r, _rv);
};

global.GetFirstPersonAimCamZoomFactor = function () {
	return _in(0xb4132ca1, 0xb0ee1365, _r, _rf);
};

global.GetFrameCount = function () {
	return _in(0x77dfa958, 0xfcf100c1, _r, _ri);
};

global.GetFrameTime = function () {
	return _in(0x5e720229, 0x14ce3c38, _r, _rf);
};

/**
 * Return example: 1207.69_dev_pc
 */
global.GetGameBuildString = function () {
	return _in(0x05a5f662, 0xad35c573, _r, _s);
};

global.GetGameTimer = function () {
	return _in(0x4f67e8ec, 0xa7d3f667, _r, _ri);
};

global.GetGameplayCamCoord = function () {
	return _in(0x59532020, 0x0b98596e, _r, _rv);
};

global.GetGameplayCamFov = function () {
	return _in(0xf6a96e5a, 0xceec6e50, _r, _rf);
};

global.GetGameplayCamRelativeHeading = function () {
	return _in(0xc4abf536, 0x048998aa, _r, _rf);
};

global.GetGameplayCamRelativePitch = function () {
	return _in(0x99aadebb, 0xa803f827, _r, _rf);
};

global.GetGameplayCamRot = function (rotationOrder) {
	return _in(0x0252d2b5, 0x582957a6, rotationOrder, _r, _rv);
};

global.GetGlobalBlockCanBeAccessed = function (index) {
	return _in(0x42a7eb5c, 0x814c2de0, index, _r);
};

global.GetGpsBlipRouteFound = function () {
	return _in(0x869daacb, 0xbe9fa006, _r);
};

global.GetGpsBlipRouteLength = function () {
	return _in(0xbbb45c3c, 0xf5c8aa85, _r, _ri);
};

global.GetGroundZAndNormalFor_3dCoord = function (x, y, z) {
	return _in(0x2a29ca9a, 0x6319e6ab, _fv(x), _fv(y), _fv(z), _f, _v, _r);
};

global.GetGroundZFor_3dCoord = function (p0, p1, p2, p3, p4) {
	return _in(0x24fa4267, 0xbb8d2431, p0, p1, p2, p3, p4, _r);
};

global.GetGroupSize = function (groupID) {
	return _in(0x8de69fe3, 0x5ca09a45, groupID, _i, _i);
};

global.GetHashKey = function (string) {
	return _in(0xfd340785, 0xadf8cfb7, _ts(string), _r, _ri);
};

global.GetHashOfThisScriptName = function () {
	return _in(0xbc2c927f, 0x5c264960, _r, _ri);
};

global.GetHashOfThread = function (threadId) {
	return _in(0x724cb89d, 0x35b283d0, threadId, _r, _ri);
};

global.GetHeadingFromVector_2d = function (dx, dy) {
	return _in(0x38d5202f, 0xf9271c62, _fv(dx), _fv(dy), _r, _rf);
};

global.GetHeightmapBottomZForPosition = function (left, right) {
	return _in(0x336511a3, 0x4f2e5185, _fv(left), _fv(right), _r, _rf);
};

global.GetHudScreenPositionFromWorldPosition = function (worldX, worldY, worldZ) {
	return _in(0xb39c8162, 0x8ef10b42, _fv(worldX), _fv(worldY), _fv(worldZ), _f, _f, _r);
};

global.GetIdOfThisThread = function () {
	return _in(0x55525c34, 0x6bef6960, _r, _ri);
};

global.GetIndexedItemInItemset = function (itemset, p1) {
	return _in(0x275a2e2c, 0x0fab7612, itemset, p1, _r, _ri);
};

global.GetIndexedScenarioPointIndexInItemset = function (itemset, p1) {
	return _in(0x9fc3cdb5, 0xce815901, itemset, p1, _r, _ri);
};

global.GetInstanceId = function () {
	return _in(0x00000000, 0x9f1c4383, _r, _ri);
};

global.GetInteriorAtCoords = function (x, y, z) {
	return _in(0xcdd36c9e, 0x5c469070, _fv(x), _fv(y), _fv(z), _r, _ri);
};

global.GetInteriorAtCoordsWithType = function (x, y, z, interiorType) {
	return _in(0xaad6170a, 0xa33b13c0, _fv(x), _fv(y), _fv(z), _ts(interiorType), _r, _ri);
};

global.GetInteriorAtCoordsWithTypehash = function (x, y, z, typeHash) {
	return _in(0x3543aea1, 0x816d1d2b, _fv(x), _fv(y), _fv(z), _ch(typeHash), _r, _ri);
};

global.GetInteriorEntitiesExtents = function (interiorId) {
	return _in(0x00000000, 0x322b1192, interiorId, _f, _f, _f, _f, _f, _f);
};

global.GetInteriorFromCollision = function (x, y, z) {
	return _in(0x5054d1a5, 0x218fa696, _fv(x), _fv(y), _fv(z), _r, _ri);
};

global.GetInteriorFromEntity = function (entity) {
	return _in(0xb4176898, 0x57646f61, entity, _r, _ri);
};

global.GetInteriorPortalCornerPosition = function (interiorId, portalIndex, cornerIndex) {
	return _in(0x00000000, 0xf772bb2c, interiorId, portalIndex, cornerIndex, _f, _f, _f);
};

global.GetInteriorPortalCount = function (interiorId) {
	return _in(0x00000000, 0xd05bb8b1, interiorId, _r, _ri);
};

global.GetInteriorPortalFlag = function (interiorId, portalIndex) {
	return _in(0x00000000, 0xc74da47c, interiorId, portalIndex, _r, _ri);
};

global.GetInteriorPortalRoomFrom = function (interiorId, portalIndex) {
	return _in(0x00000000, 0xaa9c141d, interiorId, portalIndex, _r, _ri);
};

global.GetInteriorPortalRoomTo = function (interiorId, portalIndex) {
	return _in(0x00000000, 0x3f47f0e8, interiorId, portalIndex, _r, _ri);
};

global.GetInteriorPosition = function (interiorId) {
	return _in(0x00000000, 0x77a435b0, interiorId, _f, _f, _f);
};

global.GetInteriorRoomCount = function (interiorId) {
	return _in(0x00000000, 0xa2737c2c, interiorId, _r, _ri);
};

global.GetInteriorRoomExtents = function (interiorId, roomIndex) {
	return _in(0x00000000, 0xf9e795dd, interiorId, roomIndex, _f, _f, _f, _f, _f, _f);
};

global.GetInteriorRoomFlag = function (interiorId, roomIndex) {
	return _in(0x00000000, 0x6b7af743, interiorId, roomIndex, _r, _ri);
};

global.GetInteriorRoomIndexByHash = function (interiorId, roomHash) {
	return _in(0x00000000, 0xe0ee05f8, interiorId, roomHash, _r, _ri);
};

global.GetInteriorRoomName = function (interiorId, roomIndex) {
	return _in(0x00000000, 0x11755df2, interiorId, roomIndex, _r, _s);
};

global.GetInteriorRoomTimecycle = function (interiorId, roomIndex) {
	return _in(0x00000000, 0x82ba3f88, interiorId, roomIndex, _r, _ri);
};

global.GetInteriorRotation = function (interiorId) {
	return _in(0x00000000, 0x5a039998, interiorId, _f, _f, _f, _f);
};

global.GetIsLoadingScreenActive = function () {
	return _in(0x71d4bf58, 0x90659b0c, _r);
};

global.GetIsTaskActive = function (ped, taskIndex) {
	return _in(0xb0760331, 0xc7aa4155, ped, taskIndex, _r);
};

global.GetIsThreatIndicatorCapableRadarShown = function () {
	return _in(0x2cc24a2a, 0x7a1489c4, _r, _ri);
};

global.GetIsThreatIndicatorOn = function () {
	return _in(0xfc2e0a5e, 0x9ed4e1b4, _r, _ri);
};

global.GetIsWaypointRecordingLoaded = function (name) {
	return _in(0xcb4e8be8, 0xa0063c5d, _ts(name), _r);
};

global.GetItemsetSize = function (itemset) {
	return _in(0x55f2e375, 0xac6018a9, itemset, _r, _ri);
};

global.GetJackTarget = function (ped) {
	return _in(0x5486a79d, 0x9fbd342d, ped, _r, _ri);
};

global.GetKeyForEntityInRoom = function (entity) {
	return _in(0x27d7b6f7, 0x9e1f4603, entity, _r, _ri);
};

global.GetLabelText = function (labelName) {
	return _in(0xcfedccad, 0x3c5ba90d, _ts(labelName), _r, _s);
};

/**
 * Returns the label text given the hash.
 * @param labelHash :
 */
global.GetLabelTextByHash = function (labelHash) {
	return _in(0xbd5dd5ea, 0xe2b6ce14, _ch(labelHash), _r, _s);
};

global.GetLabelText_2 = function (label) {
	return _in(0x3429670f, 0x9b9ef2d3, _ts(label), _r, _s);
};

global.GetLastDrivenVehicle = function () {
	return _in(0xa94f3e0a, 0xb9695e19, _r, _ri);
};

global.GetLastPedInVehicleSeat = function (vehicle, seatIndex) {
	return _in(0x74583b19, 0xfeeafda7, vehicle, seatIndex, _r, _ri);
};

global.GetLengthOfLiteralString = function (string) {
	return _in(0x481fbf58, 0x8b0b76db, _ts(string), _r, _ri);
};

global.GetLengthOfLiteralStringInBytes = function (string) {
	return _in(0xdc5ad6b7, 0xab8184f5, _ts(string), _r, _ri);
};

global.GetMainPlayerBlipId = function () {
	return _in(0x5cd2889b, 0x2b381d45, _r, _ri);
};

/**
 * Returns the zoom level data by index from mapzoomdata.meta file.
 * @param index Zoom level index.
 * @param zoomScale fZoomScale value.
 * @param zoomSpeed fZoomSpeed value.
 * @param scrollSpeed fScrollSpeed value.
 * @param tilesX vTiles X.
 * @param tilesY vTiles Y.
 * @return A boolean indicating TRUE if the data was received successfully.
 */
global.GetMapZoomDataLevel = function (index) {
	return _in(0x00000000, 0x1363a998, index, _f, _f, _f, _f, _f, _r);
};

global.GetMaxAmmo = function (ped, weaponHash, ammo) {
	return _in(0xdc16122c, 0x7a20c933, ped, _ch(weaponHash), _ii(ammo) /* may be optional */, _r);
};

global.GetMaxAmmoInClip = function (ped, weaponHash, p2) {
	return _in(0xa38dcffc, 0xea8962fa, ped, _ch(weaponHash), p2, _r, _ri);
};

global.GetMaxAttributePoints = function (p0, p1) {
	return _in(0x223bf310, 0xf854871c, p0, p1, _r, _ri);
};

global.GetMaxAttributeRank = function (p0, p1) {
	return _in(0x704674a0, 0x535a471d, p0, p1, _r, _ri);
};

global.GetMaxNumNetworkObjects = function () {
	return _in(0xc7be3352, 0x16b5ec7c, _r, _ri);
};

global.GetMaxNumNetworkPeds = function () {
	return _in(0x0c1f7d49, 0xc39d2289, _r, _ri);
};

global.GetMaxNumNetworkPickups = function () {
	return _in(0xa7283506, 0x4dd63e4c, _r, _ri);
};

global.GetMaxNumNetworkVehicles = function () {
	return _in(0x0afce529, 0xf69b21ff, _r, _ri);
};

global.GetMaxWantedLevel = function () {
	return _in(0xd04cfad1, 0xe2b7984a, _r, _ri);
};

global.GetMeleeTargetForPed = function (ped) {
	return _in(0x18a3e9ee, 0x1297fd39, ped, _r, _ri);
};

global.GetMillisecondsPerGameMinute = function () {
	return _in(0xe4cb8d12, 0x6501ec52, _r, _ri);
};

global.GetMissionFlag = function () {
	return _in(0xb15cd1cf, 0x58771de1, _r);
};

global.GetModelDimensions = function (modelHash) {
	return _in(0xdcb8ddd5, 0xd054a7e7, _ch(modelHash), _v, _v);
};

global.GetMount = function (ped) {
	return _in(0xe7e11b8d, 0xcbed1058, ped, _r, _ri);
};

global.GetMusicPlaytime = function () {
	return _in(0xe7a0d23d, 0xc414507b, _r, _ri);
};

global.GetNamedRendertargetRenderId = function (name) {
	return _in(0xb6762a85, 0xee29aa60, _ts(name), _r, _ri);
};

global.GetNearestPlayerToEntity = function (p0, p1, p2) {
	return _in(0x990e294f, 0xc387fb88, p0, p1, p2, _r, _ri);
};

global.GetNearestPlayerToEntityOnTeam = function (p0, p1, p2, p3) {
	return _in(0xb2c30c3b, 0x4aff718c, p0, p1, p2, p3, _r, _ri);
};

global.GetNetworkTime = function () {
	return _in(0x7a5487fe, 0x9faa6b48, _r, _ri);
};

global.GetNetworkTimeAccurate = function () {
	return _in(0x89023fbb, 0xf9200e9f, _r, _ri);
};

global.GetNoLoadingScreen = function () {
	return _in(0x323daf00, 0x687e0f28, _r);
};

global.GetNthClosestVehicleNode = function (x, y, z, nthClosest, unknown1, unknown2, unknown3) {
	return _in(0x5a6d8df6, 0xfbc5d0c4, _fv(x), _fv(y), _fv(z), nthClosest, _v, unknown1, unknown2, unknown3, _r);
};

global.GetNthClosestVehicleNodeFavourDirection = function (x, y, z, desiredX, desiredY, desiredZ, nthClosest, nodetype, p10, p11) {
	return _in(0x2fac235a, 0x6062f14a, _fv(x), _fv(y), _fv(z), _fv(desiredX), _fv(desiredY), _fv(desiredZ), nthClosest, _v, _f, nodetype, p10, p11, _r);
};

global.GetNthClosestVehicleNodeId = function (x, y, z, nth, nodetype, p5, p6) {
	return _in(0x11644300, 0x8e5cefc3, _fv(x), _fv(y), _fv(z), nth, nodetype, _fv(p5), _fv(p6), _r, _ri);
};

global.GetNthClosestVehicleNodeIdWithHeading = function (x, y, z, nthClosest, outHeading, p6, p7, p8) {
	return _in(0x4114eaa8, 0xa7f7766d, _fv(x), _fv(y), _fv(z), nthClosest, _v, _fv(outHeading), p6, _fv(p7), _fv(p8), _r);
};

global.GetNthClosestVehicleNodeWithHeading = function (x, y, z, nthClosest, unknown2, unknown3, unknown4) {
	return _in(0x591b40d4, 0x390db54a, _fv(x), _fv(y), _fv(z), nthClosest, _v, _f, _i, unknown2, _fv(unknown3), _fv(unknown4), _r);
};

global.GetNuiCursorPosition = function () {
	return _in(0x00000000, 0xbdba226f, _i, _i);
};

global.GetNumCreatedMissionObjects = function (p0) {
	return _in(0x12b6281b, 0x6c6706c0, p0, _r, _ri);
};

global.GetNumCreatedMissionPeds = function (p0) {
	return _in(0xcb215c4b, 0x56a7fae7, p0, _r, _ri);
};

global.GetNumCreatedMissionVehicles = function (p0) {
	return _in(0x0cd9ab83, 0x489430ea, p0, _r, _ri);
};

global.GetNumModelsInPopulationSet = function (p0) {
	return _in(0xa1e3171e, 0xd0e47564, p0, _r, _ri);
};

global.GetNumReservedMissionObjects = function (p0) {
	return _in(0xaa81b5f1, 0x0bc43ac2, p0, _r, _ri);
};

global.GetNumReservedMissionPeds = function (p0) {
	return _in(0x1f13d5ae, 0x5cb17e17, p0, _r, _ri);
};

global.GetNumReservedMissionVehicles = function (p0) {
	return _in(0xcf3a9659, 0x06452031, p0, _r, _ri);
};

/**
 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
 * See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
 * @param resourceName The resource name.
 * @param metadataKey The key to look up in the resource manifest.
 */
global.GetNumResourceMetadata = function (resourceName, metadataKey) {
	return _in(0x00000000, 0x0776e864, _ts(resourceName), _ts(metadataKey), _r, _ri);
};

global.GetNumResources = function () {
	return _in(0x00000000, 0x0863f27b, _r, _ri);
};

global.GetNumberOfEvents = function (eventGroup) {
	return _in(0x5ce8de59, 0x09565748, eventGroup, _r, _ri);
};

global.GetNumberOfFiresInRange = function (x, y, z, radius) {
	return _in(0xf9617bc6, 0xfae61e08, _fv(x), _fv(y), _fv(z), _fv(radius), _r, _ri);
};

global.GetNumberOfFreeStacksOfThisSize = function (stackSize) {
	return _in(0x40dc2907, 0xa9697ef7, stackSize, _r, _ri);
};

global.GetNumberOfMicrosecondsSinceLastCall = function () {
	return _in(0xb0ce5e5e, 0xd8bb3581, _r, _ri);
};

global.GetNumberOfReferencesOfScriptWithNameHash = function (scriptHash) {
	return _in(0x8e34c953, 0x364a76dd, _ch(scriptHash), _r, _ri);
};

global.GetNumberOfStreamingRequests = function () {
	return _in(0x30cccc4d, 0x88e654ca, _r, _ri);
};

global.GetObjectFragmentDamageHealth = function (p0, p1) {
	return _in(0xb6fbfd07, 0x9b8d0596, p0, p1, _r, _rf);
};

global.GetObjectIndexFromEntityIndex = function (entity) {
	return _in(0x280bbe56, 0x01eaa983, entity, _r, _ri);
};

global.GetObjectOffsetFromCoords = function (xPos, yPos, zPos, heading, xOffset, yOffset, zOffset) {
	return _in(0x163e252d, 0xe035a133, _fv(xPos), _fv(yPos), _fv(zPos), _fv(heading), _fv(xOffset), _fv(yOffset), _fv(zOffset), _r, _rv);
};

global.GetOffsetFromEntityGivenWorldCoords = function (entity, posX, posY, posZ) {
	return _in(0x497c6b1a, 0x2c9ae69c, entity, _fv(posX), _fv(posY), _fv(posZ), _r, _rv);
};

global.GetOffsetFromEntityInWorldCoords = function (entity, offsetX, offsetY, offsetZ) {
	return _in(0x1899f328, 0xb0e12848, entity, _fv(offsetX), _fv(offsetY), _fv(offsetZ), _r, _rv);
};

global.GetOnscreenKeyboardResult = function () {
	return _in(0xafb4cf58, 0xa4a292b1, _r, _s);
};

global.GetPedAccuracy = function (ped) {
	return _in(0x37f4ad56, 0xecbc0cd6, ped, _r, _ri);
};

global.GetPedAmmoByType = function (ped, ammoType) {
	return _in(0x39d22031, 0x557946c1, ped, ammoType, _r, _ri);
};

global.GetPedAmmoTypeFromWeapon = function (ped, weaponHash) {
	return _in(0x7fead38b, 0x326b9f74, ped, _ch(weaponHash), _r, _ri);
};

global.GetPedAsGroupLeader = function (groupID) {
	return _in(0x5cce68db, 0xd5fe93ec, groupID, _r, _ri);
};

global.GetPedAsGroupMember = function (groupID, memberNumber) {
	return _in(0x51455483, 0xcf23ed97, groupID, memberNumber, _r, _ri);
};

global.GetPedBoneCoords = function (ped, boneId, offsetX, offsetY, offsetZ) {
	return _in(0x17c07fc6, 0x40e86b4e, ped, boneId, _fv(offsetX), _fv(offsetY), _fv(offsetZ), _r, _rv);
};

global.GetPedBoneIndex = function (ped, boneId) {
	return _in(0x3f428d08, 0xbe5aae31, ped, boneId, _r, _ri);
};

global.GetPedCauseOfDeath = function (ped) {
	return _in(0x16ffe42a, 0xb2d2dc59, ped, _r, _ri);
};

global.GetPedCombatMovement = function (ped) {
	return _in(0xdea92412, 0xfcaeb3f5, ped, _r, _ri);
};

global.GetPedConfigFlag = function (ped, flagId, p2) {
	return _in(0x7ee53118, 0xc892b513, ped, flagId, p2, _r);
};

global.GetPedDefensiveAreaPosition = function (ped, p1) {
	return _in(0x3c06b878, 0x6dd94cd1, ped, p1, _r, _rv);
};

global.GetPedDesiredMoveBlendRatio = function (ped) {
	return _in(0x8517d4a6, 0xca8513ed, ped, _r, _rf);
};

/**
 * A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
 * @param ped The target ped
 * @return Returns ped's eye colour, or -1 if fails to get.
 */
global.GetPedEyeColor = function (ped) {
	return _in(0x00000000, 0xa47b860f, ped, _r, _ri);
};

/**
 * A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
 * @param ped The target ped
 * @param index Face feature index
 * @return Returns ped's face feature value, or 0.0 if fails to get.
 */
global.GetPedFaceFeature = function (ped, index) {
	return _in(0x00000000, 0xba352add, ped, index, _r, _rf);
};

global.GetPedGroupIndex = function (ped) {
	return _in(0xf162e133, 0xb4e7a675, ped, _r, _ri);
};

/**
 * A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
 * @param ped The target ped
 * @return Returns ped's primary hair colour.
 */
global.GetPedHairColor = function (ped) {
	return _in(0x00000000, 0xa3ea2893, ped, _r, _ri);
};

/**
 * A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
 * @param ped The target ped
 * @return Returns ped's secondary hair colour.
 */
global.GetPedHairHighlightColor = function (ped) {
	return _in(0x00000000, 0x4b087305, ped, _r, _ri);
};

/**
 * A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
 * @param ped The target ped
 * @param index Overlay index
 * @param overlayValue Overlay value pointer
 * @param colourType Colour type pointer
 * @param firstColour First colour pointer
 * @param secondColour Second colour pointer
 * @param overlayOpacity Opacity pointer
 * @return Returns ped's head overlay data.
 */
global.GetPedHeadOverlayData = function (ped, index) {
	return _in(0x00000000, 0xc46ee605, ped, index, _i, _i, _i, _i, _f, _r);
};

global.GetPedInVehicleSeat = function (vehicle, seatIndex) {
	return _in(0xbb40dd22, 0x70b65366, vehicle, seatIndex, _r, _ri);
};

global.GetPedIndexFromEntityIndex = function (entity) {
	return _in(0x0f16d042, 0xbd640ea3, entity, _r, _ri);
};

global.GetPedLastDamageBone = function (ped, outBone) {
	return _in(0xd75960f6, 0xbd9ea49c, ped, _ii(outBone) /* may be optional */, _r);
};

global.GetPedLastWeaponImpactCoord = function (ped, coords) {
	return _in(0x6c4d0409, 0xba1a2bc2, ped, _v, _r);
};

global.GetPedMaxHealth = function (ped) {
	return _in(0x4700a416, 0xe8324ef3, ped, _r, _ri);
};

global.GetPedModelNameInPopulationSet = function (p0, p1) {
	return _in(0x3eafa1c5, 0x33b7139e, p0, p1, _r, _ri);
};

global.GetPedMoney = function (ped) {
	return _in(0x3f69145b, 0xba87bae7, ped, _r, _ri);
};

global.GetPedNearbyPeds = function (p0, p1, p2, p3) {
	return _in(0x23f8f5fc, 0x7e8c4a6b, p0, p1, p2, p3, _r, _ri);
};

global.GetPedNearbyVehicles = function (ped, sizeAndVehs) {
	return _in(0xcff869cb, 0xfa210d82, ped, _ii(sizeAndVehs) /* may be optional */, _r, _ri);
};

global.GetPedRelationshipGroupDefaultHash = function (ped) {
	return _in(0x42fdd0f0, 0x17b1e38e, ped, _r, _ri);
};

global.GetPedRelationshipGroupHash = function (ped) {
	return _in(0x7dbdd048, 0x62d95f04, ped, _r, _ri);
};

global.GetPedResetFlag = function (ped, flagId) {
	return _in(0xaf9e59b1, 0xb1fbf2a0, ped, flagId, _r);
};

global.GetPedSourceOfDeath = function (ped) {
	return _in(0x93c8b64d, 0xeb84728c, ped, _r, _ri);
};

global.GetPedStealthMovement = function (ped) {
	return _in(0x7c2ac9ca, 0x66575fbf, ped, _r);
};

global.GetPedTimeOfDeath = function (ped) {
	return _in(0x1e98817b, 0x311ae98a, ped, _r, _ri);
};

global.GetPedType = function (ped) {
	return _in(0xff059e1e, 0x4c01e63c, ped, _r, _ri);
};

global.GetPedWaypointDistance = function (p0) {
	return _in(0xe6a877c6, 0x4caf1bc5, p0, _r, _rf);
};

global.GetPedWaypointOverrideSpeed = function (p0) {
	return _in(0xd39a2f3e, 0x7fcaff08, p0, _r, _ri);
};

global.GetPedWaypointProgress = function (ped) {
	return _in(0x2720aaa7, 0x5001e094, ped, _r, _ri);
};

global.GetPedsJacker = function (ped) {
	return _in(0x9b128dc3, 0x6c1e04cf, ped, _r, _ri);
};

global.GetPickupCoords = function (pickup) {
	return _in(0x225b8b35, 0xc88029b3, pickup, _r, _rv);
};

global.GetPickupHash = function (pickupHash) {
	return _in(0x5eaad83f, 0x8cfb4575, _ch(pickupHash), _r, _ri);
};

global.GetPickupObject = function (pickup) {
	return _in(0x5099bc55, 0x630b25ae, pickup, _r, _ri);
};

global.GetPlayerCurrentStealthNoise = function (player) {
	return _in(0xd7ecc25e, 0x176ecba5, player, _r, _rf);
};

global.GetPlayerFromServerId = function (serverId) {
	return _in(0x00000000, 0x344ea166, serverId, _r, _ri);
};

global.GetPlayerGroup = function (player) {
	return _in(0x9bab3181, 0x5159abcf, player, _r, _ri);
};

global.GetPlayerIndex = function () {
	return _in(0x47e385b0, 0xd957c8d4, _r, _ri);
};

global.GetPlayerInvincible = function (player) {
	return _in(0x0cbbcb2c, 0xcfa7dc4e, player, _r);
};

global.GetPlayerName = function (player) {
	return _in(0x7124fd9a, 0xc0e01ba0, player, _r, _s);
};

global.GetPlayerPed = function (player) {
	return _in(0x275f255e, 0xd201b937, player, _r, _ri);
};

global.GetPlayerPedIsFollowing = function (ped) {
	return _in(0x6a3975de, 0xa89f9a17, ped, _r, _ri);
};

global.GetPlayerPedScriptIndex = function (player) {
	return _in(0x5c880f90, 0x56d784c8, player, _r, _ri);
};

global.GetPlayerServerId = function (player) {
	return _in(0x00000000, 0x4d97bcc7, player, _r, _ri);
};

global.GetPlayerTargetEntity = function (player, entity) {
	return _in(0xae663ddd, 0x99c8a670, player, _ii(entity) /* may be optional */, _r);
};

global.GetPlayerTeam = function (player) {
	return _in(0xb464eb6a, 0x40c7975b, player, _r, _ri);
};

global.GetPlayerWantedLevel = function (player) {
	return _in(0xabc532f9, 0x098bfd9d, player, _r, _ri);
};

global.GetPlayersLastVehicle = function () {
	return _in(0x2f96e772, 0x0b0b19ea, _r, _ri);
};

global.GetPositionOfVehicleRecordingAtTime = function (p0, p1, p2) {
	return _in(0x1a00961a, 0x1be94e5e, p0, _fv(p1), _ts(p2), _r, _rv);
};

global.GetPosixTime = function () {
	return _in(0x90338ad4, 0xa784e455, _i, _i, _i, _i, _i, _i);
};

global.GetProjectileNearPed = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x9578986a, 0x6105a6ad, p0, p1, p2, p3, p4, p5, p6, _r);
};

global.GetProjectileNearPedCoords = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xd73c960a, 0x681052df, p0, p1, p2, p3, p4, p5, _r);
};

global.GetRainLevel = function () {
	return _in(0x931b5f4c, 0xc130224b, _r, _rf);
};

global.GetRandomEventFlag = function () {
	return _in(0x924d54e5, 0x698ae3e0, _r);
};

global.GetRandomFloatInRange = function (startRange, endRange) {
	return _in(0xe29f927a, 0x961f8aaa, _fv(startRange), _fv(endRange), _r, _rf);
};

global.GetRandomIntInRange = function (startRange, endRange) {
	return _in(0xd53343aa, 0x4fb7dd28, startRange, endRange, _r, _ri);
};

global.GetRandomModelFromPopulationSet = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x6b12ed8c, 0x77e8567b, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.GetRandomVehicleNode = function (x, y, z, radius, p4, p5, p6) {
	return _in(0x93e0db84, 0x40b73a7d, _fv(x), _fv(y), _fv(z), _fv(radius), p4, p5, p6, _v, _i, _r);
};

global.GetRayfireMapObject = function (x, y, z, radius, name) {
	return _in(0xb48fced8, 0x98292e52, _fv(x), _fv(y), _fv(z), _fv(radius), _ts(name), _r, _ri);
};

global.GetRayfireMapObjectAnimPhase = function (object) {
	return _in(0x260ee4fd, 0xbdf4db01, object, _r, _rf);
};

/**
 * Returns all commands that are registered in the command system.
 * The data returned adheres to the following layout:
 * ```
 * [
 * {
 * "name": "cmdlist"
 * },
 * {
 * "name": "command1"
 * }
 * ]
 * ```
 * @return An object containing registered commands.
 */
global.GetRegisteredCommands = function () {
	return global.msgpack_unpack(_in(0x00000000, 0xd4bef069, _r, _ro));
};

global.GetRelationshipBetweenGroups = function (group1, group2) {
	return _in(0x9e6b7006, 0x1662ae5c, _ch(group1), _ch(group2), _r, _ri);
};

global.GetRelationshipBetweenPeds = function (ped1, ped2) {
	return _in(0xeba5ad3a, 0x0eaf7121, ped1, ped2, _r, _ri);
};

global.GetRenderingCam = function () {
	return _in(0x03a8931e, 0xcc8015d6, _r, _ri);
};

global.GetResourceByFindIndex = function (findIndex) {
	return _in(0x00000000, 0x387246b7, findIndex, _r, _s);
};

global.GetResourceKvpFloat = function (key) {
	return _in(0x00000000, 0x35bdceea, _ts(key), _r, _rf);
};

global.GetResourceKvpInt = function (key) {
	return _in(0x00000000, 0x557b586a, _ts(key), _r, _ri);
};

global.GetResourceKvpString = function (key) {
	return _in(0x00000000, 0x5240da5a, _ts(key), _r, _s);
};

/**
 * Gets the metadata value at a specified key/index from a resource's manifest.
 * See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
 * @param resourceName The resource name.
 * @param metadataKey The key in the resource manifest.
 * @param index The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].
 */
global.GetResourceMetadata = function (resourceName, metadataKey, index) {
	return _in(0x00000000, 0x964bab1d, _ts(resourceName), _ts(metadataKey), index, _r, _s);
};

/**
 * Returns the current state of the specified resource.
 * @param resourceName The name of the resource.
 * @return The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
 */
global.GetResourceState = function (resourceName) {
	return _in(0x00000000, 0x4039b485, _ts(resourceName), _r, _s);
};

global.GetRoomKeyFromEntity = function (entity) {
	return _in(0x076e46e0, 0xeb52afc6, entity, _r, _ri);
};

global.GetRopeLastVertexCoord = function (ropeId) {
	return _in(0x21bb0fbd, 0x3e217c2d, ropeId, _r, _rv);
};

global.GetRopeVertexCoord = function (ropeId, vertex) {
	return _in(0xea61ca8e, 0x80f09e4d, ropeId, vertex, _r, _rv);
};

global.GetRopeVertexCount = function (ropeId) {
	return _in(0x3655f544, 0xcd30f0b5, ropeId, _r, _ri);
};

global.GetRotationOfVehicleRecordingAtTime = function (p0, p1, p2) {
	return _in(0x61787dd2, 0x8b8cc0d5, p0, _fv(p1), _ii(p2) /* may be optional */, _r, _rv);
};

/**
 * Gets the height of the specified runtime texture.
 * @param tex A handle to the runtime texture.
 * @return The height in pixels.
 */
global.GetRuntimeTextureHeight = function (tex) {
	return _in(0x00000000, 0x3574aace, tex, _r, _ri);
};

/**
 * Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
 * @param tex A handle to the runtime texture.
 * @return The row pitch in bytes.
 */
global.GetRuntimeTexturePitch = function (tex) {
	return _in(0x00000000, 0xca0a085f, tex, _r, _ri);
};

/**
 * Gets the width of the specified runtime texture.
 * @param tex A handle to the runtime texture.
 * @return The width in pixels.
 */
global.GetRuntimeTextureWidth = function (tex) {
	return _in(0x00000000, 0xc9f55558, tex, _r, _ri);
};

global.GetSafeCoordForPed = function (x, y, z, onGround, flags) {
	return _in(0xb61c8e87, 0x8a4199ca, _fv(x), _fv(y), _fv(z), onGround, _v, flags, _r);
};

global.GetSafePickupCoords = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6e16bc25, 0x03ff1ff0, p0, p1, p2, p3, p4, p5, _r, _rv);
};

global.GetScreenCoordFromWorldCoord = function (worldX, worldY, worldZ) {
	return _in(0xcb50d7af, 0xcc8b0ec6, _fv(worldX), _fv(worldY), _fv(worldZ), _f, _f, _r);
};

global.GetScreenResolution = function () {
	return _in(0x66773c92, 0x835d0909, _i, _i);
};

/**
 * 0 = invalid
 * 1 = CEntity
 * 2 = 0x2A72C62B
 * 3 = 0xE63A0D71
 * 4 = 0x9FDE1AC6
 * 5 = 0x6D766374
 * 6 = 0x27ACC35B
 * 7 = CScriptedCoverPoint
 * 8 = ptfxScriptInfo
 * 9 = CPed
 * 10 = CVehicle
 * 11 = CObject
 * 12 = CItemSet
 * 13 = 0x830B8272
 * @param handle :
 */
global.GetScriptHandleType = function (handle) {
	return _in(0xdc8d2ff4, 0x78df9553, handle, _r, _ri);
};

global.GetScriptTaskStatus = function (p0, p1, p2) {
	return _in(0x77f1beb8, 0x863288d5, p0, p1, p2, _r, _ri);
};

global.GetScriptTimeWithinFrameInMicroseconds = function () {
	return _in(0x63219768, 0xc586667c, _r, _ri);
};

global.GetScriptedCoverPointCoords = function (coverpoint) {
	return _in(0x594a1028, 0xfc2a3e85, coverpoint, _r, _rv);
};

global.GetSeatPedIsTryingToEnter = function (ped) {
	return _in(0x6f4c85ac, 0xd641bcd2, ped, _r, _ri);
};

global.GetSecondsSinceBaseYear = function () {
	return _in(0x78fd8be8, 0x12e436b2, _r, _ri);
};

global.GetSequenceProgress = function (ped) {
	return _in(0x00a9010c, 0xfe1e3533, ped, _r, _ri);
};

global.GetShapeTestResult = function (rayHandle) {
	return _in(0xede8ac7c, 0x5108fb1d, rayHandle, _i /* actually bool */, _v, _v, _i, _r, _ri);
};

global.GetSnowLevel = function () {
	return _in(0x1e5d7270, 0x41be1709, _r, _rf);
};

global.GetSoundId = function () {
	return _in(0x430386fe, 0x9bf80b45, _r, _ri);
};

global.GetSpeciesTuningFloatParam = function (p0, p1, p2) {
	return _in(0xe1084896, 0x21422f91, _ch(p0), p1, p2, _r, _rf);
};

global.GetStateOfRayfireMapObject = function (object) {
	return _in(0x899ba936, 0x634a322e, object, _r, _ri);
};

global.GetStatusOfTextureDownload = function (p0) {
	return _in(0x8bd6c6de, 0xa20e82c6, p0, _r, _ri);
};

global.GetSystemTime = function () {
	return _in(0xbe7f2254, 0x17e35a7c, _r, _ri);
};

global.GetTaskMoveNetworkEvent = function (ped, eventName) {
	return _in(0xb4f47213, 0xdf45a64c, ped, _ts(eventName), _r);
};

global.GetTaskMoveNetworkState = function (ped) {
	return _in(0x717e4d1f, 0x2048376d, ped, _r, _s);
};

global.GetTemperatureAtCoords = function (x, y, z) {
	return _in(0xb98b78c3, 0x768af6e0, _fv(x), _fv(y), _fv(z), _r, _rf);
};

global.GetTextSubstring = function (text, position, length) {
	return _in(0x9d7e12ec, 0x6a1ee4e5, _ts(text), position, length, _r, _s);
};

global.GetTimeDifference = function (timeA, timeB) {
	return _in(0xa2c6fc03, 0x1d46fff0, timeA, timeB, _r, _ri);
};

global.GetTimeOffset = function (timeA, timeB) {
	return _in(0x017008cc, 0xdad48503, timeA, timeB, _r, _ri);
};

global.GetTimePositionInRecording = function (p0) {
	return _in(0x233b51c7, 0x913fa031, p0, _r, _rf);
};

global.GetTimecycleModifierIndex = function () {
	return _in(0xa7053942, 0x93e2b3d3, _r, _ri);
};

global.GetTimecycleTransitionModifierIndex = function () {
	return _in(0x2da67ba3, 0xc8a6755d, _r, _ri);
};

global.GetTogglePausedRenderphasesStatus = function () {
	return _in(0x86ed21bd, 0xb2791ce8, _r);
};

global.GetTotalScInboxIds = function () {
	return _in(0x8ef0f633, 0x280c0663, _r, _ri);
};

global.GetTrainCarriage = function (train, trailerNumber) {
	return _in(0xd0fb093a, 0x4cdb932c, train, trailerNumber, _r, _ri);
};

global.GetTrainCurrentTrackNode = function (train) {
	return _in(0x00000000, 0xe015e854, train, _r, _ri);
};

global.GetTvChannel = function () {
	return _in(0xf90fbfd6, 0x8f3c59ae, _r, _ri);
};

global.GetUniqueIntForPlayer = function (player) {
	return _in(0x07f72340, 0x1b9d921c, player, _r, _ri);
};

global.GetVehicleAlarmTimeLeft = function (vehicle) {
	return _in(0x00000000, 0xc62aac98, vehicle, _r, _ri);
};

global.GetVehicleBodyHealth = function (vehicle) {
	return _in(0x42113b85, 0x7e33c16e, vehicle, _r, _rf);
};

global.GetVehicleClutch = function (vehicle) {
	return _in(0x00000000, 0x1dad4583, vehicle, _r, _rf);
};

global.GetVehicleCurrentAcceleration = function (vehicle) {
	return _in(0x00000000, 0x7f72adf3, vehicle, _r, _rf);
};

global.GetVehicleCurrentGear = function (vehicle) {
	return _in(0x00000000, 0xb4f4e566, vehicle, _r, _ri);
};

global.GetVehicleCurrentRpm = function (vehicle) {
	return _in(0x00000000, 0xe7b12b54, vehicle, _r, _rf);
};

global.GetVehicleDashboardSpeed = function (vehicle) {
	return _in(0x00000000, 0x9aad420e, vehicle, _r, _rf);
};

global.GetVehicleDoorLockStatus = function (vehicle) {
	return _in(0xc867fd14, 0x4f2469d3, vehicle, _r, _ri);
};

global.GetVehicleDoorsLockedForPlayer = function (vehicle, player) {
	return _in(0xfa2cddfe, 0xb8bc898b, vehicle, player, _r);
};

global.GetVehicleEngineHealth = function (vehicle) {
	return _in(0x90dbffac, 0x43b22081, vehicle, _r, _rf);
};

global.GetVehicleEngineTemperature = function (vehicle) {
	return _in(0x00000000, 0xf4f495cb, vehicle, _r, _rf);
};

global.GetVehicleEstimatedMaxSpeed = function (vehicle) {
	return _in(0xfe52f344, 0x91529f0b, vehicle, _r, _rf);
};

global.GetVehicleFuelLevel = function (vehicle) {
	return _in(0x00000000, 0x5f739bb8, vehicle, _r, _rf);
};

global.GetVehicleGravityAmount = function (vehicle) {
	return _in(0x00000000, 0xb48a1292, vehicle, _r, _rf);
};

global.GetVehicleHandbrake = function (vehicle) {
	return _in(0x00000000, 0x483b013c, vehicle, _r);
};

/**
 * Returns the effective handling data of a vehicle as a floating-point value.
 * Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
 * @param vehicle The vehicle to obtain data for.
 * @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to get. These match the keys in `handling.meta`.
 * @return A floating-point value.
 */
global.GetVehicleHandlingFloat = function (vehicle, class_, fieldName) {
	return _in(0x00000000, 0x642fc12f, vehicle, _ts(class_), _ts(fieldName), _r, _rf);
};

/**
 * Returns the effective handling data of a vehicle as an integer value.
 * Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
 * @param vehicle The vehicle to obtain data for.
 * @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to get. These match the keys in `handling.meta`.
 * @return An integer.
 */
global.GetVehicleHandlingInt = function (vehicle, class_, fieldName) {
	return _in(0x00000000, 0x27396c75, vehicle, _ts(class_), _ts(fieldName), _r, _ri);
};

/**
 * Returns the effective handling data of a vehicle as a vector value.
 * Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
 * @param vehicle The vehicle to obtain data for.
 * @param class_ The handling class to get. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to get. These match the keys in `handling.meta`.
 * @return An integer.
 */
global.GetVehicleHandlingVector = function (vehicle, class_, fieldName) {
	return _in(0x00000000, 0xfb341304, vehicle, _ts(class_), _ts(fieldName), _r, _rv);
};

global.GetVehicleHighGear = function (vehicle) {
	return _in(0x00000000, 0xf1d1d689, vehicle, _r, _ri);
};

global.GetVehicleIndexFromEntityIndex = function (entity) {
	return _in(0xdf1e5aac, 0x561afc59, entity, _r, _ri);
};

/**
 * Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
 * @param vehicle 
 * @return An integer.
 */
global.GetVehicleIndicatorLights = function (vehicle) {
	return _in(0x00000000, 0x83070354, vehicle, _r, _ri);
};

global.GetVehicleMaxNumberOfPassengers = function (vehicle) {
	return _in(0xa9c55f1c, 0x15e62e06, vehicle, _r, _ri);
};

global.GetVehicleModelNumberOfSeats = function (modelHash) {
	return _in(0x9a578736, 0xff3a17c3, _ch(modelHash), _r, _ri);
};

global.GetVehicleNextGear = function (vehicle) {
	return _in(0x00000000, 0xddb298ae, vehicle, _r, _ri);
};

global.GetVehicleNodeIsSwitchedOff = function (nodeID) {
	return _in(0x28533dbd, 0xdf7c2c97, nodeID, _r);
};

global.GetVehicleNodePosition = function (nodeId, outPosition) {
	return _in(0x8e8d72ff, 0x24dee1fb, nodeId, _v);
};

global.GetVehicleNumberOfPassengers = function (vehicle) {
	return _in(0x59f3f165, 0x77cd79b2, vehicle, _r, _ri);
};

global.GetVehicleNumberOfWheels = function (vehicle) {
	return _in(0x00000000, 0xedf4b0fc, vehicle, _r, _ri);
};

global.GetVehicleOilLevel = function (vehicle) {
	return _in(0x00000000, 0xfc7f8ef4, vehicle, _r, _rf);
};

global.GetVehiclePedIsEntering = function (ped) {
	return _in(0xf92691ae, 0xd837a5fc, ped, _r, _ri);
};

global.GetVehiclePedIsIn = function (ped, lastVehicle) {
	return _in(0x9a9112a0, 0xfe9a4713, ped, lastVehicle, _r, _ri);
};

global.GetVehiclePedIsUsing = function (ped) {
	return _in(0x6094ad01, 0x1a2ea87d, ped, _r, _ri);
};

global.GetVehiclePetrolTankHealth = function (vehicle) {
	return _in(0x1e5a9b35, 0x6d5098be, vehicle, _r, _rf);
};

global.GetVehicleSteeringAngle = function (vehicle) {
	return _in(0x00000000, 0x1382fcea, vehicle, _r, _rf);
};

global.GetVehicleSteeringScale = function (vehicle) {
	return _in(0x00000000, 0x954465de, vehicle, _r, _rf);
};

global.GetVehicleTrailerVehicle = function (vehicle, trailer) {
	return _in(0xcf867a23, 0x9ec30741, vehicle, _ii(trailer) /* may be optional */, _r);
};

global.GetVehicleTurboPressure = function (vehicle) {
	return _in(0x00000000, 0xe02b51d7, vehicle, _r, _rf);
};

global.GetVehicleWaypointPlaybackOverrideSpeed = function (p0) {
	return _in(0x3dc971eb, 0x22f73447, p0, _r, _ri);
};

global.GetVehicleWaypointProgress = function (vehicle) {
	return _in(0x9824cff8, 0xfc66e159, vehicle, _r, _ri);
};

global.GetVehicleWaypointTargetPoint = function (vehicle) {
	return _in(0x416b62ac, 0x8b9e5bbd, vehicle, _r, _ri);
};

global.GetVehicleWheelHealth = function (vehicle, wheelIndex) {
	return _in(0x00000000, 0x54a677f5, vehicle, wheelIndex, _r, _rf);
};

/**
 * Gets speed of a wheel at the tyre.
 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
 * @param vehicle 
 * @param wheelIndex 
 * @return An integer.
 */
global.GetVehicleWheelSpeed = function (vehicle, wheelIndex) {
	return _in(0x00000000, 0x149c9da0, vehicle, wheelIndex, _r, _rf);
};

/**
 * Returns the offset of the specified wheel relative to the wheel's axle center.
 * @param vehicle 
 * @param wheelIndex 
 */
global.GetVehicleWheelXOffset = function (vehicle, wheelIndex) {
	return _in(0x00000000, 0xcc90cbca, vehicle, wheelIndex, _r, _rf);
};

global.GetVehicleWheelYRotation = function (vehicle, wheelIndex) {
	return _in(0x00000000, 0x2ea4affe, vehicle, wheelIndex, _r, _rf);
};
global.GetVehicleWheelXrot = global.GetVehicleWheelYRotation;

/**
 * List of known states:
 * ```
 * 1: Not wheeling.
 * 65: Vehicle is ready to do wheelie (burnouting).
 * 129: Vehicle is doing wheelie.
 * ```
 * @param vehicle Vehicle
 * @return Vehicle's current wheelie state.
 */
global.GetVehicleWheelieState = function (vehicle) {
	return _in(0x00000000, 0x137260d1, vehicle, _r, _ri);
};

global.GetWantedLevelRadius = function (player) {
	return _in(0x80b00eb2, 0x6d9521c7, player, _r, _rf);
};

global.GetWantedLevelThreshold = function (wantedLevel) {
	return _in(0x1b1a3b35, 0x8f7d8f07, wantedLevel, _r, _ri);
};

global.GetWaterHeight = function (x, y, z, height) {
	return _in(0xfca8b23f, 0x28813f69, _fv(x), _fv(y), _fv(z), _fi(height) /* may be optional */, _r);
};

global.GetWaterHeightNoWaves = function (x, y, z, height) {
	return _in(0xdcf3690a, 0xa262c03f, _fv(x), _fv(y), _fv(z), _fi(height) /* may be optional */, _r);
};

global.GetWaypointCoords = function () {
	return _in(0x29b30d07, 0xc3f7873b, _r, _rv);
};

global.GetWaypointDistanceAlongRoute = function (p0, p1) {
	return _in(0xa5b76905, 0x8763e497, _ts(p0), p1, _r, _rf);
};

global.GetWeaponTypeFromPickupType = function (pickupHash) {
	return _in(0x08f96ca6, 0xc551ad51, _ch(pickupHash), _r, _ri);
};

global.GetWeapontypeGroup = function (weaponHash) {
	return _in(0xedca14ca, 0x5199ff25, _ch(weaponHash), _r, _ri);
};

/**
 * Gets the model hash from the weapon hash.
 * @param weaponHash :
 */
global.GetWeapontypeModel = function (weaponHash) {
	return _in(0xf70825eb, 0x340e7d15, _ch(weaponHash), _r, _ri);
};

global.GetWeatherTypeTransition = function () {
	return _in(0x0ac679b2, 0x342f14f2, _i, _i, _f);
};

global.GetWindDirection = function () {
	return _in(0xf703e82f, 0x3fe14a5f, _r, _rv);
};

global.GetWindSpeed = function () {
	return _in(0xffb7e74e, 0x041150a4, _r, _rf);
};

global.GetWorldPositionOfEntityBone = function (entity, boneIndex) {
	return _in(0x82cfa50e, 0x34681ca5, entity, boneIndex, _r, _rv);
};

global.GiveDelayedWeaponToPed = function (ped, weaponHash, p2, p3, p4) {
	return _in(0xb282dc6e, 0xbd803c75, ped, _ch(weaponHash), p2, p3, p4);
};

global.GiveWeaponToPed = function (ped) {
	return _in(0xbe7e42b0, 0x7fd317ac, ped, _i, _i, _r);
};

/**
 * Gives the ped the weapon. p7 is 0.5f, and p8 is 1.0f. p11 and p12 are both 0.
 * For a list of weapon groups, here is a weapons enum by Mooshe with all weapon-related hashes: https://pastebin.com/n72eW6zd
 * @param ped :
 * @param weaponHash :
 * @param ammoCount :
 * @param equipNow :
 * @param p4 :
 * @param weaponGroup :
 * @param p6 :
 * @param p7 :
 * @param p8 :
 * @param p9 :
 * @param p10 :
 * @param p11 :
 * @param p12 :
 */
global.GiveWeaponToPed_2 = function (ped, weaponHash, ammoCount, equipNow, p4, weaponGroup, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x5e3bddbc, 0xb83f3d84, ped, _ch(weaponHash), ammoCount, equipNow, p4, weaponGroup, p6, _fv(p7), _fv(p8), p9, p10, _fv(p11), p12, _r);
};

global.GoogleAnalyticsPopPage = function (pageName) {
	return _in(0xc6de0403, 0x78364798, _ts(pageName));
};

global.GoogleAnalyticsPushPage = function (pageName) {
	return _in(0xd43a616a, 0xe3ac4ef6, _ts(pageName));
};

global.HasAnimDictLoaded = function (animDict) {
	return _in(0x27ff6fe8, 0x009b40ca, _ts(animDict), _r);
};

global.HasAnimEventFired = function (entity, actionHash) {
	return _in(0x5851cc48, 0x405f4a07, entity, _ch(actionHash), _r);
};

global.HasBulletImpactedInArea = function (x, y, z, p3, p4, p5) {
	return _in(0xc153e5bc, 0xcf411814, _fv(x), _fv(y), _fv(z), _fv(p3), p4, p5, _r);
};

global.HasBulletImpactedInBox = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x3b6a4c05, 0xfb2b33ac, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), p6, p7, _r);
};

global.HasClipSetLoaded = function (clipSet) {
	return _in(0x1f23d6b6, 0xda1cc3b2, _ts(clipSet), _r);
};

global.HasClosestObjectOfTypeBeenBroken = function (p0, p1, p2, p3, modelHash, p5) {
	return _in(0x761b0e69, 0xac4d007e, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _ch(modelHash), p5, _r);
};

global.HasCollisionForModelLoaded = function (model) {
	return _in(0x210a79c9, 0xec89778f, _ch(model), _r);
};

global.HasCollisionLoadedAroundEntity = function (entity) {
	return _in(0xbeb16009, 0x52b9cf5c, entity, _r);
};

global.HasEntityAnimFinished = function (entity, animDict, animName, p3) {
	return _in(0xaeb40615, 0x337ef1e3, entity, _ts(animDict), _ts(animName), p3, _r);
};

global.HasEntityBeenDamagedByAnyObject = function (entity) {
	return _in(0x73bb7638, 0x80cd23a6, entity, _r);
};

global.HasEntityBeenDamagedByAnyPed = function (entity) {
	return _in(0x9934e9c4, 0x2d52d87e, entity, _r);
};

global.HasEntityBeenDamagedByAnyVehicle = function (entity) {
	return _in(0x695d7c26, 0xde65c423, entity, _r);
};

global.HasEntityBeenDamagedByEntity = function (p0, p1, p2, p3) {
	return _in(0x7b6e7bec, 0x1143ac86, p0, p1, p2, p3, _r);
};

global.HasEntityClearLosToEntity = function (entity1, entity2, traceType) {
	return _in(0xfcdff7b7, 0x2d23a1ac, entity1, entity2, traceType, _r);
};

global.HasEntityClearLosToEntityInFront = function (p0, p1, p2) {
	return _in(0xe88f1966, 0x0651d566, p0, p1, p2, _r);
};

global.HasEntityCollidedWithAnything = function (entity) {
	return _in(0xdf18751e, 0xc74f90ff, entity, _r);
};

global.HasForceCleanupOccurred = function (cleanupFlags) {
	return _in(0xc11469dc, 0xa6fc3bb5, cleanupFlags, _r);
};

/**
 * Returns whether or not the specific minimap overlay has loaded.
 * @param id A minimap overlay ID.
 * @return A boolean indicating load status.
 */
global.HasMinimapOverlayLoaded = function (id) {
	return _in(0x00000000, 0xf7535f32, id, _r);
};

global.HasModelLoaded = function (model) {
	return _in(0x1283b8b8, 0x9dd5d1b6, _ch(model), _r);
};

global.HasNamedPtfxAssetLoaded = function (fxNameHash) {
	return _in(0x65bb72f2, 0x9138f5d6, _ch(fxNameHash), _r);
};

global.HasNetworkTimeStarted = function () {
	return _in(0x46718ace, 0xedeafc84, _r);
};

global.HasObjectBeenBroken = function (p0) {
	return _in(0x8abfb70c, 0x49cc43e2, p0, _r);
};

global.HasPedGotWeapon = function (p0, p1, p2, p3) {
	return _in(0x8decb02f, 0x88f428bc, p0, p1, p2, p3, _r);
};

global.HasPickupBeenCollected = function (pickup) {
	return _in(0x80ec48e6, 0x679313f9, pickup, _r);
};

global.HasPlayerBeenSpottedInStolenVehicle = function (player) {
	return _in(0xc932f57f, 0x31ea9152, player, _r);
};

global.HasPlayerDamagedAtLeastOneNonAnimalPed = function (player) {
	return _in(0x16c8d205, 0xdd5a2e90, player, _r);
};

global.HasPlayerDamagedAtLeastOnePed = function (player) {
	return _in(0xda4a4b9b, 0x96e20092, player, _r);
};

global.HasPlayerTeleportFinished = function (player) {
	return _in(0xc39dce46, 0x72cbfbc1, player, _r);
};

global.HasPtfxAssetLoaded = function () {
	return _in(0x13a3f30a, 0x9ed0bc31, _r);
};

global.HasScriptLoaded = function (scriptName) {
	return _in(0xe97bd365, 0x74f8b0a6, _ts(scriptName), _r);
};

global.HasScriptWithNameHashLoaded = function (scriptHash) {
	return _in(0xa5d8e0c2, 0xf3c7eebc, _ch(scriptHash), _r);
};

global.HasStreamedTextureDictLoaded = function (textureDict) {
	return _in(0x54d69009, 0x29ccf162, _ts(textureDict), _r);
};

global.HasVehicleAssetLoaded = function (vehicleAsset) {
	return _in(0xb935f315, 0x4bc913c8, vehicleAsset, _r);
};

global.HasVehicleRecordingBeenLoaded = function (p0, p1) {
	return _in(0xba9325be, 0x372ab6ea, p0, _ii(p1) /* may be optional */, _r);
};

global.HasWeaponGotWeaponComponent = function (weapon, addonHash) {
	return _in(0x76a18844, 0xe743bf91, weapon, _ch(addonHash), _r);
};

global.HideHudAndRadarThisFrame = function () {
	return _in(0x36cdd816, 0x27a6fcd2);
};

global.HideLoadingOnFadeThisFrame = function () {
	return _in(0xea600aab, 0xaf4b9084);
};

global.HidePedWeaponForScriptedCutscene = function (ped, toggle) {
	return _in(0x6f6981d2, 0x253c208f, ped, toggle);
};

global.HidePickupObject = function (pickupObject, toggle) {
	return _in(0x2777150c, 0xc7d9365e, pickupObject, toggle);
};

global.IgnoreNextRestart = function (toggle) {
	return _in(0x6c9ff40f, 0xf1b69f8f, toggle);
};

global.IntToParticipantindex = function (value) {
	return _in(0x58ff971f, 0xc8f2702c, value, _r, _ri);
};

global.IntToPlayerindex = function (value) {
	return _in(0x748b3a65, 0xc2604c33, value, _r, _ri);
};

/**
 * Note: the buffer should be exactly 32 bytes long
 * @param value :
 * @param format :
 * @param buffer :
 */
global.IntToString = function (value, format, buffer) {
	return _in(0xcf11c0ce, 0xb40c401b, value, _ts(format), _ts(buffer));
};

global.InvokeFunctionReference = function (referenceIdentity, argsSerialized, argsLength, retvalLength) {
	return _in(0x00000000, 0xe3551879, _ts(referenceIdentity), _ts(argsSerialized), argsLength, _ii(retvalLength) /* may be optional */, _r, _s);
};

global.IsAceAllowed = function (object) {
	return _in(0x00000000, 0x7ebb9929, _ts(object), _r);
};

global.IsAmbientSpeechDisabled = function (ped) {
	return _in(0x932c2d09, 0x6a2c3fff, ped, _r);
};

global.IsAmbientSpeechPlaying = function (ped) {
	return _in(0x9072c8b4, 0x9907bfad, ped, _r);
};

global.IsAnEntity = function (handle) {
	return _in(0x27cff3e5, 0xa286d3df, handle, _r);
};

global.IsAnimalVocalizationPlaying = function (pedHandle) {
	return _in(0xc265df9f, 0xb44a9fbd, pedHandle, _r);
};

global.IsAnyAppRunning = function () {
	return _in(0xdb30bec7, 0xa7a5cbd3, _r, _ri);
};

global.IsAnyPedNearPoint = function (x, y, z, radius) {
	return _in(0x08396149, 0x8679dc9f, _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.IsAnyPedShootingInArea = function (x1, y1, z1, x2, y2, z2, p6, p7) {
	return _in(0xa0d3d71e, 0xa1086c55, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), p6, p7, _r);
};

global.IsAnySpeechPlaying = function (ped) {
	return _in(0x72907235, 0x5fa39ec9, ped, _r);
};

global.IsAnyVehicleNearPoint = function (x, y, z, radius) {
	return _in(0x5698ba4f, 0xd04d39c4, _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.IsAppActive = function (p0) {
	return _in(0x25b7a020, 0x6bdfac76, p0, _r, _ri);
};

global.IsAppRunning = function (p0) {
	return _in(0x4e511d09, 0x3a86ad49, p0, _r, _ri);
};

global.IsAudioSceneActive = function (scene) {
	return _in(0xb65b6055, 0x6e2a9225, _ts(scene), _r);
};

/**
 * <!-- Native implemented by Disquse. 0xFFF65C63 -->
 * Returns true if the minimap is currently expanded. False if it's the normal minimap state.
 * Use [`IsBigmapFull`](#_0x66EE14B2) to check if the full map is currently revealed on the minimap.
 * @return A bool indicating if the minimap is currently expanded or normal state.
 */
global.IsBigmapActive = function () {
	return _in(0x00000000, 0xfff65c63, _r);
};

/**
 * <!-- Native implemented by Disquse. 0x66EE14B2 -->
 * Returns true if the full map is currently revealed on the minimap.
 * Use [`IsBigmapActive`](#_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
 * @return Returns true if the full map is currently revealed on the minimap.
 */
global.IsBigmapFull = function () {
	return _in(0x00000000, 0x66ee14b2, _r);
};

global.IsBitSet = function (address, offset) {
	return _in(0x4ed6cfdf, 0xe8d4131a, address, offset, _r);
};

global.IsBlipOnMinimap = function (blip) {
	return _in(0x46534526, 0xb9cd2d17, blip, _r);
};

global.IsBulletInAngledArea = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x9d09d849, 0x3747cf02, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), p7, _r);
};

global.IsBulletInArea = function (p0, p1, p2, p3, p4) {
	return _in(0xc652fd30, 0x8772d79e, _fv(p0), _fv(p1), _fv(p2), _fv(p3), p4, _r);
};

global.IsBulletInBox = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xc128137c, 0x52152741, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), p6, _r);
};

global.IsCamActive = function (cam) {
	return _in(0x63efcc7e, 0x1810b8e6, cam, _r);
};

global.IsCamInterpolating = function (cam) {
	return _in(0x578f8f1c, 0xaa17bd2b, cam, _r);
};

global.IsCamRendering = function (cam) {
	return _in(0x4415f8a6, 0xc536d39f, cam, _r);
};

global.IsCamShaking = function (cam) {
	return _in(0x2eeb402b, 0xd7320159, cam, _r);
};

global.IsCinematicCamRendering = function () {
	return _in(0xbf7c7807, 0x31aadbf8, _r);
};

global.IsControlEnabled = function (padIndex, control) {
	return _in(0x1cea6bfd, 0xf248e5d9, padIndex, _ch(control), _r);
};

global.IsControlJustPressed = function (padIndex, control) {
	return _in(0x58041710, 0x1ddb492f, padIndex, _ch(control), _r);
};

global.IsControlJustReleased = function (padIndex, control) {
	return _in(0x50f94025, 0x9d3841e6, padIndex, _ch(control), _r);
};

global.IsControlPressed = function (padIndex, control) {
	return _in(0xf3a21bcd, 0x95725a4a, padIndex, _ch(control), _r);
};

global.IsControlReleased = function (padIndex, control) {
	return _in(0x648ee3e7, 0xf38877dd, padIndex, _ch(control), _r);
};

global.IsDamageTrackerActiveOnNetworkId = function (netID) {
	return _in(0x6e192e33, 0xad436366, netID, _r);
};

global.IsDecalAlive = function (decal) {
	return _in(0x3e4b4e5c, 0xf5d3eeb5, decal, _r);
};

global.IsDisabledControlJustPressed = function (padIndex, control) {
	return _in(0x91aef906, 0xbca88877, padIndex, _ch(control), _r);
};

global.IsDisabledControlJustReleased = function (padIndex, control) {
	return _in(0x305c8dcd, 0x79da8b0f, padIndex, _ch(control), _r);
};

global.IsDisabledControlPressed = function (padIndex, control) {
	return _in(0xe2587f8c, 0xbbd87b1d, padIndex, _ch(control), _r);
};

global.IsDlcPresent = function (dlcHash) {
	return _in(0x2763dc12, 0xbbe2bb6f, _ch(dlcHash), _r);
};

global.IsDoorClosed = function (doorHash) {
	return _in(0xc531ee8a, 0x1145a149, _ch(doorHash), _r);
};

global.IsDoorRegisteredWithSystem = function (doorHash) {
	return _in(0xc153c43e, 0xa202c8c1, _ch(doorHash), _r);
};

global.IsDrivebyTaskUnderneathDrivingTask = function (ped) {
	return _in(0x8785e6e4, 0x0c7a8818, ped, _r);
};

/**
 * Returns whether or not a browser is created for a specified DUI browser object.
 * @param duiObject The DUI browser handle.
 * @return A boolean indicating TRUE if the browser is created.
 */
global.IsDuiAvailable = function (duiObject) {
	return _in(0x00000000, 0x7aac3b4c, duiObject, _r);
};

/**
 * Gets whether or not this is the CitizenFX server.
 * @return A boolean value.
 */
global.IsDuplicityVersion = function () {
	return _in(0x00000000, 0xcf24c52e, _r);
};

global.IsDurangoVersion = function () {
	return _in(0xd1ccc2a2, 0x639d325f, _r);
};

global.IsEntityAMissionEntity = function (entity) {
	return _in(0x138190f6, 0x4db4bbd1, entity, _r);
};

global.IsEntityAPed = function (entity) {
	return _in(0xcf817691, 0x2dda4ea5, entity, _r);
};

global.IsEntityAVehicle = function (entity) {
	return _in(0xc3d96af4, 0x5fccec4c, entity, _r);
};

global.IsEntityAnObject = function (entity) {
	return _in(0x0a27a546, 0xa375fdef, entity, _r);
};

global.IsEntityAtCoord = function (entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9) {
	return _in(0x5e583426, 0x02e94718, entity, _fv(xPos), _fv(yPos), _fv(zPos), _fv(xSize), _fv(ySize), _fv(zSize), p7, p8, p9, _r);
};

global.IsEntityAtEntity = function (entity1, entity2, xSize, ySize, zSize, p5, p6, p7) {
	return _in(0xc057f02b, 0x837a27f6, entity1, entity2, _fv(xSize), _fv(ySize), _fv(zSize), p5, p6, p7, _r);
};

global.IsEntityAttached = function (entity) {
	return _in(0xee6ad63a, 0xbf59c0b7, entity, _r);
};

global.IsEntityAttachedToAnyObject = function (entity) {
	return _in(0x306c1f61, 0x78f01ab3, entity, _r);
};

global.IsEntityAttachedToAnyPed = function (entity) {
	return _in(0xc841153d, 0xed2ca89a, entity, _r);
};

global.IsEntityAttachedToAnyVehicle = function (entity) {
	return _in(0x12df6e0d, 0x2e736749, entity, _r);
};

global.IsEntityAttachedToEntity = function (from, to) {
	return _in(0x154a3c52, 0x9497053e, from, to, _r);
};

global.IsEntityDead = function (p0) {
	return _in(0x7d5b1f88, 0xe7504bba, p0, _r);
};

global.IsEntityFocus = function (entity) {
	return _in(0xf87de697, 0xe9a06ec6, entity, _r);
};

global.IsEntityInAir = function (p0, p1) {
	return _in(0x886e37ec, 0x497200b6, p0, p1, _r);
};

global.IsEntityInAngledArea = function (entity, originX, originY, originZ, edgeX, edgeY, edgeZ, angle, p8, p9, p10) {
	return _in(0xd3151e53, 0x134595e5, entity, _fv(originX), _fv(originY), _fv(originZ), _fv(edgeX), _fv(edgeY), _fv(edgeZ), _fv(angle), p8, p9, p10, _r);
};

global.IsEntityInArea = function (entity, x1, y1, z1, x2, y2, z2, p7, p8, p9) {
	return _in(0x0c2634c4, 0x0a16193e, entity, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), p7, p8, p9, _r);
};

global.IsEntityInVolume = function (entity, volume, p2, p3) {
	return _in(0x5a5526bc, 0x09c06623, entity, volume, p2, p3, _r);
};

global.IsEntityInWater = function (entity) {
	return _in(0xdde5c125, 0xac446723, entity, _r);
};

global.IsEntityOccluded = function (entity) {
	return _in(0x140188e8, 0x84645624, entity, _r);
};

global.IsEntityOnFire = function (entity) {
	return _in(0x1bd7c371, 0xce257c3e, entity, _r);
};

global.IsEntityOnScreen = function (entity) {
	return _in(0x613c15d5, 0xd8db781f, entity, _r);
};

global.IsEntityPlayingAnim = function (entity, animDict, animName, taskFlag) {
	return _in(0xdee49d5c, 0xa6c49148, entity, _ts(animDict), _ts(animName), taskFlag, _r);
};

global.IsEntityStatic = function (entity) {
	return _in(0x86468adf, 0xa0f6b861, entity, _r);
};

global.IsEntityTouchingEntity = function (entity, targetEntity) {
	return _in(0x9a2304a6, 0x4c3c8423, entity, targetEntity, _r);
};

global.IsEntityTouchingModel = function (entity, modelHash) {
	return _in(0x2ae3ebc8, 0xdeb9768b, entity, _ch(modelHash), _r);
};

global.IsEntityUpright = function (entity, angle) {
	return _in(0xf6f6afd8, 0xd4fb2658, entity, _fv(angle), _r);
};

global.IsEntityUpsidedown = function (entity) {
	return _in(0x109de3da, 0x41aad94a, entity, _r);
};

global.IsEntityVisible = function (entity) {
	return _in(0xffc96ecb, 0x7fa404ca, entity, _r);
};

global.IsEntityVisibleToScript = function (entity) {
	return _in(0xf213c724, 0xe77f321a, entity, _r);
};

global.IsEntityWaitingForWorldCollision = function (entity) {
	return _in(0x5e1cc2e8, 0xdc3111dd, entity, _r);
};

global.IsExplosionActiveInArea = function (explosionType, x1, y1, z1, x2, y2, z2) {
	return _in(0xd96e82ae, 0xbffaaff0, explosionType, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _r);
};

global.IsExplosionInAngledArea = function (explosionType, x1, y1, z1, x2, y2, z2, angle) {
	return _in(0x5ae661ec, 0xd18524c9, explosionType, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _fv(angle), _r);
};

global.IsExplosionInArea = function (explosionType, x1, y1, z1, x2, y2, z2) {
	return _in(0x8391ba43, 0x13a25ad3, explosionType, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _r);
};

global.IsExplosionInSphere = function (explosionType, x, y, z, radius) {
	return _in(0xd62dd846, 0xd82cbb90, explosionType, _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.IsFirstPersonAimCamActive = function () {
	return _in(0xf63134c5, 0x4b6ec212, _r);
};

global.IsFlowBlockLoaded = function (p0) {
	return _in(0x10a93c05, 0x7b6bd944, p0, _r, _ri);
};

global.IsFollowVehicleCamActive = function () {
	return _in(0xa40c2f51, 0xfb589e9a, _r);
};

global.IsGameplayCamLookingBehind = function () {
	return _in(0x8fe0d24f, 0xfd04d5a2, _r);
};

global.IsGameplayCamRendering = function () {
	return _in(0x8660ea71, 0x4834e412, _r);
};

global.IsGameplayCamShaking = function () {
	return _in(0xea4c5f4a, 0xa0a4dbef, _r);
};

global.IsGameplayHintActive = function () {
	return _in(0x2e04ab5f, 0xee042d4a, _r);
};

global.IsHornActive = function (vehicle) {
	return _in(0x9d6bfc12, 0xb05c6121, vehicle, _r);
};

global.IsHudHidden = function () {
	return _in(0x71b72b47, 0x8f8189dc, _r);
};

global.IsImapActive = function (imapHash) {
	return _in(0xd779b9b9, 0x10bd3b7c, _ch(imapHash), _r);
};

global.IsImapActive_2 = function (imapHash) {
	return _in(0x93ac1b91, 0xcb6d9913, _ch(imapHash), _r);
};

global.IsInItemset = function (itemset, p1) {
	return _in(0xd1503c2e, 0xe2fe688c, itemset, p1, _r);
};

global.IsIncidentValid = function (incidentId) {
	return _in(0x39f2b1ba, 0xd412246a, incidentId, _r);
};

global.IsInputDisabled = function (padIndex) {
	return _in(0xa571d467, 0x27e2b718, padIndex, _r);
};

global.IsInteriorEntitySetActive = function (interior, entitySetName) {
	return _in(0x32810ca2, 0x125f5842, interior, _ts(entitySetName), _r);
};

global.IsInteriorReady = function (interior) {
	return _in(0x941560d2, 0xd45dbfc8, interior, _r);
};

global.IsInteriorRenderingDisabled = function () {
	return _in(0x0f838d47, 0xde58edb2, _r);
};

global.IsInteriorScene = function () {
	return _in(0x4200f14d, 0x6f840a9a, _r);
};

global.IsItemsetValid = function (itemset) {
	return _in(0xd30765d1, 0x53ef5c76, itemset, _r);
};

/**
 * Same as GET_IS_LOADING_SCREEN_ACTIVE
 */
global.IsLoadingScreenActive = function () {
	return _in(0xb54adbe6, 0x5d528fcb, _r);
};

global.IsLookInverted = function () {
	return _in(0x77b61253, 0x1280010d, _r);
};

global.IsMinigameInProgress = function () {
	return _in(0xf4d8bcd0, 0x52e7ea1b, _r);
};

global.IsModelAPed = function (model) {
	return _in(0xc3f09de9, 0xd6d17dda, _ch(model), _r);
};

global.IsModelAVehicle = function (model) {
	return _in(0x354f6267, 0x2de7db0a, _ch(model), _r);
};

global.IsModelInCdimage = function (model) {
	return _in(0xd6f3b6d7, 0x716cff8e, _ch(model), _r);
};

global.IsModelValid = function (model) {
	return _in(0x392c8d8e, 0x07b70efc, _ch(model), _r);
};

global.IsMountedWeaponTaskUnderneathDrivingTask = function (ped) {
	return _in(0xa320ef04, 0x6186fa3b, ped, _r);
};

global.IsMoveBlendRatioRunning = function (ped) {
	return _in(0xd4d8636c, 0x0199a939, ped, _r);
};

global.IsMoveBlendRatioSprinting = function (ped) {
	return _in(0x24a2ad74, 0xfa9814e2, ped, _r);
};

global.IsMoveBlendRatioStill = function (ped) {
	return _in(0x349ce7b5, 0x6dafd95c, ped, _r);
};

global.IsMoveBlendRatioWalking = function (ped) {
	return _in(0xf133bbbe, 0x91e1691f, ped, _r);
};

global.IsMpGamerTagActive = function (gamerTagId) {
	return _in(0x6e1c31e1, 0x4c7a5f97, gamerTagId, _r);
};

global.IsMultiplayerChatActive = function () {
	return _in(0xbc19069d, 0x5fbb5c46, _r);
};

global.IsNamedRendertargetLinked = function (modelHash) {
	return _in(0x70703283, 0x5ff09ae7, _ch(modelHash), _r);
};

global.IsNamedRendertargetRegistered = function (name) {
	return _in(0x3ee32f79, 0x64c40fe6, _ts(name), _r);
};

global.IsNavmeshLoadedInArea = function (x1, y1, z1, x2, y2, z2) {
	return _in(0xf813c7e6, 0x3f9062a5, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _r);
};

global.IsNetworkIdOwnedByParticipant = function (netId) {
	return _in(0xa1607996, 0x431332df, netId, _r);
};

global.IsObjectVisible = function (object) {
	return _in(0x8b32ace6, 0x326a7546, object, _r);
};

global.IsOrbisVersion = function () {
	return _in(0x88cfae25, 0x0d3e0c71, _r);
};

global.IsPauseMenuActive = function () {
	return _in(0x535384d6, 0x067ba42e, _r);
};

global.IsPcVersion = function () {
	return _in(0xb0fb6cfa, 0xa5a1c833, _r);
};

global.IsPedAPlayer = function (ped) {
	return _in(0x12534c34, 0x8c6cb68b, ped, _r);
};

global.IsPedActiveInScenario = function (p0, p1) {
	return _in(0xaa135f94, 0x82c82cc3, p0, p1, _r);
};

global.IsPedAimingFromCover = function (ped) {
	return _in(0x3998b127, 0x6a3300e5, ped, _r);
};

global.IsPedBeingArrested = function (ped) {
	return _in(0x90a09f3a, 0x45fed688, ped, _r);
};

global.IsPedBeingJacked = function (ped) {
	return _in(0x9a497fe2, 0xdf198913, ped, _r);
};

global.IsPedBeingStealthKilled = function (ped) {
	return _in(0x863b23ef, 0xde9c5df2, ped, _r);
};

global.IsPedBeingStunned = function (ped, p1) {
	return _in(0x4fbacce3, 0xb4138ee8, ped, p1, _r);
};

global.IsPedClimbing = function (ped) {
	return _in(0x53e8cb4f, 0x48bfe623, ped, _r);
};

global.IsPedCuffed = function (ped) {
	return _in(0x74e559b3, 0xbc910685, ped, _r);
};

global.IsPedDeadOrDying = function (ped, p1) {
	return _in(0x3317dedb, 0x88c95038, ped, p1, _r);
};

global.IsPedDefensiveAreaActive = function (ped, p1) {
	return _in(0xba63d9fe, 0x45412247, ped, p1, _r);
};

global.IsPedDiving = function (ped) {
	return _in(0x5527b824, 0x6fef9b11, ped, _r);
};

global.IsPedEvasiveDiving = function (ped, evadingEntity) {
	return _in(0x414641c2, 0x6e105898, ped, _ii(evadingEntity) /* may be optional */, _r);
};

global.IsPedFacingPed = function (ped, otherPed, angle) {
	return _in(0xd71649db, 0x0a545aa3, ped, otherPed, _fv(angle), _r);
};

global.IsPedFalling = function (ped) {
	return _in(0xfb92a102, 0xf1c4dfa3, ped, _r);
};

global.IsPedFatallyInjured = function (ped) {
	return _in(0xd8394507, 0x56ed5a80, ped, _r);
};

global.IsPedFleeing = function (ped) {
	return _in(0xbbcce00b, 0x381f8482, ped, _r);
};

global.IsPedGettingIntoAVehicle = function (ped) {
	return _in(0xbb062b2b, 0x5722478e, ped, _r);
};

global.IsPedGettingUp = function (ped) {
	return _in(0x2a74e1d5, 0xf2f00eec, ped, _r);
};

global.IsPedGoingIntoCover = function (ped) {
	return _in(0x9f65dbc5, 0x37e59ad5, ped, _r);
};

global.IsPedGroupMember = function (p0, p1, p2) {
	return _in(0x9bb01e38, 0x34671191, p0, p1, p2, _r);
};

global.IsPedHangingOnToVehicle = function (ped) {
	return _in(0x1c86d8ae, 0xf8254b78, ped, _r);
};

global.IsPedHeadingTowardsPosition = function (ped, x, y, z, p4) {
	return _in(0xfcf37a45, 0x7cb96dc0, ped, _fv(x), _fv(y), _fv(z), _fv(p4), _r);
};

global.IsPedHeadtrackingEntity = function (ped, entity) {
	return _in(0x813a0a7c, 0x9d2e831f, ped, entity, _r);
};

global.IsPedHeadtrackingPed = function (ped1, ped2) {
	return _in(0x5cd3cb88, 0xa7f8850d, ped1, ped2, _r);
};

global.IsPedHuman = function (ped) {
	return _in(0xb980061d, 0xa992779d, ped, _r);
};

global.IsPedInAnyBoat = function (ped) {
	return _in(0x2e0e1c2b, 0x4f6cb339, ped, _r);
};

global.IsPedInAnyHeli = function (ped) {
	return _in(0x298b91ae, 0x825e5705, ped, _r);
};

global.IsPedInAnyPlane = function (ped) {
	return _in(0x5fff4cfc, 0x74d8fb80, ped, _r);
};

global.IsPedInAnyTaxi = function (ped) {
	return _in(0x6e575d6a, 0x898ab852, ped, _r);
};

global.IsPedInAnyTrain = function (ped) {
	return _in(0x6f972c1a, 0xb75a1ed0, ped, _r);
};

global.IsPedInAnyVehicle = function (ped, atGetIn) {
	return _in(0x997abd67, 0x1d25ca0b, ped, atGetIn, _r);
};

global.IsPedInCombat = function (ped, target) {
	return _in(0x4859f1fc, 0x66a6278e, ped, target, _r);
};

global.IsPedInCover = function (p0, p1, p2) {
	return _in(0x60dfd069, 0x1a170b88, p0, p1, p2, _r);
};

global.IsPedInCoverFacingLeft = function (ped) {
	return _in(0x845333b3, 0x150583ab, ped, _r);
};

global.IsPedInCurrentConversation = function (p0, p1, p2) {
	return _in(0x049e937f, 0x18f4020c, p0, p1, p2, _r);
};

global.IsPedInFlyingVehicle = function (ped) {
	return _in(0x91348735, 0x37fa419c, ped, _r);
};

global.IsPedInGroup = function (ped) {
	return _in(0x5891cac5, 0xd4acff74, ped, _r);
};

global.IsPedInMeleeCombat = function (ped) {
	return _in(0x4e209b2c, 0x1ead5159, ped, _r);
};

global.IsPedInModel = function (ped, modelHash) {
	return _in(0x796d90ef, 0xb19aa332, ped, _ch(modelHash), _r);
};

global.IsPedInVehicle = function (ped, vehicle, atGetIn) {
	return _in(0xa3ee4a07, 0x279bb9db, ped, vehicle, atGetIn, _r);
};

global.IsPedInWrithe = function (ped) {
	return _in(0xdeb6d521, 0x26e7d640, ped, _r);
};

global.IsPedInjured = function (ped) {
	return _in(0x84a2dd9a, 0xc37c35c1, ped, _r);
};

global.IsPedJacking = function (ped) {
	return _in(0x4ae4ff91, 0x1dfb61da, ped, _r);
};

global.IsPedJumping = function (ped) {
	return _in(0xcedabc59, 0x00a0bf97, ped, _r);
};

global.IsPedMale = function (ped) {
	return _in(0x6d9f5faa, 0x7488ba46, ped, _r);
};

global.IsPedModel = function (ped, modelHash) {
	return _in(0xc9d55b1a, 0x358a5bf7, ped, _ch(modelHash), _r);
};

global.IsPedOnFoot = function (ped) {
	return _in(0x01fee67d, 0xb37f59b2, ped, _r);
};

global.IsPedOnMount = function (ped) {
	return _in(0x460bc76a, 0x0e10655e, ped, _r);
};

global.IsPedOnSpecificVehicle = function (ped, vehicle) {
	return _in(0xec5f66e4, 0x59af3bb2, ped, vehicle, _r);
};

global.IsPedOnVehicle = function (p0, p1) {
	return _in(0x67722aeb, 0x798e5fab, p0, p1, _r);
};

global.IsPedOpeningADoor = function (ped) {
	return _in(0x26af0e8e, 0x30bd2a2c, ped, _r);
};

global.IsPedPerformingMeleeAction = function (p0, p1, p2) {
	return _in(0xdcca191d, 0xf9980fd7, p0, p1, p2, _r);
};

global.IsPedPlantingBomb = function (ped) {
	return _in(0xc70b5fae, 0x151982d8, ped, _r);
};

global.IsPedProne = function (ped) {
	return _in(0xd6a86331, 0xa537a7b9, ped, _r);
};

global.IsPedRagdoll = function (ped) {
	return _in(0x47e4e977, 0x581c5b55, ped, _r);
};

global.IsPedReloading = function (ped) {
	return _in(0x24b100c6, 0x8c645951, ped, _r);
};

global.IsPedRespondingToEvent = function (ped, event) {
	return _in(0x625b774d, 0x75c87068, ped, event, _r);
};

global.IsPedRunning = function (ped) {
	return _in(0xc5286ffc, 0x176f28a2, ped, _r);
};

global.IsPedRunningMobilePhoneTask = function (ped) {
	return _in(0x2afe52f7, 0x82f25775, ped, _r);
};

global.IsPedRunningRagdollTask = function (ped) {
	return _in(0xe3b6097c, 0xc25aa69e, ped, _r);
};

global.IsPedShooting = function (ped) {
	return _in(0x34616828, 0xcd07f1a1, ped, _r);
};

global.IsPedSittingInAnyVehicle = function (ped) {
	return _in(0x826aa586, 0xedb9fef8, ped, _r);
};

global.IsPedSittingInVehicle = function (ped, vehicle) {
	return _in(0xa808aa1d, 0x79230fc2, ped, vehicle, _r);
};

global.IsPedSprinting = function (ped) {
	return _in(0x57e457cd, 0x2c0fc168, ped, _r);
};

global.IsPedStill = function (ped) {
	return _in(0xac29253e, 0xef8f0180, ped, _r);
};

global.IsPedStopped = function (ped) {
	return _in(0x530944f6, 0xf4b8a214, ped, _r);
};

global.IsPedSwimming = function (ped) {
	return _in(0x9de32763, 0x1295b4c2, ped, _r);
};

global.IsPedSwimmingUnderWater = function (ped) {
	return _in(0xc024869a, 0x53992f34, ped, _r);
};

global.IsPedUsingActionMode = function (ped) {
	return _in(0x00e73468, 0xd085f745, ped, _r);
};

global.IsPedUsingAnyScenario = function (ped) {
	return _in(0x57ab4a30, 0x80f85143, ped, _r);
};

global.IsPedVaulting = function (ped) {
	return _in(0x117c70d1, 0xf5730b5e, ped, _r);
};

global.IsPedWalking = function (ped) {
	return _in(0xde4c184b, 0x2b9b071a, ped, _r);
};

global.IsPedWeaponReadyToShoot = function (ped) {
	return _in(0xb80ca294, 0xf2f26749, ped, _r);
};

global.IsPlaybackGoingOnForVehicle = function (vehicle) {
	return _in(0x02774b3a, 0x9034278f, vehicle, _r);
};

global.IsPlaybackUsingAiGoingOnForVehicle = function (vehicle) {
	return _in(0x5a747260, 0x6ec5b7c1, vehicle, _r);
};

global.IsPlayerBeingArrested = function (player, atArresting) {
	return _in(0xc8183ae9, 0x63c58374, player, atArresting, _r);
};

global.IsPlayerClimbing = function (player) {
	return _in(0xb8a70c22, 0xfd48197a, player, _r);
};

global.IsPlayerControlOn = function (player) {
	return _in(0x7964097f, 0xce4c244b, player, _r);
};

global.IsPlayerDead = function (player) {
	return _in(0x2e9c3fcb, 0x6798f397, player, _r);
};

global.IsPlayerFreeAiming = function (player) {
	return _in(0x936f967d, 0x4be1ce9d, player, _r);
};

global.IsPlayerFreeAimingAtEntity = function (player, entity) {
	return _in(0x8c67c11c, 0x68713d25, player, entity, _r);
};

global.IsPlayerPlaying = function (player) {
	return _in(0xbffb3598, 0x6caae58c, player, _r);
};

global.IsPlayerReadyForCutscene = function (player) {
	return _in(0xaa67bcb0, 0x097f2fa3, player, _r);
};

global.IsPlayerRidingTrain = function (player) {
	return _in(0x2fb0acad, 0xa6a238dd, player, _r);
};

global.IsPlayerScriptControlOn = function (player) {
	return _in(0xb7835075, 0x4157c00f, player, _r);
};

global.IsPlayerSwitchInProgress = function () {
	return _in(0xed20cb1f, 0x5297791d, _r);
};

global.IsPlayerTargettingAnything = function (player) {
	return _in(0x4605c66e, 0x0f935f83, player, _r);
};

global.IsPlayerTargettingEntity = function (p0, p1, p2) {
	return _in(0x27f89fdc, 0x16688a7a, p0, p1, p2, _r);
};

global.IsPlayerTeleportActive = function () {
	return _in(0x085eeaeb, 0x8783feb5, _r);
};

global.IsPlayerWantedLevelGreater = function (player, wantedLevel) {
	return _in(0xe1c0ad4c, 0x24324c36, player, wantedLevel, _r);
};

global.IsPointInAngledArea = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x2a70bae8, 0x883e4c81, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), _fv(p7), _fv(p8), _fv(p9), p10, p11, _r);
};

global.IsPointOnRoad = function (x, y, z, vehicle) {
	return _in(0x125bf4ab, 0xfc536b09, _fv(x), _fv(y), _fv(z), vehicle, _r);
};

global.IsPositionOccupied = function (x, y, z, range, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x825ca3ed, 0x43831015, _fv(x), _fv(y), _fv(z), _fv(range), p4, p5, p6, p7, p8, p9, p10, _r);
};

global.IsPrincipalAceAllowed = function (principal, object) {
	return _in(0x00000000, 0x37cf52ce, _ts(principal), _ts(object), _r);
};

global.IsProjectileInArea = function (x1, y1, z1, x2, y2, z2, ownedByPlayer) {
	return _in(0x05b0061e, 0xfdfc8941, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), ownedByPlayer, _r);
};

global.IsProjectileTypeInAngledArea = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x928431f4, 0x133cd3d4, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), p7, p8, _r);
};

global.IsProjectileTypeInArea = function (x1, y1, z1, x2, y2, z2, type, p7) {
	return _in(0x04965fb9, 0xe14235c7, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), type, p7, _r);
};

global.IsProjectileTypeInRadius = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf51c9baa, 0xd9ed64c4, _fv(p0), _fv(p1), _fv(p2), p3, _fv(p4), p5, _r);
};

global.IsRadarHidden = function () {
	return _in(0x1b82fd5f, 0xfa4d666e, _r);
};

global.IsRadarPreferenceSwitchedOn = function () {
	return _in(0x81e47f0e, 0xe1f2b21e, _r);
};

global.IsScInboxValid = function (p0) {
	return _in(0x74cf39e0, 0x30a382c4, p0, _r);
};

global.IsScenarioGroupEnabled = function (scenarioGroup) {
	return _in(0x367a09de, 0xd4e05b99, _ts(scenarioGroup), _r);
};

global.IsScenarioGroupEnabledHash = function (scenarioGroup) {
	return _in(0xdcc37491, 0x3de6aaa6, _ch(scenarioGroup), _r);
};

global.IsScenarioOccupied = function (p0, p1, p2, p3, p4) {
	return _in(0x788756d7, 0x3ac2e07c, _fv(p0), _fv(p1), _fv(p2), _fv(p3), p4, _r);
};

global.IsScenarioTypeEnabled = function (scenarioType) {
	return _in(0x3a815db3, 0xea088722, _ts(scenarioType), _r);
};

global.IsScreenFadedIn = function () {
	return _in(0x37f9a426, 0xfbcf4af2, _r);
};

global.IsScreenFadedOut = function () {
	return _in(0xf5472c80, 0xdf2ff847, _r);
};

global.IsScreenFadingIn = function () {
	return _in(0x0ceccc63, 0xffa2ef24, _r);
};

global.IsScreenFadingOut = function () {
	return _in(0x02f39bef, 0xe7b88d00, _r);
};

global.IsScriptedConversationLoaded = function (p0) {
	return _in(0xdf0d54be, 0x7a776737, p0, _r);
};

global.IsScriptedSpeechPlaying = function (p0) {
	return _in(0xcc9aa18d, 0xcc7084f4, p0, _r);
};

global.IsSeatWarpOnly = function (vehicle, seatIndex) {
	return _in(0x7892685b, 0xf6d9775e, vehicle, seatIndex, _r);
};

global.IsShockingEventInSphere = function (type, x, y, z, radius) {
	return _in(0x9db47e16, 0x060d6354, type, _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.IsSphereVisible = function (x, y, z, radius) {
	return _in(0x2e941b5f, 0xfa2989c6, _fv(x), _fv(y), _fv(z), _fv(radius), _r);
};

global.IsSphereVisibleToAnotherMachine = function (p0, p1, p2, p3, p4) {
	return _in(0xd82cf8e6, 0x4c8729d8, p0, p1, p2, p3, p4, _r);
};

global.IsSphereVisibleToPlayer = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xdc3a3102, 0x19e5da62, p0, p1, p2, p3, p4, p5, _r);
};

global.IsSrlLoaded = function () {
	return _in(0x5c2c8851, 0x2cf6dafb, _r);
};

global.IsStreamPlaying = function (p0) {
	return _in(0xd11fa52e, 0xb849d978, p0, _r);
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Returns whether an asynchronous streaming file registration completed.
 * @param registerAs The file name to check, for example `asset.ydr`.
 * @return Whether or not the streaming file has been registered.
 */
global.IsStreamingFileReady = function (registerAs) {
	return _in(0x00000000, 0xa194934d, _ts(registerAs), _r);
};

global.IsStringNull = function (string) {
	return _in(0x60210232, 0x4604d96b, _ts(string), _r);
};

global.IsStringNullOrEmpty = function (string) {
	return _in(0x2cf12f9a, 0xcf18f048, _ts(string), _r);
};

global.IsSystemUiBeingDisplayed = function () {
	return _in(0x908258b6, 0x209e71f7, _r);
};

global.IsTaskMoveNetworkActive = function (ped) {
	return _in(0x921ce12c, 0x489c4c41, ped, _r);
};

global.IsTaskMoveNetworkReadyForTransition = function (ped) {
	return _in(0x30ed88d5, 0xe0c56a37, ped, _r);
};

global.IsThisModelABoat = function (model) {
	return _in(0x799cfc7c, 0x5b743b15, _ch(model), _r);
};

global.IsThisModelATrain = function (model) {
	return _in(0xfc08c8f8, 0xc1edf174, _ch(model), _r);
};

global.IsThreadActive = function (threadId, p1) {
	return _in(0x46e9ae36, 0xd8fa6417, threadId, p1, _r);
};

global.IsTimeLessThan = function (timeA, timeB) {
	return _in(0xcb2cf514, 0x8012c8d0, timeA, timeB, _r);
};

global.IsTimeMoreThan = function (timeA, timeB) {
	return _in(0xde350f86, 0x51e4346c, timeA, timeB, _r);
};

global.IsTrackedPedVisible = function (ped) {
	return _in(0x91c8e617, 0xf64188ac, ped, _r);
};

global.IsTrackedPointVisible = function (point) {
	return _in(0xcbb056ba, 0x159fb48d, point, _r);
};

global.IsTvPlaylistItemPlaying = function (videoCliphash) {
	return _in(0x4d562223, 0xe0eb65f3, _ch(videoCliphash), _r);
};

global.IsValidInterior = function (interior) {
	return _in(0x017c1b31, 0x59f79f6c, interior, _r);
};

global.IsVehicleAlarmSet = function (vehicle) {
	return _in(0x00000000, 0xdc921211, vehicle, _r);
};

global.IsVehicleDoorFullyOpen = function (vehicle, doorIndex) {
	return _in(0x7ae19114, 0x3c7a9107, vehicle, doorIndex, _r);
};

global.IsVehicleDriveable = function (p0, p1, p2) {
	return _in(0xb86d29b1, 0x0f627379, p0, p1, p2, _r);
};

global.IsVehicleEngineStarting = function (vehicle) {
	return _in(0x00000000, 0xbb340d04, vehicle, _r);
};

global.IsVehicleExtraTurnedOn = function (vehicle, extraId) {
	return _in(0xfa9a55d9, 0xc4351625, vehicle, extraId, _r);
};

global.IsVehicleInBurnout = function (vehicle) {
	return _in(0x3f5029a8, 0xfc060c48, vehicle, _r);
};

global.IsVehicleInteriorLightOn = function (vehicle) {
	return _in(0x00000000, 0xa411f72c, vehicle, _r);
};

global.IsVehicleModel = function (vehicle, model) {
	return _in(0x0045a54e, 0xc7a22455, vehicle, _ch(model), _r);
};

global.IsVehicleNeedsToBeHotwired = function (vehicle) {
	return _in(0x00000000, 0xf9933bf4, vehicle, _r);
};

global.IsVehicleNodeIdValid = function (vehicleNodeId) {
	return _in(0x5829a02a, 0xf4f0b3cb, vehicleNodeId, _r);
};

global.IsVehicleOnAllWheels = function (vehicle) {
	return _in(0x0d5d1195, 0x29654ee0, vehicle, _r);
};

global.IsVehiclePreviouslyOwnedByPlayer = function (vehicle) {
	return _in(0x00000000, 0xf849ed67, vehicle, _r);
};

global.IsVehicleSeatFree = function (vehicle, seatIndex) {
	return _in(0xe052c1b1, 0xcaa4ece4, vehicle, seatIndex, _r);
};

global.IsVehicleStopped = function (vehicle) {
	return _in(0x78c3311a, 0x73135241, vehicle, _r);
};

global.IsVehicleStuckTimerUp = function (vehicle, p1, p2) {
	return _in(0x1aba9753, 0x939503c5, vehicle, p1, p2, _r);
};

global.IsVehicleVisible = function (vehicle) {
	return _in(0x424910cd, 0x5de8c246, vehicle, _r);
};

global.IsVehicleWanted = function (vehicle) {
	return _in(0x00000000, 0x0a7daf7c, vehicle, _r);
};

global.IsWaypointActive = function () {
	return _in(0x202b1bbf, 0xc6ab5ee4, _r);
};

global.IsWaypointPlaybackGoingOnForPed = function (p0, p1) {
	return _in(0xe03b3f2d, 0x3dc59b64, p0, p1, _r);
};

global.IsWaypointPlaybackGoingOnForVehicle = function (p0, p1) {
	return _in(0xf5134943, 0xea29868c, p0, p1, _r);
};

global.IsWeaponValid = function (weaponHash) {
	return _in(0x937c7116, 0x5cf334b3, _ch(weaponHash), _r);
};

global.ItemDatabaseCanEquipItemOnCategory = function (p0, p1, p2) {
	return _in(0x856ff92c, 0x57742ae5, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseCreateItemCollection = function (p0, p1, p2) {
	return _in(0x71efa799, 0x9ae79408, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseDoesItemHaveTag = function (p0, p1, p2) {
	return _in(0xff5fb560, 0x5ad56856, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseFilloutAcquireCost = function (p0, p1, p2) {
	return _in(0x74f79288, 0x16e4e181, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseFilloutBuyAwardAcquireCosts = function (p0, p1, p2, p3) {
	return _in(0xb52e20f6, 0x767a09a2, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseFilloutItemEffectsIdInfo = function (p0, p1) {
	return _in(0xcf2d360d, 0x27fd1abf, p0, p1, _r, _ri);
};

global.ItemDatabaseFilloutItemEffectsIds = function (p0, p1) {
	return _in(0x9379be60, 0xdc55bbe6, p0, p1, _r, _ri);
};

global.ItemDatabaseFilloutItemInfo = function (p0, p1) {
	return _in(0xfe90abbc, 0xbfdc13b2, p0, p1, _r, _ri);
};

global.ItemDatabaseFilloutModifier = function (p0, p1, p2) {
	return _in(0x60614a0a, 0xb580a2b5, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseFilloutPriceModifierByKey = function (p0, p1) {
	return _in(0x40c5d958, 0x18823c94, p0, p1, _r, _ri);
};

global.ItemDatabaseFilloutSatchelData = function (p0, p1) {
	return _in(0x4776efd7, 0x8f75c23f, p0, p1, _r, _ri);
};

global.ItemDatabaseFilloutSellPrice = function (p0, p1, p2) {
	return _in(0x7a62a2ee, 0xde1c3766, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseFilloutTagData = function (p0, p1, p2, p3) {
	return _in(0x5a11d6ee, 0xa17165b0, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseFilloutUiData = function (p0, p1) {
	return _in(0xb86f7cc2, 0xdc67ac60, p0, p1, _r, _ri);
};

global.ItemDatabaseGetAcquireCost = function (p0, p1, p2) {
	return _in(0x6772a83c, 0x67a25775, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetAcquireCostsCount = function (p0) {
	return _in(0x01fddad3, 0x92d04144, p0, _r, _ri);
};

global.ItemDatabaseGetBundleId = function (p0) {
	return _in(0x891a4596, 0x0b6b768a, p0, _r, _ri);
};

global.ItemDatabaseGetBundleItemCount = function (p0, p1) {
	return _in(0x3332695b, 0x01015df9, p0, p1, _r, _ri);
};

global.ItemDatabaseGetBundleItemInfo = function (p0, p1, p2, p3) {
	return _in(0x5d48a77e, 0x4b668b57, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseGetFitsSlotCount = function (p0) {
	return _in(0x2970d1d6, 0xbfcf9b46, p0, _r, _ri);
};

global.ItemDatabaseGetFitsSlotInfo = function (p0, p1, p2) {
	return _in(0x77210c14, 0x6ced5261, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetHasSlotCount = function (p0) {
	return _in(0x44915068, 0x579d7710, p0, _r, _ri);
};

global.ItemDatabaseGetHasSlotInfo = function (p0, p1, p2) {
	return _in(0x8a9bd0db, 0x7e8376cf, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetItemPriceModifiers = function (p0, p1) {
	return _in(0x4eb37aab, 0x79ab0c48, p0, p1, _r, _ri);
};

global.ItemDatabaseGetItemTagType = function (p0, p1) {
	return _in(0x6111b8f9, 0x413f413a, p0, p1, _r, _ri);
};

global.ItemDatabaseGetModifiedPrice = function (p0, p1) {
	return _in(0xcb92ec9c, 0x004732b4, p0, p1, _r, _ri);
};

global.ItemDatabaseGetNumberOfModifiedPrices = function (p0) {
	return _in(0x5aaaf40e, 0x9b224f5e, p0, _r, _ri);
};

global.ItemDatabaseGetNumberOfModifiers = function (p0) {
	return _in(0x1289d831, 0x5235856d, p0, _r, _ri);
};

global.ItemDatabaseGetShopInventoriesItemInfo = function (p0, p1, p2) {
	return _in(0x4a79b41b, 0x4eb91f4e, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetShopInventoriesItemInfoByKey = function (p0, p1, p2) {
	return _in(0xcfb06801, 0xf5099b25, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetShopInventoriesItemsCount = function (p0) {
	return _in(0xc568b1a0, 0xf17c7025, p0, _r, _ri);
};

global.ItemDatabaseGetShopInventoriesRequirementGroupInfo = function (p0, p1, p2, p3) {
	return _in(0x76c752d7, 0x88a76813, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseGetShopInventoriesRequirementInfo = function (p0, p1, p2, p3, p4) {
	return _in(0xe0ea5c03, 0x1ae5539f, p0, p1, p2, p3, p4, _r, _ri);
};

global.ItemDatabaseGetShopLayoutInfo = function (p0, p1) {
	return _in(0x66a6d76b, 0x6bb999b4, p0, p1, _r, _ri);
};

global.ItemDatabaseGetShopLayoutMenuInfoById = function (p0, p1, p2) {
	return _in(0xd6611446, 0x9978b55b, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetShopLayoutMenuInfoByIndex = function (p0, p1, p2, p3) {
	return _in(0xf0424709, 0x2f193b75, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseGetShopLayoutMenuPageKey = function (p0, p1, p2, p3) {
	return _in(0x9a605706, 0x57a7b635, p0, p1, p2, p3, _r, _ri);
};

global.ItemDatabaseGetShopLayoutPageInfoByKey = function (p0, p1, p2) {
	return _in(0xb347c100, 0xdf0c9b7f, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseGetShopLayoutPageItemKey = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf32bef57, 0x8b3dbae8, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.ItemDatabaseGetShopLayoutRootMenuInfo = function (p0, p1, p2) {
	return _in(0x86fcb565, 0xcca0cfa7, p0, p1, p2, _r, _ri);
};

global.ItemDatabaseIsBuyAwardKeyValid = function (p0) {
	return _in(0x4ce75320, 0x3fa42214, p0, _r, _ri);
};

global.ItemDatabaseIsIntrinsicItem = function (p0) {
	return _in(0x337f88e3, 0xa063995e, p0, _r, _ri);
};

global.ItemDatabaseIsKeyValid = function (p0, p1) {
	return _in(0x6d5d51b1, 0x88333fd1, p0, p1, _r, _ri);
};

global.ItemDatabaseIsOverpoweredItem = function (p0) {
	return _in(0x337f88e3, 0xa063995f, p0, _r, _ri);
};

global.ItemDatabaseIsShopKeyValid = function (p0) {
	return _in(0x00b9507d, 0x8e1d8716, p0, _r, _ri);
};

global.ItemDatabaseIsShopLayoutKeyValid = function (p0) {
	return _in(0x3afe5182, 0xc45a84f6, p0, _r, _ri);
};

global.ItemDatabaseLocalizationGetNumLabelTypes = function (p0) {
	return _in(0xcec6a41e, 0x8910486a, p0, _r, _ri);
};

global.ItemDatabaseLocalizationGetNumValues = function (p0, p1) {
	return _in(0x49885d82, 0xa13eeaea, p0, p1, _r, _ri);
};

global.ItemDatabaseLocalizationGetType = function (p0, p1) {
	return _in(0xcabf5d41, 0xd0073d4a, p0, p1, _r, _ri);
};

global.ItemDatabaseLocalizationGetValue = function (p0, p1, p2) {
	return _in(0x9ae5610f, 0xdced6ea7, p0, p1, p2, _r, _ri);
};

global.JorunalClearAllProgress = function () {
	return _in(0xf402978d, 0xe6f88d6e);
};

global.JorunalGetTextureWithLayout = function (p0, p1, p2) {
	return _in(0x62cc549b, 0x3b8ea2aa, p0, p1, p2, _r, _ri);
};

global.JorunalMarkRead = function (p0) {
	return _in(0xe4509bab, 0xe59bd24e, p0);
};

global.JournalCanWriteEntry = function (p0) {
	return _in(0xcf782691, 0xd91f270e, p0, _r, _ri);
};

global.JournalGetEntryAtIndex = function (p0) {
	return _in(0x3d16abd7, 0xa1fd8c96, p0, _r, _ri);
};

global.JournalGetEntryCount = function () {
	return _in(0xe65b5de5, 0x3351be22, _r, _ri);
};

global.JournalGetEntryInfo = function (p0, p1) {
	return _in(0x5514c3e6, 0x0673530f, p0, p1, _r, _ri);
};

global.JournalGetGrimeAtIndex = function (p0) {
	return _in(0xcb5945e1, 0xb855852f, p0, _r, _ri);
};

global.JournalWriteEntry = function (p0) {
	return _in(0x6dfdd665, 0xe416b093, p0);
};

global.KnockOffPedProp = function (ped, p1, p2, p3, p4) {
	return _in(0x6fd7816a, 0x36615f48, ped, p1, p2, p3, p4);
};

global.KnockPedOffVehicle = function (ped) {
	return _in(0x45bbcba7, 0x7c29a841, ped);
};

global.LaunchAppByHash = function (p0) {
	return _in(0xc8fc7f4e, 0x4cf4f581, p0, _r, _ri);
};

global.LaunchAppByHashWithEntry = function (p0, p1) {
	return _in(0xc1bcf31e, 0x975b3195, p0, p1, _r, _ri);
};

global.LaunchAppWithEntry = function (p0, p1) {
	return _in(0x7b2027ba, 0xc5c8ec89, p0, p1, _r, _ri);
};

global.LinkNamedRendertarget = function (modelHash) {
	return _in(0x2f506b85, 0x56242ddb, _ch(modelHash));
};

global.LoadAnimScene = function (animScene) {
	return _in(0xaf068580, 0x194d9dc7, animScene);
};

/**
 * Reads the contents of a text file in a specified resource.
 * If executed on the client, this file has to be included in `files` in the resource manifest.
 * Example: `local data = LoadResourceFile("devtools", "data.json")`
 * @param resourceName The resource name.
 * @param fileName The file in the resource.
 * @return The file contents
 */
global.LoadResourceFile = function (resourceName, fileName) {
	return _in(0x00000000, 0x76a9ee1f, _ts(resourceName), _ts(fileName), _r, _s);
};

global.LoadStream = function (streamName, soundSet) {
	return _in(0x1f1f9571, 0x54ec51df, _ts(streamName), _ts(soundSet), _r);
};

global.LocalizationGetSystemLanguage = function () {
	return _in(0x3c1a05f8, 0x6ae6acb5, _r, _ri);
};

global.LocalizationGetUserLanguage = function () {
	return _in(0x76e30b79, 0x9ebeea0f, _r, _ri);
};

global.LockMinimapAngle = function (angle) {
	return _in(0x0bfd145e, 0xf819fb3a, angle);
};

global.LogAddEntryHash = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x69d54799, 0x82355d8f, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.LogAddOrUpdateObjective = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xb4316338, 0x8484cc87, p0, p1, p2, p3, p4, p5, p6);
};

global.LogAddTotalTakeEntry = function (p0, p1, p2, p3, p4) {
	return _in(0x60c59968, 0xe8e87e6b, p0, p1, p2, p3, p4);
};

global.LogClearAllEntries = function () {
	return _in(0xb95b4ea6, 0xb1edf035);
};

global.LogClearCachedObjective = function () {
	return _in(0xdff0d417, 0x277b41f8);
};

global.LogClearHasDisplayedCachedObjective = function () {
	return _in(0xa3108d69, 0x81a5cadb);
};

global.LogGetCachedObjective = function () {
	return _in(0x15a4461b, 0xeb788096, _r, _ri);
};

global.LogHasDisplayedCachedObjective = function () {
	return _in(0xcc48ffbb, 0x45b54f71, _r, _ri);
};

global.LogIsEntryRegistered = function (p0, p1) {
	return _in(0xb8188ccf, 0x52202475, p0, p1, _r, _ri);
};

global.LogMarkAllEntriesAvailability = function (p0, p1) {
	return _in(0x3920574c, 0xf0a2b7b6, p0, p1);
};

global.LogMarkEntryAvailability = function (p0, p1, p2, p3) {
	return _in(0x13e8d7dd, 0x08543482, p0, p1, p2, p3);
};

global.LogMarkMissionCompleted = function (p0) {
	return _in(0xde31d66d, 0x1e54c471, p0);
};

global.LogPostNotification = function (data) {
	return _in(0x49e58fe6, 0xef40b987, _ii(data) /* may be optional */, _r, _ri);
};

global.LogPrintCachedObjective = function () {
	return _in(0xe9990552, 0xdec71600);
};

global.LogRemoveEntry = function (p0, p1) {
	return _in(0xd594a19b, 0xe09a75c6, p0, p1);
};

global.LogSetCachedObjective = function (p0) {
	return _in(0xfa233f8f, 0xe190514c, p0);
};

global.LogSetEntryBriefTexture = function (p0, p1, p2, p3) {
	return _in(0x69684d99, 0x36958d8f, p0, p1, p2, p3);
};

global.LogSetEntryIconTexture = function (p0, p1, p2, p3) {
	return _in(0x69654699, 0x34958d8f, p0, p1, p2, p3);
};

global.LogSetEntryPinned = function (p0, p1, p2) {
	return _in(0x72a5cd21, 0x4b342568, p0, p1, p2);
};

global.LogSetHasDisplayedCachedObjective = function () {
	return _in(0xa3108d69, 0x81a5cadc);
};

global.LogSetPendingDetailsId = function (p0, p1) {
	return _in(0x136a027c, 0xf37b0a4f, p0, p1, _r, _ri);
};

global.LogSetTotalTakeSummary = function (p0, p1) {
	return _in(0xd106b211, 0xef1b8f04, p0, p1);
};

global.LogUpdateEntrySubheader = function (p0, p1, p2) {
	return _in(0x80d65241, 0x90258c3e, p0, p1, p2);
};

global.MarkObjectForDeletion = function (object) {
	return _in(0xadbe4809, 0xf19f927a, object);
};

global.MinigameGetNextEvent = function (p0, p1) {
	return _in(0xdf728c5a, 0xe137fc13, p0, p1, _r, _ri);
};

global.MinigameGetNextEventType = function () {
	return _in(0x578907f5, 0x9ba01b6c, _r, _ri);
};

global.MinigameIsConnectedToServer = function (p0) {
	return _in(0x2a0c4736, 0xac5af0ce, p0, _r, _ri);
};

global.MinigameIsRequestPending = function (p0) {
	return _in(0x9105a4a2, 0x556fa937, p0, _r, _ri);
};

global.MinigameLeaveTable = function (p0) {
	return _in(0xf5446e47, 0x941e654c, p0, _r, _ri);
};

global.MinigamePopNextEvent = function () {
	return _in(0x833e03ba, 0xebadc4b0);
};

global.MinigameRequestSeatAtTable = function (data) {
	return _in(0xf6ac6085, 0xd8d6c004, _ii(data) /* may be optional */, _r);
};

global.MissiondataGetHighScore = function (p0) {
	return _in(0x9aababf8, 0x313c3516, p0, _r, _ri);
};

global.MissiondataGetReplayState = function (p0) {
	return _in(0x8c32d86e, 0x9556ed86, p0, _r, _ri);
};

global.MissiondataSetHighScore = function (p0, p1) {
	return _in(0x3a04f016, 0x9da87a9d, p0, p1);
};

global.MissiondataSetRatingScores = function (p0, p1, p2, p3) {
	return _in(0x12f65317, 0x708749a5, p0, p1, p2, p3);
};

global.ModifyVehicleTopSpeed = function (vehicle, value) {
	return _in(0x35ad938c, 0x74cacd6a, vehicle, _fv(value));
};

global.MoneyDecrementCashBalance = function (amount) {
	return _in(0x466bc876, 0x9cf26a7a, amount, _r);
};

global.MoneyGetCashBalance = function () {
	return _in(0x0c02dabf, 0xa3b98176, _r, _ri);
};

global.MoneyIncrementCashBalance = function (amount, p1) {
	return _in(0xbc3422dc, 0x91667621, amount, p1, _r);
};

global.N_0x00000000467f4caa = function () {
	return _in(0x00000000, 0x467f4caa, _r, _ri);
};

global.N_0x0000000085488c49 = function () {
	return _in(0x00000000, 0x85488c49, _r, _ri);
};

global.N_0x00000000eb2d93b3 = function () {
	return _in(0x00000000, 0xeb2d93b3, _r, _ri);
};

global.N_0x0000a8acdc2e1b6a = function (p0, p1) {
	return _in(0x0000a8ac, 0xdc2e1b6a, p0, p1);
};

global.N_0x000fa7a4a8443af7 = function (p0) {
	return _in(0x000fa7a4, 0xa8443af7, p0);
};

global.N_0x002aac783ed323ed = function (p0, p1) {
	return _in(0x002aac78, 0x3ed323ed, p0, p1);
};

global.N_0x002babe0b7d53136 = function (p0) {
	return _in(0x002babe0, 0xb7d53136, p0);
};

global.N_0x005e6f28dd7ed58d = function (p0, p1) {
	return _in(0x005e6f28, 0xdd7ed58d, p0, p1, _r, _ri);
};

global.N_0x0060b31968e60e41 = function (p0) {
	return _in(0x0060b319, 0x68e60e41, p0, _r, _ri);
};

global.N_0x007aac783ed323ed = function (p0, p1, p2) {
	return _in(0x007aac78, 0x3ed323ed, p0, p1, p2);
};

global.N_0x007bd043587f7c82 = function (p0) {
	return _in(0x007bd043, 0x587f7c82, p0, _r, _ri);
};

global.N_0x007ff852dcf49da4 = function (p0) {
	return _in(0x007ff852, 0xdcf49da4, p0);
};

global.N_0x009cf9a29972c298 = function (p0) {
	return _in(0x009cf9a2, 0x9972c298, p0);
};

global.N_0x00a15b94cba4f76f = function (p0) {
	return _in(0x00a15b94, 0xcba4f76f, p0);
};

global.N_0x00b156afebcc5ae0 = function (p0) {
	return _in(0x00b156af, 0xebcc5ae0, p0);
};

global.N_0x00b380ff2df6ab7a = function (p0, p1) {
	return _in(0x00b380ff, 0x2df6ab7a, p0, p1);
};

global.N_0x00ba333da05adc23 = function (p0, p1) {
	return _in(0x00ba333d, 0xa05adc23, p0, p1);
};

global.N_0x00bbf7ceae8c666a = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x00bbf7ce, 0xae8c666a, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x00db0bc05e3faa4e = function (p0, p1) {
	return _in(0x00db0bc0, 0x5e3faa4e, p0, p1);
};

global.N_0x00eb5a760638db55 = function (p0, p1, p2) {
	return _in(0x00eb5a76, 0x0638db55, p0, p1, p2);
};

global.N_0x00ee08603eadee92 = function (p0) {
	return _in(0x00ee0860, 0x3eadee92, p0);
};

global.N_0x00f611a794a3c36e = function (p0) {
	return _in(0x00f611a7, 0x94a3c36e, p0);
};

global.N_0x00ffe0f85253c572 = function (p0) {
	return _in(0x00ffe0f8, 0x5253c572, p0, _r, _ri);
};

global.N_0x0105fee8f9091255 = function (p0, p1) {
	return _in(0x0105fee8, 0xf9091255, p0, p1, _r, _ri);
};

global.N_0x012027c28f421f46 = function (p0, p1) {
	return _in(0x012027c2, 0x8f421f46, p0, p1, _r, _ri);
};

global.N_0x012701ed938b85de = function (p0, p1) {
	return _in(0x012701ed, 0x938b85de, p0, p1);
};

global.N_0x0139637a3bff8b6d = function (p0, p1) {
	return _in(0x0139637a, 0x3bff8b6d, p0, p1, _r, _ri);
};

global.N_0x013a7ba5015c1372 = function (p0, p1) {
	return _in(0x013a7ba5, 0x015c1372, p0, p1);
};

global.N_0x01708e8dd3ff8c65 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x01708e8d, 0xd3ff8c65, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _r, _ri);
};

global.N_0x017492b2201e3428 = function (p0, p1, p2, p3) {
	return _in(0x017492b2, 0x201e3428, p0, p1, p2, p3);
};

global.N_0x018f30d762e62df8 = function (p0, p1) {
	return _in(0x018f30d7, 0x62e62df8, p0, p1, _r, _ri);
};

global.N_0x01af8a3729231a43 = function (p0) {
	return _in(0x01af8a37, 0x29231a43, p0, _r, _ri);
};

global.N_0x01b21b81865e2a1f = function (p0, p1) {
	return _in(0x01b21b81, 0x865e2a1f, p0, p1);
};

global.N_0x01b928ca2e198b01 = function (p0) {
	return _in(0x01b928ca, 0x2e198b01, p0, _r, _ri);
};

global.N_0x01f4d242765c6b24 = function (p0) {
	return _in(0x01f4d242, 0x765c6b24, p0, _r, _ri);
};

global.N_0x01f661bb9c71b465 = function (p0, p1, p2) {
	return _in(0x01f661bb, 0x9c71b465, p0, p1, p2);
};

global.N_0x02389579a53c3276 = function (p0, p1, p2, p3) {
	return _in(0x02389579, 0xa53c3276, p0, p1, p2, p3);
};

global.N_0x024ec9b649111915 = function (p0, p1) {
	return _in(0x024ec9b6, 0x49111915, p0, p1);
};

global.N_0x025a1b1fb03fbf61 = function (p0, p1, p2, p3, p4) {
	return _in(0x025a1b1f, 0xb03fbf61, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x025e98e317652cdd = function (p0) {
	return _in(0x025e98e3, 0x17652cdd, p0);
};

global.N_0x027cab2c3af27010 = function () {
	return _in(0x027cab2c, 0x3af27010);
};

global.N_0x0286617c8fc50a53 = function (p0, p1, p2, p3) {
	return _in(0x0286617c, 0x8fc50a53, p0, p1, p2, p3);
};

global.N_0x028e7b3bba0bd2fc = function (p0) {
	return _in(0x028e7b3b, 0xba0bd2fc, p0);
};

global.N_0x028f76b6e78246eb = function (p0, p1, p2, p3) {
	return _in(0x028f76b6, 0xe78246eb, p0, p1, p2, p3);
};

global.N_0x029884fb65821b07 = function (p0) {
	return _in(0x029884fb, 0x65821b07, p0, _r, _ri);
};

global.N_0x02aa2096fe00f3e1 = function (p0, p1) {
	return _in(0x02aa2096, 0xfe00f3e1, p0, p1, _r, _ri);
};

global.N_0x02b21b6beedd83cc = function (p0, p1) {
	return _in(0x02b21b6b, 0xeedd83cc, p0, p1, _r, _ri);
};

global.N_0x02bcc0fe9eba3529 = function (p0, p1, p2, p3, p4) {
	return _in(0x02bcc0fe, 0x9eba3529, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x02c4c6c2900d84df = function (p0, p1) {
	return _in(0x02c4c6c2, 0x900d84df, p0, p1);
};

global.N_0x02e741e19e39628c = function (p0, p1) {
	return _in(0x02e741e1, 0x9e39628c, p0, p1);
};

global.N_0x02e97ce283648cd9 = function (p0) {
	return _in(0x02e97ce2, 0x83648cd9, p0, _r, _ri);
};

global.N_0x02ebbb3989b7e695 = function (p0) {
	return _in(0x02ebbb39, 0x89b7e695, p0, _r, _ri);
};

global.N_0x0317c947d062854e = function (p0) {
	return _in(0x0317c947, 0xd062854e, p0, _r, _ri);
};

global.N_0x032a14d082a9b269 = function (p0) {
	return _in(0x032a14d0, 0x82a9b269, p0);
};

global.N_0x0335106f3acabbed = function (p0) {
	return _in(0x0335106f, 0x3acabbed, p0, _r, _ri);
};

global.N_0x033ee4b89f3ac545 = function (p0, p1, p2) {
	return _in(0x033ee4b8, 0x9f3ac545, p0, p1, p2, _r, _ri);
};

global.N_0x0348469daa17576c = function (p0) {
	return _in(0x0348469d, 0xaa17576c, p0);
};

global.N_0x0349404a22736740 = function (p0, p1, p2) {
	return _in(0x0349404a, 0x22736740, p0, p1, p2);
};

global.N_0x0355fe37240e2c77 = function (p0, p1) {
	return _in(0x0355fe37, 0x240e2c77, p0, p1);
};

global.N_0x0358b8a41916c613 = function (p0, p1, p2, p3) {
	return _in(0x0358b8a4, 0x1916c613, p0, p1, p2, p3, _r, _ri);
};

global.N_0x0365000d8bf86531 = function (p0) {
	return _in(0x0365000d, 0x8bf86531, p0, _r, _ri);
};

global.N_0x0378c08504160d0d = function (p0) {
	return _in(0x0378c085, 0x04160d0d, p0, _r);
};

global.N_0x038b1f1674f0e242 = function (p0) {
	return _in(0x038b1f16, 0x74f0e242, p0, _r, _ri);
};

global.N_0x03b4b759a8990505 = function (p0) {
	return _in(0x03b4b759, 0xa8990505, p0, _r, _ri);
};

global.N_0x03b61cd51097de60 = function (p0) {
	return _in(0x03b61cd5, 0x1097de60, p0, _r, _ri);
};

global.N_0x03c03abbabbef752 = function () {
	return _in(0x03c03abb, 0xabbef752, _r, _ri);
};

global.N_0x03ddbf2d73799f9e = function (p0) {
	return _in(0x03ddbf2d, 0x73799f9e, p0);
};

global.N_0x04019ae4956d4393 = function (p0, p1, p2) {
	return _in(0x04019ae4, 0x956d4393, p0, p1, p2, _r, _ri);
};

global.N_0x04084490cc302cfb = function () {
	return _in(0x04084490, 0xcc302cfb);
};

global.N_0x040ee319efd1d3b5 = function () {
	return _in(0x040ee319, 0xefd1d3b5);
};

global.N_0x041d17a9e221ae30 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x041d17a9, 0xe221ae30, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x0455546f23ff08e4 = function (p0) {
	return _in(0x0455546f, 0x23ff08e4, p0, _r, _ri);
};

global.N_0x049d2196d9d11184 = function () {
	return _in(0x049d2196, 0xd9d11184, _r);
};

global.N_0x049d5c615bd38bad = function (p0, p1, p2) {
	return _in(0x049d5c61, 0x5bd38bad, p0, p1, p2, _r, _ri);
};

global.N_0x04aa59ca40571c2e = function (p0, p1) {
	return _in(0x04aa59ca, 0x40571c2e, p0, p1, _r, _ri);
};

global.N_0x04d1d4e411ce52d0 = function (p0, p1) {
	return _in(0x04d1d4e4, 0x11ce52d0, p0, p1);
};

global.N_0x04d7f33640662fa2 = function (p0) {
	return _in(0x04d7f336, 0x40662fa2, p0, _r, _ri);
};

global.N_0x04f0579dbdd32f34 = function (p0) {
	return _in(0x04f0579d, 0xbdd32f34, p0);
};

global.N_0x0501d52d24ea8934 = function (p0) {
	return _in(0x0501d52d, 0x24ea8934, p0, _r, _ri);
};

global.N_0x0516fae561276efc = function (p0) {
	return _in(0x0516fae5, 0x61276efc, p0, _r, _ri);
};

global.N_0x052d4ac0922af91a = function (p0, p1) {
	return _in(0x052d4ac0, 0x922af91a, p0, p1);
};

global.N_0x054473164c012699 = function (p0) {
	return _in(0x05447316, 0x4c012699, p0, _r, _ri);
};

global.N_0x0552aa3ffc5b87aa = function (p0, p1) {
	return _in(0x0552aa3f, 0xfc5b87aa, p0, p1);
};

global.N_0x0556c784fa056628 = function (p0, p1) {
	return _in(0x0556c784, 0xfa056628, p0, p1, _r, _ri);
};

global.N_0x0556e9d2ecf39d01 = function (p0) {
	return _in(0x0556e9d2, 0xecf39d01, p0, _r, _ri);
};

global.N_0x057c4f092e2298be = function (p0, p1, p2) {
	return _in(0x057c4f09, 0x2e2298be, p0, p1, p2);
};

global.N_0x05a0100ea714db68 = function (p0, p1) {
	return _in(0x05a0100e, 0xa714db68, p0, p1, _r, _ri);
};

global.N_0x05ab44d906738426 = function () {
	return _in(0x05ab44d9, 0x06738426);
};

global.N_0x05ac9e1e02975afb = function (p0, p1, p2) {
	return _in(0x05ac9e1e, 0x02975afb, p0, p1, p2);
};

global.N_0x05bd5e4088b30a66 = function (p0, p1) {
	return _in(0x05bd5e40, 0x88b30a66, _fv(p0), _fv(p1));
};

global.N_0x05ce6af4df071d23 = function (p0, p1) {
	return _in(0x05ce6af4, 0xdf071d23, p0, p1);
};

global.N_0x05d6195fb4d428f4 = function (p0) {
	return _in(0x05d6195f, 0xb4d428f4, p0, _r, _ri);
};

global.N_0x05dd384f39de1c8c = function (p0, p1) {
	return _in(0x05dd384f, 0x39de1c8c, p0, p1, _r, _ri);
};

global.N_0x0608326f7b98c08d = function (p0, p1) {
	return _in(0x0608326f, 0x7b98c08d, p0, p1);
};

global.N_0x06087579e7aa85a9 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x06087579, 0xe7aa85a9, p0, p1, _fv(p2), _fv(p3), _fv(p4), _fv(p5), _r);
};

global.N_0x060bbad634c2b44b = function () {
	return _in(0x060bbad6, 0x34c2b44b, _r, _ri);
};

global.N_0x062b4a4a3396351d = function (p0) {
	return _in(0x062b4a4a, 0x3396351d, p0);
};

global.N_0x062d5ead4da2fa6a = function () {
	return _in(0x062d5ead, 0x4da2fa6a);
};

global.N_0x06557f6d96c86881 = function () {
	return _in(0x06557f6d, 0x96c86881);
};

global.N_0x065887b694359799 = function (p0) {
	return _in(0x065887b6, 0x94359799, p0);
};

global.N_0x065d03a9d6b2c6b5 = function (p0, p1) {
	return _in(0x065d03a9, 0xd6b2c6b5, p0, p1);
};

global.N_0x066167c63111d8cf = function (p0, p1, p2, p3, p4) {
	return _in(0x066167c6, 0x3111d8cf, p0, p1, p2, p3, p4);
};

global.N_0x069eddf1fd4deb0a = function (p0, p1) {
	return _in(0x069eddf1, 0xfd4deb0a, p0, p1);
};

global.N_0x06a09a6e0c6d2a84 = function (p0, p1) {
	return _in(0x06a09a6e, 0x0c6d2a84, p0, p1);
};

global.N_0x06a10b4d7f50b0c3 = function (p0) {
	return _in(0x06a10b4d, 0x7f50b0c3, p0, _r, _ri);
};

global.N_0x06aade17334f7a40 = function (p0, p1, p2, p3) {
	return _in(0x06aade17, 0x334f7a40, p0, p1, p2, p3);
};

global.N_0x06c0d8bb6b04a709 = function () {
	return _in(0x06c0d8bb, 0x6b04a709, _r, _ri);
};

global.N_0x06c5df5ee444bc6b = function (p0, p1, p2, p3, p4) {
	return _in(0x06c5df5e, 0xe444bc6b, p0, p1, p2, p3, p4);
};

global.N_0x06d26a96ca1bca75 = function (p0, p1, p2, p3) {
	return _in(0x06d26a96, 0xca1bca75, p0, p1, p2, p3);
};

global.N_0x06e1fb78b1e59ca5 = function (p0, p1) {
	return _in(0x06e1fb78, 0xb1e59ca5, p0, p1);
};

global.N_0x06fa94c835787c64 = function (p0) {
	return _in(0x06fa94c8, 0x35787c64, p0, _r, _ri);
};

global.N_0x070a3841406c43d5 = function (p0, p1) {
	return _in(0x070a3841, 0x406c43d5, p0, p1);
};

global.N_0x071769bcb24379e5 = function () {
	return _in(0x071769bc, 0xb24379e5, _r, _ri);
};

global.N_0x0730e518486deec3 = function (p0) {
	return _in(0x0730e518, 0x486deec3, p0);
};

global.N_0x0751d461f06e41ce = function (p0, p1, p2, p3) {
	return _in(0x0751d461, 0xf06e41ce, p0, p1, p2, p3);
};

global.N_0x07559b29950301ff = function (p0, p1) {
	return _in(0x07559b29, 0x950301ff, p0, p1);
};

global.N_0x0760d6f70ebcc05c = function (p0) {
	return _in(0x0760d6f7, 0x0ebcc05c, p0, _r, _ri);
};

global.N_0x07706c4cc9c6cc9e = function (p0, p1, p2, p3, p4) {
	return _in(0x07706c4c, 0xc9c6cc9e, p0, p1, p2, p3, p4);
};

global.N_0x0772f87d7b07719a = function (p0, p1, p2) {
	return _in(0x0772f87d, 0x7b07719a, p0, p1, p2, _r, _ri);
};

global.N_0x078076ab50fb117f = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x078076ab, 0x50fb117f, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x078f77fd1a43eab3 = function (p0, p1) {
	return _in(0x078f77fd, 0x1a43eab3, p0, p1);
};

global.N_0x0790473eee1977d3 = function (p0) {
	return _in(0x0790473e, 0xee1977d3, p0, _r, _ri);
};

global.N_0x0794199b25e499e1 = function (p0, p1) {
	return _in(0x0794199b, 0x25e499e1, p0, p1);
};

global.N_0x07954320d77f6a3d = function (p0) {
	return _in(0x07954320, 0xd77f6a3d, p0, _r, _ri);
};

global.N_0x07a6f6447eca9b64 = function (p0, p1) {
	return _in(0x07a6f644, 0x7eca9b64, p0, p1, _r, _ri);
};

global.N_0x07ad9e43fd478527 = function (p0, p1) {
	return _in(0x07ad9e43, 0xfd478527, p0, p1, _r);
};

global.N_0x07c0f87aac57f2e4 = function (p0, p1) {
	return _in(0x07c0f87a, 0xac57f2e4, p0, p1);
};

global.N_0x07e1c35f0078c3f9 = function (p0, p1) {
	return _in(0x07e1c35f, 0x0078c3f9, p0, p1, _r, _ri);
};

global.N_0x07e2e21e799080a0 = function (p0, p1) {
	return _in(0x07e2e21e, 0x799080a0, p0, p1);
};

global.N_0x07e8b8b20570271c = function (p0) {
	return _in(0x07e8b8b2, 0x0570271c, p0);
};

global.N_0x07ea5b053fa60ac7 = function (p0, p1) {
	return _in(0x07ea5b05, 0x3fa60ac7, p0, p1);
};

global.N_0x07fb139b592fa687 = function (p0, p1, p2, p3) {
	return _in(0x07fb139b, 0x592fa687, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _r);
};

global.N_0x0816c31480764ab0 = function (p0, p1, p2, p3) {
	return _in(0x0816c314, 0x80764ab0, p0, p1, p2, p3);
};

global.N_0x082c043c7afc3747 = function (p0, p1) {
	return _in(0x082c043c, 0x7afc3747, p0, p1);
};

global.N_0x083d497d57b7400f = function (p0) {
	return _in(0x083d497d, 0x57b7400f, p0, _r, _ri);
};

global.N_0x085c5b61a0114f32 = function (p0, p1) {
	return _in(0x085c5b61, 0xa0114f32, p0, p1);
};

global.N_0x086549f3b0381cb1 = function (p0, p1) {
	return _in(0x086549f3, 0xb0381cb1, p0, p1);
};

global.N_0x0869d499a7848309 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x0869d499, 0xa7848309, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x0876326238914a3f = function () {
	return _in(0x08763262, 0x38914a3f);
};

global.N_0x08797a8c03868cb8 = function (p0) {
	return _in(0x08797a8c, 0x03868cb8, p0);
};

global.N_0x087d8f4bc65f68e4 = function (p0) {
	return _in(0x087d8f4b, 0xc65f68e4, p0);
};

global.N_0x08892122769770d5 = function (popZone, p1) {
	return _in(0x08892122, 0x769770d5, popZone, p1);
};

global.N_0x08c5825a2932ea7b = function (p0) {
	return _in(0x08c5825a, 0x2932ea7b, p0, _r, _ri);
};

global.N_0x08e22898a6af4905 = function (p0, p1) {
	return _in(0x08e22898, 0xa6af4905, p0, p1);
};

global.N_0x08fc896d2cb31fcc = function (p0, p1) {
	return _in(0x08fc896d, 0x2cb31fcc, p0, p1, _r, _ri);
};

global.N_0x08ff1099ed2e6e21 = function (p0) {
	return _in(0x08ff1099, 0xed2e6e21, p0, _r, _ri);
};

global.N_0x09034479e6e3e269 = function (p0, p1, p2) {
	return _in(0x09034479, 0xe6e3e269, p0, p1, p2, _r, _ri);
};

global.N_0x0909f71b5c070797 = function () {
	return _in(0x0909f71b, 0x5c070797, _r, _ri);
};

global.N_0x09171a6f8fde5dc1 = function (p0, p1, p2, p3, p4) {
	return _in(0x09171a6f, 0x8fde5dc1, p0, p1, p2, p3, p4);
};

global.N_0x0918e3565c20f03c = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x0918e356, 0x5c20f03c, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x0939e773925c4719 = function () {
	return _in(0x0939e773, 0x925c4719);
};

global.N_0x093a9d1f72df0d19 = function (p0, p1) {
	return _in(0x093a9d1f, 0x72df0d19, p0, p1);
};

global.N_0x0943113e02322164 = function (p0, p1) {
	return _in(0x0943113e, 0x02322164, p0, p1, _r, _ri);
};

global.N_0x095c2277fed731db = function (p0) {
	return _in(0x095c2277, 0xfed731db, p0, _r, _ri);
};

global.N_0x0961b089947ba6d0 = function (p0) {
	return _in(0x0961b089, 0x947ba6d0, p0);
};

global.N_0x098036cab8373d36 = function (p0) {
	return _in(0x098036ca, 0xb8373d36, p0);
};

global.N_0x098caa6dbe7d8d82 = function (p0, p1) {
	return _in(0x098caa6d, 0xbe7d8d82, p0, p1);
};

global.N_0x09937eb0cebc2f9f = function () {
	return _in(0x09937eb0, 0xcebc2f9f, _r, _ri);
};

global.N_0x099d4a855d53b03b = function (p0, p1, p2) {
	return _in(0x099d4a85, 0x5d53b03b, p0, p1, p2);
};

global.N_0x09a1c7dfdce54fbc = function (p0) {
	return _in(0x09a1c7df, 0xdce54fbc, p0);
};

global.N_0x09b83e68de004cd4 = function (p0) {
	return _in(0x09b83e68, 0xde004cd4, p0, _r, _ri);
};

global.N_0x09c28f828ee674fa = function (p0, p1, p2) {
	return _in(0x09c28f82, 0x8ee674fa, p0, p1, p2);
};

global.N_0x09c970ae59abf6b2 = function (vehicle, p1) {
	return _in(0x09c970ae, 0x59abf6b2, vehicle, p1);
};

global.N_0x09d7afd3716da8e1 = function (p0, p1) {
	return _in(0x09d7afd3, 0x716da8e1, p0, p1, _r, _ri);
};

global.N_0x09e378c52b1433b5 = function (p0, p1, p2, p3, p4) {
	return _in(0x09e378c5, 0x2b1433b5, p0, p1, p2, p3, p4);
};

global.N_0x09ee00b8f858e0be = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x09ee00b8, 0xf858e0be, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x09fbf15d73efc900 = function () {
	return _in(0x09fbf15d, 0x73efc900);
};

global.N_0x0a04a07bc3074edb = function (p0) {
	return _in(0x0a04a07b, 0xc3074edb, p0);
};

global.N_0x0a2ab7b7abc055f4 = function (p0) {
	return _in(0x0a2ab7b7, 0xabc055f4, p0, _r, _ri);
};

global.N_0x0a428058079ee65c = function (p0) {
	return _in(0x0a428058, 0x079ee65c, p0);
};

global.N_0x0a4618ffd517e24d = function (p0, p1) {
	return _in(0x0a4618ff, 0xd517e24d, p0, p1);
};

global.N_0x0a487cc74a517fb5 = function (p0) {
	return _in(0x0a487cc7, 0x4a517fb5, p0);
};

global.N_0x0a5a4f1979abb40e = function (p0) {
	return _in(0x0a5a4f19, 0x79abb40e, p0);
};

global.N_0x0a79c81c418f5d38 = function (p0, p1) {
	return _in(0x0a79c81c, 0x418f5d38, p0, p1, _r, _ri);
};

global.N_0x0a82317b7ebfc420 = function (p0) {
	return _in(0x0a82317b, 0x7ebfc420, p0, _r, _ri);
};

global.N_0x0a8fd91ede7b328a = function (p0, p1) {
	return _in(0x0a8fd91e, 0xde7b328a, p0, p1);
};

global.N_0x0a98a362c5a19a43 = function (p0) {
	return _in(0x0a98a362, 0xc5a19a43, p0, _r, _ri);
};

global.N_0x0ada3ec589e1736e = function () {
	return _in(0x0ada3ec5, 0x89e1736e);
};

global.N_0x0ae241a4a9adeeec = function (p0) {
	return _in(0x0ae241a4, 0xa9adeeec, p0, _r, _ri);
};

global.N_0x0b3a99ab6713aa52 = function (p0) {
	return _in(0x0b3a99ab, 0x6713aa52, p0);
};

global.N_0x0b46e25761519058 = function (p0, p1, p2) {
	return _in(0x0b46e257, 0x61519058, p0, p1, p2);
};

global.N_0x0b6009a90b8495f1 = function (p0) {
	return _in(0x0b6009a9, 0x0b8495f1, p0, _r, _ri);
};

global.N_0x0b6b4507ac5ea8b8 = function () {
	return _in(0x0b6b4507, 0xac5ea8b8, _r, _ri);
};

global.N_0x0b6d275d2f242e17 = function (p0, p1, p2) {
	return _in(0x0b6d275d, 0x2f242e17, p0, p1, p2);
};

global.N_0x0b7803f6f7bb43e0 = function () {
	return _in(0x0b7803f6, 0xf7bb43e0, _r, _ri);
};

global.N_0x0b7cb1300cbfe19c = function (p0, p1) {
	return _in(0x0b7cb130, 0x0cbfe19c, p0, p1, _r, _ri);
};

global.N_0x0b9f7a01ec50448d = function (p0, p1) {
	return _in(0x0b9f7a01, 0xec50448d, p0, p1);
};

global.N_0x0ba4250d20007c2e = function (p0) {
	return _in(0x0ba4250d, 0x20007c2e, p0, _r, _ri);
};

global.N_0x0bb6de7d23c60626 = function (p0) {
	return _in(0x0bb6de7d, 0x23c60626, p0, _r, _ri);
};

global.N_0x0bcd4091c8eaba42 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x0bcd4091, 0xc8eaba42, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.N_0x0bdfebcf40a5f7e3 = function (p0) {
	return _in(0x0bdfebcf, 0x40a5f7e3, p0, _r, _ri);
};

global.N_0x0bf3b3bd47d79c08 = function (modelHash, p1) {
	return _in(0x0bf3b3bd, 0x47d79c08, _ch(modelHash), p1);
};

global.N_0x0bf90cbb6b72977b = function () {
	return _in(0x0bf90cbb, 0x6b72977b);
};

global.N_0x0bfa1bd465cdfefd = function (p0) {
	return _in(0x0bfa1bd4, 0x65cdfefd, p0);
};

global.N_0x0c093c1787f18519 = function (p0, p1) {
	return _in(0x0c093c17, 0x87f18519, p0, p1, _r, _ri);
};

global.N_0x0c0a373d181bf900 = function (p0) {
	return _in(0x0c0a373d, 0x181bf900, p0);
};

global.N_0x0c31c51168e80365 = function (p0) {
	return _in(0x0c31c511, 0x68e80365, p0, _r, _ri);
};

global.N_0x0c392db374655176 = function (p0, p1, p2, p3, p4) {
	return _in(0x0c392db3, 0x74655176, p0, p1, p2, p3, p4);
};

global.N_0x0c3cb2e600c8977d = function (p0, p1) {
	return _in(0x0c3cb2e6, 0x00c8977d, p0, p1, _r, _ri);
};

global.N_0x0c3f0f7f92ca847c = function (p0, p1) {
	return _in(0x0c3f0f7f, 0x92ca847c, p0, p1);
};

global.N_0x0c6a00dae896614c = function (p0, p1) {
	return _in(0x0c6a00da, 0xe896614c, p0, p1);
};

global.N_0x0c6b89876262a99d = function (p0, p1) {
	return _in(0x0c6b8987, 0x6262a99d, p0, p1);
};

global.N_0x0c718001b77ca468 = function (p0, p1) {
	return _in(0x0c718001, 0xb77ca468, p0, p1);
};

global.N_0x0c7a2289a5c4d7c9 = function (p0, p1) {
	return _in(0x0c7a2289, 0xa5c4d7c9, p0, p1);
};

global.N_0x0c9dbf48c6ba6e4c = function (p0, p1, p2, p3, p4) {
	return _in(0x0c9dbf48, 0xc6ba6e4c, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x0cab404cd2db41f5 = function (p0, p1) {
	return _in(0x0cab404c, 0xd2db41f5, p0, p1, _r, _ri);
};

global.N_0x0cadc3a977997472 = function (p0, p1) {
	return _in(0x0cadc3a9, 0x77997472, p0, p1, _r, _ri);
};

global.N_0x0cb16d05e03fb525 = function (p0) {
	return _in(0x0cb16d05, 0xe03fb525, p0);
};

global.N_0x0cb3d1919e8d7cba = function (p0) {
	return _in(0x0cb3d191, 0x9e8d7cba, p0, _r, _ri);
};

global.N_0x0cc28c08613ba9e5 = function (p0) {
	return _in(0x0cc28c08, 0x613ba9e5, p0);
};

global.N_0x0cc36d4156006509 = function (p0) {
	return _in(0x0cc36d41, 0x56006509, p0, _r, _ri);
};

global.N_0x0ccefc6c2c95da2a = function (p0, p1, p2, p3) {
	return _in(0x0ccefc6c, 0x2c95da2a, p0, p1, p2, p3, _r, _ri);
};

global.N_0x0ccfe72b43c9cf96 = function (p0) {
	return _in(0x0ccfe72b, 0x43c9cf96, p0, _r, _ri);
};

global.N_0x0cd7914d17a970ab = function (p0, p1) {
	return _in(0x0cd7914d, 0x17a970ab, p0, p1);
};

global.N_0x0ce8aafe9e433a23 = function (p0) {
	return _in(0x0ce8aafe, 0x9e433a23, p0, _r, _ri);
};

global.N_0x0ceeb6f4780b1f2f = function (p0, p1) {
	return _in(0x0ceeb6f4, 0x780b1f2f, p0, p1, _r, _ri);
};

global.N_0x0d0ae5081f88cfe1 = function (p0) {
	return _in(0x0d0ae508, 0x1f88cfe1, p0, _r, _ri);
};

global.N_0x0d0db2b6af19a987 = function (p0) {
	return _in(0x0d0db2b6, 0xaf19a987, p0);
};

global.N_0x0d322aef8878b8fe = function (p0, p1) {
	return _in(0x0d322aef, 0x8878b8fe, p0, p1);
};

global.N_0x0d3b1568917ebda0 = function (p0, p1) {
	return _in(0x0d3b1568, 0x917ebda0, p0, p1, _r, _ri);
};

global.N_0x0d497aa69059fe40 = function (p0, p1) {
	return _in(0x0d497aa6, 0x9059fe40, p0, p1);
};

global.N_0x0d5fdf0d36fa10cd = function (p0) {
	return _in(0x0d5fdf0d, 0x36fa10cd, p0);
};

global.N_0x0d78e1097f89e637 = function (p0) {
	return _in(0x0d78e109, 0x7f89e637, p0, _r, _ri);
};

global.N_0x0d7fd6a55fd63aef = function (p0, p1, p2) {
	return _in(0x0d7fd6a5, 0x5fd63aef, p0, p1, p2);
};

global.N_0x0db41d59e0f1502b = function (p0) {
	return _in(0x0db41d59, 0xe0f1502b, p0);
};

global.N_0x0dbaca9c38c9a686 = function (p0) {
	return _in(0x0dbaca9c, 0x38c9a686, p0, _r, _ri);
};

global.N_0x0dcec6a92e497e17 = function (p0, p1) {
	return _in(0x0dcec6a9, 0x2e497e17, p0, p1);
};

global.N_0x0dd051b1bf4b8bd6 = function (p0) {
	return _in(0x0dd051b1, 0xbf4b8bd6, p0, _r, _ri);
};

global.N_0x0de02da3c0f66955 = function (p0, p1) {
	return _in(0x0de02da3, 0xc0f66955, p0, p1);
};

global.N_0x0ded260a1958a82e = function (p0) {
	return _in(0x0ded260a, 0x1958a82e, p0, _r, _ri);
};

global.N_0x0df57f86fe71dbe5 = function (p0, p1) {
	return _in(0x0df57f86, 0xfe71dbe5, p0, p1, _r, _ri);
};

global.N_0x0e17378642156790 = function (p0, p1) {
	return _in(0x0e173786, 0x42156790, p0, p1);
};

global.N_0x0e184495b27bb57d = function () {
	return _in(0x0e184495, 0xb27bb57d);
};

global.N_0x0e1db1f8f5b561dc = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x0e1db1f8, 0xf5b561dc, p0, p1, p2, p3, p4, p5);
};

global.N_0x0e2c3aee6ce603b7 = function () {
	return _in(0x0e2c3aee, 0x6ce603b7, _r, _ri);
};

global.N_0x0e3a041ed6ac2b45 = function () {
	return _in(0x0e3a041e, 0xd6ac2b45, _r, _rf);
};

global.N_0x0e3bdeed21beb945 = function (p0, p1) {
	return _in(0x0e3bdeed, 0x21beb945, p0, p1);
};

global.N_0x0e3bf7ed4169ec43 = function (p0) {
	return _in(0x0e3bf7ed, 0x4169ec43, p0, _r, _ri);
};

global.N_0x0e54d4da6018ff8e = function () {
	return _in(0x0e54d4da, 0x6018ff8e, _r, _ri);
};

global.N_0x0e558d3a49d759d6 = function (p0, p1) {
	return _in(0x0e558d3a, 0x49d759d6, p0, p1, _r, _ri);
};

global.N_0x0e5c9fb9ed5dff1c = function (p0) {
	return _in(0x0e5c9fb9, 0xed5dff1c, p0, _r, _ri);
};

global.N_0x0e6846476906c9dd = function (p0, p1) {
	return _in(0x0e684647, 0x6906c9dd, p0, p1, _r, _ri);
};

global.N_0x0e71c80fa4ec8147 = function (p0, p1) {
	return _in(0x0e71c80f, 0xa4ec8147, p0, p1);
};

global.N_0x0e9057a9da78d0f8 = function (p0, p1) {
	return _in(0x0e9057a9, 0xda78d0f8, p0, p1);
};

global.N_0x0e94c95ec3185fa9 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x0e94c95e, 0xc3185fa9, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x0e99e3bf11bb6367 = function (p0) {
	return _in(0x0e99e3bf, 0x11bb6367, p0, _r, _ri);
};

global.N_0x0e9e95fdedcc9d35 = function (p0, p1, p2) {
	return _in(0x0e9e95fd, 0xedcc9d35, p0, p1, p2);
};

global.N_0x0ea9eacba3b01601 = function (p0, p1, p2) {
	return _in(0x0ea9eacb, 0xa3b01601, p0, p1, p2, _r, _ri);
};

global.N_0x0eabf182fbb63d72 = function (p0, p1, p2) {
	return _in(0x0eabf182, 0xfbb63d72, p0, p1, p2);
};

global.N_0x0eaf918f751f27ba = function (p0) {
	return _in(0x0eaf918f, 0x751f27ba, p0, _r, _ri);
};

global.N_0x0eb78c2b156635b1 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x0eb78c2b, 0x156635b1, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.N_0x0ee3f0d7feccc54f = function () {
	return _in(0x0ee3f0d7, 0xfeccc54f, _r, _ri);
};

global.N_0x0eef7a81c17679db = function (p0) {
	return _in(0x0eef7a81, 0xc17679db, p0, _r, _ri);
};

global.N_0x0f1861101c9a9944 = function (popZone, p1) {
	return _in(0x0f186110, 0x1c9a9944, popZone, p1);
};

global.N_0x0f1cd8ca9e65d5f6 = function (p0, p1) {
	return _in(0x0f1cd8ca, 0x9e65d5f6, p0, p1);
};

global.N_0x0f1ffef5d54ae832 = function () {
	return _in(0x0f1ffef5, 0xd54ae832);
};

global.N_0x0f230de0ddbe3649 = function (p0) {
	return _in(0x0f230de0, 0xddbe3649, p0, _r, _ri);
};

global.N_0x0f2a2175734926d8 = function (p0, p1) {
	return _in(0x0f2a2175, 0x734926d8, p0, p1);
};

global.N_0x0f44a5c78d114922 = function (p0) {
	return _in(0x0f44a5c7, 0x8d114922, p0, _r, _ri);
};

global.N_0x0f4eaf69da41af43 = function (p0) {
	return _in(0x0f4eaf69, 0xda41af43, p0, _r, _ri);
};

global.N_0x0f4f6c4ce471259d = function (p0, p1) {
	return _in(0x0f4f6c4c, 0xe471259d, p0, p1);
};

global.N_0x0f7f603bde08c4d3 = function (p0) {
	return _in(0x0f7f603b, 0xde08c4d3, p0);
};

global.N_0x0f967019cc853bcc = function (p0, p1) {
	return _in(0x0f967019, 0xcc853bcc, p0, p1);
};

global.N_0x0f99f6436528a089 = function (p0) {
	return _in(0x0f99f643, 0x6528a089, p0, _r, _ri);
};

global.N_0x0f9cf06986300875 = function (p0) {
	return _in(0x0f9cf069, 0x86300875, p0);
};

global.N_0x0faf7171bf613b80 = function (p0) {
	return _in(0x0faf7171, 0xbf613b80, p0);
};

global.N_0x0faf95d71ed67ade = function (p0, p1) {
	return _in(0x0faf95d7, 0x1ed67ade, p0, p1);
};

global.N_0x0fb1ba7ff73b41e1 = function (p0, p1, p2) {
	return _in(0x0fb1ba7f, 0xf73b41e1, p0, p1, p2);
};

global.N_0x0fbbffc891a97c81 = function (p0) {
	return _in(0x0fbbffc8, 0x91a97c81, p0, _r, _ri);
};

global.N_0x0fd07141ad048aae = function (p0, p1) {
	return _in(0x0fd07141, 0xad048aae, p0, p1, _r, _ri);
};

global.N_0x0fd25587bb306c86 = function (p0) {
	return _in(0x0fd25587, 0xbb306c86, p0, _r, _ri);
};

global.N_0x0fd3ecf9d0c8655f = function () {
	return _in(0x0fd3ecf9, 0xd0c8655f, _r, _ri);
};

global.N_0x0fd7d7c232876e72 = function (p0) {
	return _in(0x0fd7d7c2, 0x32876e72, p0);
};

global.N_0x0fddee66e3465726 = function (p0) {
	return _in(0x0fddee66, 0xe3465726, p0, _r, _ri);
};

global.N_0x0fe797dd9f70dfa6 = function (p0, p1, p2, p3) {
	return _in(0x0fe797dd, 0x9f70dfa6, p0, p1, p2, p3);
};

global.N_0x0fee2561120f3333 = function (p0) {
	return _in(0x0fee2561, 0x120f3333, p0);
};

global.N_0x0ff421e467373fcf = function (p0) {
	return _in(0x0ff421e4, 0x67373fcf, p0, _r, _ri);
};

global.N_0x0ff7125f07deb84f = function (p0, p1) {
	return _in(0x0ff7125f, 0x07deb84f, p0, p1);
};

global.N_0x0ffdf937e5c11382 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x0ffdf937, 0xe5c11382, p0, p1, p2, p3, p4, p5);
};

global.N_0x100157d6d7fe32ca = function (p0, p1) {
	return _in(0x100157d6, 0xd7fe32ca, p0, p1, _r, _ri);
};

global.N_0x10157bc3247ff3ba = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x10157bc3, 0x247ff3ba, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.N_0x101b45c5f56d970f = function (p0, p1, p2, p3) {
	return _in(0x101b45c5, 0xf56d970f, p0, p1, p2, p3, _r, _ri);
};

global.N_0x101f538c25abb39a = function (p0, p1) {
	return _in(0x101f538c, 0x25abb39a, p0, p1, _r, _ri);
};

global.N_0x10342cc82e8356e9 = function (p0, p1) {
	return _in(0x10342cc8, 0x2e8356e9, p0, p1, _r, _ri);
};

global.N_0x103c2f885abeb00b = function (p0, p1) {
	return _in(0x103c2f88, 0x5abeb00b, p0, p1, _r, _ri);
};

global.N_0x104080ca9e519b00 = function (p0, p1) {
	return _in(0x104080ca, 0x9e519b00, p0, p1, _r, _ri);
};

global.N_0x104d9a7b1c0d0783 = function (p0, p1) {
	return _in(0x104d9a7b, 0x1c0d0783, p0, p1);
};

global.N_0x106a811c6d3035f3 = function (p0, p1, p2, p3) {
	return _in(0x106a811c, 0x6d3035f3, p0, p1, p2, p3);
};

global.N_0x107f2a66e1c4c83a = function (p0) {
	return _in(0x107f2a66, 0xe1c4c83a, p0);
};

global.N_0x10827b5a0aac56a7 = function (p0, p1, p2) {
	return _in(0x10827b5a, 0x0aac56a7, p0, p1, p2);
};

global.N_0x1096603b519c905f = function (p0) {
	return _in(0x1096603b, 0x519c905f, p0);
};

global.N_0x1098cda477890165 = function (p0, p1) {
	return _in(0x1098cda4, 0x77890165, p0, p1);
};

global.N_0x10adfdf07b7dffba = function (p0, p1, p2) {
	return _in(0x10adfdf0, 0x7b7dffba, p0, p1, p2, _r, _ri);
};

global.N_0x10c1767b93257480 = function (p0, p1, p2) {
	return _in(0x10c1767b, 0x93257480, p0, p1, p2);
};

global.N_0x10c44f633e2d6d9e = function (p0) {
	return _in(0x10c44f63, 0x3e2d6d9e, p0);
};

global.N_0x10c70a515bc03707 = function (p0) {
	return _in(0x10c70a51, 0x5bc03707, p0, _r, _ri);
};

global.N_0x10daa76cb8a201a1 = function (p0) {
	return _in(0x10daa76c, 0xb8a201a1, p0);
};

global.N_0x10f96086123b939f = function (p0, p1, p2) {
	return _in(0x10f96086, 0x123b939f, p0, p1, p2);
};

global.N_0x1121b07088ed3013 = function (p0) {
	return _in(0x1121b070, 0x88ed3013, p0, _r, _ri);
};

global.N_0x112bca290d2eb53c = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x112bca29, 0x0d2eb53c, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x112ddf56300bc6e5 = function (p0) {
	return _in(0x112ddf56, 0x300bc6e5, p0, _r, _ri);
};

global.N_0x113857d66a9cabe6 = function (p0) {
	return _in(0x113857d6, 0x6a9cabe6, p0, _r, _ri);
};

global.N_0x113ef458ab6cda67 = function (p0, p1) {
	return _in(0x113ef458, 0xab6cda67, p0, p1);
};

global.N_0x1148f706cf4ebdda = function (p0, p1, p2) {
	return _in(0x1148f706, 0xcf4ebdda, p0, p1, p2, _r, _ri);
};

global.N_0x1180a2974d251b7b = function (p0) {
	return _in(0x1180a297, 0x4d251b7b, p0, _r, _ri);
};

global.N_0x11820d1ae80dea39 = function (p0, p1) {
	return _in(0x11820d1a, 0xe80dea39, p0, p1, _r, _ri);
};

global.N_0x118873dd538490b4 = function (p0, p1) {
	return _in(0x118873dd, 0x538490b4, p0, p1);
};

global.N_0x118d476a6f1a13f1 = function (p0) {
	return _in(0x118d476a, 0x6f1a13f1, p0, _r, _ri);
};

global.N_0x11986b05885564d2 = function (p0) {
	return _in(0x11986b05, 0x885564d2, p0);
};

global.N_0x119a5714578f4e05 = function (p0, p1) {
	return _in(0x119a5714, 0x578f4e05, p0, p1);
};

global.N_0x11a7ff918ef6bc66 = function (p0, p1) {
	return _in(0x11a7ff91, 0x8ef6bc66, p0, p1);
};

global.N_0x11b0a0b282fa9b10 = function (p0) {
	return _in(0x11b0a0b2, 0x82fa9b10, p0);
};

global.N_0x11c7ce1ae38911b5 = function (p0) {
	return _in(0x11c7ce1a, 0xe38911b5, p0, _r, _ri);
};

global.N_0x11cd066f54da0133 = function (p0) {
	return _in(0x11cd066f, 0x54da0133, p0, _r, _ri);
};

global.N_0x11cdabdc7783b2bc = function (p0, p1, p2, p3) {
	return _in(0x11cdabdc, 0x7783b2bc, p0, p1, p2, p3);
};

global.N_0x11e73195e735b25b = function (p0) {
	return _in(0x11e73195, 0xe735b25b, p0, _r, _ri);
};

global.N_0x11ea52cad1b55910 = function () {
	return _in(0x11ea52ca, 0xd1b55910, _r);
};

global.N_0x11f32bb61b756732 = function (p0, p1) {
	return _in(0x11f32bb6, 0x1b756732, p0, p1);
};

global.N_0x120376c23f019c6c = function (p0, p1) {
	return _in(0x120376c2, 0x3f019c6c, p0, p1, _r, _ri);
};

global.N_0x1204eb53a5fbc63d = function () {
	return _in(0x1204eb53, 0xa5fbc63d, _r, _ri);
};

global.N_0x121d2005dd64496b = function (p0, p1, p2) {
	return _in(0x121d2005, 0xdd64496b, p0, p1, p2, _r, _ri);
};

global.N_0x1240e8596a8308b9 = function (p0, p1) {
	return _in(0x1240e859, 0x6a8308b9, p0, p1);
};

global.N_0x1252c029fc8ebb4d = function () {
	return _in(0x1252c029, 0xfc8ebb4d, _r, _ri);
};

global.N_0x126cbebba46693cf = function (p0, p1, p2) {
	return _in(0x126cbebb, 0xa46693cf, p0, p1, p2, _r, _ri);
};

global.N_0x12769eeb8dbd7a7b = function () {
	return _in(0x12769eeb, 0x8dbd7a7b);
};

global.N_0x128fc3a893bf853a = function (p0) {
	return _in(0x128fc3a8, 0x93bf853a, p0);
};

global.N_0x1298b3d8e4c2409f = function (p0) {
	return _in(0x1298b3d8, 0xe4c2409f, p0);
};

global.N_0x12990818c1d35886 = function (p0, p1, p2) {
	return _in(0x12990818, 0xc1d35886, p0, p1, p2);
};

global.N_0x12aeb56b489415c5 = function () {
	return _in(0x12aeb56b, 0x489415c5, _r, _ri);
};

global.N_0x12e09e278c6c29b7 = function (p0) {
	return _in(0x12e09e27, 0x8c6c29b7, p0);
};

global.N_0x12e981d53b07bf48 = function (p0) {
	return _in(0x12e981d5, 0x3b07bf48, p0, _r, _ri);
};

global.N_0x12eb4e31f092c9b3 = function (p0) {
	return _in(0x12eb4e31, 0xf092c9b3, p0, _r, _ri);
};

global.N_0x12f2d161bf4031fc = function (p0, p1) {
	return _in(0x12f2d161, 0xbf4031fc, p0, p1);
};

global.N_0x12f6c6ed3eff42de = function (p0, p1, p2, p3) {
	return _in(0x12f6c6ed, 0x3eff42de, p0, p1, p2, p3);
};

global.N_0x12fb95fe3d579238 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x12fb95fe, 0x3d579238, p0, p1, p2, p3, p4, p5);
};

global.N_0x12fcaa23f2320422 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x12fcaa23, 0xf2320422, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x13154a76ce0cf9ab = function (p0, p1) {
	return _in(0x13154a76, 0xce0cf9ab, p0, p1, _r, _ri);
};

global.N_0x131e294ef60160df = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x131e294e, 0xf60160df, p0, p1, p2, p3, p4, p5);
};

global.N_0x131ec9247e7a2903 = function (p0) {
	return _in(0x131ec924, 0x7e7a2903, p0, _r, _ri);
};

global.N_0x13430d3d5a45f14b = function (p0) {
	return _in(0x13430d3d, 0x5a45f14b, p0, _r, _ri);
};

global.N_0x134775b093ad5c38 = function (p0) {
	return _in(0x134775b0, 0x93ad5c38, p0, _r, _ri);
};

global.N_0x1359c181bc625503 = function () {
	return _in(0x1359c181, 0xbc625503, _r, _ri);
};

global.N_0x137772000daf42c5 = function (p0) {
	return _in(0x13777200, 0x0daf42c5, p0, _r, _ri);
};

global.N_0x138398153824e332 = function () {
	return _in(0x13839815, 0x3824e332);
};

global.N_0x138adb94f8b90616 = function () {
	return _in(0x138adb94, 0xf8b90616);
};

global.N_0x1392105da88bbffb = function (p0, p1, p2, p3, p4) {
	return _in(0x1392105d, 0xa88bbffb, p0, p1, p2, p3, p4);
};

global.N_0x139805c2a67c4795 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x139805c2, 0xa67c4795, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x139efb0a71dd9011 = function () {
	return _in(0x139efb0a, 0x71dd9011, _r, _ri);
};

global.N_0x13a1b061007c906b = function (p0) {
	return _in(0x13a1b061, 0x007c906b, p0, _r, _ri);
};

global.N_0x13a210949fcbd92b = function (p0, p1) {
	return _in(0x13a21094, 0x9fcbd92b, p0, p1);
};

global.N_0x13aaecda43318bfe = function (p0, p1) {
	return _in(0x13aaecda, 0x43318bfe, p0, p1, _r, _ri);
};

global.N_0x13c190302369308b = function (p0) {
	return _in(0x13c19030, 0x2369308b, p0, _r, _ri);
};

global.N_0x13d234a2a3f66e63 = function (p0) {
	return _in(0x13d234a2, 0xa3f66e63, p0, _r, _ri);
};

global.N_0x13e7320c762f0477 = function (p0) {
	return _in(0x13e7320c, 0x762f0477, p0);
};

global.N_0x13eb275bf81636d1 = function (p0, p1) {
	return _in(0x13eb275b, 0xf81636d1, p0, p1);
};

global.N_0x13f138225c202f66 = function (p0, p1) {
	return _in(0x13f13822, 0x5c202f66, p0, p1);
};

global.N_0x13f592fc3bf0ea84 = function (p0, p1, p2, p3, p4) {
	return _in(0x13f592fc, 0x3bf0ea84, p0, p1, p2, p3, p4);
};

global.N_0x1407f5115fb9583e = function (p0, p1) {
	return _in(0x1407f511, 0x5fb9583e, p0, p1, _r, _ri);
};

global.N_0x140b3cb1d424a945 = function (p0, p1) {
	return _in(0x140b3cb1, 0xd424a945, p0, p1);
};

global.N_0x1413b6bf27ab7a95 = function () {
	return _in(0x1413b6bf, 0x27ab7a95, _r, _ri);
};

global.N_0x14169fa823679e41 = function (p0) {
	return _in(0x14169fa8, 0x23679e41, p0, _r, _ri);
};

global.N_0x141bc64c8d7c5529 = function (p0) {
	return _in(0x141bc64c, 0x8d7c5529, p0);
};

global.N_0x1431540bca1a1bd2 = function () {
	return _in(0x1431540b, 0xca1a1bd2, _r, _ri);
};

global.N_0x1460b644397453eb = function () {
	return _in(0x1460b644, 0x397453eb);
};

global.N_0x1461df6db886be3f = function (p0) {
	return _in(0x1461df6d, 0xb886be3f, p0);
};

global.N_0x148e7ac8141c9e64 = function (p0) {
	return _in(0x148e7ac8, 0x141c9e64, p0, _r, _ri);
};

global.N_0x149a2751ab66ac02 = function (p0) {
	return _in(0x149a2751, 0xab66ac02, p0, _r, _ri);
};

global.N_0x149aee66f0cb3a99 = function (p0, p1) {
	return _in(0x149aee66, 0xf0cb3a99, _fv(p0), _fv(p1));
};

global.N_0x14c4a49e36c29e49 = function () {
	return _in(0x14c4a49e, 0x36c29e49, _r, _ri);
};

global.N_0x14d29bb12d47f68c = function (p0, p1, p2, p3, p4) {
	return _in(0x14d29bb1, 0x2d47f68c, p0, p1, p2, p3, p4);
};

global.N_0x14da8c4bc2ccd90a = function (p0) {
	return _in(0x14da8c4b, 0xc2ccd90a, p0, _r, _ri);
};

global.N_0x14e57f88ba0a07fc = function (p0) {
	return _in(0x14e57f88, 0xba0a07fc, p0);
};

global.N_0x14ff0c2545527f9b = function (p0, p1, p2) {
	return _in(0x14ff0c25, 0x45527f9b, p0, p1, p2);
};

global.N_0x1520626ffafffa8f = function (p0, p1) {
	return _in(0x1520626f, 0xfafffa8f, p0, p1);
};

global.N_0x15206e88ff7617df = function (p0, p1) {
	return _in(0x15206e88, 0xff7617df, p0, p1);
};

global.N_0x152664aa3188b193 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x152664aa, 0x3188b193, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x152ed1b56e8f1f50 = function (p0, p1) {
	return _in(0x152ed1b5, 0x6e8f1f50, p0, p1, _r, _ri);
};

global.N_0x154340e87d8cc178 = function (p0) {
	return _in(0x154340e8, 0x7d8cc178, p0);
};

global.N_0x154b7e841ac7412f = function (p0, p1) {
	return _in(0x154b7e84, 0x1ac7412f, p0, p1);
};

global.N_0x15598cfb25f3dc7e = function (p0, p1, p2) {
	return _in(0x15598cfb, 0x25f3dc7e, p0, p1, p2);
};

global.N_0x155b2fbe72d7d1d0 = function (p0) {
	return _in(0x155b2fbe, 0x72d7d1d0, p0, _r, _ri);
};

global.N_0x157d8f3de12b307f = function (p0, p1) {
	return _in(0x157d8f3d, 0xe12b307f, p0, p1);
};

global.N_0x159ef5b6edce00e8 = function (p0, p1) {
	return _in(0x159ef5b6, 0xedce00e8, p0, p1, _r, _ri);
};

global.N_0x15abd5004cad2d99 = function (p0) {
	return _in(0x15abd500, 0x4cad2d99, p0);
};

global.N_0x15b0cc1b36f1de29 = function (p0, p1, p2, p3) {
	return _in(0x15b0cc1b, 0x36f1de29, p0, p1, p2, p3);
};

global.N_0x15e90b6a993017aa = function () {
	return _in(0x15e90b6a, 0x993017aa, _r, _ri);
};

global.N_0x15f4732c357b1d6d = function (p0, p1, p2) {
	return _in(0x15f4732c, 0x357b1d6d, p0, p1, p2);
};

global.N_0x160825dadf1b04b3 = function () {
	return _in(0x160825da, 0xdf1b04b3);
};

global.N_0x160921255327c591 = function (p0, p1, p2, p3) {
	return _in(0x16092125, 0x5327c591, p0, p1, p2, p3);
};

global.N_0x160c1b5ab48ab87c = function (p0, p1) {
	return _in(0x160c1b5a, 0xb48ab87c, p0, p1);
};

global.N_0x160f0ce6d76a39c9 = function () {
	return _in(0x160f0ce6, 0xd76a39c9, _r, _ri);
};

global.N_0x162c23ca83ed0a62 = function (p0) {
	return _in(0x162c23ca, 0x83ed0a62, p0, _r);
};

global.N_0x1632eb9386cdbe64 = function (p0, p1) {
	return _in(0x1632eb93, 0x86cdbe64, p0, p1);
};

global.N_0x164cecc59e70df86 = function (p0, p1) {
	return _in(0x164cecc5, 0x9e70df86, p0, p1, _r, _ri);
};

global.N_0x165be2001e5e4b75 = function (p0) {
	return _in(0x165be200, 0x1e5e4b75, p0);
};

global.N_0x16752daa7e6d3f72 = function (player) {
	return _in(0x16752daa, 0x7e6d3f72, player);
};

global.N_0x16802c32b2fca06b = function (p0, p1, p2, p3) {
	return _in(0x16802c32, 0xb2fca06b, p0, p1, p2, p3);
};

global.N_0x16908e859c3ab698 = function (p0, p1, p2, p3, p4) {
	return _in(0x16908e85, 0x9c3ab698, p0, p1, p2, p3, p4);
};

global.N_0x1694a053dfb61a34 = function (p0) {
	return _in(0x1694a053, 0xdfb61a34, _ts(p0));
};

global.N_0x16b23d4f7a1f50d9 = function (p0, p1, p2) {
	return _in(0x16b23d4f, 0x7a1f50d9, p0, p1, p2);
};

global.N_0x16b86a49e072aa85 = function () {
	return _in(0x16b86a49, 0xe072aa85);
};

global.N_0x16d3d49902f697bb = function () {
	return _in(0x16d3d499, 0x02f697bb, _r);
};

global.N_0x16d9841a85fa627e = function (p0, p1) {
	return _in(0x16d9841a, 0x85fa627e, p0, p1);
};

global.N_0x16e9abdd34ddd931 = function () {
	return _in(0x16e9abdd, 0x34ddd931);
};

global.N_0x16efb123c4451032 = function (p0, p1) {
	return _in(0x16efb123, 0xc4451032, p0, p1, _r, _ri);
};

global.N_0x16f2c8c084ab2092 = function (p0) {
	return _in(0x16f2c8c0, 0x84ab2092, p0, _r, _ri);
};

global.N_0x16f47d434b6086bf = function (p0, p1) {
	return _in(0x16f47d43, 0x4b6086bf, p0, p1, _r, _ri);
};

global.N_0x16f798a05bb9e3b5 = function (p0) {
	return _in(0x16f798a0, 0x5bb9e3b5, p0);
};

global.N_0x1710bc33cfb83634 = function (p0) {
	return _in(0x1710bc33, 0xcfb83634, p0);
};

global.N_0x171c18e994c1a395 = function (p0, p1, p2, p3, p4) {
	return _in(0x171c18e9, 0x94c1a395, p0, p1, p2, p3, p4);
};

global.N_0x1726963e6049db53 = function (p0) {
	return _in(0x1726963e, 0x6049db53, p0);
};

global.N_0x172e9dd35858dcd7 = function (p0) {
	return _in(0x172e9dd3, 0x5858dcd7, p0);
};

global.N_0x1740e3dee0ae4d27 = function (p0, p1) {
	return _in(0x1740e3de, 0xe0ae4d27, p0, p1);
};

global.N_0x17721003a66c72bf = function (p0, p1, p2) {
	return _in(0x17721003, 0xa66c72bf, p0, p1, p2, _r, _ri);
};

global.N_0x179a6f0ee2e79026 = function (p0) {
	return _in(0x179a6f0e, 0xe2e79026, p0, _r, _ri);
};

global.N_0x17e3e5c46eccd308 = function (p0, p1, p2) {
	return _in(0x17e3e5c4, 0x6eccd308, p0, p1, p2);
};

global.N_0x18013392501ce5dc = function (p0) {
	return _in(0x18013392, 0x501ce5dc, p0, _r, _ri);
};

global.N_0x1811a02277a9e49d = function () {
	return _in(0x1811a022, 0x77a9e49d, _r, _ri);
};

global.N_0x18262cafebb5fbe1 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x18262caf, 0xebb5fbe1, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x183672fe838a661b = function (p0) {
	return _in(0x183672fe, 0x838a661b, p0);
};

global.N_0x183c0b6cfeffcae4 = function (p0) {
	return _in(0x183c0b6c, 0xfeffcae4, p0, _r, _ri);
};

global.N_0x183ce355115b6e75 = function (p0, p1) {
	return _in(0x183ce355, 0x115b6e75, p0, p1);
};

global.N_0x1840f3b30ed0105f = function (p0) {
	return _in(0x1840f3b3, 0x0ed0105f, p0, _r, _ri);
};

global.N_0x1854217c640b39ec = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x1854217c, 0x640b39ec, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x186608a2ac6f9e88 = function (p0, p1) {
	return _in(0x186608a2, 0xac6f9e88, p0, p1);
};

global.N_0x18675bc914891122 = function (p0) {
	return _in(0x18675bc9, 0x14891122, p0, _r, _rv);
};

global.N_0x18714953cced17d3 = function (p0) {
	return _in(0x18714953, 0xcced17d3, p0, _r, _ri);
};

global.N_0x187d65f3aec5d679 = function (p0, p1) {
	return _in(0x187d65f3, 0xaec5d679, p0, p1);
};

global.N_0x188313616d184213 = function (p0, p1, p2, p3) {
	return _in(0x18831361, 0x6d184213, p0, p1, p2, p3, _r, _ri);
};

global.N_0x188736456d1dede6 = function (p0, p1) {
	return _in(0x18873645, 0x6d1dede6, p0, p1, _r, _ri);
};

global.N_0x188b748861b5ba17 = function (p0, p1, p2) {
	return _in(0x188b7488, 0x61b5ba17, p0, p1, p2, _r, _ri);
};

global.N_0x188f8071f244b9b8 = function (p0, p1) {
	return _in(0x188f8071, 0xf244b9b8, p0, p1);
};

global.N_0x189739a7631c1867 = function () {
	return _in(0x189739a7, 0x631c1867, _r, _ri);
};

global.N_0x18a0d48df9211c07 = function () {
	return _in(0x18a0d48d, 0xf9211c07);
};

global.N_0x18b94666cf610aeb = function () {
	return _in(0x18b94666, 0xcf610aeb, _r, _ri);
};

global.N_0x18c3dfac458783bb = function () {
	return _in(0x18c3dfac, 0x458783bb);
};

global.N_0x18d6869fbffec0f8 = function (p0, p1, p2, p3) {
	return _in(0x18d6869f, 0xbffec0f8, p0, p1, p2, p3, _r, _ri);
};

global.N_0x18e93ebfc1fcfa48 = function (p0, p1, p2) {
	return _in(0x18e93ebf, 0xc1fcfa48, p0, p1, p2, _r, _ri);
};

global.N_0x18fc740ffdcd7454 = function () {
	return _in(0x18fc740f, 0xfdcd7454, _r, _ri);
};

global.N_0x18ff3110cf47115d = function (p0, p1, p2) {
	return _in(0x18ff3110, 0xcf47115d, p0, p1, p2);
};

global.N_0x1902c4cfcc5be57c = function (p0, p1) {
	return _in(0x1902c4cf, 0xcc5be57c, p0, p1);
};

global.N_0x190f7da1ac09a8ef = function () {
	return _in(0x190f7da1, 0xac09a8ef, _r, _ri);
};

global.N_0x19173c3f15367b54 = function (p0, p1, p2) {
	return _in(0x19173c3f, 0x15367b54, p0, p1, p2);
};

global.N_0x1919d59e60fd516e = function (p0, p1, p2) {
	return _in(0x1919d59e, 0x60fd516e, p0, p1, p2);
};

global.N_0x1948bbe561a2375a = function (p0) {
	return _in(0x1948bbe5, 0x61a2375a, p0, _r, _ri);
};

global.N_0x194d877fc5597b7d = function (p0, p1, p2, p3) {
	return _in(0x194d877f, 0xc5597b7d, p0, p1, p2, p3);
};

global.N_0x196d3acbeba4a44b = function (p0) {
	return _in(0x196d3acb, 0xeba4a44b, p0);
};

global.N_0x19870c40c7ee15be = function (p0, p1) {
	return _in(0x19870c40, 0xc7ee15be, p0, p1, _r, _ri);
};

global.N_0x198b85cc3c7a4593 = function (p0, p1) {
	return _in(0x198b85cc, 0x3c7a4593, p0, p1, _r, _ri);
};

global.N_0x19a6be7d9c6884d3 = function (p0, p1, p2, p3) {
	return _in(0x19a6be7d, 0x9c6884d3, p0, p1, p2, p3, _r, _ri);
};

global.N_0x19abcc581d28e6f9 = function (p0) {
	return _in(0x19abcc58, 0x1d28e6f9, p0);
};

global.N_0x19b14e04b009e28b = function (p0, p1) {
	return _in(0x19b14e04, 0xb009e28b, p0, p1);
};

global.N_0x19b2c7a6c34fad54 = function (p0, p1) {
	return _in(0x19b2c7a6, 0xc34fad54, p0, p1, _r, _ri);
};

global.N_0x19b4f71703902238 = function (p0) {
	return _in(0x19b4f717, 0x03902238, p0);
};

global.N_0x19b52c20b5c4757c = function () {
	return _in(0x19b52c20, 0xb5c4757c);
};

global.N_0x19bc99c678fba139 = function (p0, p1, p2) {
	return _in(0x19bc99c6, 0x78fba139, p0, p1, p2);
};

global.N_0x19c7567d2f2287d6 = function (p0, p1) {
	return _in(0x19c7567d, 0x2f2287d6, p0, p1, _r, _ri);
};

global.N_0x19c975b81be53c28 = function (p0, p1) {
	return _in(0x19c975b8, 0x1be53c28, p0, p1);
};

global.N_0x19f70c4d80494ff8 = function (p0, p1, p2) {
	return _in(0x19f70c4d, 0x80494ff8, p0, p1, p2);
};

global.N_0x1a47699e8d533e8f = function (p0, p1, p2, p3) {
	return _in(0x1a47699e, 0x8d533e8f, p0, p1, p2, p3);
};

global.N_0x1a51bfe60708e482 = function (p0) {
	return _in(0x1a51bfe6, 0x0708e482, p0, _r, _ri);
};

global.N_0x1a52076d26e09004 = function (p0, p1) {
	return _in(0x1a52076d, 0x26e09004, p0, p1);
};

global.N_0x1a5c5d350068a673 = function (p0, p1) {
	return _in(0x1a5c5d35, 0x0068a673, p0, p1);
};

global.N_0x1a6e84f13c952094 = function (p0, p1, p2) {
	return _in(0x1a6e84f1, 0x3c952094, p0, p1, p2, _r, _ri);
};

global.N_0x1a7a802b2301edc0 = function (p0) {
	return _in(0x1a7a802b, 0x2301edc0, p0);
};

global.N_0x1a7d63cb1b0bb223 = function (p0) {
	return _in(0x1a7d63cb, 0x1b0bb223, p0);
};

global.N_0x1a861f899ebbe17c = function (p0, p1) {
	return _in(0x1a861f89, 0x9ebbe17c, p0, p1);
};

global.N_0x1a9f09ab458d49c6 = function (p0) {
	return _in(0x1a9f09ab, 0x458d49c6, p0);
};

global.N_0x1ac5a8ab50cfaa33 = function (p0) {
	return _in(0x1ac5a8ab, 0x50cfaa33, p0, _r, _ri);
};

global.N_0x1ad896bf43619551 = function () {
	return _in(0x1ad896bf, 0x43619551);
};

global.N_0x1ad922ab5038def3 = function (p0) {
	return _in(0x1ad922ab, 0x5038def3, p0);
};

global.N_0x1af5e28e64a76a9f = function () {
	return _in(0x1af5e28e, 0x64a76a9f, _r, _ri);
};

global.N_0x1b065a2bf7953815 = function (p0) {
	return _in(0x1b065a2b, 0xf7953815, p0, _r, _ri);
};

global.N_0x1b3c2d961f5fc0e1 = function (p0) {
	return _in(0x1b3c2d96, 0x1f5fc0e1, p0);
};

global.N_0x1b70811d3bf75db9 = function (p0, p1) {
	return _in(0x1b70811d, 0x3bf75db9, p0, p1);
};

global.N_0x1b83c0deebcbb214 = function (p0) {
	return _in(0x1b83c0de, 0xebcbb214, p0);
};

global.N_0x1b89bc43b6e69107 = function (p0, p1, p2, p3) {
	return _in(0x1b89bc43, 0xb6e69107, p0, p1, p2, p3, _r, _ri);
};

global.N_0x1b8f3ce5a6001298 = function (cam, p1) {
	return _in(0x1b8f3ce5, 0xa6001298, cam, p1);
};

global.N_0x1bb50cd340a996e6 = function () {
	return _in(0x1bb50cd3, 0x40a996e6, _r, _ri);
};

global.N_0x1bc47a9dedc8df5d = function (p0, p1) {
	return _in(0x1bc47a9d, 0xedc8df5d, p0, p1);
};

global.N_0x1bdb56db258f052d = function () {
	return _in(0x1bdb56db, 0x258f052d, _r, _ri);
};

global.N_0x1bdb5a07307f6929 = function (p0, p1) {
	return _in(0x1bdb5a07, 0x307f6929, p0, p1);
};

global.N_0x1be19185b8afe299 = function (p0) {
	return _in(0x1be19185, 0xb8afe299, p0, _r, _ri);
};

global.N_0x1bf9d36a5eaffbae = function (p0, p1, p2) {
	return _in(0x1bf9d36a, 0x5eaffbae, p0, p1, p2, _r, _ri);
};

global.N_0x1bfbafcc6760ff02 = function (p0, p1) {
	return _in(0x1bfbafcc, 0x6760ff02, p0, p1);
};

global.N_0x1c38c3577901af1f = function () {
	return _in(0x1c38c357, 0x7901af1f);
};

global.N_0x1c5d33a4293e6dde = function (p0, p1) {
	return _in(0x1c5d33a4, 0x293e6dde, p0, p1, _r, _ri);
};

global.N_0x1c5eb3c27f7508cb = function (p0, p1) {
	return _in(0x1c5eb3c2, 0x7f7508cb, p0, p1);
};

global.N_0x1c6306e5bc25c29c = function () {
	return _in(0x1c6306e5, 0xbc25c29c);
};

global.N_0x1c65cc931c0f946f = function (p0, p1, p2) {
	return _in(0x1c65cc93, 0x1c0f946f, p0, p1, p2);
};

global.N_0x1ce875505d45338a = function (p0, p1, p2) {
	return _in(0x1ce87550, 0x5d45338a, p0, p1, p2);
};

global.N_0x1cfb749ad4317bde = function () {
	return _in(0x1cfb749a, 0xd4317bde);
};

global.N_0x1d125814ebc517eb = function (p0, p1, p2, p3) {
	return _in(0x1d125814, 0xebc517eb, p0, p1, p2, p3);
};

global.N_0x1d1b448d719415ab = function (p0) {
	return _in(0x1d1b448d, 0x719415ab, p0, _r, _ri);
};

global.N_0x1d23d3f70606d788 = function (p0, p1) {
	return _in(0x1d23d3f7, 0x0606d788, p0, p1);
};

global.N_0x1d256eed194f5b58 = function (p0) {
	return _in(0x1d256eed, 0x194f5b58, p0);
};

global.N_0x1d4636c90bbefacb = function (p0, p1) {
	return _in(0x1d4636c9, 0x0bbefacb, p0, p1);
};

global.N_0x1d46b417f926d34d = function (p0) {
	return _in(0x1d46b417, 0xf926d34d, p0, _r, _ri);
};

global.N_0x1d491ccf7211fb74 = function (p0) {
	return _in(0x1d491ccf, 0x7211fb74, p0, _r, _ri);
};

global.N_0x1d77b47afa584e90 = function (p0, p1, p2) {
	return _in(0x1d77b47a, 0xfa584e90, p0, p1, p2);
};

global.N_0x1d97da8acb5d2582 = function (p0, p1) {
	return _in(0x1d97da8a, 0xcb5d2582, p0, p1);
};

global.N_0x1d9f72dd4fd9a9d7 = function (p0) {
	return _in(0x1d9f72dd, 0x4fd9a9d7, p0);
};

global.N_0x1da5c5b0923e1b85 = function (p0) {
	return _in(0x1da5c5b0, 0x923e1b85, p0, _r, _ri);
};

global.N_0x1da6cb02071055d5 = function (p0) {
	return _in(0x1da6cb02, 0x071055d5, p0, _r, _rv);
};

global.N_0x1db9d61e505ae3fc = function () {
	return _in(0x1db9d61e, 0x505ae3fc, _r, _ri);
};

global.N_0x1dd95a8d6b24a0c9 = function (p0) {
	return _in(0x1dd95a8d, 0x6b24a0c9, p0);
};

global.N_0x1e017404784aa6a3 = function (p0, p1) {
	return _in(0x1e017404, 0x784aa6a3, p0, p1, _r, _ri);
};

global.N_0x1e5b70e53db661e5 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x1e5b70e5, 0x3db661e5, p0, p1, p2, p3, p4, p5);
};

global.N_0x1e6f9a9fe1a99f36 = function (p0) {
	return _in(0x1e6f9a9f, 0xe1a99f36, p0);
};

global.N_0x1e7384ab5d4f4581 = function (p0) {
	return _in(0x1e7384ab, 0x5d4f4581, p0, _r, _ri);
};

global.N_0x1e804ea9b12030a4 = function (p0, p1) {
	return _in(0x1e804ea9, 0xb12030a4, p0, p1, _r, _ri);
};

global.N_0x1e8099f449abb0ba = function (p0) {
	return _in(0x1e8099f4, 0x49abb0ba, p0, _r, _ri);
};

global.N_0x1e8a921112891651 = function (p0) {
	return _in(0x1e8a9211, 0x12891651, p0, _r, _rv);
};

global.N_0x1ea716e0628a6f44 = function (p0, p1) {
	return _in(0x1ea716e0, 0x628a6f44, p0, p1);
};

global.N_0x1ecc76792f661cf5 = function (p0) {
	return _in(0x1ecc7679, 0x2f661cf5, p0, _r, _ri);
};

global.N_0x1ecf56c040fd839c = function (p0, p1) {
	return _in(0x1ecf56c0, 0x40fd839c, p0, p1);
};

global.N_0x1ed8588524ac9be1 = function (p0, p1, p2) {
	return _in(0x1ed85885, 0x24ac9be1, p0, p1, p2);
};

global.N_0x1ef36558fbde2daa = function (vehicle) {
	return _in(0x1ef36558, 0xfbde2daa, vehicle);
};

global.N_0x1f0e3a4434565f8f = function (p0, p1) {
	return _in(0x1f0e3a44, 0x34565f8f, p0, p1);
};

global.N_0x1f0e401031e20146 = function (p0, p1) {
	return _in(0x1f0e4010, 0x31e20146, p0, p1, _r, _ri);
};

global.N_0x1f11702ddbd915c6 = function (p0, p1) {
	return _in(0x1f11702d, 0xdbd915c6, p0, p1, _r, _ri);
};

global.N_0x1f1dd794908c2bfa = function (p0) {
	return _in(0x1f1dd794, 0x908c2bfa, p0, _r, _rv);
};

global.N_0x1f1fabfe9b2a1254 = function (p0, p1) {
	return _in(0x1f1fabfe, 0x9b2a1254, p0, p1);
};

global.N_0x1f298c7bd30d1240 = function (p0) {
	return _in(0x1f298c7b, 0xd30d1240, p0);
};

global.N_0x1f44b7e283c09ede = function (p0, p1, p2) {
	return _in(0x1f44b7e2, 0x83c09ede, p0, p1, p2);
};

global.N_0x1f488807bc8e0630 = function (p0) {
	return _in(0x1f488807, 0xbc8e0630, p0);
};

global.N_0x1f51f367b710a832 = function () {
	return _in(0x1f51f367, 0xb710a832, _r, _ri);
};

global.N_0x1f56fb3fdb4eaf65 = function (p0) {
	return _in(0x1f56fb3f, 0xdb4eaf65, p0, _r, _ri);
};

global.N_0x1f5e07e14a86fafc = function (p0) {
	return _in(0x1f5e07e1, 0x4a86fafc, p0);
};

global.N_0x1f6ebd94680252ce = function (p0, p1) {
	return _in(0x1f6ebd94, 0x680252ce, p0, p1);
};

global.N_0x1f714e7a9dadfc42 = function (p0) {
	return _in(0x1f714e7a, 0x9dadfc42, p0, _r, _ri);
};

global.N_0x1f7977c9101f807f = function (p0) {
	return _in(0x1f7977c9, 0x101f807f, p0, _r, _ri);
};

global.N_0x1f7a9a9c38c13a56 = function (p0) {
	return _in(0x1f7a9a9c, 0x38c13a56, p0, _r, _ri);
};

global.N_0x1f8215d0e446f593 = function (p0, p1, p2) {
	return _in(0x1f8215d0, 0xe446f593, p0, p1, p2);
};

global.N_0x1f9a64c2804b3471 = function (p0) {
	return _in(0x1f9a64c2, 0x804b3471, p0);
};

global.N_0x1fa132cbcd7cb239 = function (p0, p1) {
	return _in(0x1fa132cb, 0xcd7cb239, p0, p1);
};

global.N_0x1fbf7f5ba7e4be3a = function (p0) {
	return _in(0x1fbf7f5b, 0xa7e4be3a, p0);
};

global.N_0x1fc6c727d30ffdde = function (p0) {
	return _in(0x1fc6c727, 0xd30ffdde, p0);
};

global.N_0x1fc92bdba1106bd2 = function (p0, p1) {
	return _in(0x1fc92bdb, 0xa1106bd2, p0, p1);
};

global.N_0x1fda57e8908f2609 = function (p0, p1, p2) {
	return _in(0x1fda57e8, 0x908f2609, p0, p1, p2);
};

global.N_0x1ff00db43026b12f = function () {
	return _in(0x1ff00db4, 0x3026b12f);
};

global.N_0x1ff441d7954f8709 = function (p0) {
	return _in(0x1ff441d7, 0x954f8709, p0, _r, _ri);
};

global.N_0x1ff8731be1dfc0c0 = function (p0, p1) {
	return _in(0x1ff8731b, 0xe1dfc0c0, p0, p1);
};

global.N_0x200114e99552462b = function (p0, p1, p2) {
	return _in(0x200114e9, 0x9552462b, p0, p1, p2);
};

global.N_0x2001687f9562fd9d = function (p0) {
	return _in(0x2001687f, 0x9562fd9d, p0);
};

global.N_0x200373a8df081f22 = function (p0, p1) {
	return _in(0x200373a8, 0xdf081f22, p0, p1, _r, _ri);
};

global.N_0x2009f8ab7a5e9d6d = function (p0) {
	return _in(0x2009f8ab, 0x7a5e9d6d, p0, _r, _ri);
};

global.N_0x20135af9c10d2a3d = function (p0) {
	return _in(0x20135af9, 0xc10d2a3d, p0, _r, _ri);
};

global.N_0x201b8ed4ff7fe9f5 = function (p0) {
	return _in(0x201b8ed4, 0xff7fe9f5, p0);
};

global.N_0x2024f4f333095fb1 = function (p0, p1, p2) {
	return _in(0x2024f4f3, 0x33095fb1, p0, p1, p2, _r, _ri);
};

global.N_0x20389408f0e93b9a = function () {
	return _in(0x20389408, 0xf0e93b9a, _r, _ri);
};

global.N_0x203beffdbe12e96a = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x203beffd, 0xbe12e96a, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x2045429505158d1a = function (p0) {
	return _in(0x20454295, 0x05158d1a, p0, _r, _ri);
};

global.N_0x2056ab38df06825c = function (p0, p1, p2, p3, p4) {
	return _in(0x2056ab38, 0xdf06825c, p0, p1, p2, p3, p4);
};

global.N_0x2064b33f6e6b92d4 = function (p0, p1, p2, p3) {
	return _in(0x2064b33f, 0x6e6b92d4, p0, p1, p2, p3);
};

global.N_0x20a4bf0e09bee146 = function (itemset) {
	return _in(0x20a4bf0e, 0x09bee146, itemset);
};

global.N_0x20b7f69b40c6b755 = function (p0) {
	return _in(0x20b7f69b, 0x40c6b755, p0, _r, _ri);
};

global.N_0x20c5459379d75c1c = function (p0, p1) {
	return _in(0x20c54593, 0x79d75c1c, p0, p1);
};

global.N_0x20d504994fdc4412 = function (iplName1, iplName2) {
	return _in(0x20d50499, 0x4fdc4412, _ts(iplName1), _ts(iplName2));
};

global.N_0x20e54854def6a54a = function (p0, p1) {
	return _in(0x20e54854, 0xdef6a54a, p0, p1);
};

global.N_0x20f4cb76689acdbc = function (p0) {
	return _in(0x20f4cb76, 0x689acdbc, p0);
};

global.N_0x20faee47427a4497 = function () {
	return _in(0x20faee47, 0x427a4497);
};

global.N_0x21091b4beb6376ee = function (p0) {
	return _in(0x21091b4b, 0xeb6376ee, p0, _r, _ri);
};

global.N_0x21213b833ef4dae7 = function (p0, p1, p2) {
	return _in(0x21213b83, 0x3ef4dae7, p0, p1, p2);
};

global.N_0x2161278c6322f740 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x2161278c, 0x6322f740, p0, p1, p2, p3, p4, p5);
};

global.N_0x216343750545a486 = function (p0, p1, p2) {
	return _in(0x21634375, 0x0545a486, p0, p1, p2);
};

global.N_0x216bc0d3d2e413d2 = function (p0, p1) {
	return _in(0x216bc0d3, 0xd2e413d2, p0, p1);
};

global.N_0x217f47761376e16e = function (p0, p1, p2, p3, p4) {
	return _in(0x217f4776, 0x1376e16e, p0, p1, p2, p3, p4);
};

global.N_0x218f7710a139d012 = function () {
	return _in(0x218f7710, 0xa139d012);
};

global.N_0x21a99a72b00d8002 = function (p0, p1) {
	return _in(0x21a99a72, 0xb00d8002, p0, p1, _r, _ri);
};

global.N_0x21d04d7bc538c146 = function (entity) {
	return _in(0x21d04d7b, 0xc538c146, entity, _r);
};

global.N_0x21d0890d88dfb0b0 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x21d0890d, 0x88dfb0b0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x21f00e08cbb5f37b = function (p0) {
	return _in(0x21f00e08, 0xcbb5f37b, p0);
};

global.N_0x2200ab13cbd10f4e = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x2200ab13, 0xcbd10f4e, p0, p1, p2, p3, p4, p5);
};

global.N_0x22031584496cfb70 = function (p0, p1) {
	return _in(0x22031584, 0x496cfb70, p0, p1);
};

global.N_0x2208438012482a1a = function (ped, p1, p2) {
	return _in(0x22084380, 0x12482a1a, ped, p1, p2);
};

global.N_0x22084ca699219624 = function (p0) {
	return _in(0x22084ca6, 0x99219624, p0, _r, _ri);
};

global.N_0x221f4d9912b7fe86 = function (p0, p1) {
	return _in(0x221f4d99, 0x12b7fe86, p0, p1);
};

/**
 * Returns true if GtaThread+0x77C is equal to 1.
 */
global.N_0x2238ec3ec631ab1f = function () {
	return _in(0x2238ec3e, 0xc631ab1f, _r);
};

global.N_0x225640e09effdc3f = function () {
	return _in(0x225640e0, 0x9effdc3f, _r, _ri);
};

global.N_0x226c6a4e3346d288 = function (p0, p1) {
	return _in(0x226c6a4e, 0x3346d288, p0, p1);
};

global.N_0x226cf9b159e38f42 = function (p0) {
	return _in(0x226cf9b1, 0x59e38f42, p0, _r, _ri);
};

global.N_0x22741652985c84d0 = function (p0, p1) {
	return _in(0x22741652, 0x985c84d0, p0, p1);
};

global.N_0x227522fd59ddb7e8 = function (p0, p1, p2) {
	return _in(0x227522fd, 0x59ddb7e8, p0, p1, p2, _r, _ri);
};

global.N_0x227b06324234fb09 = function (p0, p1) {
	return _in(0x227b0632, 0x4234fb09, p0, p1, _r, _ri);
};

global.N_0x22b3cabeddb538b2 = function (p0, p1) {
	return _in(0x22b3cabe, 0xddb538b2, p0, p1);
};

global.N_0x22c8b10802301381 = function (p0, p1) {
	return _in(0x22c8b108, 0x02301381, p0, p1);
};

global.N_0x22cd23bb0c45e0cd = function (p0) {
	return _in(0x22cd23bb, 0x0c45e0cd, p0, _r, _ri);
};

global.N_0x22cd2c33ed4467a1 = function (p0) {
	return _in(0x22cd2c33, 0xed4467a1, p0, _r, _ri);
};

global.N_0x22cdbf317c40a122 = function (p0) {
	return _in(0x22cdbf31, 0x7c40a122, p0);
};

global.N_0x22d3a61ce053270c = function (p0, p1) {
	return _in(0x22d3a61c, 0xe053270c, p0, p1, _r, _ri);
};

global.N_0x22e590f108289a9d = function (p0, p1, p2, p3) {
	return _in(0x22e590f1, 0x08289a9d, p0, p1, p2, p3, _r, _ri);
};

global.N_0x22f2a386d43048a9 = function (p0) {
	return _in(0x22f2a386, 0xd43048a9, p0, _r, _ri);
};

global.N_0x2302c0264ea58d31 = function () {
	return _in(0x2302c026, 0x4ea58d31);
};

global.N_0x2311f15d971aa680 = function (p0) {
	return _in(0x2311f15d, 0x971aa680, p0, _r, _ri);
};

global.N_0x232e1eb23cdb313c = function () {
	return _in(0x232e1eb2, 0x3cdb313c, _r, _ri);
};

global.N_0x235c863da77bd88d = function (p0, p1, p2) {
	return _in(0x235c863d, 0xa77bd88d, p0, p1, p2, _r, _ri);
};

global.N_0x236321f1178a5446 = function (p0, p1, p2) {
	return _in(0x236321f1, 0x178a5446, p0, p1, p2, _r, _ri);
};

global.N_0x236905c700fdb54d = function () {
	return _in(0x236905c7, 0x00fdb54d);
};

global.N_0x2371c39d4f91c288 = function (p0) {
	return _in(0x2371c39d, 0x4f91c288, p0);
};

global.N_0x2387d6e9c6b478aa = function (p0) {
	return _in(0x2387d6e9, 0xc6b478aa, p0, _r, _ri);
};

global.N_0x23a3ab86e0807721 = function (vehicle, toggle) {
	return _in(0x23a3ab86, 0xe0807721, vehicle, toggle);
};

global.N_0x23bde06596a22cec = function (p0, p1, p2, p3) {
	return _in(0x23bde065, 0x96a22cec, p0, p1, p2, p3);
};

global.N_0x23bf601a42f329a0 = function (p0) {
	return _in(0x23bf601a, 0x42f329a0, p0, _r, _ri);
};

global.N_0x23ccab8f40b9cbee = function () {
	return _in(0x23ccab8f, 0x40b9cbee, _r, _ri);
};

global.N_0x23d9c1f2e4098edc = function (p0, p1, p2, p3, p4) {
	return _in(0x23d9c1f2, 0xe4098edc, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x23e33cb9f4a3f547 = function (p0, p1) {
	return _in(0x23e33cb9, 0xf4a3f547, p0, p1, _r, _ri);
};

global.N_0x23f66c36f8e5eaab = function (p0, p1) {
	return _in(0x23f66c36, 0xf8e5eaab, p0, p1);
};

global.N_0x23f74c2fda6e7c61 = function (p0, p1) {
	return _in(0x23f74c2f, 0xda6e7c61, p0, p1, _r, _ri);
};

global.N_0x23fb9faca28779c1 = function (p0, p1, p2) {
	return _in(0x23fb9fac, 0xa28779c1, p0, p1, p2);
};

global.N_0x2412216fcc7b4e3e = function (p0) {
	return _in(0x2412216f, 0xcc7b4e3e, p0);
};

global.N_0x2416ec2f31f75266 = function (p0, p1, p2, p3, p4) {
	return _in(0x2416ec2f, 0x31f75266, p0, p1, p2, p3, p4);
};

global.N_0x242edf85d4e87b65 = function (p0) {
	return _in(0x242edf85, 0xd4e87b65, p0, _r, _ri);
};

global.N_0x243cede8f916b994 = function () {
	return _in(0x243cede8, 0xf916b994);
};

global.N_0x243e1b4607040057 = function (p0) {
	return _in(0x243e1b46, 0x07040057, p0, _r, _ri);
};

global.N_0x244430c13ba5258e = function (p0, p1, p2, p3) {
	return _in(0x244430c1, 0x3ba5258e, p0, p1, p2, p3, _r, _ri);
};

global.N_0x244e8c282188e40f = function (p0, p1) {
	return _in(0x244e8c28, 0x2188e40f, p0, p1);
};

global.N_0x245d07651b1d183b = function (p0, p1) {
	return _in(0x245d0765, 0x1b1d183b, p0, p1, _r, _ri);
};

global.N_0x246545c37c27a717 = function (p0) {
	return _in(0x246545c3, 0x7c27a717, p0, _r, _ri);
};

global.N_0x247f86595d396344 = function (p0) {
	return _in(0x247f8659, 0x5d396344, p0);
};

global.N_0x2498035289b5688f = function (p0, p1) {
	return _in(0x24980352, 0x89b5688f, p0, p1);
};

global.N_0x249cd6b7285536f2 = function (p0, p1, p2) {
	return _in(0x249cd6b7, 0x285536f2, p0, p1, p2);
};

global.N_0x24c82ef607105faa = function (p0, p1) {
	return _in(0x24c82ef6, 0x07105faa, p0, p1);
};

global.N_0x24cd8faea1368379 = function (p0, p1, p2) {
	return _in(0x24cd8fae, 0xa1368379, p0, p1, p2, _r, _ri);
};

global.N_0x24db6b9f2b719043 = function (p0) {
	return _in(0x24db6b9f, 0x2b719043, p0);
};

global.N_0x250c75eb1728cc0d = function (p0) {
	return _in(0x250c75eb, 0x1728cc0d, p0);
};

global.N_0x250ebb11e81a10be = function (p0) {
	return _in(0x250ebb11, 0xe81a10be, p0, _r, _ri);
};

global.N_0x251241caec707106 = function () {
	return _in(0x251241ca, 0xec707106, _r);
};

global.N_0x25189f9908e9cd65 = function () {
	return _in(0x25189f99, 0x08e9cd65, _r, _ri);
};

global.N_0x2533baffbe737e54 = function () {
	return _in(0x2533baff, 0xbe737e54, _r, _ri);
};

global.N_0x2533f2ab0eb9c6f9 = function (p0, p1) {
	return _in(0x2533f2ab, 0x0eb9c6f9, p0, p1);
};

global.N_0x253a63b5badbc398 = function (p0, p1, p2, p3, p4) {
	return _in(0x253a63b5, 0xbadbc398, p0, p1, p2, p3, p4);
};

global.N_0x254b0241e964b450 = function (p0, p1) {
	return _in(0x254b0241, 0xe964b450, p0, p1, _r, _ri);
};

global.N_0x25557e324489393c = function (p0) {
	return _in(0x25557e32, 0x4489393c, p0, _r, _ri);
};

global.N_0x255a5ef65eda9167 = function (p0) {
	return _in(0x255a5ef6, 0x5eda9167, p0, _r, _ri);
};

global.N_0x255b6db4e3ad3c3e = function (p0) {
	return _in(0x255b6db4, 0xe3ad3c3e, p0, _r, _ri);
};

global.N_0x256edd55c6be1482 = function (p0) {
	return _in(0x256edd55, 0xc6be1482, p0, _r, _ri);
};

global.N_0x25855b1574bf8cd5 = function (p0) {
	return _in(0x25855b15, 0x74bf8cd5, p0);
};

global.N_0x259acc5b52a2b2d9 = function (p0, p1) {
	return _in(0x259acc5b, 0x52a2b2d9, p0, p1);
};

global.N_0x259ce340a8738814 = function (p0) {
	return _in(0x259ce340, 0xa8738814, p0, _r, _ri);
};

global.N_0x25b9c78a25105c35 = function (p0, p1) {
	return _in(0x25b9c78a, 0x25105c35, p0, p1);
};

global.N_0x25ca89b2a39dcc69 = function () {
	return _in(0x25ca89b2, 0xa39dcc69, _r, _ri);
};

global.N_0x26054eb81ac0893b = function (p0) {
	return _in(0x26054eb8, 0x1ac0893b, p0, _r, _ri);
};

global.N_0x262ef7cf49cf1eb9 = function (p0) {
	return _in(0x262ef7cf, 0x49cf1eb9, p0);
};

global.N_0x263d69767f76059c = function (p0, p1) {
	return _in(0x263d6976, 0x7f76059c, p0, p1);
};

global.N_0x264e9a5cd78c338f = function (p0) {
	return _in(0x264e9a5c, 0xd78c338f, p0);
};

global.N_0x2651ddc0ea269073 = function (p0, p1) {
	return _in(0x2651ddc0, 0xea269073, p0, p1);
};

global.N_0x267c78c60e806b9a = function (p0, p1) {
	return _in(0x267c78c6, 0x0e806b9a, p0, p1);
};

global.N_0x2686bd9566b65eda = function (p0, p1, p2) {
	return _in(0x2686bd95, 0x66b65eda, p0, p1, p2);
};

global.N_0x268ab8420a9e4ed7 = function () {
	return _in(0x268ab842, 0x0a9e4ed7, _r);
};

global.N_0x268b3aebf032a88d = function (p0) {
	return _in(0x268b3aeb, 0xf032a88d, p0, _r, _ri);
};

global.N_0x26934083d3f2579c = function (p0) {
	return _in(0x26934083, 0xd3f2579c, p0, _r, _ri);
};

global.N_0x26a5c12facff8724 = function (p0) {
	return _in(0x26a5c12f, 0xacff8724, p0, _r, _ri);
};

global.N_0x26dd2fb0a88cc412 = function (p0, p1, p2, p3) {
	return _in(0x26dd2fb0, 0xa88cc412, p0, p1, p2, p3);
};

global.N_0x26e87218390e6729 = function (p0, p1, p2, p3) {
	return _in(0x26e87218, 0x390e6729, p0, p1, p2, p3, _r, _ri);
};

global.N_0x26f6bbea2ce3e3dc = function () {
	return _in(0x26f6bbea, 0x2ce3e3dc);
};

global.N_0x2701d01d5e18fc31 = function () {
	return _in(0x2701d01d, 0x5e18fc31, _r);
};

global.N_0x2703efb583f0949a = function (p0, p1) {
	return _in(0x2703efb5, 0x83f0949a, p0, p1);
};

global.N_0x2705d18c11b61046 = function (p0) {
	return _in(0x2705d18c, 0x11b61046, p0);
};

global.N_0x271f95e55c663b8b = function (p0, p1) {
	return _in(0x271f95e5, 0x5c663b8b, p0, p1, _r, _ri);
};

global.N_0x27219300c36a8d40 = function (p0, p1, p2, p3, p4) {
	return _in(0x27219300, 0xc36a8d40, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x2728c77fbc4b9796 = function (p0) {
	return _in(0x2728c77f, 0xbc4b9796, p0);
};

global.N_0x2738d68d2b4e09e7 = function (p0) {
	return _in(0x2738d68d, 0x2b4e09e7, p0);
};

global.N_0x273915ce30780986 = function (p0, p1) {
	return _in(0x273915ce, 0x30780986, p0, p1, _r, _ri);
};

global.N_0x273e04a3a7ad1f2d = function () {
	return _in(0x273e04a3, 0xa7ad1f2d, _r, _ri);
};

global.N_0x274ee1b90cfa669e = function (p0) {
	return _in(0x274ee1b9, 0x0cfa669e, p0, _r, _ri);
};

global.N_0x276aaf0f1c7f2494 = function (p0, p1) {
	return _in(0x276aaf0f, 0x1c7f2494, p0, p1);
};

global.N_0x277251c161b4c3f4 = function (p0, p1, p2) {
	return _in(0x277251c1, 0x61b4c3f4, p0, p1, p2);
};

global.N_0x277865a734918ae6 = function () {
	return _in(0x277865a7, 0x34918ae6, _r, _ri);
};

global.N_0x2797b8d66dd0ebb8 = function (p0, p1, p2) {
	return _in(0x2797b8d6, 0x6dd0ebb8, p0, p1, p2);
};

global.N_0x2797c633dcdbbac5 = function (p0, p1, p2) {
	return _in(0x2797c633, 0xdcdbbac5, p0, p1, p2);
};

global.N_0x279b0696da4657eb = function (p0) {
	return _in(0x279b0696, 0xda4657eb, p0, _r, _ri);
};

global.N_0x27a1b170aa8af84c = function (p0) {
	return _in(0x27a1b170, 0xaa8af84c, p0);
};

global.N_0x27ad7162d3fed01e = function (p0, p1) {
	return _in(0x27ad7162, 0xd3fed01e, p0, p1, _r, _ri);
};

global.N_0x27af48c62b281341 = function () {
	return _in(0x27af48c6, 0x2b281341, _r, _ri);
};

global.N_0x27b1ae4d8c652f08 = function (p0) {
	return _in(0x27b1ae4d, 0x8c652f08, p0, _r, _ri);
};

global.N_0x27d3a0e1fe090a43 = function (p0) {
	return _in(0x27d3a0e1, 0xfe090a43, p0, _r, _ri);
};

global.N_0x27e3f2b57209fa54 = function (p0, p1) {
	return _in(0x27e3f2b5, 0x7209fa54, p0, p1);
};

global.N_0x27e8a84c12b0b7d1 = function (p0, p1, p2) {
	return _in(0x27e8a84c, 0x12b0b7d1, p0, p1, p2, _r, _ri);
};

global.N_0x2804658eb7d8a50b = function (p0, p1) {
	return _in(0x2804658e, 0xb7d8a50b, p0, p1);
};

global.N_0x280c7e3ac7f56e90 = function (p0) {
	return _in(0x280c7e3a, 0xc7f56e90, p0, _i, _i, _i);
};

global.N_0x282d36ff103d78df = function () {
	return _in(0x282d36ff, 0x103d78df, _r, _s);
};

global.N_0x283978a15512b2fe = function (p0, p1) {
	return _in(0x283978a1, 0x5512b2fe, p0, p1);
};

global.N_0x285438c26c732f9d = function () {
	return _in(0x285438c2, 0x6c732f9d, _r, _ri);
};

global.N_0x285d36c5c72b0569 = function (p0) {
	return _in(0x285d36c5, 0xc72b0569, p0, _r, _ri);
};

global.N_0x28717806d3bdd0d0 = function (p0, p1) {
	return _in(0x28717806, 0xd3bdd0d0, p0, p1, _r, _ri);
};

global.N_0x288cbb414c3c2fbb = function (p0) {
	return _in(0x288cbb41, 0x4c3c2fbb, p0, _r, _ri);
};

global.N_0x2890418b39bc8fff = function (p0, p1) {
	return _in(0x2890418b, 0x39bc8fff, p0, p1);
};

global.N_0x28a13bf6b05c3d83 = function (p0, p1) {
	return _in(0x28a13bf6, 0xb05c3d83, p0, p1);
};

global.N_0x28ae29d909c8fdce = function (p0) {
	return _in(0x28ae29d9, 0x09c8fdce, p0, _r, _ri);
};

global.N_0x28cb6391acedd9db = function (p0) {
	return _in(0x28cb6391, 0xacedd9db, p0);
};

global.N_0x28eeace9b43d9597 = function (p0, p1, p2) {
	return _in(0x28eeace9, 0xb43d9597, p0, p1, p2);
};

global.N_0x28ef780bdea8a639 = function (p0, p1) {
	return _in(0x28ef780b, 0xdea8a639, p0, p1);
};

global.N_0x290b2e6ccde532e1 = function (p0) {
	return _in(0x290b2e6c, 0xcde532e1, p0, _r, _ri);
};

global.N_0x2916b30dc6c41179 = function (p0) {
	return _in(0x2916b30d, 0xc6c41179, p0);
};

global.N_0x2917e634206b9e17 = function (p0, p1) {
	return _in(0x2917e634, 0x206b9e17, p0, p1);
};

global.N_0x291cc21d1fb6790e = function (p0) {
	return _in(0x291cc21d, 0x1fb6790e, p0);
};

global.N_0x292ad61a33a7a485 = function () {
	return _in(0x292ad61a, 0x33a7a485);
};

global.N_0x292f0b6edc82e3a4 = function (p0, p1) {
	return _in(0x292f0b6e, 0xdc82e3a4, p0, p1);
};

global.N_0x2942457417a5fd24 = function (p0) {
	return _in(0x29424574, 0x17a5fd24, p0, _r, _ri);
};

global.N_0x2948235db2058e99 = function (p0, p1) {
	return _in(0x2948235d, 0xb2058e99, p0, p1);
};

global.N_0x294af5323f44b053 = function (p0, p1, p2) {
	return _in(0x294af532, 0x3f44b053, p0, p1, p2, _r, _ri);
};

global.N_0x295514f198efd0ca = function (p0, p1) {
	return _in(0x295514f1, 0x98efd0ca, p0, p1, _r, _ri);
};

global.N_0x295859eb18f48d82 = function (p0) {
	return _in(0x295859eb, 0x18f48d82, p0, _r, _ri);
};

global.N_0x2963b5c1637e8a27 = function (p0) {
	return _in(0x2963b5c1, 0x637e8a27, p0, _r, _ri);
};

global.N_0x297b72e2af094742 = function (unk) {
	return _in(0x297b72e2, 0xaf094742, unk);
};

global.N_0x2989e131fde37e97 = function (p0, p1, p2, p3) {
	return _in(0x2989e131, 0xfde37e97, p0, p1, p2, p3, _r, _ri);
};

global.N_0x29924eb8ee9db926 = function (p0, p1) {
	return _in(0x29924eb8, 0xee9db926, p0, p1);
};

global.N_0x29ba9f78321e5a6c = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x29ba9f78, 0x321e5a6c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri);
};

global.N_0x29c733459a9011eb = function (p0, p1) {
	return _in(0x29c73345, 0x9a9011eb, p0, p1);
};

global.N_0x29cd4896ecb66c12 = function () {
	return _in(0x29cd4896, 0xecb66c12);
};

global.N_0x29e6655df3590b0d = function (p0) {
	return _in(0x29e6655d, 0xf3590b0d, p0);
};

global.N_0x29f3539189d3e277 = function (p0, p1) {
	return _in(0x29f35391, 0x89d3e277, p0, p1);
};

global.N_0x29fb4ce89472c3cb = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x29fb4ce8, 0x9472c3cb, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x29fce825613fefca = function (p0, p1) {
	return _in(0x29fce825, 0x613fefca, p0, p1, _r, _ri);
};

global.N_0x29fe035d35b8589c = function (p0) {
	return _in(0x29fe035d, 0x35b8589c, p0);
};

global.N_0x2a08a32b6d49906f = function (p0, p1) {
	return _in(0x2a08a32b, 0x6d49906f, p0, p1, _r, _ri);
};

global.N_0x2a10538d0a005e81 = function (p0, p1) {
	return _in(0x2a10538d, 0x0a005e81, p0, p1);
};

global.N_0x2a1625858887d4e6 = function (p0) {
	return _in(0x2a162585, 0x8887d4e6, _fv(p0));
};

global.N_0x2a31d13c5f021d0d = function (p0) {
	return _in(0x2a31d13c, 0x5f021d0d, p0);
};

global.N_0x2a32faa57b937173 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23) {
	return _in(0x2a32faa5, 0x7b937173, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23);
};

global.N_0x2a374e6f0075ee81 = function (p0, p1, p2, p3, p4) {
	return _in(0x2a374e6f, 0x0075ee81, p0, p1, p2, p3, p4);
};

global.N_0x2a4765812202e671 = function () {
	return _in(0x2a476581, 0x2202e671, _r, _ri);
};

global.N_0x2a48d9567940598f = function (p0, p1, p2, p3) {
	return _in(0x2a48d956, 0x7940598f, p0, p1, p2, p3, _r, _ri);
};

global.N_0x2a5afd2b8381a6e1 = function (p0) {
	return _in(0x2a5afd2b, 0x8381a6e1, p0);
};

global.N_0x2a610bee7d341cc4 = function (p0, p1) {
	return _in(0x2a610bee, 0x7d341cc4, p0, p1, _r, _ri);
};

global.N_0x2a6d1daab9ebb262 = function (p0) {
	return _in(0x2a6d1daa, 0xb9ebb262, p0, _r, _ri);
};

global.N_0x2a7413168f6cd5a8 = function () {
	return _in(0x2a741316, 0x8f6cd5a8);
};

global.N_0x2a77ef9bec8518f4 = function (p0) {
	return _in(0x2a77ef9b, 0xec8518f4, p0, _r, _ri);
};

global.N_0x2a8112a974de1ef6 = function () {
	return _in(0x2a8112a9, 0x74de1ef6, _r, _ri);
};

global.N_0x2ab7c81b3f70570c = function () {
	return _in(0x2ab7c81b, 0x3f70570c, _r, _ri);
};

global.N_0x2af423d6ecb2c485 = function (p0, p1) {
	return _in(0x2af423d6, 0xecb2c485, p0, p1);
};

global.N_0x2b02db082258625f = function (p0, p1, p2, p3, p4) {
	return _in(0x2b02db08, 0x2258625f, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x2b101ad9f651243a = function () {
	return _in(0x2b101ad9, 0xf651243a, _r, _ri);
};

global.N_0x2b12b6fc8b8772ab = function (p0, p1) {
	return _in(0x2b12b6fc, 0x8b8772ab, p0, p1);
};

global.N_0x2b32b11520626229 = function (p0, p1, p2, p3, p4) {
	return _in(0x2b32b115, 0x20626229, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x2b4ce170de09f346 = function (p0, p1) {
	return _in(0x2b4ce170, 0xde09f346, p0, p1);
};

global.N_0x2b6529c54d29037a = function (p0) {
	return _in(0x2b6529c5, 0x4d29037a, p0);
};

global.N_0x2b6846401d68e563 = function (p0, p1) {
	return _in(0x2b684640, 0x1d68e563, p0, p1, _r, _ri);
};

global.N_0x2b7277484cc095fd = function (p0, p1) {
	return _in(0x2b727748, 0x4cc095fd, p0, p1, _r, _ri);
};

global.N_0x2b8af29a78024bd3 = function (p0) {
	return _in(0x2b8af29a, 0x78024bd3, p0);
};

global.N_0x2b9c37c01bf25edb = function (p0) {
	return _in(0x2b9c37c0, 0x1bf25edb, p0, _r, _ri);
};

global.N_0x2ba1bcc99826cda2 = function () {
	return _in(0x2ba1bcc9, 0x9826cda2);
};

global.N_0x2ba918c823b8ba56 = function (p0, p1) {
	return _in(0x2ba918c8, 0x23b8ba56, p0, p1);
};

global.N_0x2ba9d7bf629f920c = function (p0) {
	return _in(0x2ba9d7bf, 0x629f920c, p0, _r, _ri);
};

global.N_0x2bae4880dcdd560b = function (p0, p1) {
	return _in(0x2bae4880, 0xdcdd560b, p0, p1, _r, _ri);
};

global.N_0x2bb2b5bcf0df8008 = function (p0, p1) {
	return _in(0x2bb2b5bc, 0xf0df8008, p0, p1);
};

global.N_0x2bb8d58e88777499 = function (p0) {
	return _in(0x2bb8d58e, 0x88777499, p0);
};

global.N_0x2beed53b912537d0 = function (p0, p1, p2) {
	return _in(0x2beed53b, 0x912537d0, p0, p1, p2);
};

global.N_0x2bf1953c0c21ac88 = function (p0) {
	return _in(0x2bf1953c, 0x0c21ac88, p0, _r, _ri);
};

global.N_0x2c04d89a0fb4e244 = function (p0) {
	return _in(0x2c04d89a, 0x0fb4e244, p0, _r, _ri);
};

global.N_0x2c24af8eeeef8a55 = function (p0, p1, p2) {
	return _in(0x2c24af8e, 0xeeef8a55, p0, p1, p2);
};

global.N_0x2c2d287748e8e9b7 = function (p0) {
	return _in(0x2c2d2877, 0x48e8e9b7, p0);
};

global.N_0x2c41d93f550d5e37 = function (p0, p1, p2) {
	return _in(0x2c41d93f, 0x550d5e37, p0, p1, p2);
};

global.N_0x2c46d2a591d8c322 = function (p0, p1, p2) {
	return _in(0x2c46d2a5, 0x91d8c322, p0, p1, p2, _r, _ri);
};

global.N_0x2c497bdef897c6df = function (p0) {
	return _in(0x2c497bde, 0xf897c6df, p0, _r, _ri);
};

global.N_0x2c4e98dda475364f = function (p0) {
	return _in(0x2c4e98dd, 0xa475364f, p0);
};

global.N_0x2c5bd9a43987aa27 = function (p0) {
	return _in(0x2c5bd9a4, 0x3987aa27, p0, _r, _ri);
};

global.N_0x2c6a07af9aedabd8 = function (p0, p1, p2, p3, p4) {
	return _in(0x2c6a07af, 0x9aedabd8, p0, p1, p2, p3, p4);
};

global.N_0x2c729f2b94cea911 = function (p0) {
	return _in(0x2c729f2b, 0x94cea911, p0, _r, _ri);
};

global.N_0x2c76fa0e01681f8d = function (p0, p1) {
	return _in(0x2c76fa0e, 0x01681f8d, p0, p1, _r, _ri);
};

global.N_0x2c83212a7aa51d3d = function (p0) {
	return _in(0x2c83212a, 0x7aa51d3d, p0, _r, _ri);
};

global.N_0x2c87c3e1c7b96ee2 = function (p0) {
	return _in(0x2c87c3e1, 0xc7b96ee2, p0);
};

global.N_0x2c9746d0ca15be1c = function (p0) {
	return _in(0x2c9746d0, 0xca15be1c, p0, _r, _rv);
};

global.N_0x2cd41ac000e6f611 = function () {
	return _in(0x2cd41ac0, 0x00e6f611);
};

global.N_0x2d053ea815702dd1 = function (p0, p1) {
	return _in(0x2d053ea8, 0x15702dd1, p0, p1, _r, _ri);
};

global.N_0x2d0571bb55879da2 = function (p0) {
	return _in(0x2d0571bb, 0x55879da2, p0, _r, _ri);
};

global.N_0x2d19bc4df626cbe7 = function (p0, p1, p2, p3) {
	return _in(0x2d19bc4d, 0xf626cbe7, p0, p1, p2, p3, _r, _ri);
};

global.N_0x2d3ace3de0a2b622 = function (p0, p1) {
	return _in(0x2d3ace3d, 0xe0a2b622, p0, p1);
};

global.N_0x2d40bcbfe9305dea = function (p0, p1) {
	return _in(0x2d40bcbf, 0xe9305dea, p0, p1);
};

global.N_0x2d4f9c852ce8a253 = function (p0) {
	return _in(0x2d4f9c85, 0x2ce8a253, p0, _r, _ri);
};

global.N_0x2d5dc831176d0114 = function (p0) {
	return _in(0x2d5dc831, 0x176d0114, p0, _r);
};

global.N_0x2d64376cf437363e = function (p0) {
	return _in(0x2d64376c, 0xf437363e, p0, _r, _ri);
};

global.N_0x2d657b10f211c572 = function (p0, p1) {
	return _in(0x2d657b10, 0xf211c572, p0, p1, _r, _ri);
};

global.N_0x2d874ba20e8e1f20 = function (p0) {
	return _in(0x2d874ba2, 0x0e8e1f20, p0, _r, _ri);
};

global.N_0x2d976dbdc731df80 = function (p0) {
	return _in(0x2d976dbd, 0xc731df80, p0);
};

global.N_0x2db524750dc41ed4 = function () {
	return _in(0x2db52475, 0x0dc41ed4, _r, _ri);
};

global.N_0x2dc0e8dcbd3546e9 = function (p0) {
	return _in(0x2dc0e8dc, 0xbd3546e9, p0, _r, _ri);
};

global.N_0x2dd3149dc34a3f4c = function (p0) {
	return _in(0x2dd3149d, 0xc34a3f4c, p0);
};

global.N_0x2dd42fad06e6f19e = function (p0, p1, p2) {
	return _in(0x2dd42fad, 0x06e6f19e, p0, p1, p2, _r, _ri);
};

global.N_0x2dd4e0e26dfad97d = function (p0, p1, p2) {
	return _in(0x2dd4e0e2, 0x6dfad97d, p0, p1, p2, _r, _ri);
};

global.N_0x2df3d457d86f8e57 = function (p0, p1) {
	return _in(0x2df3d457, 0xd86f8e57, p0, p1);
};

global.N_0x2df59ffe6ffd6044 = function (p0, p1, p2, p3, p4) {
	return _in(0x2df59ffe, 0x6ffd6044, p0, p1, p2, p3, p4);
};

global.N_0x2df89cd2ed1d0bde = function (p0, p1) {
	return _in(0x2df89cd2, 0xed1d0bde, p0, p1);
};

global.N_0x2df9038c90ad5264 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x2df9038c, 0x90ad5264, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0x2e036f0480b8bf02 = function () {
	return _in(0x2e036f04, 0x80b8bf02, _r, _ri);
};

global.N_0x2e1abe627c95ed9b = function () {
	return _in(0x2e1abe62, 0x7c95ed9b, _r, _ri);
};

global.N_0x2e1cdc1ff3b8473e = function (p0, p1) {
	return _in(0x2e1cdc1f, 0xf3b8473e, p0, p1, _r, _ri);
};

global.N_0x2e1d6d87346bb7d2 = function (p0, p1, p2, p3) {
	return _in(0x2e1d6d87, 0x346bb7d2, p0, p1, p2, p3);
};

global.N_0x2e20878fd208a68e = function (p0, p1) {
	return _in(0x2e20878f, 0xd208a68e, p0, p1);
};

global.N_0x2e2e06023d07631e = function (p0, p1) {
	return _in(0x2e2e0602, 0x3d07631e, p0, p1, _r, _ri);
};

global.N_0x2e31aca7477cf00f = function (p0, p1, p2) {
	return _in(0x2e31aca7, 0x477cf00f, p0, p1, p2);
};

global.N_0x2e399eafbeea74d5 = function () {
	return _in(0x2e399eaf, 0xbeea74d5);
};

global.N_0x2e545965df98d476 = function (p0) {
	return _in(0x2e545965, 0xdf98d476, p0, _r, _ri);
};

global.N_0x2e5b5d1f1453e08e = function (p0, p1) {
	return _in(0x2e5b5d1f, 0x1453e08e, p0, p1);
};

global.N_0x2e67707bec52ca4b = function (p0) {
	return _in(0x2e67707b, 0xec52ca4b, p0);
};

global.N_0x2e78d822208e740a = function (p0) {
	return _in(0x2e78d822, 0x208e740a, p0, _r, _ri);
};

global.N_0x2e957aa81f2c61c9 = function () {
	return _in(0x2e957aa8, 0x1f2c61c9);
};

global.N_0x2eb75fb86c41f026 = function (p0, p1, p2) {
	return _in(0x2eb75fb8, 0x6c41f026, p0, p1, p2);
};

global.N_0x2eb977293923c723 = function (p0, p1) {
	return _in(0x2eb97729, 0x3923c723, p0, p1);
};

global.N_0x2ebf70e1d8c06683 = function (p0, p1) {
	return _in(0x2ebf70e1, 0xd8c06683, p0, p1);
};

global.N_0x2f050a3ff8738245 = function (p0) {
	return _in(0x2f050a3f, 0xf8738245, p0, _r, _ri);
};

global.N_0x2f4d53023f826ff0 = function () {
	return _in(0x2f4d5302, 0x3f826ff0, _r, _ri);
};

global.N_0x2f54b146d3edce4d = function (p0) {
	return _in(0x2f54b146, 0xd3edce4d, p0, _r, _ri);
};

global.N_0x2f7bb105144acf30 = function () {
	return _in(0x2f7bb105, 0x144acf30);
};

global.N_0x2f7eb8b6f6afe79c = function (p0) {
	return _in(0x2f7eb8b6, 0xf6afe79c, p0, _r, _ri);
};

global.N_0x2f82cab262c8ae26 = function (p0) {
	return _in(0x2f82cab2, 0x62c8ae26, p0, _r, _ri);
};

global.N_0x2f901291ef177b02 = function (p0, p1) {
	return _in(0x2f901291, 0xef177b02, p0, p1);
};

global.N_0x2f994cc29caa9d22 = function (p0) {
	return _in(0x2f994cc2, 0x9caa9d22, p0);
};

global.N_0x2f9ac754fe179d58 = function (p0) {
	return _in(0x2f9ac754, 0xfe179d58, p0);
};

global.N_0x2fa568bfa725f8d6 = function (p0, p1, p2, p3) {
	return _in(0x2fa568bf, 0xa725f8d6, p0, p1, p2, p3);
};

global.N_0x2fa86833e3617e2d = function (p0) {
	return _in(0x2fa86833, 0xe3617e2d, p0, _r, _ri);
};

global.N_0x2fb53c631a49be92 = function () {
	return _in(0x2fb53c63, 0x1a49be92, _r, _ri);
};

global.N_0x2fcd528a397e5c88 = function (p0, p1) {
	return _in(0x2fcd528a, 0x397e5c88, p0, p1);
};

global.N_0x30146c25686b7836 = function (p0, p1) {
	return _in(0x30146c25, 0x686b7836, p0, p1, _r, _ri);
};

global.N_0x302e71c1d9ee75b9 = function (p0, p1, p2) {
	return _in(0x302e71c1, 0xd9ee75b9, p0, p1, p2, _r, _ri);
};

global.N_0x3034c77c79a58880 = function (p0) {
	return _in(0x3034c77c, 0x79a58880, p0);
};

global.N_0x3039be60b3749716 = function (p0) {
	return _in(0x3039be60, 0xb3749716, p0, _r, _ri);
};

global.N_0x3053064f909b5f42 = function (p0, p1) {
	return _in(0x3053064f, 0x909b5f42, p0, p1);
};

global.N_0x30569f348d126a5a = function (p0) {
	return _in(0x30569f34, 0x8d126a5a, p0, _r, _ri);
};

global.N_0x3088634cf8c819cf = function (p0) {
	return _in(0x3088634c, 0xf8c819cf, p0);
};

global.N_0x309bbebea8a3986c = function (p0, p1, p2, p3, p4) {
	return _in(0x309bbebe, 0xa8a3986c, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x30a768c30d385ec5 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x30a768c3, 0x0d385ec5, p0, p1, p2, p3, p4, p5);
};

global.N_0x30b391915538ebe2 = function (p0) {
	return _in(0x30b39191, 0x5538ebe2, p0);
};

global.N_0x30bed53646c86d11 = function (p0) {
	return _in(0x30bed536, 0x46c86d11, p0, _r, _ri);
};

global.N_0x30d86b2b7622d0eb = function (p0) {
	return _in(0x30d86b2b, 0x7622d0eb, p0, _r, _ri);
};

global.N_0x30e7c16b12da8211 = function (p0) {
	return _in(0x30e7c16b, 0x12da8211, p0, _r, _ri);
};

global.N_0x31010318ba9897ac = function (p0, p1) {
	return _in(0x31010318, 0xba9897ac, p0, p1);
};

global.N_0x310ce349e0c0ec4b = function (p0, p1, p2) {
	return _in(0x310ce349, 0xe0c0ec4b, p0, p1, p2);
};

global.N_0x31108bb5715d035f = function () {
	return _in(0x31108bb5, 0x715d035f);
};

global.N_0x3112adb9d5f3426b = function (p0, p1) {
	return _in(0x3112adb9, 0xd5f3426b, p0, p1);
};

global.N_0x31160ec47e7c9549 = function (p0, p1) {
	return _in(0x31160ec4, 0x7e7c9549, p0, p1);
};

global.N_0x31167ed4324b758d = function (p0) {
	return _in(0x31167ed4, 0x324b758d, p0, _r, _ri);
};

global.N_0x313778edca9158e2 = function () {
	return _in(0x313778ed, 0xca9158e2, _r, _ri);
};

global.N_0x3138582e0a13bfab = function (p0) {
	return _in(0x3138582e, 0x0a13bfab, p0, _r, _ri);
};

global.N_0x3145044f3990d321 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x3145044f, 0x3990d321, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x314c5465195f3b30 = function (p0, p1) {
	return _in(0x314c5465, 0x195f3b30, p0, p1);
};

global.N_0x3168ba5d6dece323 = function () {
	return _in(0x3168ba5d, 0x6dece323);
};

global.N_0x316cdb5b6e8f4110 = function (p0, p1, p2) {
	return _in(0x316cdb5b, 0x6e8f4110, p0, p1, p2, _r, _ri);
};

global.N_0x317d9c9560529cc2 = function (p0) {
	return _in(0x317d9c95, 0x60529cc2, p0);
};

global.N_0x3180e991d4b8f248 = function () {
	return _in(0x3180e991, 0xd4b8f248);
};

global.N_0x318f0f9a4426cfa2 = function (p0, p1) {
	return _in(0x318f0f9a, 0x4426cfa2, p0, p1, _r, _ri);
};

global.N_0x31b2e7f2e3c58b89 = function (p0, p1, p2, p3) {
	return _in(0x31b2e7f2, 0xe3c58b89, p0, p1, p2, p3, _r, _ri);
};

global.N_0x31bb338f64d5c861 = function (p0, p1) {
	return _in(0x31bb338f, 0x64d5c861, p0, p1);
};

global.N_0x31c70a716cae1fee = function (p0) {
	return _in(0x31c70a71, 0x6cae1fee, p0, _r, _ri);
};

global.N_0x31dad2cd6d49546e = function (p0) {
	return _in(0x31dad2cd, 0x6d49546e, p0, _r, _ri);
};

global.N_0x31dc8d3f216d8509 = function (p0) {
	return _in(0x31dc8d3f, 0x216d8509, p0, _r, _ri);
};

global.N_0x31f343383f19c987 = function (p0, p1, p2) {
	return _in(0x31f34338, 0x3f19c987, p0, p1, p2);
};

global.N_0x31fef6a20f00b963 = function (p0) {
	return _in(0x31fef6a2, 0x0f00b963, p0, _r, _ri);
};

global.N_0x3210bcb36af7621b = function (p0) {
	return _in(0x3210bcb3, 0x6af7621b, p0);
};

global.N_0x3215bbe34d3418c5 = function (p0) {
	return _in(0x3215bbe3, 0x4d3418c5, p0, _r, _ri);
};

global.N_0x3233c4ec0514c7ec = function (p0, p1, p2, p3, p4) {
	return _in(0x3233c4ec, 0x0514c7ec, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x32348719dced2969 = function (p0) {
	return _in(0x32348719, 0xdced2969, p0, _r, _ri);
};

global.N_0x32417cb860a3bdc4 = function (p0, p1) {
	return _in(0x32417cb8, 0x60a3bdc4, p0, p1, _r, _ri);
};

global.N_0x324ab2a68ad8aee5 = function () {
	return _in(0x324ab2a6, 0x8ad8aee5);
};

global.N_0x325434c68358d282 = function (p0) {
	return _in(0x325434c6, 0x8358d282, p0);
};

global.N_0x3255d4d2082c6339 = function (p0, p1, p2) {
	return _in(0x3255d4d2, 0x082c6339, p0, p1, p2);
};

global.N_0x326f7951ef0d7f75 = function (p0, p1) {
	return _in(0x326f7951, 0xef0d7f75, p0, p1, _r, _ri);
};

global.N_0x329772c47dbb2fbc = function (p0) {
	return _in(0x329772c4, 0x7dbb2fbc, p0);
};

global.N_0x32a1e3b83d501096 = function (p0) {
	return _in(0x32a1e3b8, 0x3d501096, p0, _r, _ri);
};

global.N_0x32a7c216344d623b = function (p0, p1, p2) {
	return _in(0x32a7c216, 0x344d623b, p0, p1, p2, _r, _ri);
};

global.N_0x32c2939564d74bff = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x32c29395, 0x64d74bff, p0, p1, p2, p3, p4, p5);
};

global.N_0x32c90cdfaf40514c = function () {
	return _in(0x32c90cdf, 0xaf40514c, _r, _ri);
};

global.N_0x32ccad8a981b53d3 = function (p0) {
	return _in(0x32ccad8a, 0x981b53d3, p0);
};

global.N_0x32ceda9a0ab4cef7 = function (p0, p1, p2) {
	return _in(0x32ceda9a, 0x0ab4cef7, p0, p1, p2);
};

global.N_0x32d5898c4898cd95 = function () {
	return _in(0x32d5898c, 0x4898cd95);
};

global.N_0x32de2bffda43e62a = function () {
	return _in(0x32de2bff, 0xda43e62a);
};

global.N_0x32f4dbfdfcccc735 = function (p0, p1, p2) {
	return _in(0x32f4dbfd, 0xfcccc735, p0, p1, p2);
};

global.N_0x330ca55a3647fa1c = function (p0, p1) {
	return _in(0x330ca55a, 0x3647fa1c, p0, p1);
};

global.N_0x331550b212014b92 = function (p0, p1) {
	return _in(0x331550b2, 0x12014b92, p0, p1, _r, _ri);
};

global.N_0x331cbd247fc5daa8 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x331cbd24, 0x7fc5daa8, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x331d349e0380b097 = function (p0) {
	return _in(0x331d349e, 0x0380b097, p0);
};

global.N_0x332630b862277879 = function () {
	return _in(0x332630b8, 0x62277879, _r, _ri);
};

global.N_0x3329aae2882fc8e4 = function (p0, p1, p2) {
	return _in(0x3329aae2, 0x882fc8e4, p0, p1, p2);
};

global.N_0x334ce0da4faf330c = function () {
	return _in(0x334ce0da, 0x4faf330c);
};

global.N_0x336b3d200ab007cb = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x336b3d20, 0x0ab007cb, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x3373779baf7caf48 = function (p0, p1) {
	return _in(0x3373779b, 0xaf7caf48, p0, p1);
};

global.N_0x337f1cc8ee895601 = function (p0, p1) {
	return _in(0x337f1cc8, 0xee895601, p0, p1, _r, _ri);
};

global.N_0x33825a7388a6b9f6 = function (p0, p1) {
	return _in(0x33825a73, 0x88a6b9f6, p0, p1, _r, _ri);
};

global.N_0x3397cd4e0353dfba = function (p0) {
	return _in(0x3397cd4e, 0x0353dfba, p0, _r, _ri);
};

global.N_0x33982467b1e349ef = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x33982467, 0xb1e349ef, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x33992a808df1c1ba = function (vehicle, p1) {
	return _in(0x33992a80, 0x8df1c1ba, vehicle, p1);
};

global.N_0x339e16b41780fc35 = function (p0, p1, p2) {
	return _in(0x339e16b4, 0x1780fc35, p0, p1, p2, _r, _ri);
};

global.N_0x33c1d63e55fa4284 = function () {
	return _in(0x33c1d63e, 0x55fa4284, _r, _ri);
};

global.N_0x33d51f801cb16e4f = function () {
	return _in(0x33d51f80, 0x1cb16e4f);
};

global.N_0x33fa048675821da7 = function (p0, p1) {
	return _in(0x33fa0486, 0x75821da7, p0, p1, _r, _ri);
};

global.N_0x341cdd17efc2472e = function (p0, p1) {
	return _in(0x341cdd17, 0xefc2472e, p0, p1);
};

global.N_0x345c9f993a8ab4a4 = function (p0, p1) {
	return _in(0x345c9f99, 0x3a8ab4a4, p0, p1);
};

global.N_0x345ec3b7ebde1cb5 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x345ec3b7, 0xebde1cb5, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x348f211ca2404039 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x348f211c, 0xa2404039, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x34a0671be613d3d0 = function (p0) {
	return _in(0x34a0671b, 0xe613d3d0, p0, _r, _ri);
};

global.N_0x34ae85c7ca4857aa = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x34ae85c7, 0xca4857aa, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x34b5ceac180a5d6e = function (p0, p1, p2) {
	return _in(0x34b5ceac, 0x180a5d6e, p0, p1, p2);
};

global.N_0x34b9c4d86df2c2f3 = function (p0) {
	return _in(0x34b9c4d8, 0x6df2c2f3, p0, _r, _ri);
};

global.N_0x34bcf6209b9668a7 = function (p0, p1) {
	return _in(0x34bcf620, 0x9b9668a7, p0, p1);
};

global.N_0x34c0010188d7c54a = function (p0, p1) {
	return _in(0x34c00101, 0x88d7c54a, p0, p1);
};

global.N_0x34c11114887150fd = function (p0, p1) {
	return _in(0x34c11114, 0x887150fd, p0, p1);
};

global.N_0x34c9af25649172d0 = function (p0) {
	return _in(0x34c9af25, 0x649172d0, p0);
};

global.N_0x34d6ac1157c8226c = function (p0, p1) {
	return _in(0x34d6ac11, 0x57c8226c, p0, p1, _r, _ri);
};

global.N_0x34eddd59364ad74a = function (p0, p1) {
	return _in(0x34eddd59, 0x364ad74a, p0, p1);
};

global.N_0x34f008a7e48c496b = function (p0, p1) {
	return _in(0x34f008a7, 0xe48c496b, p0, p1, _r, _ri);
};

global.N_0x350c23949e43686c = function () {
	return _in(0x350c2394, 0x9e43686c, _r, _rf);
};

global.N_0x350e9211074955af = function (p0, p1) {
	return _in(0x350e9211, 0x074955af, p0, p1, _r, _ri);
};

global.N_0x35165c658077cd0b = function () {
	return _in(0x35165c65, 0x8077cd0b, _r, _ri);
};

global.N_0x3519cc3525319a96 = function () {
	return _in(0x3519cc35, 0x25319a96, _r, _ri);
};

global.N_0x351d71b8b72b858b = function (p0) {
	return _in(0x351d71b8, 0xb72b858b, p0, _r, _ri);
};

global.N_0x351f74ed6177ebe7 = function () {
	return _in(0x351f74ed, 0x6177ebe7, _r, _ri);
};

global.N_0x354ca4dddeec397a = function (p0) {
	return _in(0x354ca4dd, 0xdeec397a, p0, _r, _ri);
};

global.N_0x354f689c4ffaab37 = function (p0) {
	return _in(0x354f689c, 0x4ffaab37, p0, _r, _ri);
};

global.N_0x356135b9b10a2a82 = function (p0) {
	return _in(0x356135b9, 0xb10a2a82, p0, _r, _ri);
};

global.N_0x356f9fb0698c1feb = function (p0, p1) {
	return _in(0x356f9fb0, 0x698c1feb, p0, p1, _r, _ri);
};

global.N_0x35815f372d43e1e5 = function (name, p1) {
	return _in(0x35815f37, 0x2d43e1e5, _ts(name), p1);
};

global.N_0x358a1a751b335a11 = function (p0) {
	return _in(0x358a1a75, 0x1b335a11, p0);
};

global.N_0x35b8c070e0c16e2f = function (p0, p1) {
	return _in(0x35b8c070, 0xe0c16e2f, p0, p1);
};

global.N_0x35d302397e524939 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x35d30239, 0x7e524939, p0, p1, p2, p3, p4, p5, _r, _rv);
};

global.N_0x35dc1877312fba0f = function (p0) {
	return _in(0x35dc1877, 0x312fba0f, p0);
};

global.N_0x35defecae36d4fae = function (p0, p1) {
	return _in(0x35defeca, 0xe36d4fae, p0, p1);
};

global.N_0x35e5e21f9159849c = function (p0) {
	return _in(0x35e5e21f, 0x9159849c, p0, _r, _ri);
};

global.N_0x362086b911657b1a = function (p0, p1) {
	return _in(0x362086b9, 0x11657b1a, p0, p1);
};

global.N_0x3641fcd53e59b335 = function (p0, p1, p2) {
	return _in(0x3641fcd5, 0x3e59b335, p0, p1, p2);
};

global.N_0x36486af7da93a464 = function (p0) {
	return _in(0x36486af7, 0xda93a464, p0, _r, _ri);
};

global.N_0x36513affc703c60d = function (p0) {
	return _in(0x36513aff, 0xc703c60d, p0);
};

global.N_0x36559148b78853b3 = function (p0, p1, p2) {
	return _in(0x36559148, 0xb78853b3, p0, p1, p2);
};

global.N_0x3660bcab3a6bb734 = function (p0) {
	return _in(0x3660bcab, 0x3a6bb734, p0);
};

global.N_0x36d0f2ba2c0d9bde = function (p0, p1) {
	return _in(0x36d0f2ba, 0x2c0d9bde, p0, p1, _r, _ri);
};

global.N_0x36d188aecb26094b = function (p0) {
	return _in(0x36d188ae, 0xcb26094b, p0);
};

global.N_0x36e3d8b5a6552fe8 = function (p0) {
	return _in(0x36e3d8b5, 0xa6552fe8, p0, _r, _ri);
};

global.N_0x36e4b61dc56de77c = function (p0, p1, p2, p3, p4) {
	return _in(0x36e4b61d, 0xc56de77c, p0, p1, p2, p3, p4);
};

global.N_0x36eb4d34d4a092c5 = function (p0, p1) {
	return _in(0x36eb4d34, 0xd4a092c5, p0, p1);
};

global.N_0x36f69e7a22655653 = function (p0) {
	return _in(0x36f69e7a, 0x22655653, p0, _r, _ri);
};

global.N_0x370a973252741ac4 = function (p0, p1) {
	return _in(0x370a9732, 0x52741ac4, p0, p1);
};

global.N_0x370f57c47f68ebca = function (p0) {
	return _in(0x370f57c4, 0x7f68ebca, p0, _r, _ri);
};

global.N_0x3738b784ddd35cc6 = function (p0, p1, p2) {
	return _in(0x3738b784, 0xddd35cc6, p0, p1, p2, _r, _ri);
};

global.N_0x3743ce6948194349 = function (p0, p1, p2, p3, p4) {
	return _in(0x3743ce69, 0x48194349, p0, p1, p2, p3, p4);
};

global.N_0x374f0e716bfcde82 = function (p0, p1, p2, p3) {
	return _in(0x374f0e71, 0x6bfcde82, p0, p1, p2, p3);
};

global.N_0x375f5870a7b8bec1 = function (p0) {
	return _in(0x375f5870, 0xa7b8bec1, p0, _r, _ri);
};

global.N_0x3765c3a3e8192e10 = function () {
	return _in(0x3765c3a3, 0xe8192e10, _r, _ri);
};

global.N_0x378d3b1b11d9385b = function (p0) {
	return _in(0x378d3b1b, 0x11d9385b, p0);
};

global.N_0x3799efcc3c8cd5e1 = function (p0) {
	return _in(0x3799efcc, 0x3c8cd5e1, p0, _r, _ri);
};

global.N_0x37a834aec6a4f74a = function () {
	return _in(0x37a834ae, 0xc6a4f74a, _r, _ri);
};

global.N_0x37b01666bae8f7ef = function (p0) {
	return _in(0x37b01666, 0xbae8f7ef, p0, _r, _ri);
};

global.N_0x37c1257849def24a = function (p0) {
	return _in(0x37c12578, 0x49def24a, p0);
};

global.N_0x37ceb637ba3b1a47 = function (p0) {
	return _in(0x37ceb637, 0xba3b1a47, p0);
};

global.N_0x37d238be69f7378a = function (p0) {
	return _in(0x37d238be, 0x69f7378a, p0, _r, _ri);
};

global.N_0x37d7bdba89f13959 = function (p0) {
	return _in(0x37d7bdba, 0x89f13959, p0);
};

global.N_0x380a2e353ad30917 = function (p0, p1, p2) {
	return _in(0x380a2e35, 0x3ad30917, p0, p1, p2);
};

global.N_0x380ffa15b72408fb = function (p0) {
	return _in(0x380ffa15, 0xb72408fb, p0, _r, _ri);
};

global.N_0x3813e11a378958a5 = function (p0) {
	return _in(0x3813e11a, 0x378958a5, p0, _r, _ri);
};

global.N_0x383f64263f946e45 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x383f6426, 0x3f946e45, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x38497f139981c5c9 = function (p0, p1, p2, p3) {
	return _in(0x38497f13, 0x9981c5c9, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3852237a3d9df145 = function (p0) {
	return _in(0x3852237a, 0x3d9df145, p0);
};

global.N_0x387ad749e3b69b70 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x387ad749, 0xe3b69b70, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x38c0c9cae1544500 = function (p0) {
	return _in(0x38c0c9ca, 0xe1544500, p0);
};

global.N_0x38c2bf94d15f464d = function (p0) {
	return _in(0x38c2bf94, 0xd15f464d, p0, _r, _ri);
};

global.N_0x38d9d50f2085e9b3 = function (p0) {
	return _in(0x38d9d50f, 0x2085e9b3, p0);
};

global.N_0x38e7dd70a242d5cb = function (p0, p1) {
	return _in(0x38e7dd70, 0xa242d5cb, p0, p1);
};

global.N_0x3900491c0d61ed4b = function (p0, p1) {
	return _in(0x3900491c, 0x0d61ed4b, p0, p1);
};

global.N_0x390710d2dafa6bff = function (p0, p1) {
	return _in(0x390710d2, 0xdafa6bff, p0, p1);
};

global.N_0x39073da4eddbc91d = function (p0) {
	return _in(0x39073da4, 0xeddbc91d, p0);
};

global.N_0x3923ec958249657d = function (p0, p1, p2) {
	return _in(0x3923ec95, 0x8249657d, p0, p1, p2);
};

global.N_0x3946fc742ac305cd = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x3946fc74, 0x2ac305cd, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x39654e1f68b78287 = function () {
	return _in(0x39654e1f, 0x68b78287, _r, _ri);
};

global.N_0x3972f78a78b5d9df = function (p0) {
	return _in(0x3972f78a, 0x78b5d9df, p0);
};

global.N_0x397769175a7dbb30 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x39776917, 0x5a7dbb30, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x398066f893149856 = function (p0, p1, p2) {
	return _in(0x398066f8, 0x93149856, p0, p1, p2, _r, _ri);
};

global.N_0x39816f6f94f385ad = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x39816f6f, 0x94f385ad, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x398fab9c96a81924 = function (p0, p1) {
	return _in(0x398fab9c, 0x96a81924, p0, p1);
};

global.N_0x399657ed871b3a6c = function (p0, p1) {
	return _in(0x399657ed, 0x871b3a6c, p0, p1);
};

global.N_0x39a2fc5af55a52b1 = function (p0, p1) {
	return _in(0x39a2fc5a, 0xf55a52b1, p0, p1);
};

global.N_0x39a8ef7af29a192c = function (p0, p1, p2, p3) {
	return _in(0x39a8ef7a, 0xf29a192c, p0, p1, p2, p3, _r, _ri);
};

global.N_0x39bed552db46ffa9 = function (p0, p1) {
	return _in(0x39bed552, 0xdb46ffa9, p0, p1);
};

global.N_0x39d6dace323a20b6 = function (p0) {
	return _in(0x39d6dace, 0x323a20b6, p0, _r, _ri);
};

global.N_0x39ed303390ddeac7 = function (p0, p1, p2, p3, p4) {
	return _in(0x39ed3033, 0x90ddeac7, p0, p1, p2, p3, p4);
};

global.N_0x3a00d87b20a2a5e4 = function (p0, p1) {
	return _in(0x3a00d87b, 0x20a2a5e4, p0, p1);
};

global.N_0x3a0b667abff87f6e = function (p0, p1, p2) {
	return _in(0x3a0b667a, 0xbff87f6e, p0, p1, p2, _r, _ri);
};

global.N_0x3a0f82f6ee2291c8 = function (p0) {
	return _in(0x3a0f82f6, 0xee2291c8, p0, _r, _ri);
};

global.N_0x3a3be6b920525237 = function (p0, p1) {
	return _in(0x3a3be6b9, 0x20525237, p0, p1);
};

global.N_0x3a3d5568af297cd5 = function (p0) {
	return _in(0x3a3d5568, 0xaf297cd5, p0, _r);
};

global.N_0x3a50753042b6891b = function (p0, p1) {
	return _in(0x3a507530, 0x42b6891b, p0, p1);
};

global.N_0x3a5697b80fed5ebe = function (p0, p1, p2, p3, p4) {
	return _in(0x3a5697b8, 0x0fed5ebe, p0, p1, p2, p3, p4);
};

global.N_0x3a65f4844913a047 = function (p0, p1) {
	return _in(0x3a65f484, 0x4913a047, p0, p1, _r, _ri);
};

global.N_0x3a66f1963b223f61 = function () {
	return _in(0x3a66f196, 0x3b223f61, _r, _ri);
};

global.N_0x3a6ae4eee30370fe = function (p0, p1) {
	return _in(0x3a6ae4ee, 0xe30370fe, p0, p1, _r, _ri);
};

global.N_0x3a77dae8b4fd7586 = function (p0, p1) {
	return _in(0x3a77dae8, 0xb4fd7586, p0, p1);
};

global.N_0x3a8611bd7bde84f7 = function (p0, p1) {
	return _in(0x3a8611bd, 0x7bde84f7, p0, p1);
};

global.N_0x3a87fda8f1b6cdfb = function (p0, p1, p2) {
	return _in(0x3a87fda8, 0xf1b6cdfb, p0, p1, p2);
};

global.N_0x3a9a281ff71249e9 = function (p0, p1) {
	return _in(0x3a9a281f, 0xf71249e9, p0, p1);
};

global.N_0x3aa0cdc63696166d = function (p0) {
	return _in(0x3aa0cdc6, 0x3696166d, p0, _r, _ri);
};

global.N_0x3aa24ccc0d451379 = function (p0) {
	return _in(0x3aa24ccc, 0x0d451379, p0, _r, _ri);
};

global.N_0x3ab3a77672f6473f = function (p0, p1, p2, p3) {
	return _in(0x3ab3a776, 0x72f6473f, p0, p1, p2, p3, _r, _rv);
};

global.N_0x3ab6c7b0bb0df4b1 = function (p0, p1) {
	return _in(0x3ab6c7b0, 0xbb0df4b1, p0, p1, _r, _ri);
};

global.N_0x3abfa128f5bf5a70 = function (p0, p1, p2) {
	return _in(0x3abfa128, 0xf5bf5a70, p0, p1, p2);
};

global.N_0x3acac8832e77bc93 = function (p0, p1) {
	return _in(0x3acac883, 0x2e77bc93, p0, p1);
};

global.N_0x3acc128510142b9d = function (p0, p1, p2, p3) {
	return _in(0x3acc1285, 0x10142b9d, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3acce14dfa6ba8c2 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x3acce14d, 0xfa6ba8c2, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x3ad212429e095efb = function (p0, p1) {
	return _in(0x3ad21242, 0x9e095efb, p0, p1);
};

global.N_0x3ad8eff9703be657 = function (p0, p1) {
	return _in(0x3ad8eff9, 0x703be657, p0, p1);
};

global.N_0x3adc71a66356d706 = function () {
	return _in(0x3adc71a6, 0x6356d706, _r, _ri);
};

global.N_0x3ae3552e7c207cc5 = function (p0, p1) {
	return _in(0x3ae3552e, 0x7c207cc5, p0, p1);
};

global.N_0x3ae451860f03ca8a = function (p0, p1) {
	return _in(0x3ae45186, 0x0f03ca8a, p0, p1, _r, _ri);
};

global.N_0x3aeabae3f3c7600c = function () {
	return _in(0x3aeabae3, 0xf3c7600c, _r, _ri);
};

global.N_0x3aec4a410ecaf30d = function (p0) {
	return _in(0x3aec4a41, 0x0ecaf30d, p0, _r, _ri);
};

global.N_0x3b005ff0538ed2a9 = function (p0) {
	return _in(0x3b005ff0, 0x538ed2a9, p0, _r, _ri);
};

global.N_0x3b296934db026873 = function (p0, p1) {
	return _in(0x3b296934, 0xdb026873, p0, p1);
};

global.N_0x3b31732fade5baf3 = function () {
	return _in(0x3b31732f, 0xade5baf3, _r, _ri);
};

global.N_0x3b393716c3fd8237 = function (p0) {
	return _in(0x3b393716, 0xc3fd8237, p0, _r, _ri);
};

global.N_0x3b7b7908b7adfb4b = function (p0, p1) {
	return _in(0x3b7b7908, 0xb7adfb4b, p0, p1);
};

global.N_0x3b82acc3f4b6240c = function () {
	return _in(0x3b82acc3, 0xf4b6240c, _r, _ri);
};

global.N_0x3b8e3ad9677ce12b = function (p0, p1, p2) {
	return _in(0x3b8e3ad9, 0x677ce12b, p0, p1, p2);
};

global.N_0x3bb84f812e052c90 = function (p0) {
	return _in(0x3bb84f81, 0x2e052c90, p0);
};

global.N_0x3bbdd6143ff16f98 = function (p0, p1, p2, p3, p4) {
	return _in(0x3bbdd614, 0x3ff16f98, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x3bbeecc5b8f35318 = function (p0, p1) {
	return _in(0x3bbeecc5, 0xb8f35318, p0, p1);
};

global.N_0x3bcf32ff37ea9f1d = function (p0) {
	return _in(0x3bcf32ff, 0x37ea9f1d, p0);
};

global.N_0x3bdfcf25b58b0415 = function (p0) {
	return _in(0x3bdfcf25, 0xb58b0415, p0, _r, _ri);
};

global.N_0x3bf0767cf33fcc88 = function (p0) {
	return _in(0x3bf0767c, 0xf33fcc88, p0);
};

global.N_0x3c3c7b1b5ec08764 = function () {
	return _in(0x3c3c7b1b, 0x5ec08764);
};

global.N_0x3c486e334520579d = function () {
	return _in(0x3c486e33, 0x4520579d);
};

global.N_0x3c4ae8506638c7e2 = function (p0, p1) {
	return _in(0x3c4ae850, 0x6638c7e2, p0, p1);
};

global.N_0x3c529a827998f9b3 = function (p0, p1, p2) {
	return _in(0x3c529a82, 0x7998f9b3, p0, p1, p2);
};

global.N_0x3c61b52b00848c26 = function (p0, p1, p2, p3, p4) {
	return _in(0x3c61b52b, 0x00848c26, p0, p1, p2, p3, p4);
};

global.N_0x3c6490d940ff5d0b = function (p0, p1, p2, p3, p4) {
	return _in(0x3c6490d9, 0x40ff5d0b, p0, p1, p2, p3, p4);
};

global.N_0x3c67506996001f5e = function () {
	return _in(0x3c675069, 0x96001f5e, _r, _ri);
};

global.N_0x3c7a9c2c953128fe = function (p0) {
	return _in(0x3c7a9c2c, 0x953128fe, p0);
};

global.N_0x3c8f74e8fe751614 = function () {
	return _in(0x3c8f74e8, 0xfe751614);
};

global.N_0x3c9628a811cbd724 = function (p0) {
	return _in(0x3c9628a8, 0x11cbd724, p0, _r, _ri);
};

global.N_0x3ca5e58c9731a16b = function (p0, p1) {
	return _in(0x3ca5e58c, 0x9731a16b, p0, p1);
};

global.N_0x3caad93fa5b9579a = function (p0, p1, p2) {
	return _in(0x3caad93f, 0xa5b9579a, p0, p1, p2);
};

global.N_0x3cb8859f04763c78 = function (p0, p1) {
	return _in(0x3cb8859f, 0x04763c78, p0, p1, _r, _ri);
};

global.N_0x3cf46f55c6585590 = function () {
	return _in(0x3cf46f55, 0xc6585590, _r, _ri);
};

global.N_0x3cf96e16265b7dc8 = function (p0) {
	return _in(0x3cf96e16, 0x265b7dc8, p0, _r, _ri);
};

global.N_0x3d084d5568fb4028 = function (p0) {
	return _in(0x3d084d55, 0x68fb4028, p0, _r, _ri);
};

global.N_0x3d0bbccf401b5fdb = function () {
	return _in(0x3d0bbccf, 0x401b5fdb);
};

global.N_0x3d10d7179d7034af = function (p0, p1, p2) {
	return _in(0x3d10d717, 0x9d7034af, p0, p1, p2, _r, _ri);
};

global.N_0x3d2674828a4e6b3c = function () {
	return _in(0x3d267482, 0x8a4e6b3c, _r, _ri);
};

global.N_0x3d69537039f8d824 = function (p0) {
	return _in(0x3d695370, 0x39f8d824, p0, _r, _ri);
};

global.N_0x3d86997a86feef0d = function (p0, p1) {
	return _in(0x3d86997a, 0x86feef0d, p0, p1);
};

global.N_0x3d9da5c9efd20d88 = function (p0, p1) {
	return _in(0x3d9da5c9, 0xefd20d88, p0, p1);
};

global.N_0x3d9f958834ab9c30 = function (p0) {
	return _in(0x3d9f9588, 0x34ab9c30, p0, _r, _ri);
};

global.N_0x3da7a10583a4bec0 = function () {
	return _in(0x3da7a105, 0x83a4bec0, _r, _ri);
};

global.N_0x3daabe78a23694bc = function (p0, p1) {
	return _in(0x3daabe78, 0xa23694bc, p0, p1);
};

global.N_0x3df7ee3a76185108 = function () {
	return _in(0x3df7ee3a, 0x76185108);
};

global.N_0x3e2616e7ea539480 = function (p0) {
	return _in(0x3e2616e7, 0xea539480, p0, _r, _ri);
};

global.N_0x3e2a25b2416dd67e = function (p0) {
	return _in(0x3e2a25b2, 0x416dd67e, p0, _r, _rv);
};

global.N_0x3e2fddbe435a8787 = function () {
	return _in(0x3e2fddbe, 0x435a8787);
};

global.N_0x3e4a16bc669e71b3 = function () {
	return _in(0x3e4a16bc, 0x669e71b3, _r, _ri);
};

global.N_0x3e4e811480b3ae79 = function (p0, p1, p2, p3) {
	return _in(0x3e4e8114, 0x80b3ae79, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3e592d0486dec0f6 = function (p0) {
	return _in(0x3e592d04, 0x86dec0f6, p0, _r, _ri);
};

global.N_0x3e593df9c2962ec6 = function (p0) {
	return _in(0x3e593df9, 0xc2962ec6, p0, _r, _ri);
};

global.N_0x3e74a687a73979c6 = function (p0) {
	return _in(0x3e74a687, 0xa73979c6, p0);
};

global.N_0x3e8cce6769db5f34 = function (p0) {
	return _in(0x3e8cce67, 0x69db5f34, p0, _r, _ri);
};

global.N_0x3e93dddcbb6111e4 = function (p0, p1) {
	return _in(0x3e93dddc, 0xbb6111e4, p0, p1);
};

global.N_0x3e98ac9d8c56c62c = function (p0) {
	return _in(0x3e98ac9d, 0x8c56c62c, p0);
};

global.N_0x3ea62e56f386c997 = function (p0, p1) {
	return _in(0x3ea62e56, 0xf386c997, p0, p1);
};

global.N_0x3eb2791a1fbc8a42 = function (p0, p1) {
	return _in(0x3eb2791a, 0x1fbc8a42, p0, p1);
};

global.N_0x3ec28da1ffac9ddd = function (p0, p1, p2, p3) {
	return _in(0x3ec28da1, 0xffac9ddd, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3ee1f7a8c32f24e1 = function (p0, p1, p2, p3) {
	return _in(0x3ee1f7a8, 0xc32f24e1, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3eecaadab0d9fe29 = function () {
	return _in(0x3eecaada, 0xb0d9fe29, _r, _ri);
};

global.N_0x3efabb21e14a6bd1 = function (p0, p1, p2) {
	return _in(0x3efabb21, 0xe14a6bd1, p0, p1, p2);
};

global.N_0x3f08c6163a4ab1d6 = function (p0) {
	return _in(0x3f08c616, 0x3a4ab1d6, p0);
};

global.N_0x3f0abae38a0515ad = function (p0, p1) {
	return _in(0x3f0abae3, 0x8a0515ad, p0, p1);
};

global.N_0x3f2ee18a3e294801 = function (p0) {
	return _in(0x3f2ee18a, 0x3e294801, p0, _r, _ri);
};

global.N_0x3f4fd4bed07ab8c4 = function (p0) {
	return _in(0x3f4fd4be, 0xd07ab8c4, p0, _r, _ri);
};

global.N_0x3f59fe6f37869576 = function (p0, p1) {
	return _in(0x3f59fe6f, 0x37869576, p0, p1, _r, _ri);
};

global.N_0x3f6fd87d2030adc6 = function () {
	return _in(0x3f6fd87d, 0x2030adc6, _r, _ri);
};

global.N_0x3f73aed12a5ef0ff = function (p0) {
	return _in(0x3f73aed1, 0x2a5ef0ff, p0, _r, _ri);
};

global.N_0x3f81ea4275d39d6f = function (p0) {
	return _in(0x3f81ea42, 0x75d39d6f, p0, _r, _ri);
};

global.N_0x3f8387db1b9f31b7 = function (p0, p1) {
	return _in(0x3f8387db, 0x1b9f31b7, p0, p1, _r, _ri);
};

global.N_0x3f9fddba79117c69 = function (p0, p1, p2, p3) {
	return _in(0x3f9fddba, 0x79117c69, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3fa09dd57b93c0de = function (p0, p1, p2, p3, p4) {
	return _in(0x3fa09dd5, 0x7b93c0de, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x3fa7d7d1e0ea809e = function (p0, p1) {
	return _in(0x3fa7d7d1, 0xe0ea809e, p0, p1);
};

global.N_0x3faa928a79591761 = function (p0) {
	return _in(0x3faa928a, 0x79591761, p0, _r, _ri);
};

global.N_0x3fbb838aea30c1d8 = function () {
	return _in(0x3fbb838a, 0xea30c1d8);
};

global.N_0x3fbc3f51bf12dfbf = function (p0) {
	return _in(0x3fbc3f51, 0xbf12dfbf, p0, _r, _ri);
};

global.N_0x3fc4c027fd0936f4 = function (p0) {
	return _in(0x3fc4c027, 0xfd0936f4, p0);
};

global.N_0x3fcbb5fcfd968698 = function (p0, p1, p2, p3, p4) {
	return _in(0x3fcbb5fc, 0xfd968698, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x3fda2b79aeee351c = function (p0, p1, p2, p3) {
	return _in(0x3fda2b79, 0xaeee351c, p0, p1, p2, p3, _r, _ri);
};

global.N_0x3fdbb99efd8ce4af = function (p0, p1, p2) {
	return _in(0x3fdbb99e, 0xfd8ce4af, p0, p1, p2);
};

global.N_0x3fdcc1f8c17e303e = function (p0, p1, p2) {
	return _in(0x3fdcc1f8, 0xc17e303e, p0, p1, p2);
};

global.N_0x3fe141fdb990e3d1 = function () {
	return _in(0x3fe141fd, 0xb990e3d1);
};

global.N_0x3fe4fb41ef7d2196 = function (p0) {
	return _in(0x3fe4fb41, 0xef7d2196, p0);
};

global.N_0x3feb770d8ed9047a = function (p0) {
	return _in(0x3feb770d, 0x8ed9047a, p0, _r, _ri);
};

global.N_0x3ffb15534067dcd4 = function (p0) {
	return _in(0x3ffb1553, 0x4067dcd4, p0, _r, _ri);
};

global.N_0x3ffcd7bba074cc80 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x3ffcd7bb, 0xa074cc80, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0x3ffe60dd8a936551 = function (p0, p1) {
	return _in(0x3ffe60dd, 0x8a936551, p0, p1, _r, _ri);
};

global.N_0x402e1a61d2587fcd = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x402e1a61, 0xd2587fcd, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x404514d231db27a0 = function (p0, p1) {
	return _in(0x404514d2, 0x31db27a0, p0, p1);
};

global.N_0x404527bc03da0e6c = function (p0) {
	return _in(0x404527bc, 0x03da0e6c, p0, _r, _ri);
};

global.N_0x4046493d2eeaca0e = function () {
	return _in(0x4046493d, 0x2eeaca0e);
};

global.N_0x405180b14da5a935 = function (p0, p1) {
	return _in(0x405180b1, 0x4da5a935, p0, p1);
};

global.N_0x405ddefb1f531b18 = function (p0, p1, p2, p3) {
	return _in(0x405ddefb, 0x1f531b18, p0, p1, p2, p3);
};

global.N_0x406808610220405b = function (p0) {
	return _in(0x40680861, 0x0220405b, p0);
};

global.N_0x406ccf555b04fad3 = function (p0, p1, p2) {
	return _in(0x406ccf55, 0x5b04fad3, p0, p1, p2);
};

global.N_0x40851bcc33acd9ab = function (p0) {
	return _in(0x40851bcc, 0x33acd9ab, p0, _r, _ri);
};

global.N_0x408d1149c5e39c1e = function (p0, p1) {
	return _in(0x408d1149, 0xc5e39c1e, p0, p1);
};

global.N_0x40914ccf2a1ab531 = function () {
	return _in(0x40914ccf, 0x2a1ab531, _r, _ri);
};

global.N_0x409fe0ca6a4d1d49 = function (p0, p1, p2) {
	return _in(0x409fe0ca, 0x6a4d1d49, p0, p1, p2, _r, _ri);
};

global.N_0x40ab73092c95b5f5 = function (p0, p1, p2, p3) {
	return _in(0x40ab7309, 0x2c95b5f5, p0, p1, p2, p3);
};

global.N_0x40c3524d4ed83554 = function (p0, p1) {
	return _in(0x40c3524d, 0x4ed83554, p0, p1);
};

global.N_0x40c9155af8bc13f3 = function (p0) {
	return _in(0x40c9155a, 0xf8bc13f3, p0, _r, _ri);
};

global.N_0x40ca665ab9d8d505 = function (p0, p1) {
	return _in(0x40ca665a, 0xb9d8d505, p0, p1);
};

global.N_0x40d72189f46d2e15 = function (p0, p1) {
	return _in(0x40d72189, 0xf46d2e15, p0, p1);
};

global.N_0x40f769d31a00d5a0 = function (p0, p1) {
	return _in(0x40f769d3, 0x1a00d5a0, p0, p1, _r, _ri);
};

global.N_0x411189e51b8020ba = function (p0, p1) {
	return _in(0x411189e5, 0x1b8020ba, p0, p1);
};

global.N_0x41323f4e0c4ae94b = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x41323f4e, 0x0c4ae94b, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x41365db586cd9e8e = function (p0, p1) {
	return _in(0x41365db5, 0x86cd9e8e, p0, p1);
};

global.N_0x413697ec260aabbf = function (p0, p1, p2) {
	return _in(0x413697ec, 0x260aabbf, p0, p1, p2);
};

global.N_0x4138ee36bc3dc0a7 = function (p0, p1) {
	return _in(0x4138ee36, 0xbc3dc0a7, p0, p1, _r, _ri);
};

global.N_0x41452e8a3b9c0c4b = function () {
	return _in(0x41452e8a, 0x3b9c0c4b, _r, _ri);
};

global.N_0x41503629d1139abc = function (p0, p1, p2, p3, p4) {
	return _in(0x41503629, 0xd1139abc, p0, p1, p2, p3, p4);
};

global.N_0x4154b7d8c75e5dcf = function (p0) {
	return _in(0x4154b7d8, 0xc75e5dcf, p0);
};

global.N_0x415fe28ed44bff14 = function () {
	return _in(0x415fe28e, 0xd44bff14);
};

global.N_0x4161648394262fdf = function (p0, p1, p2, p3) {
	return _in(0x41616483, 0x94262fdf, p0, p1, p2, p3);
};

global.N_0x4182c037aa1f0091 = function (p0, p1) {
	return _in(0x4182c037, 0xaa1f0091, p0, p1);
};

global.N_0x41afa5f228b0b6b0 = function () {
	return _in(0x41afa5f2, 0x28b0b6b0);
};

global.N_0x41c23a8e6b344867 = function (p0, p1) {
	return _in(0x41c23a8e, 0x6b344867, p0, p1);
};

global.N_0x41cda90ee3450921 = function (p0) {
	return _in(0x41cda90e, 0xe3450921, p0);
};

global.N_0x41d1331afad5a091 = function (p0, p1, p2) {
	return _in(0x41d1331a, 0xfad5a091, p0, p1, p2);
};

global.N_0x41e452a3c580d1a7 = function () {
	return _in(0x41e452a3, 0xc580d1a7);
};

global.N_0x41f0b254ddf71473 = function (p0) {
	return _in(0x41f0b254, 0xddf71473, p0);
};

global.N_0x41f88a85a579a61d = function (p0) {
	return _in(0x41f88a85, 0xa579a61d, p0);
};

global.N_0x422179c7f6ad9304 = function (p0, p1) {
	return _in(0x422179c7, 0xf6ad9304, p0, p1);
};

global.N_0x423c6b1f3786d28b = function (p0, p1) {
	return _in(0x423c6b1f, 0x3786d28b, p0, p1);
};

global.N_0x42404d57d621601a = function (p0) {
	return _in(0x42404d57, 0xd621601a, p0, _r, _ri);
};

global.N_0x42429c674b61238b = function (p0) {
	return _in(0x42429c67, 0x4b61238b, p0, _r, _ri);
};

global.N_0x4248ab2eeb3c75ad = function (p0, p1, p2) {
	return _in(0x4248ab2e, 0xeb3c75ad, p0, p1, p2);
};

global.N_0x424b17a7dc5c90bc = function (p0) {
	return _in(0x424b17a7, 0xdc5c90bc, p0, _r, _ri);
};

global.N_0x424ffcb9f0d2d4b5 = function (p0, p1) {
	return _in(0x424ffcb9, 0xf0d2d4b5, p0, p1);
};

global.N_0x42688e94e96fd9b4 = function (p0, p1, p2) {
	return _in(0x42688e94, 0xe96fd9b4, p0, p1, p2, _r, _ri);
};

global.N_0x427c919e9809e370 = function (p0, p1) {
	return _in(0x427c919e, 0x9809e370, p0, p1);
};

global.N_0x4285804fd65d8066 = function (p0, p1) {
	return _in(0x4285804f, 0xd65d8066, p0, p1);
};

global.N_0x42871327315edae8 = function (p0) {
	return _in(0x42871327, 0x315edae8, p0, _r, _ri);
};

global.N_0x4293b44a855f82cc = function (p0, p1, p2) {
	return _in(0x4293b44a, 0x855f82cc, p0, p1, p2, _r, _ri);
};

global.N_0x42a2f33a1942e865 = function (p0) {
	return _in(0x42a2f33a, 0x1942e865, p0, _r, _ri);
};

global.N_0x42a429cdfed6d99d = function (p0, p1, p2) {
	return _in(0x42a429cd, 0xfed6d99d, p0, p1, p2);
};

global.N_0x42cfd8fd8cc8dc69 = function (p0, p1) {
	return _in(0x42cfd8fd, 0x8cc8dc69, p0, p1);
};

global.N_0x42ed56b02e05d109 = function (p0, p1) {
	return _in(0x42ed56b0, 0x2e05d109, p0, p1);
};

global.N_0x43037abfe214a851 = function () {
	return _in(0x43037abf, 0xe214a851);
};

global.N_0x4308812a6e9ca62e = function (p0, p1) {
	return _in(0x4308812a, 0x6e9ca62e, p0, p1, _r, _ri);
};

global.N_0x430ee0a19bc5a287 = function (p0, p1, p2) {
	return _in(0x430ee0a1, 0x9bc5a287, p0, p1, p2, _r, _ri);
};

global.N_0x430f8319ae56c8a9 = function (p0, p1) {
	return _in(0x430f8319, 0xae56c8a9, p0, p1, _r, _rv);
};

global.N_0x431240a58484d5d0 = function (p0, p1) {
	return _in(0x431240a5, 0x8484d5d0, p0, p1);
};

global.N_0x4358bcf14c91761c = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x4358bcf1, 0x4c91761c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x437c08db4febe2bd = function (p0, p1, p2, p3) {
	return _in(0x437c08db, 0x4febe2bd, p0, p1, p2, p3);
};

global.N_0x43ab9d5a7d415478 = function () {
	return _in(0x43ab9d5a, 0x7d415478, _r);
};

global.N_0x43ad8fc02b429d33 = function (p0, p1, p2, p3) {
	return _in(0x43ad8fc0, 0x2b429d33, p0, p1, p2, p3, _r, _ri);
};

global.N_0x43c21623e42b821b = function (p0) {
	return _in(0x43c21623, 0xe42b821b, p0, _r, _ri);
};

global.N_0x43cf999205084b4b = function () {
	return _in(0x43cf9992, 0x05084b4b);
};

global.N_0x43e4da469541a9c9 = function (p0) {
	return _in(0x43e4da46, 0x9541a9c9, p0, _r, _ri);
};

global.N_0x43f35ddb2905d945 = function (p0, p1) {
	return _in(0x43f35ddb, 0x2905d945, p0, p1, _r, _ri);
};

global.N_0x43f50a7cd2482156 = function (p0, p1) {
	return _in(0x43f50a7c, 0xd2482156, p0, p1);
};

global.N_0x43f867ef5c463a53 = function (p0) {
	return _in(0x43f867ef, 0x5c463a53, p0);
};

global.N_0x43ff27fc1829c202 = function (p0, p1) {
	return _in(0x43ff27fc, 0x1829c202, p0, p1, _r, _ri);
};

global.N_0x44026e3db3ced602 = function (p0, p1) {
	return _in(0x44026e3d, 0xb3ced602, p0, p1, _r, _ri);
};

global.N_0x4402960666000e62 = function (p0, p1) {
	return _in(0x44029606, 0x66000e62, p0, p1, _r, _ri);
};

global.N_0x442b4347b6ec36e8 = function (entity, p1, p2) {
	return _in(0x442b4347, 0xb6ec36e8, entity, p1, p2);
};

global.N_0x443174c20b8b9e7f = function (p0, p1, p2) {
	return _in(0x443174c2, 0x0b8b9e7f, p0, p1, p2);
};

global.N_0x4440fee3efe78f54 = function (p0) {
	return _in(0x4440fee3, 0xefe78f54, p0);
};

global.N_0x444c910a5058e568 = function (p0, p1) {
	return _in(0x444c910a, 0x5058e568, p0, p1);
};

global.N_0x445d7d8ea66e373e = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) {
	return _in(0x445d7d8e, 0xa66e373e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15);
};

global.N_0x4465c3d1475bd3fd = function (p0) {
	return _in(0x4465c3d1, 0x475bd3fd, p0);
};

global.N_0x44813684f72b563c = function (p0, p1) {
	return _in(0x44813684, 0xf72b563c, p0, p1);
};

global.N_0x449995ea846d3fc2 = function (p0) {
	return _in(0x449995ea, 0x846d3fc2, p0);
};

global.N_0x44a5eef54f62e823 = function (p0) {
	return _in(0x44a5eef5, 0x4f62e823, p0, _r, _ri);
};

global.N_0x44b09a23d728045a = function (p0) {
	return _in(0x44b09a23, 0xd728045a, p0, _r, _ri);
};

global.N_0x44b3a36933ac009c = function (p0, p1, p2) {
	return _in(0x44b3a369, 0x33ac009c, p0, p1, p2, _r, _ri);
};

global.N_0x44c8f4908f1b2622 = function (p0, p1) {
	return _in(0x44c8f490, 0x8f1b2622, p0, p1, _r, _ri);
};

global.N_0x44d59ec597bbf348 = function (p0, p1) {
	return _in(0x44d59ec5, 0x97bbf348, p0, p1);
};

global.N_0x450080ddedb91258 = function (p0, p1) {
	return _in(0x450080dd, 0xedb91258, p0, p1);
};

global.N_0x450769c833d58844 = function () {
	return _in(0x450769c8, 0x33d58844, _r, _ri);
};

global.N_0x4538ee7c321590bc = function () {
	return _in(0x4538ee7c, 0x321590bc, _r, _ri);
};

global.N_0x453d16d41fc51d3e = function (p0) {
	return _in(0x453d16d4, 0x1fc51d3e, p0);
};

global.N_0x454ad4da6c41b5bd = function (p0) {
	return _in(0x454ad4da, 0x6c41b5bd, p0, _r, _ri);
};

global.N_0x455156f47dc6b78c = function (p0) {
	return _in(0x455156f4, 0x7dc6b78c, p0);
};

global.N_0x455ecca0715c507f = function () {
	return _in(0x455ecca0, 0x715c507f);
};

global.N_0x45853f4e17d847d5 = function (p0) {
	return _in(0x45853f4e, 0x17d847d5, p0, _r, _ri);
};

global.N_0x4592b8b9b0ef5f48 = function (p0) {
	return _in(0x4592b8b9, 0xb0ef5f48, p0);
};

global.N_0x45ab66d02b601fa7 = function (p0) {
	return _in(0x45ab66d0, 0x2b601fa7, p0, _r, _ri);
};

global.N_0x45bf3a6239a576b7 = function () {
	return _in(0x45bf3a62, 0x39a576b7, _r, _ri);
};

global.N_0x45d50415e4d885ff = function () {
	return _in(0x45d50415, 0xe4d885ff, _r);
};

global.N_0x45e57fdd531c9477 = function (p0, p1) {
	return _in(0x45e57fdd, 0x531c9477, p0, p1);
};

global.N_0x45ef176b532ca851 = function (p0, p1) {
	return _in(0x45ef176b, 0x532ca851, p0, p1);
};

global.N_0x45f13b7e0a15c880 = function (p0, p1, p2, p3, p4) {
	return _in(0x45f13b7e, 0x0a15c880, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x45fea6d5539bd474 = function (p0, p1) {
	return _in(0x45fea6d5, 0x539bd474, p0, p1);
};

global.N_0x4607d57c5f7d332a = function (p0) {
	return _in(0x4607d57c, 0x5f7d332a, p0, _r, _ri);
};

global.N_0x461fcbdeb4d06717 = function (p0, p1) {
	return _in(0x461fcbde, 0xb4d06717, p0, p1);
};

global.N_0x462c687bea254bd9 = function (p0) {
	return _in(0x462c687b, 0xea254bd9, p0, _r, _ri);
};

global.N_0x462ff2a432733a44 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x462ff2a4, 0x32733a44, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x463803429297117c = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x46380342, 0x9297117c, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x4642182a298187d0 = function (p0, p1, p2, p3, p4) {
	return _in(0x4642182a, 0x298187d0, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x4647842fe8f31c1e = function (p0, p1) {
	return _in(0x4647842f, 0xe8f31c1e, p0, p1);
};

global.N_0x4653a741d17f2cd0 = function () {
	return _in(0x4653a741, 0xd17f2cd0, _r, _ri);
};

global.N_0x465f04f68ad38197 = function (p0, p1, p2) {
	return _in(0x465f04f6, 0x8ad38197, p0, p1, p2, _r, _ri);
};

global.N_0x4662bfe01938d98d = function (p0, p1, p2, p3, p4) {
	return _in(0x4662bfe0, 0x1938d98d, p0, p1, p2, p3, p4);
};

global.N_0x4664d213a0ccaf40 = function () {
	return _in(0x4664d213, 0xa0ccaf40, _r, _ri);
};

global.N_0x46743bbfedbc859e = function (p0, p1, p2) {
	return _in(0x46743bbf, 0xedbc859e, p0, p1, p2);
};

global.N_0x4687e69d258bbe41 = function (p0) {
	return _in(0x4687e69d, 0x258bbe41, p0, _r, _ri);
};

global.N_0x46bf2a810679d6e6 = function (p0, p1) {
	return _in(0x46bf2a81, 0x0679d6e6, p0, p1, _r, _ri);
};

global.N_0x46cbcf0e98a4e156 = function (p0, p1) {
	return _in(0x46cbcf0e, 0x98a4e156, p0, p1);
};

global.N_0x46db71883ee9d5af = function (p0, p1, p2, p3) {
	return _in(0x46db7188, 0x3ee9d5af, p0, p1, p2, p3, _r, _ri);
};

global.N_0x46f032b8ddf46cde = function (p0) {
	return _in(0x46f032b8, 0xddf46cde, p0, _r, _ri);
};

global.N_0x46fa0ae18f4c7fa9 = function (p0) {
	return _in(0x46fa0ae1, 0x8f4c7fa9, p0, _r, _ri);
};

global.N_0x4707e9c23d8ca3fe = function (p0, p1) {
	return _in(0x4707e9c2, 0x3d8ca3fe, p0, p1);
};

global.N_0x4735e2a4bb83d9da = function (p0) {
	return _in(0x4735e2a4, 0xbb83d9da, p0, _r, _ri);
};

global.N_0x4752f68eb7f2d280 = function (p0, p1, p2) {
	return _in(0x4752f68e, 0xb7f2d280, p0, p1, p2);
};

global.N_0x4759cc730f947c81 = function () {
	return _in(0x4759cc73, 0x0f947c81);
};

global.N_0x476038b5a0734c10 = function (p0, p1) {
	return _in(0x476038b5, 0xa0734c10, p0, p1);
};

global.N_0x477122b8d05e7968 = function (p0, p1, p2) {
	return _in(0x477122b8, 0xd05e7968, p0, p1, p2, _r, _ri);
};

global.N_0x478f6b9920446ce2 = function (p0, p1) {
	return _in(0x478f6b99, 0x20446ce2, p0, p1);
};

global.N_0x4791899615d70fa2 = function (p0, p1, p2) {
	return _in(0x47918996, 0x15d70fa2, p0, p1, p2);
};

global.N_0x4820a6939d7cef28 = function (p0, p1) {
	return _in(0x4820a693, 0x9d7cef28, p0, p1);
};

global.N_0x48229ce0c7938237 = function (p0) {
	return _in(0x48229ce0, 0xc7938237, p0, _r, _ri);
};

global.N_0x4822a65d5af64e69 = function (p0) {
	return _in(0x4822a65d, 0x5af64e69, p0, _r, _ri);
};

global.N_0x4823f13a21f51964 = function (p0, p1) {
	return _in(0x4823f13a, 0x21f51964, p0, p1, _r, _ri);
};

global.N_0x482d17e45665da44 = function (p0, p1) {
	return _in(0x482d17e4, 0x5665da44, p0, p1);
};

global.N_0x483b8c542103ad72 = function () {
	return _in(0x483b8c54, 0x2103ad72, _r, _ri);
};

global.N_0x483d4e917b0d35a9 = function (p0, p1) {
	return _in(0x483d4e91, 0x7b0d35a9, p0, p1);
};

global.N_0x4845e7e7643a908c = function (p0, p1) {
	return _in(0x4845e7e7, 0x643a908c, p0, p1);
};

/**
 * Sets bit 0 in GtaThread+0x784
 */
global.N_0x4858148e3b8a75d0 = function () {
	return _in(0x4858148e, 0x3b8a75d0);
};

global.N_0x485b05ef05b9aee9 = function (p0, p1) {
	return _in(0x485b05ef, 0x05b9aee9, p0, p1);
};

global.N_0x48a88fc684c55fdc = function (p0) {
	return _in(0x48a88fc6, 0x84c55fdc, p0, _r, _ri);
};

global.N_0x48d82c83987e18e4 = function (p0) {
	return _in(0x48d82c83, 0x987e18e4, p0, _r, _ri);
};

global.N_0x48e4d50f87a96aa5 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x48e4d50f, 0x87a96aa5, p0, p1, p2, p3, p4, p5);
};

global.N_0x4907d0e4fb26ee65 = function (p0) {
	return _in(0x4907d0e4, 0xfb26ee65, p0);
};

global.N_0x4912dfe492db98cd = function (p0, p1) {
	return _in(0x4912dfe4, 0x92db98cd, p0, p1, _r, _ri);
};

global.N_0x491439aef410a2fc = function (p0) {
	return _in(0x491439ae, 0xf410a2fc, p0);
};

global.N_0x494a9874f17a7d50 = function (p0) {
	return _in(0x494a9874, 0xf17a7d50, p0, _r);
};

global.N_0x495a04caec263af8 = function (p0, p1) {
	return _in(0x495a04ca, 0xec263af8, p0, p1, _r, _ri);
};

global.N_0x495cfab2924237c7 = function (p0) {
	return _in(0x495cfab2, 0x924237c7, p0, _r, _ri);
};

global.N_0x49623bcfc3a3d829 = function (p0, p1) {
	return _in(0x49623bcf, 0xc3a3d829, p0, p1, _r, _ri);
};

global.N_0x497a18f8f88aa9d8 = function () {
	return _in(0x497a18f8, 0xf88aa9d8);
};

global.N_0x497a6539bb0e8787 = function (p0, p1, p2) {
	return _in(0x497a6539, 0xbb0e8787, p0, p1, p2);
};

global.N_0x498f2e77982d6945 = function (p0, p1) {
	return _in(0x498f2e77, 0x982d6945, p0, p1, _r, _ri);
};

global.N_0x49a8c2cd97815215 = function (p0) {
	return _in(0x49a8c2cd, 0x97815215, p0, _r, _ri);
};

global.N_0x49c44fe78a135a1d = function (p0) {
	return _in(0x49c44fe7, 0x8a135a1d, p0);
};

global.N_0x49c63fdf69744a27 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x49c63fdf, 0x69744a27, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x49cf17a564918e8d = function () {
	return _in(0x49cf17a5, 0x64918e8d);
};

global.N_0x49dadfc4cd808b0a = function (p0, p1, p2) {
	return _in(0x49dadfc4, 0xcd808b0a, p0, p1, p2);
};

global.N_0x49e40483948af062 = function (p0) {
	return _in(0x49e40483, 0x948af062, p0, _r, _ri);
};

global.N_0x49f1d143ade32656 = function (p0) {
	return _in(0x49f1d143, 0xade32656, p0, _r, _ri);
};

global.N_0x49f3241c28ebbfbc = function (p0) {
	return _in(0x49f3241c, 0x28ebbfbc, p0);
};

global.N_0x4a056257802dd3e5 = function (p0, p1) {
	return _in(0x4a056257, 0x802dd3e5, p0, p1);
};

global.N_0x4a3da74c3ccb1725 = function () {
	return _in(0x4a3da74c, 0x3ccb1725, _r, _ri);
};

global.N_0x4a47e38ea3d60939 = function (p0, p1) {
	return _in(0x4a47e38e, 0xa3d60939, p0, p1);
};

global.N_0x4a7d73989f52eb37 = function (p0, p1) {
	return _in(0x4a7d7398, 0x9f52eb37, p0, p1);
};

global.N_0x4a8fefc43fd8ac9b = function (p0, p1, p2) {
	return _in(0x4a8fefc4, 0x3fd8ac9b, p0, p1, p2);
};

global.N_0x4a98e228a936dbcc = function (p0) {
	return _in(0x4a98e228, 0xa936dbcc, p0, _r, _ri);
};

global.N_0x4aa5ea1edfb25786 = function (p0) {
	return _in(0x4aa5ea1e, 0xdfb25786, p0);
};

global.N_0x4ac38dfd286dad14 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x4ac38dfd, 0x286dad14, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x4ad019591e94c064 = function (p0, p1, p2, p3) {
	return _in(0x4ad01959, 0x1e94c064, p0, p1, p2, p3, _r, _ri);
};

global.N_0x4ae07eba3462c5d5 = function (p0, p1) {
	return _in(0x4ae07eba, 0x3462c5d5, p0, p1);
};

/**
 * BG_*
 * @param scriptIndex :
 * @param p1 :
 */
global.N_0x4ae1dff337a86fde = function (scriptIndex, p1) {
	return _in(0x4ae1dff3, 0x37a86fde, scriptIndex, _ts(p1), _r);
};

global.N_0x4aef1fb5b9011d75 = function (p0) {
	return _in(0x4aef1fb5, 0xb9011d75, p0, _r, _ri);
};

global.N_0x4afc7288c77238b3 = function (p0) {
	return _in(0x4afc7288, 0xc77238b3, p0, _r, _ri);
};

global.N_0x4b0501a468b749f8 = function () {
	return _in(0x4b0501a4, 0x68b749f8);
};

global.N_0x4b05b97ba46f419d = function (p0) {
	return _in(0x4b05b97b, 0xa46f419d, p0);
};

global.N_0x4b101dbcc9482f2d = function (p0) {
	return _in(0x4b101dbc, 0xc9482f2d, p0, _r, _ri);
};

global.N_0x4b19f171450e0d4f = function (p0) {
	return _in(0x4b19f171, 0x450e0d4f, p0, _r, _ri);
};

global.N_0x4b2b1a891d437ca7 = function (p0) {
	return _in(0x4b2b1a89, 0x1d437ca7, p0);
};

global.N_0x4b4038796f0d6566 = function (p0) {
	return _in(0x4b403879, 0x6f0d6566, p0, _r, _ri);
};

global.N_0x4b436bac8cbe9b07 = function (p0, p1, p2) {
	return _in(0x4b436bac, 0x8cbe9b07, p0, p1, p2);
};

global.N_0x4b52bf96e225d230 = function (p0) {
	return _in(0x4b52bf96, 0xe225d230, p0);
};

global.N_0x4b6c9a43f7d9109b = function (p0, p1) {
	return _in(0x4b6c9a43, 0xf7d9109b, p0, p1);
};

global.N_0x4b85b3cf91972222 = function (p0) {
	return _in(0x4b85b3cf, 0x91972222, p0, _r, _ri);
};

global.N_0x4b85b3cf9197aedf = function (p0) {
	return _in(0x4b85b3cf, 0x9197aedf, p0);
};

global.N_0x4b9668db91dc39b8 = function (p0) {
	return _in(0x4b9668db, 0x91dc39b8, p0);
};

global.N_0x4ba972d0e5ad8122 = function (p0, p1) {
	return _in(0x4ba972d0, 0xe5ad8122, p0, p1);
};

global.N_0x4bd66b4e3427689b = function (p0) {
	return _in(0x4bd66b4e, 0x3427689b, p0);
};

global.N_0x4bdebea5702b97a9 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x4bdebea5, 0x702b97a9, p0, p1, p2, p3, p4, p5);
};

global.N_0x4be3ec91c01f0fe8 = function () {
	return _in(0x4be3ec91, 0xc01f0fe8);
};

global.N_0x4be6c13a45cca8ec = function (p0) {
	return _in(0x4be6c13a, 0x45cca8ec, p0, _r, _ri);
};

global.N_0x4beb42aebca732e9 = function () {
	return _in(0x4beb42ae, 0xbca732e9, _r, _ri);
};

global.N_0x4bf66f8878f67663 = function (p0) {
	return _in(0x4bf66f88, 0x78f67663, p0, _r, _ri);
};

global.N_0x4c05b42a8d937796 = function () {
	return _in(0x4c05b42a, 0x8d937796);
};

global.N_0x4c11ccacb7c02b6e = function (p0) {
	return _in(0x4c11ccac, 0xb7c02b6e, p0, _r, _ri);
};

global.N_0x4c39c95ae5db1329 = function (p0, p1, p2) {
	return _in(0x4c39c95a, 0xe5db1329, p0, p1, p2, _r, _ri);
};

global.N_0x4c543d5dfcd2dafd = function (p0, p1) {
	return _in(0x4c543d5d, 0xfcd2dafd, p0, p1, _r, _ri);
};

global.N_0x4c57f27d1554e6b0 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x4c57f27d, 0x1554e6b0, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x4c60c333f9cca2b6 = function (p0, p1) {
	return _in(0x4c60c333, 0xf9cca2b6, p0, p1);
};

global.N_0x4c8b59171957bcf7 = function (p0) {
	return _in(0x4c8b5917, 0x1957bcf7, p0, _r, _ri);
};

global.N_0x4c9f782180712742 = function (p0, p1) {
	return _in(0x4c9f7821, 0x80712742, p0, p1, _r, _ri);
};

global.N_0x4cabe596d632e4b0 = function (p0) {
	return _in(0x4cabe596, 0xd632e4b0, p0, _r, _ri);
};

global.N_0x4cc5f2fc1332577f = function (p0) {
	return _in(0x4cc5f2fc, 0x1332577f, p0);
};

global.N_0x4cdffe3189ebdbd0 = function (p0) {
	return _in(0x4cdffe31, 0x89ebdbd0, p0, _r, _ri);
};

global.N_0x4cfa2b7fae115ecb = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x4cfa2b7f, 0xae115ecb, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x4d0d2e3d8bc000eb = function (p0, p1, p2) {
	return _in(0x4d0d2e3d, 0x8bc000eb, p0, p1, p2, _r, _ri);
};

global.N_0x4d107406667423be = function (p0, p1) {
	return _in(0x4d107406, 0x667423be, p0, p1);
};

global.N_0x4d14af567fc02885 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x4d14af56, 0x7fc02885, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x4d15e49764cb328a = function (p0, p1) {
	return _in(0x4d15e497, 0x64cb328a, p0, p1);
};

global.N_0x4d1699543b1c023c = function (p0, p1) {
	return _in(0x4d169954, 0x3b1c023c, p0, p1);
};

global.N_0x4d2f46d1b28d90fb = function (p0, p1) {
	return _in(0x4d2f46d1, 0xb28d90fb, p0, p1);
};

global.N_0x4d40e7d749bc6e6d = function (p0) {
	return _in(0x4d40e7d7, 0x49bc6e6d, p0);
};

global.N_0x4d5c9cc7e7e23e09 = function () {
	return _in(0x4d5c9cc7, 0xe7e23e09);
};

global.N_0x4d8611dfe1126478 = function (p0) {
	return _in(0x4d8611df, 0xe1126478, p0, _r, _ri);
};

global.N_0x4dac398297981b87 = function (p0) {
	return _in(0x4dac3982, 0x97981b87, p0, _r, _ri);
};

global.N_0x4db9d03ac4e1fa84 = function (p0, p1, p2, p3) {
	return _in(0x4db9d03a, 0xc4e1fa84, p0, p1, p2, p3);
};

global.N_0x4dbc4873707e8fd6 = function (p0, p1, p2, p3) {
	return _in(0x4dbc4873, 0x707e8fd6, p0, p1, p2, p3);
};

global.N_0x4e42ca5bcd45444a = function () {
	return _in(0x4e42ca5b, 0xcd45444a, _r, _ri);
};

global.N_0x4e4507cc5e4db869 = function (p0, p1, p2, p3) {
	return _in(0x4e4507cc, 0x5e4db869, p0, p1, p2, p3, _r, _ri);
};

global.N_0x4e463a3cdefffe96 = function () {
	return _in(0x4e463a3c, 0xdefffe96);
};

global.N_0x4e68c7ef706df35d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x4e68c7ef, 0x706df35d, p0, p1, p2, p3, p4, p5);
};

global.N_0x4e76cb57222a00e5 = function (p0) {
	return _in(0x4e76cb57, 0x222a00e5, p0, _r, _ri);
};

global.N_0x4e806a395d43a458 = function (p0) {
	return _in(0x4e806a39, 0x5d43a458, p0);
};

global.N_0x4e88a65968a55c78 = function (p0, p1) {
	return _in(0x4e88a659, 0x68a55c78, p0, p1, _r, _ri);
};

global.N_0x4ea69188fbce6a7d = function (p0, p1) {
	return _in(0x4ea69188, 0xfbce6a7d, p0, p1);
};

global.N_0x4ec4ea2f72b36358 = function (p0, p1) {
	return _in(0x4ec4ea2f, 0x72b36358, p0, p1);
};

global.N_0x4ec8be63b8a5d4ef = function (p0, p1) {
	return _in(0x4ec8be63, 0xb8a5d4ef, p0, p1);
};

global.N_0x4eccc2815ca79ae2 = function (p0) {
	return _in(0x4eccc281, 0x5ca79ae2, p0, _r, _ri);
};

global.N_0x4eddd9e9ca5af985 = function (p0) {
	return _in(0x4eddd9e9, 0xca5af985, p0, _r, _ri);
};

global.N_0x4ef23e04a0c8ff51 = function (p0, p1) {
	return _in(0x4ef23e04, 0xa0c8ff51, p0, p1, _r, _ri);
};

global.N_0x4efc1f8ff1ad94de = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x4efc1f8f, 0xf1ad94de, p0, p1, p2, p3, p4, p5);
};

global.N_0x4f0d2256aae94eda = function (p0) {
	return _in(0x4f0d2256, 0xaae94eda, p0);
};

global.N_0x4f27603e44a8e4c0 = function (p0, p1, p2) {
	return _in(0x4f27603e, 0x44a8e4c0, p0, p1, p2);
};

global.N_0x4f2d5fa23db992de = function () {
	return _in(0x4f2d5fa2, 0x3db992de);
};

global.N_0x4f57397388e1dff8 = function () {
	return _in(0x4f573973, 0x88e1dff8);
};

global.N_0x4f5ebe70081e5a20 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x4f5ebe70, 0x081e5a20, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0x4f76e3676583d951 = function (p0) {
	return _in(0x4f76e367, 0x6583d951, p0, _r, _ri);
};

global.N_0x4f806a6cfed89468 = function (p0, p1) {
	return _in(0x4f806a6c, 0xfed89468, p0, p1);
};

global.N_0x4f81ead1de8fa19b = function (p0) {
	return _in(0x4f81ead1, 0xde8fa19b, p0);
};

global.N_0x4f89dad4156ba145 = function (p0) {
	return _in(0x4f89dad4, 0x156ba145, p0, _r, _ri);
};

global.N_0x4f9e3ed7617123ac = function (p0) {
	return _in(0x4f9e3ed7, 0x617123ac, p0, _r, _ri);
};

global.N_0x4fb5869e2b37fc00 = function () {
	return _in(0x4fb5869e, 0x2b37fc00);
};

global.N_0x4fb67d172c4476f3 = function (p0, p1, p2, p3) {
	return _in(0x4fb67d17, 0x2c4476f3, p0, p1, p2, p3);
};

global.N_0x4fcbcc0584cd08e9 = function (p0) {
	return _in(0x4fcbcc05, 0x84cd08e9, p0);
};

global.N_0x4fd80c3dd84b817b = function (p0) {
	return _in(0x4fd80c3d, 0xd84b817b, p0);
};

global.N_0x4ff3c2b4e6a196c1 = function (p0, p1, p2) {
	return _in(0x4ff3c2b4, 0xe6a196c1, p0, p1, p2, _r, _ri);
};

global.N_0x5006c36652d6ec56 = function (p0, p1) {
	return _in(0x5006c366, 0x52d6ec56, p0, p1);
};

global.N_0x502e1591a504f843 = function (p0, p1) {
	return _in(0x502e1591, 0xa504f843, p0, p1, _r, _ri);
};

global.N_0x503703ec1781b7d6 = function (p0, p1, p2) {
	return _in(0x503703ec, 0x1781b7d6, p0, p1, p2);
};

global.N_0x503941f65dba24ec = function (p0) {
	return _in(0x503941f6, 0x5dba24ec, p0);
};

global.N_0x5060fa977cea4455 = function () {
	return _in(0x5060fa97, 0x7cea4455, _r, _ri);
};

global.N_0x5064db5083c29921 = function (p0) {
	return _in(0x5064db50, 0x83c29921, p0, _r, _ri);
};

global.N_0x506ce71fb6e8cf5e = function (p0, p1) {
	return _in(0x506ce71f, 0xb6e8cf5e, p0, p1);
};

global.N_0x506f1de1bfc75304 = function (p0) {
	return _in(0x506f1de1, 0xbfc75304, p0, _r, _ri);
};

global.N_0x508f5053e3f6f0c4 = function (p0, p1, p2, p3, p4) {
	return _in(0x508f5053, 0xe3f6f0c4, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x50aa09a0da64e73c = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x50aa09a0, 0xda64e73c, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x50b72a754ee64a71 = function (p0) {
	return _in(0x50b72a75, 0x4ee64a71, p0);
};

global.N_0x50c14328119e1dd1 = function (p0, p1) {
	return _in(0x50c14328, 0x119e1dd1, p0, p1);
};

global.N_0x50c803a4cd5932c5 = function (p0) {
	return _in(0x50c803a4, 0xcd5932c5, p0);
};

global.N_0x50f124e6ef188b22 = function (p0) {
	return _in(0x50f124e6, 0xef188b22, p0, _r, _ri);
};

global.N_0x51021d36f62aaa83 = function () {
	return _in(0x51021d36, 0xf62aaa83, _r, _ri);
};

global.N_0x5102307ce88798eb = function (p0) {
	return _in(0x5102307c, 0xe88798eb, p0, _r, _ri);
};

global.N_0x51139d8c17b16fbc = function (p0) {
	return _in(0x51139d8c, 0x17b16fbc, p0, _r, _ri);
};

global.N_0x511f1a683387c7e2 = function (ped) {
	return _in(0x511f1a68, 0x3387c7e2, ped, _r, _ri);
};

global.N_0x5133cf81924f1129 = function () {
	return _in(0x5133cf81, 0x924f1129, _r, _ri);
};

global.N_0x51345ae20f22c261 = function (p0, p1, p2, p3, p4) {
	return _in(0x51345ae2, 0x0f22c261, p0, p1, p2, p3, p4);
};

global.N_0x5136b284b67b35c7 = function (p0) {
	return _in(0x5136b284, 0xb67b35c7, p0, _r, _ri);
};

global.N_0x513f8aa5bf2f17cf = function (p0, p1, p2, p3, p4) {
	return _in(0x513f8aa5, 0xbf2f17cf, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x5170dda6d63acaaa = function (p0) {
	return _in(0x5170dda6, 0xd63acaaa, p0, _r, _ri);
};

global.N_0x517d01bf27b682d1 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x517d01bf, 0x27b682d1, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x51951de06c0d1c40 = function (p0, p1) {
	return _in(0x51951de0, 0x6c0d1c40, p0, p1);
};

global.N_0x5199405eabfbd7f0 = function (p0) {
	return _in(0x5199405e, 0xabfbd7f0, p0);
};

global.N_0x51bea356b1c60225 = function (p0, p1) {
	return _in(0x51bea356, 0xb1c60225, p0, p1, _r, _ri);
};

global.N_0x51c5ef47086aa0d7 = function () {
	return _in(0x51c5ef47, 0x086aa0d7, _r, _ri);
};

global.N_0x51c7694e140fae43 = function (p0) {
	return _in(0x51c7694e, 0x140fae43, p0, _r, _ri);
};

global.N_0x51d99497abf3f451 = function (p0) {
	return _in(0x51d99497, 0xabf3f451, p0);
};

global.N_0x51de09a2196bd951 = function (p0, p1) {
	return _in(0x51de09a2, 0x196bd951, p0, p1);
};

global.N_0x51e52c9687fcdeec = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x51e52c96, 0x87fcdeec, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x51ec204a6e5b5a1a = function (p0, p1) {
	return _in(0x51ec204a, 0x6e5b5a1a, p0, p1);
};

global.N_0x51f33dbc1a41cbfd = function () {
	return _in(0x51f33dbc, 0x1a41cbfd, _r, _ri);
};

global.N_0x5203038ff8bae577 = function (p0, p1, p2) {
	return _in(0x5203038f, 0xf8bae577, p0, p1, p2, _r, _ri);
};

global.N_0x5217b7b6db78e1f3 = function (p0, p1, p2, p3, p4) {
	return _in(0x5217b7b6, 0xdb78e1f3, p0, p1, p2, p3, p4);
};

global.N_0x52250b92ea70be3d = function (p0) {
	return _in(0x52250b92, 0xea70be3d, p0, _r, _ri);
};

global.N_0x522f74636df10201 = function (p0, p1) {
	return _in(0x522f7463, 0x6df10201, p0, p1);
};

global.N_0x522fa3f490e2f7ac = function (p0, p1, p2) {
	return _in(0x522fa3f4, 0x90e2f7ac, p0, p1, p2);
};

global.N_0x5230bf34eb0ec645 = function (p0) {
	return _in(0x5230bf34, 0xeb0ec645, p0);
};

global.N_0x5230d3f6ee56cfe6 = function (p0, p1) {
	return _in(0x5230d3f6, 0xee56cfe6, p0, p1);
};

/**
 * SET_PED_CAN_*
 * @param ped :
 * @param toggle :
 */
global.N_0x5240864e847c691c = function (ped, toggle) {
	return _in(0x5240864e, 0x847c691c, ped, toggle);
};

global.N_0x52572b331e693aed = function (p0, p1, p2) {
	return _in(0x52572b33, 0x1e693aed, p0, p1, p2);
};

global.N_0x527b97c203bb8606 = function (p0) {
	return _in(0x527b97c2, 0x03bb8606, p0, _r, _ri);
};

global.N_0x5288b7f0690f7c1f = function (p0) {
	return _in(0x5288b7f0, 0x690f7c1f, p0, _r, _ri);
};

global.N_0x529b9ccd0972af4d = function (p0, p1) {
	return _in(0x529b9ccd, 0x0972af4d, p0, p1);
};

global.N_0x529b9ccd0972af4e = function (p0, p1) {
	return _in(0x529b9ccd, 0x0972af4e, p0, p1);
};

global.N_0x52a24d8a1da89658 = function (p0, p1, p2) {
	return _in(0x52a24d8a, 0x1da89658, p0, p1, p2);
};

global.N_0x52bde32f21ba3b6d = function (p0, p1, p2, p3) {
	return _in(0x52bde32f, 0x21ba3b6d, p0, p1, p2, p3, _r, _ri);
};

global.N_0x52fa31db8f3ad25d = function (p0) {
	return _in(0x52fa31db, 0x8f3ad25d, p0);
};

global.N_0x52fc26d2d2fc2987 = function (p0, p1, p2) {
	return _in(0x52fc26d2, 0xd2fc2987, p0, p1, p2, _r, _ri);
};

global.N_0x53187e563f938e76 = function (p0) {
	return _in(0x53187e56, 0x3f938e76, p0, _r, _ri);
};

global.N_0x531a78d6bf27014b = function (p0) {
	return _in(0x531a78d6, 0xbf27014b, p0);
};

global.N_0x532c5fddb986ee5c = function (p0, p1, p2) {
	return _in(0x532c5fdd, 0xb986ee5c, p0, p1, p2, _r, _ri);
};

global.N_0x5337b721c51883a9 = function (p0, p1, p2) {
	return _in(0x5337b721, 0xc51883a9, p0, p1, p2);
};

global.N_0x535a66aad2bf68f9 = function (p0, p1) {
	return _in(0x535a66aa, 0xd2bf68f9, p0, p1);
};

global.N_0x535ed4605f89ab6e = function (p0, p1) {
	return _in(0x535ed460, 0x5f89ab6e, p0, p1);
};

global.N_0x536b6025e94ac48f = function (p0, p1, p2, p3) {
	return _in(0x536b6025, 0xe94ac48f, p0, p1, p2, p3);
};

global.N_0x53764309c4618087 = function (p0) {
	return _in(0x53764309, 0xc4618087, p0, _r, _ri);
};

global.N_0x53784cea0159439b = function (p0) {
	return _in(0x53784cea, 0x0159439b, p0, _r, _ri);
};

global.N_0x537ce992bd2d7bcb = function (p0) {
	return _in(0x537ce992, 0xbd2d7bcb, p0, _r, _ri);
};

global.N_0x53a94294fddcf98c = function (p0, p1) {
	return _in(0x53a94294, 0xfddcf98c, p0, p1, _r, _ri);
};

global.N_0x53ba7d96b9a421d9 = function (p0, p1) {
	return _in(0x53ba7d96, 0xb9a421d9, p0, p1);
};

global.N_0x53cb3970ba02e3cc = function (p0) {
	return _in(0x53cb3970, 0xba02e3cc, p0);
};

global.N_0x53ce46c01a089da1 = function (p0, p1) {
	return _in(0x53ce46c0, 0x1a089da1, p0, p1);
};

global.N_0x53d05d60e5f5b40c = function (p0, p1, p2, p3) {
	return _in(0x53d05d60, 0xe5f5b40c, p0, p1, p2, p3);
};

global.N_0x53e4d0c079ca6855 = function (p0) {
	return _in(0x53e4d0c0, 0x79ca6855, p0, _r, _ri);
};

global.N_0x5407b7288d0478b7 = function (p0, p1) {
	return _in(0x5407b728, 0x8d0478b7, p0, p1, _r, _ri);
};

global.N_0x541b8576615c33de = function (p0, p1, p2, p3) {
	return _in(0x541b8576, 0x615c33de, p0, p1, p2, p3, _r, _ri);
};

global.N_0x541e5b41dca45828 = function (p0, p1, p2) {
	return _in(0x541e5b41, 0xdca45828, p0, p1, p2);
};

global.N_0x54310aab97b92816 = function (p0) {
	return _in(0x54310aab, 0x97b92816, p0, _r, _ri);
};

global.N_0x543dfe14be720027 = function (p0, p1, p2) {
	return _in(0x543dfe14, 0xbe720027, p0, p1, p2);
};

global.N_0x545bf19f86e80f11 = function (p0, p1, p2) {
	return _in(0x545bf19f, 0x86e80f11, p0, p1, p2);
};

global.N_0x5461c821d00fe15a = function (p0, p1) {
	return _in(0x5461c821, 0xd00fe15a, p0, p1, _r, _ri);
};

global.N_0x5463c962bc7777c3 = function (p0, p1, p2, p3, p4) {
	return _in(0x5463c962, 0xbc7777c3, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x54ae4fdeefeab77e = function () {
	return _in(0x54ae4fde, 0xefeab77e, _r, _ri);
};

global.N_0x54b187f111d9c6f8 = function (p0, p1) {
	return _in(0x54b187f1, 0x11d9c6f8, p0, p1, _r, _ri);
};

global.N_0x54cbdd6e1b4cb4df = function (p0) {
	return _in(0x54cbdd6e, 0x1b4cb4df, p0);
};

global.N_0x54ec7b6bc72bad69 = function () {
	return _in(0x54ec7b6b, 0xc72bad69);
};

global.N_0x54f4d7b6670fbb5a = function (p0, p1, p2, p3, p4) {
	return _in(0x54f4d7b6, 0x670fbb5a, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x550cb89dd7f4fa3d = function (p0, p1) {
	return _in(0x550cb89d, 0xd7f4fa3d, p0, p1, _r, _ri);
};

global.N_0x55123d5a7d9d3c42 = function (p0) {
	return _in(0x55123d5a, 0x7d9d3c42, _fv(p0));
};

global.N_0x55285f885f662169 = function () {
	return _in(0x55285f88, 0x5f662169);
};

global.N_0x553d67295ddd2309 = function (p0) {
	return _in(0x553d6729, 0x5ddd2309, p0);
};

global.N_0x554d9d53f696d002 = function (p0, p1, p2, p3) {
	return _in(0x554d9d53, 0xf696d002, p0, p1, p2, p3, _r, _ri);
};

global.N_0x55546004a244302a = function (p0, p1) {
	return _in(0x55546004, 0xa244302a, p0, p1);
};

global.N_0x5594afe9de0c01b7 = function (p0) {
	return _in(0x5594afe9, 0xde0c01b7, p0, _r, _ri);
};

global.N_0x559a6f8c5133b4ee = function (p0, p1) {
	return _in(0x559a6f8c, 0x5133b4ee, p0, p1, _r, _ri);
};

/**
 * BG_*
 * @param scriptIndex :
 * @param p1 :
 */
global.N_0x55c40b7592bad213 = function (scriptIndex, p1) {
	return _in(0x55c40b75, 0x92bad213, scriptIndex, _ts(p1), _r, _ri);
};

global.N_0x55cd5fddd4335c1e = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x55cd5fdd, 0xd4335c1e, p0, p1, p2, p3, p4, p5);
};

global.N_0x55f37f5f3f2475e1 = function () {
	return _in(0x55f37f5f, 0x3f2475e1);
};

global.N_0x55f618f68ab854d3 = function (p0) {
	return _in(0x55f618f6, 0x8ab854d3, p0, _r, _ri);
};

global.N_0x5639fbea922788da = function (p0) {
	return _in(0x5639fbea, 0x922788da, p0);
};

global.N_0x563fcb6620523917 = function (p0, p1) {
	return _in(0x563fcb66, 0x20523917, p0, p1);
};

global.N_0x564552c6af1eeab1 = function () {
	return _in(0x564552c6, 0xaf1eeab1);
};

global.N_0x564837d4a9ede296 = function (p0) {
	return _in(0x564837d4, 0xa9ede296, p0);
};

global.N_0x5651516d947abc53 = function () {
	return _in(0x5651516d, 0x947abc53);
};

global.N_0x5653ab26c82938cf = function (p0, p1, p2) {
	return _in(0x5653ab26, 0xc82938cf, p0, p1, p2);
};

global.N_0x5659d87be674ab17 = function (p0) {
	return _in(0x5659d87b, 0xe674ab17, p0, _r, _ri);
};

global.N_0x565eaa726b2ce3b7 = function (p0) {
	return _in(0x565eaa72, 0x6b2ce3b7, p0);
};

global.N_0x566ceb0542ef5ecf = function (p0, p1) {
	return _in(0x566ceb05, 0x42ef5ecf, p0, p1, _r, _ri);
};

global.N_0x569abc36e28ddeaa = function () {
	return _in(0x569abc36, 0xe28ddeaa);
};

global.N_0x569f1e1237508deb = function (p0) {
	return _in(0x569f1e12, 0x37508deb, p0, _r, _ri);
};

global.N_0x56a786e87ff53478 = function (p0) {
	return _in(0x56a786e8, 0x7ff53478, p0);
};

global.N_0x56b3410626a473e7 = function (p0) {
	return _in(0x56b34106, 0x26a473e7, p0);
};

global.N_0x56cb3b4305a4f7ce = function (p0, p1, p2, p3) {
	return _in(0x56cb3b43, 0x05a4f7ce, p0, p1, p2, p3);
};

global.N_0x56e0735d6273b227 = function (p0, p1) {
	return _in(0x56e0735d, 0x6273b227, p0, p1);
};

global.N_0x56e4bad93d33453c = function (p0, p1) {
	return _in(0x56e4bad9, 0x3d33453c, p0, p1, _r, _ri);
};

global.N_0x56e58d4d118fb45e = function (p0, p1) {
	return _in(0x56e58d4d, 0x118fb45e, p0, p1, _r, _ri);
};

global.N_0x56e9c26cd29d1ed6 = function (p0, p1) {
	return _in(0x56e9c26c, 0xd29d1ed6, p0, p1);
};

global.N_0x5708edd71b50c008 = function (p0, p1, p2) {
	return _in(0x5708edd7, 0x1b50c008, p0, p1, p2);
};

global.N_0x570a13a4ca2799bb = function (p0, p1) {
	return _in(0x570a13a4, 0xca2799bb, p0, p1);
};

global.N_0x5737199af2dc609f = function (p0, p1, p2) {
	return _in(0x5737199a, 0xf2dc609f, p0, p1, p2);
};

global.N_0x5744562e973e33cd = function (p0, p1, p2, p3, p4) {
	return _in(0x5744562e, 0x973e33cd, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x5758b1ee0c3fd4ac = function (p0, p1) {
	return _in(0x5758b1ee, 0x0c3fd4ac, p0, p1);
};

global.N_0x5759160ac17c13ce = function (p0, p1) {
	return _in(0x5759160a, 0xc17c13ce, p0, p1);
};

global.N_0x57639fd876b68a91 = function (p0) {
	return _in(0x57639fd8, 0x76b68a91, p0, _r, _ri);
};

global.N_0x57779b55b83e2bea = function (p0) {
	return _in(0x57779b55, 0xb83e2bea, p0, _r, _ri);
};

global.N_0x577c60ba06d0ea64 = function (p0) {
	return _in(0x577c60ba, 0x06d0ea64, p0, _r, _ri);
};

global.N_0x578907f59ba01b6d = function (p0) {
	return _in(0x578907f5, 0x9ba01b6d, p0, _r, _ri);
};

global.N_0x578e2fa64e847c60 = function (popZone, p1) {
	return _in(0x578e2fa6, 0x4e847c60, popZone, p1);
};

global.N_0x57a197ad83f66bbf = function (p0) {
	return _in(0x57a197ad, 0x83f66bbf, p0);
};

global.N_0x57c242543b7b8fb9 = function (p0, p1) {
	return _in(0x57c24254, 0x3b7b8fb9, p0, p1);
};

global.N_0x57c6525034e76eb0 = function () {
	return _in(0x57c65250, 0x34e76eb0);
};

global.N_0x57d9991dc1334151 = function (p0) {
	return _in(0x57d9991d, 0xc1334151, p0, _r, _ri);
};

global.N_0x57e798b54c45ee1a = function (p0) {
	return _in(0x57e798b5, 0x4c45ee1a, p0, _r, _ri);
};

global.N_0x57e798b56c45ee15 = function (p0) {
	return _in(0x57e798b5, 0x6c45ee15, p0, _r, _ri);
};

global.N_0x57e798b57c45ee16 = function (p0) {
	return _in(0x57e798b5, 0x7c45ee16, p0, _r, _ri);
};

global.N_0x57f35552e771be9d = function (p0, p1) {
	return _in(0x57f35552, 0xe771be9d, p0, p1);
};

global.N_0x5801be2df2af07ec = function (p0) {
	return _in(0x5801be2d, 0xf2af07ec, p0);
};

global.N_0x5809dbca0a37c82b = function (p0) {
	return _in(0x5809dbca, 0x0a37c82b, p0, _r, _ri);
};

global.N_0x580d71dfe0088e34 = function (p0, p1) {
	return _in(0x580d71df, 0xe0088e34, p0, p1, _r, _ri);
};

global.N_0x580f34c726387226 = function (p0, p1) {
	return _in(0x580f34c7, 0x26387226, p0, p1, _r, _ri);
};

global.N_0x58125b691f6827d5 = function (p0) {
	return _in(0x58125b69, 0x1f6827d5, p0);
};

global.N_0x581edbe56e8d62c9 = function (p0, p1) {
	return _in(0x581edbe5, 0x6e8d62c9, p0, p1);
};

global.N_0x5826efd6d73c4de5 = function (p0) {
	return _in(0x5826efd6, 0xd73c4de5, p0);
};

global.N_0x5827be85a87b073d = function (p0) {
	return _in(0x5827be85, 0xa87b073d, p0);
};

global.N_0x582f73acfe969571 = function (p0, p1, p2) {
	return _in(0x582f73ac, 0xfe969571, p0, p1, p2, _r, _ri);
};

global.N_0x583ae9af9cee0958 = function (p0, p1, p2, p3) {
	return _in(0x583ae9af, 0x9cee0958, p0, p1, p2, p3, _r, _ri);
};

global.N_0x58425fca3d3a2d15 = function (p0) {
	return _in(0x58425fca, 0x3d3a2d15, p0, _r, _ri);
};

global.N_0x58521e6dcde97d74 = function (p0, p1, p2) {
	return _in(0x58521e6d, 0xcde97d74, p0, p1, p2);
};

global.N_0x585ce159db46fadb = function (p0, p1) {
	return _in(0x585ce159, 0xdb46fadb, p0, p1);
};

global.N_0x58ac173a55d9d7b4 = function (p0, p1, p2) {
	return _in(0x58ac173a, 0x55d9d7b4, p0, p1, p2);
};

global.N_0x58cc181719256197 = function (p0, p1, p2) {
	return _in(0x58cc1817, 0x19256197, p0, p1, p2, _r, _ri);
};

global.N_0x58d32261ae0f0843 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x58d32261, 0xae0f0843, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0x58d378af2c8765b7 = function (p0) {
	return _in(0x58d378af, 0x2c8765b7, p0, _r, _ri);
};

global.N_0x58de624fa7fb0e7f = function (p0) {
	return _in(0x58de624f, 0xa7fb0e7f, p0, _r, _ri);
};

global.N_0x58e0b01d45ca7357 = function (p0) {
	return _in(0x58e0b01d, 0x45ca7357, p0);
};

global.N_0x58f2244c1286d09a = function (p0, p1) {
	return _in(0x58f2244c, 0x1286d09a, p0, p1, _r, _ri);
};

global.N_0x58f7db5bd8fa2288 = function (p0) {
	return _in(0x58f7db5b, 0xd8fa2288, p0);
};

global.N_0x59174f1afe095b5a = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x59174f1a, 0xfe095b5a, p0, p1, p2, p3, p4, p5);
};

global.N_0x592f58bc4d2a2cf3 = function (p0, p1) {
	return _in(0x592f58bc, 0x4d2a2cf3, p0, p1, _r, _ri);
};

global.N_0x595478b3bbc3076d = function () {
	return _in(0x595478b3, 0xbbc3076d, _r, _ri);
};

global.N_0x595550376b7ea230 = function (p0) {
	return _in(0x59555037, 0x6b7ea230, p0, _r, _ri);
};

global.N_0x59577799f6ae2f34 = function (p0) {
	return _in(0x59577799, 0xf6ae2f34, p0);
};

global.N_0x595f028698072dd9 = function (p0) {
	return _in(0x595f0286, 0x98072dd9, p0, _r);
};

global.N_0x59606519ff9d3ec2 = function (p0, p1) {
	return _in(0x59606519, 0xff9d3ec2, p0, p1, _r, _ri);
};

global.N_0x59643424b68d52b5 = function (p0) {
	return _in(0x59643424, 0xb68d52b5, p0, _r, _ri);
};

global.N_0x597f571ddee3ffac = function (p0) {
	return _in(0x597f571d, 0xdee3ffac, p0);
};

global.N_0x59872ea4cbd11c56 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x59872ea4, 0xcbd11c56, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0x59ae5ca4ffb4e378 = function (p0, p1) {
	return _in(0x59ae5ca4, 0xffb4e378, p0, p1, _r, _ri);
};

global.N_0x59aea4dc640814b9 = function (p0, p1) {
	return _in(0x59aea4dc, 0x640814b9, p0, p1);
};

global.N_0x59b57c4b06531e1e = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x59b57c4b, 0x06531e1e, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x59bd177a1a48600a = function (p0, p1) {
	return _in(0x59bd177a, 0x1a48600a, p0, p1);
};

global.N_0x59c7ad6fea2ac449 = function (p0, p1, p2, p3) {
	return _in(0x59c7ad6f, 0xea2ac449, p0, p1, p2, p3);
};

global.N_0x59de03442b6c9598 = function (p0) {
	return _in(0x59de0344, 0x2b6c9598, p0, _r, _ri);
};

global.N_0x59ea80079b86d8c7 = function (p0) {
	return _in(0x59ea8007, 0x9b86d8c7, p0, _r, _ri);
};

global.N_0x59eca796021b0539 = function (vehicle, p1) {
	return _in(0x59eca796, 0x021b0539, vehicle, p1);
};

global.N_0x59f0aff3e0a1b019 = function (p0, p1, p2) {
	return _in(0x59f0aff3, 0xe0a1b019, p0, p1, p2);
};

global.N_0x59fa676177dbe4c9 = function (p0) {
	return _in(0x59fa6761, 0x77dbe4c9, p0, _r, _ri);
};

global.N_0x5a10d6506b2f2c63 = function (p0, p1) {
	return _in(0x5a10d650, 0x6b2f2c63, p0, p1);
};

global.N_0x5a13586a9447931f = function (p0) {
	return _in(0x5a13586a, 0x9447931f, p0, _r, _ri);
};

global.N_0x5a1a929c8b729b4a = function (p0) {
	return _in(0x5a1a929c, 0x8b729b4a, p0);
};

global.N_0x5a34cd9c3c5bec44 = function (p0) {
	return _in(0x5a34cd9c, 0x3c5bec44, p0, _r);
};

global.N_0x5a3b54addf5472a3 = function (p0) {
	return _in(0x5a3b54ad, 0xdf5472a3, p0, _r, _ri);
};

global.N_0x5a40040bb5ae3ea2 = function (p0) {
	return _in(0x5a40040b, 0xb5ae3ea2, p0);
};

global.N_0x5a498fca232f71e1 = function (p0, p1) {
	return _in(0x5a498fca, 0x232f71e1, p0, p1);
};

global.N_0x5a4e1a41e3a02ad0 = function (p0, p1, p2) {
	return _in(0x5a4e1a41, 0xe3a02ad0, p0, p1, p2);
};

global.N_0x5a695bd328586b44 = function (p0, p1) {
	return _in(0x5a695bd3, 0x28586b44, p0, p1, _r, _ri);
};

global.N_0x5a79220f6d38d7c3 = function (p0) {
	return _in(0x5a79220f, 0x6d38d7c3, p0, _r, _ri);
};

global.N_0x5a8b01199c3e79c3 = function () {
	return _in(0x5a8b0119, 0x9c3e79c3);
};

global.N_0x5a91bcef74944e93 = function (p0, p1) {
	return _in(0x5a91bcef, 0x74944e93, p0, p1);
};

global.N_0x5a989b7ee3672a56 = function (p0, p1) {
	return _in(0x5a989b7e, 0xe3672a56, p0, p1);
};

global.N_0x5aabb09f6fbd1f87 = function (p0, p1) {
	return _in(0x5aabb09f, 0x6fbd1f87, p0, p1);
};

global.N_0x5aadc7bbbb1bceeb = function (p0, p1, p2, p3, p4) {
	return _in(0x5aadc7bb, 0xbb1bceeb, p0, p1, p2, p3, p4);
};

global.N_0x5ac0944c156e5f44 = function (p0) {
	return _in(0x5ac0944c, 0x156e5f44, p0, _r, _ri);
};

global.N_0x5ac6e0fa028369de = function () {
	return _in(0x5ac6e0fa, 0x028369de);
};

global.N_0x5ae0cb5f35f034fd = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x5ae0cb5f, 0x35f034fd, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x5ae17c6b0134b7f1 = function () {
	return _in(0x5ae17c6b, 0x0134b7f1, _r, _ri);
};

global.N_0x5af19b6cc2115d34 = function (p0, p1, p2) {
	return _in(0x5af19b6c, 0xc2115d34, p0, p1, p2);
};

global.N_0x5af24ca9c974e51a = function (p0, p1) {
	return _in(0x5af24ca9, 0xc974e51a, p0, p1);
};

global.N_0x5affa9ddc87846f8 = function (p0) {
	return _in(0x5affa9dd, 0xc87846f8, p0, _r, _ri);
};

global.N_0x5b1a26bb18e7d451 = function (p0) {
	return _in(0x5b1a26bb, 0x18e7d451, p0, _r, _ri);
};

global.N_0x5b235f24472f2c3b = function (p0, p1) {
	return _in(0x5b235f24, 0x472f2c3b, p0, p1, _r, _ri);
};

global.N_0x5b23dff8e0948bb2 = function (p0, p1) {
	return _in(0x5b23dff8, 0xe0948bb2, p0, p1);
};

global.N_0x5b4a8121a47d844d = function (p0) {
	return _in(0x5b4a8121, 0xa47d844d, p0, _r, _ri);
};

global.N_0x5b4bbe80ad5972dc = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x5b4bbe80, 0xad5972dc, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x5b53ca0e2ac3ff45 = function (p0, p1, p2) {
	return _in(0x5b53ca0e, 0x2ac3ff45, p0, p1, p2, _r, _ri);
};

global.N_0x5b6193813e03e4e9 = function (p0) {
	return _in(0x5b619381, 0x3e03e4e9, p0, _r, _ri);
};

global.N_0x5b637d6f3b67716a = function (p0) {
	return _in(0x5b637d6f, 0x3b67716a, p0);
};

global.N_0x5b68d0007d9c92eb = function (p0, p1) {
	return _in(0x5b68d000, 0x7d9c92eb, p0, p1);
};

global.N_0x5b73975b4f12f7f3 = function (p0, p1, p2, p3, p4) {
	return _in(0x5b73975b, 0x4f12f7f3, p0, p1, p2, p3, p4);
};

global.N_0x5b7b97e99f84138b = function (p0) {
	return _in(0x5b7b97e9, 0x9f84138b, p0, _r, _ri);
};

global.N_0x5b7d7bf36d2de18b = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x5b7d7bf3, 0x6d2de18b, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x5b9813ecf7633fe8 = function (p0) {
	return _in(0x5b9813ec, 0xf7633fe8, p0);
};

global.N_0x5b9c6ac118fd4774 = function () {
	return _in(0x5b9c6ac1, 0x18fd4774);
};

global.N_0x5ba659955369b0e2 = function (p0) {
	return _in(0x5ba65995, 0x5369b0e2, p0, _r, _ri);
};

global.N_0x5ba7a68a346a5a91 = function (p0, p1, p2) {
	return _in(0x5ba7a68a, 0x346a5a91, p0, p1, p2, _r, _ri);
};

global.N_0x5bb04bc74a474b47 = function (p0, p1) {
	return _in(0x5bb04bc7, 0x4a474b47, p0, p1);
};

global.N_0x5bc885ebd75faa7d = function (p0, p1) {
	return _in(0x5bc885eb, 0xd75faa7d, p0, p1);
};

global.N_0x5bcf0b79d4f5dba3 = function (p0, p1) {
	return _in(0x5bcf0b79, 0xd4f5dba3, p0, p1);
};

global.N_0x5bd616735f16bf5c = function (entity, interior) {
	return _in(0x5bd61673, 0x5f16bf5c, entity, interior);
};

global.N_0x5bd7457221cc5ff4 = function (p0, p1) {
	return _in(0x5bd74572, 0x21cc5ff4, p0, p1);
};

global.N_0x5bf0b9d9a8e227a0 = function (p0) {
	return _in(0x5bf0b9d9, 0xa8e227a0, p0, _r, _ri);
};

global.N_0x5c16855277819bbf = function () {
	return _in(0x5c168552, 0x77819bbf, _r, _ri);
};

global.N_0x5c2e5e3caeeb1f58 = function (p0, p1, p2) {
	return _in(0x5c2e5e3c, 0xaeeb1f58, p0, p1, p2);
};

global.N_0x5c2ea6c44f515f34 = function (p0) {
	return _in(0x5c2ea6c4, 0x4f515f34, p0, _r, _ri);
};

global.N_0x5c3c55eaad19915f = function (p0, p1) {
	return _in(0x5c3c55ea, 0xad19915f, p0, p1);
};

global.N_0x5c497525f803486b = function () {
	return _in(0x5c497525, 0xf803486b);
};

global.N_0x5c674eb487891f6b = function () {
	return _in(0x5c674eb4, 0x87891f6b, _r, _ri);
};

global.N_0x5c6c7c70ca302801 = function (p0) {
	return _in(0x5c6c7c70, 0xca302801, p0, _r, _ri);
};

global.N_0x5c885e0978b6ad60 = function (p0, p1, p2, p3) {
	return _in(0x5c885e09, 0x78b6ad60, p0, p1, p2, p3, _r, _ri);
};

global.N_0x5c90e20c25e6d83c = function (p0) {
	return _in(0x5c90e20c, 0x25e6d83c, p0);
};

global.N_0x5c9978a2a3dc3d0d = function () {
	return _in(0x5c9978a2, 0xa3dc3d0d);
};

global.N_0x5c9c3a466b3296a8 = function (p0) {
	return _in(0x5c9c3a46, 0x6b3296a8, p0, _r, _ri);
};

global.N_0x5ca20fbe49891bbd = function (p0, p1) {
	return _in(0x5ca20fbe, 0x49891bbd, p0, p1);
};

global.N_0x5ca6bbd4a7d8145e = function (p0) {
	return _in(0x5ca6bbd4, 0xa7d8145e, p0, _r, _ri);
};

global.N_0x5ca7fb7d6de49dcc = function () {
	return _in(0x5ca7fb7d, 0x6de49dcc, _r, _ri);
};

global.N_0x5cb71eaa1429a358 = function (p0) {
	return _in(0x5cb71eaa, 0x1429a358, p0);
};

global.N_0x5cb8b0c846d0f30b = function (p0) {
	return _in(0x5cb8b0c8, 0x46d0f30b, p0);
};

global.N_0x5cd3aad8ff9ed121 = function (p0) {
	return _in(0x5cd3aad8, 0xff9ed121, p0);
};

global.N_0x5ce5cacc01d0f985 = function () {
	return _in(0x5ce5cacc, 0x01d0f985);
};

global.N_0x5d10b3795f3fc886 = function () {
	return _in(0x5d10b379, 0x5f3fc886, _r);
};

global.N_0x5d1c5d8e62e8ee1c = function (p0) {
	return _in(0x5d1c5d8e, 0x62e8ee1c, p0, _r, _ri);
};

global.N_0x5d3c528b7a7df836 = function (p0) {
	return _in(0x5d3c528b, 0x7a7df836, p0);
};

global.N_0x5d4cd22a8c82a81a = function (p0, p1) {
	return _in(0x5d4cd22a, 0x8c82a81a, p0, p1);
};

global.N_0x5d5e2102b174b8d2 = function () {
	return _in(0x5d5e2102, 0xb174b8d2, _r, _ri);
};

global.N_0x5d6182f3bce1333b = function (p0, p1) {
	return _in(0x5d6182f3, 0xbce1333b, p0, p1, _r, _ri);
};

global.N_0x5d7bfda2290b4e39 = function (p0) {
	return _in(0x5d7bfda2, 0x290b4e39, p0, _r, _ri);
};

global.N_0x5d9b0baaf04cf65b = function (p0, p1, p2, p3) {
	return _in(0x5d9b0baa, 0xf04cf65b, p0, p1, p2, p3);
};

global.N_0x5da36cccb63c0895 = function (p0, p1, p2) {
	return _in(0x5da36ccc, 0xb63c0895, p0, p1, p2, _r, _ri);
};

global.N_0x5e214112806591ea = function (p0, p1) {
	return _in(0x5e214112, 0x806591ea, p0, p1, _r, _rv);
};

global.N_0x5e3ccf03995388b5 = function (p0, p1, p2, p3) {
	return _in(0x5e3ccf03, 0x995388b5, p0, p1, p2, p3);
};

global.N_0x5e420ff293ee5472 = function () {
	return _in(0x5e420ff2, 0x93ee5472, _r, _ri);
};

global.N_0x5e5d96be25e9df68 = function (p0) {
	return _in(0x5e5d96be, 0x25e9df68, p0, _r, _ri);
};

global.N_0x5e6f375ca101c108 = function (p0, p1) {
	return _in(0x5e6f375c, 0xa101c108, p0, p1);
};

global.N_0x5e71e72a94985214 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x5e71e72a, 0x94985214, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x5e94ea09e7207c16 = function () {
	return _in(0x5e94ea09, 0xe7207c16, _r, _ri);
};

global.N_0x5e981c764df33117 = function (p0, p1) {
	return _in(0x5e981c76, 0x4df33117, p0, p1);
};

global.N_0x5e9faf6c513347b4 = function (p0, p1) {
	return _in(0x5e9faf6c, 0x513347b4, p0, p1, _r, _ri);
};

global.N_0x5ea655f01d93667a = function (p0) {
	return _in(0x5ea655f0, 0x1d93667a, p0, _r, _ri);
};

global.N_0x5ebe38a20bc51c27 = function (p0) {
	return _in(0x5ebe38a2, 0x0bc51c27, p0, _r, _ri);
};

global.N_0x5ed39da62beb1330 = function (p0) {
	return _in(0x5ed39da6, 0x2beb1330, p0, _r, _ri);
};

global.N_0x5ee6fccc9c832ca2 = function (p0) {
	return _in(0x5ee6fccc, 0x9c832ca2, p0, _r, _rv);
};

global.N_0x5efa8a3d8a60d662 = function (p0, p1) {
	return _in(0x5efa8a3d, 0x8a60d662, p0, p1, _r, _ri);
};

global.N_0x5f0e99071582deca = function (p0, p1, p2) {
	return _in(0x5f0e9907, 0x1582deca, p0, p1, p2, _r, _ri);
};

global.N_0x5f217bc1190503d8 = function (p0, p1) {
	return _in(0x5f217bc1, 0x190503d8, p0, p1);
};

global.N_0x5f53010c4c3f6baf = function (p0, p1, p2, p3) {
	return _in(0x5f53010c, 0x4c3f6baf, p0, p1, p2, p3);
};

global.N_0x5f57522bc1eb9d9d = function (p0, p1) {
	return _in(0x5f57522b, 0xc1eb9d9d, p0, p1);
};

global.N_0x5f5b1b7e8e8f94c6 = function (p0) {
	return _in(0x5f5b1b7e, 0x8e8f94c6, p0, _r, _ri);
};

global.N_0x5f8e0303c229c84b = function (p0, p1) {
	return _in(0x5f8e0303, 0xc229c84b, p0, p1);
};

global.N_0x5fc9357c26daefce = function () {
	return _in(0x5fc9357c, 0x26daefce, _r, _ri);
};

global.N_0x5fcf25d584065bfd = function (p0, p1, p2, p3) {
	return _in(0x5fcf25d5, 0x84065bfd, p0, p1, p2, p3);
};

global.N_0x5fe444eb67c70ad4 = function (p0) {
	return _in(0x5fe444eb, 0x67c70ad4, p0, _r, _ri);
};

global.N_0x5ff9a878c3d115b8 = function (p0, p1, p2) {
	return _in(0x5ff9a878, 0xc3d115b8, p0, p1, p2, _r, _ri);
};

global.N_0x600bbdd29820370c = function (p0) {
	return _in(0x600bbdd2, 0x9820370c, p0);
};

global.N_0x603469298a4308af = function (p0) {
	return _in(0x60346929, 0x8a4308af, p0);
};

global.N_0x6035e8fbca32ac5e = function () {
	return _in(0x6035e8fb, 0xca32ac5e);
};

global.N_0x603ac35fd4602c76 = function (p0) {
	return _in(0x603ac35f, 0xd4602c76, p0, _r, _ri);
};

global.N_0x604190f0cf0df158 = function (p0, p1) {
	return _in(0x604190f0, 0xcf0df158, p0, p1);
};

global.N_0x604e1010e3162e86 = function (p0, p1, p2) {
	return _in(0x604e1010, 0xe3162e86, p0, p1, p2);
};

global.N_0x6052b4de6657684f = function (p0) {
	return _in(0x6052b4de, 0x6657684f, p0, _r, _ri);
};

global.N_0x606d529dada3c940 = function (p0, p1) {
	return _in(0x606d529d, 0xada3c940, p0, p1);
};

global.N_0x6072b7420a83a03f = function () {
	return _in(0x6072b742, 0x0a83a03f, _r, _ri);
};

global.N_0x6076213101a47b3b = function (p0) {
	return _in(0x60762131, 0x01a47b3b, p0);
};

global.N_0x608ad36a644a97fe = function (p0, p1, p2) {
	return _in(0x608ad36a, 0x644a97fe, p0, p1, p2);
};

global.N_0x608bc6a6aacd5036 = function (p0, p1, p2, p3) {
	return _in(0x608bc6a6, 0xaacd5036, p0, p1, p2, p3, _r, _ri);
};

global.N_0x6090a031c69f384e = function (p0, p1) {
	return _in(0x6090a031, 0xc69f384e, p0, p1);
};

global.N_0x6095358c4142932a = function (p0) {
	return _in(0x6095358c, 0x4142932a, p0);
};

global.N_0x6098139150dcc745 = function (p0, p1) {
	return _in(0x60981391, 0x50dcc745, p0, p1, _r, _ri);
};

global.N_0x60b7d1dcc312697d = function (p0) {
	return _in(0x60b7d1dc, 0xc312697d, p0, _r, _ri);
};

global.N_0x6102830f764b3de1 = function (p0) {
	return _in(0x6102830f, 0x764b3de1, p0, _r, _ri);
};

global.N_0x610438375e5d1801 = function (p0) {
	return _in(0x61043837, 0x5e5d1801, p0, _r, _ri);
};

global.N_0x6123e2832c34243d = function (p0, p1, p2, p3, p4) {
	return _in(0x6123e283, 0x2c34243d, p0, p1, p2, p3, p4);
};

global.N_0x6127f25ed21c533c = function (p0) {
	return _in(0x6127f25e, 0xd21c533c, p0, _r, _ri);
};

global.N_0x614682e715adbaac = function () {
	return _in(0x614682e7, 0x15adbaac);
};

global.N_0x614d0b4533f842d3 = function (p0) {
	return _in(0x614d0b45, 0x33f842d3, p0, _r, _ri);
};

global.N_0x615b3b8e73634509 = function (p0, p1) {
	return _in(0x615b3b8e, 0x73634509, p0, p1);
};

global.N_0x615dc4a82e90bb48 = function (p0, p1, p2) {
	return _in(0x615dc4a8, 0x2e90bb48, p0, p1, p2);
};

global.N_0x617d3494ad58200f = function (p0) {
	return _in(0x617d3494, 0xad58200f, p0, _r, _ri);
};

global.N_0x61914209c36efddb = function (p0) {
	return _in(0x61914209, 0xc36efddb, p0, _r, _ri);
};

global.N_0x619e63980bfc0096 = function (p0, p1, p2) {
	return _in(0x619e6398, 0x0bfc0096, p0, p1, p2, _r, _ri);
};

global.N_0x61b2aaef645ddaf0 = function (p0, p1, p2, p3, p4) {
	return _in(0x61b2aaef, 0x645ddaf0, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x61b98367d93f012f = function (p0) {
	return _in(0x61b98367, 0xd93f012f, p0);
};

global.N_0x61bda07407754a5c = function (p0, p1, p2, p3) {
	return _in(0x61bda074, 0x07754a5c, p0, p1, p2, p3);
};

global.N_0x61be7d6186260002 = function (p0) {
	return _in(0x61be7d61, 0x86260002, p0, _r, _ri);
};

global.N_0x61bfbaa795e712ad = function () {
	return _in(0x61bfbaa7, 0x95e712ad);
};

global.N_0x61cae9d1fd055e44 = function () {
	return _in(0x61cae9d1, 0xfd055e44, _r, _ri);
};

global.N_0x621d1b289caf5978 = function (p0) {
	return _in(0x621d1b28, 0x9caf5978, p0, _r, _ri);
};

global.N_0x6243635af2f1b826 = function (p0, p1, p2, p3) {
	return _in(0x6243635a, 0xf2f1b826, p0, p1, p2, p3, _r, _ri);
};

global.N_0x627520389e288a73 = function (p0, p1, p2) {
	return _in(0x62752038, 0x9e288a73, p0, p1, p2, _r, _ri);
};

global.N_0x627b68d9ce6ee8de = function (p0) {
	return _in(0x627b68d9, 0xce6ee8de, p0, _r, _ri);
};

global.N_0x627f7f3a0c4c51ff = function (p0, p1) {
	return _in(0x627f7f3a, 0x0c4c51ff, p0, p1);
};

global.N_0x628e742fe1f79c4a = function (p0, p1) {
	return _in(0x628e742f, 0xe1f79c4a, p0, p1);
};

global.N_0x62b384fefde06817 = function () {
	return _in(0x62b384fe, 0xfde06817, _r, _ri);
};

global.N_0x62b9f9a1272aed80 = function (p0) {
	return _in(0x62b9f9a1, 0x272aed80, p0);
};

global.N_0x62be3ecc79fbd004 = function (p0) {
	return _in(0x62be3ecc, 0x79fbd004, p0, _r, _ri);
};

global.N_0x62c9eb51656d68ce = function (p0) {
	return _in(0x62c9eb51, 0x656d68ce, p0, _r, _ri);
};

global.N_0x62cab7db62ead434 = function (p0, p1) {
	return _in(0x62cab7db, 0x62ead434, p0, p1, _r, _ri);
};

global.N_0x62d5f0588915b277 = function () {
	return _in(0x62d5f058, 0x8915b277);
};

global.N_0x62de46f061caa468 = function () {
	return _in(0x62de46f0, 0x61caa468, _r, _ri);
};

global.N_0x62ed71e133b6c9f1 = function (p0, p1, p2, p3) {
	return _in(0x62ed71e1, 0x33b6c9f1, p0, p1, p2, p3);
};

global.N_0x62fdad5e01d2dd47 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x62fdad5e, 0x01d2dd47, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x62fdf4e678e40cc6 = function (p0, p1) {
	return _in(0x62fdf4e6, 0x78e40cc6, p0, p1, _r, _ri);
};

global.N_0x630e7b01f091a197 = function (p0, p1) {
	return _in(0x630e7b01, 0xf091a197, p0, p1, _r, _ri);
};

global.N_0x6318fb3be37e11b3 = function (p0, p1) {
	return _in(0x6318fb3b, 0xe37e11b3, p0, p1);
};

global.N_0x631cd2d77fdc0316 = function (p0) {
	return _in(0x631cd2d7, 0x7fdc0316, p0);
};

global.N_0x63246a24f5747510 = function (p0, p1) {
	return _in(0x63246a24, 0xf5747510, p0, p1);
};

global.N_0x6329c34bee5bff4b = function (p0, p1) {
	return _in(0x6329c34b, 0xee5bff4b, p0, p1, _r, _ri);
};

global.N_0x632aa10bf7ea53d3 = function (p0, p1) {
	return _in(0x632aa10b, 0xf7ea53d3, p0, p1);
};

global.N_0x632be8d84846fa56 = function () {
	return _in(0x632be8d8, 0x4846fa56);
};

global.N_0x63342c50ec115ce8 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x63342c50, 0xec115ce8, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri);
};

global.N_0x6339c1ea3979b5f7 = function (p0, p1) {
	return _in(0x6339c1ea, 0x3979b5f7, p0, p1, _r, _ri);
};

global.N_0x633f83b301c87994 = function (p0, p1) {
	return _in(0x633f83b3, 0x01c87994, p0, p1);
};

global.N_0x634c19521485ab25 = function (p0) {
	return _in(0x634c1952, 0x1485ab25, p0);
};

global.N_0x634f4a0562cf19b8 = function () {
	return _in(0x634f4a05, 0x62cf19b8);
};

global.N_0x63509ddf102e08e8 = function (p0, p1) {
	return _in(0x63509ddf, 0x102e08e8, p0, p1);
};

global.N_0x635423d55ca84fc8 = function (p0) {
	return _in(0x635423d5, 0x5ca84fc8, p0, _r, _ri);
};

global.N_0x6355602c02edc6df = function (p0, p1) {
	return _in(0x6355602c, 0x02edc6df, p0, p1);
};

global.N_0x6378a235374b852f = function (p0, p1) {
	return _in(0x6378a235, 0x374b852f, p0, p1);
};

global.N_0x638a3a81733086db = function () {
	return _in(0x638a3a81, 0x733086db, _r, _ri);
};

global.N_0x638fcfc6042a9473 = function (p0, p1) {
	return _in(0x638fcfc6, 0x042a9473, p0, p1);
};

global.N_0x63aa2b8eb087886a = function (p0, p1) {
	return _in(0x63aa2b8e, 0xb087886a, p0, p1);
};

global.N_0x63b83a526329afbc = function (p0) {
	return _in(0x63b83a52, 0x6329afbc, p0);
};

global.N_0x63cbbd6ca6f321f9 = function (p0, p1) {
	return _in(0x63cbbd6c, 0xa6f321f9, p0, p1);
};

global.N_0x63dc1f22c903b709 = function (vehicle, p1) {
	return _in(0x63dc1f22, 0xc903b709, vehicle, p1);
};

global.N_0x63e39f09310f481f = function (p0, p1) {
	return _in(0x63e39f09, 0x310f481f, p0, p1);
};

global.N_0x63e5841a9264d016 = function (p0) {
	return _in(0x63e5841a, 0x9264d016, p0);
};

global.N_0x63e7279d04160477 = function (p0, p1) {
	return _in(0x63e7279d, 0x04160477, p0, p1);
};

global.N_0x63e9dcbc8b0931ed = function (p0, p1, p2) {
	return _in(0x63e9dcbc, 0x8b0931ed, p0, p1, p2, _r, _ri);
};

global.N_0x640a602946a8c972 = function (p0) {
	return _in(0x640a6029, 0x46a8c972, p0, _r, _ri);
};

global.N_0x640f890c3e5a3ffd = function (p0, p1, p2) {
	return _in(0x640f890c, 0x3e5a3ffd, p0, p1, p2, _r, _ri);
};

global.N_0x641092322a8852ab = function () {
	return _in(0x64109232, 0x2a8852ab);
};

global.N_0x641351e9ad103890 = function (p0, p1) {
	return _in(0x641351e9, 0xad103890, p0, p1);
};

global.N_0x642720d8d69328b6 = function (p0, p1) {
	return _in(0x642720d8, 0xd69328b6, p0, p1);
};

global.N_0x64340dc208d671d5 = function (p0) {
	return _in(0x64340dc2, 0x08d671d5, p0);
};

global.N_0x643fd1556f621772 = function (p0, p1, p2) {
	return _in(0x643fd155, 0x6f621772, p0, p1, p2, _r, _ri);
};

global.N_0x644439b5387ee57e = function (p0, p1) {
	return _in(0x644439b5, 0x387ee57e, p0, p1, _r, _ri);
};

global.N_0x644ccb76a76cfbd6 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x644ccb76, 0xa76cfbd6, p0, p1, p2, p3, p4, p5);
};

global.N_0x644e02f24f9d4e98 = function (p0, p1) {
	return _in(0x644e02f2, 0x4f9d4e98, p0, p1, _r, _ri);
};

global.N_0x6452b1d357d81742 = function (p0, p1) {
	return _in(0x6452b1d3, 0x57d81742, p0, p1, _r, _ri);
};

global.N_0x646564a3b7df68f8 = function (p0, p1, p2) {
	return _in(0x646564a3, 0xb7df68f8, p0, p1, p2);
};

global.N_0x646ed1a1d28487df = function (p0, p1) {
	return _in(0x646ed1a1, 0xd28487df, p0, p1);
};

global.N_0x6480723d3be535b6 = function (p0) {
	return _in(0x6480723d, 0x3be535b6, p0);
};

global.N_0x64a36ba85ce01a81 = function (p0, p1, p2, p3) {
	return _in(0x64a36ba8, 0x5ce01a81, p0, p1, p2, p3, _r, _ri);
};

global.N_0x64b956f4e761df5c = function (p0) {
	return _in(0x64b956f4, 0xe761df5c, p0);
};

global.N_0x64f765d9a1f8f02c = function (p0, p1, p2) {
	return _in(0x64f765d9, 0xa1f8f02c, p0, p1, p2);
};

global.N_0x64ff4bf9af59e139 = function (p0, p1) {
	return _in(0x64ff4bf9, 0xaf59e139, p0, p1);
};

global.N_0x6506bfa755fb209c = function () {
	return _in(0x6506bfa7, 0x55fb209c, _r, _ri);
};

global.N_0x6507ac3bd7c99009 = function (p0, p1, p2, p3) {
	return _in(0x6507ac3b, 0xd7c99009, p0, p1, p2, p3, _r, _ri);
};

global.N_0x6519238858af5479 = function (p0) {
	return _in(0x65192388, 0x58af5479, p0);
};

global.N_0x651f0530083c0e5a = function (p0, p1) {
	return _in(0x651f0530, 0x083c0e5a, p0, p1);
};

global.N_0x6554ecce226f2a2a = function (p0) {
	return _in(0x6554ecce, 0x226f2a2a, p0, _r, _ri);
};

global.N_0x6569f31a01b4c097 = function (p0, p1, p2) {
	return _in(0x6569f31a, 0x01b4c097, p0, p1, p2);
};

global.N_0x6571e4327390ec0b = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6571e432, 0x7390ec0b, p0, p1, p2, p3, p4, p5);
};

global.N_0x6579860a5558524a = function (p0, p1) {
	return _in(0x6579860a, 0x5558524a, p0, p1);
};

global.N_0x65887eac535a0b0c = function (p0) {
	return _in(0x65887eac, 0x535a0b0c, p0);
};

global.N_0x65a5f70f4a292ebe = function (p0, p1, p2) {
	return _in(0x65a5f70f, 0x4a292ebe, p0, p1, p2);
};

global.N_0x65a8196b8d7f5e0b = function (p0) {
	return _in(0x65a8196b, 0x8d7f5e0b, p0, _r, _ri);
};

global.N_0x65b205bf30c13ddb = function (p0) {
	return _in(0x65b205bf, 0x30c13ddb, p0);
};

global.N_0x65d281985f2bdfc2 = function (p0, p1) {
	return _in(0x65d28198, 0x5f2bdfc2, p0, p1);
};

global.N_0x65e65ca6a0fe59d4 = function (p0) {
	return _in(0x65e65ca6, 0xa0fe59d4, p0, _r, _ri);
};

global.N_0x65f040d91001ed4b = function (p0) {
	return _in(0x65f040d9, 0x1001ed4b, p0);
};

global.N_0x660639bc60157048 = function (p0, p1) {
	return _in(0x660639bc, 0x60157048, p0, p1, _r, _ri);
};

global.N_0x660a8f876df1d4f8 = function (p0) {
	return _in(0x660a8f87, 0x6df1d4f8, p0);
};

global.N_0x6614f9039bd31931 = function (p0, p1, p2) {
	return _in(0x6614f903, 0x9bd31931, p0, p1, p2, _r, _ri);
};

global.N_0x661bb1e1ff77742d = function (p0) {
	return _in(0x661bb1e1, 0xff77742d, p0, _r, _ri);
};

global.N_0x662d364abf16de2f = function (p0, p1) {
	return _in(0x662d364a, 0xbf16de2f, p0, p1, _r, _ri);
};

global.N_0x6647c5f6f5792496 = function (ped, p1) {
	return _in(0x6647c5f6, 0xf5792496, ped, p1);
};

global.N_0x665161d250850a9f = function (p0) {
	return _in(0x665161d2, 0x50850a9f, p0, _r, _ri);
};

global.N_0x6652b0c8f3d414d0 = function (p0) {
	return _in(0x6652b0c8, 0xf3d414d0, p0);
};

global.N_0x665b21666351cb37 = function (p0, p1, p2) {
	return _in(0x665b2166, 0x6351cb37, p0, p1, p2, _r, _ri);
};

global.N_0x666c2f53abefc952 = function (p0) {
	return _in(0x666c2f53, 0xabefc952, p0, _r, _ri);
};

global.N_0x668af6e4933ac13f = function (p0, p1) {
	return _in(0x668af6e4, 0x933ac13f, p0, p1);
};

global.N_0x669655ffb29ef1a9 = function (p0, p1, p2, p3) {
	return _in(0x669655ff, 0xb29ef1a9, p0, p1, p2, p3);
};

global.N_0x669c25840c6f7ae2 = function (p0, p1) {
	return _in(0x669c2584, 0x0c6f7ae2, p0, p1);
};

global.N_0x66b1cb778d911f49 = function (p0, p1) {
	return _in(0x66b1cb77, 0x8d911f49, p0, p1);
};

global.N_0x66b2b83b94b22458 = function (p0) {
	return _in(0x66b2b83b, 0x94b22458, p0, _r, _ri);
};

global.N_0x66b957aac2eaaeab = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x66b957aa, 0xc2eaaeab, p0, p1, p2, p3, p4, p5);
};

global.N_0x66bc28e50e85270e = function (p0) {
	return _in(0x66bc28e5, 0x0e85270e, p0, _r, _ri);
};

global.N_0x66c047719b0e80e1 = function (p0, p1) {
	return _in(0x66c04771, 0x9b0e80e1, p0, p1);
};

global.N_0x66ee5b93c308f734 = function (p0) {
	return _in(0x66ee5b93, 0xc308f734, p0, _r, _ri);
};

global.N_0x66f35dd9d2b58579 = function () {
	return _in(0x66f35dd9, 0xd2b58579, _r, _ri);
};

global.N_0x66f9eb44342bb4c5 = function (p0, p1) {
	return _in(0x66f9eb44, 0x342bb4c5, p0, p1);
};

global.N_0x66ff395445a88a6e = function (p0, p1, p2) {
	return _in(0x66ff3954, 0x45a88a6e, p0, p1, p2);
};

global.N_0x6703872ec09bc158 = function (p0, p1) {
	return _in(0x6703872e, 0xc09bc158, p0, p1);
};

global.N_0x6718f40313a2b5a6 = function (p0) {
	return _in(0x6718f403, 0x13a2b5a6, p0, _r, _ri);
};

global.N_0x671a07c9a1cd50a5 = function (p0) {
	return _in(0x671a07c9, 0xa1cd50a5, p0, _r, _ri);
};

global.N_0x6734f0a6a52c371c = function (p0, p1) {
	return _in(0x6734f0a6, 0xa52c371c, p0, p1);
};

global.N_0x673a8779d229ba5a = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x673a8779, 0xd229ba5a, p0, p1, p2, p3, p4, p5);
};

global.N_0x674b90be1115846d = function (p0, p1) {
	return _in(0x674b90be, 0x1115846d, p0, p1);
};

global.N_0x675680d089bfa21f = function (p0, p1) {
	return _in(0x675680d0, 0x89bfa21f, p0, p1);
};

global.N_0x6759bee6762e140b = function (p0) {
	return _in(0x6759bee6, 0x762e140b, p0);
};

global.N_0x67659a8f248e0141 = function (p0, p1) {
	return _in(0x67659a8f, 0x248e0141, p0, p1);
};

global.N_0x6786d7afac3162b3 = function (p0) {
	return _in(0x6786d7af, 0xac3162b3, p0);
};

global.N_0x678d3226cf70b9c8 = function (p0, p1) {
	return _in(0x678d3226, 0xcf70b9c8, p0, p1, _r, _ri);
};

global.N_0x678f00858980f516 = function (p0, p1, p2) {
	return _in(0x678f0085, 0x8980f516, p0, p1, p2, _r, _ri);
};

global.N_0x67995318f5faa496 = function (p0) {
	return _in(0x67995318, 0xf5faa496, p0, _r, _ri);
};

global.N_0x67a43ea3f6fe0076 = function (p0) {
	return _in(0x67a43ea3, 0xf6fe0076, p0);
};

global.N_0x67b0778c62e74423 = function (p0) {
	return _in(0x67b0778c, 0x62e74423, p0);
};

global.N_0x67bfced22909834d = function (p0) {
	return _in(0x67bfced2, 0x2909834d, p0);
};

global.N_0x67ccdf74c4df7169 = function () {
	return _in(0x67ccdf74, 0xc4df7169, _r, _ri);
};

global.N_0x67e21acc5c0c970c = function (p0, p1, p2) {
	return _in(0x67e21acc, 0x5c0c970c, p0, p1, p2);
};

global.N_0x67f7ceac2391e114 = function (p0, p1) {
	return _in(0x67f7ceac, 0x2391e114, p0, p1);
};

global.N_0x68103e2247887242 = function () {
	return _in(0x68103e22, 0x47887242);
};

global.N_0x6818d1a194e29983 = function () {
	return _in(0x6818d1a1, 0x94e29983, _r, _ri);
};

global.N_0x68319452c5064aba = function (p0, p1) {
	return _in(0x68319452, 0xc5064aba, p0, p1);
};

global.N_0x6835afea10e186f4 = function (p0, p1) {
	return _in(0x6835afea, 0x10e186f4, p0, p1);
};

global.N_0x6852288340b43239 = function (p0, p1) {
	return _in(0x68522883, 0x40b43239, p0, p1, _r, _ri);
};

global.N_0x6862e4d93f64cf01 = function (p0, p1, p2, p3) {
	return _in(0x6862e4d9, 0x3f64cf01, p0, p1, p2, p3, _r, _ri);
};

global.N_0x68821369a2ceadd5 = function (p0, p1) {
	return _in(0x68821369, 0xa2ceadd5, p0, p1, _r, _ri);
};

global.N_0x68830738a6bfb370 = function (p0, p1) {
	return _in(0x68830738, 0xa6bfb370, p0, p1);
};

global.N_0x6888a43c35a5f630 = function (p0) {
	return _in(0x6888a43c, 0x35a5f630, p0, _r, _ri);
};

global.N_0x68a0389e0718ac8f = function (p0) {
	return _in(0x68a0389e, 0x0718ac8f, p0, _r, _ri);
};

global.N_0x68f6a75fdf5a70d6 = function (p0, p1, p2, p3) {
	return _in(0x68f6a75f, 0xdf5a70d6, p0, p1, p2, p3);
};

global.N_0x690806bc83bc8ca2 = function (p0) {
	return _in(0x690806bc, 0x83bc8ca2, p0, _r, _ri);
};

global.N_0x691e4de5309eaefc = function (p0, p1) {
	return _in(0x691e4de5, 0x309eaefc, p0, p1);
};

global.N_0x6929e22158e52265 = function (p0, p1, p2) {
	return _in(0x6929e221, 0x58e52265, p0, p1, p2, _r, _ri);
};

global.N_0x694ffa4308060cd1 = function (p0, p1) {
	return _in(0x694ffa43, 0x08060cd1, p0, p1);
};

global.N_0x695dac2db928f308 = function (p0, p1) {
	return _in(0x695dac2d, 0xb928f308, p0, p1);
};

global.N_0x6968ce7ac32f6788 = function (p0) {
	return _in(0x6968ce7a, 0xc32f6788, p0);
};

global.N_0x69786495c92a3044 = function (p0) {
	return _in(0x69786495, 0xc92a3044, p0, _r, _ri);
};

global.N_0x697df68f3a761a50 = function (p0) {
	return _in(0x697df68f, 0x3a761a50, p0);
};

global.N_0x69c810b72291d831 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x69c810b7, 0x2291d831, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0x69d65e89ffd72313 = function (p0, p1) {
	return _in(0x69d65e89, 0xffd72313, p0, p1);
};

global.N_0x69e181772886f48b = function (p0) {
	return _in(0x69e18177, 0x2886f48b, p0, _r, _ri);
};

global.N_0x6a0184e904cdf25e = function (p0, p1) {
	return _in(0x6a0184e9, 0x04cdf25e, p0, p1);
};

global.N_0x6a190b94c2541a99 = function (p0) {
	return _in(0x6a190b94, 0xc2541a99, p0);
};

global.N_0x6a1af481407bf6e9 = function (p0) {
	return _in(0x6a1af481, 0x407bf6e9, p0);
};

global.N_0x6a4404bdfa62ce2c = function (p0, p1) {
	return _in(0x6a4404bd, 0xfa62ce2c, p0, p1);
};

global.N_0x6a489892e813951a = function (p0) {
	return _in(0x6a489892, 0xe813951a, p0);
};

global.N_0x6a4d224fc7643941 = function (p0) {
	return _in(0x6a4d224f, 0xc7643941, p0);
};

global.N_0x6a564540fac12211 = function (p0, p1) {
	return _in(0x6a564540, 0xfac12211, p0, p1);
};

global.N_0x6a648d42bf271dc7 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6a648d42, 0xbf271dc7, p0, p1, p2, p3, p4, p5);
};

global.N_0x6a6e79fbe8678c98 = function () {
	return _in(0x6a6e79fb, 0xe8678c98);
};

global.N_0x6a9df0fcd0c87ff9 = function () {
	return _in(0x6a9df0fc, 0xd0c87ff9);
};

global.N_0x6aa3dca2c6f5eb6d = function (p0) {
	return _in(0x6aa3dca2, 0xc6f5eb6d, p0, _r, _ri);
};

global.N_0x6ab944df68b512d3 = function (p0) {
	return _in(0x6ab944df, 0x68b512d3, p0);
};

global.N_0x6abad7b0a854f8fb = function (p0) {
	return _in(0x6abad7b0, 0xa854f8fb, p0, _r, _ri);
};

global.N_0x6abc50979655bee7 = function (p0, p1, p2) {
	return _in(0x6abc5097, 0x9655bee7, p0, p1, p2);
};

global.N_0x6ac4af46a6b8dfb2 = function (p0) {
	return _in(0x6ac4af46, 0xa6b8dfb2, p0);
};

global.N_0x6ad66548840472e5 = function (p0) {
	return _in(0x6ad66548, 0x840472e5, p0, _r, _ri);
};

global.N_0x6adf821fbf21920e = function (p0, p1) {
	return _in(0x6adf821f, 0xbf21920e, p0, p1);
};

global.N_0x6afd84aeaa3ea538 = function (p0) {
	return _in(0x6afd84ae, 0xaa3ea538, p0, _r, _ri);
};

global.N_0x6afda2264925bd11 = function (p0) {
	return _in(0x6afda226, 0x4925bd11, p0);
};

global.N_0x6b1044fdc2b09101 = function (p0, p1) {
	return _in(0x6b1044fd, 0xc2b09101, p0, p1);
};

global.N_0x6b34be961f639e21 = function (p0, p1) {
	return _in(0x6b34be96, 0x1f639e21, p0, p1);
};

global.N_0x6b44f13d888f770d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6b44f13d, 0x888f770d, p0, p1, p2, p3, p4, p5);
};

global.N_0x6b53f4b811e583d2 = function (p0, p1) {
	return _in(0x6b53f4b8, 0x11e583d2, p0, p1);
};

global.N_0x6b5ddfb967e5073d = function (p0, p1) {
	return _in(0x6b5ddfb9, 0x67e5073d, p0, p1);
};

global.N_0x6b67320e0d57856a = function (p0, p1, p2, p3) {
	return _in(0x6b67320e, 0x0d57856a, p0, p1, p2, p3);
};

global.N_0x6b7a88a61b41e589 = function (p0) {
	return _in(0x6b7a88a6, 0x1b41e589, p0);
};

global.N_0x6b89faa36fc909a3 = function (p0, p1, p2, p3) {
	return _in(0x6b89faa3, 0x6fc909a3, p0, p1, p2, p3, _r, _ri);
};

global.N_0x6b9c5c38838fb6e6 = function (p0) {
	return _in(0x6b9c5c38, 0x838fb6e6, p0);
};

global.N_0x6b9fe4f0ba521a19 = function (p0, p1) {
	return _in(0x6b9fe4f0, 0xba521a19, p0, p1);
};

global.N_0x6ba606ab3a83bc4d = function (p0) {
	return _in(0x6ba606ab, 0x3a83bc4d, p0, _r, _ri);
};

global.N_0x6bab7aced1017204 = function (p0, p1) {
	return _in(0x6bab7ace, 0xd1017204, p0, p1, _r, _ri);
};

global.N_0x6bcf5f3d8ffe988d = function (p0, p1) {
	return _in(0x6bcf5f3d, 0x8ffe988d, p0, p1);
};

global.N_0x6bcf7b5cd338281a = function (p0, p1, p2) {
	return _in(0x6bcf7b5c, 0xd338281a, p0, p1, p2);
};

global.N_0x6bed40493a1afdb8 = function (p0, p1) {
	return _in(0x6bed4049, 0x3a1afdb8, p0, p1);
};

global.N_0x6befaa907b076859 = function (p0) {
	return _in(0x6befaa90, 0x7b076859, p0);
};

global.N_0x6bfbdc46139c45ab = function (p0, p1, p2) {
	return _in(0x6bfbdc46, 0x139c45ab, p0, p1, p2, _r, _ri);
};

global.N_0x6bff5f84102df80a = function (player) {
	return _in(0x6bff5f84, 0x102df80a, player);
};

global.N_0x6bffb7c276866996 = function (p0) {
	return _in(0x6bffb7c2, 0x76866996, p0, _r, _ri);
};

global.N_0x6c03118e9e5c1a14 = function (p0) {
	return _in(0x6c03118e, 0x9e5c1a14, p0);
};

global.N_0x6c1053c433a573cf = function (p0) {
	return _in(0x6c1053c4, 0x33a573cf, p0);
};

global.N_0x6c269f673c47031e = function (p0) {
	return _in(0x6c269f67, 0x3c47031e, p0, _r, _ri);
};

global.N_0x6c27442a225a241a = function (p0) {
	return _in(0x6c27442a, 0x225a241a, p0, _r, _ri);
};

global.N_0x6c31b06e91518269 = function (p0, p1) {
	return _in(0x6c31b06e, 0x91518269, p0, p1);
};

global.N_0x6c3f12eceb6d2e2a = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x6c3f12ec, 0xeb6d2e2a, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0x6c4dbf553885f9eb = function (p0, p1, p2) {
	return _in(0x6c4dbf55, 0x3885f9eb, p0, p1, p2, _r, _ri);
};

global.N_0x6c50b9dccca70023 = function (p0) {
	return _in(0x6c50b9dc, 0xcca70023, p0, _r, _ri);
};

global.N_0x6c54e69516cc56bd = function (p0) {
	return _in(0x6c54e695, 0x16cc56bd, p0, _r, _ri);
};

global.N_0x6c57bea886a20c6b = function (p0, p1) {
	return _in(0x6c57bea8, 0x86a20c6b, p0, p1);
};

global.N_0x6c76bc24f8bb709a = function (p0, p1, p2) {
	return _in(0x6c76bc24, 0xf8bb709a, p0, p1, p2);
};

global.N_0x6c7b68d3ce60e8de = function (p0) {
	return _in(0x6c7b68d3, 0xce60e8de, p0, _r, _ri);
};

global.N_0x6c7e04e9de451789 = function () {
	return _in(0x6c7e04e9, 0xde451789);
};

global.N_0x6c87f49bfa181db5 = function (p0, p1, p2) {
	return _in(0x6c87f49b, 0xfa181db5, p0, p1, p2, _r, _ri);
};

global.N_0x6c9f12700bce69f4 = function (p0, p1) {
	return _in(0x6c9f1270, 0x0bce69f4, p0, p1, _r, _ri);
};

global.N_0x6ca484c9a7377e4f = function (p0, p1) {
	return _in(0x6ca484c9, 0xa7377e4f, p0, p1, _r, _ri);
};

global.N_0x6cab0ba160b168d2 = function () {
	return _in(0x6cab0ba1, 0x60b168d2);
};

global.N_0x6cd79468a1e595c6 = function (padIndex) {
	return _in(0x6cd79468, 0xa1e595c6, padIndex, _r);
};

global.N_0x6cee2e30021daec6 = function () {
	return _in(0x6cee2e30, 0x021daec6);
};

global.N_0x6cf82a7f65a5ad5f = function (p0, p1) {
	return _in(0x6cf82a7f, 0x65a5ad5f, p0, p1, _r, _ri);
};

global.N_0x6cfc373008a1edaf = function (p0) {
	return _in(0x6cfc3730, 0x08a1edaf, p0, _r, _ri);
};

global.N_0x6d07b371e9439019 = function (p0) {
	return _in(0x6d07b371, 0xe9439019, p0);
};

global.N_0x6d206d383bb5f6b1 = function (p0, p1) {
	return _in(0x6d206d38, 0x3bb5f6b1, p0, p1, _r, _ri);
};

global.N_0x6d2f987736a42d4c = function (p0, p1, p2) {
	return _in(0x6d2f9877, 0x36a42d4c, p0, p1, p2);
};

global.N_0x6d3ac61694a791c5 = function (p0) {
	return _in(0x6d3ac616, 0x94a791c5, p0, _r, _ri);
};

global.N_0x6d4d25c2137ff511 = function (p0, p1, p2) {
	return _in(0x6d4d25c2, 0x137ff511, p0, p1, p2);
};

global.N_0x6d58167f62238284 = function (p0) {
	return _in(0x6d58167f, 0x62238284, p0, _r, _ri);
};

global.N_0x6d5f9e69ba1be783 = function (p0) {
	return _in(0x6d5f9e69, 0xba1be783, p0);
};

global.N_0x6d85126f6ccf02c9 = function (p0, p1, p2) {
	return _in(0x6d85126f, 0x6ccf02c9, p0, p1, p2);
};

global.N_0x6d87ba8ef15226cd = function () {
	return _in(0x6d87ba8e, 0xf15226cd, _r, _ri);
};

global.N_0x6da15746d5cc1a92 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6da15746, 0xd5cc1a92, p0, p1, p2, p3, p4, p5);
};

global.N_0x6dad6630ae4a74cb = function (p0, p1) {
	return _in(0x6dad6630, 0xae4a74cb, p0, p1);
};

global.N_0x6db875afc584fa32 = function (p0, p1) {
	return _in(0x6db875af, 0xc584fa32, p0, p1, _r, _ri);
};

global.N_0x6dbf2d78709ad70b = function (p0, p1) {
	return _in(0x6dbf2d78, 0x709ad70b, p0, p1);
};

global.N_0x6de03bcc15e81710 = function (p0, p1, p2) {
	return _in(0x6de03bcc, 0x15e81710, p0, p1, p2, _r, _rv);
};

global.N_0x6de072ac8a95ffc1 = function (p0, p1) {
	return _in(0x6de072ac, 0x8a95ffc1, p0, p1);
};

global.N_0x6df942c4179be5ab = function (p0, p1) {
	return _in(0x6df942c4, 0x179be5ab, p0, p1, _r, _ri);
};

global.N_0x6dfd37e586d4f44f = function () {
	return _in(0x6dfd37e5, 0x86d4f44f, _r, _ri);
};

global.N_0x6e0d3c3f828da773 = function (p0, p1) {
	return _in(0x6e0d3c3f, 0x828da773, p0, p1);
};

global.N_0x6e2aa80bb0c03728 = function (p0, p1) {
	return _in(0x6e2aa80b, 0xb0c03728, p0, p1, _r, _ri);
};

global.N_0x6e2fd8cf7eb10e53 = function (p0, p1) {
	return _in(0x6e2fd8cf, 0x7eb10e53, p0, p1, _r, _ri);
};

global.N_0x6e4e1a82081eabed = function (p0) {
	return _in(0x6e4e1a82, 0x081eabed, p0, _r, _ri);
};

global.N_0x6e585a616abb8401 = function (p0) {
	return _in(0x6e585a61, 0x6abb8401, p0, _r, _ri);
};

global.N_0x6e5cbcb3941d7d08 = function (p0, p1) {
	return _in(0x6e5cbcb3, 0x941d7d08, p0, p1, _r, _ri);
};

global.N_0x6e8b87139854022d = function (p0, p1) {
	return _in(0x6e8b8713, 0x9854022d, p0, p1);
};

global.N_0x6e8eb45a4f4460eb = function (p0) {
	return _in(0x6e8eb45a, 0x4f4460eb, p0);
};

global.N_0x6e969927cf632608 = function (p0) {
	return _in(0x6e969927, 0xcf632608, p0);
};

global.N_0x6ea0e93cffa472cc = function (p0) {
	return _in(0x6ea0e93c, 0xffa472cc, p0);
};

global.N_0x6ea1273d525427f4 = function (p0, p1, p2) {
	return _in(0x6ea1273d, 0x525427f4, p0, p1, p2);
};

global.N_0x6ec2a67962296f49 = function (p0, p1, p2, p3) {
	return _in(0x6ec2a679, 0x62296f49, p0, p1, p2, p3);
};

global.N_0x6ecfc621a168424c = function (p0, p1, p2) {
	return _in(0x6ecfc621, 0xa168424c, p0, p1, p2);
};

global.N_0x6edb5d08cb03e763 = function (p0, p1) {
	return _in(0x6edb5d08, 0xcb03e763, p0, p1);
};

global.N_0x6eead6af637da752 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6eead6af, 0x637da752, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x6ef4e31b4d5d2da0 = function (p0, p1) {
	return _in(0x6ef4e31b, 0x4d5d2da0, p0, p1, _r, _ri);
};

global.N_0x6f02b5e50511721e = function (p0) {
	return _in(0x6f02b5e5, 0x0511721e, p0, _r, _ri);
};

global.N_0x6f1f0b17109309da = function (p0, p1) {
	return _in(0x6f1f0b17, 0x109309da, p0, p1, _r, _ri);
};

global.N_0x6f3068258a499e52 = function (p0, p1, p2, p3, p4) {
	return _in(0x6f306825, 0x8a499e52, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x6f43c351a5d51e2f = function (p0, p1) {
	return _in(0x6f43c351, 0xa5d51e2f, p0, p1, _r, _ri);
};

global.N_0x6f46f8acb44c4fc1 = function (p0) {
	return _in(0x6f46f8ac, 0xb44c4fc1, p0, _r, _ri);
};

global.N_0x6f62fae266dcfc81 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6f62fae2, 0x66dcfc81, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x6f700a4bf7c3331b = function (p0) {
	return _in(0x6f700a4b, 0xf7c3331b, p0);
};

global.N_0x6f73efab11651d7f = function (p0, p1) {
	return _in(0x6f73efab, 0x11651d7f, p0, p1);
};

global.N_0x6fb1da3ca9da7d90 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x6fb1da3c, 0xa9da7d90, p0, p1, p2, p3, p4, p5);
};

global.N_0x6fb76442469abd68 = function (p0) {
	return _in(0x6fb76442, 0x469abd68, p0, _r, _ri);
};

global.N_0x6fd7bdf10304363a = function (p0, p1) {
	return _in(0x6fd7bdf1, 0x0304363a, p0, p1);
};

global.N_0x6fd992c4a1c1b986 = function () {
	return _in(0x6fd992c4, 0xa1c1b986, _r, _ri);
};

global.N_0x7020839c7302d8ac = function (p0) {
	return _in(0x7020839c, 0x7302d8ac, p0, _r, _ri);
};

global.N_0x702b75dc9d3ede56 = function (p0) {
	return _in(0x702b75dc, 0x9d3ede56, p0);
};

global.N_0x70379b5c3ff1d209 = function () {
	return _in(0x70379b5c, 0x3ff1d209, _r, _ri);
};

global.N_0x703d4fb366da4452 = function (p0, p1) {
	return _in(0x703d4fb3, 0x66da4452, p0, p1);
};

global.N_0x7043d0681285ba2d = function (p0) {
	return _in(0x7043d068, 0x1285ba2d, p0);
};

global.N_0x704c908e9c405136 = function (p0) {
	return _in(0x704c908e, 0x9c405136, p0);
};

global.N_0x704f92b3af20d857 = function (p0) {
	return _in(0x704f92b3, 0xaf20d857, p0);
};

global.N_0x705be297eebdb95d = function (p0) {
	return _in(0x705be297, 0xeebdb95d, p0, _r, _ri);
};

global.N_0x70605812abc9ff0f = function (p0, p1) {
	return _in(0x70605812, 0xabc9ff0f, p0, p1);
};

global.N_0x706b434fefad6a24 = function (p0) {
	return _in(0x706b434f, 0xefad6a24, p0);
};

global.N_0x708df841b8f27aa2 = function (p0) {
	return _in(0x708df841, 0xb8f27aa2, _ts(p0));
};

global.N_0x709ba8c08c5c008d = function () {
	return _in(0x709ba8c0, 0x8c5c008d);
};

global.N_0x70a6658d476c6187 = function () {
	return _in(0x70a6658d, 0x476c6187);
};

global.N_0x710448d44a64c213 = function (p0) {
	return _in(0x710448d4, 0x4a64c213, p0);
};

global.N_0x712b2c2b2471b493 = function (p0, p1) {
	return _in(0x712b2c2b, 0x2471b493, p0, p1);
};

global.N_0x7146cf430965927c = function (p0, p1) {
	return _in(0x7146cf43, 0x0965927c, p0, p1);
};

global.N_0x714a0ea7de1167be = function (p0, p1) {
	return _in(0x714a0ea7, 0xde1167be, p0, p1, _r, _ri);
};

global.N_0x716f17f8a0419f95 = function (p0) {
	return _in(0x716f17f8, 0xa0419f95, p0, _r, _ri);
};

global.N_0x717da2281df90855 = function (p0) {
	return _in(0x717da228, 0x1df90855, p0, _r, _ri);
};

global.N_0x7182edda1ee7db5a = function (p0) {
	return _in(0x7182edda, 0x1ee7db5a, p0);
};

global.N_0x71845905bccde781 = function (p0) {
	return _in(0x71845905, 0xbccde781, p0);
};

global.N_0x718c6ecf5e8cbdd4 = function () {
	return _in(0x718c6ecf, 0x5e8cbdd4);
};

global.N_0x718eb706b6e998a0 = function (p0) {
	return _in(0x718eb706, 0xb6e998a0, p0);
};

global.N_0x71d71e08a7ed5bd7 = function (p0) {
	return _in(0x71d71e08, 0xa7ed5bd7, p0);
};

global.N_0x71fa2d1880c48032 = function (p0) {
	return _in(0x71fa2d18, 0x80c48032, p0);
};

global.N_0x72068021f498e6e3 = function (p0, p1, p2, p3) {
	return _in(0x72068021, 0xf498e6e3, p0, p1, p2, p3, _r, _ri);
};

global.N_0x722d6a49200174fe = function (p0, p1, p2, p3, p4) {
	return _in(0x722d6a49, 0x200174fe, p0, p1, p2, p3, p4);
};

global.N_0x722fbe08ef5b87bd = function (p0, p1, p2, p3, p4) {
	return _in(0x722fbe08, 0xef5b87bd, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x725d52f21a5e9e22 = function (p0) {
	return _in(0x725d52f2, 0x1a5e9e22, p0, _r, _ri);
};

global.N_0x725d52f21a5e9ef6 = function (p0) {
	return _in(0x725d52f2, 0x1a5e9ef6, p0, _r, _ri);
};

global.N_0x7264f9ca87a9830b = function (p0) {
	return _in(0x7264f9ca, 0x87a9830b, p0, _r, _ri);
};

global.N_0x7274f84b1501b523 = function (p0) {
	return _in(0x7274f84b, 0x1501b523, p0);
};

global.N_0x727ab6f008bb9f29 = function (p0, p1) {
	return _in(0x727ab6f0, 0x08bb9f29, p0, p1, _r, _ri);
};

global.N_0x728491fb3dffef99 = function (p0) {
	return _in(0x728491fb, 0x3dffef99, p0);
};

global.N_0x72904d3d62af5839 = function () {
	return _in(0x72904d3d, 0x62af5839, _r, _ri);
};

global.N_0x729d52461aea9e22 = function (p0) {
	return _in(0x729d5246, 0x1aea9e22, p0, _r, _ri);
};

global.N_0x729d52f61a5a9e22 = function (p0) {
	return _in(0x729d52f6, 0x1a5a9e22, p0, _r, _ri);
};

global.N_0x72ad59f7b7fb6e24 = function (p0, p1) {
	return _in(0x72ad59f7, 0xb7fb6e24, p0, p1, _r, _ri);
};

global.N_0x72b2e00c9bac6789 = function (p0, p1) {
	return _in(0x72b2e00c, 0x9bac6789, p0, p1, _r, _ri);
};

global.N_0x72b7f65f11fc8896 = function (p0) {
	return _in(0x72b7f65f, 0x11fc8896, p0);
};

global.N_0x72d4cb5db927009c = function (p0, p1, p2) {
	return _in(0x72d4cb5d, 0xb927009c, p0, p1, p2);
};

global.N_0x72e30372e7cc4415 = function (p0, p1) {
	return _in(0x72e30372, 0xe7cc4415, p0, p1);
};

global.N_0x72e4d1c4639bc465 = function (p0, p1) {
	return _in(0x72e4d1c4, 0x639bc465, p0, p1, _r, _ri);
};

global.N_0x73118a3ee9c9b6db = function (p0, p1, p2) {
	return _in(0x73118a3e, 0xe9c9b6db, p0, p1, p2);
};

global.N_0x733077295ab51304 = function (p0) {
	return _in(0x73307729, 0x5ab51304, p0);
};

global.N_0x7332461fc59eb7ec = function (p0) {
	return _in(0x7332461f, 0xc59eb7ec, p0, _r, _ri);
};

global.N_0x73348402566ecb6e = function (p0, p1, p2, p3) {
	return _in(0x73348402, 0x566ecb6e, p0, p1, p2, p3);
};

global.N_0x733c87d4ce22bea2 = function (p0) {
	return _in(0x733c87d4, 0xce22bea2, p0);
};

global.N_0x734311e2852760d0 = function (p0, p1, p2) {
	return _in(0x734311e2, 0x852760d0, p0, p1, p2, _r, _ri);
};

global.N_0x7351da734f989f4e = function (p0) {
	return _in(0x7351da73, 0x4f989f4e, p0, _r, _ri);
};

global.N_0x735662994e60a710 = function (p0, p1) {
	return _in(0x73566299, 0x4e60a710, p0, p1);
};

global.N_0x735762e8d7573e42 = function (p0, p1, p2) {
	return _in(0x735762e8, 0xd7573e42, p0, p1, p2);
};

global.N_0x73616e64696c132e = function (p0, p1) {
	return _in(0x73616e64, 0x696c132e, p0, p1, _r, _ri);
};

global.N_0x73616e64696c616e = function (p0, p1, p2, p3) {
	return _in(0x73616e64, 0x696c616e, p0, p1, p2, p3, _r, _ri);
};

global.N_0x738271b660fe0695 = function (p0, p1, p2, p3, p4) {
	return _in(0x738271b6, 0x60fe0695, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x739b9c6d0e7f7f93 = function (p0, p1) {
	return _in(0x739b9c6d, 0x0e7f7f93, p0, p1);
};

global.N_0x73b40d97d7baad77 = function (p0, p1, p2, p3) {
	return _in(0x73b40d97, 0xd7baad77, p0, p1, p2, p3, _r, _ri);
};

global.N_0x73b6f907b913c860 = function (p0, p1) {
	return _in(0x73b6f907, 0xb913c860, p0, p1);
};

global.N_0x73bad7b2f2db50de = function (p0, p1) {
	return _in(0x73bad7b2, 0xf2db50de, p0, p1);
};

global.N_0x73eb2ef2e92d23bf = function () {
	return _in(0x73eb2ef2, 0xe92d23bf, _r, _ri);
};

global.N_0x73f0d0327bfa0812 = function (p0) {
	return _in(0x73f0d032, 0x7bfa0812, p0, _r, _ri);
};

global.N_0x73f1e4f6df26fe30 = function (p0) {
	return _in(0x73f1e4f6, 0xdf26fe30, p0);
};

global.N_0x73ff6be63dc18819 = function () {
	return _in(0x73ff6be6, 0x3dc18819, _r, _ri);
};

global.N_0x7406c71f4ac2ffcc = function (p0) {
	return _in(0x7406c71f, 0x4ac2ffcc, p0);
};

global.N_0x7408b5c66ba31adb = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x7408b5c6, 0x6ba31adb, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0x7409669c5ed50144 = function (p0) {
	return _in(0x7409669c, 0x5ed50144, p0, _r, _ri);
};

global.N_0x7423f7835770f619 = function (p0) {
	return _in(0x7423f783, 0x5770f619, p0);
};

global.N_0x7455cd705f7e933e = function () {
	return _in(0x7455cd70, 0x5f7e933e);
};

global.N_0x745808bb01cec6b9 = function (p0) {
	return _in(0x745808bb, 0x01cec6b9, p0);
};

global.N_0x7467165ee97d3c68 = function (p0) {
	return _in(0x7467165e, 0xe97d3c68, p0, _r, _ri);
};

global.N_0x747257807b8721ce = function (p0, p1) {
	return _in(0x74725780, 0x7b8721ce, p0, p1, _r, _ri);
};

global.N_0x748c5f51a18cb8f0 = function (p0) {
	return _in(0x748c5f51, 0xa18cb8f0, p0);
};

global.N_0x748d5e0d2a1a4c61 = function (p0, p1, p2) {
	return _in(0x748d5e0d, 0x2a1a4c61, p0, p1, p2);
};

global.N_0x74aca66484cebaf0 = function (p0) {
	return _in(0x74aca664, 0x84cebaf0, p0);
};

global.N_0x74bcceb233ad95b2 = function (p0, p1) {
	return _in(0x74bcceb2, 0x33ad95b2, p0, p1);
};

global.N_0x74c2365fdd1bb48f = function (p0, p1) {
	return _in(0x74c2365f, 0xdd1bb48f, p0, p1);
};

global.N_0x74c2b3dc0b294102 = function (p0) {
	return _in(0x74c2b3dc, 0x0b294102, p0);
};

global.N_0x74c333e34df74e8a = function (action) {
	return _in(0x74c333e3, 0x4df74e8a, _ts(action));
};

global.N_0x74c3b1093728d263 = function (p0, p1) {
	return _in(0x74c3b109, 0x3728d263, p0, p1, _r, _ri);
};

global.N_0x74c8000fdd1bb111 = function (p0, p1) {
	return _in(0x74c8000f, 0xdd1bb111, p0, p1, _r, _ri);
};

global.N_0x74c8000fdd1bb222 = function (p0, p1) {
	return _in(0x74c8000f, 0xdd1bb222, p0, p1, _r, _ri);
};

global.N_0x74c9080fdd1bb48e = function (p0, p1) {
	return _in(0x74c9080f, 0xdd1bb48e, p0, p1);
};

global.N_0x74c9080fdd1bb48f = function (p0, p1) {
	return _in(0x74c9080f, 0xdd1bb48f, p0, p1);
};

global.N_0x74c9090fdd1bb48e = function (p0, p1, p2, p3) {
	return _in(0x74c9090f, 0xdd1bb48e, p0, p1, p2, p3);
};

global.N_0x74c90aaacc1dd48f = function (p0) {
	return _in(0x74c90aaa, 0xcc1dd48f, p0);
};

global.N_0x74e2261d2a66849a = function (p0) {
	return _in(0x74e2261d, 0x2a66849a, p0);
};

global.N_0x74f0209674864cbd = function () {
	return _in(0x74f02096, 0x74864cbd, _r, _ri);
};

global.N_0x74f1d22efa71fab8 = function () {
	return _in(0x74f1d22e, 0xfa71fab8, _r, _ri);
};

global.N_0x74f512e29cb717e2 = function (p0, p1, p2, p3) {
	return _in(0x74f512e2, 0x9cb717e2, p0, p1, p2, p3, _r, _ri);
};

global.N_0x74f99ef7ef503398 = function (p0) {
	return _in(0x74f99ef7, 0xef503398, p0, _r, _ri);
};

global.N_0x74fb3e29e6d10fa9 = function () {
	return _in(0x74fb3e29, 0xe6d10fa9, _r, _ri);
};

global.N_0x750d42c013f64ae7 = function (p0, p1) {
	return _in(0x750d42c0, 0x13f64ae7, p0, p1);
};

global.N_0x751a7e0eaedad0d3 = function (p0, p1, p2) {
	return _in(0x751a7e0e, 0xaedad0d3, p0, p1, p2, _r, _ri);
};

global.N_0x751df00eeff122e3 = function (p0) {
	return _in(0x751df00e, 0xeff122e3, p0);
};

global.N_0x7528720101a807a5 = function (p0, p1) {
	return _in(0x75287201, 0x01a807a5, p0, p1);
};

global.N_0x753b15ad0fd6f3e3 = function (p0) {
	return _in(0x753b15ad, 0x0fd6f3e3, p0, _r, _ri);
};

global.N_0x754616ec6965d1bf = function () {
	return _in(0x754616ec, 0x6965d1bf);
};

global.N_0x754616ec6965d1fb = function () {
	return _in(0x754616ec, 0x6965d1fb);
};

global.N_0x754937c28271bc65 = function (p0) {
	return _in(0x754937c2, 0x8271bc65, p0);
};

global.N_0x7549b9e841940695 = function (vehicle, p1) {
	return _in(0x7549b9e8, 0x41940695, vehicle, p1);
};

global.N_0x755901c7598b97bc = function (p0, p1) {
	return _in(0x755901c7, 0x598b97bc, p0, p1, _r, _ri);
};

global.N_0x755e08680f21ef30 = function (p0) {
	return _in(0x755e0868, 0x0f21ef30, p0, _r, _ri);
};

global.N_0x7563cbca99253d1a = function (p0, p1) {
	return _in(0x7563cbca, 0x99253d1a, p0, p1);
};

global.N_0x756c7b4c43df0422 = function (p0) {
	return _in(0x756c7b4c, 0x43df0422, p0, _r, _ri);
};

global.N_0x7581972adf5d699a = function (p0, p1) {
	return _in(0x7581972a, 0xdf5d699a, p0, p1);
};

global.N_0x7583a9d35248b83f = function (p0) {
	return _in(0x7583a9d3, 0x5248b83f, p0, _r, _ri);
};

global.N_0x758f081db204ddde = function (p0) {
	return _in(0x758f081d, 0xb204ddde, p0, _r, _ri);
};

global.N_0x75a082563b4452e5 = function (p0, p1, p2, p3) {
	return _in(0x75a08256, 0x3b4452e5, p0, p1, p2, p3);
};

global.N_0x75b49acd73617437 = function (vehicle, p1) {
	return _in(0x75b49acd, 0x73617437, vehicle, p1);
};

global.N_0x75ba1cb3b7d40caf = function (ped, p1) {
	return _in(0x75ba1cb3, 0xb7d40caf, ped, p1);
};

global.N_0x75cbf20ba47e4f89 = function (p0, p1, p2, p3) {
	return _in(0x75cbf20b, 0xa47e4f89, p0, p1, p2, p3, _r, _ri);
};

global.N_0x75cfac49301e134e = function (p0, p1, p2) {
	return _in(0x75cfac49, 0x301e134e, p0, p1, p2);
};

global.N_0x75cfac49301e134f = function (p0, p1, p2) {
	return _in(0x75cfac49, 0x301e134f, p0, p1, p2);
};

global.N_0x75d3333409cd33ce = function (p0, p1, p2) {
	return _in(0x75d33334, 0x09cd33ce, p0, p1, p2);
};

global.N_0x75df9e73f2f005fd = function (p0) {
	return _in(0x75df9e73, 0xf2f005fd, p0, _r, _ri);
};

global.N_0x75f90e4051cc084c = function (p0, p1) {
	return _in(0x75f90e40, 0x51cc084c, p0, p1);
};

global.N_0x75fc34a2ba345bd1 = function () {
	return _in(0x75fc34a2, 0xba345bd1, _r, _ri);
};

global.N_0x76160e0396142765 = function (p0) {
	return _in(0x76160e03, 0x96142765, p0, _r, _ri);
};

global.N_0x762fdc4c19e5a981 = function (p0, p1) {
	return _in(0x762fdc4c, 0x19e5a981, p0, p1);
};

global.N_0x763637f9b838b0a7 = function (p0, p1, p2) {
	return _in(0x763637f9, 0xb838b0a7, p0, p1, p2);
};

global.N_0x764db5a48390fbad = function (p0, p1) {
	return _in(0x764db5a4, 0x8390fbad, p0, p1);
};

global.N_0x765e60a1dcb8b1ce = function () {
	return _in(0x765e60a1, 0xdcb8b1ce);
};

global.N_0x766315a564594401 = function (p0, p1, p2) {
	return _in(0x766315a5, 0x64594401, p0, p1, p2);
};

global.N_0x7678fe0455ed1145 = function (p0, p1, p2) {
	return _in(0x7678fe04, 0x55ed1145, p0, p1, p2, _r, _ri);
};

global.N_0x767931c727df2ed7 = function (p0, p1) {
	return _in(0x767931c7, 0x27df2ed7, p0, p1, _r, _ri);
};

global.N_0x7681b677400c7071 = function (p0, p1, p2, p3, p4) {
	return _in(0x7681b677, 0x400c7071, p0, p1, p2, p3, p4);
};

global.N_0x768e81ae285a4b67 = function (p0, p1) {
	return _in(0x768e81ae, 0x285a4b67, p0, p1);
};

global.N_0x769bb7626b8cdb06 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x769bb762, 0x6b8cdb06, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x769e848c66e3c2bb = function (p0) {
	return _in(0x769e848c, 0x66e3c2bb, p0, _i, _i, _r);
};

global.N_0x76bad9d538bca1aa = function (p0, p1) {
	return _in(0x76bad9d5, 0x38bca1aa, p0, p1);
};

global.N_0x76cbcd9eadc00955 = function () {
	return _in(0x76cbcd9e, 0xadc00955);
};

global.N_0x76cf93d4b416b288 = function (p0) {
	return _in(0x76cf93d4, 0xb416b288, p0, _r, _ri);
};

global.N_0x76f7e1bcd623a429 = function (p0) {
	return _in(0x76f7e1bc, 0xd623a429, p0);
};

global.N_0x771dfcb24d19c2f6 = function (p0) {
	return _in(0x771dfcb2, 0x4d19c2f6, p0, _r, _ri);
};

global.N_0x77243ed4f7caaa55 = function (p0) {
	return _in(0x77243ed4, 0xf7caaa55, p0, _r, _ri);
};

global.N_0x772a1969f649e902 = function (p0) {
	return _in(0x772a1969, 0xf649e902, p0, _r, _ri);
};

global.N_0x77525bbf433f2cd6 = function (p0) {
	return _in(0x77525bbf, 0x433f2cd6, p0, _r, _ri);
};

global.N_0x775a1ca7893aa8b5 = function (p0) {
	return _in(0x775a1ca7, 0x893aa8b5, p0, _r, _ri);
};

global.N_0x775b2ed944e44973 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x775b2ed9, 0x44e44973, p0, p1, p2, p3, p4, p5);
};

global.N_0x7761a30432c91297 = function (p0, p1, p2) {
	return _in(0x7761a304, 0x32c91297, p0, p1, p2);
};

global.N_0x777d0571a466b520 = function (p0) {
	return _in(0x777d0571, 0xa466b520, p0);
};

global.N_0x778d4733e0f2f265 = function (p0) {
	return _in(0x778d4733, 0xe0f2f265, p0);
};

global.N_0x77a6e4ad0c496f81 = function (p0) {
	return _in(0x77a6e4ad, 0x0c496f81, p0, _r, _ri);
};

global.N_0x77b0b6d17a3ac9aa = function (p0, p1) {
	return _in(0x77b0b6d1, 0x7a3ac9aa, p0, p1);
};

global.N_0x77b299e8799b1332 = function (p0, p1, p2) {
	return _in(0x77b299e8, 0x799b1332, p0, p1, p2, _r, _ri);
};

global.N_0x77ba37622e22023b = function (p0, p1, p2, p3, p4) {
	return _in(0x77ba3762, 0x2e22023b, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x77d65669a05d1a1a = function () {
	return _in(0x77d65669, 0xa05d1a1a);
};

global.N_0x77e83c315a3b31ca = function (p0) {
	return _in(0x77e83c31, 0x5a3b31ca, p0);
};

global.N_0x78030c7867d8b9b6 = function (p0, p1) {
	return _in(0x78030c78, 0x67d8b9b6, p0, p1);
};

global.N_0x7803436e68c32b26 = function () {
	return _in(0x7803436e, 0x68c32b26);
};

global.N_0x780c5b9ae2819807 = function (p0, p1) {
	return _in(0x780c5b9a, 0xe2819807, p0, p1, _r, _ri);
};

global.N_0x782c94db6469634d = function (p0) {
	return _in(0x782c94db, 0x6469634d, p0);
};

global.N_0x78335e12db0bf961 = function (p0) {
	return _in(0x78335e12, 0xdb0bf961, p0, _r, _ri);
};

global.N_0x7840576c50a13dba = function (p0, p1) {
	return _in(0x7840576c, 0x50a13dba, p0, p1);
};

global.N_0x785177e4d57d7389 = function (p0, p1, p2, p3, p4) {
	return _in(0x785177e4, 0xd57d7389, p0, p1, p2, p3, p4);
};

global.N_0x785639d89f8451ab = function (p0, p1) {
	return _in(0x785639d8, 0x9f8451ab, p0, p1, _r, _rv);
};

global.N_0x787e43477746876f = function (p0) {
	return _in(0x787e4347, 0x7746876f, p0);
};

global.N_0x78815fc52832b690 = function (p0, p1) {
	return _in(0x78815fc5, 0x2832b690, p0, p1);
};

global.N_0x78857fc65cadb909 = function (p0) {
	return _in(0x78857fc6, 0x5cadb909, p0);
};

global.N_0x789dabd18e9024db = function (p0, p1, p2) {
	return _in(0x789dabd1, 0x8e9024db, p0, p1, p2);
};

global.N_0x78a9535af83715c6 = function () {
	return _in(0x78a9535a, 0xf83715c6, _r, _ri);
};

global.N_0x78b3d19af6391a55 = function (p0, p1) {
	return _in(0x78b3d19a, 0xf6391a55, p0, p1);
};

global.N_0x78b4567e18b54480 = function (p0) {
	return _in(0x78b4567e, 0x18b54480, p0);
};

global.N_0x78c2e029db205a3a = function (p0, p1) {
	return _in(0x78c2e029, 0xdb205a3a, p0, p1);
};

global.N_0x78c56b8a7b1d000c = function () {
	return _in(0x78c56b8a, 0x7b1d000c, _r, _ri);
};

global.N_0x78d8c1d4eb80c588 = function (p0) {
	return _in(0x78d8c1d4, 0xeb80c588, p0, _r, _ri);
};

global.N_0x7907969497ea92f5 = function (p0) {
	return _in(0x79079694, 0x97ea92f5, p0, _r, _ri);
};

global.N_0x790ec421078f5c4e = function (p0, p1, p2) {
	return _in(0x790ec421, 0x078f5c4e, p0, p1, p2, _r, _ri);
};

global.N_0x79197f7d2bb5e73a = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x79197f7d, 0x2bb5e73a, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x792e3ef76c911959 = function (p0) {
	return _in(0x792e3ef7, 0x6c911959, p0, _r, _ri);
};

global.N_0x7933754f260b428a = function (p0) {
	return _in(0x7933754f, 0x260b428a, p0, _r, _ri);
};

global.N_0x79407d33328286c6 = function (p0) {
	return _in(0x79407d33, 0x328286c6, p0, _r, _ri);
};

global.N_0x79443d56c8df45ee = function (p0) {
	return _in(0x79443d56, 0xc8df45ee, p0, _r, _ri);
};

global.N_0x794ab1379a74064d = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x794ab137, 0x9a74064d, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0x79559bad83ccd038 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x79559bad, 0x83ccd038, p0, p1, p2, p3, p4, p5);
};

global.N_0x796085220adcc847 = function () {
	return _in(0x79608522, 0x0adcc847, _r, _ri);
};

global.N_0x796eecff0c6d39be = function (p0, p1, p2) {
	return _in(0x796eecff, 0x0c6d39be, p0, p1, p2, _r, _ri);
};

global.N_0x797b3d4d92e56094 = function (p0, p1) {
	return _in(0x797b3d4d, 0x92e56094, p0, p1, _r, _ri);
};

global.N_0x7981037a96e7d174 = function (p0) {
	return _in(0x7981037a, 0x96e7d174, p0);
};

global.N_0x798be43c9393632b = function (p0) {
	return _in(0x798be43c, 0x9393632b, p0);
};

global.N_0x79b1a6e780266db0 = function (p0) {
	return _in(0x79b1a6e7, 0x80266db0, p0, _r, _ri);
};

global.N_0x79c2bec82cfd7f7f = function (p0) {
	return _in(0x79c2bec8, 0x2cfd7f7f, p0, _r, _ri);
};

global.N_0x79e1e511ff7efb13 = function (p0) {
	return _in(0x79e1e511, 0xff7efb13, p0, _r, _ri);
};

global.N_0x79f478ff5f9f4f05 = function (p0) {
	return _in(0x79f478ff, 0x5f9f4f05, p0);
};

global.N_0x79f9c57b8d0dfe90 = function (p0, p1) {
	return _in(0x79f9c57b, 0x8d0dfe90, p0, p1, _r, _ri);
};

global.N_0x7a17b7981560ffa5 = function (p0) {
	return _in(0x7a17b798, 0x1560ffa5, p0);
};

global.N_0x7a1bd123e5cdb6e5 = function () {
	return _in(0x7a1bd123, 0xe5cdb6e5);
};

global.N_0x7a1fdcf35eaa140f = function (p0) {
	return _in(0x7a1fdcf3, 0x5eaa140f, p0);
};

global.N_0x7a35a72a692be9db = function (p0) {
	return _in(0x7a35a72a, 0x692be9db, p0, _r, _ri);
};

global.N_0x7a49d40de437bc8d = function (p0, p1) {
	return _in(0x7a49d40d, 0xe437bc8d, p0, p1);
};

global.N_0x7a4e00364b5d727b = function (p0) {
	return _in(0x7a4e0036, 0x4b5d727b, p0, _r, _ri);
};

global.N_0x7a54d82227a139db = function (p0, p1) {
	return _in(0x7a54d822, 0x27a139db, p0, p1);
};

global.N_0x7a56d66c78d8ef8e = function (p0, p1) {
	return _in(0x7a56d66c, 0x78d8ef8e, p0, p1, _r, _ri);
};

global.N_0x7a76104cc2cc69e8 = function (p0, p1, p2) {
	return _in(0x7a76104c, 0xc2cc69e8, p0, p1, p2, _r, _ri);
};

global.N_0x7a8e8df782b47eb0 = function (p0, p1, p2) {
	return _in(0x7a8e8df7, 0x82b47eb0, p0, p1, p2, _r, _ri);
};

global.N_0x7aa043f6c41d151e = function (p0) {
	return _in(0x7aa043f6, 0xc41d151e, p0, _r, _ri);
};

global.N_0x7abbd9e449e0db00 = function (p0, p1) {
	return _in(0x7abbd9e4, 0x49e0db00, p0, p1);
};

global.N_0x7ac752103856fb20 = function (p0) {
	return _in(0x7ac75210, 0x3856fb20, p0);
};

global.N_0x7ae93c45ec14a166 = function (p0, p1) {
	return _in(0x7ae93c45, 0xec14a166, p0, p1, _r, _ri);
};

global.N_0x7af1bb4504ea5ed9 = function () {
	return _in(0x7af1bb45, 0x04ea5ed9, _r, _ri);
};

global.N_0x7b0279170961a73f = function (p0) {
	return _in(0x7b027917, 0x0961a73f, p0);
};

global.N_0x7b204f88f6c3d287 = function (p0) {
	return _in(0x7b204f88, 0xf6c3d287, p0);
};

global.N_0x7b3ff2d193628126 = function (p0) {
	return _in(0x7b3ff2d1, 0x93628126, p0);
};

global.N_0x7b5c293238ee4f20 = function (p0) {
	return _in(0x7b5c2932, 0x38ee4f20, p0, _r, _ri);
};

global.N_0x7b6a04f98bbafb2c = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0x7b6a04f9, 0x8bbafb2c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.N_0x7b8c2b846c05e5ad = function () {
	return _in(0x7b8c2b84, 0x6c05e5ad, _r, _ri);
};

global.N_0x7baa30c9bbe8aee7 = function (p0, p1) {
	return _in(0x7baa30c9, 0xbbe8aee7, p0, p1, _r, _ri);
};

global.N_0x7bb810e8b343ac7b = function (p0) {
	return _in(0x7bb810e8, 0xb343ac7b, p0, _r, _ri);
};

global.N_0x7bca0a3972708436 = function (p0, p1) {
	return _in(0x7bca0a39, 0x72708436, p0, p1, _r, _ri);
};

global.N_0x7bcc6087d130312a = function (p0) {
	return _in(0x7bcc6087, 0xd130312a, p0, _r, _ri);
};

global.N_0x7be0746539def0c8 = function (p0, p1) {
	return _in(0x7be07465, 0x39def0c8, p0, p1, _r, _ri);
};

global.N_0x7be607daff382fd2 = function (p0, p1, p2) {
	return _in(0x7be607da, 0xff382fd2, p0, p1, p2, _r, _ri);
};

global.N_0x7c00cfc48a782dc0 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x7c00cfc4, 0x8a782dc0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x7c015d8bcec72cf4 = function (p0, p1) {
	return _in(0x7c015d8b, 0xcec72cf4, p0, p1);
};

global.N_0x7c06330bfdda182e = function (p0) {
	return _in(0x7c06330b, 0xfdda182e, p0);
};

global.N_0x7c08e7cb8d951b70 = function (p0, p1) {
	return _in(0x7c08e7cb, 0x8d951b70, p0, p1);
};

global.N_0x7c10221ce718aa72 = function (p0, p1) {
	return _in(0x7c10221c, 0xe718aa72, p0, p1);
};

global.N_0x7c1c2062cfad06fe = function (unlockHash, data) {
	return _in(0x7c1c2062, 0xcfad06fe, _ch(unlockHash), _ii(data) /* may be optional */);
};

global.N_0x7c2abf6e556b21fc = function (p0, p1, p2, p3) {
	return _in(0x7c2abf6e, 0x556b21fc, p0, p1, p2, p3);
};

global.N_0x7c32191d9fb2bdea = function (p0) {
	return _in(0x7c32191d, 0x9fb2bdea, p0);
};

global.N_0x7c334ff4d9215912 = function (p0) {
	return _in(0x7c334ff4, 0xd9215912, p0, _r, _ri);
};

global.N_0x7c348310a6e2fb91 = function (p0, p1) {
	return _in(0x7c348310, 0xa6e2fb91, p0, p1);
};

global.N_0x7c511e91738a0828 = function (p0, p1, p2, p3) {
	return _in(0x7c511e91, 0x738a0828, p0, p1, p2, p3);
};

global.N_0x7c680ff55617f82f = function () {
	return _in(0x7c680ff5, 0x5617f82f, _r, _ri);
};

global.N_0x7c709c01d43d94cd = function () {
	return _in(0x7c709c01, 0xd43d94cd);
};

global.N_0x7c7e4ab748ea3b07 = function () {
	return _in(0x7c7e4ab7, 0x48ea3b07, _r, _ri);
};

global.N_0x7c803bdc8343228d = function (p0) {
	return _in(0x7c803bdc, 0x8343228d, p0, _r, _ri);
};

global.N_0x7c8aa850617651d9 = function (p0, p1) {
	return _in(0x7c8aa850, 0x617651d9, p0, p1, _r, _ri);
};

global.N_0x7c907e8a725e5fd2 = function (p0) {
	return _in(0x7c907e8a, 0x725e5fd2, p0);
};

global.N_0x7c981de05a7403a0 = function () {
	return _in(0x7c981de0, 0x5a7403a0, _r);
};

global.N_0x7c9e45a4ced2e8da = function (p0, p1) {
	return _in(0x7c9e45a4, 0xced2e8da, p0, p1);
};

global.N_0x7cc2186c32d3540a = function (p0, p1) {
	return _in(0x7cc2186c, 0x32d3540a, p0, p1, _r, _ri);
};

global.N_0x7ce9dc58e3e4755f = function () {
	return _in(0x7ce9dc58, 0xe3e4755f, _r, _ri);
};

global.N_0x7cef4ac79f7e7fad = function (p0, p1, p2, p3, p4) {
	return _in(0x7cef4ac7, 0x9f7e7fad, p0, p1, p2, p3, p4);
};

global.N_0x7cf96f1250ef3221 = function (p0) {
	return _in(0x7cf96f12, 0x50ef3221, p0, _r, _ri);
};

global.N_0x7d0f2014db28dd01 = function (p0, p1, p2) {
	return _in(0x7d0f2014, 0xdb28dd01, p0, p1, p2, _r, _ri);
};

global.N_0x7d4411d6736cd295 = function (p0, p1) {
	return _in(0x7d4411d6, 0x736cd295, p0, p1, _r, _ri);
};

global.N_0x7d4e70a67a651c71 = function (p0) {
	return _in(0x7d4e70a6, 0x7a651c71, p0);
};

global.N_0x7d654266025e921b = function (p0) {
	return _in(0x7d654266, 0x025e921b, p0);
};

global.N_0x7d7285efeab5af15 = function (p0, p1) {
	return _in(0x7d7285ef, 0xeab5af15, p0, p1);
};

global.N_0x7dd7fb3480d8083e = function (p0) {
	return _in(0x7dd7fb34, 0x80d8083e, p0);
};

global.N_0x7dddcf815e650ff5 = function (p0) {
	return _in(0x7dddcf81, 0x5e650ff5, p0, _r, _ri);
};

global.N_0x7de4643157ad646c = function (p0) {
	return _in(0x7de46431, 0x57ad646c, p0);
};

global.N_0x7de9692c6f64cfe8 = function (p0, p1, p2, p3) {
	return _in(0x7de9692c, 0x6f64cfe8, p0, p1, p2, p3);
};

global.N_0x7dfb49bcdb73089a = function (p0, p1) {
	return _in(0x7dfb49bc, 0xdb73089a, p0, p1);
};

global.N_0x7dff8f94937d2659 = function () {
	return _in(0x7dff8f94, 0x937d2659);
};

global.N_0x7e002a36aefcfb55 = function () {
	return _in(0x7e002a36, 0xaefcfb55);
};

global.N_0x7e02e4218d916b94 = function (p0, p1, p2) {
	return _in(0x7e02e421, 0x8d916b94, p0, p1, p2, _r, _ri);
};

global.N_0x7e176c676f8652a9 = function (p0) {
	return _in(0x7e176c67, 0x6f8652a9, p0);
};

global.N_0x7e2c766adb2c5f1a = function (p0, p1) {
	return _in(0x7e2c766a, 0xdb2c5f1a, p0, p1);
};

global.N_0x7e300b5b86ab1d1a = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0x7e300b5b, 0x86ab1d1a, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.N_0x7e3f546acfe6c8d9 = function (entity) {
	return _in(0x7e3f546a, 0xcfe6c8d9, entity);
};

global.N_0x7e40a01b11398fcb = function () {
	return _in(0x7e40a01b, 0x11398fcb);
};

global.N_0x7e5185b979706210 = function (p0, p1) {
	return _in(0x7e5185b9, 0x79706210, p0, p1);
};

global.N_0x7e6bc0b94f5928f0 = function (popZone, p1, p2) {
	return _in(0x7e6bc0b9, 0x4f5928f0, popZone, p1, p2);
};

global.N_0x7e7b19a4355fee13 = function (p0, p1) {
	return _in(0x7e7b19a4, 0x355fee13, p0, p1, _r, _ri);
};

global.N_0x7e8f86a4fa33033c = function () {
	return _in(0x7e8f86a4, 0xfa33033c, _r, _ri);
};

global.N_0x7e8f9949b7aabbf0 = function (p0, p1, p2) {
	return _in(0x7e8f9949, 0xb7aabbf0, p0, p1, p2);
};

global.N_0x7ec0d68233e391ac = function (p0) {
	return _in(0x7ec0d682, 0x33e391ac, p0, _r, _ri);
};

global.N_0x7ee3a8660f38797e = function (p0) {
	return _in(0x7ee3a866, 0x0f38797e, p0, _r, _ri);
};

global.N_0x7ef2a2fe38d74456 = function (p0, p1) {
	return _in(0x7ef2a2fe, 0x38d74456, p0, p1);
};

global.N_0x7efacc589b98c488 = function (p0) {
	return _in(0x7efacc58, 0x9b98c488, p0, _r, _ri);
};

global.N_0x7f090958ae95b61b = function (p0, p1) {
	return _in(0x7f090958, 0xae95b61b, p0, p1, _r, _ri);
};

global.N_0x7f20092547b4ddea = function (p0) {
	return _in(0x7f200925, 0x47b4ddea, p0);
};

global.N_0x7f458b543006c8fe = function (p0, p1) {
	return _in(0x7f458b54, 0x3006c8fe, p0, p1);
};

global.N_0x7f4ce164d9a11dfe = function () {
	return _in(0x7f4ce164, 0xd9a11dfe, _r, _ri);
};

global.N_0x7f5d88333ee8a86f = function (p0, p1) {
	return _in(0x7f5d8833, 0x3ee8a86f, p0, p1);
};

global.N_0x7f78cd75cc4539e4 = function (p0) {
	return _in(0x7f78cd75, 0xcc4539e4, p0);
};

global.N_0x7f89e15a8fb8de97 = function () {
	return _in(0x7f89e15a, 0x8fb8de97);
};

global.N_0x7f8e2b131e1dca6c = function (p0, p1) {
	return _in(0x7f8e2b13, 0x1e1dca6c, p0, p1);
};

global.N_0x7f9b9791d4cb71f6 = function (p0, p1, p2, p3) {
	return _in(0x7f9b9791, 0xd4cb71f6, p0, p1, p2, p3, _r, _ri);
};

global.N_0x7fa58ced69405f9a = function (p0, p1) {
	return _in(0x7fa58ced, 0x69405f9a, p0, p1);
};

global.N_0x7fb0088e8769cddb = function (p0, p1) {
	return _in(0x7fb0088e, 0x8769cddb, p0, p1);
};

global.N_0x7fb78b2199c10e92 = function (p0) {
	return _in(0x7fb78b21, 0x99c10e92, p0);
};

global.N_0x7fc60c94c83c5cd7 = function (p0, p1, p2) {
	return _in(0x7fc60c94, 0xc83c5cd7, p0, p1, p2);
};

global.N_0x7fc667f6ddfbcdcc = function (p0) {
	return _in(0x7fc667f6, 0xddfbcdcc, p0, _r, _ri);
};

global.N_0x7fc84e85d98f063d = function (p0) {
	return _in(0x7fc84e85, 0xd98f063d, p0, _r, _ri);
};

global.N_0x7fcd49388bc9b775 = function (p0, p1) {
	return _in(0x7fcd4938, 0x8bc9b775, p0, p1);
};

global.N_0x7fd78dfd0c5d7b9b = function (p0) {
	return _in(0x7fd78dfd, 0x0c5d7b9b, p0, _r, _ri);
};

global.N_0x7fee4f07c54b6b3c = function (p0, p1) {
	return _in(0x7fee4f07, 0xc54b6b3c, p0, p1, _r, _ri);
};

global.N_0x7ff72de061df55e2 = function (p0, p1, p2) {
	return _in(0x7ff72de0, 0x61df55e2, p0, p1, p2);
};

global.N_0x800df3fc913355f3 = function (p0) {
	return _in(0x800df3fc, 0x913355f3, p0, _r, _ri);
};

global.N_0x801917e7d7bce418 = function (p0) {
	return _in(0x801917e7, 0xd7bce418, p0);
};

global.N_0x801bd27403f3cba0 = function (p0, p1, p2, p3) {
	return _in(0x801bd274, 0x03f3cba0, p0, p1, p2, p3);
};

global.N_0x802092b07e3b1eea = function (p0, p1, p2, p3, p4) {
	return _in(0x802092b0, 0x7e3b1eea, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x804425c4bbd00883 = function (p0) {
	return _in(0x804425c4, 0xbbd00883, p0, _r, _ri);
};

global.N_0x8049b17bec937662 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x8049b17b, 0xec937662, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x806862e5d266cf38 = function (p0, p1, p2) {
	return _in(0x806862e5, 0xd266cf38, p0, p1, p2, _r, _ri);
};

global.N_0x807e119f80231732 = function (p0) {
	return _in(0x807e119f, 0x80231732, p0);
};

global.N_0x808077647856de62 = function (p0, p1) {
	return _in(0x80807764, 0x7856de62, p0, p1, _r, _ri);
};

global.N_0x80a02d9f948a8bca = function (p0, p1) {
	return _in(0x80a02d9f, 0x948a8bca, p0, p1, _r, _ri);
};

global.N_0x80b3e0597366adf1 = function () {
	return _in(0x80b3e059, 0x7366adf1);
};

global.N_0x80bb243789008a82 = function (p0, p1) {
	return _in(0x80bb2437, 0x89008a82, p0, p1, _r, _ri);
};

global.N_0x80d78bdc9d88ef07 = function (p0, p1, p2, p3) {
	return _in(0x80d78bdc, 0x9d88ef07, p0, p1, p2, p3, _r, _ri);
};

global.N_0x80d7a3e39b120bc4 = function () {
	return _in(0x80d7a3e3, 0x9b120bc4, _r, _ri);
};

global.N_0x80ddccb2f4a3eb57 = function (ped, vehicle, p2, p3, p4) {
	return _in(0x80ddccb2, 0xf4a3eb57, ped, vehicle, p2, p3, p4, _r);
};

global.N_0x80e9c316ef84dd81 = function (p0) {
	return _in(0x80e9c316, 0xef84dd81, p0, _r, _ri);
};

global.N_0x80fdeb3a9e9aa578 = function (p0, p1) {
	return _in(0x80fdeb3a, 0x9e9aa578, p0, p1);
};

global.N_0x8101ba1c0b462412 = function (p0, p1) {
	return _in(0x8101ba1c, 0x0b462412, p0, p1);
};

global.N_0x810e8ae9afea7e54 = function (p0) {
	return _in(0x810e8ae9, 0xafea7e54, p0, _r, _ri);
};

global.N_0x811a748b1be231ba = function (p0) {
	return _in(0x811a748b, 0x1be231ba, p0, _r, _ri);
};

global.N_0x8127c5aa05c5a210 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x8127c5aa, 0x05c5a210, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x812c1563185c6fb2 = function () {
	return _in(0x812c1563, 0x185c6fb2);
};

global.N_0x812ce61debcab948 = function (p0, p1, p2) {
	return _in(0x812ce61d, 0xebcab948, p0, p1, p2);
};

global.N_0x814729078aed6d30 = function () {
	return _in(0x81472907, 0x8aed6d30);
};

global.N_0x814d453fcfdf119f = function (p0, p1, p2) {
	return _in(0x814d453f, 0xcfdf119f, p0, p1, p2);
};

global.N_0x815653a42c5abe76 = function () {
	return _in(0x815653a4, 0x2c5abe76);
};

global.N_0x815c0074a1bc0d93 = function (p0, p1) {
	return _in(0x815c0074, 0xa1bc0d93, p0, p1);
};

global.N_0x815c4065ae6e6071 = function (p0, p1, p2) {
	return _in(0x815c4065, 0xae6e6071, p0, p1, p2, _r, _ri);
};

global.N_0x816a3acd265e2297 = function (p0, p1) {
	return _in(0x816a3acd, 0x265e2297, p0, p1);
};

global.N_0x81801291806dbc50 = function (p0) {
	return _in(0x81801291, 0x806dbc50, p0, _r, _ri);
};

global.N_0x818241b3eda84191 = function (p0, p1) {
	return _in(0x818241b3, 0xeda84191, p0, p1);
};

global.N_0x81847c2134039bdc = function (p0) {
	return _in(0x81847c21, 0x34039bdc, p0, _r, _ri);
};

global.N_0x818c6ca9b659e8ec = function (p0) {
	return _in(0x818c6ca9, 0xb659e8ec, p0);
};

global.N_0x81948dfe4f5a0283 = function (p0) {
	return _in(0x81948dfe, 0x4f5a0283, p0);
};

global.N_0x819add5ef1742f47 = function (p0, p1) {
	return _in(0x819add5e, 0xf1742f47, p0, p1);
};

global.N_0x81b75428a7813e67 = function (p0, p1) {
	return _in(0x81b75428, 0xa7813e67, p0, p1);
};

global.N_0x81d7183e7a8eca72 = function (p0) {
	return _in(0x81d7183e, 0x7a8eca72, p0, _r, _ri);
};

global.N_0x81dcfd13cf39920e = function () {
	return _in(0x81dcfd13, 0xcf39920e, _r, _ri);
};

global.N_0x81f4e92be3958364 = function (p0, p1, p2) {
	return _in(0x81f4e92b, 0xe3958364, p0, p1, p2);
};

global.N_0x81fb74c83c2ed69f = function (p0) {
	return _in(0x81fb74c8, 0x3c2ed69f, p0, _r, _ri);
};

global.N_0x821c32c728b24477 = function (p0, p1, p2) {
	return _in(0x821c32c7, 0x28b24477, p0, p1, p2);
};

global.N_0x822a001bcea5bd81 = function (p0, p1, p2, p3) {
	return _in(0x822a001b, 0xcea5bd81, p0, p1, p2, p3, _r, _ri);
};

global.N_0x8232f37df762acb2 = function (p0) {
	return _in(0x8232f37d, 0xf762acb2, p0);
};

global.N_0x8245c1f3262f4ac2 = function (p0) {
	return _in(0x8245c1f3, 0x262f4ac2, p0);
};

global.N_0x825f6dd559a0895b = function (p0) {
	return _in(0x825f6dd5, 0x59a0895b, p0, _r, _ri);
};

global.N_0x8268b098f6fca4e2 = function (p0, p1) {
	return _in(0x8268b098, 0xf6fca4e2, p0, p1);
};

global.N_0x827a58ced9d4d5b4 = function (p0, p1) {
	return _in(0x827a58ce, 0xd9d4d5b4, p0, p1);
};

/**
 * BG_*
 * @param p0 :
 */
global.N_0x829cd22e043a2577 = function (p0) {
	return _in(0x829cd22e, 0x043a2577, _ch(p0), _r, _ri);
};

global.N_0x82cb0f3f0c7785e5 = function (p0) {
	return _in(0x82cb0f3f, 0x0c7785e5, p0, _r, _ri);
};

global.N_0x82e41d6ade924fca = function (p0) {
	return _in(0x82e41d6a, 0xde924fca, p0);
};

global.N_0x82ed59f095056550 = function (p0, p1) {
	return _in(0x82ed59f0, 0x95056550, p0, p1);
};

global.N_0x82f11e1296996574 = function (p0) {
	return _in(0x82f11e12, 0x96996574, p0);
};

global.N_0x82fa24c3d3fcd9b7 = function (p0, p1, p2) {
	return _in(0x82fa24c3, 0xd3fcd9b7, p0, p1, p2, _r, _ri);
};

global.N_0x8301d87b1b89e219 = function (p0, p1) {
	return _in(0x8301d87b, 0x1b89e219, p0, p1);
};

global.N_0x8312f09c56149a8a = function (p0) {
	return _in(0x8312f09c, 0x56149a8a, p0);
};

global.N_0x8314fc2013ece2da = function (p0, p1, p2) {
	return _in(0x8314fc20, 0x13ece2da, p0, p1, p2, _r, _ri);
};

global.N_0x831bf01c56149a8a = function (p0) {
	return _in(0x831bf01c, 0x56149a8a, p0);
};

global.N_0x833d8268d51b4522 = function (p0) {
	return _in(0x833d8268, 0xd51b4522, p0, _r, _ri);
};

global.N_0x833f0053340ef413 = function (p0) {
	return _in(0x833f0053, 0x340ef413, p0, _r, _ri);
};

global.N_0x835f131e7dc8f97a = function (p0, p1, p2) {
	return _in(0x835f131e, 0x7dc8f97a, p0, p1, p2, _r, _ri);
};

global.N_0x8360c47380b6f351 = function (p0, p1, p2, p3) {
	return _in(0x8360c473, 0x80b6f351, p0, p1, p2, p3, _r, _ri);
};

global.N_0x8370d34bd2e60b73 = function () {
	return _in(0x8370d34b, 0xd2e60b73);
};

global.N_0x8379e05871ad24e0 = function () {
	return _in(0x8379e058, 0x71ad24e0);
};

global.N_0x838c216c2b05a009 = function (p0, p1) {
	return _in(0x838c216c, 0x2b05a009, p0, p1);
};

global.N_0x8398438d8f14f56d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x8398438d, 0x8f14f56d, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x839c9f124be74d94 = function (p0, p1, p2, p3, p4) {
	return _in(0x839c9f12, 0x4be74d94, p0, p1, p2, p3, p4);
};

global.N_0x83acc65d9acec5ef = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x83acc65d, 0x9acec5ef, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), _fv(p7), _fv(p8), p9, _r, _rv);
};

global.N_0x83b8d50eb9446bba = function (p0, p1) {
	return _in(0x83b8d50e, 0xb9446bba, p0, p1);
};

global.N_0x83c989d5b5b5b466 = function (p0, p1) {
	return _in(0x83c989d5, 0xb5b5b466, p0, p1);
};

global.N_0x83d43f0fd5276e4d = function (p0, p1) {
	return _in(0x83d43f0f, 0xd5276e4d, p0, p1, _r, _ri);
};

global.N_0x83f28ce49fbbffba = function (p0) {
	return _in(0x83f28ce4, 0x9fbbffba, p0, _r);
};

global.N_0x83fcd6921fc8fd05 = function (p0, p1) {
	return _in(0x83fcd692, 0x1fc8fd05, p0, p1);
};

global.N_0x83fe8d7229593017 = function () {
	return _in(0x83fe8d72, 0x29593017);
};

global.N_0x841475ac96e794d1 = function (p0) {
	return _in(0x841475ac, 0x96e794d1, p0, _r, _ri);
};

global.N_0x8425c5f057012dab = function (p0) {
	return _in(0x8425c5f0, 0x57012dab, p0, _r, _ri);
};

global.N_0x842ccc9491ffcd9b = function (p0) {
	return _in(0x842ccc94, 0x91ffcd9b, p0, _r, _ri);
};

global.N_0x8433e1954be323fc = function (p0) {
	return _in(0x8433e195, 0x4be323fc, p0, _r, _ri);
};

global.N_0x84481018e668e1b8 = function (p0, p1, p2) {
	return _in(0x84481018, 0xe668e1b8, p0, p1, p2);
};

global.N_0x844ceee428ea35b0 = function (p0, p1) {
	return _in(0x844ceee4, 0x28ea35b0, p0, p1, _r, _ri);
};

global.N_0x8451e87d3c2b0286 = function (p0, p1, p2) {
	return _in(0x8451e87d, 0x3c2b0286, p0, p1, p2);
};

global.N_0x8459b3e64257b21d = function (p0) {
	return _in(0x8459b3e6, 0x4257b21d, _fv(p0));
};

global.N_0x8462be2341a55b6f = function (p0) {
	return _in(0x8462be23, 0x41a55b6f, p0);
};

global.N_0x8472a1789478f82f = function (p0) {
	return _in(0x8472a178, 0x9478f82f, p0);
};

global.N_0x847748ae5d7b1071 = function (p0) {
	return _in(0x847748ae, 0x5d7b1071, p0, _r, _ri);
};

global.N_0x84848e1c0fc67dbb = function (p0) {
	return _in(0x84848e1c, 0x0fc67dbb, p0, _r, _ri);
};

global.N_0x849791ebbdba0362 = function (p0) {
	return _in(0x849791eb, 0xbdba0362, p0, _r, _ri);
};

global.N_0x849bd6c6314793d0 = function (p0) {
	return _in(0x849bd6c6, 0x314793d0, p0, _r, _ri);
};

global.N_0x84bd27ddf9575816 = function (p0, p1) {
	return _in(0x84bd27dd, 0xf9575816, p0, p1);
};

global.N_0x84ccf9a12942c83d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x84ccf9a1, 0x2942c83d, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x84d0bf2b21862059 = function (p0) {
	return _in(0x84d0bf2b, 0x21862059, p0, _r, _ri);
};

global.N_0x84eedb2c6e650000 = function (p0) {
	return _in(0x84eedb2c, 0x6e650000, p0);
};

global.N_0x84f0ba7462ff8d58 = function (p1, p2, p3) {
	return _in(0x84f0ba74, 0x62ff8d58, _i, p1, p2, p3, _r);
};

global.N_0x8505e05fc8822843 = function (p0) {
	return _in(0x8505e05f, 0xc8822843, p0);
};

global.N_0x850c940ee3e7b8b5 = function (entity, toggle) {
	return _in(0x850c940e, 0xe3e7b8b5, entity, toggle);
};

global.N_0x850ce59dec2028f3 = function (p0, p1) {
	return _in(0x850ce59d, 0xec2028f3, p0, p1);
};

global.N_0x851966e1e35af491 = function (p0, p1) {
	return _in(0x851966e1, 0xe35af491, p0, p1);
};

global.N_0x8521c2e235558278 = function (p0) {
	return _in(0x8521c2e2, 0x35558278, p0, _r, _ri);
};

global.N_0x853b0fa4d8732c57 = function (p0) {
	return _in(0x853b0fa4, 0xd8732c57, p0, _r, _ri);
};

global.N_0x854bc9b1a1ccd034 = function (p0, p1) {
	return _in(0x854bc9b1, 0xa1ccd034, p0, p1, _r, _ri);
};

global.N_0x8569c38d2fb80650 = function (p0, p1) {
	return _in(0x8569c38d, 0x2fb80650, p0, p1, _r, _ri);
};

global.N_0x856ce8fde2416602 = function (p0) {
	return _in(0x856ce8fd, 0xe2416602, p0, _r, _ri);
};

global.N_0x857acb0ab4bd0d55 = function (p0) {
	return _in(0x857acb0a, 0xb4bd0d55, p0, _r, _ri);
};

global.N_0x8591ee69cc3ed257 = function (p0, p1) {
	return _in(0x8591ee69, 0xcc3ed257, p0, p1);
};

global.N_0x8593a8cb0ed2c3b4 = function (p0) {
	return _in(0x8593a8cb, 0x0ed2c3b4, p0, _r, _ri);
};

global.N_0x85b8f04555ab49b8 = function (p0) {
	return _in(0x85b8f045, 0x55ab49b8, p0, _r, _ri);
};

global.N_0x85d39f5e3b6d7eb0 = function (p0, p1, p2) {
	return _in(0x85d39f5e, 0x3b6d7eb0, p0, p1, p2, _r, _ri);
};

global.N_0x85e4d7b225a30ed1 = function (p0, p1) {
	return _in(0x85e4d7b2, 0x25a30ed1, p0, p1, _r, _ri);
};

global.N_0x85ea0bec7b1f7622 = function () {
	return _in(0x85ea0bec, 0x7b1f7622, _r, _ri);
};

global.N_0x85f500f4e24ca43e = function (p0, p1) {
	return _in(0x85f500f4, 0xe24ca43e, p0, p1);
};

global.N_0x860ddfe97cc94df0 = function (p0, p1, p2) {
	return _in(0x860ddfe9, 0x7cc94df0, p0, p1, p2, _r, _ri);
};

global.N_0x862c5040f4888741 = function (p0, p1) {
	return _in(0x862c5040, 0xf4888741, p0, p1, _r, _ri);
};

global.N_0x864a842b86993851 = function (p0) {
	return _in(0x864a842b, 0x86993851, p0);
};

global.N_0x865732725536ee39 = function (p0) {
	return _in(0x86573272, 0x5536ee39, p0, _r, _rv);
};

global.N_0x865f36299079fb75 = function (p0) {
	return _in(0x865f3629, 0x9079fb75, p0, _r, _ri);
};

global.N_0x865fec2fa899f29c = function (p0) {
	return _in(0x865fec2f, 0xa899f29c, p0, _r, _ri);
};

global.N_0x8674d138391ffb1b = function (p0, p1) {
	return _in(0x8674d138, 0x391ffb1b, p0, p1);
};

global.N_0x869a7015bd4606e9 = function (p0) {
	return _in(0x869a7015, 0xbd4606e9, p0);
};

global.N_0x86a68e84e5884951 = function (p0) {
	return _in(0x86a68e84, 0xe5884951, p0);
};

global.N_0x86afc343cf7f0b34 = function (p0, p1, p2, p3, p4) {
	return _in(0x86afc343, 0xcf7f0b34, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x86bb5ff45f193a02 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x86bb5ff4, 0x5f193a02, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x86f0b6730c32ac14 = function (p0, p1) {
	return _in(0x86f0b673, 0x0c32ac14, p0, p1);
};

global.N_0x86fa6d8b48667d75 = function (p0) {
	return _in(0x86fa6d8b, 0x48667d75, p0, _r, _ri);
};

global.N_0x86fafc18e3d4380c = function (p0, p1) {
	return _in(0x86fafc18, 0xe3d4380c, p0, p1);
};

global.N_0x86fd10251a7118a4 = function (p0, p1) {
	return _in(0x86fd1025, 0x1a7118a4, p0, p1, _r, _ri);
};

global.N_0x8702d9150d9fbb3d = function (p0, p1) {
	return _in(0x8702d915, 0x0d9fbb3d, p0, p1, _r, _ri);
};

global.N_0x870634493cb4372c = function (p0, p1) {
	return _in(0x87063449, 0x3cb4372c, p0, p1);
};

global.N_0x870708a6e147a9ad = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x870708a6, 0xe147a9ad, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.N_0x870e9981ed27c815 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x870e9981, 0xed27c815, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x87247bc60b60bed8 = function (p0) {
	return _in(0x87247bc6, 0x0b60bed8, p0);
};

global.N_0x87344305778e5415 = function (p0, p1) {
	return _in(0x87344305, 0x778e5415, p0, p1);
};

global.N_0x873aaf600cc36dac = function (p0) {
	return _in(0x873aaf60, 0x0cc36dac, p0);
};

global.N_0x873c792e07a32c8b = function (p0, p1) {
	return _in(0x873c792e, 0x07a32c8b, p0, p1);
};

global.N_0x8750f69a720c2e41 = function (p0, p1, p2) {
	return _in(0x8750f69a, 0x720c2e41, p0, p1, p2, _r, _ri);
};

global.N_0x877ea24eb1614495 = function (p0, p1, p2) {
	return _in(0x877ea24e, 0xb1614495, p0, p1, p2, _r, _ri);
};

global.N_0x8785e6e40c7a8819 = function (p0) {
	return _in(0x8785e6e4, 0x0c7a8819, p0, _r, _ri);
};

global.N_0x878b68960c1c2a35 = function (p0, p1) {
	return _in(0x878b6896, 0x0c1c2a35, p0, p1, _r, _ri);
};

global.N_0x878e8104fa27cdae = function (p0, p1) {
	return _in(0x878e8104, 0xfa27cdae, p0, p1);
};

global.N_0x8798cf6815b8fe0f = function (p0, p1) {
	return _in(0x8798cf68, 0x15b8fe0f, p0, p1);
};

global.N_0x87b66d77d545db66 = function (p0, p1, p2, p3) {
	return _in(0x87b66d77, 0xd545db66, p0, p1, p2, p3);
};

global.N_0x87b974e54c71ba7b = function (p0, p1) {
	return _in(0x87b974e5, 0x4c71ba7b, p0, p1);
};

global.N_0x87c2724a56f66020 = function (p0) {
	return _in(0x87c2724a, 0x56f66020, p0);
};

global.N_0x87e6302fc61208cc = function (p0) {
	return _in(0x87e6302f, 0xc61208cc, p0);
};

global.N_0x87f005c969ef1563 = function () {
	return _in(0x87f005c9, 0x69ef1563, _r, _ri);
};

global.N_0x8800776e410eb669 = function (p0) {
	return _in(0x8800776e, 0x410eb669, p0, _r, _ri);
};

global.N_0x8822f124788b8d0a = function (p0, p1) {
	return _in(0x8822f124, 0x788b8d0a, p0, p1);
};

global.N_0x8822f139408b8d0a = function (p0) {
	return _in(0x8822f139, 0x408b8d0a, p0, _r, _ri);
};

global.N_0x88544c0e3291dcae = function (p0) {
	return _in(0x88544c0e, 0x3291dcae, p0);
};

global.N_0x885d19ac2b6fbff4 = function (p0, p1) {
	return _in(0x885d19ac, 0x2b6fbff4, p0, p1);
};

global.N_0x886171a12f400b89 = function (p0, p1, p2) {
	return _in(0x886171a1, 0x2f400b89, p0, p1, p2, _r, _ri);
};

global.N_0x886dfd3e185c8a89 = function (p0, p1, p2, p3, p4) {
	return _in(0x886dfd3e, 0x185c8a89, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x8878ff3eee2868a9 = function (p0, p1) {
	return _in(0x8878ff3e, 0xee2868a9, p0, p1);
};

global.N_0x8886d83a430537fd = function (p0, p1) {
	return _in(0x8886d83a, 0x430537fd, p0, p1);
};

global.N_0x88a5564b19c15391 = function (p0) {
	return _in(0x88a5564b, 0x19c15391, p0, _r, _ri);
};

global.N_0x88a95bb640fc186f = function (p0) {
	return _in(0x88a95bb6, 0x40fc186f, p0);
};

global.N_0x88ad6cc10d8d35b2 = function (p0) {
	return _in(0x88ad6cc1, 0x0d8d35b2, p0, _r, _ri);
};

global.N_0x88b2026a3b0be33d = function (p0, p1) {
	return _in(0x88b2026a, 0x3b0be33d, p0, p1);
};

global.N_0x88b58b83a43a8cab = function (p0, p1, p2) {
	return _in(0x88b58b83, 0xa43a8cab, p0, p1, p2, _r, _ri);
};

global.N_0x88bc5f4aef77fc4e = function (p0, p1) {
	return _in(0x88bc5f4a, 0xef77fc4e, p0, p1);
};

global.N_0x88d9d76d78065487 = function (p0) {
	return _in(0x88d9d76d, 0x78065487, p0, _r, _ri);
};

global.N_0x88e32db8c1a4aa4b = function (ped, p1) {
	return _in(0x88e32db8, 0xc1a4aa4b, ped, _fv(p1));
};

global.N_0x88effed5fe8b0b4a = function (p0) {
	return _in(0x88effed5, 0xfe8b0b4a, p0, _r, _ri);
};

global.N_0x88fd60d846d9cd63 = function (p0) {
	return _in(0x88fd60d8, 0x46d9cd63, p0);
};

global.N_0x8910c24b7e0046ec = function () {
	return _in(0x8910c24b, 0x7e0046ec);
};

global.N_0x893128cdb4b81fbb = function (p0, p1, p2) {
	return _in(0x893128cd, 0xb4b81fbb, p0, p1, p2, _r, _ri);
};

global.N_0x89314fb3463e28de = function (p0) {
	return _in(0x89314fb3, 0x463e28de, p0);
};

global.N_0x894b5ecab45d2342 = function (p0, p1) {
	return _in(0x894b5eca, 0xb45d2342, p0, p1);
};

global.N_0x8952e857696b8a79 = function (p0) {
	return _in(0x8952e857, 0x696b8a79, p0);
};

global.N_0x89783fddf079c88d = function (p0) {
	return _in(0x89783fdd, 0xf079c88d, p0);
};

global.N_0x897934e868eddd6c = function (p0, p1, p2, p3, p4) {
	return _in(0x897934e8, 0x68eddd6c, p0, p1, p2, p3, p4);
};

global.N_0x89816b58c3466262 = function (p0) {
	return _in(0x89816b58, 0xc3466262, p0, _r, _ri);
};

global.N_0x898586729db5221d = function (p0) {
	return _in(0x89858672, 0x9db5221d, p0);
};

global.N_0x8996fa6ad9fe4e90 = function (p0) {
	return _in(0x8996fa6a, 0xd9fe4e90, p0);
};

global.N_0x899a04afcc725d04 = function (p0, p1) {
	return _in(0x899a04af, 0xcc725d04, p0, p1);
};

global.N_0x899c97a1cce7d483 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x899c97a1, 0xcce7d483, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0x899dfa0009ac93de = function (p0, p1) {
	return _in(0x899dfa00, 0x09ac93de, p0, p1);
};

global.N_0x89bfdf6d53145545 = function (p0) {
	return _in(0x89bfdf6d, 0x53145545, p0, _r, _ri);
};

global.N_0x89cf5ff3d363311e = function (p0) {
	return _in(0x89cf5ff3, 0xd363311e, p0, _r, _ri);
};

global.N_0x89d803cd48622150 = function (p0) {
	return _in(0x89d803cd, 0x48622150, p0);
};

global.N_0x89d9bde7334b110f = function () {
	return _in(0x89d9bde7, 0x334b110f, _r, _ri);
};

global.N_0x89e005b1662f6e48 = function (p0, p1, p2) {
	return _in(0x89e005b1, 0x662f6e48, p0, p1, p2, _r, _ri);
};

global.N_0x89e59dbd15e21177 = function (p0, p1) {
	return _in(0x89e59dbd, 0x15e21177, p0, p1);
};

global.N_0x89ec2fc89ecb1005 = function () {
	return _in(0x89ec2fc8, 0x9ecb1005, _r, _ri);
};

global.N_0x89f5e7adecccb49c = function (p0, p1) {
	return _in(0x89f5e7ad, 0xecccb49c, p0, p1);
};

global.N_0x8a0643b0b4ca276b = function (p0, p1) {
	return _in(0x8a0643b0, 0xb4ca276b, p0, p1, _r, _ri);
};

global.N_0x8a3945405b31048f = function () {
	return _in(0x8a394540, 0x5b31048f, _r, _ri);
};

global.N_0x8a59d44189af2bc5 = function (p0, p1) {
	return _in(0x8a59d441, 0x89af2bc5, p0, p1);
};

global.N_0x8a67120dbc299525 = function () {
	return _in(0x8a67120d, 0xbc299525, _r, _ri);
};

global.N_0x8a779706da5ca3dd = function (p0, p1, p2) {
	return _in(0x8a779706, 0xda5ca3dd, p0, p1, p2);
};

global.N_0x8a8208ae92bf87a5 = function (p0) {
	return _in(0x8a8208ae, 0x92bf87a5, p0);
};

global.N_0x8ac1d721b2097b6e = function (p0, p1, p2) {
	return _in(0x8ac1d721, 0xb2097b6e, p0, p1, p2);
};

global.N_0x8acc0506743a8a5c = function (p0, p1, p2, p3) {
	return _in(0x8acc0506, 0x743a8a5c, p0, p1, p2, p3);
};

global.N_0x8ae059f47158417e = function (p0, p1, p2, p3) {
	return _in(0x8ae059f4, 0x7158417e, p0, p1, p2, p3);
};

global.N_0x8ae4efa464dae42d = function (p0, p1) {
	return _in(0x8ae4efa4, 0x64dae42d, p0, p1);
};

global.N_0x8af46e5159a5b620 = function (p0, p1) {
	return _in(0x8af46e51, 0x59a5b620, p0, p1);
};

global.N_0x8af8e647d6b2a649 = function (p0, p1) {
	return _in(0x8af8e647, 0xd6b2a649, p0, p1, _r, _ri);
};

global.N_0x8afccc0f18d70018 = function (p0, p1) {
	return _in(0x8afccc0f, 0x18d70018, p0, p1);
};

global.N_0x8b1e8e35a6e814ea = function (p0, p1, p2) {
	return _in(0x8b1e8e35, 0xa6e814ea, p0, p1, p2);
};

global.N_0x8b1fdf63c3193eda = function (p0, p1) {
	return _in(0x8b1fdf63, 0xc3193eda, p0, p1);
};

global.N_0x8b25a18e390f75bf = function (p0) {
	return _in(0x8b25a18e, 0x390f75bf, p0, _r, _ri);
};

global.N_0x8b3296278328b5eb = function (p0) {
	return _in(0x8b329627, 0x8328b5eb, p0);
};

global.N_0x8b3b71c80a29a4bb = function (p0, p1, p2) {
	return _in(0x8b3b71c8, 0x0a29a4bb, p0, p1, p2);
};

global.N_0x8b3cb08158e98481 = function (p0, p1) {
	return _in(0x8b3cb081, 0x58e98481, p0, p1);
};

global.N_0x8b44273a92cd406c = function (p0) {
	return _in(0x8b44273a, 0x92cd406c, p0);
};

global.N_0x8b61c950a148ffa2 = function (p0, p1, p2, p3) {
	return _in(0x8b61c950, 0xa148ffa2, p0, p1, p2, p3);
};

global.N_0x8b6f0f59b1b99801 = function (p0, p1) {
	return _in(0x8b6f0f59, 0xb1b99801, p0, p1);
};

global.N_0x8b74032ddd2156fe = function (p0, p1, p2, p3, p4) {
	return _in(0x8b74032d, 0xdd2156fe, p0, p1, p2, p3, p4);
};

global.N_0x8ba0c65ac15a7d33 = function (p0, p1, p2, p3) {
	return _in(0x8ba0c65a, 0xc15a7d33, p0, p1, p2, p3);
};

global.N_0x8ba3d7b1e83ef803 = function (p0) {
	return _in(0x8ba3d7b1, 0xe83ef803, p0, _r, _ri);
};

global.N_0x8ba83cc4288cd56d = function (p0, p1) {
	return _in(0x8ba83cc4, 0x288cd56d, p0, p1);
};

global.N_0x8bb283a7888ad1ad = function (p0, p1, p2) {
	return _in(0x8bb283a7, 0x888ad1ad, p0, p1, p2);
};

global.N_0x8bb99b85444544d9 = function (p0, p1) {
	return _in(0x8bb99b85, 0x444544d9, p0, p1, _r, _ri);
};

global.N_0x8bc555034a5a5e8c = function (p0, p1) {
	return _in(0x8bc55503, 0x4a5a5e8c, p0, p1);
};

global.N_0x8bc7c1f929d07bf3 = function (p0) {
	return _in(0x8bc7c1f9, 0x29d07bf3, p0);
};

global.N_0x8be24d74d74c6e9b = function (p0) {
	return _in(0x8be24d74, 0xd74c6e9b, p0, _r, _ri);
};

global.N_0x8bf907833be275de = function (p0, p1) {
	return _in(0x8bf90783, 0x3be275de, _fv(p0), _fv(p1));
};

global.N_0x8c03cd6b5e0e85e8 = function (p0, p1) {
	return _in(0x8c03cd6b, 0x5e0e85e8, p0, p1, _r, _ri);
};

global.N_0x8c0f6a3d7236deeb = function (p0, p1) {
	return _in(0x8c0f6a3d, 0x7236deeb, p0, p1);
};

global.N_0x8c109958c9bb559d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x8c109958, 0xc9bb559d, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0x8c598a930f471938 = function (name, p1) {
	return _in(0x8c598a93, 0x0f471938, _ts(name), p1);
};

global.N_0x8c6d9a399126c194 = function (p0, p1) {
	return _in(0x8c6d9a39, 0x9126c194, p0, p1);
};

global.N_0x8c8371edfaf014a0 = function (p0, p1) {
	return _in(0x8c8371ed, 0xfaf014a0, p0, p1);
};

global.N_0x8c889e4cbb4b2356 = function (p0, p1) {
	return _in(0x8c889e4c, 0xbb4b2356, p0, p1);
};

global.N_0x8cb2553c559102c1 = function (p0, p1, p2) {
	return _in(0x8cb2553c, 0x559102c1, p0, p1, p2);
};

global.N_0x8cbe916cfc64ad5c = function (p0) {
	return _in(0x8cbe916c, 0xfc64ad5c, p0, _r, _ri);
};

global.N_0x8d029948ca29409b = function (p0, p1, p2) {
	return _in(0x8d029948, 0xca29409b, p0, p1, p2, _r, _ri);
};

global.N_0x8d1249bd28791878 = function (p0, p1, p2) {
	return _in(0x8d1249bd, 0x28791878, p0, p1, p2, _r, _ri);
};

global.N_0x8d3230a0ed7de39f = function (vehicle, p1) {
	return _in(0x8d3230a0, 0xed7de39f, vehicle, p1);
};

global.N_0x8d56bda343d9519f = function (p0) {
	return _in(0x8d56bda3, 0x43d9519f, p0, _r, _ri);
};

global.N_0x8d59079c37c21d78 = function (p0, p1) {
	return _in(0x8d59079c, 0x37c21d78, p0, p1);
};

global.N_0x8d81e7824b7753f7 = function (p0, p1, p2) {
	return _in(0x8d81e782, 0x4b7753f7, p0, p1, p2, _r, _ri);
};

global.N_0x8d913e493bafe0a3 = function (p0) {
	return _in(0x8d913e49, 0x3bafe0a3, p0, _r, _ri);
};

global.N_0x8d9bfce3352de47f = function (p0) {
	return _in(0x8d9bfce3, 0x352de47f, p0, _r, _ri);
};

global.N_0x8d9db115fba8e23d = function (p0) {
	return _in(0x8d9db115, 0xfba8e23d, p0);
};

global.N_0x8db104ccebcd58c5 = function (p0, p1) {
	return _in(0x8db104cc, 0xebcd58c5, p0, p1, _r, _ri);
};

global.N_0x8dc9aa3b508b1a85 = function () {
	return _in(0x8dc9aa3b, 0x508b1a85, _r, _ri);
};

global.N_0x8dccc98dc0dbf9e4 = function (p0) {
	return _in(0x8dccc98d, 0xc0dbf9e4, _fv(p0));
};

global.N_0x8de104bec243a73b = function (p0) {
	return _in(0x8de104be, 0xc243a73b, p0);
};

global.N_0x8de41e9902e85756 = function (p0) {
	return _in(0x8de41e99, 0x02e85756, p0, _r, _ri);
};

global.N_0x8de82bc774f3b862 = function (p0) {
	return _in(0x8de82bc7, 0x74f3b862, p0);
};

global.N_0x8decd262602548b9 = function (p0, p1) {
	return _in(0x8decd262, 0x602548b9, p0, p1);
};

global.N_0x8df5f6a19f99f0d5 = function (p0, p1) {
	return _in(0x8df5f6a1, 0x9f99f0d5, p0, p1, _r, _ri);
};

global.N_0x8e036b41c37d0e5f = function (p0) {
	return _in(0x8e036b41, 0xc37d0e5f, p0);
};

global.N_0x8e10df0ffa63fb65 = function (p0, p1, p2, p3, p4) {
	return _in(0x8e10df0f, 0xfa63fb65, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0x8e1dde26d270cc5e = function (p0, p1) {
	return _in(0x8e1dde26, 0xd270cc5e, p0, p1);
};

global.N_0x8e2143144b8e188d = function (p0) {
	return _in(0x8e214314, 0x4b8e188d, p0, _r, _ri);
};

global.N_0x8e462db1eaa9c47c = function (p0) {
	return _in(0x8e462db1, 0xeaa9c47c, p0, _r, _ri);
};

global.N_0x8e46e18aa828334f = function (p0, p1, p2) {
	return _in(0x8e46e18a, 0xa828334f, p0, p1, p2, _r, _ri);
};

global.N_0x8e587fcd30e05592 = function () {
	return _in(0x8e587fcd, 0x30e05592, _r, _ri);
};

global.N_0x8e5da070bad3279e = function (p0, p1) {
	return _in(0x8e5da070, 0xbad3279e, p0, p1);
};

global.N_0x8e6aff353c09652e = function (p0) {
	return _in(0x8e6aff35, 0x3c09652e, p0);
};

global.N_0x8e7ce19219669aeb = function (p0) {
	return _in(0x8e7ce192, 0x19669aeb, p0, _r, _ri);
};

global.N_0x8e84119a23c16623 = function (p0, p1, p2) {
	return _in(0x8e84119a, 0x23c16623, p0, p1, p2, _r, _ri);
};

global.N_0x8e8ffb9e4ad051d2 = function (p0, p1, p2, p3) {
	return _in(0x8e8ffb9e, 0x4ad051d2, p0, p1, p2, p3);
};

global.N_0x8e901b65206c2d3e = function (p0) {
	return _in(0x8e901b65, 0x206c2d3e, p0);
};

global.N_0x8ec44ae8decff841 = function (p0) {
	return _in(0x8ec44ae8, 0xdecff841, p0, _r, _ri);
};

global.N_0x8ec47dd4300bf063 = function (p0, p1) {
	return _in(0x8ec47dd4, 0x300bf063, p0, p1);
};

global.N_0x8ec7890d446bd9c1 = function (p0, p1, p2) {
	return _in(0x8ec7890d, 0x446bd9c1, p0, p1, p2);
};

global.N_0x8ec7cd701f872f87 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x8ec7cd70, 0x1f872f87, p0, p1, p2, p3, p4, p5);
};

global.N_0x8eedfd8921389928 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x8eedfd89, 0x21389928, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0x8f2a81c09da9124a = function (p0) {
	return _in(0x8f2a81c0, 0x9da9124a, p0);
};

global.N_0x8f3333f0a6900b3c = function (p0, p1) {
	return _in(0x8f3333f0, 0xa6900b3c, p0, p1, _r, _ri);
};

global.N_0x8f44ebb3ba8f6d44 = function (p0, p1) {
	return _in(0x8f44ebb3, 0xba8f6d44, p0, p1);
};

global.N_0x8f4f050054005c27 = function (p0, p1) {
	return _in(0x8f4f0500, 0x54005c27, p0, p1, _r, _ri);
};

global.N_0x8f75941c86eebfca = function (vehicle, p1) {
	return _in(0x8f75941c, 0x86eebfca, vehicle, p1);
};

global.N_0x8f8c84363810691a = function (p0, p1) {
	return _in(0x8f8c8436, 0x3810691a, p0, p1);
};

global.N_0x8faf4d262faba99c = function (p0) {
	return _in(0x8faf4d26, 0x2faba99c, p0, _r, _ri);
};

global.N_0x8fb7c254cfcbf78e = function (p0) {
	return _in(0x8fb7c254, 0xcfcbf78e, p0, _r, _ri);
};

global.N_0x8fb98b719aa0075a = function (p0, p1, p2, p3, p4) {
	return _in(0x8fb98b71, 0x9aa0075a, p0, p1, p2, p3, p4);
};

global.N_0x8fbf9edb378ccb8c = function (p0, p1) {
	return _in(0x8fbf9edb, 0x378ccb8c, p0, p1);
};

global.N_0x8ff6059da26e688a = function () {
	return _in(0x8ff6059d, 0xa26e688a, _r, _ri);
};

global.N_0x900ca00ce703e1e2 = function (p0) {
	return _in(0x900ca00c, 0xe703e1e2, p0, _r, _ri);
};

global.N_0x901e0dc25080c8b9 = function (p0) {
	return _in(0x901e0dc2, 0x5080c8b9, p0, _r, _ri);
};

global.N_0x90403e8107b60e81 = function (p0) {
	return _in(0x90403e81, 0x07b60e81, p0, _r, _ri);
};

global.N_0x904103d5d2333977 = function (p0) {
	return _in(0x904103d5, 0xd2333977, p0, _r, _ri);
};

global.N_0x9044835be9d9dbfe = function (p0, p1) {
	return _in(0x9044835b, 0xe9d9dbfe, p0, p1);
};

global.N_0x9050df2c53801208 = function (p0, p1) {
	return _in(0x9050df2c, 0x53801208, p0, p1);
};

global.N_0x90703a8f75ee4abd = function (p0, p1) {
	return _in(0x90703a8f, 0x75ee4abd, p0, p1, _r, _ri);
};

global.N_0x9073ec5456651a90 = function (p0, p1) {
	return _in(0x9073ec54, 0x56651a90, p0, p1);
};

global.N_0x9078fb0557364099 = function (p0) {
	return _in(0x9078fb05, 0x57364099, p0);
};

global.N_0x907b16b3834c69e2 = function (p0, p1) {
	return _in(0x907b16b3, 0x834c69e2, p0, p1);
};

global.N_0x908bb14bce85c80e = function (p0) {
	return _in(0x908bb14b, 0xce85c80e, p0, _r, _ri);
};

global.N_0x908d4b72854c8f62 = function (p0) {
	return _in(0x908d4b72, 0x854c8f62, p0);
};

global.N_0x909ad9e9a92a10df = function (p0) {
	return _in(0x909ad9e9, 0xa92a10df, p0, _r, _ri);
};

global.N_0x909e3c7fae539fb1 = function (p0) {
	return _in(0x909e3c7f, 0xae539fb1, p0);
};

global.N_0x90da5ba5c2635416 = function () {
	return _in(0x90da5ba5, 0xc2635416, _r, _ri);
};

global.N_0x90eb1cb189923587 = function (p0) {
	return _in(0x90eb1cb1, 0x89923587, p0, _r, _ri);
};

global.N_0x910b088e51a511ac = function () {
	return _in(0x910b088e, 0x51a511ac, _r, _ri);
};

global.N_0x910e260aead855de = function () {
	return _in(0x910e260a, 0xead855de);
};

global.N_0x913d04a5176f84c9 = function (p0) {
	return _in(0x913d04a5, 0x176f84c9, p0, _r, _ri);
};

global.N_0x914071ff93af2692 = function (p0, p1) {
	return _in(0x914071ff, 0x93af2692, p0, p1);
};

global.N_0x916b8e075abc8b4e = function (p0, p1) {
	return _in(0x916b8e07, 0x5abc8b4e, p0, p1, _r, _ri);
};

global.N_0x917760cfe7a0e0f1 = function (p0) {
	return _in(0x917760cf, 0xe7a0e0f1, p0, _r, _ri);
};

global.N_0x9184788bff1edad7 = function (p0, p1) {
	return _in(0x9184788b, 0xff1edad7, p0, p1);
};

global.N_0x918990bd9ce08582 = function (p0) {
	return _in(0x918990bd, 0x9ce08582, p0, _r, _ri);
};

global.N_0x919af2d93e9aa89d = function (p0) {
	return _in(0x919af2d9, 0x3e9aa89d, p0, _r, _ri);
};

global.N_0x91a4f58e01ed5e4c = function (p0, p1) {
	return _in(0x91a4f58e, 0x01ed5e4c, p0, p1);
};

global.N_0x91a5f9cbebb9d936 = function (p0) {
	return _in(0x91a5f9cb, 0xebb9d936, p0, _r, _ri);
};

global.N_0x91bab9e064f036cd = function (p0, p1) {
	return _in(0x91bab9e0, 0x64f036cd, p0, p1);
};

global.N_0x91c9e2a0f9dd6dd4 = function () {
	return _in(0x91c9e2a0, 0xf9dd6dd4, _r, _ri);
};

global.N_0x91cb5e431f579ba1 = function (p0) {
	return _in(0x91cb5e43, 0x1f579ba1, p0, _r, _rv);
};

global.N_0x91d657230bc208d2 = function (p0, p1) {
	return _in(0x91d65723, 0x0bc208d2, _ts(p0), _ts(p1));
};

global.N_0x91ded5dd64bb2691 = function (p0) {
	return _in(0x91ded5dd, 0x64bb2691, p0);
};

global.N_0x91fe941f9fcfb702 = function (p0, p1) {
	return _in(0x91fe941f, 0x9fcfb702, p0, p1, _r, _ri);
};

global.N_0x922a79cd4a033b8b = function (p0) {
	return _in(0x922a79cd, 0x4a033b8b, p0, _r, _ri);
};

global.N_0x923346025512dfb7 = function (p0) {
	return _in(0x92334602, 0x5512dfb7, p0, _r, _ri);
};

global.N_0x923583741dc87bce = function (p0, p1) {
	return _in(0x92358374, 0x1dc87bce, p0, p1);
};

global.N_0x9238a3d970bbb0a9 = function (p0, p1) {
	return _in(0x9238a3d9, 0x70bbb0a9, p0, p1);
};

global.N_0x925a160133003ac6 = function (p0, p1) {
	return _in(0x925a1601, 0x33003ac6, p0, p1);
};

global.N_0x92690b0822493ce0 = function () {
	return _in(0x92690b08, 0x22493ce0);
};

global.N_0x927861b2c08dbea5 = function (p0) {
	return _in(0x927861b2, 0xc08dbea5, p0, _r, _ri);
};

global.N_0x927b810e43e99932 = function (p0) {
	return _in(0x927b810e, 0x43e99932, p0, _r, _ri);
};

global.N_0x92a1b55a59720395 = function (p0, p1) {
	return _in(0x92a1b55a, 0x59720395, p0, p1);
};

global.N_0x92a32ba29622763f = function (id, index, p2) {
	return _in(0x92a32ba2, 0x9622763f, id, index, _ii(p2) /* may be optional */, _r);
};

global.N_0x92a78d0bedb332a3 = function (p0) {
	return _in(0x92a78d0b, 0xedb332a3, p0, _r, _ri);
};

global.N_0x92aefb5f6e294023 = function (object, p1, p2) {
	return _in(0x92aefb5f, 0x6e294023, object, p1, p2);
};

global.N_0x92c8eaca29f6bed6 = function (p0) {
	return _in(0x92c8eaca, 0x29f6bed6, p0, _r, _ri);
};

global.N_0x92daaba2c1c10b0e = function (p0) {
	return _in(0x92daaba2, 0xc1c10b0e, p0);
};

global.N_0x93171dddab274eb8 = function (p0, p1) {
	return _in(0x93171ddd, 0xab274eb8, p0, p1);
};

global.N_0x931b241409216c1f = function (p0, p1, p2) {
	return _in(0x931b2414, 0x09216c1f, p0, p1, p2);
};

global.N_0x932786ce3c76477c = function (p0, p1) {
	return _in(0x932786ce, 0x3c76477c, p0, p1);
};

global.N_0x932db3c05a7465d1 = function () {
	return _in(0x932db3c0, 0x5a7465d1);
};

global.N_0x9337183fda2e9035 = function (p0, p1) {
	return _in(0x9337183f, 0xda2e9035, p0, p1, _r, _ri);
};

global.N_0x935a30aa88fb1014 = function (p0) {
	return _in(0x935a30aa, 0x88fb1014, p0, _r, _rv);
};

global.N_0x935cf6e42baf7f4d = function (p0) {
	return _in(0x935cf6e4, 0x2baf7f4d, p0);
};

global.N_0x935dbd96d4a3da1f = function (p0, p1) {
	return _in(0x935dbd96, 0xd4a3da1f, p0, p1, _r, _ri);
};

global.N_0x93624b36e8851b42 = function (p0) {
	return _in(0x93624b36, 0xe8851b42, p0);
};

global.N_0x936e7cad0ae2ee14 = function (p0) {
	return _in(0x936e7cad, 0x0ae2ee14, p0, _r, _ri);
};

global.N_0x93759a83d0d844e7 = function (p0) {
	return _in(0x93759a83, 0xd0d844e7, p0);
};

global.N_0x93a91a351a07360e = function (p0) {
	return _in(0x93a91a35, 0x1a07360e, p0, _r, _ri);
};

global.N_0x93f2e7b5db85657b = function (p0, p1) {
	return _in(0x93f2e7b5, 0xdb85657b, p0, p1, _r, _ri);
};

global.N_0x93f499cae53fcd05 = function (p0, p1, p2) {
	return _in(0x93f499ca, 0xe53fcd05, p0, p1, p2);
};

global.N_0x93ffd92f05ec32fd = function (p0) {
	return _in(0x93ffd92f, 0x05ec32fd, p0, _r, _ri);
};

global.N_0x9409c62504a8f9e9 = function (p0, p1) {
	return _in(0x9409c625, 0x04a8f9e9, p0, p1);
};

global.N_0x94132d7c8d3575c4 = function (p0) {
	return _in(0x94132d7c, 0x8d3575c4, p0, _r, _ri);
};

global.N_0x9420fb11b8d77948 = function (p0) {
	return _in(0x9420fb11, 0xb8d77948, p0, _r, _ri);
};

global.N_0x9422743a5ba50e10 = function (p0) {
	return _in(0x9422743a, 0x5ba50e10, p0, _r, _ri);
};

global.N_0x9427c94d2e4094a4 = function (p0, p1) {
	return _in(0x9427c94d, 0x2e4094a4, p0, p1, _r, _ri);
};

global.N_0x9428447ded71fc7e = function (p0) {
	return _in(0x9428447d, 0xed71fc7e, p0);
};

global.N_0x9461a8fab0378e5b = function (p0, p1) {
	return _in(0x9461a8fa, 0xb0378e5b, p0, p1);
};

global.N_0x946d46cd6dfb9742 = function (p0, p1, p2) {
	return _in(0x946d46cd, 0x6dfb9742, p0, p1, p2);
};

global.N_0x947e43f544b6ab34 = function (p0, p1, p2, p3) {
	return _in(0x947e43f5, 0x44b6ab34, p0, p1, p2, p3, _r, _ri);
};

global.N_0x94995829ed15a598 = function (p0) {
	return _in(0x94995829, 0xed15a598, p0, _r, _rv);
};

global.N_0x949b2f9ed2917f5d = function (p0, p1) {
	return _in(0x949b2f9e, 0xd2917f5d, p0, p1);
};

global.N_0x94a3c1b804d291ec = function (p0, p1, p2, p3, p4) {
	return _in(0x94a3c1b8, 0x04d291ec, p0, p1, p2, p3, p4);
};

global.N_0x94b261f1f35293e1 = function (p0) {
	return _in(0x94b261f1, 0xf35293e1, p0);
};

global.N_0x94b745ce41db58a1 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x94b745ce, 0x41db58a1, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0x94e8ca3dee952789 = function (p0, p1) {
	return _in(0x94e8ca3d, 0xee952789, p0, p1, _r, _ri);
};

global.N_0x94f3d956bfaeae18 = function (p0, p1, p2) {
	return _in(0x94f3d956, 0xbfaeae18, p0, p1, p2);
};

global.N_0x94fcadcf9f0c368e = function (p0) {
	return _in(0x94fcadcf, 0x9f0c368e, p0);
};

global.N_0x951847cef3d829ff = function (p0, p1, p2) {
	return _in(0x951847ce, 0xf3d829ff, p0, p1, p2);
};

global.N_0x9520175b35e2268d = function (p0, p1) {
	return _in(0x9520175b, 0x35e2268d, p0, p1);
};

global.N_0x95384c6ce1526eff = function (p0, p1) {
	return _in(0x95384c6c, 0xe1526eff, p0, p1);
};

global.N_0x95423627a9ca598e = function (p0) {
	return _in(0x95423627, 0xa9ca598e, p0);
};

global.N_0x954451ea2d2120fb = function (p0, p1) {
	return _in(0x954451ea, 0x2d2120fb, p0, p1);
};

global.N_0x95531a4a20cce7bc = function (p0, p1) {
	return _in(0x95531a4a, 0x20cce7bc, p0, p1, _r, _ri);
};

global.N_0x956510f8c36b5c64 = function () {
	return _in(0x956510f8, 0xc36b5c64);
};

global.N_0x957d7e750216d74b = function (p0) {
	return _in(0x957d7e75, 0x0216d74b, p0, _r, _ri);
};

global.N_0x9585ff23c4b8ede0 = function (p0, p1) {
	return _in(0x9585ff23, 0xc4b8ede0, p0, p1);
};

global.N_0x95878b13e272ef1f = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x95878b13, 0xe272ef1f, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x9587913b9e772d29 = function (p0, p1) {
	return _in(0x9587913b, 0x9e772d29, p0, p1, _r, _ri);
};

global.N_0x958debd9353c0935 = function (p0, p1, p2) {
	return _in(0x958debd9, 0x353c0935, p0, p1, p2);
};

global.N_0x959383dcd42040da = function (p0) {
	return _in(0x959383dc, 0xd42040da, p0, _r, _ri);
};

global.N_0x95b8e397b8f4360f = function (p0) {
	return _in(0x95b8e397, 0xb8f4360f, p0, _r, _ri);
};

global.N_0x95ca12e2c68043e5 = function (p0, p1) {
	return _in(0x95ca12e2, 0xc68043e5, p0, p1, _r, _ri);
};

global.N_0x95cbc65780de7eb1 = function (p0, p1) {
	return _in(0x95cbc657, 0x80de7eb1, p0, p1, _r, _ri);
};

global.N_0x95ee1dee1dcd9070 = function (p0, p1) {
	return _in(0x95ee1dee, 0x1dcd9070, p0, p1);
};

global.N_0x9609dbdde18fad8c = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x9609dbdd, 0xe18fad8c, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0x9617b6e5f6537b63 = function (p0) {
	return _in(0x9617b6e5, 0xf6537b63, p0);
};

global.N_0x9629faf6460d35cb = function (p0, p1) {
	return _in(0x9629faf6, 0x460d35cb, p0, p1);
};

global.N_0x964000d355219fc0 = function (p0) {
	return _in(0x964000d3, 0x55219fc0, p0, _r, _ri);
};

global.N_0x9641a9a20310f6b8 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x9641a9a2, 0x0310f6b8, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, _r, _ri);
};

global.N_0x96498d922d8d0d0a = function () {
	return _in(0x96498d92, 0x2d8d0d0a);
};

global.N_0x96595b36d6a2279b = function (p0, p1) {
	return _in(0x96595b36, 0xd6a2279b, p0, p1);
};

global.N_0x9667cce29bfa0780 = function (p0) {
	return _in(0x9667cce2, 0x9bfa0780, p0);
};

global.N_0x966dd84fb6a46017 = function () {
	return _in(0x966dd84f, 0xb6a46017);
};

global.N_0x966de09688a1de39 = function (p0, p1, p2, p3, p4) {
	return _in(0x966de096, 0x88a1de39, p0, p1, p2, p3, p4);
};

global.N_0x96722257e5381e00 = function (player) {
	return _in(0x96722257, 0xe5381e00, player);
};

global.N_0x967ff5bc0cfe6d26 = function (p0, p1) {
	return _in(0x967ff5bc, 0x0cfe6d26, p0, p1);
};

global.N_0x9682f850056c9ade = function (p0) {
	return _in(0x9682f850, 0x056c9ade, p0, _r, _ri);
};

global.N_0x96c349de04c49011 = function (p0, p1) {
	return _in(0x96c349de, 0x04c49011, p0, p1);
};

global.N_0x96c638784db4c815 = function (p0) {
	return _in(0x96c63878, 0x4db4c815, p0, _r, _ri);
};

global.N_0x96c6ed22fb742c3e = function (p0, p1) {
	return _in(0x96c6ed22, 0xfb742c3e, p0, p1, _r, _ri);
};

global.N_0x96c7b659854de629 = function (p0, p1) {
	return _in(0x96c7b659, 0x854de629, p0, p1);
};

global.N_0x96fd694fe5be55dc = function (p0) {
	return _in(0x96fd694f, 0xe5be55dc, p0, _r, _ri);
};

global.N_0x9700e8efc4ab9089 = function (p0, p1, p2, p3) {
	return _in(0x9700e8ef, 0xc4ab9089, p0, p1, p2, p3, _r, _ri);
};

global.N_0x970339efa4fde518 = function (p0, p1, p2) {
	return _in(0x970339ef, 0xa4fde518, p0, p1, p2, _r, _ri);
};

global.N_0x974da3408dec4e79 = function (p0) {
	return _in(0x974da340, 0x8dec4e79, p0, _r, _ri);
};

global.N_0x975bd6351648935f = function (p0) {
	return _in(0x975bd635, 0x1648935f, p0, _r, _ri);
};

global.N_0x975f6ebb62632fe3 = function () {
	return _in(0x975f6ebb, 0x62632fe3, _r, _ri);
};

global.N_0x9772395cc73e8d1f = function (p0, p1) {
	return _in(0x9772395c, 0xc73e8d1f, p0, p1);
};

global.N_0x97764e8ac6487a9a = function (p0, p1) {
	return _in(0x97764e8a, 0xc6487a9a, p0, p1, _r, _ri);
};

global.N_0x978aa2323ed32209 = function (p0, p1) {
	return _in(0x978aa232, 0x3ed32209, p0, p1);
};

global.N_0x979765465a6f25fc = function () {
	return _in(0x97976546, 0x5a6f25fc, _r, _ri);
};

global.N_0x97a38b65ebda3d50 = function (p0, p1) {
	return _in(0x97a38b65, 0xebda3d50, p0, p1);
};

global.N_0x97b06669ac569003 = function (p0, p1) {
	return _in(0x97b06669, 0xac569003, p0, p1);
};

global.N_0x97bce4c4b3191228 = function () {
	return _in(0x97bce4c4, 0xb3191228);
};

global.N_0x97c475212b327666 = function (p0, p1) {
	return _in(0x97c47521, 0x2b327666, p0, p1);
};

global.N_0x97f6f158cc5b5ca2 = function (p0, p1) {
	return _in(0x97f6f158, 0xcc5b5ca2, p0, p1);
};

global.N_0x98082246107a6acf = function (p0, p1) {
	return _in(0x98082246, 0x107a6acf, p0, p1, _r, _ri);
};

global.N_0x981146e5c9ce9250 = function (p0) {
	return _in(0x981146e5, 0xc9ce9250, p0, _r, _ri);
};

global.N_0x981c7d863980fa51 = function () {
	return _in(0x981c7d86, 0x3980fa51);
};

global.N_0x9821b68cd3e05f2b = function (p0, p1, p2, p3) {
	return _in(0x9821b68c, 0xd3e05f2b, p0, p1, p2, p3);
};

global.N_0x9851de7aec10b4e1 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x9851de7a, 0xec10b4e1, p0, p1, p2, p3, p4, p5);
};

global.N_0x98539fc453aea639 = function (p0, p1) {
	return _in(0x98539fc4, 0x53aea639, p0, p1, _r, _ri);
};

global.N_0x985767f5fa45bc44 = function (p0) {
	return _in(0x985767f5, 0xfa45bc44, p0);
};

global.N_0x9868c0d0134855f7 = function (p0) {
	return _in(0x9868c0d0, 0x134855f7, p0);
};

global.N_0x986f7a51ee3e1f92 = function (p0, p1) {
	return _in(0x986f7a51, 0xee3e1f92, p0, p1);
};

global.N_0x987be590fb9d41e5 = function (p0) {
	return _in(0x987be590, 0xfb9d41e5, p0);
};

global.N_0x9888652b8ba77f73 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x9888652b, 0x8ba77f73, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0x98a7598c579ee871 = function (p0, p1, p2) {
	return _in(0x98a7598c, 0x579ee871, p0, p1, p2);
};

global.N_0x98a7cd5ea379a854 = function () {
	return _in(0x98a7cd5e, 0xa379a854);
};

global.N_0x98cd760de43b612e = function (p0, p1) {
	return _in(0x98cd760d, 0xe43b612e, p0, p1);
};

global.N_0x98d2d9c053a1f449 = function (p0, p1) {
	return _in(0x98d2d9c0, 0x53a1f449, p0, p1);
};

global.N_0x98f4154989b81ec6 = function () {
	return _in(0x98f41549, 0x89b81ec6, _r, _ri);
};

global.N_0x9911f4a24485f653 = function (p0) {
	return _in(0x9911f4a2, 0x4485f653, p0);
};

global.N_0x991e3346d788f20f = function (p0, p1) {
	return _in(0x991e3346, 0xd788f20f, p0, p1);
};

global.N_0x99230691875fc218 = function (p0, p1, p2, p3, p4) {
	return _in(0x99230691, 0x875fc218, p0, p1, p2, p3, p4);
};

global.N_0x9935f76407c32539 = function (p0) {
	return _in(0x9935f764, 0x07c32539, _ts(p0));
};

global.N_0x9937facbbf267244 = function (p0) {
	return _in(0x9937facb, 0xbf267244, p0);
};

global.N_0x9945a3e2528a02e8 = function (p0) {
	return _in(0x9945a3e2, 0x528a02e8, p0, _r, _ri);
};

global.N_0x9963681a8bc69bf3 = function (p0, p1, p2) {
	return _in(0x9963681a, 0x8bc69bf3, p0, p1, p2);
};

global.N_0x997060bc223adff9 = function () {
	return _in(0x997060bc, 0x223adff9, _r, _ri);
};

global.N_0x9970ae8c3d706139 = function () {
	return _in(0x9970ae8c, 0x3d706139, _r, _ri);
};

global.N_0x998202b206872672 = function (p0) {
	return _in(0x998202b2, 0x06872672, p0);
};

global.N_0x9993f1e11944a3dd = function (p0, p1) {
	return _in(0x9993f1e1, 0x1944a3dd, p0, p1, _r, _ri);
};

global.N_0x99a6e246c315bf60 = function (p0, p1) {
	return _in(0x99a6e246, 0xc315bf60, p0, p1, _r, _ri);
};

global.N_0x99abe9bf9dada162 = function (p0) {
	return _in(0x99abe9bf, 0x9dada162, p0, _r, _ri);
};

global.N_0x99b2a2e3655deaf1 = function (p0, p1) {
	return _in(0x99b2a2e3, 0x655deaf1, p0, p1);
};

global.N_0x99c6ea66dfe73757 = function (p0, p1, p2) {
	return _in(0x99c6ea66, 0xdfe73757, p0, p1, p2, _r, _ri);
};

global.N_0x99f92061efe908ba = function () {
	return _in(0x99f92061, 0xefe908ba, _r, _ri);
};

global.N_0x9a03f22ad446eeac = function (p0) {
	return _in(0x9a03f22a, 0xd446eeac, p0, _r, _ri);
};

global.N_0x9a100f1cf4546629 = function (p0) {
	return _in(0x9a100f1c, 0xf4546629, p0, _r, _ri);
};

global.N_0x9a113c660aea3832 = function (p0, p1, p2) {
	return _in(0x9a113c66, 0x0aea3832, p0, p1, p2);
};

global.N_0x9a252aa23d7098f2 = function () {
	return _in(0x9a252aa2, 0x3d7098f2);
};

global.N_0x9a4ac116cc1eee14 = function (p0) {
	return _in(0x9a4ac116, 0xcc1eee14, p0);
};

global.N_0x9a74a9cadfa8a598 = function (p0) {
	return _in(0x9a74a9ca, 0xdfa8a598, p0);
};

global.N_0x9a77dfd295e29b09 = function (p0, p1) {
	return _in(0x9a77dfd2, 0x95e29b09, p0, p1);
};

global.N_0x9a92c06acbaf9731 = function () {
	return _in(0x9a92c06a, 0xcbaf9731);
};

global.N_0x9a957912ce2eabd1 = function (p0, p1, p2) {
	return _in(0x9a957912, 0xce2eabd1, p0, p1, p2);
};

global.N_0x9aae3c1148a09bca = function (p0) {
	return _in(0x9aae3c11, 0x48a09bca, p0, _r, _ri);
};

global.N_0x9ab192a9ef980eed = function (p0, p1, p2, p3) {
	return _in(0x9ab192a9, 0xef980eed, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9ab33cb5834885b3 = function (p0, p1, p2, p3, p4) {
	return _in(0x9ab33cb5, 0x834885b3, p0, p1, p2, p3, p4);
};

global.N_0x9ac53cb6907b4428 = function (p0, p1, p2) {
	return _in(0x9ac53cb6, 0x907b4428, p0, p1, p2, _r, _ri);
};

global.N_0x9ac65a36d3c0c189 = function (p0) {
	return _in(0x9ac65a36, 0xd3c0c189, p0);
};

global.N_0x9adac065d9f6706f = function (p0) {
	return _in(0x9adac065, 0xd9f6706f, p0);
};

global.N_0x9addbb9242179d56 = function (p0, p1) {
	return _in(0x9addbb92, 0x42179d56, p0, p1);
};

global.N_0x9adee485726025d4 = function (p0) {
	return _in(0x9adee485, 0x726025d4, p0, _r, _ri);
};

global.N_0x9afcf9fe1884bf62 = function (p0, p1) {
	return _in(0x9afcf9fe, 0x1884bf62, p0, p1);
};

global.N_0x9b0c7fa063e67629 = function (p0, p1, p2, p3) {
	return _in(0x9b0c7fa0, 0x63e67629, p0, p1, p2, p3);
};

global.N_0x9b1fc259187c97c0 = function (p0) {
	return _in(0x9b1fc259, 0x187c97c0, p0);
};

global.N_0x9b39b0555cc692b5 = function () {
	return _in(0x9b39b055, 0x5cc692b5);
};

global.N_0x9b47971234169990 = function (p0, p1) {
	return _in(0x9b479712, 0x34169990, p0, p1);
};

global.N_0x9b4c564bfa7cff37 = function (p0) {
	return _in(0x9b4c564b, 0xfa7cff37, p0);
};

global.N_0x9b4e793b1cb6550a = function () {
	return _in(0x9b4e793b, 0x1cb6550a);
};

global.N_0x9b4f7e3e4f9c77b3 = function (p0, p1) {
	return _in(0x9b4f7e3e, 0x4f9c77b3, p0, p1, _r, _ri);
};

global.N_0x9b5db6ceafaa10bb = function (p0, p1, p2, p3) {
	return _in(0x9b5db6ce, 0xafaa10bb, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9b65444c07b782bf = function (p0, p1) {
	return _in(0x9b65444c, 0x07b782bf, p0, p1);
};

global.N_0x9b6808ec46be849b = function (p0, p1) {
	return _in(0x9b6808ec, 0x46be849b, p0, p1);
};

global.N_0x9b6a58fdb0024f12 = function (p0, p1) {
	return _in(0x9b6a58fd, 0xb0024f12, p0, p1);
};

global.N_0x9b8d5d4cb8af58b3 = function (p0) {
	return _in(0x9b8d5d4c, 0xb8af58b3, p0);
};

global.N_0x9b90842304c938a7 = function (p0, p1, p2) {
	return _in(0x9b908423, 0x04c938a7, p0, p1, p2, _r, _ri);
};

global.N_0x9b9b9fa0ea283e3d = function (p0, p1) {
	return _in(0x9b9b9fa0, 0xea283e3d, p0, p1);
};

global.N_0x9bb83c4dd7be0802 = function (p0, p1, p2, p3, p4) {
	return _in(0x9bb83c4d, 0xd7be0802, p0, p1, p2, p3, p4);
};

global.N_0x9bbdcb8df789ebc1 = function (p0, p1) {
	return _in(0x9bbdcb8d, 0xf789ebc1, p0, p1);
};

global.N_0x9bbeaf8b0c007f1e = function (p0, p1) {
	return _in(0x9bbeaf8b, 0x0c007f1e, p0, p1);
};

global.N_0x9bcf28fb5d65a9be = function () {
	return _in(0x9bcf28fb, 0x5d65a9be, _r, _ri);
};

global.N_0x9bd8a9d0a774a6f8 = function (p0, p1, p2, p3, p4) {
	return _in(0x9bd8a9d0, 0xa774a6f8, p0, p1, p2, p3, p4);
};

global.N_0x9be7dcb22d32ccbe = function (p0, p1) {
	return _in(0x9be7dcb2, 0x2d32ccbe, p0, p1, _r, _ri);
};

global.N_0x9bee018a63fffad9 = function (p0) {
	return _in(0x9bee018a, 0x63fffad9, p0);
};

global.N_0x9bf2c0c568c61641 = function (p0) {
	return _in(0x9bf2c0c5, 0x68c61641, p0);
};

global.N_0x9c113883487fd53c = function (p0, p1) {
	return _in(0x9c113883, 0x487fd53c, p0, p1);
};

global.N_0x9c24846d0a4a2776 = function (p0) {
	return _in(0x9c24846d, 0x0a4a2776, p0);
};

global.N_0x9c25e8ec4c535fbd = function (p0) {
	return _in(0x9c25e8ec, 0x4c535fbd, p0);
};

global.N_0x9c409bbc492cb5b1 = function () {
	return _in(0x9c409bbc, 0x492cb5b1, _r, _ri);
};

global.N_0x9c4352134b2835fb = function (p0, p1) {
	return _in(0x9c435213, 0x4b2835fb, p0, p1);
};

global.N_0x9c54041bb66bcf9e = function (p0, p1) {
	return _in(0x9c54041b, 0xb66bcf9e, p0, p1, _r, _ri);
};

global.N_0x9c5bd8c562565ce6 = function (p0) {
	return _in(0x9c5bd8c5, 0x62565ce6, p0);
};

global.N_0x9c725d149622bfde = function (p0) {
	return _in(0x9c725d14, 0x9622bfde, p0, _r, _ri);
};

global.N_0x9c77964b0e07b633 = function (p0, p1, p2) {
	return _in(0x9c77964b, 0x0e07b633, p0, p1, p2, _r, _ri);
};

global.N_0x9c7f95946e304778 = function (p0, p1) {
	return _in(0x9c7f9594, 0x6e304778, p0, p1, _r, _ri);
};

global.N_0x9c81338b2e62ce0a = function (p0, p1, p2) {
	return _in(0x9c81338b, 0x2e62ce0a, p0, p1, p2, _r, _ri);
};

global.N_0x9c8a2bf37e966464 = function (p0, p1) {
	return _in(0x9c8a2bf3, 0x7e966464, p0, p1);
};

global.N_0x9c8f42a5d1859dc1 = function (p0) {
	return _in(0x9c8f42a5, 0xd1859dc1, p0);
};

global.N_0x9c902084f48d2e6c = function (p0) {
	return _in(0x9c902084, 0xf48d2e6c, p0);
};

global.N_0x9cb1a1623062f402 = function (p0, p1) {
	return _in(0x9cb1a162, 0x3062f402, p0, p1);
};

global.N_0x9cc94a948eaf5372 = function (p0, p1) {
	return _in(0x9cc94a94, 0x8eaf5372, p0, p1, _r, _ri);
};

global.N_0x9cca3131e6b53c68 = function (p0, p1, p2) {
	return _in(0x9cca3131, 0xe6b53c68, p0, p1, p2, _r, _ri);
};

global.N_0x9cf1836c03fb67a2 = function (p0, p1) {
	return _in(0x9cf1836c, 0x03fb67a2, p0, p1);
};

global.N_0x9d096a5bd02f953e = function (p0, p1) {
	return _in(0x9d096a5b, 0xd02f953e, p0, p1);
};

global.N_0x9d0f5d2e1951cd84 = function () {
	return _in(0x9d0f5d2e, 0x1951cd84, _r, _ri);
};

global.N_0x9d12796ef4bf9ea9 = function (p0) {
	return _in(0x9d12796e, 0xf4bf9ea9, p0);
};

global.N_0x9d16896f0dbe78a2 = function (p0, p1, p2, p3) {
	return _in(0x9d16896f, 0x0dbe78a2, p0, p1, p2, p3);
};

global.N_0x9d1b0b5066205692 = function () {
	return _in(0x9d1b0b50, 0x66205692);
};

global.N_0x9d1eca9337be9fc3 = function (p0, p1) {
	return _in(0x9d1eca93, 0x37be9fc3, p0, p1, _r, _ri);
};

global.N_0x9d21b185abc2dbc4 = function (p0, p1, p2, p3) {
	return _in(0x9d21b185, 0xabc2dbc4, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9d21b185abc2dbc5 = function (p0, p1, p2, p3) {
	return _in(0x9d21b185, 0xabc2dbc5, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9d37eb5003e0f2cf = function (p0, p1) {
	return _in(0x9d37eb50, 0x03e0f2cf, p0, p1);
};

global.N_0x9d5c9a5a3321b128 = function (p0) {
	return _in(0x9d5c9a5a, 0x3321b128, p0, _r, _ri);
};

global.N_0x9d6dec9791a4e501 = function (p0, p1, p2, p3) {
	return _in(0x9d6dec97, 0x91a4e501, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9d746964e0cf2c5f = function (p0, p1) {
	return _in(0x9d746964, 0xe0cf2c5f, p0, p1);
};

global.N_0x9d8dfe2de9cb4dfc = function (p0) {
	return _in(0x9d8dfe2d, 0xe9cb4dfc, p0);
};

global.N_0x9d9473cb82d83a30 = function (p0, p1, p2) {
	return _in(0x9d9473cb, 0x82d83a30, p0, p1, p2, _r, _ri);
};

global.N_0x9dae1380cc5c6451 = function (p0, p1) {
	return _in(0x9dae1380, 0xcc5c6451, p0, p1);
};

global.N_0x9dd95b405ab4983e = function (p0, p1) {
	return _in(0x9dd95b40, 0x5ab4983e, p0, p1, _r, _ri);
};

global.N_0x9ddc222d85d5af2a = function (p0, p1) {
	return _in(0x9ddc222d, 0x85d5af2a, p0, p1);
};

global.N_0x9de63896b176ea94 = function (p0, p1) {
	return _in(0x9de63896, 0xb176ea94, p0, p1);
};

global.N_0x9e036d5204ffbbc8 = function (p0, p1) {
	return _in(0x9e036d52, 0x04ffbbc8, p0, p1, _r, _ri);
};

global.N_0x9e13acc38ba8f9c3 = function (p0, p1) {
	return _in(0x9e13acc3, 0x8ba8f9c3, p0, p1, _r, _ri);
};

global.N_0x9e2d5d6bc97a5f1e = function (p0, p1, p2) {
	return _in(0x9e2d5d6b, 0xc97a5f1e, p0, p1, p2, _r, _ri);
};

global.N_0x9e3842e5dad69f80 = function (p0) {
	return _in(0x9e3842e5, 0xdad69f80, p0);
};

global.N_0x9e4ef615e307fbbe = function () {
	return _in(0x9e4ef615, 0xe307fbbe, _r, _ri);
};

global.N_0x9e58207b194488ac = function (p0, p1) {
	return _in(0x9e58207b, 0x194488ac, p0, p1);
};

global.N_0x9e66708b2b41f14a = function (p0, p1) {
	return _in(0x9e66708b, 0x2b41f14a, p0, p1);
};

global.N_0x9e762a595cf88e4a = function (p0) {
	return _in(0x9e762a59, 0x5cf88e4a, p0, _r, _ri);
};

global.N_0x9e7738b291706746 = function (p0, p1, p2) {
	return _in(0x9e7738b2, 0x91706746, p0, p1, p2, _r, _ri);
};

global.N_0x9e8711c81aa17876 = function (p0, p1) {
	return _in(0x9e8711c8, 0x1aa17876, p0, p1);
};

global.N_0x9eb779765e68c52e = function (p0, p1) {
	return _in(0x9eb77976, 0x5e68c52e, p0, p1);
};

global.N_0x9ebd34958ab6f824 = function (p0) {
	return _in(0x9ebd3495, 0x8ab6f824, p0);
};

global.N_0x9ed3108d6847760a = function (p0, p1) {
	return _in(0x9ed3108d, 0x6847760a, p0, p1);
};

global.N_0x9eeb007317fa3b9c = function () {
	return _in(0x9eeb0073, 0x17fa3b9c, _r, _ri);
};

global.N_0x9eefd670f10656d7 = function (p0, p1) {
	return _in(0x9eefd670, 0xf10656d7, p0, p1, _r, _ri);
};

global.N_0x9ef07cfbb19a9733 = function () {
	return _in(0x9ef07cfb, 0xb19a9733, _r, _ri);
};

global.N_0x9f0e1892c7f228a8 = function (p0) {
	return _in(0x9f0e1892, 0xc7f228a8, p0, _r, _ri);
};

global.N_0x9f130129ebc31b34 = function (p0, p1, p2) {
	return _in(0x9f130129, 0xebc31b34, p0, p1, p2);
};

global.N_0x9f158a49b0d84c3c = function (p0) {
	return _in(0x9f158a49, 0xb0d84c3c, p0);
};

global.N_0x9f24a34863fd35da = function (p0) {
	return _in(0x9f24a348, 0x63fd35da, p0);
};

global.N_0x9f29999dfdf2aeb8 = function (p0, p1) {
	return _in(0x9f29999d, 0xfdf2aeb8, p0, p1);
};

global.N_0x9f2cc2439a04e7ba = function (p0, p1, p2) {
	return _in(0x9f2cc243, 0x9a04e7ba, p0, p1, p2, _r, _ri);
};

global.N_0x9f348de670423460 = function (p0) {
	return _in(0x9f348de6, 0x70423460, p0);
};

global.N_0x9f52ad67d1a91bad = function (p0, p1) {
	return _in(0x9f52ad67, 0xd1a91bad, p0, p1, _r, _ri);
};

global.N_0x9f67929d98e7c6e8 = function (p0, p1, p2, p3) {
	return _in(0x9f67929d, 0x98e7c6e8, p0, p1, p2, p3, _r, _ri);
};

global.N_0x9f6dcd0c939c71e9 = function () {
	return _in(0x9f6dcd0c, 0x939c71e9, _r, _ri);
};

global.N_0x9f933e0985e12c51 = function (p0, p1, p2, p3) {
	return _in(0x9f933e09, 0x85e12c51, p0, p1, p2, p3);
};

global.N_0x9f97e85ec142255e = function (p0, p1) {
	return _in(0x9f97e85e, 0xc142255e, p0, p1);
};

global.N_0x9f9a829c6751f3c7 = function (p0, p1, p2) {
	return _in(0x9f9a829c, 0x6751f3c7, p0, p1, p2);
};

global.N_0x9fa00e2fc134a9d0 = function (p0) {
	return _in(0x9fa00e2f, 0xc134a9d0, p0, _r, _ri);
};

global.N_0x9fc5a003fb76edbd = function (p0, p1) {
	return _in(0x9fc5a003, 0xfb76edbd, p0, p1);
};

global.N_0x9ff5f9b24e870748 = function (p0) {
	return _in(0x9ff5f9b2, 0x4e870748, p0, _r, _ri);
};

global.N_0xa00df706c60173d1 = function (p0) {
	return _in(0xa00df706, 0xc60173d1, p0, _r, _ri);
};

global.N_0xa021095c983f20d8 = function () {
	return _in(0xa021095c, 0x983f20d8, _r, _ri);
};

global.N_0xa033d7e4bbf9844d = function (p0) {
	return _in(0xa033d7e4, 0xbbf9844d, p0, _r, _ri);
};

global.N_0xa03a6812529ad9c8 = function () {
	return _in(0xa03a6812, 0x529ad9c8);
};

global.N_0xa04ef43030593abc = function (p0, p1) {
	return _in(0xa04ef430, 0x30593abc, p0, p1);
};

global.N_0xa052608a12559bbb = function (p0, p1) {
	return _in(0xa052608a, 0x12559bbb, p0, p1);
};

global.N_0xa05f3f20889d7a5b = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xa05f3f20, 0x889d7a5b, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xa064bbabb064446f = function (p0) {
	return _in(0xa064bbab, 0xb064446f, p0);
};

global.N_0xa0774e388ce4a679 = function (p0, p1, p2, p3) {
	return _in(0xa0774e38, 0x8ce4a679, p0, p1, p2, p3, _r, _ri);
};

global.N_0xa079300af757fb1a = function (p0) {
	return _in(0xa079300a, 0xf757fb1a, p0, _r, _ri);
};

global.N_0xa079ff7cfb9ac8bd = function (p0, p1) {
	return _in(0xa079ff7c, 0xfb9ac8bd, p0, p1);
};

global.N_0xa07cf1b21b56f041 = function (p0, p1, p2, p3) {
	return _in(0xa07cf1b2, 0x1b56f041, p0, p1, p2, p3, _r, _ri);
};

global.N_0xa08111b053d84b4d = function (p0) {
	return _in(0xa08111b0, 0x53d84b4d, p0);
};

global.N_0xa0ae7653e8181725 = function (p0) {
	return _in(0xa0ae7653, 0xe8181725, p0, _r, _ri);
};

global.N_0xa0b7094629724974 = function (p0, p1) {
	return _in(0xa0b70946, 0x29724974, p0, p1, _r, _ri);
};

global.N_0xa0bc8faed8cfeb3c = function (p0) {
	return _in(0xa0bc8fae, 0xd8cfeb3c, p0, _r, _ri);
};

global.N_0xa0c683284df027c7 = function (p0, p1, p2) {
	return _in(0xa0c68328, 0x4df027c7, p0, p1, p2);
};

global.N_0xa0cefcea390aab9b = function (p0) {
	return _in(0xa0cefcea, 0x390aab9b, p0);
};

global.N_0xa0f4d12d6042f6d5 = function (p0, p1) {
	return _in(0xa0f4d12d, 0x6042f6d5, p0, p1);
};

global.N_0xa1300de03e5d1973 = function (p0) {
	return _in(0xa1300de0, 0x3e5d1973, p0, _r, _ri);
};

global.N_0xa13028e22564a1bd = function (p0, p1) {
	return _in(0xa13028e2, 0x2564a1bd, p0, p1);
};

global.N_0xa14d5fe82bcb1d9e = function () {
	return _in(0xa14d5fe8, 0x2bcb1d9e, _r, _ri);
};

global.N_0xa15bffc0a01b34e1 = function () {
	return _in(0xa15bffc0, 0xa01b34e1, _r, _ri);
};

global.N_0xa15ccab8ad038291 = function (p0, p1, p2, p3) {
	return _in(0xa15ccab8, 0xad038291, p0, p1, p2, p3, _r, _ri);
};

global.N_0xa16b4fba7887d7ba = function () {
	return _in(0xa16b4fba, 0x7887d7ba, _r, _ri);
};

global.N_0xa180fbd502a03125 = function (p0, p1, p2) {
	return _in(0xa180fbd5, 0x02a03125, p0, p1, p2, _r, _ri);
};

global.N_0xa19447d83294e29f = function (p0, p1, p2) {
	return _in(0xa19447d8, 0x3294e29f, p0, p1, p2, _r, _ri);
};

global.N_0xa197c35f73ac0f12 = function (p0, p1, p2, p3) {
	return _in(0xa197c35f, 0x73ac0f12, p0, p1, p2, p3);
};

global.N_0xa1a86055792fb249 = function (p0) {
	return _in(0xa1a86055, 0x792fb249, p0);
};

global.N_0xa1b0e6301e2e02a6 = function (name, p1) {
	return _in(0xa1b0e630, 0x1e2e02a6, _ts(name), p1);
};

global.N_0xa1b4052c2a3dcc1e = function () {
	return _in(0xa1b4052c, 0x2a3dcc1e);
};

global.N_0xa1cfb35069d23c23 = function (p0) {
	return _in(0xa1cfb350, 0x69d23c23, p0);
};

global.N_0xa1eb5d029e0191d3 = function (p0, p1, p2) {
	return _in(0xa1eb5d02, 0x9e0191d3, p0, p1, p2);
};

global.N_0xa1fbac56d38563e2 = function (p0) {
	return _in(0xa1fbac56, 0xd38563e2, p0, _r, _ri);
};

global.N_0xa201a3d0ac087c37 = function (p0) {
	return _in(0xa201a3d0, 0xac087c37, p0);
};

global.N_0xa20398536b7f1134 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xa2039853, 0x6b7f1134, p0, p1, p2, p3, p4, p5);
};

global.N_0xa2058154357726bb = function (p0, p1) {
	return _in(0xa2058154, 0x357726bb, p0, p1);
};

global.N_0xa2091482ed42ef85 = function (p0, p1) {
	return _in(0xa2091482, 0xed42ef85, p0, p1, _r, _ri);
};

global.N_0xa2116c1e4ed85c24 = function (p0, p1) {
	return _in(0xa2116c1e, 0x4ed85c24, p0, p1);
};

global.N_0xa218d2bbcaa7388c = function (p0, p1) {
	return _in(0xa218d2bb, 0xcaa7388c, p0, p1, _r, _ri);
};

global.N_0xa21aa2f0c2180125 = function (p0, p1) {
	return _in(0xa21aa2f0, 0xc2180125, p0, p1);
};

global.N_0xa21af60c9f99ccc5 = function () {
	return _in(0xa21af60c, 0x9f99ccc5);
};

global.N_0xa21e3bad0a42d199 = function () {
	return _in(0xa21e3bad, 0x0a42d199, _r, _ri);
};

global.N_0xa22712e8471aa08e = function (p0, p1, p2) {
	return _in(0xa22712e8, 0x471aa08e, p0, p1, p2);
};

global.N_0xa22c46f16359471c = function () {
	return _in(0xa22c46f1, 0x6359471c, _r, _ri);
};

global.N_0xa230a5dde12ed374 = function (p0) {
	return _in(0xa230a5dd, 0xe12ed374, p0);
};

global.N_0xa2323a2eae32a290 = function (p0, p1, p2) {
	return _in(0xa2323a2e, 0xae32a290, p0, p1, p2);
};

global.N_0xa24c1d341c6e0d53 = function (p0, p1, p2) {
	return _in(0xa24c1d34, 0x1c6e0d53, p0, p1, p2, _r, _ri);
};

global.N_0xa263adbbc8056214 = function (p0, p1) {
	return _in(0xa263adbb, 0xc8056214, p0, p1);
};

global.N_0xa274f51ef7e34b95 = function (p0, p1) {
	return _in(0xa274f51e, 0xf7e34b95, p0, p1, _r, _ri);
};

global.N_0xa2837a5e21fb5a58 = function (p0) {
	return _in(0xa2837a5e, 0x21fb5a58, p0, _r, _ri);
};

global.N_0xa29fd00d45311eb7 = function (p0, p1) {
	return _in(0xa29fd00d, 0x45311eb7, p0, p1, _r, _ri);
};

global.N_0xa2a51869bded733b = function (p0, p1) {
	return _in(0xa2a51869, 0xbded733b, p0, p1, _r, _ri);
};

global.N_0xa2b18ff8d39f6d87 = function (p0) {
	return _in(0xa2b18ff8, 0xd39f6d87, p0);
};

global.N_0xa2b1c7ef759a63ce = function () {
	return _in(0xa2b1c7ef, 0x759a63ce, _r, _ri);
};

global.N_0xa2b851605748ad0e = function () {
	return _in(0xa2b85160, 0x5748ad0e);
};

global.N_0xa2b8e47442c76cec = function (p0, p1) {
	return _in(0xa2b8e474, 0x42c76cec, p0, p1);
};

global.N_0xa2cac9def0195e6f = function (p0) {
	return _in(0xa2cac9de, 0xf0195e6f, p0, _r, _ri);
};

global.N_0xa2d5a26208421426 = function (p0) {
	return _in(0xa2d5a262, 0x08421426, p0, _r, _ri);
};

global.N_0xa2db3c6270c122e3 = function (p0, p1) {
	return _in(0xa2db3c62, 0x70c122e3, p0, p1, _r, _ri);
};

global.N_0xa2e2bea4e83f6270 = function (p0) {
	return _in(0xa2e2bea4, 0xe83f6270, p0, _r, _ri);
};

global.N_0xa2f8b3b5fedfc100 = function (p0, p1) {
	return _in(0xa2f8b3b5, 0xfedfc100, p0, p1);
};

global.N_0xa31013798fadcadc = function (p0, p1, p2) {
	return _in(0xa3101379, 0x8fadcadc, p0, p1, p2);
};

global.N_0xa31d350d66fa1855 = function (p0) {
	return _in(0xa31d350d, 0x66fa1855, p0, _r, _ri);
};

global.N_0xa31dafcdc33775e9 = function () {
	return _in(0xa31dafcd, 0xc33775e9, _r, _ri);
};

global.N_0xa32b0b05eff75730 = function () {
	return _in(0xa32b0b05, 0xeff75730);
};

global.N_0xa33914b00ca55756 = function (p0, p1) {
	return _in(0xa33914b0, 0x0ca55756, p0, p1, _r, _ri);
};

global.N_0xa33f5069b0cb89b8 = function () {
	return _in(0xa33f5069, 0xb0cb89b8);
};

global.N_0xa342495f93b7b838 = function (p0, p1) {
	return _in(0xa342495f, 0x93b7b838, p0, p1);
};

global.N_0xa35e7bf20fa269e0 = function (p0) {
	return _in(0xa35e7bf2, 0x0fa269e0, p0);
};

global.N_0xa3716a77dcf17424 = function (p0, p1, p2) {
	return _in(0xa3716a77, 0xdcf17424, p0, p1, p2);
};

global.N_0xa3791b915b8b84c6 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xa3791b91, 0x5b8b84c6, p0, p1, p2, p3, p4, p5);
};

global.N_0xa381de86ee170c4a = function (p0, p1, p2) {
	return _in(0xa381de86, 0xee170c4a, p0, p1, p2, _r, _ri);
};

global.N_0xa3a8926951471c82 = function () {
	return _in(0xa3a89269, 0x51471c82);
};

global.N_0xa3a9299c4f2adb98 = function (p0) {
	return _in(0xa3a9299c, 0x4f2adb98, p0);
};

global.N_0xa3bd6ff95e713ee5 = function (p0, p1, p2) {
	return _in(0xa3bd6ff9, 0x5e713ee5, p0, p1, p2);
};

global.N_0xa3c53cde922bc78b = function (p0, p1) {
	return _in(0xa3c53cde, 0x922bc78b, p0, p1);
};

global.N_0xa3db37edf9a74635 = function (p0, p1, p2, p3, p4) {
	return _in(0xa3db37ed, 0xf9a74635, p0, p1, p2, p3, p4);
};

global.N_0xa3eec0a5aff3fc5b = function (p0) {
	return _in(0xa3eec0a5, 0xaff3fc5b, p0, _r, _ri);
};

global.N_0xa3f2149aa24f3d8e = function (p0, p1, p2) {
	return _in(0xa3f2149a, 0xa24f3d8e, p0, p1, p2);
};

global.N_0xa405bf9f01960c16 = function (p0) {
	return _in(0xa405bf9f, 0x01960c16, p0);
};

global.N_0xa42dc7919159cccf = function (p0) {
	return _in(0xa42dc791, 0x9159cccf, p0);
};

global.N_0xa42edf1e88734a7e = function () {
	return _in(0xa42edf1e, 0x88734a7e, _r, _ri);
};

global.N_0xa4454592dcf7c992 = function (p0) {
	return _in(0xa4454592, 0xdcf7c992, p0, _r, _ri);
};

global.N_0xa4484173759749b1 = function () {
	return _in(0xa4484173, 0x759749b1);
};

global.N_0xa44d65e6c624526f = function (p0) {
	return _in(0xa44d65e6, 0xc624526f, p0, _r, _ri);
};

global.N_0xa454d234e45bb6e5 = function (p0, p1) {
	return _in(0xa454d234, 0xe45bb6e5, p0, p1, _r, _ri);
};

global.N_0xa4550fe9c512e3dd = function (p0) {
	return _in(0xa4550fe9, 0xc512e3dd, p0, _r, _ri);
};

global.N_0xa45884db10ec7ee3 = function (p0, p1, p2, p3) {
	return _in(0xa45884db, 0x10ec7ee3, p0, p1, p2, p3);
};

global.N_0xa46e98bdc407e23d = function (p0, p1, p2, p3) {
	return _in(0xa46e98bd, 0xc407e23d, p0, p1, p2, p3, _r, _ri);
};

global.N_0xa46fd001d1be896c = function () {
	return _in(0xa46fd001, 0xd1be896c, _r, _s);
};

global.N_0xa47d48d06aa5a188 = function () {
	return _in(0xa47d48d0, 0x6aa5a188, _r, _ri);
};

global.N_0xa486008892065fb9 = function (p0, p1) {
	return _in(0xa4860088, 0x92065fb9, p0, p1, _r, _ri);
};

global.N_0xa48e4801debdf7e4 = function (p0, p1) {
	return _in(0xa48e4801, 0xdebdf7e4, p0, p1);
};

global.N_0xa49d6d503e3ea847 = function (p0, p1, p2, p3, p4) {
	return _in(0xa49d6d50, 0x3e3ea847, p0, p1, p2, p3, p4);
};

global.N_0xa4a4359320345b34 = function (p0) {
	return _in(0xa4a43593, 0x20345b34, p0, _r, _ri);
};

global.N_0xa4ac05b1a364ebc5 = function (p0, p1, p2) {
	return _in(0xa4ac05b1, 0xa364ebc5, p0, p1, p2, _r, _ri);
};

global.N_0xa4d3a1c008f250df = function (p0) {
	return _in(0xa4d3a1c0, 0x08f250df, p0);
};

global.N_0xa4dcb3f0dd7488bd = function (p0, p1, p2, p3, p4) {
	return _in(0xa4dcb3f0, 0xdd7488bd, p0, p1, p2, p3, p4);
};

global.N_0xa520c7b05fa4eb2a = function (p0, p1) {
	return _in(0xa520c7b0, 0x5fa4eb2a, p0, p1);
};

global.N_0xa53c8d7d0f8c74d0 = function (p0) {
	return _in(0xa53c8d7d, 0x0f8c74d0, _fv(p0));
};

global.N_0xa54000d4bfd90bde = function (p0) {
	return _in(0xa54000d4, 0xbfd90bde, p0, _r, _ri);
};

global.N_0xa54d643d0773eb65 = function (p0, p1, p2) {
	return _in(0xa54d643d, 0x0773eb65, p0, p1, p2);
};

global.N_0xa565fac215cbc77d = function () {
	return _in(0xa565fac2, 0x15cbc77d);
};

global.N_0xa586fbeb32a53dbb = function () {
	return _in(0xa586fbeb, 0x32a53dbb, _r, _ri);
};

global.N_0xa5950e16b8f31052 = function (p0, p1, p2) {
	return _in(0xa5950e16, 0xb8f31052, p0, p1, p2);
};

global.N_0xa59590050f80ff2e = function (p0, p1, p2, p3) {
	return _in(0xa5959005, 0x0f80ff2e, p0, p1, p2, p3);
};

global.N_0xa59d1997ecd99f0a = function () {
	return _in(0xa59d1997, 0xecd99f0a);
};

global.N_0xa5bae410b03e7371 = function (p0, p1, p2, p3) {
	return _in(0xa5bae410, 0xb03e7371, p0, p1, p2, p3);
};

global.N_0xa5bd585005efcad4 = function (p0) {
	return _in(0xa5bd5850, 0x05efcad4, p0, _r, _ri);
};

global.N_0xa622e66eee92a08d = function (p0) {
	return _in(0xa622e66e, 0xee92a08d, p0, _r, _ri);
};

global.N_0xa62bbaae67a05bb0 = function (p0) {
	return _in(0xa62bbaae, 0x67a05bb0, p0, _r, _ri);
};

global.N_0xa635c11b8c44afc2 = function () {
	return _in(0xa635c11b, 0x8c44afc2, _r, _ri);
};

global.N_0xa63cd20f19b961ab = function (p0, p1, p2) {
	return _in(0xa63cd20f, 0x19b961ab, p0, p1, p2, _r, _ri);
};

global.N_0xa63e4f050f20021f = function () {
	return _in(0xa63e4f05, 0x0f20021f);
};

global.N_0xa63fcad3a6fec6d2 = function (p0, p1) {
	return _in(0xa63fcad3, 0xa6fec6d2, p0, p1);
};

global.N_0xa657ec9dbc6cc900 = function (p0) {
	return _in(0xa657ec9d, 0xbc6cc900, p0);
};

global.N_0xa67f0b039d9cd513 = function () {
	return _in(0xa67f0b03, 0x9d9cd513, _r, _ri);
};

global.N_0xa6847bba4fcdd13f = function (p0, p1) {
	return _in(0xa6847bba, 0x4fcdd13f, p0, p1);
};

global.N_0xa691c10054275290 = function (p0, p1, p2) {
	return _in(0xa691c100, 0x54275290, p0, p1, p2);
};

global.N_0xa69899995997a63b = function (p0, p1) {
	return _in(0xa6989999, 0x5997a63b, p0, p1);
};

global.N_0xa6a3a3f96b8b030e = function () {
	return _in(0xa6a3a3f9, 0x6b8b030e, _r, _ri);
};

global.N_0xa6a76d666a281f2d = function (p0, p1) {
	return _in(0xa6a76d66, 0x6a281f2d, p0, p1);
};

global.N_0xa6a9712955f53d9c = function (p0) {
	return _in(0xa6a97129, 0x55f53d9c, p0, _r, _ri);
};

global.N_0xa6aa9f56bc6cff58 = function (p0, p1) {
	return _in(0xa6aa9f56, 0xbc6cff58, p0, p1);
};

global.N_0xa6ac35db4a7957a8 = function (p0) {
	return _in(0xa6ac35db, 0x4a7957a8, p0);
};

global.N_0xa6bf569956c60a60 = function (p0, p1) {
	return _in(0xa6bf5699, 0x56c60a60, p0, p1, _r, _ri);
};

global.N_0xa6c0787443c9583e = function (p0) {
	return _in(0xa6c07874, 0x43c9583e, p0, _r, _ri);
};

global.N_0xa6c6a4adb3bac409 = function (p0) {
	return _in(0xa6c6a4ad, 0xb3bac409, p0, _r, _ri);
};

global.N_0xa6d6f03095c88f59 = function (p0) {
	return _in(0xa6d6f030, 0x95c88f59, p0);
};

global.N_0xa6e210fb4283b767 = function (p0, p1, p2) {
	return _in(0xa6e210fb, 0x4283b767, p0, p1, p2);
};

global.N_0xa6e6a66fc4ca4224 = function (p0) {
	return _in(0xa6e6a66f, 0xc4ca4224, p0);
};

global.N_0xa6ef0c54a3443e70 = function (p0, p1) {
	return _in(0xa6ef0c54, 0xa3443e70, p0, p1, _r, _ri);
};

global.N_0xa6f1baabff6ad7b9 = function (p0) {
	return _in(0xa6f1baab, 0xff6ad7b9, p0);
};

global.N_0xa6f4216ab10eb08e = function (p0, p1, p2, p3) {
	return _in(0xa6f4216a, 0xb10eb08e, p0, p1, p2, p3, _r, _ri);
};

global.N_0xa6f67bec53379a32 = function (p0, p1) {
	return _in(0xa6f67bec, 0x53379a32, p0, p1);
};

global.N_0xa710dc5d25f8b942 = function (p0, p1) {
	return _in(0xa710dc5d, 0x25f8b942, p0, p1, _r, _ri);
};

global.N_0xa72773c3134f9a57 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xa72773c3, 0x134f9a57, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xa72b1bf3857b94d7 = function (p0, p1) {
	return _in(0xa72b1bf3, 0x857b94d7, p0, p1);
};

global.N_0xa7309ac0dcf6d950 = function (p0, p1) {
	return _in(0xa7309ac0, 0xdcf6d950, p0, p1, _r, _ri);
};

global.N_0xa73f50e8796150d5 = function (p0, p1) {
	return _in(0xa73f50e8, 0x796150d5, p0, p1);
};

global.N_0xa7479fb665361edb = function (p0, p1) {
	return _in(0xa7479fb6, 0x65361edb, p0, p1);
};

global.N_0xa762c9d6cf165e0d = function (p0, p1, p2, p3) {
	return _in(0xa762c9d6, 0xcf165e0d, p0, p1, p2, p3);
};

global.N_0xa769d753922b031b = function (p0, p1, p2) {
	return _in(0xa769d753, 0x922b031b, p0, p1, p2);
};

global.N_0xa77fa7be9312f8c0 = function (p0) {
	return _in(0xa77fa7be, 0x9312f8c0, p0);
};

global.N_0xa7966807953a18ee = function (p0, p1) {
	return _in(0xa7966807, 0x953a18ee, p0, p1);
};

global.N_0xa7a57e89e965d839 = function (p0, p1) {
	return _in(0xa7a57e89, 0xe965d839, p0, p1);
};

global.N_0xa7a806677f8de138 = function (p0) {
	return _in(0xa7a80667, 0x7f8de138, p0);
};

global.N_0xa7dc9266ed6a4e51 = function (p0) {
	return _in(0xa7dc9266, 0xed6a4e51, p0);
};

global.N_0xa7e51b53309eac97 = function (p0) {
	return _in(0xa7e51b53, 0x309eac97, p0, _r, _ri);
};

global.N_0xa80ff73f772acf6a = function (p0, p1) {
	return _in(0xa80ff73f, 0x772acf6a, p0, p1);
};

global.N_0xa8120ebeaf290c7a = function (p0) {
	return _in(0xa8120ebe, 0xaf290c7a, p0, _r, _ri);
};

global.N_0xa81d24ae0af99a5e = function (p0) {
	return _in(0xa81d24ae, 0x0af99a5e, p0, _r, _ri);
};

global.N_0xa82964b9d8d6a983 = function () {
	return _in(0xa82964b9, 0xd8d6a983, _r, _ri);
};

global.N_0xa8432a14d4dc2101 = function (p0, p1, p2) {
	return _in(0xa8432a14, 0xd4dc2101, p0, p1, p2);
};

global.N_0xa844feb5c22c2c74 = function () {
	return _in(0xa844feb5, 0xc22c2c74);
};

global.N_0xa8452dd321607029 = function (p0, p1) {
	return _in(0xa8452dd3, 0x21607029, p0, p1, _r, _rv);
};

global.N_0xa86b0ee9b39d15d6 = function (p0) {
	return _in(0xa86b0ee9, 0xb39d15d6, p0);
};

global.N_0xa881f5c77a560906 = function (p0) {
	return _in(0xa881f5c7, 0x7a560906, p0);
};

global.N_0xa88e1d7fa1e20080 = function (p0) {
	return _in(0xa88e1d7f, 0xa1e20080, p0, _r, _ri);
};

global.N_0xa88e215ceb0435c0 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xa88e215c, 0xeb0435c0, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xa8a74aa79fb67159 = function (name, p1) {
	return _in(0xa8a74aa7, 0x9fb67159, _ts(name), p1);
};

global.N_0xa8a95cecb1906ea2 = function (p0, p1) {
	return _in(0xa8a95cec, 0xb1906ea2, p0, p1);
};

global.N_0xa8ba0bae0173457b = function (p0, p1) {
	return _in(0xa8ba0bae, 0x0173457b, p0, p1, _r, _ri);
};

global.N_0xa8c406c2a56edc16 = function (p0) {
	return _in(0xa8c406c2, 0xa56edc16, p0);
};

/**
 * nullsub, doesn't do anything
 */
global.N_0xa8d970d8a72640a6 = function () {
	return _in(0xa8d970d8, 0xa72640a6, _r, _ri);
};

global.N_0xa9016536015de29d = function (p0, p1) {
	return _in(0xa9016536, 0x015de29d, p0, p1, _r, _ri);
};

global.N_0xa90684ed185ccb4b = function (p0, p1, p2, p3) {
	return _in(0xa90684ed, 0x185ccb4b, p0, p1, p2, p3);
};

global.N_0xa911ee21edf69daf = function (p0) {
	return _in(0xa911ee21, 0xedf69daf, p0, _r, _ri);
};

global.N_0xa91e6cf94404e8c9 = function (p0) {
	return _in(0xa91e6cf9, 0x4404e8c9, p0);
};

global.N_0xa92450b5ae687aaf = function (p0) {
	return _in(0xa92450b5, 0xae687aaf, p0, _r, _ri);
};

/**
 * nullsub, doesn't do anything
 * @param p0 :
 */
global.N_0xa9342743b634a462 = function (p0) {
	return _in(0xa9342743, 0xb634a462, p0);
};

global.N_0xa93f925f1942e434 = function (p0, p1) {
	return _in(0xa93f925f, 0x1942e434, p0, p1);
};

global.N_0xa94ece191d90637a = function () {
	return _in(0xa94ece19, 0x1d90637a, _r, _ri);
};

global.N_0xa95470da137587f5 = function (p0) {
	return _in(0xa95470da, 0x137587f5, p0);
};

global.N_0xa96619fe85159ed2 = function (p0) {
	return _in(0xa96619fe, 0x85159ed2, p0, _r, _ri);
};

global.N_0xa967d6a8ed2d713b = function (p0, p1) {
	return _in(0xa967d6a8, 0xed2d713b, p0, p1);
};

global.N_0xa97ee5e4589fcf5a = function (p0, p1) {
	return _in(0xa97ee5e4, 0x589fcf5a, p0, p1, _r, _ri);
};

global.N_0xa9c28516a6dc9d56 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xa9c28516, 0xa6dc9d56, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xa9c3b0f746375162 = function (p0, p1, p2) {
	return _in(0xa9c3b0f7, 0x46375162, p0, p1, p2, _r, _ri);
};

global.N_0xa9cc7856d52dbd25 = function (p0) {
	return _in(0xa9cc7856, 0xd52dbd25, p0, _r, _ri);
};

global.N_0xa9ceae8d6637fbad = function (p0) {
	return _in(0xa9ceae8d, 0x6637fbad, p0);
};

global.N_0xa9e185d498b9ac67 = function (p0, p1) {
	return _in(0xa9e185d4, 0x98b9ac67, p0, p1, _r, _ri);
};

global.N_0xa9e6d8f2ddfc4db9 = function (p0, p1) {
	return _in(0xa9e6d8f2, 0xddfc4db9, p0, p1);
};

global.N_0xa9e7672f8c6c6f74 = function (p0) {
	return _in(0xa9e7672f, 0x8c6c6f74, p0, _r, _ri);
};

global.N_0xa9eb4d606076615d = function (p0) {
	return _in(0xa9eb4d60, 0x6076615d, p0, _r, _ri);
};

global.N_0xa9ef4ad10bdddb57 = function (p0, p1, p2) {
	return _in(0xa9ef4ad1, 0x0bdddb57, p0, p1, p2);
};

global.N_0xaa03f130a637d923 = function (p0) {
	return _in(0xaa03f130, 0xa637d923, p0);
};

global.N_0xaa0af6025160243a = function (p0, p1) {
	return _in(0xaa0af602, 0x5160243a, p0, p1);
};

global.N_0xaa235e2f2c09e952 = function (p0) {
	return _in(0xaa235e2f, 0x2c09e952, p0, _r, _ri);
};

global.N_0xaa35fd9abab490a3 = function (p0) {
	return _in(0xaa35fd9a, 0xbab490a3, p0, _r, _ri);
};

global.N_0xaa5a52204e077883 = function (p0, p1) {
	return _in(0xaa5a5220, 0x4e077883, p0, p1);
};

global.N_0xaa6c49ae90a32299 = function (p0, p1) {
	return _in(0xaa6c49ae, 0x90a32299, p0, p1);
};

global.N_0xaa9ee2aafc717623 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xaa9ee2aa, 0xfc717623, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xaa9f048dcf69b6dc = function (p0) {
	return _in(0xaa9f048d, 0xcf69b6dc, p0, _r, _ri);
};

global.N_0xaaa92b631b13f614 = function (p0) {
	return _in(0xaaa92b63, 0x1b13f614, p0, _r, _ri);
};

global.N_0xaaacb74442c1bed3 = function (p0) {
	return _in(0xaaacb744, 0x42c1bed3, p0, _r, _ri);
};

global.N_0xaaacf33cbf9b990a = function (p0, p1) {
	return _in(0xaaacf33c, 0xbf9b990a, p0, p1);
};

global.N_0xaab050da48b57978 = function (p0, p1, p2, p3, p4) {
	return _in(0xaab050da, 0x48b57978, p0, p1, p2, p3, p4);
};

global.N_0xaab0fe202e9fc9f0 = function (p0, p1) {
	return _in(0xaab0fe20, 0x2e9fc9f0, p0, p1, _r, _ri);
};

global.N_0xaab86462966168ce = function (p0, p1) {
	return _in(0xaab86462, 0x966168ce, p0, p1, _r, _ri);
};

global.N_0xaac0ee3b4999abb5 = function (p0, p1) {
	return _in(0xaac0ee3b, 0x4999abb5, p0, p1);
};

global.N_0xaaded99a6b268a27 = function () {
	return _in(0xaaded99a, 0x6b268a27, _r, _ri);
};

global.N_0xaaed694ce814817f = function (p0) {
	return _in(0xaaed694c, 0xe814817f, p0, _r, _ri);
};

global.N_0xab0d553fe20a6e25 = function (p0) {
	return _in(0xab0d553f, 0xe20a6e25, p0);
};

global.N_0xab26deee120fd3fd = function (p0, p1) {
	return _in(0xab26deee, 0x120fd3fd, p0, p1);
};

global.N_0xab3773e7aa1e9dcc = function (p0) {
	return _in(0xab3773e7, 0xaa1e9dcc, p0, _r, _ri);
};

global.N_0xab3d3f45436db1d8 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xab3d3f45, 0x436db1d8, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xab43d1c80b5e9500 = function (p0) {
	return _in(0xab43d1c8, 0x0b5e9500, p0);
};

global.N_0xab591ae6b48b913e = function (p0, p1) {
	return _in(0xab591ae6, 0xb48b913e, p0, p1);
};

global.N_0xab5f12746a099a0e = function (p0, p1) {
	return _in(0xab5f1274, 0x6a099a0e, p0, p1, _r, _ri);
};

global.N_0xab643407d0b26f07 = function (p0, p1, p2, p3, p4) {
	return _in(0xab643407, 0xd0b26f07, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xab6a04cec428258b = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0xab6a04ce, 0xc428258b, _fv(p0), _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(p6), _fv(p7), _fv(p8), _fv(p9), _fv(p10), _fv(p11), _fi(p12) /* may be optional */, _r);
};

global.N_0xab72c67163dc4db4 = function (p0, p1) {
	return _in(0xab72c671, 0x63dc4db4, p0, p1);
};

global.N_0xabc18a28bad4b46f = function (p0, p1) {
	return _in(0xabc18a28, 0xbad4b46f, p0, p1, _r, _ri);
};

global.N_0xabdb4863d3d72021 = function (p0, p1, p2, p3, p4) {
	return _in(0xabdb4863, 0xd3d72021, p0, p1, p2, p3, p4);
};

global.N_0xac22aa6df4d1c1de = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xac22aa6d, 0xf4d1c1de, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xac355980681a7f89 = function (p0) {
	return _in(0xac355980, 0x681a7f89, p0);
};

global.N_0xac37644a538f7524 = function (p0) {
	return _in(0xac37644a, 0x538f7524, p0);
};

global.N_0xac5045ab7f1a34fd = function (p0) {
	return _in(0xac5045ab, 0x7f1a34fd, p0, _r, _ri);
};

global.N_0xac6153a0722f524c = function () {
	return _in(0xac6153a0, 0x722f524c, _r, _ri);
};

global.N_0xac67098a1e54abb0 = function (p0, p1, p2) {
	return _in(0xac67098a, 0x1e54abb0, p0, p1, p2);
};

global.N_0xac77757c05de9e5a = function (p0) {
	return _in(0xac77757c, 0x05de9e5a, p0);
};

global.N_0xac84686c06184b0d = function (p0, p1) {
	return _in(0xac84686c, 0x06184b0d, p0, p1, _r, _ri);
};

global.N_0xac8fab22a914ae34 = function (p0, p1, p2, p3) {
	return _in(0xac8fab22, 0xa914ae34, p0, p1, p2, p3, _r, _ri);
};

global.N_0xac959ab99aaf3d9f = function () {
	return _in(0xac959ab9, 0x9aaf3d9f, _r, _ri);
};

global.N_0xac9ae68f0a463752 = function (p0) {
	return _in(0xac9ae68f, 0x0a463752, p0);
};

global.N_0xaca45ddcef6071c4 = function (p0, p1) {
	return _in(0xaca45ddc, 0xef6071c4, p0, p1);
};

global.N_0xaca7fb30269096d4 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xaca7fb30, 0x269096d4, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0xacb7e1418a8b6e32 = function (p0) {
	return _in(0xacb7e141, 0x8a8b6e32, p0, _r, _ri);
};

global.N_0xacc44768af229042 = function () {
	return _in(0xacc44768, 0xaf229042);
};

global.N_0xacd4f9831dfad7f5 = function (p0) {
	return _in(0xacd4f983, 0x1dfad7f5, p0, _r, _ri);
};

/**
 * nullsub, doesn't do anything
 */
global.N_0xacf9cb705befa8cb = function () {
	return _in(0xacf9cb70, 0x5befa8cb, _r, _ri);
};

global.N_0xad03b03737ce6810 = function (p0) {
	return _in(0xad03b037, 0x37ce6810, p0, _r, _ri);
};

global.N_0xad17a18215dd23d6 = function (p0, p1, p2) {
	return _in(0xad17a182, 0x15dd23d6, p0, p1, p2, _r, _ri);
};

global.N_0xad22ab64fa428df3 = function (p0) {
	return _in(0xad22ab64, 0xfa428df3, p0);
};

global.N_0xad3330e3c3e98007 = function (p0, p1) {
	return _in(0xad3330e3, 0xc3e98007, p0, p1);
};

global.N_0xad3e07c37a7c1adc = function (name, p1) {
	return _in(0xad3e07c3, 0x7a7c1adc, _ts(name), p1);
};

global.N_0xad401c63158acbaa = function (p0) {
	return _in(0xad401c63, 0x158acbaa, p0, _r, _ri);
};

global.N_0xad44856a1cd29635 = function (p0, p1, p2) {
	return _in(0xad44856a, 0x1cd29635, p0, p1, p2);
};

global.N_0xad74c22a541ab987 = function (p0) {
	return _in(0xad74c22a, 0x541ab987, p0);
};

global.N_0xad8f2424c6e1e3a8 = function (p0) {
	return _in(0xad8f2424, 0xc6e1e3a8, p0);
};

global.N_0xadb56322eedfbdc9 = function (p0, p1, p2) {
	return _in(0xadb56322, 0xeedfbdc9, p0, p1, p2, _r, _ri);
};

global.N_0xadc45010bc17af0e = function (p0, p1) {
	return _in(0xadc45010, 0xbc17af0e, p0, p1);
};

global.N_0xadd31a5c7a5faa73 = function (p0, p1) {
	return _in(0xadd31a5c, 0x7a5faa73, p0, p1);
};

global.N_0xaddd1e7c0ecf7d95 = function (p0, p1) {
	return _in(0xaddd1e7c, 0x0ecf7d95, p0, p1, _r, _ri);
};

global.N_0xadf1d53f3b1fe0a7 = function (p0, p1, p2, p3) {
	return _in(0xadf1d53f, 0x3b1fe0a7, p0, p1, p2, p3);
};

global.N_0xae00387e53b1e9fc = function () {
	return _in(0xae00387e, 0x53b1e9fc);
};

global.N_0xae4bcc79c587ebbf = function (p0, p1, p2) {
	return _in(0xae4bcc79, 0xc587ebbf, p0, p1, p2);
};

global.N_0xae5ada4fe3e21adc = function (p0) {
	return _in(0xae5ada4f, 0xe3e21adc, p0, _r, _ri);
};

global.N_0xae6004120c18df97 = function (p0, p1, p2) {
	return _in(0xae600412, 0x0c18df97, p0, p1, p2);
};

global.N_0xae637bb8ef017875 = function (p0, p1) {
	return _in(0xae637bb8, 0xef017875, p0, p1);
};

global.N_0xae693ec3a178f6c2 = function (p0) {
	return _in(0xae693ec3, 0xa178f6c2, p0);
};

global.N_0xae6ada8fe7e84acc = function (p0, p1) {
	return _in(0xae6ada8f, 0xe7e84acc, p0, p1, _r, _ri);
};

global.N_0xae6b68a83abbe7c0 = function (p0) {
	return _in(0xae6b68a8, 0x3abbe7c0, p0);
};

global.N_0xae6de22de0ed4554 = function (p0, p1) {
	return _in(0xae6de22d, 0xe0ed4554, p0, p1);
};

global.N_0xae7bf7ca9e4ba48d = function (p0) {
	return _in(0xae7bf7ca, 0x9e4ba48d, p0);
};

global.N_0xae7e66a61e7c17a5 = function (p0, p1) {
	return _in(0xae7e66a6, 0x1e7c17a5, p0, p1);
};

global.N_0xaeb97d84cdf3c00b = function (p0, p1) {
	return _in(0xaeb97d84, 0xcdf3c00b, p0, p1);
};

global.N_0xaec5f0119867e457 = function (p0, p1) {
	return _in(0xaec5f011, 0x9867e457, p0, p1, _r, _ri);
};

global.N_0xaedf1bc1c133d6e3 = function () {
	return _in(0xaedf1bc1, 0xc133d6e3, _r, _ri);
};

global.N_0xaee6c800e124cfe1 = function (p0, p1) {
	return _in(0xaee6c800, 0xe124cfe1, p0, p1);
};

global.N_0xaf041c10756c30fb = function (p0, p1, p2, p3) {
	return _in(0xaf041c10, 0x756c30fb, p0, p1, p2, p3);
};

global.N_0xaf2ef28ce3084505 = function (p0, p1, p2, p3) {
	return _in(0xaf2ef28c, 0xe3084505, p0, p1, p2, p3);
};

global.N_0xaf341032e97fb061 = function (p0, p1) {
	return _in(0xaf341032, 0xe97fb061, p0, p1);
};

global.N_0xaf3a84c7de6a1dc5 = function (p0, p1) {
	return _in(0xaf3a84c7, 0xde6a1dc5, p0, p1);
};

global.N_0xaf4d239b8903fcbe = function () {
	return _in(0xaf4d239b, 0x8903fcbe);
};

global.N_0xaf530e56505d1bd6 = function (p0) {
	return _in(0xaf530e56, 0x505d1bd6, p0, _r, _ri);
};

global.N_0xaf61b3cd8c3b82c3 = function (p0) {
	return _in(0xaf61b3cd, 0x8c3b82c3, p0, _r, _ri);
};

global.N_0xaf6e67d073d2dce2 = function () {
	return _in(0xaf6e67d0, 0x73d2dce2, _r, _ri);
};

global.N_0xaf787e081ac4a8ee = function (p0) {
	return _in(0xaf787e08, 0x1ac4a8ee, p0, _r, _ri);
};

/**
 * SET_ENTITY_LO*
 * @param entity :
 * @param p1 :
 * @param p2 :
 * @param p3 :
 */
global.N_0xaf7f3099b9feb535 = function (entity, p1, p2, p3) {
	return _in(0xaf7f3099, 0xb9feb535, entity, _fv(p1), _fv(p2), _fv(p3));
};

global.N_0xaf9d167a5656d6a6 = function (p0, p1) {
	return _in(0xaf9d167a, 0x5656d6a6, p0, p1, _r, _ri);
};

global.N_0xafa14f98327791ce = function (p0) {
	return _in(0xafa14f98, 0x327791ce, p0, _r, _ri);
};

global.N_0xafa87a7d41ee346a = function (p0) {
	return _in(0xafa87a7d, 0x41ee346a, p0);
};

global.N_0xafd3599a3cc5637d = function () {
	return _in(0xafd3599a, 0x3cc5637d, _r, _ri);
};

global.N_0xafe2ae66f6251c66 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xafe2ae66, 0xf6251c66, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xaff2fd8add927585 = function () {
	return _in(0xaff2fd8a, 0xdd927585);
};

global.N_0xaff5be9ba496ce40 = function (p0, p1, p2, p3, p4) {
	return _in(0xaff5be9b, 0xa496ce40, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xaffd0ccf31f469b8 = function (p0) {
	return _in(0xaffd0ccf, 0x31f469b8, p0, _r, _ri);
};

global.N_0xb00ce33465b5406d = function (p0, p1) {
	return _in(0xb00ce334, 0x65b5406d, p0, p1, _r, _ri);
};

global.N_0xb03140014aca6c40 = function (p0, p1) {
	return _in(0xb0314001, 0x4aca6c40, p0, p1);
};

global.N_0xb032c085d9a03907 = function () {
	return _in(0xb032c085, 0xd9a03907);
};

global.N_0xb03944057fd735ba = function (p0, p1, p2) {
	return _in(0xb0394405, 0x7fd735ba, p0, p1, p2);
};

global.N_0xb04b69cf277d15c0 = function (p0) {
	return _in(0xb04b69cf, 0x277d15c0, p0, _r, _ri);
};

global.N_0xb059d7bd3d78c16f = function (p0, p1) {
	return _in(0xb059d7bd, 0x3d78c16f, p0, p1, _r, _ri);
};

global.N_0xb05cc690cde8a4a9 = function (p0, p1) {
	return _in(0xb05cc690, 0xcde8a4a9, p0, p1, _r, _ri);
};

global.N_0xb06f5f1def417216 = function (p0, p1, p2, p3) {
	return _in(0xb06f5f1d, 0xef417216, p0, p1, p2, p3);
};

global.N_0xb07d3185e11657a5 = function (entity) {
	return _in(0xb07d3185, 0xe11657a5, entity, _r);
};

global.N_0xb086c8c0f5701d14 = function (p0) {
	return _in(0xb086c8c0, 0xf5701d14, p0, _r, _ri);
};

global.N_0xb08c4fa25bc29db9 = function (p0) {
	return _in(0xb08c4fa2, 0x5bc29db9, p0);
};

global.N_0xb096547d61868254 = function (p0) {
	return _in(0xb096547d, 0x61868254, p0, _r, _ri);
};

global.N_0xb0b2c6d170b0e8e5 = function (p0) {
	return _in(0xb0b2c6d1, 0x70b0e8e5, p0, _r, _ri);
};

global.N_0xb0e8599243b3f568 = function (p0) {
	return _in(0xb0e85992, 0x43b3f568, p0, _r, _ri);
};

global.N_0xb0fb9b196a3d13f0 = function (p0, p1, p2) {
	return _in(0xb0fb9b19, 0x6a3d13f0, p0, p1, p2);
};

global.N_0xb112b9262ec29c20 = function (p0, p1) {
	return _in(0xb112b926, 0x2ec29c20, p0, p1, _r, _ri);
};

global.N_0xb131e686bd97b3f8 = function () {
	return _in(0xb131e686, 0xbd97b3f8);
};

global.N_0xb138ca787f3dd858 = function (p0, p1, p2) {
	return _in(0xb138ca78, 0x7f3dd858, p0, p1, p2);
};

global.N_0xb15cd2f9932c9ab5 = function (p0) {
	return _in(0xb15cd2f9, 0x932c9ab5, p0, _r, _ri);
};

global.N_0xb16223cb7da965f0 = function (p0) {
	return _in(0xb16223cb, 0x7da965f0, p0, _r, _ri);
};

global.N_0xb16c780c51e51e2b = function (p0) {
	return _in(0xb16c780c, 0x51e51e2b, p0, _r, _ri);
};

global.N_0xb16fc7b364d86585 = function () {
	return _in(0xb16fc7b3, 0x64d86585);
};

global.N_0xb173599d61faeb31 = function () {
	return _in(0xb173599d, 0x61faeb31);
};

global.N_0xb18fec133c7c6c69 = function (p0) {
	return _in(0xb18fec13, 0x3c7c6c69, p0, _r, _ri);
};

global.N_0xb190bca3f4042f95 = function (p0, p1, p2, p3) {
	return _in(0xb190bca3, 0xf4042f95, p0, p1, p2, p3);
};

global.N_0xb1964a83b345b4ab = function (p0) {
	return _in(0xb1964a83, 0xb345b4ab, p0, _r, _ri);
};

global.N_0xb1a196bafe650402 = function (p0, p1) {
	return _in(0xb1a196ba, 0xfe650402, p0, p1);
};

global.N_0xb1f6665aa54dcd5c = function (p0) {
	return _in(0xb1f6665a, 0xa54dcd5c, p0, _r, _ri);
};

global.N_0xb204bf9f30298d77 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xb204bf9f, 0x30298d77, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xb213d2a560b2e48b = function (p0, p1, p2) {
	return _in(0xb213d2a5, 0x60b2e48b, p0, p1, p2, _r, _ri);
};

global.N_0xb219612b5568e9ec = function (p0) {
	return _in(0xb219612b, 0x5568e9ec, p0, _r, _ri);
};

global.N_0xb223249b7798eeed = function (p0, p1, p2, p3) {
	return _in(0xb223249b, 0x7798eeed, p0, p1, p2, p3, _r, _ri);
};

global.N_0xb22b1d9f74095382 = function (p0) {
	return _in(0xb22b1d9f, 0x74095382, p0);
};

global.N_0xb22f05732f72f70c = function (p0) {
	return _in(0xb22f0573, 0x2f72f70c, p0);
};

global.N_0xb249ebcb30dd88e0 = function (p0, p1, p2) {
	return _in(0xb249ebcb, 0x30dd88e0, p0, p1, p2, _r, _ri);
};

global.N_0xb25b5a375be5be26 = function (p0, p1) {
	return _in(0xb25b5a37, 0x5be5be26, p0, p1);
};

global.N_0xb25e57fc8e37114d = function (p0) {
	return _in(0xb25e57fc, 0x8e37114d, p0, _r, _ri);
};

global.N_0xb285ad0ec870b2df = function (p0, p1) {
	return _in(0xb285ad0e, 0xc870b2df, p0, p1);
};

global.N_0xb28894cd7408bd0c = function () {
	return _in(0xb28894cd, 0x7408bd0c, _r, _ri);
};

global.N_0xb2920b9760f0f36b = function (p0, p1, p2) {
	return _in(0xb2920b97, 0x60f0f36b, p0, p1, p2, _r, _ri);
};

global.N_0xb292203008ebbaac = function (p0) {
	return _in(0xb2922030, 0x08ebbaac, p0, _r, _ri);
};

global.N_0xb29c553ba582d09e = function (p0, p1, p2, p3) {
	return _in(0xb29c553b, 0xa582d09e, p0, p1, p2, p3, _r, _ri);
};

global.N_0xb2a38826e5886e83 = function (p0, p1) {
	return _in(0xb2a38826, 0xe5886e83, p0, p1);
};

global.N_0xb2aff10216defa2f = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xb2aff102, 0x16defa2f, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0xb2b42607f7867576 = function (p0, p1, p2) {
	return _in(0xb2b42607, 0xf7867576, p0, p1, p2, _r, _ri);
};

global.N_0xb2cea5105aac8dde = function (p0) {
	return _in(0xb2cea510, 0x5aac8dde, p0, _r, _ri);
};

global.N_0xb2de3aebe31150e2 = function (p0, p1) {
	return _in(0xb2de3aeb, 0xe31150e2, p0, p1, _r, _ri);
};

global.N_0xb2f47a1afdfcc595 = function (p0, p1) {
	return _in(0xb2f47a1a, 0xfdfcc595, p0, p1);
};

global.N_0xb331d8a73f9d2bdf = function (p0, p1) {
	return _in(0xb331d8a7, 0x3f9d2bdf, p0, p1, _r, _ri);
};

global.N_0xb33a604345f58202 = function (p0) {
	return _in(0xb33a6043, 0x45f58202, p0, _r, _ri);
};

global.N_0xb346c85d49cc998e = function (p0, p1) {
	return _in(0xb346c85d, 0x49cc998e, p0, p1, _r, _ri);
};

global.N_0xb34a6009a0db80b8 = function (p0) {
	return _in(0xb34a6009, 0xa0db80b8, p0);
};

global.N_0xb35370d5353995cb = function (p0, p1, p2) {
	return _in(0xb35370d5, 0x353995cb, p0, p1, p2);
};

global.N_0xb36d3ec70963be60 = function (p0, p1) {
	return _in(0xb36d3ec7, 0x0963be60, p0, p1, _r, _ri);
};

global.N_0xb389289f031f059a = function () {
	return _in(0xb389289f, 0x031f059a, _r, _ri);
};

global.N_0xb38a29ccd5447783 = function (p0, p1, p2) {
	return _in(0xb38a29cc, 0xd5447783, p0, p1, p2);
};

global.N_0xb38c256498748413 = function () {
	return _in(0xb38c2564, 0x98748413);
};

global.N_0xb395a44a0c7ca615 = function (p0, p1, p2) {
	return _in(0xb395a44a, 0x0c7ca615, p0, p1, p2, _r, _ri);
};

global.N_0xb3b1546d23df8de1 = function (p0, p1, p2, p3, p4) {
	return _in(0xb3b1546d, 0x23df8de1, p0, p1, p2, p3, p4);
};

global.N_0xb3e8841f6bdaf83e = function () {
	return _in(0xb3e8841f, 0x6bdaf83e);
};

global.N_0xb3f2829907403c13 = function () {
	return _in(0xb3f28299, 0x07403c13, _r, _ri);
};

global.N_0xb3fb80a32bae3065 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xb3fb80a3, 0x2bae3065, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0xb40ea9e0d2e2f7f3 = function (p0, p1) {
	return _in(0xb40ea9e0, 0xd2e2f7f3, p0, p1);
};

global.N_0xb4158c8c9a3b5dce = function (p0, p1, p2, p3) {
	return _in(0xb4158c8c, 0x9a3b5dce, p0, p1, p2, p3, _r, _ri);
};

global.N_0xb4241ad8f5aee9ed = function (p0) {
	return _in(0xb4241ad8, 0xf5aee9ed, p0, _r, _ri);
};

global.N_0xb427911ea6dffef3 = function (p0, p1) {
	return _in(0xb427911e, 0xa6dffef3, p0, p1);
};

global.N_0xb429f58803d285b1 = function (p0, p1) {
	return _in(0xb429f588, 0x03d285b1, p0, p1, _r, _ri);
};

global.N_0xb42c87521d1bdd2f = function (p0, p1, p2, p3) {
	return _in(0xb42c8752, 0x1d1bdd2f, p0, p1, p2, p3);
};

global.N_0xb440f4e35393fc39 = function (p0, p1) {
	return _in(0xb440f4e3, 0x5393fc39, p0, p1);
};

global.N_0xb4411d4d6b81438e = function () {
	return _in(0xb4411d4d, 0x6b81438e, _r, _ri);
};

global.N_0xb462d69d406a2602 = function (p0) {
	return _in(0xb462d69d, 0x406a2602, p0, _r, _ri);
};

global.N_0xb469cfd9e065eb99 = function (p0, p1) {
	return _in(0xb469cfd9, 0xe065eb99, p0, p1);
};

global.N_0xb48050d326e9a2f3 = function (p0) {
	return _in(0xb48050d3, 0x26e9a2f3, p0, _r, _ri);
};

global.N_0xb4a25351d79b444c = function (p0) {
	return _in(0xb4a25351, 0xd79b444c, p0, _r, _ri);
};

global.N_0xb4b7c92fce7347b7 = function (p0) {
	return _in(0xb4b7c92f, 0xce7347b7, p0);
};

global.N_0xb4c71ba9cab097bd = function (p0, p1, p2, p3, p4) {
	return _in(0xb4c71ba9, 0xcab097bd, p0, p1, p2, p3, p4);
};

global.N_0xb520dbda7fcf573f = function (p0) {
	return _in(0xb520dbda, 0x7fcf573f, p0, _r, _ri);
};

global.N_0xb527099d1e1eed49 = function (p0, p1, p2) {
	return _in(0xb527099d, 0x1e1eed49, p0, p1, p2, _r, _ri);
};

global.N_0xb56d41a694e42e86 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xb56d41a6, 0x94e42e86, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xb5c4b18b12a2af23 = function (p0, p1) {
	return _in(0xb5c4b18b, 0x12a2af23, p0, p1, _r, _ri);
};

global.N_0xb5ded7b65c604fdf = function (p0) {
	return _in(0xb5ded7b6, 0x5c604fdf, p0, _r, _ri);
};

global.N_0xb5e2eda2135e0fa1 = function (p0, p1, p2) {
	return _in(0xb5e2eda2, 0x135e0fa1, p0, p1, p2, _r, _ri);
};

global.N_0xb5ef6fef2dc9ebed = function (interior) {
	return _in(0xb5ef6fef, 0x2dc9ebed, interior, _r, _ri);
};

global.N_0xb60c9f9ed47abb76 = function (p0) {
	return _in(0xb60c9f9e, 0xd47abb76, p0, _r, _ri);
};

global.N_0xb63b9178d0f58d82 = function (p0) {
	return _in(0xb63b9178, 0xd0f58d82, p0);
};

global.N_0xb655db7582aec805 = function (p0) {
	return _in(0xb655db75, 0x82aec805, p0, _r, _ri);
};

global.N_0xb65927f861e7ae39 = function (p0, p1) {
	return _in(0xb65927f8, 0x61e7ae39, p0, p1, _r, _ri);
};

global.N_0xb65a4dab460a19bd = function (p0) {
	return _in(0xb65a4dab, 0x460a19bd, p0, _r, _ri);
};

global.N_0xb65e7f733956cf25 = function (p0) {
	return _in(0xb65e7f73, 0x3956cf25, p0);
};

global.N_0xb676efda03dada52 = function (p0, p1) {
	return _in(0xb676efda, 0x03dada52, p0, p1, _r, _ri);
};

global.N_0xb6857100f8fd433c = function (p0, p1) {
	return _in(0xb6857100, 0xf8fd433c, p0, p1, _r, _ri);
};

global.N_0xb6cbd40f8ea69e8a = function (p0) {
	return _in(0xb6cbd40f, 0x8ea69e8a, p0, _r, _ri);
};

global.N_0xb6cfec32e3742779 = function (p0, p1, p2, p3) {
	return _in(0xb6cfec32, 0xe3742779, p0, p1, p2, p3);
};

global.N_0xb6e1a185c2b9319a = function (p0, p1, p2) {
	return _in(0xb6e1a185, 0xc2b9319a, p0, p1, p2, _r, _ri);
};

global.N_0xb6e79850b759a30e = function (p0, p1) {
	return _in(0xb6e79850, 0xb759a30e, p0, p1);
};

global.N_0xb6f4557060ef0fb4 = function (p0, p1) {
	return _in(0xb6f45570, 0x60ef0fb4, p0, p1, _r, _ri);
};

global.N_0xb6f4825153920582 = function () {
	return _in(0xb6f48251, 0x53920582);
};

global.N_0xb6fd96420c0126a1 = function (p0, p1) {
	return _in(0xb6fd9642, 0x0c0126a1, p0, p1);
};

global.N_0xb7017da4d498269f = function (p0, p1) {
	return _in(0xb7017da4, 0xd498269f, p0, p1);
};

global.N_0xb7079f4c72896756 = function (p0, p1, p2, p3, p4) {
	return _in(0xb7079f4c, 0x72896756, p0, p1, p2, p3, p4);
};

global.N_0xb711eb4bc8d06013 = function () {
	return _in(0xb711eb4b, 0xc8d06013);
};

global.N_0xb71b91b398f8f067 = function (p0, p1) {
	return _in(0xb71b91b3, 0x98f8f067, p0, p1, _r, _ri);
};

global.N_0xb7223b91cd6b7e07 = function (p0) {
	return _in(0xb7223b91, 0xcd6b7e07, p0, _r, _ri);
};

global.N_0xb727a847862cb00a = function (p0) {
	return _in(0xb727a847, 0x862cb00a, p0, _r, _ri);
};

global.N_0xb729679356a889ae = function (p0) {
	return _in(0xb7296793, 0x56a889ae, p0, _r, _ri);
};

global.N_0xb72999d3120599df = function (p0, p1, p2) {
	return _in(0xb72999d3, 0x120599df, p0, p1, p2, _r, _ri);
};

global.N_0xb7469cb9ac3c0fd4 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xb7469cb9, 0xac3c0fd4, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xb779f4fa19269aec = function (p0) {
	return _in(0xb779f4fa, 0x19269aec, p0);
};

global.N_0xb782f8238512bad5 = function (p0, p1) {
	return _in(0xb782f823, 0x8512bad5, p0, _ii(p1) /* may be optional */);
};

global.N_0xb783f75940b23014 = function (p0, p1) {
	return _in(0xb783f759, 0x40b23014, p0, p1);
};

global.N_0xb79817db31ff72b9 = function (p0, p1) {
	return _in(0xb79817db, 0x31ff72b9, p0, p1);
};

global.N_0xb7c7bdc375aea9a4 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xb7c7bdc3, 0x75aea9a4, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xb7dbb2986b87e230 = function (p0, p1) {
	return _in(0xb7dbb298, 0x6b87e230, p0, p1, _r, _ri);
};

global.N_0xb7df150605eedc9b = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xb7df1506, 0x05eedc9b, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0xb7e0590c86e1711f = function (p0) {
	return _in(0xb7e0590c, 0x86e1711f, p0, _r, _ri);
};

global.N_0xb832f1a686b9b810 = function (p0, p1, p2) {
	return _in(0xb832f1a6, 0x86b9b810, p0, p1, p2);
};

global.N_0xb85c13e0bf1f2a1c = function (p0) {
	return _in(0xb85c13e0, 0xbf1f2a1c, p0);
};

global.N_0xb881ca836cc4b6d4 = function (p0) {
	return _in(0xb881ca83, 0x6cc4b6d4, p0, _r, _ri);
};

global.N_0xb89fcff19dafff28 = function (p0, p1) {
	return _in(0xb89fcff1, 0x9dafff28, p0, p1, _r, _ri);
};

global.N_0xb8ab265426cfe6dd = function (p0, p1) {
	return _in(0xb8ab2654, 0x26cfe6dd, p0, p1);
};

global.N_0xb8b207c34285e978 = function (p0) {
	return _in(0xb8b207c3, 0x4285e978, p0);
};

global.N_0xb8b6430ead2d2437 = function (p0, p1) {
	return _in(0xb8b6430e, 0xad2d2437, p0, p1);
};

global.N_0xb8c984c0d47f4f07 = function (p0, p1, p2) {
	return _in(0xb8c984c0, 0xd47f4f07, p0, p1, p2);
};

global.N_0xb8de69d9473b7593 = function (p0, p1) {
	return _in(0xb8de69d9, 0x473b7593, p0, p1);
};

global.N_0xb8e213d02f37947d = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xb8e213d0, 0x2f37947d, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xb8e2d655e1d5bd39 = function (p0) {
	return _in(0xb8e2d655, 0xe1d5bd39, p0, _r, _ri);
};

global.N_0xb8e3486d107f4194 = function (p0, p1) {
	return _in(0xb8e3486d, 0x107f4194, p0, p1);
};

global.N_0xb8f52a3f84a7cc59 = function (p0) {
	return _in(0xb8f52a3f, 0x84a7cc59, p0, _r, _ri);
};

global.N_0xb9020ec89c07df04 = function (p0, p1, p2) {
	return _in(0xb9020ec8, 0x9c07df04, p0, p1, p2, _r, _ri);
};

global.N_0xb9050a97594c8832 = function (p0) {
	return _in(0xb9050a97, 0x594c8832, p0, _r, _ri);
};

global.N_0xb909149f2bb5f6da = function (p0, p1) {
	return _in(0xb909149f, 0x2bb5f6da, p0, p1);
};

global.N_0xb91ab3be7f655d49 = function (p0) {
	return _in(0xb91ab3be, 0x7f655d49, p0, _r, _ri);
};

global.N_0xb93a769b8b726950 = function (p0, p1) {
	return _in(0xb93a769b, 0x8b726950, p0, p1);
};

global.N_0xb93ea7184baa85c3 = function (p0, p1) {
	return _in(0xb93ea718, 0x4baa85c3, p0, p1, _r, _ri);
};

global.N_0xb9467e41dab1cf2c = function (p0, p1, p2, p3) {
	return _in(0xb9467e41, 0xdab1cf2c, p0, p1, p2, p3, _r, _ri);
};

global.N_0xb952a3ac41d58f2f = function (p0) {
	return _in(0xb952a3ac, 0x41d58f2f, p0, _r, _ri);
};

global.N_0xb958d97a0dfaa0c2 = function (p0) {
	return _in(0xb958d97a, 0x0dfaa0c2, p0, _r, _ri);
};

global.N_0xb961dd799a837bd7 = function () {
	return _in(0xb961dd79, 0x9a837bd7);
};

global.N_0xb981dd2dfaf9b1c9 = function (p0, p1, p2, p3, p4) {
	return _in(0xb981dd2d, 0xfaf9b1c9, p0, p1, p2, p3, p4);
};

global.N_0xb991fe166faf84fd = function (p0, p1, p2) {
	return _in(0xb991fe16, 0x6faf84fd, p0, p1, p2, _r, _ri);
};

/**
 * Sorts some unknown data.
 * Likely SORT_*
 */
global.N_0xb9b9e47edb9d63db = function () {
	return _in(0xb9b9e47e, 0xdb9d63db);
};

global.N_0xb9bdfae609dfb7c5 = function (p0, p1, p2) {
	return _in(0xb9bdfae6, 0x09dfb7c5, p0, p1, p2);
};

global.N_0xb9c92616929cc25d = function (p0, p1) {
	return _in(0xb9c92616, 0x929cc25d, p0, p1);
};

global.N_0xb9d5bdda88e1bb66 = function (p0) {
	return _in(0xb9d5bdda, 0x88e1bb66, p0, _r, _ri);
};

global.N_0xba0163b277c2d2d0 = function (p0) {
	return _in(0xba0163b2, 0x77c2d2d0, p0, _r, _ri);
};

global.N_0xba0980b5c0a11924 = function (p0) {
	return _in(0xba0980b5, 0xc0a11924, p0);
};

global.N_0xba208a8d6399a3ac = function (p0, p1) {
	return _in(0xba208a8d, 0x6399a3ac, p0, p1, _r, _ri);
};

global.N_0xba24095ea96dfe17 = function (p0) {
	return _in(0xba24095e, 0xa96dfe17, p0, _r, _ri);
};

global.N_0xba2a089e60ed1163 = function (p0, p1, p2, p3, p4) {
	return _in(0xba2a089e, 0x60ed1163, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xba2c49ea6a8d24ff = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xba2c49ea, 0x6a8d24ff, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xba5ca1feb5de0df6 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xba5ca1fe, 0xb5de0df6, p0, p1, p2, p3, p4, p5);
};

global.N_0xba62b4d80fa66bd6 = function (p0, p1, p2, p3) {
	return _in(0xba62b4d8, 0x0fa66bd6, p0, p1, p2, p3);
};

global.N_0xba8818212633500a = function (p0, p1, p2) {
	return _in(0xba881821, 0x2633500a, p0, p1, p2);
};

global.N_0xba958f68031ddbfc = function (p0, p1) {
	return _in(0xba958f68, 0x031ddbfc, p0, p1, _r, _rv);
};

global.N_0xbaab791aa72c2821 = function (p0, p1) {
	return _in(0xbaab791a, 0xa72c2821, p0, p1);
};

global.N_0xbad2a311667a50d7 = function (p0, p1) {
	return _in(0xbad2a311, 0x667a50d7, p0, p1);
};

global.N_0xbae08f00021bffb2 = function (p0, p1) {
	return _in(0xbae08f00, 0x021bffb2, p0, p1);
};

global.N_0xbae0eedf93f05eaa = function (p0, p1) {
	return _in(0xbae0eedf, 0x93f05eaa, p0, p1);
};

global.N_0xbaffde5f953720d9 = function () {
	return _in(0xbaffde5f, 0x953720d9, _r, _ri);
};

global.N_0xbb1e41dd3d3c6250 = function (p0, p1, p2) {
	return _in(0xbb1e41dd, 0x3d3c6250, p0, p1, p2);
};

global.N_0xbb1ec8c2eef33baa = function (p0) {
	return _in(0xbb1ec8c2, 0xeef33baa, p0);
};

global.N_0xbb282cf5d2333fb8 = function (p0, p1) {
	return _in(0xbb282cf5, 0xd2333fb8, p0, p1);
};

global.N_0xbb3e5370ebb6be28 = function (p0, p1) {
	return _in(0xbb3e5370, 0xebb6be28, p0, p1, _r, _ri);
};

global.N_0xbb3e9b073e66c3c9 = function (p0, p1, p2, p3, p4) {
	return _in(0xbb3e9b07, 0x3e66c3c9, p0, p1, p2, p3, p4);
};

global.N_0xbb51299166b844f3 = function () {
	return _in(0xbb512991, 0x66b844f3);
};

global.N_0xbb68908cd11aebdc = function (p0) {
	return _in(0xbb68908c, 0xd11aebdc, p0);
};

global.N_0xbb68d4d3ca3de402 = function (p0, p1) {
	return _in(0xbb68d4d3, 0xca3de402, p0, p1);
};

global.N_0xbb697756309d77ee = function (p0) {
	return _in(0xbb697756, 0x309d77ee, p0, _r, _ri);
};

global.N_0xbb6c707f20d955d4 = function (p0) {
	return _in(0xbb6c707f, 0x20d955d4, _fv(p0));
};

global.N_0xbb6ea5d59e926095 = function (p0, p1) {
	return _in(0xbb6ea5d5, 0x9e926095, p0, p1);
};

global.N_0xbb765b8fd49a796c = function (p0) {
	return _in(0xbb765b8f, 0xd49a796c, p0, _r, _ri);
};

global.N_0xbb7f4273c186bc4b = function (p0, p1) {
	return _in(0xbb7f4273, 0xc186bc4b, p0, p1);
};

global.N_0xbba140062b15a8ac = function (p0) {
	return _in(0xbba14006, 0x2b15a8ac, p0);
};

global.N_0xbbadfb5e5e5766fb = function (p0, p1) {
	return _in(0xbbadfb5e, 0x5e5766fb, p0, p1);
};

global.N_0xbbc67a6f965c688a = function (p0, p1, p2) {
	return _in(0xbbc67a6f, 0x965c688a, p0, p1, p2, _r, _ri);
};

global.N_0xbbe5b63effb08e68 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xbbe5b63e, 0xffb08e68, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xbbe768e3ae76e07c = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0xbbe768e3, 0xae76e07c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, _r, _ri);
};

global.N_0xbbf6d1d07c02d00a = function (p0, p1) {
	return _in(0xbbf6d1d0, 0x7c02d00a, p0, p1);
};

global.N_0xbc016635d6a73b31 = function (p0, p1, p2) {
	return _in(0xbc016635, 0xd6a73b31, p0, p1, p2);
};

global.N_0xbc02b3d151d3859f = function (p0, p1) {
	return _in(0xbc02b3d1, 0x51d3859f, p0, p1);
};

global.N_0xbc0884bc590951c7 = function (p0, p1) {
	return _in(0xbc0884bc, 0x590951c7, p0, p1, _r, _ri);
};

global.N_0xbc0df006a4952c68 = function (p0, p1, p2) {
	return _in(0xbc0df006, 0xa4952c68, p0, p1, p2);
};

global.N_0xbc1dc48270468444 = function (p0) {
	return _in(0xbc1dc482, 0x70468444, p0);
};

global.N_0xbc2c927f5c264243 = function (p0) {
	return _in(0xbc2c927f, 0x5c264243, p0);
};

global.N_0xbc3f847ae2c3dc65 = function (p0, p1) {
	return _in(0xbc3f847a, 0xe2c3dc65, p0, p1);
};

global.N_0xbc4735f48cd983ef = function (p0, p1) {
	return _in(0xbc4735f4, 0x8cd983ef, p0, p1);
};

global.N_0xbc6df00d7a4a6819 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xbc6df00d, 0x7a4a6819, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xbc6f454e310124da = function (p0, p1, p2) {
	return _in(0xbc6f454e, 0x310124da, p0, p1, p2);
};

global.N_0xbc781d24aa11f179 = function (p0) {
	return _in(0xbc781d24, 0xaa11f179, p0);
};

global.N_0xbc7d36946d19e60e = function (p0) {
	return _in(0xbc7d3694, 0x6d19e60e, p0);
};

global.N_0xbc864a70ad55e0c1 = function (p0, p1) {
	return _in(0xbc864a70, 0xad55e0c1, p0, p1, _r, _ri);
};

global.N_0xbc8a281ff125c655 = function () {
	return _in(0xbc8a281f, 0xf125c655, _r, _ri);
};

global.N_0xbc90bdf4e5228ea1 = function () {
	return _in(0xbc90bdf4, 0xe5228ea1);
};

global.N_0xbcc6dc59e32a2bdc = function (p0) {
	return _in(0xbcc6dc59, 0xe32a2bdc, p0);
};

global.N_0xbcc76708e5677e1d = function (p0, p1) {
	return _in(0xbcc76708, 0xe5677e1d, p0, p1);
};

global.N_0xbcda0ba8762facb9 = function (p0) {
	return _in(0xbcda0ba8, 0x762facb9, p0);
};

global.N_0xbce668aaf83608be = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xbce668aa, 0xf83608be, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0xbd090f5b1db82189 = function (p0, p1) {
	return _in(0xbd090f5b, 0x1db82189, p0, p1);
};

global.N_0xbd0e4f52f6d95242 = function (p0) {
	return _in(0xbd0e4f52, 0xf6d95242, p0, _r, _ri);
};

global.N_0xbd1c3c0f271c39d3 = function (p0, p1) {
	return _in(0xbd1c3c0f, 0x271c39d3, p0, p1);
};

global.N_0xbd3324281e8b9933 = function (p0, p1, p2, p3) {
	return _in(0xbd332428, 0x1e8b9933, p0, p1, p2, p3, _r, _ri);
};

global.N_0xbd3c4a2ed509205e = function (p0) {
	return _in(0xbd3c4a2e, 0xd509205e, p0, _r, _ri);
};

global.N_0xbd629c1c4f501c80 = function (p0) {
	return _in(0xbd629c1c, 0x4f501c80, p0, _r, _ri);
};

global.N_0xbd62d98799a3daf0 = function (p0, p1) {
	return _in(0xbd62d987, 0x99a3daf0, p0, p1, _r, _ri);
};

global.N_0xbd6b242b8bd5543a = function (p0) {
	return _in(0xbd6b242b, 0x8bd5543a, p0, _r, _ri);
};

global.N_0xbd70108d01875299 = function (p0) {
	return _in(0xbd70108d, 0x01875299, p0, _r, _ri);
};

global.N_0xbd75500141e4725c = function (p0, p1) {
	return _in(0xbd755001, 0x41e4725c, p0, p1);
};

global.N_0xbd861ae8a5181ed7 = function (p0, p1) {
	return _in(0xbd861ae8, 0xa5181ed7, p0, p1);
};

global.N_0xbd944a3d36e992de = function () {
	return _in(0xbd944a3d, 0x36e992de);
};

global.N_0xbd94cecfb2d65119 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xbd94cecf, 0xb2d65119, p0, p1, p2, p3, p4, p5);
};

global.N_0xbd96185264ddaaea = function (p0, p1) {
	return _in(0xbd961852, 0x64ddaaea, p0, p1);
};

global.N_0xbdc6e364c9c78178 = function (p0) {
	return _in(0xbdc6e364, 0xc9c78178, p0, _r, _ri);
};

global.N_0xbdcc671b911040f9 = function (p0) {
	return _in(0xbdcc671b, 0x911040f9, p0);
};

global.N_0xbdd9c235d8d1052e = function (p0) {
	return _in(0xbdd9c235, 0xd8d1052e, p0, _r, _ri);
};

global.N_0xbdda0c290c228159 = function (p0, p1, p2) {
	return _in(0xbdda0c29, 0x0c228159, p0, p1, p2);
};

global.N_0xbdda142759307528 = function (p0) {
	return _in(0xbdda1427, 0x59307528, p0);
};

global.N_0xbded916a9f9b0604 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xbded916a, 0x9f9b0604, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xbdfeeb7600bcd938 = function (p0) {
	return _in(0xbdfeeb76, 0x00bcd938, p0);
};

global.N_0xbe012571b25f5aca = function (p0, p1, p2, p3, p4) {
	return _in(0xbe012571, 0xb25f5aca, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xbe0c524970892d41 = function (p0, p1) {
	return _in(0xbe0c5249, 0x70892d41, p0, p1);
};

global.N_0xbe1067cd1c9570f6 = function (p0) {
	return _in(0xbe1067cd, 0x1c9570f6, p0, _r, _ri);
};

global.N_0xbe28db99556ff8d9 = function (p0) {
	return _in(0xbe28db99, 0x556ff8d9, p0, _r, _ri);
};

global.N_0xbe551c2cc421185d = function (p0, p1) {
	return _in(0xbe551c2c, 0xc421185d, p0, p1);
};

global.N_0xbe711b14a159e84f = function (p0, p1) {
	return _in(0xbe711b14, 0xa159e84f, p0, p1);
};

global.N_0xbe72591d1509ffe4 = function (p0) {
	return _in(0xbe72591d, 0x1509ffe4, p0, _r, _ri);
};

global.N_0xbe7d814cfa181b56 = function () {
	return _in(0xbe7d814c, 0xfa181b56);
};

global.N_0xbe83cae8ed77a94f = function (p0) {
	return _in(0xbe83cae8, 0xed77a94f, p0);
};

global.N_0xbe8daa9d8d01da6a = function (p0, p1, p2) {
	return _in(0xbe8daa9d, 0x8d01da6a, p0, p1, p2);
};

global.N_0xbea3a6e5f5f79a6f = function (p0, p1) {
	return _in(0xbea3a6e5, 0xf5f79a6f, p0, p1, _r, _ri);
};

global.N_0xbea7d3cb47e1479c = function () {
	return _in(0xbea7d3cb, 0x47e1479c, _r, _ri);
};

global.N_0xbec65c6049b3219d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xbec65c60, 0x49b3219d, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xbed386157f65942c = function (p0, p1) {
	return _in(0xbed38615, 0x7f65942c, p0, p1);
};

global.N_0xbedbe39b5fd98fd6 = function (p0) {
	return _in(0xbedbe39b, 0x5fd98fd6, p0, _r, _ri);
};

global.N_0xbeefbb608d2aa68a = function (p0) {
	return _in(0xbeefbb60, 0x8d2aa68a, p0);
};

global.N_0xbefed69ce8317f91 = function (p0) {
	return _in(0xbefed69c, 0xe8317f91, p0, _r, _ri);
};

global.N_0xbf2dd155b2adcd0a = function (p0) {
	return _in(0xbf2dd155, 0xb2adcd0a, p0, _r, _ri);
};

global.N_0xbf4dc1784be94dfa = function (ped, p1, hash) {
	return _in(0xbf4dc178, 0x4be94dfa, ped, p1, _ch(hash));
};

global.N_0xbf4f34a85ca2970d = function () {
	return _in(0xbf4f34a8, 0x5ca2970d);
};

global.N_0xbf567df2bef211a6 = function (p0, p1) {
	return _in(0xbf567df2, 0xbef211a6, p0, p1);
};

global.N_0xbf5987e1cde63501 = function (p0, p1, p2, p3) {
	return _in(0xbf5987e1, 0xcde63501, p0, p1, p2, p3, _r, _ri);
};

global.N_0xbf5e791bbbf90a3c = function (p0, p1) {
	return _in(0xbf5e791b, 0xbbf90a3c, p0, p1, _r, _ri);
};

global.N_0xbf6583e926d13890 = function (p0, p1) {
	return _in(0xbf6583e9, 0x26d13890, p0, p1);
};

global.N_0xbf8276e51761f9da = function () {
	return _in(0xbf8276e5, 0x1761f9da, _r, _ri);
};

global.N_0xbfa6b7731c3baf02 = function () {
	return _in(0xbfa6b773, 0x1c3baf02);
};

global.N_0xbfc83da249befcc9 = function (p0, p1, p2) {
	return _in(0xbfc83da2, 0x49befcc9, p0, p1, p2);
};

global.N_0xbfca7afabf9d7967 = function (p0, p1) {
	return _in(0xbfca7afa, 0xbf9d7967, p0, p1, _r, _ri);
};

global.N_0xbfcb17895bb99e4e = function (p0, p1) {
	return _in(0xbfcb1789, 0x5bb99e4e, p0, p1);
};

global.N_0xbfff81e12a745a5f = function () {
	return _in(0xbfff81e1, 0x2a745a5f);
};

global.N_0xc0258742b034dfaf = function (p0) {
	return _in(0xc0258742, 0xb034dfaf, p0);
};

global.N_0xc028b3f52c707c49 = function (p0) {
	return _in(0xc028b3f5, 0x2c707c49, p0, _r, _ri);
};

global.N_0xc0474c8bcf6787ad = function (p0) {
	return _in(0xc0474c8b, 0xcf6787ad, p0, _r, _ri);
};

global.N_0xc04f47d488ef9eba = function (p0, p1, p2, p3) {
	return _in(0xc04f47d4, 0x88ef9eba, p0, p1, p2, p3);
};

global.N_0xc061e50f8d299f95 = function (p0, p1, p2, p3) {
	return _in(0xc061e50f, 0x8d299f95, p0, p1, p2, p3, _r, _ri);
};

global.N_0xc06cff658b2e51da = function (p0, p1, p2) {
	return _in(0xc06cff65, 0x8b2e51da, p0, p1, p2, _r, _ri);
};

global.N_0xc07b91b996c1de89 = function (p0, p1) {
	return _in(0xc07b91b9, 0x96c1de89, p0, p1);
};

global.N_0xc07cff658b2e51da = function (p0, p1) {
	return _in(0xc07cff65, 0x8b2e51da, p0, p1, _r, _ri);
};

global.N_0xc080ff658b2e51da = function (p0) {
	return _in(0xc080ff65, 0x8b2e51da, p0, _r, _ri);
};

global.N_0xc084ff658b2e52da = function (p0) {
	return _in(0xc084ff65, 0x8b2e52da, p0, _r, _ri);
};

global.N_0xc084ff658b2e53da = function () {
	return _in(0xc084ff65, 0x8b2e53da, _r, _ri);
};

global.N_0xc084ff658b2e54da = function (p0) {
	return _in(0xc084ff65, 0x8b2e54da, p0, _r, _ri);
};

global.N_0xc084ff658b2e55da = function (p0, p1) {
	return _in(0xc084ff65, 0x8b2e55da, p0, p1, _r, _ri);
};

global.N_0xc084ff658b2e61da = function (p0) {
	return _in(0xc084ff65, 0x8b2e61da, p0, _r, _ri);
};

global.N_0xc084ff658b2e71da = function (p0, p1, p2) {
	return _in(0xc084ff65, 0x8b2e71da, p0, p1, p2, _r, _ri);
};

global.N_0xc084ff658b2e81da = function (p0, p1, p2) {
	return _in(0xc084ff65, 0x8b2e81da, p0, p1, p2, _r, _ri);
};

global.N_0xc086ff658b2e51da = function (p0) {
	return _in(0xc086ff65, 0x8b2e51da, p0, _r, _ri);
};

global.N_0xc086ff658b2e51db = function () {
	return _in(0xc086ff65, 0x8b2e51db, _r, _ri);
};

global.N_0xc087ff658b2e51da = function (p0, p1) {
	return _in(0xc087ff65, 0x8b2e51da, p0, p1, _r, _ri);
};

global.N_0xc088ff658b2e51da = function () {
	return _in(0xc088ff65, 0x8b2e51da, _r, _ri);
};

global.N_0xc089ff658b2e51da = function (p0, p1) {
	return _in(0xc089ff65, 0x8b2e51da, p0, p1, _r, _ri);
};

global.N_0xc08aff658b2e51da = function (p0) {
	return _in(0xc08aff65, 0x8b2e51da, p0);
};

global.N_0xc08aff658b2e51db = function (p0) {
	return _in(0xc08aff65, 0x8b2e51db, p0);
};

global.N_0xc08bff658b2e51da = function (p0) {
	return _in(0xc08bff65, 0x8b2e51da, p0, _r, _ri);
};

global.N_0xc08cff658b2e51da = function (p0, p1) {
	return _in(0xc08cff65, 0x8b2e51da, p0, p1, _r, _ri);
};

global.N_0xc08def658b2e51da = function (p0) {
	return _in(0xc08def65, 0x8b2e51da, p0, _r, _ri);
};

global.N_0xc08dff658b2e51da = function () {
	return _in(0xc08dff65, 0x8b2e51da, _r, _ri);
};

global.N_0xc08dff658b2e51db = function (p0) {
	return _in(0xc08dff65, 0x8b2e51db, p0, _r, _ri);
};

global.N_0xc08e804c91f47c80 = function (p0, p1) {
	return _in(0xc08e804c, 0x91f47c80, p0, p1, _r, _ri);
};

global.N_0xc08eff658b2e51db = function (p0, p1) {
	return _in(0xc08eff65, 0x8b2e51db, p0, p1, _r, _ri);
};

global.N_0xc08fff658b2e51da = function () {
	return _in(0xc08fff65, 0x8b2e51da, _r, _ri);
};

global.N_0xc08fff658b2e51db = function (p0) {
	return _in(0xc08fff65, 0x8b2e51db, p0, _r, _ri);
};

global.N_0xc0940ac858c1e126 = function (p0) {
	return _in(0xc0940ac8, 0x58c1e126, p0, _r, _ri);
};

global.N_0xc09cff658b2e51da = function (p0, p1, p2) {
	return _in(0xc09cff65, 0x8b2e51da, p0, p1, p2, _r, _ri);
};

global.N_0xc0abf784590798a9 = function (p0) {
	return _in(0xc0abf784, 0x590798a9, p0);
};

global.N_0xc0b1c05b313693d1 = function (p0, p1) {
	return _in(0xc0b1c05b, 0x313693d1, p0, p1);
};

global.N_0xc0b21f235c02139c = function (p0) {
	return _in(0xc0b21f23, 0x5c02139c, p0);
};

global.N_0xc0cffda87c2c163d = function (p0, p1, p2) {
	return _in(0xc0cffda8, 0x7c2c163d, p0, p1, p2, _r, _ri);
};

global.N_0xc0df161950fb101e = function (p0) {
	return _in(0xc0df1619, 0x50fb101e, p0, _r, _ri);
};

global.N_0xc0e880b7a441164d = function (p0, p1) {
	return _in(0xc0e880b7, 0xa441164d, p0, p1, _r, _ri);
};

global.N_0xc0edef16d90661ee = function (p0, p1) {
	return _in(0xc0edef16, 0xd90661ee, p0, p1);
};

global.N_0xc0f0417a90402742 = function (p0, p1) {
	return _in(0xc0f0417a, 0x90402742, p0, p1);
};

global.N_0xc1193521e3b9fadd = function (p0, p1) {
	return _in(0xc1193521, 0xe3b9fadd, p0, p1);
};

global.N_0xc163dac52ac975d3 = function (p0, p1) {
	return _in(0xc163dac5, 0x2ac975d3, p0, p1);
};

global.N_0xc177c827cefc0aa4 = function (p0, p1) {
	return _in(0xc177c827, 0xcefc0aa4, p0, p1);
};

global.N_0xc1799fafd2fdf52b = function (p0, p1, p2, p3) {
	return _in(0xc1799faf, 0xd2fdf52b, p0, p1, p2, p3);
};

global.N_0xc17a94cc8fc3c61a = function (p0, p1, p2, p3, p4) {
	return _in(0xc17a94cc, 0x8fc3c61a, p0, p1, p2, p3, p4);
};

global.N_0xc17f69e1418cd11f = function (p0) {
	return _in(0xc17f69e1, 0x418cd11f, p0, _r, _ri);
};

global.N_0xc1842f40fd501da2 = function (p0, p1) {
	return _in(0xc1842f40, 0xfd501da2, p0, p1);
};

global.N_0xc184ff658b2e55da = function (p0, p1) {
	return _in(0xc184ff65, 0x8b2e55da, p0, p1, _r, _ri);
};

global.N_0xc1ab7eefd3e6ee49 = function (p0, p1) {
	return _in(0xc1ab7eef, 0xd3e6ee49, p0, p1);
};

global.N_0xc1e1a3d5ed7617b8 = function (p0, p1) {
	return _in(0xc1e1a3d5, 0xed7617b8, p0, p1);
};

global.N_0xc1f04fb37e3f0e57 = function (p0, p1) {
	return _in(0xc1f04fb3, 0x7e3f0e57, p0, p1, _r, _ri);
};

global.N_0xc205b3c54c6a4e37 = function (p0) {
	return _in(0xc205b3c5, 0x4c6a4e37, p0);
};

global.N_0xc212f1d05a8232bb = function (p0) {
	return _in(0xc212f1d0, 0x5a8232bb, p0, _r, _ri);
};

global.N_0xc223d299c670413d = function (p0, p1, p2, p3) {
	return _in(0xc223d299, 0xc670413d, p0, p1, p2, p3, _r, _ri);
};

global.N_0xc2266aa617668ad3 = function (p0, p1) {
	return _in(0xc2266aa6, 0x17668ad3, p0, p1);
};

global.N_0xc22aa08a8adb87d4 = function (p0) {
	return _in(0xc22aa08a, 0x8adb87d4, p0, _r, _ri);
};

global.N_0xc239dbd9a57d2a71 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xc239dbd9, 0xa57d2a71, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0xc252c0cc969af79a = function (p0) {
	return _in(0xc252c0cc, 0x969af79a, p0);
};

global.N_0xc2745d9261664901 = function (p0, p1) {
	return _in(0xc2745d92, 0x61664901, p0, p1);
};

global.N_0xc276fe69dda22bad = function (p0) {
	return _in(0xc276fe69, 0xdda22bad, p0, _r, _ri);
};

global.N_0xc284ff658b2e55da = function (p0, p1, p2) {
	return _in(0xc284ff65, 0x8b2e55da, p0, p1, p2, _r, _ri);
};

global.N_0xc285fd21294a1c49 = function (p0) {
	return _in(0xc285fd21, 0x294a1c49, p0, _r, _ri);
};

global.N_0xc28f62ac9774fc1b = function () {
	return _in(0xc28f62ac, 0x9774fc1b, _r, _ri);
};

global.N_0xc29996a337bdd099 = function (p0) {
	return _in(0xc29996a3, 0x37bdd099, p0, _r, _ri);
};

global.N_0xc2b8164c3be871a4 = function () {
	return _in(0xc2b8164c, 0x3be871a4);
};

global.N_0xc2c05defe85a0b64 = function () {
	return _in(0xc2c05def, 0xe85a0b64, _r);
};

global.N_0xc2e62678d602853c = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xc2e62678, 0xd602853c, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xc2e71d7e0a7b4c89 = function (p0) {
	return _in(0xc2e71d7e, 0x0a7b4c89, p0, _r, _ri);
};

global.N_0xc2ef407645beecdc = function (p0) {
	return _in(0xc2ef4076, 0x45beecdc, p0, _r, _ri);
};

global.N_0xc310239acccf5579 = function () {
	return _in(0xc310239a, 0xcccf5579);
};

global.N_0xc31c44c43b48fde3 = function (p0, p1) {
	return _in(0xc31c44c4, 0x3b48fde3, p0, p1);
};

global.N_0xc325a6baa62cf8a2 = function (p0, p1) {
	return _in(0xc325a6ba, 0xa62cf8a2, p0, p1);
};

global.N_0xc332c91388f5580b = function (p0) {
	return _in(0xc332c913, 0x88f5580b, p0);
};

global.N_0xc346a546612c49a9 = function (p0) {
	return _in(0xc346a546, 0x612c49a9, p0, _r, _ri);
};

global.N_0xc349ee1e6efa494b = function (p0, p1, p2, p3) {
	return _in(0xc349ee1e, 0x6efa494b, p0, p1, p2, p3);
};

global.N_0xc351394b932a6a50 = function (p0) {
	return _in(0xc351394b, 0x932a6a50, p0);
};

global.N_0xc3544ad0522e69b4 = function (p0, p1) {
	return _in(0xc3544ad0, 0x522e69b4, p0, p1);
};

global.N_0xc369e2234e34a0ca = function (p0, p1) {
	return _in(0xc369e223, 0x4e34a0ca, p0, p1, _r, _ri);
};

global.N_0xc372b6a88f6e4ad8 = function (p0, p1, p2) {
	return _in(0xc372b6a8, 0x8f6e4ad8, p0, p1, p2);
};

global.N_0xc37792a3f9c90771 = function () {
	return _in(0xc37792a3, 0xf9c90771, _r, _ri);
};

global.N_0xc3896d03e2852236 = function (p0) {
	return _in(0xc3896d03, 0xe2852236, p0);
};

global.N_0xc38b4952b728397a = function (p0, p1) {
	return _in(0xc38b4952, 0xb728397a, p0, p1);
};

global.N_0xc394ff658b2e55da = function (p0, p1, p2, p3) {
	return _in(0xc394ff65, 0x8b2e55da, p0, p1, p2, p3, _r, _ri);
};

global.N_0xc395355843be134b = function (p0) {
	return _in(0xc3953558, 0x43be134b, p0, _r, _ri);
};

global.N_0xc3995d396f1d97b6 = function (p0, p1, p2) {
	return _in(0xc3995d39, 0x6f1d97b6, p0, p1, p2, _r, _ri);
};

global.N_0xc399cc89fba05da0 = function (p0, p1) {
	return _in(0xc399cc89, 0xfba05da0, p0, p1);
};

global.N_0xc3abcfbc7d74afa5 = function (p0, p1, p2) {
	return _in(0xc3abcfbc, 0x7d74afa5, p0, p1, p2);
};

global.N_0xc3adf4880784fa9c = function (p0) {
	return _in(0xc3adf488, 0x0784fa9c, p0);
};

global.N_0xc3d4b754c0e86b9e = function (p0, p1) {
	return _in(0xc3d4b754, 0xc0e86b9e, p0, p1, _r, _ri);
};

global.N_0xc3d581a34bc0a1f0 = function (p0, p1) {
	return _in(0xc3d581a3, 0x4bc0a1f0, p0, p1);
};

global.N_0xc3e9e5d4f413b773 = function (p0, p1) {
	return _in(0xc3e9e5d4, 0xf413b773, p0, p1);
};

global.N_0xc4019cf9ae8e931a = function (p0) {
	return _in(0xc4019cf9, 0xae8e931a, p0, _r, _rv);
};

global.N_0xc412aa1c73111fe0 = function (p0, p1, p2, p3, p4) {
	return _in(0xc412aa1c, 0x73111fe0, p0, p1, p2, p3, p4);
};

global.N_0xc43cd2668b204419 = function () {
	return _in(0xc43cd266, 0x8b204419, _r, _ri);
};

global.N_0xc4533e3e87125c9e = function (p0) {
	return _in(0xc4533e3e, 0x87125c9e, p0);
};

global.N_0xc47d9080a9a8856a = function (p0, p1) {
	return _in(0xc47d9080, 0xa9a8856a, p0, p1);
};

global.N_0xc48152bc6b3e821c = function (p0, p1, p2) {
	return _in(0xc48152bc, 0x6b3e821c, p0, p1, p2, _r, _ri);
};

global.N_0xc484ff658b2e55da = function (p0) {
	return _in(0xc484ff65, 0x8b2e55da, p0);
};

global.N_0xc4873b053054c04b = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xc4873b05, 0x3054c04b, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xc488b8c0e52560d8 = function (p0) {
	return _in(0xc488b8c0, 0xe52560d8, p0, _r, _ri);
};

global.N_0xc489fe31ac726512 = function (p0, p1) {
	return _in(0xc489fe31, 0xac726512, p0, p1);
};

global.N_0xc48a9eb0d499b3e5 = function (p0) {
	return _in(0xc48a9eb0, 0xd499b3e5, p0, _r, _ri);
};

global.N_0xc48af420371c7407 = function (p0, p1) {
	return _in(0xc48af420, 0x371c7407, p0, p1, _r, _ri);
};

global.N_0xc494c76a34266e82 = function (p0, p1) {
	return _in(0xc494c76a, 0x34266e82, p0, p1);
};

global.N_0xc4a2c11fc0d41916 = function (p0, p1) {
	return _in(0xc4a2c11f, 0xc0d41916, p0, p1);
};

global.N_0xc4b67ef3fd65622d = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xc4b67ef3, 0xfd65622d, p0, p1, p2, p3, p4, p5);
};

global.N_0xc4cfce4c656ef480 = function (p0) {
	return _in(0xc4cfce4c, 0x656ef480, p0);
};

global.N_0xc4dec3ca8c365a5d = function (p0) {
	return _in(0xc4dec3ca, 0x8c365a5d, p0, _r, _ri);
};

global.N_0xc505036a35afd01b = function (toggle) {
	return _in(0xc505036a, 0x35afd01b, toggle);
};

global.N_0xc5196c42de19f646 = function () {
	return _in(0xc5196c42, 0xde19f646, _r, _ri);
};

global.N_0xc5303f460a40d21d = function (p0, p1) {
	return _in(0xc5303f46, 0x0a40d21d, p0, p1, _r, _ri);
};

global.N_0xc570b881754df609 = function (p0, p1) {
	return _in(0xc570b881, 0x754df609, p0, p1, _r, _ri);
};

global.N_0xc584ff658b2e55da = function (p0) {
	return _in(0xc584ff65, 0x8b2e55da, p0);
};

global.N_0xc5899c4cd2e2495d = function (p0) {
	return _in(0xc5899c4c, 0xd2e2495d, p0);
};

global.N_0xc58ce6824e604dec = function (p0) {
	return _in(0xc58ce682, 0x4e604dec, p0);
};

global.N_0xc59ab6a04333c502 = function () {
	return _in(0xc59ab6a0, 0x4333c502, _r, _ri);
};

global.N_0xc5b78e41dcf8227c = function (p0, p1) {
	return _in(0xc5b78e41, 0xdcf8227c, p0, p1);
};

global.N_0xc5bf29f4035277c2 = function (p0) {
	return _in(0xc5bf29f4, 0x035277c2, p0, _r, _ri);
};

global.N_0xc5c395c60b542a3c = function (p0) {
	return _in(0xc5c395c6, 0x0b542a3c, p0, _r, _ri);
};

global.N_0xc5c7a2f6567fccbc = function () {
	return _in(0xc5c7a2f6, 0x567fccbc);
};

global.N_0xc5cb91d65852ed7e = function (p0) {
	return _in(0xc5cb91d6, 0x5852ed7e, p0);
};

global.N_0xc5e7204f322e49eb = function (p0, p1, p2) {
	return _in(0xc5e7204f, 0x322e49eb, p0, p1, p2, _r, _ri);
};

global.N_0xc5eb2755fa25f1e9 = function (p0) {
	return _in(0xc5eb2755, 0xfa25f1e9, p0);
};

global.N_0xc6136b40fffb778b = function (p0) {
	return _in(0xc6136b40, 0xfffb778b, p0);
};

global.N_0xc6170856e54557b2 = function (p0, p1, p2) {
	return _in(0xc6170856, 0xe54557b2, p0, p1, p2);
};

global.N_0xc61edebf16cd9668 = function (p0, p1, p2) {
	return _in(0xc61edebf, 0x16cd9668, p0, p1, p2);
};

global.N_0xc6258f41d86676e0 = function (p0, p1, p2) {
	return _in(0xc6258f41, 0xd86676e0, p0, p1, p2);
};

global.N_0xc63540aef8384732 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xc63540ae, 0xf8384732, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xc63540aef8384769 = function () {
	return _in(0xc63540ae, 0xf8384769);
};

global.N_0xc6366a585659d15c = function (p0, p1) {
	return _in(0xc6366a58, 0x5659d15c, p0, p1);
};

global.N_0xc64abc0676af262b = function () {
	return _in(0xc64abc06, 0x76af262b);
};

global.N_0xc64e597783be9a1d = function (entity, toggle) {
	return _in(0xc64e5977, 0x83be9a1d, entity, toggle);
};

global.N_0xc64e7a62632ad2fe = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xc64e7a62, 0x632ad2fe, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xc67a4910425f11f1 = function (p0, p1) {
	return _in(0xc67a4910, 0x425f11f1, p0, p1);
};

global.N_0xc684ff658b2e55da = function (p0) {
	return _in(0xc684ff65, 0x8b2e55da, p0);
};

global.N_0xc685b014ce3d988b = function (p0) {
	return _in(0xc685b014, 0xce3d988b, p0, _r, _ri);
};

global.N_0xc687a23e166dcf68 = function (p0) {
	return _in(0xc687a23e, 0x166dcf68, p0, _r, _ri);
};

global.N_0xc695870b8a149b96 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0xc695870b, 0x8a149b96, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri);
};

global.N_0xc6981aff6d2a71c2 = function (p0) {
	return _in(0xc6981aff, 0x6d2a71c2, p0);
};

global.N_0xc6a6789bb405d11c = function (p0, p1) {
	return _in(0xc6a6789b, 0xb405d11c, p0, p1, _r, _ri);
};

global.N_0xc6a7dc546e94fed5 = function (p0, p1, p2, p3) {
	return _in(0xc6a7dc54, 0x6e94fed5, p0, p1, p2, p3, _r, _ri);
};

global.N_0xc6c4e15cf7d52fea = function (p0, p1) {
	return _in(0xc6c4e15c, 0xf7d52fea, p0, p1);
};

global.N_0xc6d7ddc843176701 = function (p0) {
	return _in(0xc6d7ddc8, 0x43176701, p0, _r, _ri);
};

global.N_0xc6dcc2a3a8825c85 = function (p0) {
	return _in(0xc6dcc2a3, 0xa8825c85, p0);
};

global.N_0xc6f81fcd15350323 = function (p0, p1) {
	return _in(0xc6f81fcd, 0x15350323, p0, p1);
};

global.N_0xc70041408e16be2d = function (p0, p1, p2) {
	return _in(0xc7004140, 0x8e16be2d, p0, p1, p2);
};

global.N_0xc70041408e16be2e = function (p0, p1, p2) {
	return _in(0xc7004140, 0x8e16be2e, p0, p1, p2);
};

global.N_0xc71b50ae58d07369 = function (p0) {
	return _in(0xc71b50ae, 0x58d07369, _ii(p0) /* may be optional */, _r, _ri);
};

global.N_0xc71d07c96946e263 = function (p0, p1) {
	return _in(0xc71d07c9, 0x6946e263, p0, p1);
};

global.N_0xc71fe230a513c30f = function (p0, p1) {
	return _in(0xc71fe230, 0xa513c30f, p0, p1, _r, _ri);
};

global.N_0xc72ce37081dae625 = function (p0, p1, p2, p3) {
	return _in(0xc72ce370, 0x81dae625, p0, p1, p2, p3);
};

global.N_0xc75386174ece95d5 = function (p0) {
	return _in(0xc7538617, 0x4ece95d5, p0, _r, _ri);
};

global.N_0xc76e94a78127412b = function (p0, p1, p2) {
	return _in(0xc76e94a7, 0x8127412b, p0, p1, p2);
};

global.N_0xc76f252371150d9a = function (p0) {
	return _in(0xc76f2523, 0x71150d9a, p0);
};

global.N_0xc76fc4c2fc5f4405 = function (p0) {
	return _in(0xc76fc4c2, 0xfc5f4405, p0);
};

global.N_0xc7dc5a0a7df608cb = function (p0) {
	return _in(0xc7dc5a0a, 0x7df608cb, p0, _r, _ri);
};

global.N_0xc805eb785824f712 = function (p0) {
	return _in(0xc805eb78, 0x5824f712, p0);
};

global.N_0xc81a9e2c8efd28d5 = function (p0) {
	return _in(0xc81a9e2c, 0x8efd28d5, p0);
};

global.N_0xc84e138448507567 = function (vehicle, p1) {
	return _in(0xc84e1384, 0x48507567, vehicle, p1);
};

global.N_0xc853230e76a152df = function (p0) {
	return _in(0xc853230e, 0x76a152df, p0, _r, _ri);
};

global.N_0xc886cd666add42e1 = function (p0, p1) {
	return _in(0xc886cd66, 0x6add42e1, p0, p1);
};

global.N_0xc89e7410a93ac19a = function (p0, p1) {
	return _in(0xc89e7410, 0xa93ac19a, p0, p1);
};

global.N_0xc8b29d18022ea2b7 = function (p0) {
	return _in(0xc8b29d18, 0x022ea2b7, p0, _r, _ri);
};

global.N_0xc8b6d18e22484643 = function () {
	return _in(0xc8b6d18e, 0x22484643);
};

global.N_0xc8ccdb712fbcba92 = function (p0) {
	return _in(0xc8ccdb71, 0x2fbcba92, p0, _r, _ri);
};

global.N_0xc8d0611d9a0cf5d3 = function (p0) {
	return _in(0xc8d0611d, 0x9a0cf5d3, p0);
};

global.N_0xc8d523bf5bbd3808 = function (p0, p1) {
	return _in(0xc8d523bf, 0x5bbd3808, p0, p1, _r, _ri);
};

global.N_0xc8e21c1677dc5e6f = function (p0, p1) {
	return _in(0xc8e21c16, 0x77dc5e6f, p0, p1);
};

global.N_0xc8fc3b2432e8229d = function () {
	return _in(0xc8fc3b24, 0x32e8229d, _r, _ri);
};

global.N_0xc900a465364a85d6 = function (p0) {
	return _in(0xc900a465, 0x364a85d6, p0);
};

global.N_0xc900cec8a172375b = function (p0, p1, p2) {
	return _in(0xc900cec8, 0xa172375b, p0, p1, p2);
};

global.N_0xc9151483cc06a414 = function (p0) {
	return _in(0xc9151483, 0xcc06a414, p0);
};

global.N_0xc927890aa64e9661 = function (p0, p1, p2, p3) {
	return _in(0xc927890a, 0xa64e9661, p0, p1, p2, p3, _r, _ri);
};

global.N_0xc93a9a45430d484e = function (p0) {
	return _in(0xc93a9a45, 0x430d484e, p0, _r, _ri);
};

global.N_0xc95611869e14f8af = function (p0, p1, p2, p3) {
	return _in(0xc9561186, 0x9e14f8af, p0, p1, p2, p3);
};

global.N_0xc964fcd3d1720697 = function () {
	return _in(0xc964fcd3, 0xd1720697, _r, _ri);
};

global.N_0xc97e0d2302382211 = function (p0, p1) {
	return _in(0xc97e0d23, 0x02382211, p0, p1, _r, _ri);
};

global.N_0xc991ef46fe323867 = function (p0, p1) {
	return _in(0xc991ef46, 0xfe323867, p0, p1);
};

global.N_0xc99f104bdf8c7f5a = function (p0, p1) {
	return _in(0xc99f104b, 0xdf8c7f5a, p0, p1);
};

global.N_0xc9b4b3a36f81fd75 = function (p0) {
	return _in(0xc9b4b3a3, 0x6f81fd75, p0, _r, _ri);
};

global.N_0xc9caeaeec1256e54 = function (p0) {
	return _in(0xc9caeaee, 0xc1256e54, p0);
};

global.N_0xc9ea26893c9e4024 = function (p0, p1, p2, p3, p4) {
	return _in(0xc9ea2689, 0x3c9e4024, p0, p1, p2, p3, p4);
};

global.N_0xca0bac376c541978 = function () {
	return _in(0xca0bac37, 0x6c541978, _r, _ri);
};

global.N_0xca1315c33b9a2847 = function (p0) {
	return _in(0xca1315c3, 0x3b9a2847, p0, _r, _ri);
};

global.N_0xca1f0b5103936891 = function (p0) {
	return _in(0xca1f0b51, 0x03936891, p0, _r, _ri);
};

global.N_0xca27a86caa4e98ed = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xca27a86c, 0xaa4e98ed, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xca41e86545413b5b = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xca41e865, 0x45413b5b, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xca56dd6ab7a39f64 = function (p0) {
	return _in(0xca56dd6a, 0xb7a39f64, p0, _r, _ri);
};

global.N_0xca58d4fd20d70f24 = function (p0) {
	return _in(0xca58d4fd, 0x20d70f24, p0, _r, _ri);
};

global.N_0xca59808e51fd67c4 = function (p0, p1) {
	return _in(0xca59808e, 0x51fd67c4, p0, p1);
};

global.N_0xca5c90d40665d5ce = function (p0, p1) {
	return _in(0xca5c90d4, 0x0665d5ce, p0, p1, _r, _ri);
};

global.N_0xca95924c893a0c91 = function (p0, p1) {
	return _in(0xca95924c, 0x893a0c91, p0, p1, _r, _ri);
};

global.N_0xca95c156c14b2054 = function (p0, p1) {
	return _in(0xca95c156, 0xc14b2054, p0, p1);
};

global.N_0xcaae29cb5591b2a5 = function (p0, p1) {
	return _in(0xcaae29cb, 0x5591b2a5, p0, p1, _r, _ri);
};

global.N_0xcaaf2bccfef37f77 = function (p0, p1) {
	return _in(0xcaaf2bcc, 0xfef37f77, p0, p1);
};

global.N_0xcab4dd2d5b2b7246 = function (p0, p1) {
	return _in(0xcab4dd2d, 0x5b2b7246, p0, p1);
};

global.N_0xcac43d060099ea72 = function (p0) {
	return _in(0xcac43d06, 0x0099ea72, p0);
};

global.N_0xcacab2b123bbdbd6 = function (p0, p1, p2) {
	return _in(0xcacab2b1, 0x23bbdbd6, p0, p1, p2, _r, _ri);
};

global.N_0xcacc2f9d994504b7 = function (p0) {
	return _in(0xcacc2f9d, 0x994504b7, p0, _r, _ri);
};

global.N_0xcad4fe9398820d24 = function (p0, p1) {
	return _in(0xcad4fe93, 0x98820d24, p0, p1, _r, _ri);
};

global.N_0xcaf4ca2f87779f8f = function (p0, p1) {
	return _in(0xcaf4ca2f, 0x87779f8f, p0, p1, _r, _ri);
};

global.N_0xcaf50048c8d0fba0 = function (p0, p1) {
	return _in(0xcaf50048, 0xc8d0fba0, p0, p1, _r, _ri);
};

global.N_0xcaff2c9747103c02 = function (p0, p1, p2) {
	return _in(0xcaff2c97, 0x47103c02, p0, p1, p2, _r, _ri);
};

global.N_0xcb0360efefb2580d = function (padIndex) {
	return _in(0xcb0360ef, 0xefb2580d, padIndex);
};

global.N_0xcb0b9506bc91e441 = function (p0, p1) {
	return _in(0xcb0b9506, 0xbc91e441, p0, p1);
};

global.N_0xcb1a3864c524f784 = function (p0, p1) {
	return _in(0xcb1a3864, 0xc524f784, p0, p1);
};

global.N_0xcb2ca620c48bc875 = function (p0, p1) {
	return _in(0xcb2ca620, 0xc48bc875, p0, p1, _r, _ri);
};

global.N_0xcb42afe2b613ee55 = function (p0) {
	return _in(0xcb42afe2, 0xb613ee55, p0, _r, _ri);
};

global.N_0xcb4ef7edae2e16f1 = function () {
	return _in(0xcb4ef7ed, 0xae2e16f1, _r, _ri);
};

global.N_0xcb5d11f9508a928d = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xcb5d11f9, 0x508a928d, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xcb61a63aa53d7d22 = function (p0, p1) {
	return _in(0xcb61a63a, 0xa53d7d22, p0, p1);
};

global.N_0xcb690f680a3ea971 = function (p0, p1) {
	return _in(0xcb690f68, 0x0a3ea971, p0, p1, _r, _ri);
};

global.N_0xcb86d3e3e3708901 = function (p0, p1, p2, p3, p4) {
	return _in(0xcb86d3e3, 0xe3708901, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xcb8f4c9343ebe240 = function (p0, p1, p2) {
	return _in(0xcb8f4c93, 0x43ebe240, p0, p1, p2, _r, _ri);
};

global.N_0xcb9401f918cb0f75 = function (p0, p1, p2, p3) {
	return _in(0xcb9401f9, 0x18cb0f75, p0, p1, p2, p3);
};

global.N_0xcbac13f065c47596 = function () {
	return _in(0xcbac13f0, 0x65c47596, _r, _ri);
};

global.N_0xcbb54cc7ffffab86 = function (p0, p1, p2, p3) {
	return _in(0xcbb54cc7, 0xffffab86, p0, p1, p2, p3);
};

global.N_0xcbb7b6edfa933ade = function (p0) {
	return _in(0xcbb7b6ed, 0xfa933ade, p0, _r, _ri);
};

global.N_0xcbc7b6f9a56b79f6 = function (p0, p1) {
	return _in(0xcbc7b6f9, 0xa56b79f6, p0, p1);
};

global.N_0xcbccf73ffa69cc6b = function (player) {
	return _in(0xcbccf73f, 0xfa69cc6b, player);
};

global.N_0xcbd9ec60495c728c = function (p0) {
	return _in(0xcbd9ec60, 0x495c728c, p0);
};

global.N_0xcbde59c48f2b06f5 = function (p0, p1, p2) {
	return _in(0xcbde59c4, 0x8f2b06f5, p0, p1, p2);
};

global.N_0xcbf2bebb468a34f3 = function (p0) {
	return _in(0xcbf2bebb, 0x468a34f3, p0);
};

global.N_0xcbf743c984695cf3 = function () {
	return _in(0xcbf743c9, 0x84695cf3, _r, _ri);
};

global.N_0xcbf88256e44d5d39 = function (p0, p1) {
	return _in(0xcbf88256, 0xe44d5d39, p0, p1);
};

global.N_0xcbfb4951f2e3934c = function (p0, p1) {
	return _in(0xcbfb4951, 0xf2e3934c, p0, p1);
};

global.N_0xcbfbd38f2e0a263b = function (p0, p1) {
	return _in(0xcbfbd38f, 0x2e0a263b, p0, p1);
};

global.N_0xcbfc7725de6ce2e0 = function (p0, p1) {
	return _in(0xcbfc7725, 0xde6ce2e0, p0, p1, _r, _ri);
};

global.N_0xcc1baf72d571db8d = function (p0, p1, p2) {
	return _in(0xcc1baf72, 0xd571db8d, p0, p1, p2, _r, _ri);
};

global.N_0xcc24cb07f60b496e = function (p0, p1) {
	return _in(0xcc24cb07, 0xf60b496e, p0, p1, _r, _ri);
};

global.N_0xcc2b20596e29e4e3 = function (p0, p1) {
	return _in(0xcc2b2059, 0x6e29e4e3, p0, p1, _r, _ri);
};

global.N_0xcc3b787e73e64160 = function (p0, p1, p2, p3, p4) {
	return _in(0xcc3b787e, 0x73e64160, p0, p1, p2, p3, p4);
};

global.N_0xcc3edc5614b03f61 = function (p0) {
	return _in(0xcc3edc56, 0x14b03f61, p0);
};

global.N_0xcc4e72c339461ed1 = function () {
	return _in(0xcc4e72c3, 0x39461ed1, _r, _ri);
};

global.N_0xcc61d8d6c19d9f14 = function (p0) {
	return _in(0xcc61d8d6, 0xc19d9f14, p0);
};

global.N_0xcc644bc1dd655269 = function (p0, p1) {
	return _in(0xcc644bc1, 0xdd655269, p0, p1, _r, _ri);
};

global.N_0xcc6b5aafc87bfc7b = function (p0, p1, p2) {
	return _in(0xcc6b5aaf, 0xc87bfc7b, p0, p1, p2);
};

global.N_0xcc7fc854b956a128 = function (p0, p1) {
	return _in(0xcc7fc854, 0xb956a128, _ts(p0), _ts(p1));
};

global.N_0xcc8ca3e88256e58f = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xcc8ca3e8, 0x8256e58f, p0, p1, p2, p3, p4, p5);
};

global.N_0xcc9c4393523833e2 = function (p0, p1, p2) {
	return _in(0xcc9c4393, 0x523833e2, p0, p1, p2);
};

global.N_0xccb4635a071fb62d = function () {
	return _in(0xccb4635a, 0x071fb62d);
};

global.N_0xccb97b51893c662f = function (p0, p1) {
	return _in(0xccb97b51, 0x893c662f, p0, p1, _r, _ri);
};

global.N_0xccd9b77f70d31c9d = function (p0) {
	return _in(0xccd9b77f, 0x70d31c9d, p0, _r, _ri);
};

global.N_0xcce219c922737bfa = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xcce219c9, 0x22737bfa, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xcce7c695c164c35f = function (p0) {
	return _in(0xcce7c695, 0xc164c35f, p0, _r, _ri);
};

global.N_0xccf71fcfa0070b1a = function () {
	return _in(0xccf71fcf, 0xa0070b1a, _r, _ri);
};

global.N_0xccf878d50f8ab10d = function (p0) {
	return _in(0xccf878d5, 0x0f8ab10d, p0, _r, _ri);
};

global.N_0xcd072523791ddc1b = function (p0) {
	return _in(0xcd072523, 0x791ddc1b, p0, _r, _ri);
};

global.N_0xcd284e2f6ac27ee9 = function (p0) {
	return _in(0xcd284e2f, 0x6ac27ee9, p0);
};

global.N_0xcd53e6cbf609c012 = function (p0) {
	return _in(0xcd53e6cb, 0xf609c012, p0, _r, _ri);
};

global.N_0xcd66fea29400a0b5 = function (p0) {
	return _in(0xcd66fea2, 0x9400a0b5, p0, _r, _ri);
};

global.N_0xcd6f8a0335d821f9 = function (p0) {
	return _in(0xcd6f8a03, 0x35d821f9, p0);
};

global.N_0xcd954f330693f5f2 = function () {
	return _in(0xcd954f33, 0x0693f5f2, _r, _ri);
};

global.N_0xcd9a485f2b383b44 = function (p0, p1, p2, p3) {
	return _in(0xcd9a485f, 0x2b383b44, p0, p1, p2, p3, _r, _ri);
};

global.N_0xcd9e2d9bc52fd80f = function (p0, p1) {
	return _in(0xcd9e2d9b, 0xc52fd80f, p0, p1);
};

global.N_0xcd9e5f94a2f38683 = function (p0, p1) {
	return _in(0xcd9e5f94, 0xa2f38683, p0, p1);
};

global.N_0xcdb682bb47c02f0a = function (p0, p1) {
	return _in(0xcdb682bb, 0x47c02f0a, p0, p1);
};

global.N_0xcdc25355c0d65963 = function (p0) {
	return _in(0xcdc25355, 0xc0d65963, p0, _r, _ri);
};

global.N_0xcdc5512a407cf08d = function (p0) {
	return _in(0xcdc5512a, 0x407cf08d, p0, _r, _ri);
};

global.N_0xcdcd7b2d49aee73a = function (p0) {
	return _in(0xcdcd7b2d, 0x49aee73a, p0);
};

global.N_0xcddd4b74660e2335 = function (p0, p1, p2) {
	return _in(0xcddd4b74, 0x660e2335, p0, p1, p2);
};

global.N_0xcdfb8c04d4c95d9b = function (p0, p1, p2, p3) {
	return _in(0xcdfb8c04, 0xd4c95d9b, p0, p1, p2, p3);
};

global.N_0xce0d2f5586627cce = function (p0, p1, p2, p3, p4) {
	return _in(0xce0d2f55, 0x86627cce, p0, p1, p2, p3, p4);
};

global.N_0xce1531927ad6c9f8 = function (p0, p1) {
	return _in(0xce153192, 0x7ad6c9f8, p0, p1);
};

global.N_0xce27824b5968b79a = function (p0, p1) {
	return _in(0xce27824b, 0x5968b79a, p0, p1);
};

global.N_0xce285a4413b00b7f = function (p0, p1) {
	return _in(0xce285a44, 0x13b00b7f, p0, p1);
};

global.N_0xce2acd6f602803e5 = function (p0) {
	return _in(0xce2acd6f, 0x602803e5, p0, _r, _ri);
};

global.N_0xce4e669400e5f8aa = function (p0, p1, p2, p3) {
	return _in(0xce4e6694, 0x00e5f8aa, p0, p1, p2, p3);
};

global.N_0xce54c9abe6fbc6db = function (p0) {
	return _in(0xce54c9ab, 0xe6fbc6db, p0, _r, _ri);
};

global.N_0xce5d0ffe83939af1 = function (p0, p1, p2, p3) {
	return _in(0xce5d0ffe, 0x83939af1, p0, p1, p2, p3);
};

global.N_0xce6b874286d640bb = function (p0, p1) {
	return _in(0xce6b8742, 0x86d640bb, p0, p1);
};

global.N_0xce71c2f9baa3f975 = function (p0, p1) {
	return _in(0xce71c2f9, 0xbaa3f975, p0, p1);
};

global.N_0xce7690c0a0d1c36d = function (p0) {
	return _in(0xce7690c0, 0xa0d1c36d, p0);
};

global.N_0xce7a6c1d5cde1f9d = function (p0, p1, p2, p3) {
	return _in(0xce7a6c1d, 0x5cde1f9d, p0, p1, p2, p3);
};

global.N_0xce88a261dcbba0d9 = function (p0, p1) {
	return _in(0xce88a261, 0xdcbba0d9, p0, p1, _r, _ri);
};

global.N_0xceab54f4632c6ef6 = function (p0, p1) {
	return _in(0xceab54f4, 0x632c6ef6, p0, p1);
};

global.N_0xceb1f1eed484a5b4 = function (p0, p1) {
	return _in(0xceb1f1ee, 0xd484a5b4, p0, p1);
};

global.N_0xceb40b678e403759 = function (p0) {
	return _in(0xceb40b67, 0x8e403759, p0, _r, _ri);
};

global.N_0xcec4ca2cab8fa98c = function (vehicle, p1) {
	return _in(0xcec4ca2c, 0xab8fa98c, vehicle, p1);
};

global.N_0xcedbf17efcc0e4a4 = function (p0, p1, p2) {
	return _in(0xcedbf17e, 0xfcc0e4a4, p0, p1, p2, _r, _ri);
};

global.N_0xcedc16930526f728 = function (p0) {
	return _in(0xcedc1693, 0x0526f728, p0);
};

global.N_0xceec64bd27a59312 = function (p0) {
	return _in(0xceec64bd, 0x27a59312, p0, _r, _ri);
};

global.N_0xcef4c65de502d367 = function (p0, p1, p2, p3, p4) {
	return _in(0xcef4c65d, 0xe502d367, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xcf0b19806473d324 = function (p0, p1, p2, p3) {
	return _in(0xcf0b1980, 0x6473d324, p0, p1, p2, p3);
};

global.N_0xcf213a5fc3abfc08 = function (p0, p1, p2) {
	return _in(0xcf213a5f, 0xc3abfc08, p0, p1, p2);
};

global.N_0xcf23ab5bd47b384d = function (p0) {
	return _in(0xcf23ab5b, 0xd47b384d, p0);
};

global.N_0xcf342503ca4c8df1 = function (p0, p1) {
	return _in(0xcf342503, 0xca4c8df1, p0, p1);
};

global.N_0xcf45df50c7775f2a = function () {
	return _in(0xcf45df50, 0xc7775f2a, _r, _ri);
};

global.N_0xcf63ef77b0df0397 = function (p0, p1, p2, p3) {
	return _in(0xcf63ef77, 0xb0df0397, p0, p1, p2, p3);
};

global.N_0xcf69ea05cd9c33c9 = function () {
	return _in(0xcf69ea05, 0xcd9c33c9);
};

global.N_0xcf9da72002fc16bf = function (p0, p1, p2) {
	return _in(0xcf9da720, 0x02fc16bf, p0, p1, p2);
};

global.N_0xcfad2c8cd1054523 = function (p0, p1, p2, p3) {
	return _in(0xcfad2c8c, 0xd1054523, p0, p1, p2, p3);
};

global.N_0xcfb2eed4fcb7bd77 = function (p0, p1, p2) {
	return _in(0xcfb2eed4, 0xfcb7bd77, p0, p1, p2);
};

global.N_0xcfc0bd09bb1b73ff = function (p0) {
	return _in(0xcfc0bd09, 0xbb1b73ff, p0, _r, _ri);
};

global.N_0xcfda2518f322d836 = function (p0) {
	return _in(0xcfda2518, 0xf322d836, p0, _r, _ri);
};

global.N_0xcfe122ec635cc2b2 = function (p0, p1, p2, p3) {
	return _in(0xcfe122ec, 0x635cc2b2, p0, p1, p2, p3);
};

global.N_0xcffc3eccd7a5cceb = function (p0, p1, p2) {
	return _in(0xcffc3ecc, 0xd7a5cceb, p0, p1, p2);
};

global.N_0xd0116df21e6c7b36 = function (p0, p1) {
	return _in(0xd0116df2, 0x1e6c7b36, p0, p1, _r, _ri);
};

global.N_0xd041a32992a55f84 = function (p0, p1) {
	return _in(0xd041a329, 0x92a55f84, p0, p1);
};

global.N_0xd04241bbf6d03a5e = function (p0) {
	return _in(0xd04241bb, 0xf6d03a5e, p0, _r, _ri);
};

global.N_0xd0498ad30e16b6bd = function () {
	return _in(0xd0498ad3, 0x0e16b6bd, _r, _ri);
};

global.N_0xd049920cd29f6cc8 = function (p0, p1, p2, p3, p4) {
	return _in(0xd049920c, 0xd29f6cc8, p0, p1, p2, p3, p4);
};

global.N_0xd049fdaf089fddb0 = function (p0, p1, p2) {
	return _in(0xd049fdaf, 0x089fddb0, p0, p1, p2);
};

global.N_0xd04ad186ce8bb129 = function (p0, p1, p2) {
	return _in(0xd04ad186, 0xce8bb129, p0, p1, p2);
};

global.N_0xd0541ef28e9c4783 = function () {
	return _in(0xd0541ef2, 0x8e9c4783, _r, _ri);
};

global.N_0xd05590c1ab38f068 = function (p0, p1, p2, p3) {
	return _in(0xd05590c1, 0xab38f068, p0, p1, p2, p3, _r, _ri);
};

global.N_0xd05ad61f242c626b = function (p0, p1) {
	return _in(0xd05ad61f, 0x242c626b, p0, p1);
};

global.N_0xd0730c1fa40348d9 = function (p0) {
	return _in(0xd0730c1f, 0xa40348d9, p0, _r, _ri);
};

global.N_0xd08066e00d26c448 = function (p0) {
	return _in(0xd08066e0, 0x0d26c448, p0, _r, _ri);
};

global.N_0xd08685ba892dbfab = function (p0, p1, p2, p3) {
	return _in(0xd08685ba, 0x892dbfab, p0, p1, p2, p3, _r, _ri);
};

global.N_0xd090abef4d6a7d96 = function (p0) {
	return _in(0xd090abef, 0x4d6a7d96, p0, _r, _ri);
};

global.N_0xd0976cc34002db57 = function (p0) {
	return _in(0xd0976cc3, 0x4002db57, p0, _r, _ri);
};

global.N_0xd0aabe5b9f8fa589 = function (p0, p1) {
	return _in(0xd0aabe5b, 0x9f8fa589, p0, p1);
};

global.N_0xd0b0b044112bf424 = function (player) {
	return _in(0xd0b0b044, 0x112bf424, player);
};

global.N_0xd0b7aeb56229d317 = function (p0) {
	return _in(0xd0b7aeb5, 0x6229d317, p0, _r, _ri);
};

global.N_0xd0ba1853d76683c8 = function (p0, p1, p2, p3, p4) {
	return _in(0xd0ba1853, 0xd76683c8, p0, p1, p2, p3, p4);
};

global.N_0xd0e02aa618020d17 = function (p0, p1) {
	return _in(0xd0e02aa6, 0x18020d17, p0, p1);
};

global.N_0xd1031b83ac093bc7 = function (p0) {
	return _in(0xd1031b83, 0xac093bc7, p0);
};

global.N_0xd103f6dbb5442be8 = function (p0, p1) {
	return _in(0xd103f6db, 0xb5442be8, p0, p1);
};

global.N_0xd1555fbc96c88444 = function (p0, p1, p2, p3, p4) {
	return _in(0xd1555fbc, 0x96c88444, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xd17672447692478e = function (p0, p1) {
	return _in(0xd1767244, 0x7692478e, p0, p1);
};

global.N_0xd1a226f2e05e58fc = function (p0, p1) {
	return _in(0xd1a226f2, 0xe05e58fc, p0, p1);
};

global.N_0xd1a70c1e8d1031fe = function (p0, p1) {
	return _in(0xd1a70c1e, 0x8d1031fe, p0, p1);
};

global.N_0xd1ba66940e94c547 = function () {
	return _in(0xd1ba6694, 0x0e94c547, _r, _ri);
};

global.N_0xd1bf325c8252a982 = function (p0, p1) {
	return _in(0xd1bf325c, 0x8252a982, p0, p1, _r, _ri);
};

global.N_0xd1df5e54f4acbe1a = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd1df5e54, 0xf4acbe1a, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xd1efa8d68bf5d63d = function (p0, p1, p2, p3) {
	return _in(0xd1efa8d6, 0x8bf5d63d, p0, p1, p2, p3);
};

global.N_0xd1f6b912785bfd35 = function (p0) {
	return _in(0xd1f6b912, 0x785bfd35, p0, _r, _ri);
};

global.N_0xd1ffb246f4e088ac = function (p0) {
	return _in(0xd1ffb246, 0xf4e088ac, p0, _r, _ri);
};

global.N_0xd21a3d421e7f09f7 = function (p0, p1) {
	return _in(0xd21a3d42, 0x1e7f09f7, p0, p1);
};

global.N_0xd21c7418c590bb40 = function (p0) {
	return _in(0xd21c7418, 0xc590bb40, p0, _r, _ri);
};

global.N_0xd2209866b0cb72ea = function (p0, p1) {
	return _in(0xd2209866, 0xb0cb72ea, p0, p1, _r, _ri);
};

global.N_0xd2b9c78537ed5759 = function (p0) {
	return _in(0xd2b9c785, 0x37ed5759, p0);
};

global.N_0xd2ba051b94ca9bcc = function (p0) {
	return _in(0xd2ba051b, 0x94ca9bcc, p0, _r, _ri);
};

global.N_0xd2c9126410dfa1b2 = function (p0) {
	return _in(0xd2c91264, 0x10dfa1b2, p0, _r, _ri);
};

global.N_0xd2cb0fb0fdcb473d = function (p0, p1) {
	return _in(0xd2cb0fb0, 0xfdcb473d, p0, p1);
};

global.N_0xd2d74f89df844a50 = function (p0) {
	return _in(0xd2d74f89, 0xdf844a50, p0);
};

global.N_0xd2dfc9cca5596a11 = function (p0) {
	return _in(0xd2dfc9cc, 0xa5596a11, _fv(p0));
};

global.N_0xd2f0fe8805d91647 = function (p0, p1) {
	return _in(0xd2f0fe88, 0x05d91647, p0, p1);
};

global.N_0xd346248c1dce0d76 = function (p0, p1, p2, p3) {
	return _in(0xd346248c, 0x1dce0d76, p0, p1, p2, p3);
};

global.N_0xd355e2f1bb41087e = function (p0, p1) {
	return _in(0xd355e2f1, 0xbb41087e, p0, p1, _r, _ri);
};

global.N_0xd3750ccc00635fc2 = function (p0) {
	return _in(0xd3750ccc, 0x00635fc2, p0, _r, _ri);
};

global.N_0xd389a2549c4efb30 = function (p0) {
	return _in(0xd389a254, 0x9c4efb30, p0, _r, _ri);
};

global.N_0xd39a72ae5ebd57e5 = function () {
	return _in(0xd39a72ae, 0x5ebd57e5);
};

global.N_0xd39d32eb3b52dd83 = function (p0) {
	return _in(0xd39d32eb, 0x3b52dd83, p0, _r, _ri);
};

global.N_0xd3a0da8f91612c6e = function (p0, p1, p2) {
	return _in(0xd3a0da8f, 0x91612c6e, p0, p1, p2);
};

global.N_0xd3a3c8b9f3bdef81 = function () {
	return _in(0xd3a3c8b9, 0xf3bdef81, _r, _ri);
};

global.N_0xd3a7b003ed343fd9 = function (p0, p1, p2, p3, p4) {
	return _in(0xd3a7b003, 0xed343fd9, p0, p1, p2, p3, p4);
};

global.N_0xd3f58e9316b7fc2a = function (p0) {
	return _in(0xd3f58e93, 0x16b7fc2a, p0);
};

global.N_0xd3f7445cea2e5035 = function (p0) {
	return _in(0xd3f7445c, 0xea2e5035, p0, _r, _ri);
};

global.N_0xd3f943b88f55376a = function (p0) {
	return _in(0xd3f943b8, 0x8f55376a, p0);
};

global.N_0xd4022c7286b0dfa2 = function (p0, p1, p2) {
	return _in(0xd4022c72, 0x86b0dfa2, p0, p1, p2, _r, _ri);
};

global.N_0xd4071efc83794b2f = function (p0, p1) {
	return _in(0xd4071efc, 0x83794b2f, p0, p1);
};

global.N_0xd414be129bb81b32 = function () {
	return _in(0xd414be12, 0x9bb81b32, _r, _rf);
};

global.N_0xd42514c182121c23 = function (p0) {
	return _in(0xd42514c1, 0x82121c23, p0, _r, _ri);
};

global.N_0xd426e2e3288469d6 = function (p0, p1) {
	return _in(0xd426e2e3, 0x288469d6, p0, p1);
};

global.N_0xd428c3f92fc3f6f8 = function (p0, p1) {
	return _in(0xd428c3f9, 0x2fc3f6f8, p0, p1);
};

global.N_0xd453bb601d4a606e = function (p0) {
	return _in(0xd453bb60, 0x1d4a606e, p0, _r, _ri);
};

global.N_0xd45547d8396f002a = function () {
	return _in(0xd45547d8, 0x396f002a);
};

global.N_0xd45bb89b53fc0cfd = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xd45bb89b, 0x53fc0cfd, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xd460135c98940274 = function (p0, p1) {
	return _in(0xd460135c, 0x98940274, p0, p1);
};

global.N_0xd4636c2edb0dea8a = function (p0) {
	return _in(0xd4636c2e, 0xdb0dea8a, p0, _r, _ri);
};

global.N_0xd46bf94c4c66fab0 = function (p0, p1, p2, p3) {
	return _in(0xd46bf94c, 0x4c66fab0, p0, p1, p2, p3, _r, _ri);
};

global.N_0xd470725e0703d22f = function (p0) {
	return _in(0xd470725e, 0x0703d22f, p0, _r, _ri);
};

global.N_0xd47d47efbf103fb8 = function (p0, p1) {
	return _in(0xd47d47ef, 0xbf103fb8, p0, p1);
};

global.N_0xd48993a61938c64d = function (p0, p1) {
	return _in(0xd48993a6, 0x1938c64d, p0, p1, _r, _ri);
};

global.N_0xd4907ef4334c7602 = function (p0, p1) {
	return _in(0xd4907ef4, 0x334c7602, p0, p1);
};

global.N_0xd4958e8cf0de0dd0 = function (p0) {
	return _in(0xd4958e8c, 0xf0de0dd0, p0);
};

global.N_0xd4b614179bcd0654 = function (p0) {
	return _in(0xd4b61417, 0x9bcd0654, p0);
};

global.N_0xd4d403ea031f351c = function (p0) {
	return _in(0xd4d403ea, 0x031f351c, p0, _r, _ri);
};

global.N_0xd4e5c1e93c466127 = function (p0, p1) {
	return _in(0xd4e5c1e9, 0x3c466127, p0, p1, _r, _ri);
};

global.N_0xd4ee21b7cc7fd350 = function (p0) {
	return _in(0xd4ee21b7, 0xcc7fd350, p0);
};

global.N_0xd4f5efb55769d272 = function (p0, p1) {
	return _in(0xd4f5efb5, 0x5769d272, p0, p1, _r, _ri);
};

global.N_0xd4fa73fe628fec63 = function (p0, p1) {
	return _in(0xd4fa73fe, 0x628fec63, p0, p1);
};

global.N_0xd503d6f0986d58bc = function (p0, p1) {
	return _in(0xd503d6f0, 0x986d58bc, p0, p1);
};

global.N_0xd508fa229f1c4900 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xd508fa22, 0x9f1c4900, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xd52d20b0c76bb26d = function (p0, p1) {
	return _in(0xd52d20b0, 0xc76bb26d, p0, p1, _r, _ri);
};

global.N_0xd52df30355ea7c8e = function (p0, p1, p2) {
	return _in(0xd52df303, 0x55ea7c8e, p0, p1, p2);
};

global.N_0xd53846b9c931c181 = function (p0, p1, p2) {
	return _in(0xd53846b9, 0xc931c181, p0, p1, p2);
};

global.N_0xd543487a1f12828f = function (p0, p1, p2, p3) {
	return _in(0xd543487a, 0x1f12828f, p0, p1, p2, p3);
};

global.N_0xd543d3a8fde4f185 = function (p0, p1) {
	return _in(0xd543d3a8, 0xfde4f185, p0, p1, _r, _ri);
};

global.N_0xd55a871e1ce3481b = function (p0, p1, p2, p3) {
	return _in(0xd55a871e, 0x1ce3481b, p0, p1, p2, p3);
};

global.N_0xd55db4466d00a258 = function (p0) {
	return _in(0xd55db446, 0x6d00a258, p0, _r, _ri);
};

global.N_0xd56e5f336c675efa = function (p0) {
	return _in(0xd56e5f33, 0x6c675efa, p0, _r, _ri);
};

global.N_0xd56ff170710fc826 = function (p0, p1) {
	return _in(0xd56ff170, 0x710fc826, p0, p1, _r, _ri);
};

global.N_0xd5910ecf81a2278c = function (p0, p1, p2, p3) {
	return _in(0xd5910ecf, 0x81a2278c, p0, p1, p2, p3);
};

global.N_0xd5bd1b5318a81994 = function (p0, p1) {
	return _in(0xd5bd1b53, 0x18a81994, p0, p1);
};

global.N_0xd5d72f1624f3ba7c = function (p0) {
	return _in(0xd5d72f16, 0x24f3ba7c, p0);
};

global.N_0xd5fe956c70ff370b = function (p0) {
	return _in(0xd5fe956c, 0x70ff370b, p0, _r, _ri);
};

global.N_0xd61fcf9fcfd515b7 = function (p0, p1, p2) {
	return _in(0xd61fcf9f, 0xcfd515b7, p0, p1, p2);
};

global.N_0xd635df6baa5a6017 = function () {
	return _in(0xd635df6b, 0xaa5a6017, _r, _ri);
};

global.N_0xd637d327080cd86e = function (p0) {
	return _in(0xd637d327, 0x080cd86e, p0);
};

global.N_0xd63b4ba3a02a99e0 = function (p0, p1) {
	return _in(0xd63b4ba3, 0xa02a99e0, p0, p1);
};

global.N_0xd64dbc8b0424135f = function (p0, p1) {
	return _in(0xd64dbc8b, 0x0424135f, p0, p1);
};

global.N_0xd65fdc686a031c83 = function (p0, p1, p2) {
	return _in(0xd65fdc68, 0x6a031c83, p0, p1, p2);
};

global.N_0xd6663ec374092383 = function () {
	return _in(0xd6663ec3, 0x74092383, _r, _ri);
};

global.N_0xd66c9e72b3cc4982 = function (p1) {
	return _in(0xd66c9e72, 0xb3cc4982, _i, p1, _r, _ri);
};

global.N_0xd6740e14e4cefc0b = function (p0) {
	return _in(0xd6740e14, 0xe4cefc0b, p0, _r, _ri);
};

global.N_0xd67b6f3bcf81ba47 = function (p0, p1) {
	return _in(0xd67b6f3b, 0xcf81ba47, p0, p1);
};

global.N_0xd699e688b49c0fd2 = function (p0, p1, p2, p3, p4) {
	return _in(0xd699e688, 0xb49c0fd2, p0, p1, p2, p3, p4);
};

global.N_0xd6bd313cfa41e57a = function (p0) {
	return _in(0xd6bd313c, 0xfa41e57a, p0, _r, _ri);
};

global.N_0xd6c0a8c7c0b2f82c = function (p0, p1) {
	return _in(0xd6c0a8c7, 0xc0b2f82c, p0, p1);
};

global.N_0xd6cb05ddaee43afd = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd6cb05dd, 0xaee43afd, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xd6e39dc5d46df4ab = function (p0) {
	return _in(0xd6e39dc5, 0xd46df4ab, p0, _r, _ri);
};

global.N_0xd6f6acf4392187fb = function (p0) {
	return _in(0xd6f6acf4, 0x392187fb, p0, _r, _ri);
};

global.N_0xd70c7a30412f8fa0 = function (p0) {
	return _in(0xd70c7a30, 0x412f8fa0, p0, _r, _ri);
};

global.N_0xd710a5007c2ac539 = function (p0, p1, p2) {
	return _in(0xd710a500, 0x7c2ac539, p0, p1, p2);
};

global.N_0xd730281e496621fb = function (p0, p1) {
	return _in(0xd730281e, 0x496621fb, p0, p1);
};

global.N_0xd733528b6c35647a = function (p0, p1) {
	return _in(0xd733528b, 0x6c35647a, p0, p1);
};

global.N_0xd740f11fbc8aef43 = function (p0, p1, p2) {
	return _in(0xd740f11f, 0xbc8aef43, p0, p1, p2);
};

global.N_0xd743c4293f47afad = function (p0) {
	return _in(0xd743c429, 0x3f47afad, p0, _r, _ri);
};

global.N_0xd747979c053efa7a = function (p0) {
	return _in(0xd747979c, 0x053efa7a, p0);
};

global.N_0xd7494ded50c6ef52 = function (p0, p1, p2) {
	return _in(0xd7494ded, 0x50c6ef52, p0, p1, p2);
};

global.N_0xd74acdf7db8114af = function (p0) {
	return _in(0xd74acdf7, 0xdb8114af, p0);
};

global.N_0xd77ae48611b7b10a = function (p0, p1) {
	return _in(0xd77ae486, 0x11b7b10a, p0, p1);
};

global.N_0xd785864798258032 = function () {
	return _in(0xd7858647, 0x98258032, _r, _ri);
};

global.N_0xd78a26024bb13e08 = function (p0) {
	return _in(0xd78a2602, 0x4bb13e08, p0);
};

global.N_0xd798df5db67b1659 = function (p0) {
	return _in(0xd798df5d, 0xb67b1659, p0, _r, _ri);
};

global.N_0xd7ad3c7ebaf88c92 = function (p0) {
	return _in(0xd7ad3c7e, 0xbaf88c92, p0, _r, _ri);
};

global.N_0xd7bad4062074b9c1 = function (p0) {
	return _in(0xd7bad406, 0x2074b9c1, p0, _r, _ri);
};

global.N_0xd7d22f5592aed8ba = function (p0) {
	return _in(0xd7d22f55, 0x92aed8ba, p0, _r, _ri);
};

global.N_0xd7d2f45c56a4f4df = function (p0, p1, p2) {
	return _in(0xd7d2f45c, 0x56a4f4df, p0, p1, p2);
};

global.N_0xd7db94ab78e8ebe4 = function (p0, p1) {
	return _in(0xd7db94ab, 0x78e8ebe4, p0, p1, _r, _ri);
};

global.N_0xd7f6781a0abaf6fb = function (p0) {
	return _in(0xd7f6781a, 0x0abaf6fb, p0, _r, _ri);
};

global.N_0xd806cd2a4f2c2996 = function (p0) {
	return _in(0xd806cd2a, 0x4f2c2996, p0, _r, _ri);
};

global.N_0xd80a8854db5cfba5 = function (p0, p1, p2, p3) {
	return _in(0xd80a8854, 0xdb5cfba5, p0, p1, p2, p3, _r, _ri);
};

global.N_0xd80faf919a2e56ea = function (p0, p1) {
	return _in(0xd80faf91, 0x9a2e56ea, p0, p1);
};

global.N_0xd8254cb2c586412b = function (p0, p1) {
	return _in(0xd8254cb2, 0xc586412b, p0, p1, _r, _ri);
};

global.N_0xd826690b5cf3beff = function (p0, p1) {
	return _in(0xd826690b, 0x5cf3beff, p0, p1);
};

global.N_0xd8402b858f4ddd88 = function (p0, p1) {
	return _in(0xd8402b85, 0x8f4ddd88, p0, p1, _r, _ri);
};

global.N_0xd840c130d7aacfa5 = function (p0, p1, p2) {
	return _in(0xd840c130, 0xd7aacfa5, p0, p1, p2);
};

global.N_0xd8736efda38edc5c = function (p0, p1, p2, p3, p4) {
	return _in(0xd8736efd, 0xa38edc5c, p0, p1, p2, p3, p4);
};

global.N_0xd882c5b3991575b7 = function (p0, p1, p2, p3, p4) {
	return _in(0xd882c5b3, 0x991575b7, p0, p1, p2, p3, p4, _r, _rv);
};

global.N_0xd894437e12c17aec = function (p0, p1) {
	return _in(0xd894437e, 0x12c17aec, p0, p1);
};

global.N_0xd89504d9d7d5057d = function (p0) {
	return _in(0xd89504d9, 0xd7d5057d, p0, _r, _ri);
};

global.N_0xd8c7162ab2e2af45 = function (p0) {
	return _in(0xd8c7162a, 0xb2e2af45, p0);
};

global.N_0xd8ceeed54c672b5d = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd8ceeed5, 0x4c672b5d, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xd8e3d22aa4f0e0a5 = function () {
	return _in(0xd8e3d22a, 0xa4f0e0a5, _r, _ri);
};

global.N_0xd904f75dbd7ab865 = function (entity) {
	return _in(0xd904f75d, 0xbd7ab865, entity);
};

global.N_0xd9130842d7226045 = function (p0, p1) {
	return _in(0xd9130842, 0xd7226045, p0, p1, _r, _ri);
};

global.N_0xd91e55b6c005eb09 = function (p0, p1) {
	return _in(0xd91e55b6, 0xc005eb09, p0, p1, _r, _ri);
};

global.N_0xd9267375834c5eab = function (p0) {
	return _in(0xd9267375, 0x834c5eab, p0, _r, _ri);
};

global.N_0xd92fa81b64920e85 = function (p0, p1, p2) {
	return _in(0xd92fa81b, 0x64920e85, p0, p1, p2);
};

global.N_0xd9459157eb22c895 = function () {
	return _in(0xd9459157, 0xeb22c895, _r, _ri);
};

global.N_0xd955fee4b87afa07 = function (p0) {
	return _in(0xd955fee4, 0xb87afa07, p0, _r, _ri);
};

global.N_0xd95d777f828b2bbb = function (p0) {
	return _in(0xd95d777f, 0x828b2bbb, p0);
};

global.N_0xd95f04a4e73be85e = function (p0, p1) {
	return _in(0xd95f04a4, 0xe73be85e, p0, p1, _r, _ri);
};

global.N_0xd962f8579d702db5 = function () {
	return _in(0xd962f857, 0x9d702db5);
};

global.N_0xd97d8d905f1562f2 = function (p0) {
	return _in(0xd97d8d90, 0x5f1562f2, p0, _r, _ri);
};

global.N_0xd99229fe93b46286 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd99229fe, 0x93b46286, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xd999e379265a4501 = function (p0, p1, p2) {
	return _in(0xd999e379, 0x265a4501, p0, p1, p2);
};

global.N_0xd9bc98b55bcfaa9b = function (p0) {
	return _in(0xd9bc98b5, 0x5bcfaa9b, p0);
};

global.N_0xd9bf3ed8efb67ea3 = function (p0, p1, p2, p3, p4) {
	return _in(0xd9bf3ed8, 0xefb67ea3, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xd9c24f53631f2372 = function (p0, p1, p2) {
	return _in(0xd9c24f53, 0x631f2372, p0, p1, p2, _r, _ri);
};

global.N_0xd9edb2e4512d563e = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xd9edb2e4, 0x512d563e, p0, p1, _fv(p2), _fv(p3), _fv(p4), _fv(p5), p6, _fv(p7));
};

global.N_0xd9f2ff4af394d926 = function () {
	return _in(0xd9f2ff4a, 0xf394d926);
};

global.N_0xda0a30153fcc0ffd = function () {
	return _in(0xda0a3015, 0x3fcc0ffd);
};

global.N_0xda1a9adc4e3d4b16 = function (p0, p1, p2) {
	return _in(0xda1a9adc, 0x4e3d4b16, p0, p1, p2);
};

global.N_0xda1bfed8582f61f0 = function () {
	return _in(0xda1bfed8, 0x582f61f0, _r, _ri);
};

global.N_0xda26263c07cce9c2 = function (p0) {
	return _in(0xda26263c, 0x07cce9c2, p0);
};

global.N_0xda26263c87cce9c1 = function (p0, p1, p2, p3) {
	return _in(0xda26263c, 0x87cce9c1, p0, p1, p2, p3);
};

global.N_0xda37a053c1522f5d = function (p0, p1, p2, p3) {
	return _in(0xda37a053, 0xc1522f5d, p0, p1, p2, p3, _r, _ri);
};

global.N_0xda4b1a479c414fb2 = function () {
	return _in(0xda4b1a47, 0x9c414fb2, _r, _ri);
};

global.N_0xda4d8eb04e8e2928 = function (p0) {
	return _in(0xda4d8eb0, 0x4e8e2928, p0);
};

global.N_0xda5d3f2c6dd5b5d4 = function (p0) {
	return _in(0xda5d3f2c, 0x6dd5b5d4, p0);
};

global.N_0xda7fdeff4de86839 = function () {
	return _in(0xda7fdeff, 0x4de86839, _r, _ri);
};

global.N_0xda801f7f6a5278d3 = function (p0) {
	return _in(0xda801f7f, 0x6a5278d3, p0, _r, _ri);
};

global.N_0xda8b2eaf29e872e2 = function (p0, p1, p2) {
	return _in(0xda8b2eaf, 0x29e872e2, p0, p1, p2, _r, _ri);
};

global.N_0xda98246c7a3c2189 = function (p0) {
	return _in(0xda98246c, 0x7a3c2189, p0);
};

global.N_0xda9d7be231fe865f = function (p0, p1, p2) {
	return _in(0xda9d7be2, 0x31fe865f, p0, p1, p2, _r, _ri);
};

global.N_0xdab6a2fc56b7de65 = function (p0) {
	return _in(0xdab6a2fc, 0x56b7de65, p0, _r, _ri);
};

global.N_0xdabfe48ba0d457aa = function () {
	return _in(0xdabfe48b, 0xa0d457aa, _r, _ri);
};

global.N_0xdace03c65c6666db = function (p0, p1) {
	return _in(0xdace03c6, 0x5c6666db, p0, p1);
};

global.N_0xdad6cd07caa4f382 = function () {
	return _in(0xdad6cd07, 0xcaa4f382);
};

global.N_0xdad7fb8402651654 = function () {
	return _in(0xdad7fb84, 0x02651654);
};

global.N_0xdaefdfdb2aeece37 = function (p0, p1) {
	return _in(0xdaefdfdb, 0x2aeece37, p0, p1, _r, _ri);
};

global.N_0xdb1bd07fb464584d = function (p0, p1) {
	return _in(0xdb1bd07f, 0xb464584d, p0, p1);
};

global.N_0xdb382fe20c2da222 = function (p0) {
	return _in(0xdb382fe2, 0x0c2da222, p0);
};

global.N_0xdb438cc9bc6f4022 = function () {
	return _in(0xdb438cc9, 0xbc6f4022, _r, _ri);
};

global.N_0xdb48e99f8e064e56 = function (p0) {
	return _in(0xdb48e99f, 0x8e064e56, p0);
};

global.N_0xdb622ecd3dcbe078 = function () {
	return _in(0xdb622ecd, 0x3dcbe078, _r, _ri);
};

global.N_0xdb7abdd203fa3704 = function () {
	return _in(0xdb7abdd2, 0x03fa3704, _r, _ri);
};

global.N_0xdbbf12ea7c1029b2 = function (p0, p1) {
	return _in(0xdbbf12ea, 0x7c1029b2, p0, p1);
};

global.N_0xdbc4b552b2ae9a83 = function (p0, p1) {
	return _in(0xdbc4b552, 0xb2ae9a83, p0, p1, _r, _ri);
};

global.N_0xdc0556d0f484ecaa = function (p0) {
	return _in(0xdc0556d0, 0xf484ecaa, p0);
};

global.N_0xdc057b86fc157031 = function () {
	return _in(0xdc057b86, 0xfc157031, _r, _ri);
};

global.N_0xdc0a1f0ecec9f0c0 = function (p0, p1) {
	return _in(0xdc0a1f0e, 0xcec9f0c0, p0, p1);
};

global.N_0xdc2f83a0612ca34d = function (p0) {
	return _in(0xdc2f83a0, 0x612ca34d, p0, _r, _ri);
};

global.N_0xdc3914a99b4a5fdf = function (p0) {
	return _in(0xdc3914a9, 0x9b4a5fdf, p0, _r, _ri);
};

global.N_0xdc416ca762bc4f43 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xdc416ca7, 0x62bc4f43, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xdc44f405a6b98d03 = function (p0, p1) {
	return _in(0xdc44f405, 0xa6b98d03, p0, p1, _r, _ri);
};

global.N_0xdc5e09d012d759c4 = function (p0, p1, p2) {
	return _in(0xdc5e09d0, 0x12d759c4, p0, p1, p2);
};

global.N_0xdc62cd70658e7a02 = function () {
	return _in(0xdc62cd70, 0x658e7a02, _r, _ri);
};

global.N_0xdc68829bb3f37023 = function (p0, p1) {
	return _in(0xdc68829b, 0xb3f37023, p0, p1);
};

global.N_0xdc69f6913cca0b99 = function (p0, p1) {
	return _in(0xdc69f691, 0x3cca0b99, p0, p1);
};

global.N_0xdc6ad5c046f33ab4 = function (p0, p1) {
	return _in(0xdc6ad5c0, 0x46f33ab4, p0, p1);
};

global.N_0xdc88d06719070c39 = function (p0) {
	return _in(0xdc88d067, 0x19070c39, p0, _r, _ri);
};

global.N_0xdc91f22f09bc6c2f = function (p0, p1) {
	return _in(0xdc91f22f, 0x09bc6c2f, p0, p1);
};

global.N_0xdc9273d95976ba22 = function (p0) {
	return _in(0xdc9273d9, 0x5976ba22, p0, _r, _ri);
};

global.N_0xdc93f0948f2c28f4 = function (p0) {
	return _in(0xdc93f094, 0x8f2c28f4, p0);
};

global.N_0xdc9655d47dec0353 = function (p0) {
	return _in(0xdc9655d4, 0x7dec0353, p0, _r, _ri);
};

global.N_0xdc9b361cb7776673 = function (p0) {
	return _in(0xdc9b361c, 0xb7776673, p0);
};

global.N_0xdca4a74135e1dea5 = function (p0) {
	return _in(0xdca4a741, 0x35e1dea5, p0, _r, _ri);
};

global.N_0xdca6abdb9288fbe4 = function (p0, p1) {
	return _in(0xdca6abdb, 0x9288fbe4, p0, p1);
};

global.N_0xdcc4b7f7112e8ab7 = function (p0) {
	return _in(0xdcc4b7f7, 0x112e8ab7, p0, _r, _ri);
};

global.N_0xdccaa7c3bfd88862 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xdccaa7c3, 0xbfd88862, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xdcec875a02991ad0 = function (p0, p1, p2, p3) {
	return _in(0xdcec875a, 0x02991ad0, p0, p1, p2, p3, _r, _ri);
};

global.N_0xdcf06d0cdff68424 = function (p0, p1, p2) {
	return _in(0xdcf06d0c, 0xdff68424, p0, p1, p2, _r, _ri);
};

global.N_0xdcf12b89624aac96 = function (p0) {
	return _in(0xdcf12b89, 0x624aac96, p0);
};

global.N_0xdcf5ba95bbf0faba = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xdcf5ba95, 0xbbf0faba, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xdd03fc2089ad093c = function (p0, p1, p2, p3) {
	return _in(0xdd03fc20, 0x89ad093c, p0, p1, p2, p3);
};

global.N_0xdd0660c997de94fd = function (p0, p1) {
	return _in(0xdd0660c9, 0x97de94fd, p0, p1);
};

global.N_0xdd0b7c5ae58f721d = function (p0) {
	return _in(0xdd0b7c5a, 0xe58f721d, p0, _r, _ri);
};

global.N_0xdd0bc0edcb2162f6 = function (p0) {
	return _in(0xdd0bc0ed, 0xcb2162f6, p0);
};

global.N_0xdd100ce1ebbf37e3 = function (p0, p1) {
	return _in(0xdd100ce1, 0xebbf37e3, p0, p1);
};

global.N_0xdd1232b332cbb9e7 = function (p0, p1, p2) {
	return _in(0xdd1232b3, 0x32cbb9e7, p0, p1, p2);
};

global.N_0xdd1e1393d966d39a = function (p0, p1) {
	return _in(0xdd1e1393, 0xd966d39a, p0, p1, _r, _ri);
};

global.N_0xdd33a82352c4652f = function (p0, p1, p2) {
	return _in(0xdd33a823, 0x52c4652f, p0, p1, p2);
};

global.N_0xdd560abef5d3784c = function (p0, p1) {
	return _in(0xdd560abe, 0xf5d3784c, p0, p1);
};

global.N_0xdd5fd601481f648b = function (p0) {
	return _in(0xdd5fd601, 0x481f648b, p0, _r, _ri);
};

global.N_0xdd73c9838ce7181d = function () {
	return _in(0xdd73c983, 0x8ce7181d, _r, _ri);
};

global.N_0xdd7806fd0543bc3d = function () {
	return _in(0xdd7806fd, 0x0543bc3d, _r, _ri);
};

global.N_0xdd9540e7b1c9714f = function (p0, p1, p2, p3, p4) {
	return _in(0xdd9540e7, 0xb1c9714f, p0, p1, p2, p3, p4);
};

global.N_0xdd9dc1ab63d513ce = function (p0, p1, p2) {
	return _in(0xdd9dc1ab, 0x63d513ce, p0, p1, p2);
};

global.N_0xddaeb478e58f8dea = function (p0, p1) {
	return _in(0xddaeb478, 0xe58f8dea, p0, p1, _r, _ri);
};

global.N_0xddb2578e95ef7138 = function (p0) {
	return _in(0xddb2578e, 0x95ef7138, p0, _r, _ri);
};

global.N_0xddbd560745b1ee98 = function (p0, p1, p2) {
	return _in(0xddbd5607, 0x45b1ee98, p0, p1, p2, _r, _ri);
};

global.N_0xddbea5506c848227 = function (p0) {
	return _in(0xddbea550, 0x6c848227, p0, _r, _ri);
};

global.N_0xddc64f5e31eedab6 = function (p0) {
	return _in(0xddc64f5e, 0x31eedab6, p0, _r, _ri);
};

global.N_0xddce8e960d1de240 = function (p0) {
	return _in(0xddce8e96, 0x0d1de240, p0);
};

global.N_0xddceb0f26c89c00f = function (p0) {
	return _in(0xddceb0f2, 0x6c89c00f, p0, _r, _ri);
};

global.N_0xddcf6fea5d7acc17 = function (p0, p1) {
	return _in(0xddcf6fea, 0x5d7acc17, p0, p1);
};

global.N_0xddfad4deaa7fa362 = function (p0, p1, p2, p3, p4) {
	return _in(0xddfad4de, 0xaa7fa362, p0, p1, p2, p3, p4);
};

global.N_0xde0c8b145ea466ff = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xde0c8b14, 0x5ea466ff, p0, p1, p2, p3, p4, p5);
};

global.N_0xde0ea444735c1368 = function (p0) {
	return _in(0xde0ea444, 0x735c1368, p0, _r, _ri);
};

global.N_0xde116ecffdd4b997 = function (p0, p1) {
	return _in(0xde116ecf, 0xfdd4b997, p0, p1);
};

global.N_0xde1b1907a83a1550 = function (p0, p1) {
	return _in(0xde1b1907, 0xa83a1550, p0, p1);
};

global.N_0xde2c3b74d2b3705c = function (p0, p1) {
	return _in(0xde2c3b74, 0xd2b3705c, p0, p1);
};

global.N_0xde3904b22695d9f9 = function (p0, p1) {
	return _in(0xde3904b2, 0x2695d9f9, p0, p1, _r, _ri);
};

global.N_0xde544b7ec0c187cc = function (p0) {
	return _in(0xde544b7e, 0xc0c187cc, p0);
};

global.N_0xde5faa741a781f73 = function (p0, p1) {
	return _in(0xde5faa74, 0x1a781f73, p0, p1);
};

global.N_0xde6c85975f9d4894 = function (p0) {
	return _in(0xde6c8597, 0x5f9d4894, p0, _r, _ri);
};

global.N_0xde7b2b4144906cdf = function (p0, p1) {
	return _in(0xde7b2b41, 0x44906cdf, p0, p1);
};

global.N_0xde8c5b9f65017fa1 = function (p0) {
	return _in(0xde8c5b9f, 0x65017fa1, p0, _r, _ri);
};

global.N_0xde9bad3292aa6d5e = function (p0) {
	return _in(0xde9bad32, 0x92aa6d5e, p0, _r, _ri);
};

global.N_0xdea083c16bb91345 = function () {
	return _in(0xdea083c1, 0x6bb91345);
};

global.N_0xdeb2b99a1af1a2a6 = function (p0) {
	return _in(0xdeb2b99a, 0x1af1a2a6, p0, _r, _ri);
};

global.N_0xdeb369f6ad168c58 = function (p0, p1) {
	return _in(0xdeb369f6, 0xad168c58, p0, p1);
};

global.N_0xdedbed3020da49dc = function (p0) {
	return _in(0xdedbed30, 0x20da49dc, p0);
};

global.N_0xdede679ed29dd4e7 = function (p0, p1) {
	return _in(0xdede679e, 0xd29dd4e7, p0, p1);
};

global.N_0xdee80fedfdd43c9b = function (p0, p1) {
	return _in(0xdee80fed, 0xfdd43c9b, p0, p1);
};

global.N_0xdee8d30aa5c2e28d = function (p0, p1, p2) {
	return _in(0xdee8d30a, 0xa5c2e28d, p0, p1, p2);
};

global.N_0xdeede7c41742e011 = function (p0) {
	return _in(0xdeede7c4, 0x1742e011, p0);
};

global.N_0xdf4a3404d022adde = function (p0, p1, p2) {
	return _in(0xdf4a3404, 0xd022adde, p0, p1, p2, _r, _ri);
};

global.N_0xdf516e598d966d06 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xdf516e59, 0x8d966d06, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xdf56a2b50c04dea4 = function (p0, p1) {
	return _in(0xdf56a2b5, 0x0c04dea4, p0, p1, _r, _ri);
};

global.N_0xdf631e4bce1b1fc4 = function (p0, p1, p2, p3) {
	return _in(0xdf631e4b, 0xce1b1fc4, p0, p1, p2, p3);
};

global.N_0xdf66a37936d5f3d9 = function (p0) {
	return _in(0xdf66a379, 0x36d5f3d9, p0, _r, _ri);
};

global.N_0xdf728c5ae137fc14 = function (p0, p1, p2) {
	return _in(0xdf728c5a, 0xe137fc14, p0, p1, p2, _r, _ri);
};

global.N_0xdf7993356f52359a = function (p0, p1) {
	return _in(0xdf799335, 0x6f52359a, p0, p1, _r, _ri);
};

global.N_0xdf7b5144e25cd3fe = function (p0, p1) {
	return _in(0xdf7b5144, 0xe25cd3fe, p0, p1, _r, _ri);
};

global.N_0xdf7f5be9150e47e4 = function (p0) {
	return _in(0xdf7f5be9, 0x150e47e4, p0);
};

global.N_0xdf8a5855b9f9a97b = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17) {
	return _in(0xdf8a5855, 0xb9f9a97b, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17);
};

global.N_0xdf8e49ea89a01db1 = function (p0, p1, p2) {
	return _in(0xdf8e49ea, 0x89a01db1, p0, p1, p2, _r, _ri);
};

global.N_0xdf93973251fb2ca5 = function (p0, p1) {
	return _in(0xdf939732, 0x51fb2ca5, p0, p1);
};

global.N_0xdf947fe0d551684e = function (p0, p1) {
	return _in(0xdf947fe0, 0xd551684e, p0, p1, _r, _ri);
};

global.N_0xdf94844d474f31e5 = function (p0) {
	return _in(0xdf94844d, 0x474f31e5, p0);
};

global.N_0xdf95df488a645ce7 = function () {
	return _in(0xdf95df48, 0x8a645ce7);
};

global.N_0xdfa1237f5228263f = function (p0, p1) {
	return _in(0xdfa1237f, 0x5228263f, p0, p1);
};

global.N_0xdfc2b226d56d85f6 = function (p0, p1) {
	return _in(0xdfc2b226, 0xd56d85f6, p0, p1, _r, _ri);
};

global.N_0xdfc85c5199045026 = function (p0, p1) {
	return _in(0xdfc85c51, 0x99045026, p0, p1);
};

global.N_0xdfce8ce9f3ebe93f = function (p0) {
	return _in(0xdfce8ce9, 0xf3ebe93f, p0);
};

global.N_0xdfe332a5da6fe7c9 = function (p0) {
	return _in(0xdfe332a5, 0xda6fe7c9, p0, _r, _ri);
};

global.N_0xdfea23ec90113657 = function (p0) {
	return _in(0xdfea23ec, 0x90113657, p0);
};

global.N_0xdffc15aa63d04aab = function () {
	return _in(0xdffc15aa, 0x63d04aab, _r, _ri);
};

global.N_0xe015cf1f2c0959d8 = function (p0) {
	return _in(0xe015cf1f, 0x2c0959d8, p0, _r, _ri);
};

global.N_0xe01c8dc8edd28d31 = function (p0, p1) {
	return _in(0xe01c8dc8, 0xedd28d31, p0, p1);
};

global.N_0xe01f55b2896f6b37 = function (p0, p1) {
	return _in(0xe01f55b2, 0x896f6b37, p0, p1);
};

global.N_0xe022cc1b545f1d9f = function (p0) {
	return _in(0xe022cc1b, 0x545f1d9f, p0, _r, _ri);
};

global.N_0xe057fea9a22eb3ee = function (p0) {
	return _in(0xe057fea9, 0xa22eb3ee, p0);
};

global.N_0xe05a5d39be6e93af = function (p0) {
	return _in(0xe05a5d39, 0xbe6e93af, p0);
};

global.N_0xe083beda81709891 = function (p0) {
	return _in(0xe083beda, 0x81709891, p0, _r, _ri);
};

global.N_0xe0884c184728c75b = function (p0, p1, p2, p3) {
	return _in(0xe0884c18, 0x4728c75b, p0, p1, p2, p3);
};

global.N_0xe0961aed72642b80 = function (p0) {
	return _in(0xe0961aed, 0x72642b80, p0);
};

global.N_0xe0b45e983bfc0768 = function () {
	return _in(0xe0b45e98, 0x3bfc0768);
};

global.N_0xe0b61ed8bb37712f = function (p0) {
	return _in(0xe0b61ed8, 0xbb37712f, p0);
};

global.N_0xe0cb4ab15cb32710 = function (p0, p1, p2) {
	return _in(0xe0cb4ab1, 0x5cb32710, p0, p1, p2);
};

global.N_0xe0d6c2a146a5c993 = function (p0, p1) {
	return _in(0xe0d6c2a1, 0x46a5c993, p0, p1);
};

global.N_0xe0d73cddea79ddcd = function (p0) {
	return _in(0xe0d73cdd, 0xea79ddcd, p0, _r, _ri);
};

global.N_0xe0e65e0d261f7507 = function (p0) {
	return _in(0xe0e65e0d, 0x261f7507, p0);
};

global.N_0xe0fa74aa3cce650b = function (p0, p1) {
	return _in(0xe0fa74aa, 0x3cce650b, p0, p1);
};

global.N_0xe0fe107ab174d64a = function (p0, p1) {
	return _in(0xe0fe107a, 0xb174d64a, p0, p1);
};

global.N_0xe10f2d7715ababec = function (p0) {
	return _in(0xe10f2d77, 0x15ababec, p0, _r, _ri);
};

global.N_0xe1103300f3456de7 = function (p0, p1, p2) {
	return _in(0xe1103300, 0xf3456de7, p0, p1, p2);
};

global.N_0xe116f6f2da2d777e = function (p0) {
	return _in(0xe116f6f2, 0xda2d777e, p0, _r, _rv);
};

global.N_0xe124889ae0521fcf = function (p0, p1, p2, p3) {
	return _in(0xe124889a, 0xe0521fcf, p0, p1, p2, p3);
};

global.N_0xe12d7b4b959644cd = function () {
	return _in(0xe12d7b4b, 0x959644cd);
};

global.N_0xe12f56cb25d9ce23 = function (p0) {
	return _in(0xe12f56cb, 0x25d9ce23, p0, _r, _ri);
};

global.N_0xe12f5ed49f44d40d = function (p0) {
	return _in(0xe12f5ed4, 0x9f44d40d, p0);
};

global.N_0xe133c1ec5300f740 = function (p0, p1, p2) {
	return _in(0xe133c1ec, 0x5300f740, p0, p1, p2);
};

global.N_0xe13634bb6baf0734 = function (p0, p1) {
	return _in(0xe13634bb, 0x6baf0734, p0, p1, _r, _ri);
};

global.N_0xe141f6b40b1e3683 = function (p0, p1) {
	return _in(0xe141f6b4, 0x0b1e3683, p0, p1);
};

global.N_0xe157a8a336c7f04a = function (p0, p1) {
	return _in(0xe157a8a3, 0x36c7f04a, p0, p1);
};

global.N_0xe19035eb65ab2932 = function (p0, p1) {
	return _in(0xe19035eb, 0x65ab2932, p0, p1);
};

global.N_0xe195c5a82156321d = function (p0, p1) {
	return _in(0xe195c5a8, 0x2156321d, p0, p1, _r, _ri);
};

global.N_0xe1a83d4a3b5d7938 = function (p0) {
	return _in(0xe1a83d4a, 0x3b5d7938, p0, _r, _ri);
};

global.N_0xe1aadd0055d76603 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xe1aadd00, 0x55d76603, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0xe1b3be07d3aadded = function (p0, p1, p2) {
	return _in(0xe1b3be07, 0xd3aadded, p0, p1, p2);
};

global.N_0xe1bc73d6815ba361 = function (p0, p1, p2) {
	return _in(0xe1bc73d6, 0x815ba361, p0, p1, p2);
};

global.N_0xe1c0f8781bf130c2 = function (p0, p1) {
	return _in(0xe1c0f878, 0x1bf130c2, p0, p1, _r, _ri);
};

global.N_0xe1c105e6bba48270 = function () {
	return _in(0xe1c105e6, 0xbba48270, _r, _ri);
};

global.N_0xe1c708ba4885796b = function (p0, p1) {
	return _in(0xe1c708ba, 0x4885796b, p0, p1);
};

global.N_0xe1f365c4c8f259d8 = function (p0, p1, p2) {
	return _in(0xe1f365c4, 0xc8f259d8, p0, p1, p2, _r, _ri);
};

global.N_0xe1f45a67a9f0dcbc = function (p0) {
	return _in(0xe1f45a67, 0xa9f0dcbc, p0);
};

global.N_0xe20027b414bfe6c7 = function (p0, p1) {
	return _in(0xe20027b4, 0x14bfe6c7, p0, p1);
};

global.N_0xe22060121602493b = function (p0, p1, p2) {
	return _in(0xe2206012, 0x1602493b, p0, p1, p2);
};

global.N_0xe225cef1901f6108 = function (p0, p1) {
	return _in(0xe225cef1, 0x901f6108, p0, p1);
};

global.N_0xe24822a4cfc9107a = function (p0, p1) {
	return _in(0xe24822a4, 0xcfc9107a, p0, p1, _r, _ri);
};

global.N_0xe2487779957fe897 = function (p0, p1) {
	return _in(0xe2487779, 0x957fe897, p0, p1);
};

global.N_0xe24c64d9aded2ef5 = function (p0, p1) {
	return _in(0xe24c64d9, 0xaded2ef5, p0, p1, _r, _ri);
};

global.N_0xe258570e0c116a66 = function () {
	return _in(0xe258570e, 0x0c116a66, _r, _ri);
};

global.N_0xe26970a7ae0f28e9 = function (p0, p1, p2, p3) {
	return _in(0xe26970a7, 0xae0f28e9, p0, p1, p2, p3);
};

global.N_0xe28f73212a813e82 = function (p0, p1, p2, p3) {
	return _in(0xe28f7321, 0x2a813e82, p0, p1, p2, p3);
};

global.N_0xe296208c273bd7f0 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xe296208c, 0x273bd7f0, p0, p1, p2, p3, p4, p5);
};

global.N_0xe29d8cd66553dbaa = function (p0) {
	return _in(0xe29d8cd6, 0x6553dbaa, p0);
};

global.N_0xe2b3b852b537c398 = function (p0) {
	return _in(0xe2b3b852, 0xb537c398, p0);
};

global.N_0xe2bb2d6a9fe2ecde = function (p0) {
	return _in(0xe2bb2d6a, 0x9fe2ecde, p0);
};

global.N_0xe2be6ffa4a13cbb0 = function (p0, p1, p2) {
	return _in(0xe2be6ffa, 0x4a13cbb0, p0, p1, p2);
};

global.N_0xe2c2fbb7825ffc66 = function () {
	return _in(0xe2c2fbb7, 0x825ffc66);
};

global.N_0xe2c3cec3c0903a00 = function (p0) {
	return _in(0xe2c3cec3, 0xc0903a00, p0, _r, _ri);
};

global.N_0xe2cf104add49d4bf = function (p0) {
	return _in(0xe2cf104a, 0xdd49d4bf, p0);
};

global.N_0xe3144b932dfdff65 = function (p0, p1, p2, p3, p4) {
	return _in(0xe3144b93, 0x2dfdff65, p0, p1, p2, p3, p4);
};

global.N_0xe31a04513237dc89 = function () {
	return _in(0xe31a0451, 0x3237dc89, _r, _ri);
};

global.N_0xe31c0cb1c3186d40 = function (p0) {
	return _in(0xe31c0cb1, 0xc3186d40, p0);
};

global.N_0xe31fc20319874cb3 = function (p0, p1, p2) {
	return _in(0xe31fc203, 0x19874cb3, p0, p1, p2, _r, _ri);
};

global.N_0xe33f98bd76490abc = function (p0, p1, p2) {
	return _in(0xe33f98bd, 0x76490abc, p0, p1, p2, _r, _ri);
};

global.N_0xe348d1404bd80146 = function (p0) {
	return _in(0xe348d140, 0x4bd80146, p0, _r, _ri);
};

global.N_0xe3639db78b3b5400 = function (p0) {
	return _in(0xe3639db7, 0x8b3b5400, p0);
};

global.N_0xe368e8422c860ba7 = function (p0, p1, p2) {
	return _in(0xe368e842, 0x2c860ba7, p0, p1, p2, _r, _ri);
};

global.N_0xe36d2cb540597ef7 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xe36d2cb5, 0x40597ef7, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.N_0xe36d4a38d28d9cfb = function (p0) {
	return _in(0xe36d4a38, 0xd28d9cfb, p0);
};

global.N_0xe37acee15ac50c7e = function (p0, p1) {
	return _in(0xe37acee1, 0x5ac50c7e, p0, p1);
};

global.N_0xe38450dbcbc70e3d = function (p0, p1) {
	return _in(0xe38450db, 0xcbc70e3d, p0, p1, _r, _ri);
};

global.N_0xe39600e50d608693 = function (p0, p1) {
	return _in(0xe39600e5, 0x0d608693, p0, p1, _r, _ri);
};

global.N_0xe3a46370f70f3607 = function (p0, p1) {
	return _in(0xe3a46370, 0xf70f3607, p0, p1);
};

global.N_0xe3ab5eefcb6671a2 = function (p0) {
	return _in(0xe3ab5eef, 0xcb6671a2, p0);
};

global.N_0xe404bff0aba23cdc = function (p0) {
	return _in(0xe404bff0, 0xaba23cdc, p0, _r, _ri);
};

global.N_0xe47001b7cb8b98ae = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xe47001b7, 0xcb8b98ae, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xe4770da1b8ff4fd1 = function (p0) {
	return _in(0xe4770da1, 0xb8ff4fd1, p0, _r, _ri);
};

global.N_0xe47dd64b9f02677d = function (p0) {
	return _in(0xe47dd64b, 0x9f02677d, p0, _r, _ri);
};

global.N_0xe483bb6be686f632 = function (p0) {
	return _in(0xe483bb6b, 0xe686f632, p0, _r, _ri);
};

global.N_0xe4abe20dce7c7cfe = function (p0, p1, p2) {
	return _in(0xe4abe20d, 0xce7c7cfe, p0, p1, p2);
};

global.N_0xe4b7945ef4f1bfb2 = function (p0, p1) {
	return _in(0xe4b7945e, 0xf4f1bfb2, p0, p1);
};

global.N_0xe4c11f104620ddce = function (p0, p1) {
	return _in(0xe4c11f10, 0x4620ddce, p0, p1, _r, _ri);
};

global.N_0xe4c51a8a3bd1664c = function (p0) {
	return _in(0xe4c51a8a, 0x3bd1664c, p0, _r, _ri);
};

global.N_0xe4c64cd37cb176aa = function (p0) {
	return _in(0xe4c64cd3, 0x7cb176aa, p0, _r, _ri);
};

global.N_0xe4c95e0ae31c6512 = function (p0, p1) {
	return _in(0xe4c95e0a, 0xe31c6512, p0, p1);
};

global.N_0xe4d6e45f491a66cb = function (p0, p1) {
	return _in(0xe4d6e45f, 0x491a66cb, p0, p1, _r, _ri);
};

global.N_0xe4e2c581f127a11c = function (p0, p1) {
	return _in(0xe4e2c581, 0xf127a11c, p0, p1);
};

global.N_0xe4ef4382e22c780c = function (p0) {
	return _in(0xe4ef4382, 0xe22c780c, p0);
};

global.N_0xe4efb315bcd2a838 = function (p0, p1) {
	return _in(0xe4efb315, 0xbcd2a838, p0, p1);
};

global.N_0xe50a67c33514a390 = function (p0, p1) {
	return _in(0xe50a67c3, 0x3514a390, p0, p1, _r, _ri);
};

global.N_0xe525878a35b9eebd = function (p0, p1) {
	return _in(0xe525878a, 0x35b9eebd, p0, p1, _r, _ri);
};

global.N_0xe532d6811b3a4d2a = function (p0) {
	return _in(0xe532d681, 0x1b3a4d2a, p0, _r);
};

global.N_0xe53a308ac35877a8 = function () {
	return _in(0xe53a308a, 0xc35877a8, _r, _ri);
};

global.N_0xe546bda1b3e288ee = function (p0) {
	return _in(0xe546bda1, 0xb3e288ee, p0, _r, _ri);
};

global.N_0xe54bf2ce6c7d23a9 = function (p0, p1, p2, p3, p4) {
	return _in(0xe54bf2ce, 0x6c7d23a9, p0, p1, p2, p3, p4);
};

global.N_0xe54dc27571d5edc4 = function (p0) {
	return _in(0xe54dc275, 0x71d5edc4, p0, _r, _ri);
};

global.N_0xe54dc27571d5edc5 = function (p0) {
	return _in(0xe54dc275, 0x71d5edc5, p0, _r, _ri);
};

global.N_0xe55478c5edf70ac2 = function (p0) {
	return _in(0xe55478c5, 0xedf70ac2, p0, _r, _ri);
};

global.N_0xe5634491a58c2703 = function (p0) {
	return _in(0xe5634491, 0xa58c2703, p0);
};

global.N_0xe57529d23541d2dd = function (p0, p1, p2) {
	return _in(0xe57529d2, 0x3541d2dd, p0, p1, p2);
};

global.N_0xe578c8ae173719b3 = function (p0) {
	return _in(0xe578c8ae, 0x173719b3, p0, _r, _ri);
};

global.N_0xe5822422197bbba3 = function (p0, p1, p2) {
	return _in(0xe5822422, 0x197bbba3, p0, p1, p2, _r, _ri);
};

global.N_0xe5831aa1e2fd147c = function (p0) {
	return _in(0xe5831aa1, 0xe2fd147c, p0);
};

global.N_0xe588b5a8a005cb5e = function (p0, p1, p2, p3) {
	return _in(0xe588b5a8, 0xa005cb5e, p0, p1, p2, p3);
};

global.N_0xe59f4924bd3a718d = function (p0) {
	return _in(0xe59f4924, 0xbd3a718d, p0, _r, _ri);
};

global.N_0xe5a680a5d8b1f687 = function (p0) {
	return _in(0xe5a680a5, 0xd8b1f687, p0);
};

global.N_0xe5a7f70b7c0f3271 = function (p0, p1) {
	return _in(0xe5a7f70b, 0x7c0f3271, p0, p1);
};

global.N_0xe5b76e5b56cd77dd = function () {
	return _in(0xe5b76e5b, 0x56cd77dd, _r, _ri);
};

global.N_0xe5d3eb37abc1eb03 = function (p0) {
	return _in(0xe5d3eb37, 0xabc1eb03, p0);
};

global.N_0xe5ef9de716ff737e = function (p0, p1, p2) {
	return _in(0xe5ef9de7, 0x16ff737e, p0, p1, p2);
};

global.N_0xe5ff65cff5160752 = function () {
	return _in(0xe5ff65cf, 0xf5160752);
};

global.N_0xe600f61f54a444a6 = function () {
	return _in(0xe600f61f, 0x54a444a6, _r, _ri);
};

global.N_0xe62754d09354f6cf = function (p0) {
	return _in(0xe62754d0, 0x9354f6cf, p0, _r, _ri);
};

global.N_0xe631eaf35828fa67 = function (p0) {
	return _in(0xe631eaf3, 0x5828fa67, p0, _r, _ri);
};

global.N_0xe63d68f455ca0b47 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xe63d68f4, 0x55ca0b47, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xe65c5cba95f0e510 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xe65c5cba, 0x95f0e510, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0xe67af24c5a3b6058 = function (p0, p1, p2) {
	return _in(0xe67af24c, 0x5a3b6058, p0, p1, p2);
};

global.N_0xe682002db1f30669 = function (p0) {
	return _in(0xe682002d, 0xb1f30669, p0);
};

global.N_0xe69fda40aac3efc0 = function (p0, p1) {
	return _in(0xe69fda40, 0xaac3efc0, p0, p1);
};

global.N_0xe6a151364c600b24 = function (p0) {
	return _in(0xe6a15136, 0x4c600b24, p0, _r, _ri);
};

global.N_0xe6aab897120492d6 = function (p0, p1) {
	return _in(0xe6aab897, 0x120492d6, p0, p1, _r, _ri);
};

global.N_0xe6aab897120492d7 = function (p0, p1, p2) {
	return _in(0xe6aab897, 0x120492d7, p0, p1, p2);
};

global.N_0xe6b763c7f4902201 = function (p0, p1) {
	return _in(0xe6b763c7, 0xf4902201, p0, p1);
};

global.N_0xe6bd7dd3fd474415 = function (p0, p1) {
	return _in(0xe6bd7dd3, 0xfd474415, p0, p1);
};

global.N_0xe6c5e2125eb210c1 = function (p0, p1, p2) {
	return _in(0xe6c5e212, 0x5eb210c1, p0, p1, p2);
};

global.N_0xe6cb36f43a95d75f = function (p0) {
	return _in(0xe6cb36f4, 0x3a95d75f, p0);
};

global.N_0xe6d4e435b56d5bd0 = function (p0, p1) {
	return _in(0xe6d4e435, 0xb56d5bd0, p0, p1);
};

global.N_0xe6dc9b21ac7a8729 = function (p0, p1, p2, p3) {
	return _in(0xe6dc9b21, 0xac7a8729, p0, p1, p2, p3);
};

global.N_0xe6f364de6c2fdefe = function () {
	return _in(0xe6f364de, 0x6c2fdefe);
};

global.N_0xe7282390542f570d = function (p0) {
	return _in(0xe7282390, 0x542f570d, p0, _r, _ri);
};

global.N_0xe72e234b30da7b7a = function () {
	return _in(0xe72e234b, 0x30da7b7a, _r, _ri);
};

global.N_0xe72e5c1289bd1f40 = function (p0) {
	return _in(0xe72e5c12, 0x89bd1f40, p0, _r, _ri);
};

global.N_0xe72f591958f3acab = function (p0) {
	return _in(0xe72f5919, 0x58f3acab, p0, _r, _ri);
};

global.N_0xe735a7da22e88359 = function (p0) {
	return _in(0xe735a7da, 0x22e88359, p0);
};

global.N_0xe737d5f14304a2ec = function (p0, p1, p2) {
	return _in(0xe737d5f1, 0x4304a2ec, p0, p1, p2);
};

global.N_0xe75cddebf618c8ff = function (p0) {
	return _in(0xe75cddeb, 0xf618c8ff, p0, _r, _ri);
};

global.N_0xe75eea8db59a9f39 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xe75eea8d, 0xb59a9f39, p0, p1, p2, p3, p4, p5);
};

global.N_0xe76687023d8c8505 = function (p0, p1) {
	return _in(0xe7668702, 0x3d8c8505, p0, p1, _r, _ri);
};

global.N_0xe7687eb2f634abf0 = function (p0) {
	return _in(0xe7687eb2, 0xf634abf0, p0, _r, _ri);
};

global.N_0xe777ddf3e78397e8 = function (p0) {
	return _in(0xe777ddf3, 0xe78397e8, p0, _r, _ri);
};

global.N_0xe787f05dfc977bde = function (p0, p1) {
	return _in(0xe787f05d, 0xfc977bde, p0, p1, _r, _ri);
};

global.N_0xe78993ff9022c064 = function (p0) {
	return _in(0xe78993ff, 0x9022c064, p0);
};

global.N_0xe7998fec53a33bbe = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xe7998fec, 0x53a33bbe, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xe79ba3bc265895da = function (p0) {
	return _in(0xe79ba3bc, 0x265895da, p0, _r, _ri);
};

global.N_0xe79c70e77e0973c7 = function (p0, p1, p2, p3) {
	return _in(0xe79c70e7, 0x7e0973c7, p0, p1, p2, p3, _r, _ri);
};

global.N_0xe7bbc4e56b989449 = function (p0, p1, p2) {
	return _in(0xe7bbc4e5, 0x6b989449, p0, p1, p2, _r, _ri);
};

global.N_0xe7dda8bd3bcf751c = function (p0) {
	return _in(0xe7dda8bd, 0x3bcf751c, p0);
};

global.N_0xe7e4c198b0185900 = function (p0, p1, p2) {
	return _in(0xe7e4c198, 0xb0185900, p0, p1, p2);
};

global.N_0xe7e6cb8b713ed190 = function () {
	return _in(0xe7e6cb8b, 0x713ed190);
};

global.N_0xe7f8707269544b29 = function (p0, p1) {
	return _in(0xe7f87072, 0x69544b29, p0, p1, _r, _ri);
};

global.N_0xe7fa07624574b79a = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xe7fa0762, 0x4574b79a, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xe80e50bee276a54a = function (p0, p1) {
	return _in(0xe80e50be, 0xe276a54a, p0, p1, _r, _ri);
};

global.N_0xe8126623008372aa = function () {
	return _in(0xe8126623, 0x008372aa);
};

global.N_0xe824ce7d13fcb300 = function (p0, p1) {
	return _in(0xe824ce7d, 0x13fcb300, p0, p1);
};

global.N_0xe824ce7d13fcb35e = function (p0) {
	return _in(0xe824ce7d, 0x13fcb35e, p0, _r, _ri);
};

global.N_0xe8346e62fd7fb962 = function () {
	return _in(0xe8346e62, 0xfd7fb962);
};

global.N_0xe843d21a8e2498aa = function (p0, p1) {
	return _in(0xe843d21a, 0x8e2498aa, p0, p1, _r, _ri);
};

global.N_0xe84aac1b22a73e99 = function (p0, p1) {
	return _in(0xe84aac1b, 0x22a73e99, p0, p1);
};

global.N_0xe8770ee02aee45c2 = function (p0) {
	return _in(0xe8770ee0, 0x2aee45c2, p0);
};

global.N_0xe887bd31d97793f6 = function (p0) {
	return _in(0xe887bd31, 0xd97793f6, p0, _r, _ri);
};

global.N_0xe891504b2f0e2dba = function (p0, p1) {
	return _in(0xe891504b, 0x2f0e2dba, p0, p1);
};

global.N_0xe8a8378bf651079c = function (p0, p1, p2, p3, p4) {
	return _in(0xe8a8378b, 0xf651079c, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xe8abe3b73fc7fe17 = function (p0, p1, p2, p3) {
	return _in(0xe8abe3b7, 0x3fc7fe17, p0, p1, p2, p3);
};

global.N_0xe8c296b75eacc357 = function (p0, p1) {
	return _in(0xe8c296b7, 0x5eacc357, p0, p1);
};

global.N_0xe8d1ccb9375c101b = function (p0, p1) {
	return _in(0xe8d1ccb9, 0x375c101b, p0, p1, _r, _ri);
};

global.N_0xe8e633215471bb5d = function (p0) {
	return _in(0xe8e63321, 0x5471bb5d, p0, _r, _ri);
};

global.N_0xe8eaff7b41edd291 = function (p0, p1, p2) {
	return _in(0xe8eaff7b, 0x41edd291, p0, p1, p2);
};

global.N_0xe8f1a5b4ced3725a = function (p0, p1, p2, p3, p4) {
	return _in(0xe8f1a5b4, 0xced3725a, p0, p1, p2, p3, p4);
};

global.N_0xe910932f4b30be23 = function (p0) {
	return _in(0xe910932f, 0x4b30be23, p0);
};

global.N_0xe92012611461a42a = function (p0, p1, p2, p3, p4) {
	return _in(0xe9201261, 0x1461a42a, p0, p1, p2, p3, p4);
};

global.N_0xe9225354fb7437a7 = function (p0, p1) {
	return _in(0xe9225354, 0xfb7437a7, p0, p1);
};

global.N_0xe92261bd28c0878f = function (p0) {
	return _in(0xe92261bd, 0x28c0878f, p0, _r, _ri);
};

global.N_0xe931354fea710038 = function (p0) {
	return _in(0xe931354f, 0xea710038, p0);
};

global.N_0xe93415b3307208e5 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xe93415b3, 0x307208e5, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0xe94b5e938619712e = function () {
	return _in(0xe94b5e93, 0x8619712e);
};

global.N_0xe956c2340a76272e = function (p0) {
	return _in(0xe956c234, 0x0a76272e, p0, _r, _ri);
};

global.N_0xe961bf23eab76b12 = function (p0, p1) {
	return _in(0xe961bf23, 0xeab76b12, p0, p1, _r, _ri);
};

global.N_0xe97240065406cb80 = function (p0, p1) {
	return _in(0xe9724006, 0x5406cb80, p0, p1);
};

global.N_0xe979bb5602ad3402 = function (p0, p1) {
	return _in(0xe979bb56, 0x02ad3402, p0, p1, _r, _ri);
};

global.N_0xe98204d3c25ae14c = function (p0) {
	return _in(0xe98204d3, 0xc25ae14c, p0);
};

global.N_0xe98d55c5983f2509 = function (p0) {
	return _in(0xe98d55c5, 0x983f2509, p0, _r, _ri);
};

global.N_0xe9a6400d1a0e7a55 = function (p0) {
	return _in(0xe9a6400d, 0x1a0e7a55, p0, _r, _ri);
};

global.N_0xe9ac8466abe484bb = function (p0, p1) {
	return _in(0xe9ac8466, 0xabe484bb, p0, p1);
};

global.N_0xe9b168527b337bf0 = function (p0, p1) {
	return _in(0xe9b16852, 0x7b337bf0, p0, p1, _r, _ri);
};

global.N_0xe9b3fec825668291 = function (p0, p1, p2) {
	return _in(0xe9b3fec8, 0x25668291, p0, p1, p2);
};

global.N_0xe9bd19f8121ade3e = function (p0, p1) {
	return _in(0xe9bd19f8, 0x121ade3e, p0, p1);
};

global.N_0xe9c59f6809373a99 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xe9c59f68, 0x09373a99, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r, _ri);
};

global.N_0xe9cd9a67834985a7 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xe9cd9a67, 0x834985a7, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.N_0xe9e06ea514a69061 = function (p0, p1) {
	return _in(0xe9e06ea5, 0x14a69061, p0, p1);
};

global.N_0xe9e7a0bac7f57746 = function (p0, p1) {
	return _in(0xe9e7a0ba, 0xc7f57746, p0, p1);
};

global.N_0xe9eb79cbf9c0f58a = function (p0) {
	return _in(0xe9eb79cb, 0xf9c0f58a, p0, _r, _ri);
};

global.N_0xe9f24081d84931b8 = function () {
	return _in(0xe9f24081, 0xd84931b8);
};

global.N_0xe9f676788f8d5e1e = function (p0) {
	return _in(0xe9f67678, 0x8f8d5e1e, p0, _r, _ri);
};

global.N_0xea113bf9b0c0c5d7 = function (p0, p1, p2) {
	return _in(0xea113bf9, 0xb0c0c5d7, p0, p1, p2, _r, _ri);
};

global.N_0xea31f199a73801d3 = function (p0) {
	return _in(0xea31f199, 0xa73801d3, p0, _r, _ri);
};

global.N_0xea323f5e1a4da2f1 = function (p0, p1) {
	return _in(0xea323f5e, 0x1a4da2f1, p0, p1);
};

global.N_0xea41d44a8d42057b = function () {
	return _in(0xea41d44a, 0x8d42057b, _r, _ri);
};

global.N_0xea44e97849e9f3dd = function (p0) {
	return _in(0xea44e978, 0x49e9f3dd, p0, _r, _ri);
};

global.N_0xea522f991e120d45 = function (p0) {
	return _in(0xea522f99, 0x1e120d45, p0, _r, _ri);
};

global.N_0xea546c31fd45f8cd = function (p0) {
	return _in(0xea546c31, 0xfd45f8cd, p0);
};

global.N_0xea6de0cd15aecbe2 = function (p0) {
	return _in(0xea6de0cd, 0x15aecbe2, p0);
};

global.N_0xea8763e505afd49a = function (p0, p1, p2) {
	return _in(0xea8763e5, 0x05afd49a, p0, p1, p2);
};

global.N_0xea8f168a76a0b9bc = function (p0, p1, p2, p3) {
	return _in(0xea8f168a, 0x76a0b9bc, p0, p1, p2, p3, _r, _ri);
};

global.N_0xeaa8242c8479c27d = function (p0, p1) {
	return _in(0xeaa8242c, 0x8479c27d, p0, p1);
};

global.N_0xeaa885ba3cea4e4a = function (p0, p1, p2, p3) {
	return _in(0xeaa885ba, 0x3cea4e4a, p0, p1, p2, p3);
};

global.N_0xeab3d91d30a344f1 = function (p0) {
	return _in(0xeab3d91d, 0x30a344f1, p0);
};

global.N_0xeacebaae0a33fb3f = function (p0) {
	return _in(0xeacebaae, 0x0a33fb3f, p0);
};

global.N_0xeae3b5b019c8d23f = function (p0, p1) {
	return _in(0xeae3b5b0, 0x19c8d23f, p0, p1);
};

global.N_0xeaf529446488eb18 = function (p0) {
	return _in(0xeaf52944, 0x6488eb18, p0);
};

global.N_0xeaf682a14f8e5f53 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xeaf682a1, 0x4f8e5f53, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.N_0xeaf87da2be78a15b = function (p0, p1) {
	return _in(0xeaf87da2, 0xbe78a15b, p0, p1);
};

global.N_0xeb1a4dd8352ec828 = function (p0) {
	return _in(0xeb1a4dd8, 0x352ec828, p0, _r, _ri);
};

global.N_0xeb2ed1dc3aec0654 = function (p0, p1, p2, p3, p4) {
	return _in(0xeb2ed1dc, 0x3aec0654, p0, p1, p2, p3, p4);
};

global.N_0xeb3cb3386c775d72 = function (p0) {
	return _in(0xeb3cb338, 0x6c775d72, p0);
};

global.N_0xeb48ce48eec41fd4 = function (p0) {
	return _in(0xeb48ce48, 0xeec41fd4, p0);
};

global.N_0xeb4d592620b8c209 = function (p0) {
	return _in(0xeb4d5926, 0x20b8c209, p0);
};

global.N_0xeb6027fd1b4600d5 = function (p0, p1, p2) {
	return _in(0xeb6027fd, 0x1b4600d5, p0, p1, p2);
};

global.N_0xeb67d4e056c85a81 = function (p0) {
	return _in(0xeb67d4e0, 0x56c85a81, p0, _r, _ri);
};

global.N_0xeb6f1a9b5510a5d2 = function (p0, p1) {
	return _in(0xeb6f1a9b, 0x5510a5d2, p0, p1);
};

global.N_0xeb8886e1065654cd = function (p0, p1, p2, p3) {
	return _in(0xeb8886e1, 0x065654cd, p0, p1, p2, p3);
};

global.N_0xeb946b9e579729ad = function (p0, p1) {
	return _in(0xeb946b9e, 0x579729ad, p0, p1);
};

global.N_0xeb98b38ca60742d7 = function (p0) {
	return _in(0xeb98b38c, 0xa60742d7, p0, _r, _ri);
};

global.N_0xeba2081e0a5f4d17 = function (p0) {
	return _in(0xeba2081e, 0x0a5f4d17, p0);
};

global.N_0xeba314768fb35d58 = function (p0) {
	return _in(0xeba31476, 0x8fb35d58, p0, _r, _ri);
};

global.N_0xeba51a294c73292e = function (p0) {
	return _in(0xeba51a29, 0x4c73292e, p0);
};

global.N_0xeba87b9273835cf3 = function (p0, p1) {
	return _in(0xeba87b92, 0x73835cf3, p0, p1);
};

global.N_0xebaac9a750e7563b = function (p0) {
	return _in(0xebaac9a7, 0x50e7563b, p0, _r, _ri);
};

global.N_0xebb208d6ae712c03 = function (p0) {
	return _in(0xebb208d6, 0xae712c03, p0, _r, _ri);
};

global.N_0xebb6e27ac2ff32da = function (p0, p1, p2, p3, p4) {
	return _in(0xebb6e27a, 0xc2ff32da, p0, p1, p2, p3, p4);
};

global.N_0xebd49472bccf7642 = function (p0, p1) {
	return _in(0xebd49472, 0xbccf7642, p0, p1);
};

global.N_0xebdc12861d079aba = function (p0, p1) {
	return _in(0xebdc1286, 0x1d079aba, p0, p1);
};

global.N_0xebe46b501bc3fbcf = function (p0, p1, p2) {
	return _in(0xebe46b50, 0x1bc3fbcf, p0, p1, p2);
};

global.N_0xebe89623eb861271 = function (p0, p1) {
	return _in(0xebe89623, 0xeb861271, p0, p1, _r, _ri);
};

global.N_0xebfa8d50addc54c4 = function (p0) {
	return _in(0xebfa8d50, 0xaddc54c4, p0, _r);
};

global.N_0xebff94328ff7a18a = function (p0, p1) {
	return _in(0xebff9432, 0x8ff7a18a, p0, p1);
};

global.N_0xec089f84a9c16c62 = function () {
	return _in(0xec089f84, 0xa9c16c62, _r, _ri);
};

global.N_0xec0bd8736dcaf841 = function (p0) {
	return _in(0xec0bd873, 0x6dcaf841, p0);
};

global.N_0xec116edb683ad479 = function (p0) {
	return _in(0xec116edb, 0x683ad479, p0);
};

global.N_0xec174adbcb611ecc = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xec174adb, 0xcb611ecc, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0xec254c2c9b0f08f1 = function (p0, p1) {
	return _in(0xec254c2c, 0x9b0f08f1, p0, p1, _r, _ri);
};

global.N_0xec3959e9950bf56b = function (p0) {
	return _in(0xec3959e9, 0x950bf56b, p0, _r, _ri);
};

global.N_0xec3d8c228fe553d7 = function (p0) {
	return _in(0xec3d8c22, 0x8fe553d7, p0, _r, _ri);
};

global.N_0xec3f7f24eeeb3ba3 = function () {
	return _in(0xec3f7f24, 0xeeeb3ba3);
};

global.N_0xec43c2ffb70e3f30 = function (p0, p1, p2, p3) {
	return _in(0xec43c2ff, 0xb70e3f30, p0, p1, p2, p3);
};

global.N_0xec516fe805d2cb2d = function (p0) {
	return _in(0xec516fe8, 0x05d2cb2d, p0);
};

global.N_0xec60d1d225bc50aa = function (p0, p1) {
	return _in(0xec60d1d2, 0x25bc50aa, p0, p1);
};

global.N_0xec6935ebe0847b90 = function (p0, p1, p2, p3) {
	return _in(0xec6935eb, 0xe0847b90, p0, p1, p2, p3, _r, _ri);
};

global.N_0xec6b59be445fec51 = function (p0) {
	return _in(0xec6b59be, 0x445fec51, p0, _r, _ri);
};

global.N_0xec7e480ff8bd0bed = function (p0) {
	return _in(0xec7e480f, 0xf8bd0bed, p0, _r, _ri);
};

global.N_0xec819d612038ef4b = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xec819d61, 0x2038ef4b, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.N_0xec8703e4536a9952 = function () {
	return _in(0xec8703e4, 0x536a9952);
};

global.N_0xec97101a8f311282 = function (p0) {
	return _in(0xec97101a, 0x8f311282, p0, _r, _ri);
};

global.N_0xec9a1261bf0ce510 = function (p0) {
	return _in(0xec9a1261, 0xbf0ce510, p0, _r, _ri);
};

global.N_0xecbb26529a737ef6 = function (p0) {
	return _in(0xecbb2652, 0x9a737ef6, p0);
};

global.N_0xecd67e9fa677cccf = function (p0) {
	return _in(0xecd67e9f, 0xa677cccf, p0);
};

global.N_0xece3c34b270428d5 = function () {
	return _in(0xece3c34b, 0x270428d5, _r, _ri);
};

global.N_0xece6a0c1b59cd8be = function (p0) {
	return _in(0xece6a0c1, 0xb59cd8be, p0, _r, _ri);
};

global.N_0xed00d72f81cf7278 = function (p0, p1, p2) {
	return _in(0xed00d72f, 0x81cf7278, p0, p1, p2);
};

global.N_0xed1c764997a86d5a = function (p0, p1) {
	return _in(0xed1c7649, 0x97a86d5a, p0, p1);
};

global.N_0xed1f514af4732258 = function (p0) {
	return _in(0xed1f514a, 0xf4732258, p0, _r, _ri);
};

global.N_0xed22be4c5a399e63 = function (p0, p1, p2, p3) {
	return _in(0xed22be4c, 0x5a399e63, p0, p1, p2, p3);
};

global.N_0xed27560703f37258 = function (p0) {
	return _in(0xed275607, 0x03f37258, p0);
};

global.N_0xed4413cee1bf142c = function (p0) {
	return _in(0xed4413ce, 0xe1bf142c, p0, _r, _ri);
};

global.N_0xed4b0c1057892b2e = function (p0, p1, p2, p3) {
	return _in(0xed4b0c10, 0x57892b2e, p0, p1, p2, p3);
};

global.N_0xed591cb17c8ba216 = function (p0, p1, p2) {
	return _in(0xed591cb1, 0x7c8ba216, p0, p1, p2);
};

global.N_0xed9582b3da8f02b4 = function (p0) {
	return _in(0xed9582b3, 0xda8f02b4, p0);
};

global.N_0xeda5cbecf56e1386 = function (p0) {
	return _in(0xeda5cbec, 0xf56e1386, p0);
};

global.N_0xedd964b7984ac291 = function (p0, p1) {
	return _in(0xedd964b7, 0x984ac291, p0, p1, _r, _ri);
};

global.N_0xedfc6c1fd1c964f5 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xedfc6c1f, 0xd1c964f5, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xee04c0afd4efaf0e = function (p0) {
	return _in(0xee04c0af, 0xd4efaf0e, p0, _r, _ri);
};

global.N_0xee1d6ff54caf7714 = function (p0, p1) {
	return _in(0xee1d6ff5, 0x4caf7714, p0, p1, _r, _ri);
};

global.N_0xee4f20004d0288b7 = function () {
	return _in(0xee4f2000, 0x4d0288b7);
};

global.N_0xee5ae9956743ba20 = function (p0, p1) {
	return _in(0xee5ae995, 0x6743ba20, p0, p1);
};

/**
 * SET_PED_CAN_*
 * @param ped :
 * @param toggle :
 */
global.N_0xee9df765990e8d1d = function (ped, toggle) {
	return _in(0xee9df765, 0x990e8d1d, ped, toggle);
};

global.N_0xeeb7818b1d307212 = function (p0) {
	return _in(0xeeb7818b, 0x1d307212, p0);
};

global.N_0xeed08a3a98b847e2 = function (p0, p1, p2) {
	return _in(0xeed08a3a, 0x98b847e2, p0, p1, p2);
};

global.N_0xeedc9b29314b2733 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xeedc9b29, 0x314b2733, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0xeee4829304f93eee = function (p0, p1) {
	return _in(0xeee48293, 0x04f93eee, p0, p1);
};

global.N_0xeeed8fafec331a70 = function (p0, p1, p2, p3, p4) {
	return _in(0xeeed8faf, 0xec331a70, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xeef83a759ae06a27 = function (p0) {
	return _in(0xeef83a75, 0x9ae06a27, p0, _r, _ri);
};

global.N_0xef1a8a484118735e = function () {
	return _in(0xef1a8a48, 0x4118735e);
};

global.N_0xef254f1a4c08b7e6 = function (p0) {
	return _in(0xef254f1a, 0x4c08b7e6, p0, _r, _ri);
};

global.N_0xef259aa1e097e0ad = function (p0, p1) {
	return _in(0xef259aa1, 0xe097e0ad, p0, p1);
};

global.N_0xef28a614b4b264b8 = function (p0, p1) {
	return _in(0xef28a614, 0xb4b264b8, p0, p1);
};

global.N_0xef2d9ed7ce684f08 = function (p0) {
	return _in(0xef2d9ed7, 0xce684f08, p0, _r, _ri);
};

global.N_0xef2e6f870783369b = function (p0, p1) {
	return _in(0xef2e6f87, 0x0783369b, p0, p1, _r, _ri);
};

global.N_0xef324e9550a394d5 = function (p0) {
	return _in(0xef324e95, 0x50a394d5, p0, _r, _ri);
};

global.N_0xef371232bc6053e1 = function (p0) {
	return _in(0xef371232, 0xbc6053e1, p0);
};

global.N_0xef3a8772f085b4aa = function (p0) {
	return _in(0xef3a8772, 0xf085b4aa, p0, _r, _ri);
};

global.N_0xef3c68f56bad7b69 = function (p0, p1) {
	return _in(0xef3c68f5, 0x6bad7b69, p0, p1);
};

global.N_0xef42f56f69877125 = function () {
	return _in(0xef42f56f, 0x69877125);
};

global.N_0xef50e344a8f93784 = function (p0, p1, p2, p3) {
	return _in(0xef50e344, 0xa8f93784, p0, p1, p2, p3, _r, _ri);
};

global.N_0xef51242e35242b47 = function (p0) {
	return _in(0xef51242e, 0x35242b47, p0);
};

global.N_0xef5a3d2285d8924b = function (p0, p1) {
	return _in(0xef5a3d22, 0x85d8924b, p0, p1);
};

global.N_0xef6f2a35faaf2ed7 = function (p0) {
	return _in(0xef6f2a35, 0xfaaf2ed7, p0, _r, _ri);
};

global.N_0xef7ab1a0e8c86170 = function (p0, p1) {
	return _in(0xef7ab1a0, 0xe8c86170, p0, p1);
};

global.N_0xef9a3132a0aa6b19 = function () {
	return _in(0xef9a3132, 0xa0aa6b19, _r, _ri);
};

global.N_0xefb5f34cc0953b27 = function (p0) {
	return _in(0xefb5f34c, 0xc0953b27, p0);
};

global.N_0xefc4303ddc6e60d3 = function (p0) {
	return _in(0xefc4303d, 0xdc6e60d3, p0, _r, _ri);
};

global.N_0xefc535c9faf563b3 = function (p0) {
	return _in(0xefc535c9, 0xfaf563b3, p0, _r, _ri);
};

global.N_0xefc5c6670e0b99ba = function () {
	return _in(0xefc5c667, 0x0e0b99ba);
};

global.N_0xefd875c2791ebefd = function (p0, p1, p2, p3) {
	return _in(0xefd875c2, 0x791ebefd, p0, p1, p2, p3, _r, _ri);
};

global.N_0xf008e0ba1fe1d644 = function (p0) {
	return _in(0xf008e0ba, 0x1fe1d644, p0);
};

global.N_0xf01c570e0a0a1e67 = function (p0) {
	return _in(0xf01c570e, 0x0a0a1e67, p0, _r, _ri);
};

global.N_0xf01d21df39554115 = function (p0) {
	return _in(0xf01d21df, 0x39554115, p0);
};

global.N_0xf02a9c330bbfc5c7 = function (p0) {
	return _in(0xf02a9c33, 0x0bbfc5c7, p0);
};

global.N_0xf0460c7bf80011ea = function (p0) {
	return _in(0xf0460c7b, 0xf80011ea, p0, _r, _ri);
};

global.N_0xf05dfaf1adfef2cd = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf05dfaf1, 0xadfef2cd, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xf06c5b66de20b2b8 = function (p0) {
	return _in(0xf06c5b66, 0xde20b2b8, _fv(p0));
};

global.N_0xf06cbb8ccca823c0 = function (p0, p1) {
	return _in(0xf06cbb8c, 0xcca823c0, p0, p1);
};

global.N_0xf08d8feb455f2c8c = function (p0, p1) {
	return _in(0xf08d8feb, 0x455f2c8c, p0, p1);
};

global.N_0xf08e42bfa46bdff8 = function (p0, p1) {
	return _in(0xf08e42bf, 0xa46bdff8, p0, p1, _r, _ri);
};

global.N_0xf092b6030d6fd49c = function (p0, p1) {
	return _in(0xf092b603, 0x0d6fd49c, p0, p1);
};

global.N_0xf0b4f759f35cc7f5 = function (p0, p1, p2, p3, p4) {
	return _in(0xf0b4f759, 0xf35cc7f5, p0, p1, p2, p3, p4);
};

global.N_0xf0b67bad53c35bd9 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xf0b67bad, 0x53c35bd9, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xf0c0c94b404206fa = function () {
	return _in(0xf0c0c94b, 0x404206fa, _r, _ri);
};

global.N_0xf0d545c1eead614a = function () {
	return _in(0xf0d545c1, 0xeead614a, _r, _ri);
};

global.N_0xf0d54e0651dd7e07 = function () {
	return _in(0xf0d54e06, 0x51dd7e07);
};

global.N_0xf0d728eea3c99775 = function (p0, p1, p2) {
	return _in(0xf0d728ee, 0xa3c99775, p0, p1, p2);
};

global.N_0xf0ee69f500952fa5 = function (p0) {
	return _in(0xf0ee69f5, 0x00952fa5, p0, _r, _ri);
};

global.N_0xf0fbf193f1f5c0ea = function (p0) {
	return _in(0xf0fbf193, 0xf1f5c0ea, p0);
};

global.N_0xf0fbfb9ab15f7734 = function (p0, p1, p2) {
	return _in(0xf0fbfb9a, 0xb15f7734, p0, p1, p2, _r, _ri);
};

global.N_0xf0fe8e790bfeb5bb = function (p0, p1) {
	return _in(0xf0fe8e79, 0x0bfeb5bb, p0, p1);
};

global.N_0xf103823ffe72bb49 = function (p0) {
	return _in(0xf103823f, 0xfe72bb49, p0, _r, _ri);
};

global.N_0xf1142e5d64b47802 = function (p0, p1) {
	return _in(0xf1142e5d, 0x64b47802, p0, p1);
};

global.N_0xf11d7cb962fcd747 = function (p0) {
	return _in(0xf11d7cb9, 0x62fcd747, p0);
};

global.N_0xf14bcef290f869e1 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf14bcef2, 0x90f869e1, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xf1622ce88a1946fb = function () {
	return _in(0xf1622ce8, 0x8a1946fb);
};

global.N_0xf184b3ece36219cf = function (p0, p1) {
	return _in(0xf184b3ec, 0xe36219cf, p0, p1, _r, _ri);
};

global.N_0xf18af483df70bbde = function (p0) {
	return _in(0xf18af483, 0xdf70bbde, p0, _r, _ri);
};

global.N_0xf19706b1f8ffa88f = function (p0, p1) {
	return _in(0xf19706b1, 0xf8ffa88f, p0, p1);
};

global.N_0xf1a6feedf3776ef9 = function () {
	return _in(0xf1a6feed, 0xf3776ef9);
};

global.N_0xf1ad3dd218e6558a = function (p0, p1) {
	return _in(0xf1ad3dd2, 0x18e6558a, p0, p1, _r, _ri);
};

global.N_0xf1b84178f8674195 = function (p0) {
	return _in(0xf1b84178, 0xf8674195, p0);
};

global.N_0xf1c03a5352243a30 = function (p0) {
	return _in(0xf1c03a53, 0x52243a30, p0);
};

global.N_0xf1c5310feaa36b48 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf1c5310f, 0xeaa36b48, p0, p1, p2, p3, p4, p5);
};

global.N_0xf1e6979c0b779985 = function (p0) {
	return _in(0xf1e6979c, 0x0b779985, p0);
};

global.N_0xf1ea2a881eb7f2cd = function (p0, p1) {
	return _in(0xf1ea2a88, 0x1eb7f2cd, p0, p1);
};

global.N_0xf20b18a330e6db5c = function (p0) {
	return _in(0xf20b18a3, 0x30e6db5c, p0, _r, _ri);
};

global.N_0xf216f74101968db0 = function (p0) {
	return _in(0xf216f741, 0x01968db0, p0, _r, _ri);
};

global.N_0xf21a5d66874fcedd = function (p0, p1, p2) {
	return _in(0xf21a5d66, 0x874fcedd, p0, p1, p2);
};

global.N_0xf21c7a3f3ffba629 = function (p0) {
	return _in(0xf21c7a3f, 0x3ffba629, p0);
};

global.N_0xf232c2c546ac16d0 = function (p0) {
	return _in(0xf232c2c5, 0x46ac16d0, p0);
};

global.N_0xf236c84c6adfcb2f = function () {
	return _in(0xf236c84c, 0x6adfcb2f, _r, _ri);
};

global.N_0xf239400e16c23e08 = function (p0, p1) {
	return _in(0xf239400e, 0x16c23e08, p0, p1);
};

global.N_0xf23a6d6c11d8ec15 = function (p0) {
	return _in(0xf23a6d6c, 0x11d8ec15, p0, _r, _ri);
};

global.N_0xf23d6475640d29eb = function (p0) {
	return _in(0xf23d6475, 0x640d29eb, p0, _r, _ri);
};

global.N_0xf252a85b8f3f8c58 = function (p0, p1) {
	return _in(0xf252a85b, 0x8f3f8c58, p0, p1, _r, _ri);
};

global.N_0xf256a75210c5c0eb = function (p0, p1, p2, p3) {
	return _in(0xf256a752, 0x10c5c0eb, p0, p1, p2, p3, _r, _ri);
};

global.N_0xf260af6f43953316 = function (p0) {
	return _in(0xf260af6f, 0x43953316, p0, _r, _ri);
};

global.N_0xf2753d691bcda314 = function (p0, p1, p2) {
	return _in(0xf2753d69, 0x1bcda314, p0, p1, p2, _r, _ri);
};

global.N_0xf27f1a8de4f50a1b = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xf27f1a8d, 0xe4f50a1b, p0, p1, p2, p3, p4, p5, p6);
};

global.N_0xf29a186ed428b552 = function (p0, p1) {
	return _in(0xf29a186e, 0xd428b552, p0, p1, _r, _ri);
};

global.N_0xf2a2177ac848b3a8 = function (p0, p1, p2) {
	return _in(0xf2a2177a, 0xc848b3a8, p0, p1, p2);
};

global.N_0xf2cbc969c4f090c7 = function () {
	return _in(0xf2cbc969, 0xc4f090c7, _r, _ri);
};

global.N_0xf2cca7b68cfab2b9 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) {
	return _in(0xf2cca7b6, 0x8cfab2b9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
};

global.N_0xf2ea041f1146d75b = function (p0, p1, p2, p3, p4) {
	return _in(0xf2ea041f, 0x1146d75b, p0, p1, p2, p3, p4);
};

global.N_0xf2f543d48f319a3a = function () {
	return _in(0xf2f543d4, 0x8f319a3a);
};

global.N_0xf2f585411e748b9c = function (p0, p1) {
	return _in(0xf2f58541, 0x1e748b9c, p0, p1, _r, _ri);
};

global.N_0xf2fddcc8c6bae1b3 = function (p0) {
	return _in(0xf2fddcc8, 0xc6bae1b3, p0, _r, _ri);
};

global.N_0xf302ab9d978352ee = function () {
	return _in(0xf302ab9d, 0x978352ee, _r, _ri);
};

global.N_0xf330a5c062b29bed = function (p0) {
	return _in(0xf330a5c0, 0x62b29bed, p0, _r, _ri);
};

global.N_0xf3354d6ca46f419d = function (p0, p1) {
	return _in(0xf3354d6c, 0xa46f419d, p0, p1);
};

global.N_0xf336e9f989b3518f = function (p0) {
	return _in(0xf336e9f9, 0x89b3518f, p0, _r, _ri);
};

global.N_0xf342f6bd0a8287d5 = function (p0) {
	return _in(0xf342f6bd, 0x0a8287d5, p0);
};

global.N_0xf3735acd11acd500 = function (p0, p1) {
	return _in(0xf3735acd, 0x11acd500, p0, p1, _r, _ri);
};

global.N_0xf3735acd11acd501 = function (p0, p1) {
	return _in(0xf3735acd, 0x11acd501, p0, p1, _r, _ri);
};

global.N_0xf37a2149bc9a8a27 = function (p0, p1, p2, p3, p4) {
	return _in(0xf37a2149, 0xbc9a8a27, p0, p1, p2, p3, p4);
};

global.N_0xf382c92ccc1ccdbc = function (p0, p1, p2) {
	return _in(0xf382c92c, 0xcc1ccdbc, p0, p1, p2, _r, _ri);
};

global.N_0xf383e96c4904df0c = function (p0, p1, p2, p3) {
	return _in(0xf383e96c, 0x4904df0c, p0, p1, p2, p3, _r, _ri);
};

global.N_0xf3a2fba5985c8cd5 = function (p0, p1, p2, p3) {
	return _in(0xf3a2fba5, 0x985c8cd5, p0, p1, p2, p3);
};

global.N_0xf3c873ed0c595109 = function (p0) {
	return _in(0xf3c873ed, 0x0c595109, p0, _r, _ri);
};

global.N_0xf3de57a46d5585e9 = function (p0) {
	return _in(0xf3de57a4, 0x6d5585e9, p0, _r, _ri);
};

global.N_0xf3e039322bfbd4d8 = function (p0) {
	return _in(0xf3e03932, 0x2bfbd4d8, p0);
};

global.N_0xf3fda9a617a15145 = function (p0, p1, p2) {
	return _in(0xf3fda9a6, 0x17a15145, p0, p1, p2);
};

global.N_0xf40a109b4b79a848 = function (p0, p1, p2) {
	return _in(0xf40a109b, 0x4b79a848, p0, p1, p2);
};

global.N_0xf40ab58d83c35027 = function (p0) {
	return _in(0xf40ab58d, 0x83c35027, p0);
};

global.N_0xf40ef49b3099e98e = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf40ef49b, 0x3099e98e, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xf41e2979d5bc5370 = function (p0) {
	return _in(0xf41e2979, 0xd5bc5370, p0);
};

global.N_0xf42db680a8b2a4d9 = function (p0) {
	return _in(0xf42db680, 0xa8b2a4d9, p0, _r, _ri);
};

global.N_0xf4452ce83118c738 = function (p0, p1) {
	return _in(0xf4452ce8, 0x3118c738, p0, p1, _r, _ri);
};

global.N_0xf445de8da80a1792 = function () {
	return _in(0xf445de8d, 0xa80a1792, _r, _ri);
};

global.N_0xf45e46deecf7df6e = function (p0, p1, p2, p3, p4) {
	return _in(0xf45e46de, 0xecf7df6e, p0, p1, p2, p3, p4);
};

global.N_0xf4601c1203b1a78d = function (p0, p1) {
	return _in(0xf4601c12, 0x03b1a78d, p0, p1, _r, _ri);
};

global.N_0xf46108c50a22b029 = function () {
	return _in(0xf46108c5, 0x0a22b029, _r, _ri);
};

global.N_0xf47a1eb2a538a3a3 = function () {
	return _in(0xf47a1eb2, 0xa538a3a3, _r, _ri);
};

global.N_0xf47e33f8d2523825 = function (p0, p1) {
	return _in(0xf47e33f8, 0xd2523825, p0, p1, _r, _ri);
};

global.N_0xf4823c813cb8277d = function (p0, p1, p2, p3) {
	return _in(0xf4823c81, 0x3cb8277d, p0, p1, p2, p3);
};

global.N_0xf4860514ad354226 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf4860514, 0xad354226, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xf48664e9c83825e3 = function (p0, p1) {
	return _in(0xf48664e9, 0xc83825e3, p0, p1);
};

global.N_0xf489f94bfee12bb0 = function (p0, p1) {
	return _in(0xf489f94b, 0xfee12bb0, p0, p1);
};

global.N_0xf49574e2332a8f06 = function (p0, p1) {
	return _in(0xf49574e2, 0x332a8f06, p0, p1);
};

global.N_0xf49f14462f0ae27c = function (p0) {
	return _in(0xf49f1446, 0x2f0ae27c, p0, _r, _ri);
};

global.N_0xf4a5c4509bf923b1 = function (p0, p1) {
	return _in(0xf4a5c450, 0x9bf923b1, p0, p1);
};

global.N_0xf4ac4fa844fd559a = function (p0) {
	return _in(0xf4ac4fa8, 0x44fd559a, p0, _r, _ri);
};

global.N_0xf4cb347d7b5eb0fd = function () {
	return _in(0xf4cb347d, 0x7b5eb0fd, _r, _ri);
};

global.N_0xf52bd94b47ccf736 = function (p0, p1, p2, p3) {
	return _in(0xf52bd94b, 0x47ccf736, p0, p1, p2, p3);
};

global.N_0xf533d68ff970d190 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xf533d68f, 0xf970d190, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xf5622fa6acfca7db = function (p0, p1) {
	return _in(0xf5622fa6, 0xacfca7db, p0, p1);
};

global.N_0xf569e33fb72ed28e = function () {
	return _in(0xf569e33f, 0xb72ed28e);
};

global.N_0xf5793bb386e1ff9c = function (p0) {
	return _in(0xf5793bb3, 0x86e1ff9c, p0);
};

global.N_0xf57db8e83dcd8349 = function (p0) {
	return _in(0xf57db8e8, 0x3dcd8349, p0, _r, _ri);
};

global.N_0xf59fde7b4d31a630 = function (p0) {
	return _in(0xf59fde7b, 0x4d31a630, p0, _r, _ri);
};

global.N_0xf5e45cb1cf965d2d = function (p0, p1, p2) {
	return _in(0xf5e45cb1, 0xcf965d2d, p0, p1, p2);
};

global.N_0xf5ea41c1408695fb = function (p0, p1, p2, p3) {
	return _in(0xf5ea41c1, 0x408695fb, p0, p1, p2, p3, _r, _ri);
};

global.N_0xf5ead898ef387e73 = function (p0) {
	return _in(0xf5ead898, 0xef387e73, p0);
};

global.N_0xf5ffb08976911b50 = function (p0, p1, p2, p3) {
	return _in(0xf5ffb089, 0x76911b50, p0, p1, p2, p3);
};

global.N_0xf60165e1d2c5370b = function (ped) {
	return _in(0xf60165e1, 0xd2c5370b, ped, _i, _i, _r);
};

global.N_0xf60386770878a98f = function (p0, p1, p2, p3, p4) {
	return _in(0xf6038677, 0x0878a98f, p0, p1, p2, p3, p4);
};

global.N_0xf611de44aeb36a1d = function (p0, p1) {
	return _in(0xf611de44, 0xaeb36a1d, p0, p1);
};

global.N_0xf61cfedeab627bfa = function (p0) {
	return _in(0xf61cfede, 0xab627bfa, p0, _r, _ri);
};

global.N_0xf620f47b4f4a78c4 = function (p0, p1) {
	return _in(0xf620f47b, 0x4f4a78c4, p0, p1);
};

global.N_0xf6262491c7704a63 = function (p0, p1) {
	return _in(0xf6262491, 0xc7704a63, p0, p1);
};

global.N_0xf634e2892220ef34 = function (p0, p1) {
	return _in(0xf634e289, 0x2220ef34, p0, p1);
};

global.N_0xf63fa29d4a9aca86 = function (p0, p1) {
	return _in(0xf63fa29d, 0x4a9aca86, p0, p1);
};

global.N_0xf64034d533ce8aac = function (p0, p1, p2) {
	return _in(0xf64034d5, 0x33ce8aac, p0, p1, p2);
};

global.N_0xf65ede5d02a7a760 = function (p0, p1) {
	return _in(0xf65ede5d, 0x02a7a760, p0, p1);
};

global.N_0xf66090013de648d5 = function (p0) {
	return _in(0xf6609001, 0x3de648d5, p0, _r, _ri);
};

global.N_0xf666ef30f4f0ac4e = function (p0) {
	return _in(0xf666ef30, 0xf4f0ac4e, p0);
};

global.N_0xf6a7c08df2e28b28 = function (p0, p1, p2, p3) {
	return _in(0xf6a7c08d, 0xf2e28b28, p0, p1, p2, p3);
};

global.N_0xf6a8a652a6b186cd = function (p0) {
	return _in(0xf6a8a652, 0xa6b186cd, p0, _r, _ri);
};

global.N_0xf6a8c4b4a11ae89c = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xf6a8c4b4, 0xa11ae89c, p0, p1, p2, p3, p4, p5, _r, _ri);
};

global.N_0xf6b82fce03b43a37 = function (p0, p1) {
	return _in(0xf6b82fce, 0x03b43a37, p0, p1);
};

global.N_0xf6bee7e80ec5ca40 = function (p0) {
	return _in(0xf6bee7e8, 0x0ec5ca40, p0);
};

global.N_0xf6ce6f9c3897804e = function (p0) {
	return _in(0xf6ce6f9c, 0x3897804e, p0, _r, _ri);
};

global.N_0xf6d9e1f3560cbf8e = function (p0, p1, p2, p3, p4) {
	return _in(0xf6d9e1f3, 0x560cbf8e, p0, p1, p2, p3, p4, _r, _ri);
};

global.N_0xf6de98516fd3ac9b = function () {
	return _in(0xf6de9851, 0x6fd3ac9b);
};

global.N_0xf6e3d38869d0f7ad = function (p0) {
	return _in(0xf6e3d388, 0x69d0f7ad, p0);
};

global.N_0xf6e88489b4e6ebe5 = function (p0, p1) {
	return _in(0xf6e88489, 0xb4e6ebe5, p0, p1);
};

global.N_0xf6f5447d418daa82 = function (p0) {
	return _in(0xf6f5447d, 0x418daa82, p0, _r, _ri);
};

global.N_0xf708298675abdc6a = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xf7082986, 0x75abdc6a, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.N_0xf70f00013a62f866 = function (p0) {
	return _in(0xf70f0001, 0x3a62f866, p0, _r, _rv);
};

global.N_0xf718931a82eeb898 = function () {
	return _in(0xf718931a, 0x82eeb898);
};

global.N_0xf7327acc7a89aef1 = function (p0, p1, p2) {
	return _in(0xf7327acc, 0x7a89aef1, p0, p1, p2, _r, _ri);
};

global.N_0xf7424890e4a094c0 = function (p0, p1) {
	return _in(0xf7424890, 0xe4a094c0, p0, p1, _r, _ri);
};

global.N_0xf74e134f40192884 = function (p0, p1) {
	return _in(0xf74e134f, 0x40192884, p0, p1);
};

global.N_0xf78e669fdc202e73 = function () {
	return _in(0xf78e669f, 0xdc202e73);
};

global.N_0xf794765390a6dca5 = function (p0, p1) {
	return _in(0xf7947653, 0x90a6dca5, p0, p1, _r, _ri);
};

global.N_0xf7c180f57f85d0b8 = function (p0) {
	return _in(0xf7c180f5, 0x7f85d0b8, p0, _r, _ri);
};

global.N_0xf7ea250b9a919e03 = function (p0, p1) {
	return _in(0xf7ea250b, 0x9a919e03, p0, p1);
};

global.N_0xf7f51a57349739f2 = function () {
	return _in(0xf7f51a57, 0x349739f2, _r, _ri);
};

global.N_0xf8096df9b87246e3 = function (p0) {
	return _in(0xf8096df9, 0xb87246e3, p0);
};

global.N_0xf8181b5ef156862c = function (p0) {
	return _in(0xf8181b5e, 0xf156862c, p0);
};

global.N_0xf81c53561d15f330 = function () {
	return _in(0xf81c5356, 0x1d15f330, _r, _ri);
};

global.N_0xf8204ef17410bf43 = function (p0, p1, p2, p3) {
	return _in(0xf8204ef1, 0x7410bf43, p0, p1, p2, p3, _r, _ri);
};

global.N_0xf824530b612fe0ce = function () {
	return _in(0xf824530b, 0x612fe0ce, _r, _ri);
};

global.N_0xf83d3dda4d3c8169 = function (p0) {
	return _in(0xf83d3dda, 0x4d3c8169, p0, _r, _ri);
};

global.N_0xf8806ec3ff840fdc = function () {
	return _in(0xf8806ec3, 0xff840fdc, _r, _ri);
};

global.N_0xf8938cf3984092a5 = function (p0) {
	return _in(0xf8938cf3, 0x984092a5, p0);
};

global.N_0xf89d82a0582e46ed = function (p0, p1) {
	return _in(0xf89d82a0, 0x582e46ed, p0, p1);
};

global.N_0xf8b48a361dc388ae = function (p0) {
	return _in(0xf8b48a36, 0x1dc388ae, p0, _r, _ri);
};

global.N_0xf8bcc5eca33ac9c1 = function () {
	return _in(0xf8bcc5ec, 0xa33ac9c1, _r, _ri);
};

global.N_0xf8c20282b237e3f7 = function (p0) {
	return _in(0xf8c20282, 0xb237e3f7, p0);
};

global.N_0xf8ca39d5c0d1d9a1 = function (p0, p1) {
	return _in(0xf8ca39d5, 0xc0d1d9a1, p0, p1);
};

global.N_0xf8d09ef8ce61d7bf = function (p0, p1) {
	return _in(0xf8d09ef8, 0xce61d7bf, p0, p1, _r, _ri);
};

global.N_0xf8d1d2dab6007eef = function (p0, p1) {
	return _in(0xf8d1d2da, 0xb6007eef, p0, p1, _r, _ri);
};

global.N_0xf8de7154f7d1458f = function (p0) {
	return _in(0xf8de7154, 0xf7d1458f, p0, _r, _ri);
};

global.N_0xf8f0705e77a0e705 = function (p0) {
	return _in(0xf8f0705e, 0x77a0e705, p0, _r, _ri);
};

global.N_0xf8f7da13cfbd4532 = function (p0, p1) {
	return _in(0xf8f7da13, 0xcfbd4532, p0, p1);
};

global.N_0xf917f92bf22ecbab = function (p0) {
	return _in(0xf917f92b, 0xf22ecbab, p0);
};

global.N_0xf92099527db8e2a7 = function (p0, p1) {
	return _in(0xf9209952, 0x7db8e2a7, p0, p1);
};

global.N_0xf92fa8890dececf6 = function (p0, p1) {
	return _in(0xf92fa889, 0x0dececf6, p0, p1);
};

global.N_0xf9331b3a314eb49d = function (p0) {
	return _in(0xf9331b3a, 0x314eb49d, p0, _r, _ri);
};

global.N_0xf94692eb9dc15d74 = function (p0, p1) {
	return _in(0xf94692eb, 0x9dc15d74, p0, p1, _r, _ri);
};

global.N_0xf948f4356f010f11 = function (p0, p1, p2) {
	return _in(0xf948f435, 0x6f010f11, p0, p1, p2);
};

global.N_0xf94a0d5b254375df = function (p0) {
	return _in(0xf94a0d5b, 0x254375df, p0);
};

global.N_0xf972f0ab16dc5260 = function (p0, p1, p2) {
	return _in(0xf972f0ab, 0x16dc5260, p0, p1, p2);
};

global.N_0xf97c34c33487d569 = function (p0, p1) {
	return _in(0xf97c34c3, 0x3487d569, p0, p1, _r, _ri);
};

global.N_0xf97f462779b31786 = function (p0) {
	return _in(0xf97f4627, 0x79b31786, p0, _r, _ri);
};

global.N_0xf98dde0a8ed09323 = function (p0) {
	return _in(0xf98dde0a, 0x8ed09323, p0);
};

global.N_0xf9933164965533b7 = function (p0, p1) {
	return _in(0xf9933164, 0x965533b7, p0, p1, _r, _ri);
};

global.N_0xf993373285053d77 = function (p0, p1, p2) {
	return _in(0xf9933732, 0x85053d77, p0, p1, p2);
};

global.N_0xf9acf4a08098ea25 = function (ped, p1) {
	return _in(0xf9acf4a0, 0x8098ea25, ped, p1);
};

global.N_0xf9b83b77929d8863 = function () {
	return _in(0xf9b83b77, 0x929d8863, _r, _ri);
};

global.N_0xf9b91c5129eabc08 = function (p0, p1) {
	return _in(0xf9b91c51, 0x29eabc08, p0, p1, _r, _ri);
};

global.N_0xf9c1681347c8bd15 = function (object) {
	return _in(0xf9c16813, 0x47c8bd15, object);
};

global.N_0xf9cbd46433e36713 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xf9cbd464, 0x33e36713, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0xf9cff5bb70e8a2cb = function (p0, p1) {
	return _in(0xf9cff5bb, 0x70e8a2cb, p0, p1);
};

global.N_0xf9e7dbb39080640b = function () {
	return _in(0xf9e7dbb3, 0x9080640b, _r, _ri);
};

global.N_0xf9e951a1e5517c06 = function () {
	return _in(0xf9e951a1, 0xe5517c06);
};

global.N_0xf9f0b3028431967b = function (p0, p1) {
	return _in(0xf9f0b302, 0x8431967b, p0, p1, _r, _ri);
};

global.N_0xf9f14080d80937bd = function (p0) {
	return _in(0xf9f14080, 0xd80937bd, p0);
};

global.N_0xfa0d206b489a6846 = function (p0, p1, p2, p3, p4) {
	return _in(0xfa0d206b, 0x489a6846, p0, p1, p2, p3, p4);
};

global.N_0xfa15c9a320e707b0 = function () {
	return _in(0xfa15c9a3, 0x20e707b0);
};

global.N_0xfa1d5e8d1c3ccd67 = function (p0, p1) {
	return _in(0xfa1d5e8d, 0x1c3ccd67, p0, p1);
};

global.N_0xfa2ecc78a6014d4f = function (p0, p1, p2, p3) {
	return _in(0xfa2ecc78, 0xa6014d4f, p0, p1, p2, p3);
};

global.N_0xfa30e2254461adeb = function (p0, p1) {
	return _in(0xfa30e225, 0x4461adeb, p0, p1);
};

global.N_0xfa38b52f91b59075 = function () {
	return _in(0xfa38b52f, 0x91b59075, _r, _ri);
};

global.N_0xfa3b61ec249b4674 = function (p0) {
	return _in(0xfa3b61ec, 0x249b4674, p0, _r, _ri);
};

global.N_0xfa437fa0738c370c = function (p0, p1, p2, p3, p4) {
	return _in(0xfa437fa0, 0x738c370c, p0, p1, p2, p3, p4);
};

global.N_0xfa50f79257745e74 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xfa50f792, 0x57745e74, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xfa742b82d093d848 = function (p0, p1, p2) {
	return _in(0xfa742b82, 0xd093d848, p0, p1, p2);
};

global.N_0xfa7c5b7e087a4ceb = function () {
	return _in(0xfa7c5b7e, 0x087a4ceb, _r, _ri);
};

global.N_0xfa7daae3959e6c7b = function (p0, p1) {
	return _in(0xfa7daae3, 0x959e6c7b, p0, p1);
};

global.N_0xfa821997794f48e7 = function (p0, p1, p2) {
	return _in(0xfa821997, 0x794f48e7, p0, p1, p2);
};

global.N_0xfa8c10dce0706d43 = function (p0) {
	return _in(0xfa8c10dc, 0xe0706d43, p0, _r, _ri);
};

global.N_0xfa91736933ab3d93 = function (p0) {
	return _in(0xfa917369, 0x33ab3d93, p0);
};

global.N_0xfaad23de7a54fc14 = function () {
	return _in(0xfaad23de, 0x7a54fc14);
};

global.N_0xfaed234c7f53abeb = function () {
	return _in(0xfaed234c, 0x7f53abeb, _r, _ri);
};

global.N_0xfb0e622b401884d3 = function (p0) {
	return _in(0xfb0e622b, 0x401884d3, p0);
};

global.N_0xfb16f08f47b83b4c = function (p0) {
	return _in(0xfb16f08f, 0x47b83b4c, p0);
};

global.N_0xfb1e7998b8595825 = function (p0, p1) {
	return _in(0xfb1e7998, 0xb8595825, p0, p1, _r, _ri);
};

global.N_0xfb4891bd7578cdc1 = function (p0, p1) {
	return _in(0xfb4891bd, 0x7578cdc1, p0, p1, _r, _ri);
};

global.N_0xfb5674687a1b2814 = function (p0, p1, p2) {
	return _in(0xfb567468, 0x7a1b2814, p0, p1, p2, _r, _ri);
};

global.N_0xfb680a9b33d0edbe = function (p0) {
	return _in(0xfb680a9b, 0x33d0edbe, p0);
};

global.N_0xfb6e111908502871 = function (p0) {
	return _in(0xfb6e1119, 0x08502871, p0);
};

global.N_0xfb6eb8785f808551 = function (player, p1, p2) {
	return _in(0xfb6eb878, 0x5f808551, player, p1, p2, _r);
};

global.N_0xfb7cf1de938a3e22 = function (p0) {
	return _in(0xfb7cf1de, 0x938a3e22, p0, _r, _ri);
};

global.N_0xfb9153a54ac713e8 = function (p0, p1) {
	return _in(0xfb9153a5, 0x4ac713e8, p0, p1);
};

global.N_0xfb9eced5b68f3b78 = function (p0) {
	return _in(0xfb9eced5, 0xb68f3b78, p0, _r, _ri);
};

global.N_0xfbc30b70b3cdb87e = function () {
	return _in(0xfbc30b70, 0xb3cdb87e, _r, _ri);
};

global.N_0xfbd137bf0ec50fc9 = function (p0, p1) {
	return _in(0xfbd137bf, 0x0ec50fc9, p0, p1, _r, _ri);
};

global.N_0xfbdfe1c1356e12e8 = function (p0, p1) {
	return _in(0xfbdfe1c1, 0x356e12e8, p0, p1, _r, _ri);
};

global.N_0xfbe782b3165ac8ec = function (p0) {
	return _in(0xfbe782b3, 0x165ac8ec, p0, _r, _ri);
};

global.N_0xfbf161fcfec8589e = function (p0, p1, p2, p3) {
	return _in(0xfbf161fc, 0xfec8589e, p0, p1, p2, p3, _r, _ri);
};

global.N_0xfc23348f0f4e245f = function (p0, p1, p2, p3) {
	return _in(0xfc23348f, 0x0f4e245f, p0, p1, p2, p3);
};

global.N_0xfc3b580c4380b5b7 = function (p0) {
	return _in(0xfc3b580c, 0x4380b5b7, p0, _r, _ri);
};

global.N_0xfc3bab1801a8255a = function (p0, p1) {
	return _in(0xfc3bab18, 0x01a8255a, p0, p1);
};

global.N_0xfc3db99c8144cd81 = function (p0, p1, p2, p3, p4) {
	return _in(0xfc3db99c, 0x8144cd81, p0, p1, p2, p3, p4);
};

global.N_0xfc3f638be2b6bb02 = function () {
	return _in(0xfc3f638b, 0xe2b6bb02);
};

global.N_0xfc4165c9165c166f = function () {
	return _in(0xfc4165c9, 0x165c166f, _r, _ri);
};

global.N_0xfc464598f6ee97b0 = function () {
	return _in(0xfc464598, 0xf6ee97b0, _r, _ri);
};

global.N_0xfc4f15a7dddc47b1 = function (p0, p1) {
	return _in(0xfc4f15a7, 0xdddc47b1, p0, p1);
};

global.N_0xfc6ecb9170145ece = function () {
	return _in(0xfc6ecb91, 0x70145ece);
};

global.N_0xfc6fcf4c03f1bbf6 = function () {
	return _in(0xfc6fcf4c, 0x03f1bbf6);
};

global.N_0xfc7563f482781a3d = function () {
	return _in(0xfc7563f4, 0x82781a3d, _r, _ri);
};

global.N_0xfc77c5b44d5ff7c0 = function (p0) {
	return _in(0xfc77c5b4, 0x4d5ff7c0, p0);
};

global.N_0xfc79dcc94d0a5897 = function (p0, p1, p2) {
	return _in(0xfc79dcc9, 0x4d0a5897, p0, p1, p2);
};

global.N_0xfc7f71cf49f70b6b = function (p0) {
	return _in(0xfc7f71cf, 0x49f70b6b, p0);
};

global.N_0xfc81d7c7a151cfaa = function (p0, p1, p2) {
	return _in(0xfc81d7c7, 0xa151cfaa, p0, p1, p2, _r, _ri);
};

global.N_0xfc832b06127d8e99 = function (p0, p1) {
	return _in(0xfc832b06, 0x127d8e99, p0, p1, _r, _ri);
};

global.N_0xfc9806da9a460093 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xfc9806da, 0x9a460093, p0, p1, p2, p3, p4, p5);
};

global.N_0xfc9b53c072f418e0 = function () {
	return _in(0xfc9b53c0, 0x72f418e0, _r, _ri);
};

global.N_0xfca8fb9e15fa80d3 = function (p0, p1) {
	return _in(0xfca8fb9e, 0x15fa80d3, p0, p1);
};

global.N_0xfcc6db8dbe709bc8 = function (p0) {
	return _in(0xfcc6db8d, 0xbe709bc8, p0);
};

global.N_0xfccc886ede3c63ec = function (p0, p1, p2) {
	return _in(0xfccc886e, 0xde3c63ec, p0, p1, p2);
};

global.N_0xfcdec42b1c78b7f8 = function (p0, p1) {
	return _in(0xfcdec42b, 0x1c78b7f8, p0, p1);
};

global.N_0xfcf96ccbd81b24c8 = function (p0) {
	return _in(0xfcf96ccb, 0xd81b24c8, p0, _r, _ri);
};

global.N_0xfd010a2154b40676 = function (p0, p1) {
	return _in(0xfd010a21, 0x54b40676, p0, p1);
};

global.N_0xfd05b1dde83749fa = function (p0) {
	return _in(0xfd05b1dd, 0xe83749fa, p0, _r, _ri);
};

global.N_0xfd0759658268fd8e = function (p0) {
	return _in(0xfd075965, 0x8268fd8e, p0, _r, _ri);
};

global.N_0xfd0e389cd44434b6 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0xfd0e389c, 0xd44434b6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri);
};

global.N_0xfd1ac0b3858f224c = function (p0, p1, p2, p3) {
	return _in(0xfd1ac0b3, 0x858f224c, p0, p1, p2, p3);
};

global.N_0xfd1ba1eef7985bb8 = function (p0, p1) {
	return _in(0xfd1ba1ee, 0xf7985bb8, p0, p1, _r, _ri);
};

global.N_0xfd3c31a2e45671e7 = function (p0, p1) {
	return _in(0xfd3c31a2, 0xe45671e7, p0, p1);
};

global.N_0xfd41d1d4350f6413 = function (p0) {
	return _in(0xfd41d1d4, 0x350f6413, p0);
};

global.N_0xfd4272a137703449 = function () {
	return _in(0xfd4272a1, 0x37703449);
};

global.N_0xfd461d0aba5559b1 = function (p0, p1) {
	return _in(0xfd461d0a, 0xba5559b1, p0, p1);
};

global.N_0xfd5bb35aab83fd48 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xfd5bb35a, 0xab83fd48, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

/**
 * SET_PED_CAN_*
 * @param ped :
 * @param toggle :
 */
global.N_0xfd6943b6df77e449 = function (ped, toggle) {
	return _in(0xfd6943b6, 0xdf77e449, ped, toggle);
};

global.N_0xfd8e853f0bc2e942 = function (p0, p1) {
	return _in(0xfd8e853f, 0x0bc2e942, p0, p1);
};

global.N_0xfdb008b3bcf5992f = function (p0, p1, p2) {
	return _in(0xfdb008b3, 0xbcf5992f, p0, p1, p2);
};

global.N_0xfdcedfb0577a390d = function (p0, p1) {
	return _in(0xfdcedfb0, 0x577a390d, p0, p1, _r, _ri);
};

global.N_0xfdecca06e8b81346 = function (p0) {
	return _in(0xfdecca06, 0xe8b81346, p0, _r, _ri);
};

global.N_0xfdf38e2b711bf78e = function (p0, p1) {
	return _in(0xfdf38e2b, 0x711bf78e, p0, p1, _r, _ri);
};

global.N_0xfdfc14799373283f = function (p0) {
	return _in(0xfdfc1479, 0x9373283f, p0, _r, _ri);
};

global.N_0xfdfecc6ee4491e11 = function (p0) {
	return _in(0xfdfecc6e, 0xe4491e11, p0);
};

global.N_0xfe0304050261442c = function (p0, p1) {
	return _in(0xfe030405, 0x0261442c, p0, p1, _r, _ri);
};

global.N_0xfe2b3d5500b1b2e4 = function (p0, p1) {
	return _in(0xfe2b3d55, 0x00b1b2e4, p0, p1);
};

global.N_0xfe53b1f8d43f19bf = function (p0, p1) {
	return _in(0xfe53b1f8, 0xd43f19bf, p0, p1, _r, _ri);
};

global.N_0xfe5c6177064bd390 = function (p0) {
	return _in(0xfe5c6177, 0x064bd390, p0, _r, _ri);
};

global.N_0xfe5d28b9b7837cc1 = function (p0, p1, p2, p3) {
	return _in(0xfe5d28b9, 0xb7837cc1, p0, p1, p2, p3, _r, _ri);
};

global.N_0xfe691e89c08937b6 = function (p0, p1) {
	return _in(0xfe691e89, 0xc08937b6, p0, p1, _r, _ri);
};

global.N_0xfe7966df01452f32 = function (p0, p1, p2) {
	return _in(0xfe7966df, 0x01452f32, p0, p1, p2);
};

global.N_0xfe7c9cf376d23342 = function (p0, p1) {
	return _in(0xfe7c9cf3, 0x76d23342, p0, p1);
};

global.N_0xfea6126c34df2532 = function (p0, p1) {
	return _in(0xfea6126c, 0x34df2532, p0, p1);
};

global.N_0xfeab3db4edb236eb = function (p0) {
	return _in(0xfeab3db4, 0xedb236eb, p0, _r, _ri);
};

global.N_0xfeb8646818294c75 = function (p0, p1) {
	return _in(0xfeb86468, 0x18294c75, p0, p1);
};

global.N_0xfec1d4b5c82c176f = function (p0) {
	return _in(0xfec1d4b5, 0xc82c176f, p0, _r, _ri);
};

global.N_0xfec85339aaca2a35 = function (p0, p1) {
	return _in(0xfec85339, 0xaaca2a35, p0, p1);
};

global.N_0xfeca17cf3343694b = function (p0, p1) {
	return _in(0xfeca17cf, 0x3343694b, p0, p1);
};

global.N_0xfeca2081f61ed2cd = function (p0, p1, p2, p3) {
	return _in(0xfeca2081, 0xf61ed2cd, p0, p1, p2, p3);
};

global.N_0xfee4a5459472a9f8 = function () {
	return _in(0xfee4a545, 0x9472a9f8);
};

global.N_0xfefcc345ce357453 = function (p0, p1, p2, p3) {
	return _in(0xfefcc345, 0xce357453, p0, p1, p2, p3, _r, _ri);
};

global.N_0xfefddc6e8fdf8a75 = function (p0, p1) {
	return _in(0xfefddc6e, 0x8fdf8a75, p0, p1);
};

global.N_0xfeff01b5725bcd22 = function (p0) {
	return _in(0xfeff01b5, 0x725bcd22, p0, _r, _ri);
};

global.N_0xff07cf465f48b830 = function (p0) {
	return _in(0xff07cf46, 0x5f48b830, p0, _r, _ri);
};

global.N_0xff1e339ce40eaaaf = function (p0, p1) {
	return _in(0xff1e339c, 0xe40eaaaf, p0, p1);
};

global.N_0xff252e2bafb7330f = function (p0) {
	return _in(0xff252e2b, 0xafb7330f, p0);
};

global.N_0xff2b1f59fb892f14 = function (p0) {
	return _in(0xff2b1f59, 0xfb892f14, p0);
};

global.N_0xff36f36b07e69059 = function (p0) {
	return _in(0xff36f36b, 0x07e69059, p0);
};

global.N_0xff5791b7639c2a46 = function (p0, p1) {
	return _in(0xff5791b7, 0x639c2a46, p0, p1, _r, _ri);
};

global.N_0xff584f097c17fa8f = function () {
	return _in(0xff584f09, 0x7c17fa8f, _r, _ri);
};

global.N_0xff745b0346e19e2c = function (p0) {
	return _in(0xff745b03, 0x46e19e2c, p0);
};

global.N_0xff8018c778349234 = function (p0) {
	return _in(0xff8018c7, 0x78349234, p0);
};

global.N_0xff83af534156b399 = function (p0, p1) {
	return _in(0xff83af53, 0x4156b399, p0, p1);
};

global.N_0xff8afca532b500d4 = function (p0, p1) {
	return _in(0xff8afca5, 0x32b500d4, p0, p1);
};

global.N_0xff9052bc7a3b7d33 = function (p0, p1, p2, p3) {
	return _in(0xff9052bc, 0x7a3b7d33, p0, p1, p2, p3);
};

global.N_0xff975bc4435a0fa3 = function (p0) {
	return _in(0xff975bc4, 0x435a0fa3, p0, _r, _ri);
};

/**
 * SET_ENTITY_LO*
 * @param entity :
 * @param toggle :
 */
global.N_0xff9965c47fa404da = function (entity, toggle) {
	return _in(0xff9965c4, 0x7fa404da, entity, toggle);
};

global.N_0xffa13742e43507e3 = function (p0, p1) {
	return _in(0xffa13742, 0xe43507e3, p0, p1, _r, _ri);
};

global.N_0xffa1594703ed27ca = function (p0, p1) {
	return _in(0xffa15947, 0x03ed27ca, p0, p1);
};

global.N_0xffb520a3e16f7b7b = function (p0, p1) {
	return _in(0xffb520a3, 0xe16f7b7b, p0, p1);
};

global.N_0xffb99ffd17f65889 = function (p0, p1) {
	return _in(0xffb99ffd, 0x17f65889, p0, p1);
};

global.N_0xffcc2db2d9953401 = function (p0, p1, p2) {
	return _in(0xffcc2db2, 0xd9953401, p0, p1, p2, _r, _ri);
};

global.N_0xffd54d9fe71b966a = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xffd54d9f, 0xe71b966a, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.N_0xffddf802279be128 = function (p0, p1, p2) {
	return _in(0xffddf802, 0x279be128, p0, p1, p2);
};

global.N_0xffde295662405b25 = function (p0) {
	return _in(0xffde2956, 0x62405b25, p0, _r, _ri);
};

global.N_0xffe9c53deea3db0b = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xffe9c53d, 0xeea3db0b, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.N_0xffebe5aa96bc2e4e = function (p0, p1, p2) {
	return _in(0xffebe5aa, 0x96bc2e4e, p0, p1, p2, _r, _ri);
};

global.N_0xffec4b0a1a3ed515 = function (p0, p1) {
	return _in(0xffec4b0a, 0x1a3ed515, p0, p1, _r, _ri);
};

global.N_0xfff6579cf0139fce = function (p0) {
	return _in(0xfff6579c, 0xf0139fce, p0);
};

global.N_0xfffe15b433300b8c = function (p0, p1, p2) {
	return _in(0xfffe15b4, 0x33300b8c, p0, p1, p2);
};

global.NetToEnt = function (netHandle) {
	return _in(0xbffeab45, 0xa9a9094a, netHandle, _r, _ri);
};

global.NetToObj = function (netHandle) {
	return _in(0xd8515f5f, 0xea14cb3f, netHandle, _r, _ri);
};

global.NetToPed = function (netHandle) {
	return _in(0xbdcd95fc, 0x216a8b3e, netHandle, _r, _ri);
};

global.NetToVeh = function (netHandle) {
	return _in(0x367b9366, 0x10ba360c, netHandle, _r, _ri);
};

global.NetworkAccessTunableBool = function (tunableContext, tunableName) {
	return _in(0xaa6a47a5, 0x73abb75a, _ch(tunableContext), _ch(tunableName), _r);
};

global.NetworkAccessTunableInt = function (tunableContext, tunableName, value) {
	return _in(0x8be1146d, 0xfd5d4468, _ch(tunableContext), _ch(tunableName), _ii(value) /* may be optional */, _r);
};

global.NetworkAddFriend = function (message) {
	return _in(0x8e02d739, 0x14064223, _i, _ts(message), _r);
};

global.NetworkAreHandlesTheSame = function () {
	return _in(0x57dba049, 0xe110f217, _i, _i, _r);
};

/**
 * Returns value of fwuiCachedSetting "general.onlineNotificationsInStoryMode"
 */
global.NetworkAreOnlineNotificationsShownInStoryMode = function () {
	return _in(0xf5c5929e, 0x07512f80, _r);
};

global.NetworkCanAccessMultiplayer = function (loadingState) {
	return _in(0xaf50da1a, 0x3f8b1ba4, _ii(loadingState) /* may be optional */, _r);
};

global.NetworkCanSessionEnd = function () {
	return _in(0x4eebc369, 0x4e49c572, _r);
};

global.NetworkClanGetLocalMembershipsCount = function () {
	return _in(0x1f471b79, 0xacc90bef, _r, _ri);
};

global.NetworkClanGetMembershipDesc = function (p1) {
	return _in(0x48de78af, 0x2c8885b8, _i, p1, _r);
};

global.NetworkClanIsEmblemReady = function (p0, p1) {
	return _in(0xa134777f, 0xf7f33331, p0, _ii(p1) /* may be optional */, _r);
};

global.NetworkClanPlayerGetDesc = function (bufferSize) {
	return _in(0xeee6eacb, 0xe8874fba, _i, bufferSize, _i, _r);
};

global.NetworkClanPlayerIsActive = function (networkHandle) {
	return _in(0xb124b57f, 0x571d8f18, _ii(networkHandle) /* may be optional */, _r);
};

global.NetworkClanReleaseEmblem = function (p0) {
	return _in(0x113e6e3e, 0x50e286b0, p0);
};

global.NetworkClanRequestEmblem = function (p0) {
	return _in(0x13518ff1, 0xc6b28938, p0, _r);
};

global.NetworkClanServiceIsValid = function () {
	return _in(0x579cced0, 0x265d4896, _r);
};

global.NetworkClearClockTimeOverride = function () {
	return _in(0xd972df67, 0x326f966e);
};

global.NetworkClearFoundGamers = function () {
	return _in(0x6d14ccee, 0x1b40381a);
};

global.NetworkClearGetGamerStatus = function () {
	return _in(0x86e0660e, 0x4f5c956d);
};

global.NetworkClockTimeOverride = function (hour, minute, second, p3, p4) {
	return _in(0x669e223e, 0x64b1903c, hour, minute, second, p3, p4);
};

global.NetworkClockTimeOverride_2 = function (hour, minute, second, p3, p4, p5) {
	return _in(0xe28c13ec, 0xc36ff14e, hour, minute, second, p3, p4, p5);
};

global.NetworkConcealPlayer = function (player, toggle) {
	return _in(0xbbdf0662, 0x52829606, player, toggle);
};

global.NetworkDisableProximityMigration = function (netID) {
	return _in(0x407091cf, 0x6037118e, netID);
};

global.NetworkDoesNetworkIdExist = function (netID) {
	return _in(0x38ce16c9, 0x6bd11344, netID, _r);
};

global.NetworkDoesTunableExist = function (tunableContext, tunableName) {
	return _in(0x85e5f8b9, 0xb898b20a, _ch(tunableContext), _ch(tunableName), _r);
};

global.NetworkEndTutorialSession = function () {
	return _in(0xd0afaff5, 0xa51d72f7);
};

global.NetworkGetClockTimeOverride = function () {
	return _in(0x11a7adcd, 0x629e170f, _i, _i, _i, _r);
};

global.NetworkGetDestroyerOfEntity = function (p0, p1, weaponHash) {
	return _in(0x4caca844, 0x40fa26f6, p0, p1, _ii(weaponHash) /* may be optional */, _r);
};

global.NetworkGetDestroyerOfNetworkId = function (netId, weaponHash) {
	return _in(0x7a1adeef, 0x01740a24, netId, _ii(weaponHash) /* may be optional */, _r, _ri);
};

global.NetworkGetEntityFromNetworkId = function (netId) {
	return _in(0xce4e5d9b, 0x0a4ff560, netId, _r, _ri);
};

global.NetworkGetEntityIsNetworked = function (entity) {
	return _in(0xc7827959, 0x479dcc78, entity, _r);
};

global.NetworkGetEntityKillerOfPlayer = function (player, weaponHash) {
	return _in(0x42b2daa6, 0xb596f5f8, player, _ii(weaponHash) /* may be optional */, _r, _ri);
};

/**
 * Returns the owner ID of the specified entity.
 * @param entity The entity to get the owner for.
 * @return On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
 */
global.NetworkGetEntityOwner = function (entity) {
	return _in(0x00000000, 0x526fee31, entity, _r, _ri);
};

global.NetworkGetGamertagFromHandle = function () {
	return _in(0x42614116, 0x2ebe5cdb, _r, _s);
};

global.NetworkGetGlobalMultiplayerClock = function () {
	return _in(0x6d03bfbd, 0x643b2a02, _i, _i, _i);
};

global.NetworkGetLocalHandle = function (p0) {
	return _in(0xe8605178, 0x6b66cd8e, p0);
};

global.NetworkGetMaxNumParticipants = function () {
	return _in(0xa6c90fbc, 0x38e395ee, _r, _ri);
};

global.NetworkGetNetworkIdFromEntity = function (entity) {
	return _in(0xa1170068, 0x2f3ad45c, entity, _r, _ri);
};

global.NetworkGetNumConnectedPlayers = function () {
	return _in(0xa4a79dd2, 0xd9600654, _r, _ri);
};

global.NetworkGetNumParticipants = function () {
	return _in(0x18d0456e, 0x86604654, _r, _ri);
};

global.NetworkGetNumScriptParticipants = function (p1, p2) {
	return _in(0x3658e8cd, 0x94fc121a, _i, p1, p2, _r, _ri);
};

global.NetworkGetNumUnackedForPlayer = function () {
	return _in(0xff8fcf9f, 0xfc458a1c, _r, _ri);
};

global.NetworkGetOldestResendCountForPlayer = function () {
	return _in(0x52c1eada, 0xf7b10302, _r, _ri);
};

global.NetworkGetParticipantIndex = function (index) {
	return _in(0x1b84df6a, 0xf2a46938, index, _r, _ri);
};

global.NetworkGetPlayerFromGamerHandle = function (networkHandle) {
	return _in(0xce5f689c, 0xf5a0a49d, _ii(networkHandle) /* may be optional */, _r, _ri);
};

global.NetworkGetPlayerIndex = function (player) {
	return _in(0x24fb80d1, 0x07371267, player, _r, _ri);
};

global.NetworkGetPlayerIndexFromPed = function (ped) {
	return _in(0x6c0e2e01, 0x25610278, ped, _r, _ri);
};

global.NetworkGetPlayerTutorialSessionInstance = function (player) {
	return _in(0x3b392367, 0x46714134, player, _r, _ri);
};

global.NetworkGetPrimaryClanDataClear = function () {
	return _in(0x9aa46bad, 0xad0e27ed, _r, _ri);
};

global.NetworkGetPrimaryClanDataNew = function () {
	return _in(0xc080ff65, 0x8b2e41da, _i, _i, _r);
};

global.NetworkGetPrimaryClanDataPending = function () {
	return _in(0xb5074db8, 0x04e28ce7, _r, _ri);
};

global.NetworkGetPrimaryClanDataStart = function (p1) {
	return _in(0xce86d819, 0x1b762107, _i, p1, _r);
};

global.NetworkGetPrimaryClanDataSuccess = function () {
	return _in(0x5b4f04f1, 0x9376a0ba, _r, _ri);
};

global.NetworkGetRandomIntRanged = function (rangeStart, rangeEnd) {
	return _in(0xe30cf56f, 0x1efa5f43, rangeStart, rangeEnd, _r, _ri);
};

global.NetworkGetScriptStatus = function () {
	return _in(0x57d15864, 0x7a6bfabf, _r, _ri);
};

global.NetworkGetThisScriptIsNetworkScript = function () {
	return _in(0x29106699, 0x69e9535e, _r);
};

global.NetworkGetTimeoutTime = function () {
	return _in(0x5ed0356a, 0x0ce3a34f, _r, _ri);
};

global.NetworkGetTotalNumPlayers = function () {
	return _in(0xcf61d4b4, 0x702ee9eb, _r, _ri);
};

global.NetworkHandleFromFriend = function (p0, p1) {
	return _in(0xd45cb817, 0xd7e177d2, p0, p1);
};

global.NetworkHandleFromPlayer = function (p0, p1) {
	return _in(0x388eb2b8, 0x6c73b6b3, p0, p1);
};

global.NetworkHasControlOfEntity = function (entity) {
	return _in(0x01bf60a5, 0x00e28887, entity, _r);
};

global.NetworkHasControlOfNetworkId = function (netId) {
	return _in(0x4d36070f, 0xe0215186, netId, _r);
};

global.NetworkHasControlOfPickup = function (pickup) {
	return _in(0x5bc9495f, 0x0b3b6fa6, pickup, _r);
};

global.NetworkHasPlayerBeenBanned = function () {
	return _in(0x8020a738, 0x47e0ca7d, _r);
};

global.NetworkHasRosPrivilege = function (index) {
	return _in(0xa699957e, 0x60d80214, index, _r);
};

global.NetworkHasSocialClubAccount = function () {
	return _in(0x67a55896, 0x28e0cff6, _r);
};

global.NetworkHashFromPlayerHandle = function (player) {
	return _in(0xbc1d768f, 0x2f5d6c05, player, _r, _ri);
};

global.NetworkHaveJustUploadLater = function () {
	return _in(0x85443ff4, 0xc328f53b, _r);
};

global.NetworkHaveOnlinePrivileges = function () {
	return _in(0x25cb5a9f, 0x37bfd063, _r);
};

global.NetworkIsClockTimeOverridden = function () {
	return _in(0xd7c95d32, 0x2ff57522, _r);
};

global.NetworkIsCloudAvailable = function () {
	return _in(0x9a4cf4f4, 0x8ad77302, _r);
};

global.NetworkIsFindingGamers = function () {
	return _in(0xdddf64c9, 0x1bfcf0aa, _r);
};

global.NetworkIsFriend = function (networkHandle) {
	return _in(0x1a24a179, 0xf9b31654, _ii(networkHandle) /* may be optional */, _r);
};

global.NetworkIsGameInProgress = function () {
	return _in(0x10fab354, 0x28ccc9d7, _r);
};

global.NetworkIsGamerInMySession = function (networkHandle) {
	return _in(0x0f10b05d, 0xdf8d16e9, _ii(networkHandle) /* may be optional */, _r);
};

global.NetworkIsHandleValid = function (p0) {
	return _in(0x6f79b93b, 0x0a8e4133, p0, _r);
};

global.NetworkIsHost = function () {
	return _in(0x8db296b8, 0x14edda07, _r);
};

global.NetworkIsHostOfThisScript = function () {
	return _in(0x83cd99a1, 0xe6061ab5, _r);
};

global.NetworkIsInMpCutscene = function () {
	return _in(0x6cc27c9f, 0xa2040220, _r);
};

global.NetworkIsInPlatformParty = function () {
	return _in(0x2fc5650b, 0x0271cb57, _r);
};

global.NetworkIsInPlatformPartyChat = function () {
	return _in(0xfd8b834a, 0x8ba05048, _r);
};

global.NetworkIsInSession = function () {
	return _in(0xca972461, 0x03b63917, _r);
};

global.NetworkIsInSpectatorMode = function () {
	return _in(0x048746e3, 0x88762e11, _r);
};

global.NetworkIsInTutorialSession = function () {
	return _in(0xada24309, 0xfe08dacf, _r);
};

global.NetworkIsParticipantActive = function (p0) {
	return _in(0x6ff8ff40, 0xb6357d45, p0, _r);
};

global.NetworkIsPendingFriend = function (p0) {
	return _in(0x0be73da6, 0x984a6e33, p0, _r, _ri);
};

global.NetworkIsPlayerAParticipant = function (player) {
	return _in(0x3ca58f6c, 0xb7cbd784, player, _r);
};

global.NetworkIsPlayerAParticipantOnScript = function (p0, p2) {
	return _in(0x1ad5b715, 0x86b94820, p0, _i, p2, _r);
};

global.NetworkIsPlayerActive = function (player) {
	return _in(0xb8dfd30d, 0x6973e135, player, _r);
};

global.NetworkIsPlayerConcealed = function (player) {
	return _in(0x919b3c98, 0xed8292f9, player, _r);
};

global.NetworkIsPlayerConnected = function (player) {
	return _in(0x93dc1be4, 0xe1abe9d1, player, _r);
};

global.NetworkIsPlayerEqualToIndex = function (player, index) {
	return _in(0x9de986fc, 0x9a87c474, player, index, _r);
};

global.NetworkIsPlayerInMpCutscene = function (player) {
	return _in(0x63f9ee20, 0x3c3619f2, player, _r);
};

global.NetworkIsPlayerInSpectatorMode = function (player) {
	return _in(0x5b709519, 0x997ecf0f, player, _r);
};

global.NetworkIsScriptActive = function (scriptName, player, p2, p3) {
	return _in(0x9d40df90, 0xfad26098, _ts(scriptName), player, p2, p3, _r);
};

global.NetworkIsSessionActive = function () {
	return _in(0xd83c2b94, 0xe7508980, _r);
};

global.NetworkIsSessionStarted = function () {
	return _in(0x9de624d2, 0xfc4b603f, _r);
};

global.NetworkIsSignedOnline = function () {
	return _in(0x1077788e, 0x268557c2, _r);
};

global.NetworkIsTunableCloudRequestPending = function () {
	return _in(0x0467c11e, 0xd88b7d28, _r);
};

global.NetworkIsTutorialSessionChangePending = function () {
	return _in(0x35f0b98a, 0x8387274d, _r);
};

global.NetworkPlayerIdToInt = function () {
	return _in(0x8a9386f0, 0x749a17fa, _r, _ri);
};

global.NetworkRegisterEntityAsNetworked = function (entity) {
	return _in(0x06faacd6, 0x25d80caa, entity);
};

global.NetworkRegisterHostBroadcastVariables = function (p0, p1, p2) {
	return _in(0x3e9b2f01, 0xc50df595, p0, p1, p2);
};

global.NetworkRegisterPlayerBroadcastVariables = function (p0, p1, p2) {
	return _in(0x3364aa97, 0x340ca215, p0, p1, p2);
};

global.NetworkRequestControlOfEntity = function (entity) {
	return _in(0xb69317bf, 0x5e782347, entity, _r);
};

global.NetworkRequestControlOfNetworkId = function (netId) {
	return _in(0xa670b366, 0x2faffbd0, netId, _r);
};

global.NetworkResurrectLocalPlayer = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xea23c49e, 0xaa83acfb, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.NetworkSessionIsPrivate = function () {
	return _in(0xcef70aa5, 0xb3f89ba1, _r);
};

global.NetworkSessionLeave = function () {
	return _in(0x17c21b73, 0x19a05047, _r);
};

global.NetworkSetEntityInvisibleToNetwork = function (entity, toggle) {
	return _in(0xf1ca12b1, 0x8aef5298, entity, toggle);
};

global.NetworkSetFriendlyFireOption = function (toggle) {
	return _in(0xf808475f, 0xa571d823, toggle);
};

global.NetworkSetInMpCutscene = function (p0, p1, p2, p3) {
	return _in(0x9ca5de65, 0x5269fec4, p0, p1, p2, p3);
};

global.NetworkSetInSpectatorMode = function (toggle, playerPed) {
	return _in(0x423de385, 0x4bb50894, toggle, playerPed);
};

global.NetworkSetInStaticSpectatorMode = function (toggle, x, y, z) {
	return _in(0xfbf1ecfb, 0x39a77b5f, toggle, _fv(x), _fv(y), _fv(z));
};

global.NetworkSetLocalPlayerInvincibleTime = function (time) {
	return _in(0x2d95c7e2, 0xd7e07307, time);
};

global.NetworkSetLocalPlayerSyncLookAt = function (toggle) {
	return _in(0x524ff0ae, 0xff9c3973, toggle);
};

global.NetworkSetMissionFinished = function () {
	return _in(0x3b3d11cd, 0x9ffcdfc9);
};

global.NetworkSetRichPresence = function (p0, p1, p2, p3) {
	return _in(0x1dccacdc, 0xfc569362, p0, p1, p2, p3);
};

global.NetworkSetScriptIsSafeForNetworkGame = function () {
	return _in(0x3d0eac63, 0x85dd6100);
};

global.NetworkSetThisScriptIsNetworkScript = function (lobbySize, p1, playerId) {
	return _in(0x1ca59e30, 0x6ecb80a5, lobbySize, p1, playerId);
};

global.NetworkSetVehicleWheelsDestructible = function (p0, p1) {
	return _in(0x0c8bc052, 0xae87d744, p0, p1);
};

global.NetworkShowProfileUi = function (networkHandle) {
	return _in(0x859ed1ce, 0xa343fca8, _ii(networkHandle) /* may be optional */);
};

global.NetworkStartSoloTutorialSession = function () {
	return _in(0x17e0198b, 0x3882c2cb);
};

global.NetworkTryAccessTunableBool = function (tunableContext, tunableName, defaultValue) {
	return _in(0xb2ad5d29, 0xa99d4b26, _ch(tunableContext), _ch(tunableName), defaultValue, _r);
};

global.NetworkTryAccessTunableFloat = function (tunableContext, tunableName, defaultValue) {
	return _in(0xa1839308, 0x9c05e49c, _ch(tunableContext), _ch(tunableName), _fv(defaultValue), _r, _rf);
};

global.NetworkTryAccessTunableInt = function (tunableContext, tunableName, defaultValue) {
	return _in(0xa25e006b, 0x36719774, _ch(tunableContext), _ch(tunableName), defaultValue, _r, _ri);
};

global.ObjToNet = function (object) {
	return _in(0x99bfdc94, 0xa603e541, object, _r, _ri);
};

global.ObjectValueAddInteger = function (key, value) {
	return _in(0x26fdf5e9, 0x9aa2f3e9, _i, _ts(key), value);
};

global.ObjectValueGetArray = function (key) {
	return _in(0x1b5447cf, 0x18544b18, _i, _ts(key), _r, _ri);
};

global.ObjectValueGetBoolean = function (key) {
	return _in(0x175e915a, 0x486ee548, _i, _ts(key), _r);
};

global.ObjectValueGetFloat = function (key) {
	return _in(0x814643ec, 0xa258adf5, _i, _ts(key), _r, _rf);
};

global.ObjectValueGetInteger = function (key) {
	return _in(0x9d896a3b, 0x87d96e2b, _i, _ts(key), _r, _ri);
};

global.ObjectValueGetObject = function (key) {
	return _in(0x4d7a3013, 0x0f46ac9c, _i, _ts(key), _r, _ri);
};

global.ObjectValueGetString = function (key) {
	return _in(0xe37b38c0, 0xb4e95dfa, _i, _ts(key), _r, _s);
};

global.ObjectValueGetType = function (key) {
	return _in(0x92e11e3c, 0xa4c7cdf0, _i, _ts(key), _r, _ri);
};

global.ObjectValueGetVector3 = function (key) {
	return _in(0xe459c941, 0x431e0ffa, _i, _ts(key), _r, _rv);
};

global.OpenPatrolRoute = function (patrolRoute) {
	return _in(0xa36bfb5e, 0xe89f3d82, _ts(patrolRoute));
};

global.OpenSequenceTask = function (taskSequenceId) {
	return _in(0xe8854a43, 0x26b9e12b, _ii(taskSequenceId) /* may be optional */);
};

global.OverrideSaveHouse = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xb2c69e11, 0xa37b5af0, p0, _fv(p1), _fv(p2), _fv(p3), _fv(p4), p5, _fv(p6), _fv(p7), _r);
};

global.ParticipantId = function () {
	return _in(0x90986e88, 0x76ce0a83, _r, _ri);
};

global.ParticipantIdToInt = function () {
	return _in(0x57a3bdda, 0xd8e5aa0a, _r, _ri);
};

global.PauseClock = function (toggle, unused) {
	return _in(0x4d1a590c, 0x92bf377e, toggle, unused);
};

global.PauseClockThisFrame = function (toggle) {
	return _in(0x568d998a, 0x9ff96774, toggle);
};

global.PauseDeathArrestRestart = function (toggle) {
	return _in(0x66ab6b6c, 0x7e72f393, toggle);
};

global.PauseScriptedConversation = function (p0, p1, p2, p3, p4) {
	return _in(0x8530ad77, 0x6cd72b12, p0, p1, p2, p3, p4);
};

global.PedCowerInPlace = function (ped, ped2) {
	return _in(0xf6e1e9f4, 0x7a7686f8, ped, ped2);
};

global.PedCowerMoveToPoint = function (ped, p1, p2, p3, ped2, p5) {
	return _in(0x1e4c9402, 0x33fc0c6f, ped, _fv(p1), _fv(p2), _fv(p3), ped2, _fv(p5));
};

global.PedHasUseScenarioTask = function (ped) {
	return _in(0x295e3cce, 0xc879ccd7, ped, _r);
};

global.PedToNet = function (ped) {
	return _in(0x0edec3c2, 0x76198689, ped, _r, _ri);
};

global.PinInteriorInMemory = function (interior) {
	return _in(0xbd3d33ea, 0xbf680168, interior);
};

global.PlaceObjectOnGroundProperly = function (p0, p1) {
	return _in(0x58a850ea, 0xee20faa3, p0, p1, _r);
};

global.PlayAmbientSpeech1 = function (p0, p1) {
	return _in(0x8e04fedd, 0x28d42462, p0, p1, _r, _ri);
};

global.PlayAmbientSpeechAtCoords = function (p0, p1, p2, p3) {
	return _in(0xed640017, 0xed337e45, p0, p1, p2, p3, _r, _ri);
};

global.PlayAnimOnRunningScenario = function (ped, animDict, animName) {
	return _in(0x74804046, 0x0f8df5dc, ped, _ts(animDict), _ts(animName));
};

global.PlayAnimalVocalization = function (pedHandle, p1, p2) {
	return _in(0xee066c70, 0x06c49c0a, pedHandle, p1, _ii(p2) /* may be optional */);
};

global.PlayCamAnim = function (cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10) {
	return _in(0xa263ddf6, 0x94d563f6, cam, _ts(animName), _ts(animDictionary), _fv(x), _fv(y), _fv(z), _fv(xRot), _fv(yRot), _fv(zRot), p9, p10, _r);
};

global.PlayEndCreditsMusic = function (play) {
	return _in(0xcd536c4d, 0x33dcc900, play);
};

global.PlayEntityAnim = function (entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) {
	return _in(0xdc6d22fa, 0xb76d4874, entity, _ts(animName), _ts(animDict), _fv(p3), loop, stayInAnim, p6, _fv(delta), bitset, _r);
};

global.PlayEntityScriptedAnim = function (p0, p1) {
	return _in(0x77a1eec5, 0x47e7fcf1, p0, p1);
};

global.PlayPain = function (p0, p1, p2, p3, p4) {
	return _in(0xbc9ae166, 0x038a5cec, p0, p1, p2, p3, p4);
};

global.PlaySound = function (audioName, audioRef, p2, p3, p4, p5) {
	return _in(0x7ff4944c, 0xc209192d, _ts(audioName), _ts(audioRef), p2, p3, p4, p5);
};

global.PlaySoundFrontend = function (audioName, audioRef, p2, p3) {
	return _in(0x67c540aa, 0x08e4a6f5, _ts(audioName), _ts(audioRef), p2, p3);
};

global.PlayStreamFromPed = function (p0, p1) {
	return _in(0x89049dd6, 0x3c08b5d1, p0, p1);
};

global.PlayStreamFromPosition = function (p0, p1, p2, p3) {
	return _in(0x21442f41, 0x2e8de56b, p0, p1, p2, p3);
};

global.PlayStreamFrontend = function (p0) {
	return _in(0x58fce434, 0x88f9f5f4, p0);
};

global.PlayerId = function () {
	return _in(0x217e9dc4, 0x8139933d, _r, _ri);
};

global.PlayerPedId = function () {
	return _in(0x09627588, 0x9b8e0ee0, _r, _ri);
};

global.PointCamAtCoord = function (cam, x, y, z) {
	return _in(0x948b3934, 0x1c3a40c2, cam, _fv(x), _fv(y), _fv(z));
};

global.PointCamAtEntity = function (cam, entity, p2, p3, p4, p5) {
	return _in(0xfc2867e6, 0x074d3a61, cam, entity, _fv(p2), _fv(p3), _fv(p4), p5);
};

global.PokerBuyIn = function (p0, p1) {
	return _in(0xb4d610ea, 0x5a1fde74, p0, p1, _r, _ri);
};

global.PokerCall = function (p0, p1) {
	return _in(0x8ded681b, 0x161ebd78, p0, p1, _r, _ri);
};

global.PokerCheck = function (p0, p1) {
	return _in(0x49a04562, 0x8d9b1b86, p0, p1, _r, _ri);
};

global.PokerFold = function (p0) {
	return _in(0x3dfab7d9, 0xbb45b5be, p0, _r, _ri);
};

global.PokerGetGameSettingsForId = function (p0) {
	return _in(0x2d20e12e, 0x1990d584, p0, _r, _ri);
};

global.PokerRaise = function (p0, p1) {
	return _in(0xeccf45a7, 0x9a17bb96, p0, p1, _r, _ri);
};

global.PokerReveal = function (p0) {
	return _in(0x2f2131db, 0x0a8b02dc, p0, _r, _ri);
};

global.PopulateNow = function () {
	return _in(0xea6dc3a8, 0xadd2005f);
};

global.Pow = function (base, exponent) {
	return _in(0xe3621cc4, 0x0f31fe2e, _fv(base), _fv(exponent), _r, _rf);
};

global.PrefetchSrl = function (srl) {
	return _in(0x354837e5, 0xa5baa5af, _ts(srl));
};

global.PreloadScriptConversation = function (p0, p1, p2, p3) {
	return _in(0x3b3cad61, 0x66916d87, p0, p1, p2, p3);
};

global.PrepareMusicEvent = function (eventName) {
	return _in(0x1e5185b7, 0x2ef5158a, _ts(eventName), _r);
};

/**
 * Scope entry for profiler.
 * @param scopeName Scope name.
 */
global.ProfilerEnterScope = function (scopeName) {
	return _in(0x00000000, 0xc795a4a9, _ts(scopeName));
};

/**
 * Scope exit for profiler.
 */
global.ProfilerExitScope = function () {
	return _in(0x00000000, 0xb39ca35c);
};

/**
 * Returns true if the profiler is active.
 * @return True or false.
 */
global.ProfilerIsRecording = function () {
	return _in(0x00000000, 0xf8b7d7bb, _r);
};

global.PromptAddGroupLink = function (p0, prompt, p2) {
	return _in(0x684c96cc, 0x7c66e8ef, p0, prompt, p2);
};

global.PromptAddGroupReturnLink = function (p0, prompt) {
	return _in(0x837972ed, 0x28159536, p0, prompt);
};

global.PromptClearFavouredPedForConflictResolution = function () {
	return _in(0x51259ae5, 0xc72d4a1b);
};

global.PromptCreate = function (inputHash, labelName, p2, p3, p4, p5) {
	return _in(0x29fa7910, 0x726c3889, _ch(inputHash), _ts(labelName), p2, p3, p4, p5, _r, _ri);
};

global.PromptDelete = function (prompt) {
	return _in(0x00ede88d, 0x4d13cf59, prompt);
};

global.PromptDisablePromptTypeThisFrame = function (p0) {
	return _in(0xfc094ef2, 0x6dd153fa, p0);
};

global.PromptDoesAmbientGroupExist = function (hash) {
	return _in(0xeb550b92, 0x7b34a1bb, _ch(hash), _r);
};

global.PromptEnablePromptTypeThisFrame = function (p0) {
	return _in(0x06565032, 0x897ba861, p0);
};

global.PromptFilterClear = function () {
	return _in(0x6a2f8204, 0x52017ea2);
};

global.PromptGetGroupActivePage = function (hash) {
	return _in(0xc1fcc36c, 0x3f7286c8, _ch(hash), _r, _ri);
};

global.PromptGetGroupIdForScenarioPoint = function (p0, p1) {
	return _in(0xcb73d752, 0x1e7103f0, p0, p1, _r, _ri);
};

global.PromptGetGroupIdForTargetEntity = function (entity) {
	return _in(0xb796970b, 0xd125fce8, entity, _r, _ri);
};

global.PromptGetMashModeProgress = function (prompt) {
	return _in(0x8a958529, 0x3863b8a5, prompt, _r, _ri);
};

global.PromptGetUrgentPulsingEnabled = function (prompt) {
	return _in(0x1fba0dab, 0xecddb52b, prompt, _r);
};

global.PromptHasHoldAutoFillMode = function (prompt) {
	return _in(0x8010bebd, 0x0d5ed5bc, prompt, _r);
};

global.PromptHasHoldModeCompleted = function (prompt) {
	return _in(0xe0f65f06, 0x40ef0617, prompt, _r);
};

global.PromptHasMashModeCompleted = function (prompt) {
	return _in(0x845ce958, 0x416dc473, prompt, _r);
};

global.PromptHasMashModeFailed = function (prompt) {
	return _in(0x25b18e53, 0x0cf39d6f, prompt, _r);
};

global.PromptHasPressedTimedModeCompleted = function (prompt) {
	return _in(0x3ce854d2, 0x50a88daf, prompt, _r, _ri);
};

global.PromptHasPressedTimedModeFailed = function (prompt) {
	return _in(0x1a17b9ec, 0xff617562, prompt, _r, _ri);
};

global.PromptHasStandardModeCompleted = function (prompt, p1) {
	return _in(0xc92ac953, 0xf0a982ae, prompt, p1, _r);
};

global.PromptIsActive = function (prompt) {
	return _in(0x546e342e, 0x01de71cf, prompt, _r);
};

global.PromptIsEnabled = function (prompt) {
	return _in(0x0d00eddf, 0xb58b7f28, prompt, _r, _ri);
};

global.PromptIsHoldModeRunning = function (prompt) {
	return _in(0xc7d70eae, 0xf92eff48, prompt, _r);
};

global.PromptIsJustPressed = function (prompt) {
	return _in(0x2787cc61, 0x1d3facc5, prompt, _r);
};

global.PromptIsJustReleased = function (prompt) {
	return _in(0x635cc82f, 0xa297a827, prompt, _r);
};

global.PromptIsPressed = function (prompt) {
	return _in(0x21e60e23, 0x0086697f, prompt, _r);
};

global.PromptIsReleased = function (prompt) {
	return _in(0xafc887ba, 0x7a7756d6, prompt, _r);
};

global.PromptIsValid = function (prompt) {
	return _in(0x347469fb, 0xdd1589a9, prompt, _r);
};

global.PromptRegisterBegin = function () {
	return _in(0x04f97de4, 0x5a519419, _r, _ri);
};

global.PromptRegisterEnd = function (prompt) {
	return _in(0xf7aa2696, 0xa22ad8b9, prompt);
};

global.PromptRemoveGroup = function (prompt, p1) {
	return _in(0x4e52c800, 0xa28f7be8, prompt, p1);
};

global.PromptRestartModes = function (prompt) {
	return _in(0xdc6c55df, 0xa2c24ee5, prompt);
};

global.PromptSetActiveGroupThisFrame = function (hash, p1, p2, p3, p4, prompt) {
	return _in(0xc65a45d4, 0x453c2627, _ch(hash), p1, p2, p3, p4, prompt, _r, _ri);
};

global.PromptSetAllowedAction = function (prompt, p1) {
	return _in(0x565c1ce1, 0x83cb0eaf, prompt, p1);
};

global.PromptSetAmbientGroupThisFrame = function (entity, p1, p2, p3, p4, p5, p6) {
	return _in(0x315c81d7, 0x60609108, entity, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.PromptSetAttribute = function (prompt, p1, p2) {
	return _in(0x560e76d5, 0xe2e1803f, prompt, p1, p2);
};

global.PromptSetBeatMode = function (prompt, p1) {
	return _in(0xf957a165, 0x4c6322fe, prompt, p1);
};

global.PromptSetBeatModeGrayedOut = function (prompt, p1) {
	return _in(0xb487a493, 0x6fbf40ac, prompt, p1);
};

global.PromptSetControlAction = function (prompt, p1) {
	return _in(0xb5352b74, 0x94a08258, prompt, p1, _r, _ri);
};

global.PromptSetEnabled = function (prompt, p1) {
	return _in(0x8a0fb4d0, 0x3a630d21, prompt, p1);
};

global.PromptSetFavouredPedForConflictResolution = function (ped) {
	return _in(0x530a4287, 0x05be5def, ped);
};

global.PromptSetGroup = function (prompt, p1, p2) {
	return _in(0x2f11d3a2, 0x54169ea4, prompt, p1, p2);
};

global.PromptSetHoldAutoFillMode = function (prompt, p1, p2) {
	return _in(0x3ce932e7, 0x37c145d6, prompt, p1, p2);
};

global.PromptSetHoldIndefinitelyMode = function (prompt) {
	return _in(0xea5ccf4e, 0xeb2f82d1, prompt);
};

global.PromptSetHoldMode = function (prompt, p1) {
	return _in(0x94073d5c, 0xa3f16b7b, prompt, p1);
};

global.PromptSetMashAutoFillMode = function (prompt, p1, p2) {
	return _in(0x6c39587d, 0x7cc66801, prompt, p1, p2);
};

global.PromptSetMashIndefinitelyMode = function (prompt) {
	return _in(0x7b66e893, 0x12727274, prompt);
};

global.PromptSetMashManualCanFailMode = function (prompt, p1, p2, p3, p4) {
	return _in(0x179dcf71, 0xf705da20, prompt, p1, p2, p3, p4);
};

global.PromptSetMashManualMode = function (prompt, p1, p2, p3, p4) {
	return _in(0x32df729d, 0x8bd3c1c6, prompt, p1, p2, p3, p4);
};

global.PromptSetMashManualModeDecaySpeed = function (prompt, p1) {
	return _in(0x7d393c24, 0x7fb9b431, prompt, p1);
};

global.PromptSetMashManualModeIncreasePerPress = function (prompt, p1) {
	return _in(0xa0d1d79c, 0x6036a855, prompt, p1);
};

global.PromptSetMashManualModePressedGrowthSpeed = function (prompt, p1) {
	return _in(0x56dbb26f, 0x98582c29, prompt, p1);
};

global.PromptSetMashMode = function (prompt, p1) {
	return _in(0xdf6423bf, 0x071c7f71, prompt, p1);
};

global.PromptSetMashWithResistanceCanFailMode = function (prompt, p1, p2, p3) {
	return _in(0xdc0cb602, 0xdeadba53, prompt, p1, p2, p3);
};

global.PromptSetMashWithResistanceMode = function (prompt, p1, p2, p3) {
	return _in(0xcd1bdff1, 0x5efa79f5, prompt, p1, p2, p3);
};

global.PromptSetOrderingAsInputType = function (prompt, p1) {
	return _in(0x2f385ecc, 0x5200938d, prompt, p1);
};

global.PromptSetPosition = function (prompt, p1, p2, p3) {
	return _in(0xae84c5ee, 0x2c384fb3, prompt, p1, p2, p3);
};

global.PromptSetPressedTimedMode = function (prompt, p1) {
	return _in(0x1473d3af, 0x51d54276, prompt, p1);
};

global.PromptSetPriority = function (prompt, p1) {
	return _in(0xca24f528, 0xd0d16289, prompt, p1);
};

global.PromptSetRotateMode = function (prompt, p1, p2) {
	return _in(0x7abe7095, 0xfb3d2581, prompt, p1, p2);
};

global.PromptSetSpinnerPosition = function (prompt, p1) {
	return _in(0x832cb510, 0xde546282, prompt, p1);
};

global.PromptSetSpinnerSpeed = function (prompt, p1) {
	return _in(0xac6586a7, 0xfdcd4b68, prompt, p1);
};

global.PromptSetStandardMode = function (prompt, p1) {
	return _in(0xcc665679, 0x9977741b, prompt, p1);
};

global.PromptSetStandardizedHoldMode = function (prompt, p1) {
	return _in(0x74c7d7b7, 0x2ed0d3cf, prompt, p1);
};

global.PromptSetTag = function (prompt, p1) {
	return _in(0xdec85c17, 0x4751292b, prompt, p1);
};

global.PromptSetTargetMode = function (prompt, p1, p2, p3) {
	return _in(0x5f6503d9, 0xcd2754eb, prompt, p1, p2, p3);
};

global.PromptSetTargetModeProgress = function (prompt, p1) {
	return _in(0x00123054, 0xbec8a30f, prompt, p1);
};

global.PromptSetTargetModeTarget = function (prompt, p1, p2) {
	return _in(0x5e019c45, 0xdd3b6a14, prompt, p1, p2);
};

global.PromptSetText = function (prompt, p1) {
	return _in(0x5dd02a83, 0x18420dd7, prompt, p1);
};

global.PromptSetTransportMode = function (prompt, p1) {
	return _in(0x876e4a35, 0xc73a6655, prompt, p1);
};

global.PromptSetUrgentPulsingEnabled = function (prompt, p1) {
	return _in(0xc5f428ee, 0x08fa7f2c, prompt, p1);
};

global.PromptSetVisible = function (prompt, p1) {
	return _in(0x71215acc, 0xfde075ee, prompt, p1);
};

global.PromptWasBeatModePressedInTimeWindow = function (prompt) {
	return _in(0x1fe4788a, 0xb1430c55, prompt, _r);
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
 * @param factory A function returning a list of archetypes.
 */
global.RegisterArchetypes = function (factory) {
	return _in(0x00000000, 0x3c2f9037, _mfr(factory));
};

/**
 * Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
 * Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).
 * The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
 * **Example result**:
 * ![](https://i.imgur.com/TaCnG09.png)
 * @param commandName The command you want to register.
 * @param handler A handler function that gets called whenever the command is executed.
 * @param restricted If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
 */
global.RegisterCommand = function (commandName, handler, restricted) {
	return _in(0x00000000, 0x5fa79b0f, _ts(commandName), _mfr(handler), restricted);
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
 * At this time, this function **should not be used in a live environment**.
 * @param factory A function returning a list of entities.
 */
global.RegisterEntities = function (factory) {
	return _in(0x00000000, 0x410da7d3, _mfr(factory));
};

/**
 * Registers a specified .gfx file as GFx font library.
 * The .gfx file has to be registered with the streamer already.
 * @param fileName The name of the .gfx file, without extension.
 */
global.RegisterFontFile = function (fileName) {
	return _in(0x00000000, 0x01b3a363, _ts(fileName));
};

/**
 * Registers a specified font name for use with text draw commands.
 * @param fontName The name of the font in the GFx font library.
 * @return An index to use with [SET_TEXT_FONT](#_0x66E0276CC5F6B9DA) and similar natives.
 */
global.RegisterFontId = function (fontName) {
	return _in(0x00000000, 0xacf6d8ee, _ts(fontName), _r, _ri);
};

global.RegisterHatedTargetsAroundPed = function (ped, radius) {
	return _in(0x9222f300, 0xbf8354fe, ped, _fv(radius));
};

global.RegisterNamedRendertarget = function (name, p1) {
	return _in(0x98af2bb6, 0xf62bd588, _ts(name), p1, _r);
};

global.RegisterNuiCallbackType = function (callbackType) {
	return _in(0x00000000, 0xcd03cda9, _ts(callbackType));
};

global.RegisterObjectScriptBrain = function (scriptName, modelHash, p2, activationRange, p4, p5) {
	return _in(0x16af9b4e, 0xeac3b305, _ts(scriptName), _ch(modelHash), p2, _fv(activationRange), p4, p5);
};

/**
 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
 * @param eventName An event name, or "\*" to disable HLL event filtering for this resource.
 */
global.RegisterResourceAsEventHandler = function (eventName) {
	return _in(0x00000000, 0xd233a168, _ts(eventName));
};

global.RegisterScriptWithAudio = function (p0) {
	return _in(0xc6ed9d50, 0x92438d91, p0);
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a dynamic streaming asset from the server with the GTA streaming module system.
 * @param resourceName The resource to add the asset to.
 * @param fileName A file name in the resource.
 * @param cacheString The string returned from `REGISTER_RESOURCE_ASSET` on the server.
 */
global.RegisterStreamingFileFromCache = function (resourceName, fileName, cacheString) {
	return _in(0x00000000, 0xcead2d4b, _ts(resourceName), _ts(fileName), _ts(cacheString));
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
 * @param kvsKey The KVP key in the current resource to register as an asset.
 */
global.RegisterStreamingFileFromKvs = function (kvsKey) {
	return _in(0x00000000, 0x1493dcc1, _ts(kvsKey));
};

/**
 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
 * Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
 * Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
 * @param registerAs The file name to register as, for example `asset.ydr`.
 * @param url The URL to fetch the asset from.
 */
global.RegisterStreamingFileFromUrl = function (registerAs, url) {
	return _in(0x00000000, 0xf44bfb95, _ts(registerAs), _ts(url));
};

global.RegisterTarget = function (p0, p1, p2) {
	return _in(0x2f25d9ae, 0xfa34fba2, p0, p1, p2);
};

global.ReleaseFlowBlock = function (p0) {
	return _in(0xf320a77d, 0xd5f781df, p0);
};

global.ReleaseNamedRendertarget = function (name) {
	return _in(0x0e692ee6, 0x1761361f, _ts(name), _r);
};

global.ReleaseNamedScriptAudioBank = function (audioBank) {
	return _in(0x77ed1706, 0x67f50170, _ts(audioBank));
};

global.ReleaseScriptAudioBank = function () {
	return _in(0x7a2d8ad0, 0xa9eb9c3f);
};

global.ReleaseSoundId = function (soundId) {
	return _in(0x353fc880, 0x830b88fa, soundId);
};

global.RemoveAllCoverBlockingAreas = function () {
	return _in(0xdb6708c0, 0xb46f56d8);
};

global.RemoveAllPedWeapons = function (ped, p1, p2) {
	return _in(0xf25df915, 0xfa38c5f3, ped, p1, p2);
};

global.RemoveAllPickupsOfType = function (pickupHash) {
	return _in(0x27f9d613, 0x092159cf, _ch(pickupHash));
};

global.RemoveAllShockingEvents = function (p0) {
	return _in(0xd47a168c, 0x2ab90dc4, p0);
};

global.RemoveAnimDict = function (animDict) {
	return _in(0x47631450, 0x53a33d46, _ts(animDict));
};

global.RemoveAnimSceneEntity = function (animScene, p1, p2) {
	return _in(0x2bf96692, 0xc67f3e53, animScene, p1, p2);
};

global.RemoveBlip = function (blip) {
	return _in(0xf2c3c9da, 0x47aaa54a, _ii(blip) /* may be optional */);
};

global.RemoveClipSet = function (clipSet) {
	return _in(0x817fa1b1, 0xee7cd6f0, _ts(clipSet));
};

global.RemoveCoverPoint = function (coverpoint) {
	return _in(0xae287c92, 0x3d891715, coverpoint);
};

global.RemoveCurrentRise = function (p0) {
	return _in(0x4bef8dd7, 0x5af6c71c, p0);
};

global.RemoveDecal = function (decal) {
	return _in(0x49a72055, 0x2eb0bb88, decal);
};

global.RemoveDecalsFromObject = function (obj) {
	return _in(0xfb8972ba, 0xe0013140, obj);
};

global.RemoveDecalsInRange = function (x, y, z, range) {
	return _in(0x86de59fa, 0x02902b40, _fv(x), _fv(y), _fv(z), _fv(range));
};

global.RemoveDispatchSpawnBlockingArea = function (p0) {
	return _in(0x49f751f6, 0x868ddc5b, p0);
};

global.RemoveDoorFromSystem = function (doorHash) {
	return _in(0x464d8e14, 0x27156fe4, _ch(doorHash));
};

global.RemoveEntityFromAudioMixGroup = function (entity, p1) {
	return _in(0x18eb48cf, 0xc41f2ea0, entity, _fv(p1));
};

global.RemoveForcedObject = function (p0, p1, p2, p3, p4) {
	return _in(0x553fa683, 0xf2bcd814, p0, p1, p2, p3, p4);
};

global.RemoveFromItemset = function (itemset, p1) {
	return _in(0xc5baa432, 0xb429dc24, itemset, p1);
};

global.RemoveGroup = function (groupId) {
	return _in(0x8eb2f690, 0x76af7053, groupId);
};

global.RemoveGuardZone = function (name) {
	return _in(0x67ebdd95, 0x8835956c, _ts(name));
};

global.RemoveImap = function (imapHash) {
	return _in(0x5a3e5cf7, 0xb4014b96, _ch(imapHash));
};

global.RemoveImap_2 = function (imapHash) {
	return _in(0x431e3ab7, 0x60629b34, _ch(imapHash));
};

global.RemoveModelHide = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x3f38a985, 0x76f6213a, p0, p1, p2, p3, p4, p5);
};

global.RemoveModelSwap = function (x, y, z, radius, originalModel, newModel, p6) {
	return _in(0x824e1c26, 0xa14cb817, _fv(x), _fv(y), _fv(z), _fv(radius), _ch(originalModel), _ch(newModel), p6);
};

global.RemoveMpGamerTag = function (gamerTagId) {
	return _in(0x839bfd7d, 0x7e49fe09, gamerTagId);
};

global.RemoveNamedPtfxAsset = function (fxNameHash) {
	return _in(0xf2086682, 0x9e1c81a2, _ch(fxNameHash));
};

global.RemoveNavmeshBlockingObject = function (p0) {
	return _in(0x46399a78, 0x95957c0e, p0);
};

global.RemoveParticleFx = function (ptfxHandle, p1) {
	return _in(0x459598f5, 0x79c98929, ptfxHandle, p1);
};

global.RemoveParticleFxFromEntity = function (entity) {
	return _in(0x92884b4a, 0x49d81325, entity);
};

global.RemoveParticleFxInRange = function (X, Y, Z, radius) {
	return _in(0x87b5905e, 0xca623b68, _fv(X), _fv(Y), _fv(Z), _fv(radius));
};

global.RemovePedDefensiveArea = function (ped, toggle) {
	return _in(0x74d4e028, 0x107450a9, ped, toggle);
};

global.RemovePedFromGroup = function (ped) {
	return _in(0xed74007f, 0xfb146bc2, ped);
};

global.RemovePickup = function (pickup) {
	return _in(0x3288d8ac, 0xaecd2ab2, pickup);
};

global.RemovePopMultiplierArea = function (id, p1) {
	return _in(0x88cb4843, 0x64efb37a, id, p1);
};

global.RemovePortalSettingsOverride = function (p0) {
	return _in(0xb4bbfd9c, 0xd8b3922b, _ts(p0));
};

global.RemovePtfxAsset = function () {
	return _in(0x042f9049, 0xea419e86);
};

global.RemoveRelationshipGroup = function (groupHash) {
	return _in(0xb6ba2444, 0xab393da2, _ch(groupHash));
};

/**
 * Experimental natives, please do not use in a live environment.
 * @param origTxd 
 * @param origTxn 
 */
global.RemoveReplaceTexture = function (origTxd, origTxn) {
	return _in(0x00000000, 0xa896b20a, _ts(origTxd), _ts(origTxn));
};

global.RemoveScenarioBlockingArea = function (p0, p1) {
	return _in(0x31d16b74, 0xc6e29d66, p0, p1);
};

global.RemoveScenarioBlockingAreas = function () {
	return _in(0xd37401d7, 0x8a929a49);
};

global.RemoveScriptFire = function (fireHandle) {
	return _in(0x790125c3, 0x6e194069, fireHandle);
};

global.RemoveShockingEvent = function (event) {
	return _in(0xe8bb3cc2, 0x53a34559, event, _r);
};

global.RemoveShockingEventSpawnBlockingAreas = function () {
	return _in(0xdb249021, 0x652420c5);
};

global.RemoveSpeedZone = function (speedzone) {
	return _in(0xfe9ab335, 0x4ace6c9c, speedzone, _r);
};

global.RemoveStealthKill = function (hash, p1) {
	return _in(0x7acf124c, 0x12a2b045, _ch(hash), p1);
};

global.RemoveVehicleAsset = function (vehicleAsset) {
	return _in(0x888a4e67, 0x5b38f5ad, vehicleAsset);
};

global.RemoveVehicleRecording = function (p0, p1) {
	return _in(0x139e3575, 0x5418f6aa, p0, _ii(p1) /* may be optional */);
};

global.RemoveVehicleWindow = function (vehicle, windowIndex) {
	return _in(0x745f15a2, 0x15f2ddf1, vehicle, windowIndex);
};

global.RemoveVehiclesFromGeneratorsInArea = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xc619a446, 0x39bc0cb4, p0, p1, p2, p3, p4, p5);
};

global.RemoveWaypointRecording = function (name) {
	return _in(0xff1b8b4a, 0xa1c25dc8, _ts(name));
};

global.RemoveWeaponComponentFromWeaponObject = function (p0, p1) {
	return _in(0xf7d82b0d, 0x66777611, p0, p1);
};

global.RemoveWeaponFromPed = function (ped, weaponHash, p2, p3) {
	return _in(0x4899cb08, 0x8edf59b8, ped, _ch(weaponHash), p2, _ch(p3));
};

global.RenderFirstPersonCam = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x8c7c7ff7, 0xcf0e5153, p0, p1, p2, p3, p4, p5);
};

global.RenderScriptCams = function (render, ease, easeTime, p3, p4, p5) {
	return _in(0x33281167, 0xe4942e4f, render, ease, easeTime, p3, p4, p5);
};

global.RequestAnimDict = function (animDict) {
	return _in(0xa862a2ad, 0x321f94b4, _ts(animDict));
};

global.RequestClipSet = function (clipSet) {
	return _in(0xef7611b5, 0x7a820126, _ts(clipSet));
};

global.RequestCollisionAtCoord = function (x, y, z) {
	return _in(0x0a3720f1, 0x62a033c9, _fv(x), _fv(y), _fv(z));
};

global.RequestCollisionForModel = function (model) {
	return _in(0xf1767be3, 0x7f661551, _ch(model));
};

global.RequestFlowBlock = function (p0) {
	return _in(0xc0081b34, 0xe395ce48, p0, _r, _ri);
};

global.RequestImap = function (imapHash) {
	return _in(0x59767c5a, 0x7a9ae6da, _ch(imapHash));
};

global.RequestImap_2 = function (imapHash) {
	return _in(0x9e211a37, 0x8f95c97c, _ch(imapHash));
};

global.RequestModel = function (model, p1) {
	return _in(0xfa28fe3a, 0x6246fc30, _ch(model), p1);
};

global.RequestNamedPtfxAsset = function (fxNameHash) {
	return _in(0xf2b2353b, 0xbc0d4e8f, _ch(fxNameHash));
};

global.RequestPedVehicleVisibilityTracking = function (ped, p1) {
	return _in(0x2bc338a7, 0xb21f4608, ped, p1);
};

global.RequestPedVisibilityTracking = function (ped) {
	return _in(0x7d7a2e43, 0xe74e2eb8, ped);
};

global.RequestPtfxAsset = function () {
	return _in(0x001ff438, 0x43028e0c);
};

global.RequestScript = function (scriptName) {
	return _in(0x46ed607d, 0xdd40d7fe, _ts(scriptName));
};

global.RequestScriptAudioBank = function (p0) {
	return _in(0x2f844a8b, 0x08d76685, p0, _r);
};

global.RequestScriptWithNameHash = function (scriptHash) {
	return _in(0xf6b9ce3f, 0x8d5b9b74, _ch(scriptHash));
};

global.RequestStreamedTextureDict = function (textureDict, p1) {
	return _in(0xc1ba29df, 0x5631b0f8, _ts(textureDict), p1);
};

global.RequestTaskMoveNetworkStateTransition = function (ped, name) {
	return _in(0xd01015c7, 0x316ae176, ped, _ts(name));
};

global.RequestVehicleAsset = function (vehicleHash, vehicleAsset) {
	return _in(0x81a15811, 0x460fab3a, _ch(vehicleHash), vehicleAsset);
};

global.RequestVehicleHighDetailModel = function (vehicle) {
	return _in(0x84b81ef7, 0x8bd22357, vehicle);
};

global.RequestVehicleRecording = function (i, name) {
	return _in(0xc474cf16, 0xeda45dc9, i, _ts(name));
};

global.RequestWaypointRecording = function (name) {
	return _in(0x9eefb62e, 0xb27b5792, _ts(name));
};

global.ReserveNetworkMissionObjects = function (amount) {
	return _in(0x4e5c93bd, 0x0c32fbf8, amount);
};

global.ReserveNetworkMissionPeds = function (amount) {
	return _in(0xb60feba4, 0x5333d36f, amount);
};

global.ReserveNetworkMissionVehicles = function (amount) {
	return _in(0x76b02e21, 0xed27a469, amount);
};

global.ResetAiWeaponDamageModifier = function () {
	return _in(0xea16670e, 0x7ba4743c);
};

global.ResetAnimScene = function (animScene, p1) {
	return _in(0x8fdf221f, 0x13537936, animScene, _ts(p1));
};

global.ResetBenchmarkRecording = function () {
	return _in(0xecbabd03, 0x07fb216f);
};

global.ResetDispatchIdealSpawnDistance = function () {
	return _in(0xc7817264, 0xbc4b6377);
};

global.ResetEntityAlpha = function (entity) {
	return _in(0x744b9ef4, 0x4779d9ab, entity);
};

global.ResetGroupFormationDefaultSpacing = function (groupHandle) {
	return _in(0x63dab4cc, 0xb3273205, groupHandle);
};

/**
 * Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
 * @param index Zoom level index.
 */
global.ResetMapZoomDataLevel = function (index) {
	return _in(0x00000000, 0x11a5b7ed, index);
};

global.ResetParticleFxOverride = function (name) {
	return _in(0x274b3dab, 0xf7e72def, _ts(name));
};

global.ResetPausedRenderphases = function () {
	return _in(0xccd9aad8, 0x5e1b559e);
};

global.ResetPedInVehicleContext = function (ped) {
	return _in(0x22ef8ff8, 0x778030eb, ped);
};

global.ResetPedLastVehicle = function (ped) {
	return _in(0xbb8de8cf, 0x6a8dd8bb, ped);
};

global.ResetPedRagdollTimer = function (ped) {
	return _in(0x9fa4664c, 0xf62e47e8, ped);
};

global.ResetPedWeaponMovementClipset = function (ped) {
	return _in(0x97b0db5b, 0x4aa74e77, ped);
};

global.ResetPlayerArrestState = function (player) {
	return _in(0x12917931, 0xc31f1750, player);
};

global.ResetPlayerInputGait = function (player) {
	return _in(0x61a2eeca, 0xb274829b, player);
};

global.ResetScenarioGroupsEnabled = function () {
	return _in(0xdd902d03, 0x49afad3a);
};

global.ResetScenarioTypesEnabled = function () {
	return _in(0x0d40ee2a, 0x7f2b2d6d);
};

global.ResetScriptTimeWithinFrame = function () {
	return _in(0x1411a7cb, 0xc3a6eb7b);
};

global.ResetVehicleStuckTimer = function (vehicle, nullAttributes) {
	return _in(0x23298b46, 0x8f7d88b6, vehicle, nullAttributes);
};

global.ResetWantedLevelDifficulty = function (player) {
	return _in(0x062d14f1, 0x8e8b0cae, player);
};

global.RestartScriptedConversation = function (p0) {
	return _in(0x9aeb285d, 0x1818c9ac, p0);
};

global.RestorePlayerStamina = function (player, p1) {
	return _in(0xc41f4b6e, 0x23fe6a4a, player, _fv(p1));
};

global.ResumeAnimSceneFromLastCheckpoint = function (animScene) {
	return _in(0x8e1ba705, 0xf63c1925, animScene);
};

global.ResurrectPed = function (ped) {
	return _in(0x71bc8e83, 0x8b9c6035, ped);
};

global.ReviveInjuredPed = function (ped) {
	return _in(0x8d8acd83, 0x88cd99ce, ped);
};

global.RopeDrawShadowEnabled = function (toggle) {
	return _in(0xf159a638, 0x06bb5ba8, _i, toggle);
};

global.RopeForceLength = function (ropeId, length) {
	return _in(0xd009f759, 0xa723db1b, ropeId, _fv(length));
};

global.RopeSetUpdateOrder = function (ropeId, p1) {
	return _in(0xdc57a637, 0xa20006ed, ropeId, p1);
};

global.Round = function (value) {
	return _in(0xf2db717a, 0x73826179, _fv(value), _r, _ri);
};

global.SaveBenchmarkRecording = function () {
	return _in(0xf4743e2e, 0xcc02b3da);
};

global.ScFeedSubmitPresetMessage = function (type, subType) {
	return _in(0xefb64240, 0xf6b17817, type, subType, _r, _ri);
};

global.ScInboxMessageGetDataInt = function (p0, context, out) {
	return _in(0x95bb39c4, 0xda99f348, p0, _ts(context), _ii(out) /* may be optional */, _r);
};

global.ScInboxMessageGetDataString = function (p0, context, out) {
	return _in(0x66f77fd5, 0x8506ff6b, p0, _ts(context), _ts(out), _r);
};

global.ScInboxMessageGetString = function () {
	return _in(0x176d0776, 0x85cd83e4, _r, _s);
};

global.ScInboxMessageInit = function (p0) {
	return _in(0xff92537c, 0x4ddc1241, p0, _r, _ri);
};

global.ScInboxMessagePop = function (p0) {
	return _in(0x63cac501, 0xfff66dc4, p0, _r);
};

global.ScProfanityCheckString = function (string, token) {
	return _in(0x9c74ac9d, 0x87b3fff4, _ts(string), _ii(token) /* may be optional */, _r);
};

global.ScProfanityGetCheckIsPending = function (token) {
	return _in(0x3a10bcd0, 0xc8aa0b82, token, _r);
};

global.ScProfanityGetCheckIsValid = function (token) {
	return _in(0x08c8052a, 0xf40c4247, token, _r);
};

global.ScProfanityGetStringPassed = function (token) {
	return _in(0xf302973b, 0xb8be70e6, token, _r);
};

global.ScProfanityGetStringStatus = function (token) {
	return _in(0x0cf3bfb9, 0x9ebbe5b1, token, _r, _ri);
};

global.ScriptThreadIteratorGetNextThreadId = function () {
	return _in(0x3ce3fb16, 0x7e837d7c, _r, _ri);
};

global.ScriptThreadIteratorReset = function () {
	return _in(0x39382eb8, 0xdcd8684d);
};

/**
 * Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
 * @param duiObject The DUI browser handle.
 * @param jsonString The message, encoded as JSON.
 */
global.SendDuiMessage = function (duiObject, jsonString) {
	return _in(0x00000000, 0xcd380da9, duiObject, _ts(jsonString));
};

/**
 * Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
 * @param duiObject The DUI browser handle.
 * @param button Either `'left'`, `'middle'` or `'right'`.
 */
global.SendDuiMouseDown = function (duiObject, button) {
	return _in(0x00000000, 0x5d01f191, duiObject, _ts(button));
};

/**
 * Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
 * @param duiObject The DUI browser handle.
 * @param x The mouse X position.
 * @param y The mouse Y position.
 */
global.SendDuiMouseMove = function (duiObject, x, y) {
	return _in(0x00000000, 0xd9d7a0aa, duiObject, x, y);
};

/**
 * Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
 * @param duiObject The DUI browser handle.
 * @param button Either `'left'`, `'middle'` or `'right'`.
 */
global.SendDuiMouseUp = function (duiObject, button) {
	return _in(0x00000000, 0x1d735b93, duiObject, _ts(button));
};

/**
 * Injects a 'mouse wheel' event for a DUI object.
 * @param duiObject The DUI browser handle.
 * @param deltaY The wheel Y delta.
 * @param deltaX The wheel X delta.
 */
global.SendDuiMouseWheel = function (duiObject, deltaY, deltaX) {
	return _in(0x00000000, 0x2d62133a, duiObject, deltaY, deltaX);
};

/**
 * Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
 * @param jsonString The JSON-encoded message.
 * @return A success value.
 */
global.SendLoadingScreenMessage = function (jsonString) {
	return _in(0x00000000, 0x8bbe6cc0, _ts(jsonString), _r);
};

global.SendNuiMessage = function (jsonString) {
	return _in(0x00000000, 0x78608acb, _ts(jsonString), _r);
};

global.SetActivateObjectPhysicsAsSoonAsItIsUnfrozen = function (object, toggle) {
	return _in(0x406137f8, 0xef90eaf5, object, toggle);
};

global.SetAiMeleeWeaponDamageModifier = function (modifier) {
	return _in(0x66460ded, 0xdd417254, _fv(modifier));
};

global.SetAiWeaponDamageModifier = function (value) {
	return _in(0x1b1e2a40, 0xa65b8521, _fv(value));
};

global.SetAirDragMultiplierForPlayersVehicle = function (player, multiplier) {
	return _in(0x5da6500f, 0xe849da16, player, _fv(multiplier));
};

global.SetAllRandomPedsFlee = function (player, toggle) {
	return _in(0xe705309b, 0x8c6445a4, player, toggle);
};

global.SetAllRandomPedsFleeThisFrame = function (player) {
	return _in(0xd5c198a6, 0x2f1deb0a, player);
};

global.SetAllVehicleGeneratorsActive = function () {
	return _in(0x3d596e6e, 0x88a02c24);
};

global.SetAllVehicleGeneratorsActiveInArea = function (x1, y1, z1, x2, y2, z2, p6, p7) {
	return _in(0xbbb134fb, 0x9d50c0cc, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), p6, p7);
};

global.SetAmbientPedRangeMultiplierThisFrame = function (multiplier) {
	return _in(0x0b919e1f, 0xb47cc4e0, _fv(multiplier));
};

global.SetAmbientVoiceName = function (ped, name) {
	return _in(0x6c8065a3, 0xb780185b, ped, _ts(name));
};

global.SetAmbientZoneListState = function (p1, p2) {
	return _in(0x9748fa4d, 0xe50cce3e, _i, p1, p2);
};

global.SetAmbientZoneListStatePersistent = function (ambientZone, p1, p2) {
	return _in(0xf3638dae, 0x8c4045e1, _ts(ambientZone), p1, p2);
};

global.SetAmbientZoneState = function (zoneName, p1, p2) {
	return _in(0xbda07e59, 0x50085e46, _ts(zoneName), p1, p2);
};

global.SetAmbientZoneStatePersistent = function (ambientZone, p1, p2) {
	return _in(0x1d665042, 0x0cec9d3b, _ts(ambientZone), p1, p2);
};

global.SetAmmoInClip = function (ped, weaponHash, ammo) {
	return _in(0xdcd2a934, 0xd65cb497, ped, _ch(weaponHash), ammo, _r);
};

global.SetAnimRate = function (p0, p1, p2, p3) {
	return _in(0x032d49c5, 0xe359c847, p0, _fv(p1), p2, p3);
};

global.SetAnimSceneBool = function (animScene, p1, p2, p3) {
	return _in(0x519e96c2, 0xc68b404b, animScene, p1, p2, p3);
};

global.SetAnimSceneEntity = function (animScene, p1, p2, p3) {
	return _in(0x8b720ad4, 0x51ca2ab3, animScene, p1, p2, p3);
};

global.SetAnimSceneFloat = function (animScene, p1, p2, p3, p4) {
	return _in(0x6bc5104e, 0x68cbefe8, animScene, p1, p2, p3, p4);
};

global.SetAnimSceneInt = function (animScene, p1, p2, p3) {
	return _in(0x3a379d21, 0x66cf5b92, animScene, p1, p2, p3);
};

global.SetAnimSceneOrigin = function (animScene, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x020894bf, 0x17a02ef2, animScene, p1, p2, p3, p4, p5, p6, p7);
};

global.SetAnimScenePaused = function (animScene, p1) {
	return _in(0xd6824b7d, 0x24dc0ce0, animScene, p1);
};

global.SetAnimScenePlaybackList = function (animScene, p1) {
	return _in(0xab5e7cab, 0x074d6b84, animScene, p1);
};

global.SetAnimSceneRate = function (animScene, p1) {
	return _in(0x75820b80, 0x1cff262a, animScene, p1);
};

global.SetAnimalMood = function (animal, mood) {
	return _in(0xcc97b292, 0x85b1dc3b, animal, mood);
};

global.SetAnimalTuningBoolParam = function (animal, p1, p2) {
	return _in(0x9ff1e042, 0xfa597187, animal, p1, p2);
};

global.SetAnimalTuningFloatParam = function (animal, p1, p2) {
	return _in(0xcbda22c8, 0x7977244f, animal, p1, _fv(p2));
};

global.SetArtificialLightsState = function (state) {
	return _in(0xb2797619, 0xa7c7747b, state);
};

global.SetAttributeBaseRank = function (p0, p1, p2) {
	return _in(0x5da12e02, 0x5d47d4e5, p0, p1, p2);
};

global.SetAttributeBonusRank = function (p0, p1, p2) {
	return _in(0x920f9488, 0xbd115efb, p0, p1, p2);
};

global.SetAttributePoints = function (p0, p1, p2) {
	return _in(0x09a59688, 0xc26d88df, p0, p1, p2);
};

global.SetAudioFlag = function (flagName, toggle) {
	return _in(0xb9efd5c2, 0x5018725a, _ts(flagName), toggle);
};

global.SetAudioSceneVariable = function (scene, variable, value) {
	return _in(0xef21a9ef, 0x089a2668, _ts(scene), _ts(variable), _fv(value));
};

global.SetAudioVehiclePriority = function (vehicle, p1) {
	return _in(0xe5564483, 0xe407f914, vehicle, p1);
};

global.SetBit = function (offset) {
	return _in(0xf73fbe48, 0x45c43b5b, _i, offset);
};

global.SetBitsInRange = function (rangeStart, rangeEnd, p3) {
	return _in(0x324dc1ce, 0xf57f31e6, _i, rangeStart, rangeEnd, p3);
};

global.SetBlipCoords = function (blip, posX, posY, posZ) {
	return _in(0x4ff674f5, 0xe23d49ce, blip, _fv(posX), _fv(posY), _fv(posZ));
};

global.SetBlipFlashTimer = function (p0, p1, p2) {
	return _in(0x02ff4cf4, 0x3b7209d1, p0, p1, p2);
};

global.SetBlipFlashes = function (p0, p1, p2) {
	return _in(0x0df2b55f, 0x717ddb10, p0, p1, p2, _r, _ri);
};

global.SetBlipNameFromTextFile = function (blip, gxtEntry) {
	return _in(0x0a062d6d, 0x7c0b2c2c, blip, _ts(gxtEntry));
};

global.SetBlipNameToPlayerName = function (blip, player) {
	return _in(0x093dd5a3, 0x1bc2b459, blip, player);
};

global.SetBlipRotation = function (blip, rotation) {
	return _in(0x6049966a, 0x94fbe706, blip, rotation);
};

global.SetBlipScale = function (blip, scale) {
	return _in(0xd3874416, 0x7b2fa257, blip, _fv(scale));
};

global.SetBlipSprite = function (p0, p1, p2) {
	return _in(0x74f74d32, 0x07ed525c, p0, p1, p2);
};

global.SetBlockOfPlayerBits = function (p0, p1, p2) {
	return _in(0xc6dfb8c0, 0x4c86d5a5, p0, p1, p2);
};

global.SetBlockingOfNonTemporaryEvents = function (ped, toggle) {
	return _in(0x9f8aa94d, 0x6d97dbf4, ped, toggle);
};

global.SetBoatAnchor = function (vehicle, toggle) {
	return _in(0xaeab044f, 0x05b92659, vehicle, toggle);
};

global.SetBoatAnchorBuoyancyCoefficient = function (vehicle, value) {
	return _in(0xe3261532, 0x550d6a9f, vehicle, _fv(value));
};

global.SetBoatFrozenWhenAnchored = function (p0, p1, p2) {
	return _in(0x286771f3, 0x059a37a7, p0, p1, p2);
};

global.SetBoatSinksWhenWrecked = function (vehicle, toggle) {
	return _in(0x62a6d317, 0xa011ea1d, vehicle, toggle);
};

global.SetCamActive = function (cam, active) {
	return _in(0x87295bca, 0x613800c8, cam, active);
};

global.SetCamActiveWithInterp = function (camTo, camFrom, duration, easeLocation, easeRotation) {
	return _in(0x8b15ae29, 0x87c1ac8f, camTo, camFrom, duration, easeLocation, easeRotation);
};

global.SetCamAffectsAiming = function (cam, toggle) {
	return _in(0x3cb9e8bd, 0xe5e76f33, cam, toggle);
};

global.SetCamCoord = function (cam, posX, posY, posZ) {
	return _in(0xf9ee7d41, 0x9ee49de6, cam, _fv(posX), _fv(posY), _fv(posZ));
};

global.SetCamFarClip = function (cam, farClip) {
	return _in(0x5e32817b, 0xf6302111, cam, _fv(farClip));
};

global.SetCamFov = function (cam, fieldOfView) {
	return _in(0x27666e59, 0x88d9d429, cam, _fv(fieldOfView));
};

global.SetCamMotionBlurStrength = function (cam, strength) {
	return _in(0x45fd8913, 0x64181f9e, cam, _fv(strength));
};

global.SetCamNearClip = function (cam, nearClip) {
	return _in(0xa9240282, 0x72a61364, cam, _fv(nearClip));
};

global.SetCamParams = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) {
	return _in(0xa47bbfff, 0xb83d4d0a, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
};

global.SetCamRot = function (cam, rotX, rotY, rotZ, rotationOrder) {
	return _in(0x63dfa681, 0x0ad78719, cam, _fv(rotX), _fv(rotY), _fv(rotZ), rotationOrder);
};

global.SetCamSplineDuration = function (cam, timeDuration) {
	return _in(0xff631165, 0x2ca91015, cam, timeDuration);
};

global.SetCamSplinePhase = function (cam, p1) {
	return _in(0xf1898a68, 0xe7c15636, cam, _fv(p1));
};

global.SetCamSplineSmoothingStyle = function (cam, smoothingStyle) {
	return _in(0x84b36456, 0x18e726b0, cam, smoothingStyle);
};

global.SetCanAutoVaultOnEntity = function (entity, toggle) {
	return _in(0x80646744, 0xfa88f9d7, entity, toggle);
};

global.SetCanClimbOnEntity = function (entity, toggle) {
	return _in(0x24aed2a6, 0x08f93c4c, entity, toggle);
};

global.SetCheckpointIconRgba = function (checkpoint, red, green, blue, alpha) {
	return _in(0x99aff172, 0x22d4deb4, checkpoint, red, green, blue, alpha);
};

global.SetCheckpointRgba = function (checkpoint, red, green, blue, alpha) {
	return _in(0xcaafc225, 0xe33b1d15, checkpoint, red, green, blue, alpha);
};

global.SetCinematicButtonActive = function (p0) {
	return _in(0xb90411f4, 0x80457a6c, p0);
};

global.SetCinematicModeActive = function (p0) {
	return _in(0xce7a90b1, 0x60f75046, p0);
};

global.SetClockDate = function (day, month, year) {
	return _in(0x02ad3092, 0x562941e2, day, month, year);
};

global.SetClockTime = function (hour, minute, second) {
	return _in(0x3a52c59f, 0xfb2deed8, hour, minute, second);
};

global.SetCombatFloat = function (ped, combatType, p2) {
	return _in(0xff41b4b1, 0x41ed981c, ped, combatType, _fv(p2));
};

global.SetControlGroupColor = function (padIndex, red, green, blue) {
	return _in(0x8290252f, 0xff36acb5, padIndex, red, green, blue);
};

global.SetControlNormal = function (padIndex, control, amount) {
	return _in(0xe8a25867, 0xfba3b05e, padIndex, _ch(control), _fv(amount), _r);
};

global.SetCreateRandomCops = function (toggle) {
	return _in(0x102e68b2, 0x024d536d, toggle);
};

global.SetCreditsActive = function (toggle) {
	return _in(0xd37becf8, 0x62da726f, toggle);
};

global.SetCurrentPedVehicleWeapon = function (ped, weaponHash) {
	return _in(0x75c55983, 0xc2c39daa, ped, _ch(weaponHash), _r);
};

global.SetCurrentPedWeapon = function (ped, weaponHash, equipNow, p3, p4, p5) {
	return _in(0xadf692b2, 0x54977c0c, ped, _ch(weaponHash), equipNow, p3, p4, p5);
};

global.SetDamping = function (entity, vertex, value) {
	return _in(0xeea3b200, 0xa6feb65b, entity, vertex, _fv(value));
};

global.SetDecisionMaker = function (ped, name) {
	return _in(0x8ae2f981, 0xcddb8fa4, ped, _ch(name));
};

global.SetDisableBreaking = function (object, toggle) {
	return _in(0x5cec1a84, 0x620e7d5b, object, toggle);
};

global.SetDisableFragDamage = function (object, toggle) {
	return _in(0x01ba3aed, 0x21c16cfb, object, toggle);
};

global.SetDisableRandomTrainsThisFrame = function (toggle) {
	return _in(0xd4288603, 0xe8766ff7, toggle);
};

global.SetDisableVehicleEngineFires = function (vehicle, p1) {
	return _in(0xd146ee5f, 0x2b06b95e, vehicle, p1);
};

global.SetDisableVehiclePetrolTankDamage = function (vehicle, toggle) {
	return _in(0x5795fbe7, 0xa2001c14, vehicle, toggle);
};

global.SetDisableVehiclePetrolTankFires = function (vehicle, toggle) {
	return _in(0xb70986ab, 0x19b04aff, vehicle, toggle);
};

/**
 * This native sets the app id for the discord rich presence implementation.
 */
global.SetDiscordAppId = function (appId) {
	return _in(0x00000000, 0x6a02254d, _ts(appId));
};

/**
 * This native sets the image asset for the discord rich presence implementation.
 * @param assetName The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
 */
global.SetDiscordRichPresenceAsset = function (assetName) {
	return _in(0x00000000, 0x53dfd530, _ts(assetName));
};

/**
 * This native sets the small image asset for the discord rich presence implementation.
 * @param assetName The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
 */
global.SetDiscordRichPresenceAssetSmall = function (assetName) {
	return _in(0x00000000, 0xf61d04c4, _ts(assetName));
};

/**
 * This native sets the hover text of the small image asset for the discord rich presence implementation.
 * @param text Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
 */
global.SetDiscordRichPresenceAssetSmallText = function (text) {
	return _in(0x00000000, 0x35e62b6a, _ts(text));
};

/**
 * This native sets the hover text of the image asset for the discord rich presence implementation.
 * @param text Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
 */
global.SetDiscordRichPresenceAssetText = function (text) {
	return _in(0x00000000, 0xb029d2fa, _ts(text));
};

global.SetDispatchIdealSpawnDistance = function (p0) {
	return _in(0xeab6823b, 0x82fbd283, _fv(p0));
};

global.SetDriveTaskCruiseSpeed = function (driver, cruiseSpeed) {
	return _in(0x5c9b84bd, 0x7d31d908, driver, _fv(cruiseSpeed));
};

global.SetDriveTaskMaxCruiseSpeed = function (p0, p1) {
	return _in(0x404a5aa9, 0xb9f0b746, p0, _fv(p1));
};

global.SetDrivebyTaskTarget = function (shootingPed, targetPed, targetVehicle, x, y, z) {
	return _in(0xe5b30211, 0x4d8162ee, shootingPed, targetPed, targetVehicle, _fv(x), _fv(y), _fv(z));
};

/**
 * Navigates the specified DUI browser to a different URL.
 * @param duiObject The DUI browser handle.
 * @param url The new URL.
 */
global.SetDuiUrl = function (duiObject, url) {
	return _in(0x00000000, 0xf761d9f3, duiObject, _ts(url));
};

global.SetEnableBoundAnkles = function (ped, toggle) {
	return _in(0xc52e0f85, 0x5c58fc2e, ped, toggle);
};

global.SetEnableHandcuffs = function (ped, p1, p2) {
	return _in(0xdf1af8b5, 0xd56542fa, ped, p1, p2);
};

global.SetEnableSpeedRestrainForWaypointRecordingLeader = function (p0, p1) {
	return _in(0x295f03dc, 0x97beebc1, p0, p1);
};

global.SetEntityAlpha = function (entity, alphaLevel, skin) {
	return _in(0x0df7692b, 0x1d9e7ba7, entity, alphaLevel, skin);
};

global.SetEntityAlwaysPrerender = function (entity, toggle) {
	return _in(0xacad101e, 0x1fb66689, entity, toggle);
};

global.SetEntityAsMissionEntity = function (entity, p1, p2) {
	return _in(0xdc19c288, 0x082e586e, entity, p1, p2);
};

global.SetEntityAsNoLongerNeeded = function (entity) {
	return _in(0x4971d2f8, 0x162b9674, _ii(entity) /* may be optional */);
};

global.SetEntityCanBeDamaged = function (entity, toggle) {
	return _in(0x0d06d522, 0xb90e861f, entity, toggle);
};

global.SetEntityCanBeDamagedByRelationshipGroup = function (entity, bCanBeDamaged, relGroup) {
	return _in(0x0ef1afb1, 0x8649e015, entity, bCanBeDamaged, relGroup);
};

global.SetEntityCanBeTargetedWithoutLos = function (entity, toggle) {
	return _in(0x6d09f32e, 0x284d0fb7, entity, toggle);
};

global.SetEntityCollision = function (entity, toggle, keepPhysics) {
	return _in(0xf66f8209, 0x09453b8c, entity, toggle, keepPhysics);
};

global.SetEntityCompletelyDisableCollision = function (entity, p1, p2) {
	return _in(0xe0580ec8, 0x4813875a, entity, p1, p2);
};

global.SetEntityCoords = function (entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) {
	return _in(0x06843da7, 0x060a026b, entity, _fv(xPos), _fv(yPos), _fv(zPos), xAxis, yAxis, zAxis, clearArea);
};

global.SetEntityCoordsNoOffset = function (entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) {
	return _in(0x239a3351, 0xac1da385, entity, _fv(xPos), _fv(yPos), _fv(zPos), xAxis, yAxis, zAxis);
};

global.SetEntityDynamic = function (entity, toggle) {
	return _in(0xfbfc4473, 0xf66ce344, entity, toggle);
};

global.SetEntityHasGravity = function (entity, toggle) {
	return _in(0x0cedb728, 0xa1083fa7, entity, toggle);
};

global.SetEntityHeading = function (entity, heading) {
	return _in(0xcf2b9c06, 0x45c4651b, entity, _fv(heading));
};

/**
 * Sets the entity's health. healthAmount sets the health value to that, and sets the maximum health core value. Setting healthAmount to 0 will kill the entity. Unclear what role p2 serves, but it's either 0 or an entity handle.
 * @param entity :
 * @param healthAmount :
 * @param p2 :
 */
global.SetEntityHealth = function (entity, healthAmount, p2) {
	return _in(0xac2767ed, 0x8bdfab15, entity, healthAmount, p2);
};

global.SetEntityInvincible = function (entity, toggle) {
	return _in(0xa5c38736, 0xc426fcb8, entity, toggle);
};

global.SetEntityIsTargetPriority = function (entity, p1, p2) {
	return _in(0x0a5d170c, 0x44cb2189, entity, p1, _fv(p2));
};

global.SetEntityLoadCollisionFlag = function (p0, p1) {
	return _in(0x9b9ee31a, 0xed48072e, p0, p1);
};

global.SetEntityLodDist = function (entity, value) {
	return _in(0x5fb407f0, 0xa7c877bf, entity, value);
};

global.SetEntityMaxHealth = function (entity, value) {
	return _in(0x166e7cf6, 0x8597d8b5, entity, value);
};

global.SetEntityMotionBlur = function (entity, toggle) {
	return _in(0x516c6abd, 0x18322b63, entity, toggle);
};

global.SetEntityNoCollisionEntity = function (entity1, entity2, thisFrameOnly) {
	return _in(0xe037bf06, 0x8223c38d, entity1, entity2, thisFrameOnly);
};

global.SetEntityOnlyDamagedByPlayer = function (entity, toggle) {
	return _in(0x47359868, 0x3095d430, entity, toggle);
};

global.SetEntityOnlyDamagedByRelationshipGroup = function (entity, p1, p2) {
	return _in(0x6c1f6aa2, 0xf0add104, entity, p1, p2);
};

global.SetEntityProofs = function (entity, proofsBitset, p2) {
	return _in(0xfaee099c, 0x6f890bb8, entity, proofsBitset, p2);
};

global.SetEntityQuaternion = function (entity, x, y, z, w) {
	return _in(0x100e7007, 0xd13e3687, entity, _fv(x), _fv(y), _fv(z), _fv(w));
};

global.SetEntityRenderScorched = function (entity, toggle) {
	return _in(0x85b8a753, 0x4e44bc23, entity, toggle);
};

global.SetEntityRotation = function (entity, pitch, roll, yaw, rotationOrder, p5) {
	return _in(0x9cc8314d, 0xfede441e, entity, _fv(pitch), _fv(roll), _fv(yaw), rotationOrder, p5);
};

global.SetEntitySomething = function (entity, toggle) {
	return _in(0x740cb4f3, 0xf602c9f4, entity, toggle);
};

global.SetEntityVelocity = function (entity, x, y, z) {
	return _in(0x1c99bb7b, 0x6e96d16f, entity, _fv(x), _fv(y), _fv(z));
};

global.SetEntityVisible = function (entity, toggle) {
	return _in(0x1794b4fc, 0xc84d812f, entity, toggle);
};

global.SetEntityVisibleInCutscene = function (p0, p1, p2, p3) {
	return _in(0xe0031d3c, 0x8f36ab82, p0, p1, p2, p3);
};

global.SetEventFlagForDeletion = function (p0, p1, p2) {
	return _in(0x4768d525, 0x2eaeb76f, p0, p1, p2);
};

global.SetEveryoneIgnorePlayer = function (player, toggle) {
	return _in(0x34630a76, 0x8925b852, player, toggle);
};

global.SetExtraTimecycleModifierStrength = function (strength) {
	return _in(0x6fe93bcc, 0x7bf12b63, _fv(strength));
};

global.SetFacialIdleAnimOverride = function (ped, animName, animDict) {
	return _in(0xffc24b98, 0x8b938b38, ped, _ts(animName), _ts(animDict));
};

global.SetFadeInAfterDeathArrest = function (toggle) {
	return _in(0xdf3b5846, 0xde5904af, toggle);
};

global.SetFadeInAfterLoad = function (toggle) {
	return _in(0xac806c4c, 0xab973517, toggle);
};

global.SetFarShadowsSuppressed = function (toggle) {
	return _in(0x8fbfd2ae, 0xb196b369, toggle);
};

global.SetFirstPersonCamPitchRange = function (p0, p1) {
	return _in(0x715b7f5e, 0x8bed32a2, _fv(p0), _fv(p1));
};

global.SetFocusEntity = function (entity) {
	return _in(0x955aedd5, 0x8f4bd309, entity);
};

global.SetFocusPosAndVel = function (x, y, z, offsetX, offsetY, offsetZ) {
	return _in(0x25f6ef88, 0x664540e2, _fv(x), _fv(y), _fv(z), _fv(offsetX), _fv(offsetY), _fv(offsetZ));
};

global.SetForceHdVehicle = function (vehicle, toggle) {
	return _in(0x373cb128, 0x3308bd7b, vehicle, toggle);
};

global.SetForceObjectThisFrame = function (x, y, z, p3) {
	return _in(0xf5380819, 0x86e49e9d, _fv(x), _fv(y), _fv(z), _fv(p3));
};

global.SetFormationPositionsTargetRadius = function (p0, p1) {
	return _in(0x7cc7d3b7, 0xaf7fb71f, p0, p1, _r, _ri);
};

global.SetFrontendActive = function (active) {
	return _in(0xce47c21c, 0x0687ebc2, active);
};

global.SetGamePaused = function (toggle) {
	return _in(0xfaec088d, 0x28b1de4a, toggle);
};

global.SetGamePausesForStreaming = function (toggle) {
	return _in(0xb3bc8250, 0xf4fe8b63, toggle);
};

global.SetGameplayCamRelativeHeading = function (p0, p1) {
	return _in(0x5d1eb123, 0xeac5d071, p0, p1);
};

global.SetGameplayCamRelativePitch = function (x, Value2) {
	return _in(0xfb760af4, 0xf537b8bf, _fv(x), _fv(Value2));
};

global.SetGameplayCamShakeAmplitude = function (amplitude) {
	return _in(0x570e35f5, 0xc4a44838, _fv(amplitude));
};

global.SetGameplayCoordHint = function (x, y, z, duration, blendOutDuration, blendInDuration, unk) {
	return _in(0xfa33b8c6, 0x9a4a6a0f, _fv(x), _fv(y), _fv(z), duration, blendOutDuration, blendInDuration, unk);
};

global.SetGameplayEntityHint = function (entity, xOffset, yOffset, zOffset, p4, p5, p6, p7, p8) {
	return _in(0xd1f7f326, 0x40adfd12, entity, _fv(xOffset), _fv(yOffset), _fv(zOffset), p4, p5, p6, p7, p8);
};

global.SetGameplayHintAngle = function (p0) {
	return _in(0x421192a2, 0xda48fd01, _fv(p0));
};

global.SetGameplayHintAnimOffsetx = function (p0) {
	return _in(0xf86b6f93, 0x727c59c9, _fv(p0));
};

global.SetGameplayHintAnimOffsety = function (p0) {
	return _in(0x29e74f81, 0x9150cc32, _fv(p0));
};

global.SetGameplayHintAnimOffsetz = function (p0) {
	return _in(0xdddc5418, 0x1868f81f, _fv(p0));
};

global.SetGameplayHintFov = function (FOV) {
	return _in(0x661e58bc, 0x6f00a49a, _fv(FOV));
};

global.SetGameplayObjectHint = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xc40551d6, 0x5f2bf297, p0, _fv(p1), _fv(p2), _fv(p3), p4, p5, p6, p7);
};

global.SetGameplayPedHint = function (p0, x1, y1, z1, p4, p5, p6, p7) {
	return _in(0x90fb9516, 0x48851733, p0, _fv(x1), _fv(y1), _fv(z1), p4, p5, p6, p7);
};

global.SetGameplayVehicleHint = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xe2b2bb7d, 0xac280515, p0, _fv(p1), _fv(p2), _fv(p3), p4, p5, p6, p7);
};

global.SetGlobalBlockCanBeAccessed = function (index, toggle) {
	return _in(0xe66f392b, 0xfce734af, index, toggle);
};

global.SetGpsActive = function (active) {
	return _in(0x3bd3f52b, 0xa9b1e4e8, active);
};

global.SetGpsCustomRouteRender = function (p0, p1, p2) {
	return _in(0xf6cef599, 0xfc470b33, p0, p1, p2);
};

global.SetGpsFlags = function (p0, p1) {
	return _in(0x5de61c90, 0xddecfa2d, p0, _fv(p1));
};

global.SetGpsMultiRouteRender = function (toggle) {
	return _in(0x4426d65e, 0x029a4dc0, toggle);
};

global.SetGroupFormation = function (groupId, formationType) {
	return _in(0xce2f5fc3, 0xaf7e8c1e, groupId, formationType);
};

global.SetGroupFormationSpacing = function (groupId, p1, p2, p3) {
	return _in(0x1d9d4500, 0x4c28c916, groupId, _fv(p1), _fv(p2), _fv(p3));
};

global.SetGroupSeparationRange = function (groupHandle, separationRange) {
	return _in(0x4102c785, 0x8cfee4e4, groupHandle, _fv(separationRange));
};

global.SetGuardZonePosition = function (name, x, y, z) {
	return _in(0x7e7bf59f, 0x89fc6c6d, _ts(name), _fv(x), _fv(y), _fv(z));
};

global.SetGuardZonePosition_2 = function (name, x, y, z) {
	return _in(0x2f9005e2, 0xea4e5ee4, _ts(name), _fv(x), _fv(y), _fv(z));
};

/**
 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
 * Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
 * @param vehicle The vehicle class to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The value to set.
 */
global.SetHandlingField = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0xfe8064e3, _ts(vehicle), _ts(class_), _ts(fieldName), value);
};

/**
 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
 * Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
 * @param vehicle The vehicle class to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The floating-point value to set.
 */
global.SetHandlingFloat = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x090dd01c, _ts(vehicle), _ts(class_), _ts(fieldName), _fv(value));
};

/**
 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
 * @param vehicle The vehicle class to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The integer value to set.
 */
global.SetHandlingInt = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x8ab3f46c, _ts(vehicle), _ts(class_), _ts(fieldName), value);
};

/**
 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
 * Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
 * @param vehicle The vehicle class to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The Vector3 value to set.
 */
global.SetHandlingVector = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x07f9d543, _ts(vehicle), _ts(class_), _ts(fieldName), value);
};

global.SetHdArea = function (x, y, z, radius) {
	return _in(0xb88b905a, 0xfa35cb4d, _fv(x), _fv(y), _fv(z), _fv(radius));
};

global.SetHidofEnvBlurParams = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xcc23aa1a, 0x7cbfe840, p0, p1, _fv(p2), _fv(p3), _fv(p4), _fv(p5));
};

global.SetHighFallTask = function (ped, p1, p2, p3) {
	return _in(0x8c825bdc, 0x7741d37c, ped, p1, p2, p3);
};

global.SetHornEnabled = function (vehicle, toggle) {
	return _in(0x76d683c1, 0x08594d0e, vehicle, toggle);
};

global.SetIgnoreNoGpsFlag = function (toggle) {
	return _in(0x72751156, 0xe7678833, toggle);
};

global.SetIkTarget = function (ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration) {
	return _in(0xc32779c1, 0x6fceecd9, ped, ikIndex, entityLookAt, boneLookAt, _fv(offsetX), _fv(offsetY), _fv(offsetZ), p7, blendInDuration, blendOutDuration);
};

global.SetInputExclusive = function (padIndex, control) {
	return _in(0xede476e5, 0xee29edb1, padIndex, _ch(control));
};

global.SetInteriorPortalCornerPosition = function (interiorId, portalIndex, cornerIndex, posX, posY, posZ) {
	return _in(0x00000000, 0x87f43553, interiorId, portalIndex, cornerIndex, _fv(posX), _fv(posY), _fv(posZ));
};

global.SetInteriorPortalFlag = function (interiorId, portalIndex, flag) {
	return _in(0x00000000, 0x88b2355e, interiorId, portalIndex, flag);
};

global.SetInteriorPortalRoomFrom = function (interiorId, portalIndex, roomFrom) {
	return _in(0x00000000, 0x298fc783, interiorId, portalIndex, roomFrom);
};

global.SetInteriorPortalRoomTo = function (interiorId, portalIndex, roomTo) {
	return _in(0x00000000, 0x58982680, interiorId, portalIndex, roomTo);
};

global.SetInteriorRoomExtents = function (interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) {
	return _in(0x00000000, 0x4fdcf51e, interiorId, roomIndex, _fv(bbMinX), _fv(bbMinY), _fv(bbMinZ), _fv(bbMaxX), _fv(bbMaxY), _fv(bbMaxZ));
};

global.SetInteriorRoomFlag = function (interiorId, roomIndex, flag) {
	return _in(0x00000000, 0x5518d60b, interiorId, roomIndex, flag);
};

global.SetInteriorRoomTimecycle = function (interiorId, roomIndex, timecycleHash) {
	return _in(0x00000000, 0x31c9a848, interiorId, roomIndex, timecycleHash);
};

global.SetLocalPlayerCanUsePickupsWithThisModel = function (modelHash, toggle) {
	return _in(0x88eaec61, 0x7cd26926, _ch(modelHash), toggle);
};

global.SetLocalPlayerInvisibleLocally = function (p0) {
	return _in(0xe5f773c1, 0xa1d9d168, p0);
};

global.SetLocalPlayerVisibleInCutscene = function (p0, p1, p2) {
	return _in(0xd1065d68, 0x947e7b6e, p0, p1, p2);
};

/**
 * Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
 * you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
 * @param manualShutdown TRUE to manually shut down the loading screen NUI.
 */
global.SetManualShutdownLoadingScreenNui = function (manualShutdown) {
	return _in(0x00000000, 0x1722c938, manualShutdown);
};

/**
 * Sets values to the zoom level data by index.
 * @param index Zoom level index.
 * @param zoomScale fZoomScale value.
 * @param zoomSpeed fZoomSpeed value.
 * @param scrollSpeed fScrollSpeed value.
 * @param tilesX vTiles X.
 * @param tilesY vTiles Y.
 */
global.SetMapZoomDataLevel = function (index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) {
	return _in(0x00000000, 0x447c718e, index, _fv(zoomScale), _fv(zoomSpeed), _fv(scrollSpeed), _fv(tilesX), _fv(tilesY));
};

global.SetMapdatacullboxEnabled = function (name, toggle) {
	return _in(0x3cacc83f, 0x6fed837c, _ts(name), toggle);
};

global.SetMaxWantedLevel = function (maxWantedLevel) {
	return _in(0x28a4bd2c, 0xee236e19, maxWantedLevel);
};

global.SetMillisecondsPerGameMinute = function (ms) {
	return _in(0x04eedb38, 0x48dacf68, ms);
};

/**
 * Overrides how many real ms are equal to one game minute.
 * A setter for [`GetMillisecondsPerGameMinute`](#_0x2F8B4D1C595B11DB).
 * @param value Milliseconds.
 */
global.SetMillisecondsPerGameMinute = function (value) {
	return _in(0x00000000, 0x36ca2554, value);
};

/**
 * Reveals the entire minimap (FOW = Fog of War)
 * @param toggle :
 */
global.SetMinimapHideFow = function (toggle) {
	return _in(0x4b8f743a, 0x4a6d2ff8, toggle);
};

/**
 * Sets the display info for a minimap overlay.
 * @param miniMap The minimap overlay ID.
 * @param x The X position for the overlay. This is equivalent to a game coordinate X.
 * @param y The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
 * @param xScale The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
 * @param yScale The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
 * @param alpha The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
 */
global.SetMinimapOverlayDisplay = function (miniMap, x, y, xScale, yScale, alpha) {
	return _in(0x00000000, 0x6a48b3ca, miniMap, _fv(x), _fv(y), _fv(xScale), _fv(yScale), _fv(alpha));
};

global.SetMissionFlag = function (toggle) {
	return _in(0x36694b45, 0x6be80d0a, toggle);
};

global.SetMissionName = function (p0, name) {
	return _in(0x402669a4, 0xbdaa72da, p0, _ts(name));
};

global.SetMissionName_2 = function (p0, name) {
	return _in(0xd98630ce, 0x73c61e98, p0, _ts(name));
};

global.SetMissionTrainAsNoLongerNeeded = function (p1) {
	return _in(0xbbe76483, 0x49b49be8, _i, p1);
};

global.SetMissionTrainCoords = function (train, x, y, z) {
	return _in(0x76327559, 0x62ab9922, train, _fv(x), _fv(y), _fv(z));
};

global.SetModelAsNoLongerNeeded = function (model) {
	return _in(0x4ad96ef9, 0x28bd4f9a, _ch(model));
};

global.SetModelHeadlightConfiguration = function (modelHash, ratePerSecond, headlightRotation, invertRotation) {
	return _in(0x00000000, 0x7f6b8d75, _ch(modelHash), _fv(ratePerSecond), _fv(headlightRotation), invertRotation);
};

global.SetMouseCursorActiveThisFrame = function () {
	return _in(0xf12e4cca, 0xf249dc10);
};

global.SetMouseCursorSprite = function (spriteId) {
	return _in(0x7f5858aa, 0xb5a58cce, spriteId);
};

global.SetMpGamerTagBigText = function (gamerTagId, string) {
	return _in(0xa0d7ce5f, 0x83259663, gamerTagId, _ts(string));
};

global.SetMpGamerTagName = function (gamerTagId, string) {
	return _in(0xea6f4b8d, 0x4b4b5b3e, gamerTagId, _ts(string));
};

global.SetNetworkIdExistsOnAllMachines = function (netId, toggle) {
	return _in(0xe05e81a8, 0x88fa63c8, netId, toggle);
};

global.SetNetworkIdSyncToPlayer = function (netId, player, toggle) {
	return _in(0xa8a02458, 0x7329f36a, netId, player, toggle);
};

global.SetNetworkIdVisibleInCutscene = function (p0, p1, p2, p3) {
	return _in(0xa6928482, 0x543022b4, p0, p1, p2, p3);
};

global.SetNoLoadingScreen = function (toggle) {
	return _in(0x5cb83156, 0xaa038f95, toggle);
};

global.SetNuiFocus = function (hasFocus, hasCursor) {
	return _in(0x00000000, 0x5b98ae30, hasFocus, hasCursor);
};

global.SetObjectAsNoLongerNeeded = function (object) {
	return _in(0x3ae22deb, 0x5ba5a3e6, _ii(object) /* may be optional */);
};

global.SetObjectCanClimbOn = function (object, toggle) {
	return _in(0x4d89d607, 0xcb3dd1d2, object, toggle);
};

global.SetObjectPhysicsParams = function (object, weight, p2, p3, p4, p5, gravity, p7, p8, p9, p10, buoyancy) {
	return _in(0xf6df6e90, 0xde7df90f, object, _fv(weight), _fv(p2), _fv(p3), _fv(p4), _fv(p5), _fv(gravity), _fv(p7), _fv(p8), _fv(p9), _fv(p10), _fv(buoyancy));
};

global.SetObjectTargettable = function (object, targettable) {
	return _in(0x8a739169, 0x0f5afd81, object, targettable);
};

global.SetObjectTextureVariation = function (object, textureVariation) {
	return _in(0x971da005, 0x5324d033, object, textureVariation);
};

global.SetPadShake = function (padIndex, duration, frequency) {
	return _in(0x48b3886c, 0x1358d0d5, padIndex, duration, frequency);
};

global.SetParkedVehicleDensityMultiplierThisFrame = function (multiplier) {
	return _in(0xfedfa976, 0x38d61d4a, _fv(multiplier));
};

global.SetParticleFxLoopedAlpha = function (ptfxHandle, alpha) {
	return _in(0x88786e76, 0x234f7054, ptfxHandle, _fv(alpha));
};

global.SetParticleFxLoopedColour = function (ptfxHandle, r, g, b, p4) {
	return _in(0x239879fc, 0x61c610cc, ptfxHandle, _fv(r), _fv(g), _fv(b), p4);
};

global.SetParticleFxLoopedEvolution = function (ptfxHandle, propertyName, amount, noNetwork) {
	return _in(0x3674f389, 0xb0facd80, ptfxHandle, _ts(propertyName), _fv(amount), noNetwork);
};

global.SetParticleFxLoopedFarClipDist = function (ptfxHandle, range) {
	return _in(0x9b04d471, 0xda0ad7aa, ptfxHandle, _fv(range));
};

global.SetParticleFxLoopedOffsets = function (ptfxHandle, x, y, z, rotX, rotY, rotZ) {
	return _in(0xd3a4a95f, 0xc94fe83b, ptfxHandle, _fv(x), _fv(y), _fv(z), _fv(rotX), _fv(rotY), _fv(rotZ));
};

global.SetParticleFxLoopedScale = function (ptfxHandle, scale) {
	return _in(0x1a9e1c0d, 0x98d093b7, ptfxHandle, _fv(scale));
};

global.SetParticleFxNonLoopedColour = function (r, g, b) {
	return _in(0x60b85bed, 0x6577a35b, _fv(r), _fv(g), _fv(b));
};

global.SetParticleFxOverride = function (oldAsset, newAsset) {
	return _in(0xbe711a16, 0x9e9c7e95, _ts(oldAsset), _ts(newAsset));
};

global.SetPedAccuracy = function (ped, accuracy) {
	return _in(0x7aefb85c, 0x1d49deb6, ped, accuracy);
};

global.SetPedAmmo = function (ped, weaponHash, ammo) {
	return _in(0x14e56bc5, 0xb5db6a19, ped, _ch(weaponHash), ammo);
};

global.SetPedAmmoByType = function (ped, ammoType, ammo) {
	return _in(0x5fd1e1f0, 0x11e76d7e, ped, ammoType, ammo);
};

global.SetPedAmmoToDrop = function (p0, p1, p2) {
	return _in(0xa4efef94, 0x40a5b0ef, p0, p1, p2);
};

global.SetPedAsCop = function (ped, toggle) {
	return _in(0xbb03c38d, 0xd3fb7ffd, ped, toggle);
};

global.SetPedAsGroupLeader = function (p0, p1, p2) {
	return _in(0x2a781960, 0x5465fbce, p0, p1, p2);
};

global.SetPedAsGroupMember = function (ped, groupId) {
	return _in(0x9f3480fe, 0x65db31b5, ped, groupId);
};

global.SetPedAsNoLongerNeeded = function (ped) {
	return _in(0x2595dd42, 0x36549ce3, _ii(ped) /* may be optional */);
};

global.SetPedCanArmIk = function (ped, toggle) {
	return _in(0x6c3b4d6d, 0x13b4c841, ped, toggle);
};

global.SetPedCanBeKnockedOffVehicle = function (ped, state) {
	return _in(0x7a653569, 0x1b477c48, ped, state);
};

global.SetPedCanBeTargetted = function (ped, toggle) {
	return _in(0x63f58f7c, 0x80513aad, ped, toggle);
};

global.SetPedCanBeTargettedByPlayer = function (ped, player, toggle) {
	return _in(0x66b57b72, 0xe0836a76, ped, player, toggle);
};

global.SetPedCanBeTargettedByTeam = function (ped, team, toggle) {
	return _in(0xbf1ca778, 0x33e58f2c, ped, team, toggle);
};

global.SetPedCanHeadIk = function (ped, toggle) {
	return _in(0xc11c1809, 0x2c5530dc, ped, toggle);
};

global.SetPedCanLegIk = function (ped, toggle) {
	return _in(0x73518ece, 0x2485412b, ped, toggle);
};

global.SetPedCanPlayAmbientAnims = function (ped, toggle) {
	return _in(0x6373d134, 0x9925a70e, ped, toggle);
};

global.SetPedCanPlayAmbientBaseAnims = function (ped, toggle) {
	return _in(0x0eb0585d, 0x15254740, ped, toggle);
};

global.SetPedCanPlayGestureAnims = function (p0, p1, p2) {
	return _in(0xbaf20c54, 0x32058024, p0, p1, p2);
};

global.SetPedCanRagdoll = function (ped, toggle) {
	return _in(0xb1283770, 0x56a54e2a, ped, toggle);
};

global.SetPedCanRagdollFromPlayerImpact = function (ped, toggle) {
	return _in(0xdf993ee5, 0xe90aba25, ped, toggle);
};

global.SetPedCanTeleportToGroupLeader = function (pedHandle, groupHandle, toggle) {
	return _in(0x2e2f4240, 0xb3f24647, pedHandle, groupHandle, toggle);
};

global.SetPedCanTorsoIk = function (ped, toggle) {
	return _in(0xf2b7106d, 0x37947ce0, ped, toggle);
};

global.SetPedCanTorsoReactIk = function (ped, p1) {
	return _in(0xf5846edb, 0x26a98a24, ped, p1);
};

global.SetPedCanUseAutoConversationLookat = function (ped, toggle) {
	return _in(0xec4686ec, 0x06434678, ped, toggle);
};

global.SetPedCapsule = function (ped, value) {
	return _in(0x364df566, 0xec833de2, ped, _fv(value));
};

global.SetPedClothPackageIndex = function (p0, p1) {
	return _in(0x78c4e996, 0x1db3eb5b, p0, p1);
};

global.SetPedCombatAbility = function (ped, p1) {
	return _in(0xc7622c0d, 0x36b2fda8, ped, p1);
};

global.SetPedCombatAttributes = function (ped, attributeIndex, enabled) {
	return _in(0x9f779473, 0x0795e019, ped, attributeIndex, enabled);
};

global.SetPedCombatMovement = function (ped, combatMovement) {
	return _in(0x4d9ca100, 0x9afbd057, ped, combatMovement);
};

global.SetPedCombatRange = function (ped, p1) {
	return _in(0x3c606747, 0xb23e497b, ped, p1);
};

global.SetPedConfigFlag = function (ped, flagId, value) {
	return _in(0x1913fe4c, 0xbf41c463, ped, flagId, value);
};

global.SetPedCurrentWeaponVisible = function (ped, visible, deselectWeapon, p3, p4) {
	return _in(0x0725a4cc, 0xfded9a70, ped, visible, deselectWeapon, p3, p4);
};

global.SetPedDefensiveAreaDirection = function (ped, p1, p2, p3, p4) {
	return _in(0x413c6c76, 0x3a4affad, ped, _fv(p1), _fv(p2), _fv(p3), p4);
};

global.SetPedDesiredHeading = function (ped, heading) {
	return _in(0xaa5a7ece, 0x2aa8fe70, ped, _fv(heading));
};

global.SetPedDesiredMoveBlendRatio = function (ped, p1) {
	return _in(0x1e982ac8, 0x716912c5, ped, _fv(p1));
};

global.SetPedDropsInventoryWeapon = function (ped, weaponHash, xOffset, yOffset, zOffset, ammoCount) {
	return _in(0x208a1888, 0x007fc0e6, ped, _ch(weaponHash), _fv(xOffset), _fv(yOffset), _fv(zOffset), ammoCount);
};

global.SetPedDropsWeaponsWhenDead = function (ped, toggle) {
	return _in(0x476ae72c, 0x1d19d1a8, ped, toggle);
};

global.SetPedFiringPattern = function (ped, patternHash) {
	return _in(0x9ac577f5, 0xa12ad8a9, ped, _ch(patternHash));
};

global.SetPedFleeAttributes = function (ped, attributeFlags, enable) {
	return _in(0x70a2d113, 0x7c8ed7c9, ped, attributeFlags, enable);
};

global.SetPedGestureGroup = function (p0, p1, p2) {
	return _in(0xddf80337, 0x7f94aaa8, p0, p1, p2);
};

global.SetPedGravity = function (ped, toggle) {
	return _in(0x9ff447b6, 0xb6ad960a, ped, toggle);
};

global.SetPedGroupMemberPassengerIndex = function (ped, index) {
	return _in(0x0bddb8d9, 0xec6bcf3c, ped, index);
};

global.SetPedHearingRange = function (ped, value) {
	return _in(0x33a8f7f7, 0xd5f7f33c, ped, _fv(value));
};

global.SetPedHighlyPerceptive = function (ped, toggle) {
	return _in(0x52d59ab6, 0x1ddc05dd, ped, toggle);
};

global.SetPedIdRange = function (ped, value) {
	return _in(0xf107e836, 0xa70dce05, ped, _fv(value));
};

global.SetPedInfiniteAmmo = function (ped, toggle, weaponHash) {
	return _in(0x3edcb050, 0x5123623b, ped, toggle, _ch(weaponHash));
};

global.SetPedInfiniteAmmoClip = function (ped, toggle) {
	return _in(0xfbaa1e06, 0xb6bca741, ped, toggle);
};

global.SetPedIntoVehicle = function (ped, vehicle, seatIndex) {
	return _in(0xf75b0d62, 0x9e1c063d, ped, vehicle, seatIndex);
};

global.SetPedIsDrunk = function (ped, toggle) {
	return _in(0x95d2d383, 0xd5396b8a, ped, toggle);
};

global.SetPedKeepTask = function (ped, toggle) {
	return _in(0x971d3876, 0x0fbc02ef, ped, toggle);
};

global.SetPedLegIkMode = function (ped, mode) {
	return _in(0xc396f5b8, 0x6ff9febd, ped, mode);
};

global.SetPedLodMultiplier = function (ped, multiplier) {
	return _in(0xdc2c5c24, 0x2aac342b, ped, _fv(multiplier));
};

global.SetPedMaxHealth = function (ped, value) {
	return _in(0xf5f6378c, 0x4f3419d3, ped, value);
};

global.SetPedMaxMoveBlendRatio = function (ped, value) {
	return _in(0x43308375, 0x0c5e064a, ped, _fv(value));
};

global.SetPedMaxTimeInWater = function (ped, value) {
	return _in(0x43c85169, 0x0662113d, ped, _fv(value));
};

global.SetPedMaxTimeUnderwater = function (ped, value) {
	return _in(0x6ba428c5, 0x28d9e522, ped, _fv(value));
};

global.SetPedMinMoveBlendRatio = function (ped, value) {
	return _in(0x01a898d2, 0x6e2333dd, ped, _fv(value));
};

global.SetPedModelIsSuppressed = function (ped, toggle) {
	return _in(0xe163a4bc, 0xe4de6f11, ped, toggle);
};

global.SetPedMoney = function (ped, amount) {
	return _in(0xa9c8960e, 0x8684c1b5, ped, amount);
};

global.SetPedMoveAnimsBlendOut = function (ped) {
	return _in(0x9e8c908f, 0x41584ecd, ped);
};

global.SetPedMoveRateOverride = function (ped, value) {
	return _in(0x085bf80f, 0xa50a39d1, ped, _fv(value));
};

global.SetPedNameDebug = function (ped, name) {
	return _in(0x98efa132, 0xa4117be1, ped, _ts(name));
};

global.SetPedNonCreationArea = function (x1, y1, z1, x2, y2, z2) {
	return _in(0xee01041d, 0x559983ea, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2));
};

/**
 * Sets the outfit preset for the ped. The presetId is an index which determines it's preset outfit. p2 is always 0.
 * @param ped :
 * @param presetId :
 * @param p2 :
 */
global.SetPedOutfitPreset = function (ped, presetId, p2) {
	return _in(0x77ff8d35, 0xeec6bbc4, ped, presetId, p2);
};

global.SetPedPanicExitScenario = function (p0, p1, p2, p3) {
	return _in(0xfe07ff64, 0x95d52e2a, p0, p1, p2, p3, _r, _ri);
};

global.SetPedPathAvoidFire = function (ped, avoidFire) {
	return _in(0x4455517b, 0x28441e60, ped, avoidFire);
};

global.SetPedPathCanDropFromHeight = function (ped, Toggle) {
	return _in(0xe361c5c7, 0x1c431a4f, ped, Toggle);
};

global.SetPedPathCanUseClimbovers = function (ped, Toggle) {
	return _in(0x8e06a6fe, 0x76c9eff4, ped, Toggle);
};

global.SetPedPathCanUseLadders = function (ped, Toggle) {
	return _in(0x77a5b103, 0xc87f476e, ped, Toggle);
};

global.SetPedPathMayEnterWater = function (ped, mayEnterWater) {
	return _in(0xf35425a4, 0x204367ec, ped, mayEnterWater);
};

global.SetPedPathPreferToAvoidWater = function (p0, p1, p2) {
	return _in(0x38fe1ec7, 0x3743793c, p0, p1, p2);
};

global.SetPedPathsBackToOriginal = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xe04b48f2, 0xcc926253, p0, p1, p2, p3, p4, p5, p6);
};

global.SetPedPathsInArea = function (x1, y1, z1, x2, y2, z2, unknown, p7) {
	return _in(0x34f060f4, 0xbf92e018, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), unknown, p7);
};

global.SetPedPromptName = function (ped, name) {
	return _in(0x4a48b6e0, 0x3babb4ac, ped, _ts(name));
};

global.SetPedRagdollForceFall = function (ped) {
	return _in(0x01f6594b, 0x923b9251, ped);
};

global.SetPedRagdollOnCollision = function (p0, p1, p2) {
	return _in(0xf0a4f1bb, 0xf4fa7497, p0, p1, p2);
};

global.SetPedRandomComponentVariation = function (ped, p1) {
	return _in(0xc8a9481a, 0x01e63c28, ped, p1);
};

global.SetPedRelationshipGroupDefaultHash = function (ped, hash) {
	return _in(0xadb3f206, 0x518799e8, ped, _ch(hash));
};

global.SetPedRelationshipGroupHash = function (ped, hash) {
	return _in(0xc80a74ac, 0x829ddd92, ped, _ch(hash));
};

global.SetPedResetFlag = function (ped, flagId, doReset) {
	return _in(0xc1e8a365, 0xbf3b29f2, ped, flagId, doReset);
};

global.SetPedScale = function (ped, scale) {
	return _in(0x25acfc65, 0x0b65c538, ped, _fv(scale));
};

global.SetPedSeeingRange = function (ped, value) {
	return _in(0xf29cf591, 0xc4bf6cee, ped, _fv(value));
};

global.SetPedShootRate = function (ped, shootRate) {
	return _in(0x614da022, 0x990752dc, ped, shootRate);
};

global.SetPedSphereDefensiveArea = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x9d3151a3, 0x73974804, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.SetPedStealthMovement = function (p0, p1, p2, p3) {
	return _in(0x88cbb5ce, 0xb96b7bd2, p0, p1, p2, p3);
};

global.SetPedSweat = function (ped, sweat) {
	return _in(0x27b0405f, 0x59637d1f, ped, _fv(sweat));
};

global.SetPedTargetLossResponse = function (ped, responseType) {
	return _in(0x0703b907, 0x9823da4a, ped, responseType);
};

global.SetPedToInformRespectedFriends = function (ped, radius, maxFriends) {
	return _in(0x112942c6, 0xe708f70b, ped, _fv(radius), maxFriends);
};

global.SetPedToRagdoll = function (ped, time1, time2, ragdollType, p4, p5, p6) {
	return _in(0xae99fb95, 0x5581844a, ped, time1, time2, ragdollType, p4, p5, p6, _r);
};

global.SetPedToRagdollWithFall = function (ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) {
	return _in(0xd76632d9, 0x9e4966c8, ped, time, p2, ragdollType, _fv(x), _fv(y), _fv(z), _fv(p7), _fv(p8), _fv(p9), _fv(p10), _fv(p11), _fv(p12), _fv(p13), _r);
};

global.SetPedUsingActionMode = function (ped, p1, p2, action) {
	return _in(0xd75accf5, 0xe0fb5367, ped, p1, p2, _ts(action));
};

global.SetPedVisualFieldCenterAngle = function (ped, angle) {
	return _in(0x3b6405e8, 0xab34a907, ped, _fv(angle));
};

global.SetPedVisualFieldMaxAngle = function (ped, value) {
	return _in(0x70793bdc, 0xa1e854d4, ped, _fv(value));
};

global.SetPedVisualFieldMinAngle = function (ped, value) {
	return _in(0x2db49222, 0x2fb21e26, ped, _fv(value));
};

global.SetPedVisualFieldPeripheralRange = function (ped, range) {
	return _in(0x9c74b0bc, 0x831b753a, ped, _fv(range));
};

global.SetPedWaypointRouteOffset = function (p0, p1, p2, p3) {
	return _in(0xed98e10b, 0x0afce4b4, p0, p1, p2, p3, _r, _ri);
};

global.SetPedWetnessEnabledThisFrame = function (ped) {
	return _in(0xb5485e49, 0x07b53019, ped);
};

global.SetPedWetnessHeight = function (ped, height) {
	return _in(0x44cb6447, 0xd2571aa0, ped, _fv(height));
};

global.SetPickupGenerationRangeMultiplier = function (multiplier) {
	return _in(0x318516e0, 0x2de3ece2, _fv(multiplier));
};

global.SetPickupHiddenWhenUncollectable = function (p0, p1) {
	return _in(0x81218ce0, 0x1b672219, p0, p1);
};

global.SetPickupNotLootable = function (p0, p1) {
	return _in(0x92e87f60, 0xf21a0c3a, p0, p1);
};

global.SetPickupParticleFxHighlight = function (p0, p1) {
	return _in(0x1607c7d9, 0xb3021df5, p0, p1);
};

global.SetPickupParticleFxSpawn = function (p0, p1) {
	return _in(0xeb9740a3, 0x8fd6d634, p0, p1);
};

global.SetPickupRegenerationTime = function (pickup, duration) {
	return _in(0x78015c9b, 0x4b3ecc9d, pickup, duration);
};

global.SetPickupUncollectable = function (p0, p1) {
	return _in(0x4a8cb328, 0xcd6f1c9b, p0, p1);
};

global.SetPlaybackSpeed = function (vehicle, speed) {
	return _in(0xd78084ee, 0xd4cd94c6, vehicle, _fv(speed));
};

global.SetPlayerCanBeHassledByGangs = function (player, toggle) {
	return _in(0xc7fe7744, 0x12046825, player, toggle);
};

global.SetPlayerCanUseCover = function (player, toggle) {
	return _in(0x5eda520f, 0x7a3baf4e, player, toggle);
};

global.SetPlayerClothPinFrames = function (player, toggle) {
	return _in(0xd0d9317d, 0xfeef9a66, player, toggle);
};

global.SetPlayerControl = function (p0, p1, p2, p3) {
	return _in(0x4d51e592, 0x43281d80, p0, p1, p2, p3);
};

global.SetPlayerForcedAim = function (p0, p1, p2, p3, p4) {
	return _in(0xd5fcc166, 0xaeb2fd0f, p0, p1, p2, p3, p4);
};

global.SetPlayerHealthRechargeMultiplier = function (player, regenRate) {
	return _in(0x8899c244, 0xebcf70de, player, _fv(regenRate));
};

global.SetPlayerInvincible = function (player, toggle) {
	return _in(0xfebeebc9, 0xcbdf4b12, player, toggle);
};

global.SetPlayerInvisibleLocally = function (player, toggle) {
	return _in(0x12b37d54, 0x667db0b8, player, toggle);
};

global.SetPlayerLockon = function (player, toggle) {
	return _in(0x462aa197, 0x3cbba75e, player, toggle);
};

global.SetPlayerLockonRangeOverride = function (player, range) {
	return _in(0x3a3cd065, 0x97388322, player, _fv(range));
};

global.SetPlayerMayNotEnterAnyVehicle = function (player) {
	return _in(0xbec463b3, 0xa11c909e, player);
};

global.SetPlayerMayOnlyEnterThisVehicle = function (player, vehicle) {
	return _in(0xda35a134, 0x038557ec, player, vehicle);
};

global.SetPlayerMeleeWeaponDamageModifier = function (p0, p1) {
	return _in(0xe4cb5a3f, 0x18170381, p0, p1);
};

global.SetPlayerModel = function (p0, p1, p2) {
	return _in(0xed403800, 0x76a31506, p0, p1, p2);
};

global.SetPlayerNoiseMultiplier = function (player, multiplier) {
	return _in(0xb5ec6bda, 0xebca454c, player, _fv(multiplier));
};

global.SetPlayerSimulateAiming = function (player, toggle) {
	return _in(0xe0447def, 0x81ccdfd2, player, toggle);
};

global.SetPlayerSneakingNoiseMultiplier = function (player, multiplier) {
	return _in(0x4de44fa3, 0x89dca565, player, _fv(multiplier));
};

/**
 * the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
 * This function doesn't need to be called every frame, it works like a switcher.
 * @param player The target player.
 * @param state Overriding state.
 */
global.SetPlayerTalkingOverride = function (player, state) {
	return _in(0x00000000, 0xfc02caf6, player, state);
};

global.SetPlayerTargetingMode = function (targetMode) {
	return _in(0xd66a941f, 0x401e7302, targetMode);
};

global.SetPlayerTeam = function (p0, p1, p2) {
	return _in(0xe8dd8536, 0xf01de600, p0, p1, p2);
};

global.SetPlayerVisibleLocally = function (player, toggle) {
	return _in(0xfaa10f1f, 0xafb11af2, player, toggle);
};

global.SetPlayerWantedLevel = function (player, wantedLevel, disableNoMission) {
	return _in(0x384d4765, 0x395e006c, player, wantedLevel, disableNoMission);
};

global.SetPlayerWeaponDamageModifier = function (player, modifier) {
	return _in(0x94d529f7, 0xb73d7a85, player, _fv(modifier));
};

global.SetPlayerWeaponDefenseModifier = function (player, modifier) {
	return _in(0xd15cc2d4, 0x93160be3, player, _fv(modifier));
};

global.SetPoliceRadarBlips = function (toggle) {
	return _in(0x6fd7dd6b, 0x63f2820e, toggle);
};

global.SetPopControlSphereThisFrame = function (p0, p1, p2, p3, p4) {
	return _in(0xd8c3be3e, 0xe94caf2d, p0, p1, p2, p3, p4);
};

global.SetPopzonePopulationSet = function (popZone, populationSetHash) {
	return _in(0x3e6a49d9, 0xb519e85c, popZone, _ch(populationSetHash));
};

global.SetPortalSettingsOverride = function (p0, p1) {
	return _in(0x044dbad7, 0xa7fa2be5, _ts(p0), _ts(p1));
};

global.SetRadarAsExteriorThisFrame = function () {
	return _in(0xa8ebbae9, 0x86fb5457);
};

global.SetRadarZoom = function (zoomLevel) {
	return _in(0xcaf6489d, 0xa2c8dd9e, zoomLevel);
};

global.SetRagdollBlockingFlags = function (ped, flags) {
	return _in(0x26695ec7, 0x67728d84, ped, flags);
};

global.SetRainFxIntensity = function (intensity) {
	return _in(0x193dfc05, 0x26830fd6, _fv(intensity));
};

global.SetRandomBoats = function (toggle) {
	return _in(0xf44d446d, 0x4e36db87, toggle);
};

global.SetRandomEventFlag = function (toggle) {
	return _in(0xb1adccc4, 0x150c6473, toggle);
};

global.SetRandomSeed = function (seed) {
	return _in(0x5cd7a491, 0x04afcb6b, seed);
};

global.SetRandomTrains = function (toggle) {
	return _in(0x1156c6ee, 0x7e82a98a, toggle);
};

global.SetRandomVehicleDensityMultiplierThisFrame = function (multiplier) {
	return _in(0x1f91d444, 0x90e1ea0c, _fv(multiplier));
};

global.SetRandomWeatherType = function (p0, p1) {
	return _in(0x6e5a7fbe, 0xecab3c72, p0, p1);
};

global.SetRelationshipBetweenGroups = function (relationship, group1, group2) {
	return _in(0xbf25eb89, 0x375a37ad, relationship, _ch(group1), _ch(group2));
};

global.SetResourceKvp = function (key, value) {
	return _in(0x00000000, 0x21c7a35b, _ts(key), _ts(value));
};

global.SetResourceKvpFloat = function (key, value) {
	return _in(0x00000000, 0x9add2938, _ts(key), _fv(value));
};

global.SetResourceKvpInt = function (key, value) {
	return _in(0x00000000, 0x06a2b1e8, _ts(key), value);
};

/**
 * Sets the player's rich presence detail state for social platform providers to a specified string.
 * @param presenceState The rich presence string to set.
 */
global.SetRichPresence = function (presenceState) {
	return _in(0x00000000, 0x7bdcbd45, _ts(presenceState));
};

global.SetRoadsBackToOriginal = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x1ee7063b, 0x80ffc77c, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.SetRoadsBackToOriginalInAngledArea = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x0027501b, 0x9f3b407e, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.SetRoadsInAngledArea = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x1a5aa120, 0x8af5db59, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.SetRoadsInArea = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xbf1a602b, 0x5ba52fee, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.SetRpgIconVisibility = function (p0, p1) {
	return _in(0xc116e6df, 0x68dce667, p0, p1);
};

global.SetRuntimeTextureArgbData = function (tex, buffer, length) {
	return _in(0x00000000, 0x3963d527, tex, _ts(buffer), length, _r);
};

/**
 * Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
 * @param tex A handle to the runtime texture.
 * @param x The X position of the pixel to change.
 * @param y The Y position of the pixel to change.
 * @param r The new R value (0-255).
 * @param g The new G value (0-255).
 * @param b The new B value (0-255).
 * @param a The new A value (0-255).
 */
global.SetRuntimeTexturePixel = function (tex, x, y, r, g, b, a) {
	return _in(0x00000000, 0xab65acee, tex, x, y, r, g, b, a);
};

global.SetScenarioGroupEnabled = function (scenarioGroup, toggle) {
	return _in(0x02c8e5b4, 0x9848664e, _ts(scenarioGroup), toggle);
};

global.SetScenarioGroupEnabledHash = function (scenarioGroup, toggle) {
	return _in(0x9925eddb, 0x6eab88cd, _ch(scenarioGroup), toggle);
};

global.SetScenarioPedDensityMultiplierThisFrame = function (p0) {
	return _in(0x7a556143, 0xa1c03898, p0);
};

global.SetScenarioTypeEnabled = function (scenarioType, toggle) {
	return _in(0xeb47ec4e, 0x34fb7ee1, _ts(scenarioType), toggle);
};

global.SetScenarioTypeEnabledHash = function (scenarioType, toggle) {
	return _in(0xd00e50e6, 0x73802d71, _ch(scenarioType), toggle);
};

global.SetScriptAsNoLongerNeeded = function (scriptName) {
	return _in(0x0086d306, 0x7e1cfd1c, _ts(scriptName));
};

global.SetScriptGfxDrawBehindPausemenu = function (toggle) {
	return _in(0x906b86e6, 0xd7896b9e, toggle);
};

global.SetScriptGfxDrawOrder = function (drawOrder) {
	return _in(0xcfcc7839, 0x1c8b3814, drawOrder);
};

global.SetScriptWithNameHashAsNoLongerNeeded = function (scriptHash) {
	return _in(0x50723a15, 0x67c8361e, _ch(scriptHash));
};

global.SetSequenceToRepeat = function (taskSequenceId, repeat) {
	return _in(0x58c70cf3, 0xa41e4ae7, taskSequenceId, repeat);
};

global.SetSnakeoilForEntry = function (name, path, data) {
	return _in(0x00000000, 0xa7dd3209, _ts(name), _ts(path), _ts(data));
};

global.SetSpawnerInfoPriority = function (p0, p1, priority) {
	return _in(0x60cde717, 0xa6d47769, _ch(p0), _ch(p1), priority);
};

global.SetSpeciesTuningBoolParam = function (p0, p1, p2, p3) {
	return _in(0x6d1d94c2, 0x459b42ee, _ch(p0), p1, p2, p3);
};

global.SetSpeciesTuningFloatParam = function (p0, p1, p2, p3) {
	return _in(0x963240b6, 0xc252ba49, _ch(p0), p1, p2, _fv(p3));
};

global.SetSrlTime = function (p0) {
	return _in(0x18231aef, 0x458bcff2, _fv(p0));
};

global.SetStateOfRayfireMapObject = function (object, state) {
	return _in(0x5c29f698, 0xd404c5e1, object, state);
};

global.SetStaticEmitterEnabled = function (emitterName, toggle) {
	return _in(0x399d2d3b, 0x33f1b8eb, _ts(emitterName), toggle);
};

global.SetStreamedTextureDictAsNoLongerNeeded = function (textureDict) {
	return _in(0x4aca10a9, 0x1f66f1e2, _ts(textureDict));
};

global.SetSuperJumpThisFrame = function (player) {
	return _in(0xb3e9be96, 0x3f10c445, player);
};

global.SetSwimMultiplierForPlayer = function (player, multiplier) {
	return _in(0xbfceabde, 0x34da5085, player, _fv(multiplier));
};

global.SetTaskMoveNetworkSignalBool = function (ped, signalName, value) {
	return _in(0xb0a6cfd2, 0xc69c1088, ped, _ts(signalName), value);
};

global.SetTaskMoveNetworkSignalFloat = function (ped, signalName, value) {
	return _in(0xd5bb4025, 0xae449a4e, ped, _ts(signalName), _fv(value));
};

global.SetTeamPickupObject = function (object, p1, p2) {
	return _in(0x53e0df1a, 0x2a3cf0ca, object, p1, p2);
};

global.SetTextCentre = function (align) {
	return _in(0xbe526193, 0x9fbecb8c, align);
};

global.SetTextChatEnabled = function (enabled) {
	return _in(0x00000000, 0x97b2f9f8, enabled, _r);
};

global.SetTextColor = function (r, g, b, a) {
	return _in(0x50a41ad9, 0x66910f03, r, g, b, a);
};

global.SetTextDropshadow = function (distance, r, g, b, a) {
	return _in(0x1be39dba, 0xa7263ca5, distance, r, g, b, a);
};

global.SetTextFontForCurrentCommand = function (fontId) {
	return _in(0x00000000, 0xada9255d, fontId);
};

global.SetTextRenderId = function (renderId) {
	return _in(0xe550cde1, 0x28d56757, renderId);
};

global.SetTextScale = function (scale, size) {
	return _in(0x4170b650, 0x590b3b00, _fv(scale), _fv(size));
};

global.SetThisScriptCanBePaused = function (toggle) {
	return _in(0x3215376e, 0x79f6ea18, toggle);
};

global.SetThisScriptCanRemoveBlipsCreatedByAnyScript = function (toggle) {
	return _in(0x8abd939c, 0x2e5d00ed, toggle);
};

/**
 * 0 = high
 * 1 = normal
 * 2 = low
 * @param priority :
 */
global.SetThreadPriority = function (priority) {
	return _in(0x42b65dee, 0xf2edf2a1, priority);
};

global.SetTimeScale = function (timeScale) {
	return _in(0x9682af60, 0x50854856, _fv(timeScale));
};

global.SetTimecycleModifier = function (modifierName) {
	return _in(0xfa08722a, 0x5ea82da7, _ts(modifierName));
};

global.SetTimecycleModifierStrength = function (strength) {
	return _in(0xfdb74c9c, 0xc54c3f37, _fv(strength));
};

global.SetTrackedPointInfo = function (point, x, y, z, radius) {
	return _in(0xf6fda3d4, 0x404d4f2c, point, _fv(x), _fv(y), _fv(z), _fv(radius));
};

global.SetTrainCruiseSpeed = function (train, speed) {
	return _in(0x01021eb2, 0xe96b793c, train, _fv(speed));
};

global.SetTrainSpeed = function (train, speed) {
	return _in(0xdfba6bbf, 0xf7ccafbb, train, _fv(speed));
};

global.SetTransitionTimecycleModifier = function (modifierName, transition) {
	return _in(0xff927a09, 0xf481d80c, _ts(modifierName), _fv(transition));
};

global.SetTvAudioFrontend = function (toggle) {
	return _in(0x64437c98, 0xfcc5f291, toggle);
};

global.SetTvChannel = function (channel) {
	return _in(0x593faf7f, 0xc9401a56, channel);
};

global.SetTvChannelPlaylist = function (tvChannel, playlistName, restart) {
	return _in(0xdec6b25f, 0x5dc8925b, tvChannel, _ts(playlistName), restart);
};

global.SetTvVolume = function (volume) {
	return _in(0x73a97068, 0x787d7231, _fv(volume));
};

global.SetUpSpeedRestrainInformationForPlayerFollower = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xb5c51dd5, 0x44f14f58, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.SetVehicleAlarmTimeLeft = function (vehicle, time) {
	return _in(0x00000000, 0xc108ee6f, vehicle, time);
};

global.SetVehicleAllowNoPassengersLockon = function (veh, toggle) {
	return _in(0xecb9e9bc, 0x887e8060, veh, toggle);
};

global.SetVehicleAsNoLongerNeeded = function (vehicle) {
	return _in(0x629bfa74, 0x418d6239, _ii(vehicle) /* may be optional */);
};

/**
 * Disables the vehicle from being repaired when a vehicle extra is enabled.
 * @param vehicle The vehicle to set disable auto vehicle repair.
 * @param value Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
 */
global.SetVehicleAutoRepairDisabled = function (vehicle, value) {
	return _in(0x00000000, 0x5f3a3574, vehicle, value);
};

global.SetVehicleAutomaticallyAttaches = function (vehicle, p1, p2) {
	return _in(0x50135495, 0x1cd942de, vehicle, p1, p2, _r, _ri);
};

global.SetVehicleBodyHealth = function (vehicle, value) {
	return _in(0x55ccaae4, 0xf28c67a0, vehicle, _fv(value));
};

global.SetVehicleCanBeTargetted = function (vehicle, state) {
	return _in(0x05254ba0, 0xb44adc16, vehicle, state);
};

global.SetVehicleCanBeUsedByFleeingPeds = function (vehicle, toggle) {
	return _in(0xe4295251, 0x0f84afdb, vehicle, toggle);
};

global.SetVehicleCanBeVisiblyDamaged = function (vehicle, state) {
	return _in(0x4bf8131a, 0xe811541c, vehicle, state);
};

global.SetVehicleCanBreak = function (vehicle, toggle) {
	return _in(0xc5ed9d59, 0xb4646611, vehicle, toggle);
};

global.SetVehicleClutch = function (vehicle, clutch) {
	return _in(0x00000000, 0x2f70aced, vehicle, _fv(clutch));
};

global.SetVehicleCurrentRpm = function (vehicle, rpm) {
	return _in(0x00000000, 0x2a01a8fc, vehicle, _fv(rpm));
};

global.SetVehicleDamage = function (vehicle, xOffset, yOffset, zOffset, damage, radius, p6) {
	return _in(0x1d7678f8, 0x1452bb41, vehicle, _fv(xOffset), _fv(yOffset), _fv(zOffset), _fv(damage), _fv(radius), p6);
};

global.SetVehicleDensityMultiplierThisFrame = function (multiplier) {
	return _in(0x606374eb, 0xfc27b133, _fv(multiplier));
};

global.SetVehicleDirtLevel = function (vehicle, dirtLevel) {
	return _in(0x758c3460, 0xee915d0a, vehicle, _fv(dirtLevel));
};

global.SetVehicleDoorBroken = function (vehicle, doorIndex, deleteDoor) {
	return _in(0x9666cf20, 0xa1c6d780, vehicle, doorIndex, deleteDoor);
};

global.SetVehicleDoorCanBreak = function (vehicle, doorIndex, isBreakable) {
	return _in(0x081fb9d6, 0x422f804c, vehicle, doorIndex, isBreakable);
};

global.SetVehicleDoorControl = function (vehicle, doorIndex, speed, angle) {
	return _in(0xd57f10eb, 0xba814ecf, vehicle, doorIndex, speed, _fv(angle));
};

global.SetVehicleDoorDestroyType = function (vehicle, doorIndex, destroyType) {
	return _in(0xa9f1d751, 0x95cc40f6, vehicle, doorIndex, destroyType);
};

global.SetVehicleDoorLatched = function (vehicle, doorIndex, p2, p3, p4) {
	return _in(0x06f8a202, 0xeb312a3c, vehicle, doorIndex, p2, p3, p4);
};

global.SetVehicleDoorOpen = function (vehicle, doorIndex, loose, openInstantly) {
	return _in(0x550ce392, 0xa4672412, vehicle, doorIndex, loose, openInstantly);
};

global.SetVehicleDoorShut = function (vehicle, doorIndex, closeInstantly) {
	return _in(0x6a3c24b9, 0x1fd0ea09, vehicle, doorIndex, closeInstantly);
};

global.SetVehicleDoorsLocked = function (vehicle, doorLockStatus) {
	return _in(0x96f78a6a, 0x075d55d9, vehicle, doorLockStatus);
};

global.SetVehicleDoorsLockedForAllPlayers = function (vehicle, toggle) {
	return _in(0x2381977d, 0xa948f8dc, vehicle, toggle);
};

global.SetVehicleDoorsLockedForPlayer = function (vehicle, player, toggle) {
	return _in(0x359a8ea1, 0xfb8d6f0f, vehicle, player, toggle);
};

global.SetVehicleDoorsLockedForTeam = function (vehicle, team, toggle) {
	return _in(0xe712bc97, 0x8770f105, vehicle, team, toggle);
};

global.SetVehicleDoorsShut = function (vehicle, closeInstantly) {
	return _in(0xa4ffcd64, 0x5b11f25a, vehicle, closeInstantly);
};

global.SetVehicleEngineCanDegrade = function (vehicle, toggle) {
	return _in(0x48e4c137, 0xa71c2688, vehicle, toggle);
};

global.SetVehicleEngineHealth = function (vehicle, health) {
	return _in(0x8bdc5b99, 0x8b4654ef, vehicle, _fv(health));
};

global.SetVehicleEngineOn = function (p0, p1, p2) {
	return _in(0xb64cfa14, 0xcb9a2e78, p0, p1, p2);
};

global.SetVehicleEngineTemperature = function (vehicle, temperature) {
	return _in(0x00000000, 0x6c93c4a9, vehicle, _fv(temperature));
};

global.SetVehicleExclusiveDriver = function (vehicle, toggle) {
	return _in(0x0893dafb, 0xfa67110e, vehicle, toggle);
};

global.SetVehicleExclusiveDriver_2 = function (vehicle, ped, index) {
	return _in(0xc6b9bf12, 0x3b9463b6, vehicle, ped, index);
};

global.SetVehicleExplodesOnHighExplosionDamage = function (vehicle, toggle) {
	return _in(0xa402939c, 0x6761e1a3, vehicle, toggle);
};

global.SetVehicleExtra = function (vehicle, extraId, disable) {
	return _in(0xbb6f8915, 0x0bc9d16b, vehicle, extraId, disable);
};

global.SetVehicleFixed = function (vehicle) {
	return _in(0x79811282, 0xa9d1ae56, vehicle);
};

global.SetVehicleForwardSpeed = function (vehicle, speed) {
	return _in(0xf9f92af4, 0x9f12f6e7, vehicle, _fv(speed));
};

global.SetVehicleFuelLevel = function (vehicle, level) {
	return _in(0x00000000, 0xba970511, vehicle, _fv(level));
};

global.SetVehicleGravityAmount = function (vehicle, gravity) {
	return _in(0x00000000, 0x1a963e58, vehicle, _fv(gravity));
};

global.SetVehicleHandbrake = function (vehicle, toggle) {
	return _in(0x91be51ae, 0xc4e99710, vehicle, toggle);
};

/**
 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
 * Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
 * @param vehicle The vehicle to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The value to set.
 */
global.SetVehicleHandlingField = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x2ba40795, vehicle, _ts(class_), _ts(fieldName), value);
};

/**
 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
 * Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
 * @param vehicle The vehicle to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The floating-point value to set.
 */
global.SetVehicleHandlingFloat = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x488c86d2, vehicle, _ts(class_), _ts(fieldName), _fv(value));
};

/**
 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
 * @param vehicle The vehicle to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The integer value to set.
 */
global.SetVehicleHandlingInt = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0xc37f4cf9, vehicle, _ts(class_), _ts(fieldName), value);
};

/**
 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
 * @param vehicle The vehicle to set data for.
 * @param class_ The handling class to set. Only "CHandlingData" is supported at this time.
 * @param fieldName The field name to set. These match the keys in `handling.meta`.
 * @param value The Vector3 value to set.
 */
global.SetVehicleHandlingVector = function (vehicle, class_, fieldName, value) {
	return _in(0x00000000, 0x12497890, vehicle, _ts(class_), _ts(fieldName), value);
};

global.SetVehicleHasBeenOwnedByPlayer = function (vehicle, owned) {
	return _in(0xbb5a3fa8, 0xed3979c5, vehicle, owned);
};

global.SetVehicleHasStrongAxles = function (vehicle, toggle) {
	return _in(0x252253c8, 0xa45aa1fc, vehicle, toggle);
};

global.SetVehicleHighGear = function (vehicle, gear) {
	return _in(0x00000000, 0x20b1b3e6, vehicle, gear);
};

global.SetVehicleInactiveDuringPlayback = function (vehicle, toggle) {
	return _in(0x4ea71b4c, 0x9db3c3f1, vehicle, toggle);
};

global.SetVehicleIsConsideredByPlayer = function (vehicle, toggle) {
	return _in(0x54800d38, 0x6c5825e5, vehicle, toggle);
};

global.SetVehicleIsStolen = function (vehicle, isStolen) {
	return _in(0x6c32fc81, 0xdff25c9a, vehicle, isStolen);
};

global.SetVehicleJetEngineOn = function (vehicle, toggle) {
	return _in(0x1549ba7f, 0xe83a2383, vehicle, toggle);
};

global.SetVehicleLights = function (vehicle, state) {
	return _in(0x629f0a0e, 0x952cae7d, vehicle, state);
};

global.SetVehicleLightsCanBeVisiblyDamaged = function (vehicle, p1) {
	return _in(0xc903855e, 0x028a05f2, vehicle, p1);
};

global.SetVehicleLodMultiplier = function (vehicle, multiplier) {
	return _in(0x5f5e2b1b, 0x9eaecc0f, vehicle, _fv(multiplier));
};

global.SetVehicleOilLevel = function (vehicle, level) {
	return _in(0x00000000, 0x90d1cad1, vehicle, _fv(level));
};

global.SetVehicleOnGroundProperly = function (vehicle, p1) {
	return _in(0x72633325, 0x01e07f52, vehicle, _fv(p1), _r);
};

global.SetVehiclePetrolTankHealth = function (vehicle, health) {
	return _in(0x6ab2918e, 0xe3bec94c, vehicle, _fv(health));
};

global.SetVehicleProvidesCover = function (vehicle, toggle) {
	return _in(0x65271247, 0x8f1721f4, vehicle, toggle);
};

global.SetVehicleShootAtTarget = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xb79be78c, 0x665b3e6d, p0, p1, p2, p3, p4, p5);
};

global.SetVehicleSteerBias = function (vehicle, value) {
	return _in(0x84daae11, 0xe9ee4fc3, vehicle, _fv(value));
};

global.SetVehicleSteeringAngle = function (vehicle, angle) {
	return _in(0x00000000, 0xffccc2ea, vehicle, _fv(angle));
};

global.SetVehicleSteeringScale = function (vehicle, scale) {
	return _in(0x00000000, 0xeb46596f, vehicle, _fv(scale));
};

global.SetVehicleStrong = function (vehicle, toggle) {
	return _in(0xab315515, 0xc9f8803d, vehicle, toggle);
};

global.SetVehicleTurboPressure = function (vehicle, pressure) {
	return _in(0x00000000, 0x6485615e, vehicle, _fv(pressure));
};

global.SetVehicleTyresCanBurst = function (vehicle, toggle) {
	return _in(0xebd0a4e9, 0x35106fe5, vehicle, toggle);
};

global.SetVehicleUndriveable = function (vehicle, toggle) {
	return _in(0x6e884bab, 0x713a2a94, vehicle, toggle);
};

global.SetVehicleWheelHealth = function (vehicle, wheelIndex, health) {
	return _in(0x00000000, 0xb22ecefd, vehicle, wheelIndex, _fv(health));
};

/**
 * Adjusts the offset of the specified wheel relative to the wheel's axle center.
 * Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
 * This function can be especially useful to set the track width of a vehicle, for example:
 * ```
 * function SetVehicleFrontTrackWidth(vehicle, width)
 * SetVehicleWheelXOffset(vehicle, 0, -width/2)
 * SetVehicleWheelXOffset(vehicle, 1, width/2)
 * end
 * ```
 * @param vehicle 
 * @param wheelIndex 
 * @param offset 
 */
global.SetVehicleWheelXOffset = function (vehicle, wheelIndex, offset) {
	return _in(0x00000000, 0x0bd6357d, vehicle, wheelIndex, _fv(offset));
};

global.SetVehicleWheelYRotation = function (vehicle, wheelIndex, value) {
	return _in(0x00000000, 0xc6c2171f, vehicle, wheelIndex, _fv(value));
};
global.SetVehicleWheelXrot = global.SetVehicleWheelYRotation;

/**
 * Example script: <https://pastebin.com/J6XGbkCW>
 * List of known states:
 * ```
 * 1: Not wheeling.
 * 65: Vehicle is ready to do wheelie (burnouting).
 * 129: Vehicle is doing wheelie.
 * ```
 * @param vehicle Vehicle
 * @param state Wheelie state
 */
global.SetVehicleWheelieState = function (vehicle, state) {
	return _in(0x00000000, 0xeab8db65, vehicle, state);
};

global.SetVehicleWheelsCanBreak = function (vehicle, enabled) {
	return _in(0x839137c4, 0x0275fb77, vehicle, enabled);
};

global.SetVehicleWheelsCanBreakOffWhenBlowUp = function (vehicle, toggle) {
	return _in(0xc462c793, 0x79abbcb1, vehicle, toggle);
};

/**
 * Overrides a floating point value from `visualsettings.dat` temporarily.
 * @param name The name of the value to set, such as `pedLight.color.red`.
 * @param value The value to write.
 */
global.SetVisualSettingFloat = function (name, value) {
	return _in(0x00000000, 0xd1d31681, _ts(name), _fv(value));
};

global.SetWantedLevelMultiplier = function (multiplier) {
	return _in(0xd7fa719c, 0xb54866c2, _fv(multiplier));
};

global.SetWaypointOff = function () {
	return _in(0xfa8c41e8, 0x020d3439);
};

global.SetWeatherTypeTransition = function (p0, p1, p2, p3) {
	return _in(0xfa3e3ca8, 0xa1de6d5d, p0, p1, p2, p3);
};

global.SetWidescreenBorders = function (p0, p1) {
	return _in(0xd7f4d54c, 0xf80afa34, p0, p1);
};

global.SetWindDirection = function (direction) {
	return _in(0xb56c4f5f, 0x57a45600, _fv(direction));
};

global.SetWindSpeed = function (speed) {
	return _in(0xd00c2d82, 0xdc04a99f, _fv(speed));
};

global.Settimera = function (value) {
	return _in(0xc1b1e9a0, 0x34a63a62, value);
};

global.Settimerb = function (value) {
	return _in(0x5ae11bc3, 0x6633de4e, value);
};

global.ShakeCam = function (cam, type, amplitude) {
	return _in(0xf9a7bcf5, 0xd050d4e7, cam, _ts(type), _fv(amplitude));
};

global.ShakeGameplayCam = function (shakeName, intensity) {
	return _in(0xd9b31b46, 0x50520529, _ts(shakeName), _fv(intensity));
};

global.ShiftLeft = function (value, bitShift) {
	return _in(0xedd95a39, 0xe5544de8, value, bitShift, _r, _ri);
};

global.ShiftRight = function (value, bitShift) {
	return _in(0x97ef1e5b, 0xce9dc075, value, bitShift, _r, _ri);
};

global.ShootSingleBulletBetweenCoords = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) {
	return _in(0x867654cb, 0xc7606f2c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13);
};

global.ShootSingleBulletBetweenCoordsIgnoreEntityNew = function (p0) {
	return _in(0xcbc9a21f, 0x6a2a679c, p0);
};

global.ShouldUseMetricMeasurements = function () {
	return _in(0x4fb556ac, 0xefa93098, _r);
};

/**
 * Same as SHOULD_USE_METRIC_MEASUREMENTS
 */
global.ShouldUseMetricMeasurements_2 = function () {
	return _in(0x58bcdc75, 0xba52110a, _r);
};

global.ShouldUseMetricTemperature = function () {
	return _in(0xff4aaf32, 0x75baab4f, _r);
};

global.ShouldUseMetricWeight = function () {
	return _in(0x8f24157f, 0xedb85ea2, _r);
};

global.ShouldUse_24HourClock = function () {
	return _in(0x0177cf20, 0x345f44dd, _r);
};

global.ShutdownLoadingScreen = function () {
	return _in(0xfc179d7e, 0x8886dadf);
};

/**
 * Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
 */
global.ShutdownLoadingScreenNui = function () {
	return _in(0x00000000, 0xb9234afb);
};

global.SimulatePlayerInputGait = function (player, amount, gaitType, speed, p4, p5) {
	return _in(0xfa0c063c, 0x422c4355, player, _fv(amount), gaitType, _fv(speed), p4, p5);
};

global.SimulatedRouteGetEta = function (p0) {
	return _in(0x2dd5f78d, 0x73b24172, p0, _r, _ri);
};

global.SimulatedRouteIsLoaded = function (p0) {
	return _in(0x24091504, 0x3cb799d7, p0, _r, _ri);
};

global.SimulatedRouteTravelToPoint = function (p0, p1, p2) {
	return _in(0xa1a3de1c, 0x215c7394, p0, _fv(p1), _fv(p2));
};

global.Sin = function (value) {
	return _in(0x0badbfa3, 0xb172435f, _fv(value), _r, _rf);
};

global.SkipTimeInPlaybackRecordedVehicle = function (p0, p1) {
	return _in(0x5f5e6379, 0xc59efc56, p0, _fv(p1));
};

global.SkipToNextScriptedConversationLine = function (p0) {
	return _in(0x9663fe6b, 0x7a61eb00, p0);
};

global.SlideObject = function (object, toX, toY, toZ, speedX, speedY, speedZ, collision) {
	return _in(0x2fdff410, 0x7b8c1147, object, _fv(toX), _fv(toY), _fv(toZ), _fv(speedX), _fv(speedY), _fv(speedZ), collision, _r);
};

global.SpactionproxyGetNextPendingBuyAction = function (data) {
	return _in(0x1f471b79, 0xacc98bef, _ii(data) /* may be optional */, _r);
};

global.SpactionproxyGetNextPendingCraftingAction = function (data) {
	return _in(0x1f471b79, 0xacc97bef, _ii(data) /* may be optional */, _r);
};

global.SpactionproxyManagerIsFailed = function () {
	return _in(0x1f471b79, 0xacc91bec, _r);
};

global.SpactionproxyManagerIsReady = function () {
	return _in(0x1f471b79, 0xacc91bed, _r);
};

global.SpactionproxyProcessAction = function (p0, p1) {
	return _in(0x1f471b79, 0xacc94bef, p0, p1, _r);
};

global.SpactionproxyStartManager = function () {
	return _in(0x1f471b79, 0xacc91bee, _r);
};

global.Sqrt = function (value) {
	return _in(0x71d93b57, 0xd07f9804, _fv(value), _r, _rf);
};

global.StartAnimScene = function (animScene) {
	return _in(0xf4d94af7, 0x61768700, animScene);
};

global.StartAudioScene = function (scene) {
	return _in(0x013a80fc, 0x08f6e4f2, _ts(scene), _r);
};

global.StartBenchmarkRecording = function () {
	return _in(0x29d1f6df, 0x864a094e);
};

global.StartEntityFire = function (p0, p1, p2, p3) {
	return _in(0xc4dc7418, 0xa44d6822, p0, p1, p2, p3);
};

global.StartFindKvp = function (prefix) {
	return _in(0x00000000, 0xdd379006, _ts(prefix), _r, _ri);
};

global.StartGpsMultiRoute = function (hudColor, p1, p2) {
	return _in(0x3d3d15af, 0x7bcaaf83, hudColor, p1, p2);
};

global.StartNetworkedParticleFxLoopedOnEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x8f90ab32, 0xe1944bde, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, _r, _ri);
};

global.StartNetworkedParticleFxLoopedOnEntityBone = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x9c566214, 0x62ffe7a6, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, _r, _ri);
};

global.StartNetworkedParticleFxNonLoopedAtCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xfb976184, 0x57994a62, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, _r);
};

global.StartNetworkedParticleFxNonLoopedOnEntity = function (effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) {
	return _in(0xe6cfe439, 0x37061143, _ts(effectName), entity, _fv(offsetX), _fv(offsetY), _fv(offsetZ), _fv(rotX), _fv(rotY), _fv(rotZ), _fv(scale), axisX, axisY, axisZ, _r);
};

global.StartNewScript = function (scriptName, stackSize) {
	return _in(0xe81651ad, 0x79516e48, _ts(scriptName), stackSize, _r, _ri);
};

global.StartNewScriptWithArgs = function (scriptName, argCount, stackSize) {
	return _in(0xb8ba7f44, 0xdf1575e1, _ts(scriptName), _i, argCount, stackSize, _r, _ri);
};

global.StartNewScriptWithNameHash = function (scriptHash, stackSize) {
	return _in(0xeb1c67c3, 0xa5333a92, _ch(scriptHash), stackSize, _r, _ri);
};

global.StartNewScriptWithNameHashAndArgs = function (scriptHash, argCount, stackSize) {
	return _in(0xc4bb298b, 0xd441be78, _ch(scriptHash), _i, argCount, stackSize, _r, _ri);
};

global.StartParticleFxLoopedAtCoord = function (effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11) {
	return _in(0xba32867e, 0x86125d3a, _ts(effectName), _fv(x), _fv(y), _fv(z), _fv(xRot), _fv(yRot), _fv(zRot), _fv(scale), xAxis, yAxis, zAxis, p11, _r, _ri);
};

global.StartParticleFxLoopedOnEntity = function (effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) {
	return _in(0xbd41e144, 0x0ce39800, _ts(effectName), entity, _fv(xOffset), _fv(yOffset), _fv(zOffset), _fv(xRot), _fv(yRot), _fv(zRot), _fv(scale), xAxis, yAxis, zAxis, _r, _ri);
};

global.StartParticleFxLoopedOnEntityBone = function (effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) {
	return _in(0xd3ba6ec7, 0xf2fbd5e9, _ts(effectName), entity, _fv(xOffset), _fv(yOffset), _fv(zOffset), _fv(xRot), _fv(yRot), _fv(zRot), boneIndex, _fv(scale), xAxis, yAxis, zAxis, _r, _ri);
};

global.StartParticleFxLoopedOnPedBone = function (effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) {
	return _in(0xe689c1b1, 0x432bb8af, _ts(effectName), ped, _fv(xOffset), _fv(yOffset), _fv(zOffset), _fv(xRot), _fv(yRot), _fv(zRot), boneIndex, _fv(scale), xAxis, yAxis, zAxis, _r, _ri);
};

global.StartParticleFxNonLoopedAtCoord = function (effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) {
	return _in(0x2e80bf72, 0xef7c87ac, _ts(effectName), _fv(xPos), _fv(yPos), _fv(zPos), _fv(xRot), _fv(yRot), _fv(zRot), _fv(scale), xAxis, yAxis, zAxis, _r, _ri);
};

global.StartParticleFxNonLoopedOnEntity = function (effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) {
	return _in(0xff4c64c5, 0x13388c12, _ts(effectName), entity, _fv(offsetX), _fv(offsetY), _fv(offsetZ), _fv(rotX), _fv(rotY), _fv(rotZ), _fv(scale), axisX, axisY, axisZ, _r);
};

global.StartParticleFxNonLoopedOnPedBone = function (effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) {
	return _in(0x3faa72bd, 0x940c3ac0, _ts(effectName), ped, _fv(offsetX), _fv(offsetY), _fv(offsetZ), _fv(rotX), _fv(rotY), _fv(rotZ), boneIndex, _fv(scale), axisX, axisY, axisZ, _r);
};

global.StartPetrolTrailDecals = function (p0, p1) {
	return _in(0x46f246d6, 0x504f0031, p0, p1);
};

global.StartPlaybackRecordedVehicle = function (vehicle, p1, playback, p3) {
	return _in(0x4932b84e, 0x3276508e, vehicle, p1, _ts(playback), p3);
};

global.StartPlayerTeleport = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xdf8822c5, 0x5edda65b, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.StartPreloadedConversation = function (p0) {
	return _in(0x23641afe, 0x870af385, p0);
};

global.StartRopeUnwindingFront = function (ropeId) {
	return _in(0x538d1179, 0xec1aa9a9, ropeId);
};

global.StartRopeWinding = function (ropeId) {
	return _in(0x1461c72c, 0x889e343e, ropeId);
};

global.StartScriptConversation = function (p0, p1, p2, p3) {
	return _in(0x6b17c62c, 0x9635d2dc, p0, p1, p2, p3);
};

global.StartScriptFire = function (x, y, z, p3, p4, p5, soundsetName, p7, p8) {
	return _in(0x6b83617e, 0x04503888, _fv(x), _fv(y), _fv(z), p3, _fv(p4), p5, _ts(soundsetName), _fv(p7), p8, _r, _ri);
};

global.StartShapeTestBox = function (x, y, z, x1, y2, z2, rotX, rotY, rotZ, p9, p10, entity, p12) {
	return _in(0xfe466162, 0xc4401d18, _fv(x), _fv(y), _fv(z), _fv(x1), _fv(y2), _fv(z2), _fv(rotX), _fv(rotY), _fv(rotZ), p9, p10, entity, p12, _r, _ri);
};

global.StartShapeTestCapsule = function (x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) {
	return _in(0x28579d1b, 0x8f8aac80, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _fv(radius), flags, entity, p9, _r, _ri);
};

global.StartShapeTestLosProbe = function (x1, y1, z1, x2, y2, z2, flags, entity, p8) {
	return _in(0x7ee9f5d8, 0x3dd4f90e, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), flags, entity, p8, _r, _ri);
};

global.StartShapeTestRay = function (x1, y1, z1, x2, y2, z2, flags, entity, p8) {
	return _in(0x377906d8, 0xa31e5586, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), flags, entity, p8, _r, _ri);
};

global.StartShapeTestSurroundingCoords = function (flag, entity, flag2) {
	return _in(0x9839013d, 0x8b6014f1, _v, _v, flag, entity, flag2, _r, _ri);
};

global.StartShapeTestSweptSphere = function (x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) {
	return _in(0xaa5b7c83, 0x09f73230, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _fv(radius), flags, entity, p9, _r, _ri);
};

global.StartVehicleHorn = function (vehicle, duration, mode, forever) {
	return _in(0xb4e3bfc3, 0x9ca16057, vehicle, duration, _ch(mode), forever);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param value :
 */
global.StatIdGetBool = function () {
	return _in(0x11b5e6d2, 0xae73f48f, _i, _i /* actually bool */, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param date :
 */
global.StatIdGetDate = function () {
	return _in(0x8b0facef, 0xc36c824c, _i, _i, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param value :
 */
global.StatIdGetFloat = function () {
	return _in(0xd7ae6c9c, 0x9c6ac54d, _i, _f, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param p1 :
 */
global.StatIdGetInt = function () {
	return _in(0x767fbc2a, 0xc802ef3e, _i, _i, _r);
};

/**
 * struct StatId
 * {
 * alignas(8) Hash BaseId;
 * alignas(8) Hash PermutationId;
 * }
 * @param statId :
 */
global.StatIdIsValid = function (statId) {
	return _in(0xc48fe197, 0x1c9743ff, _ii(statId) /* may be optional */, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param value :
 * @param p2 :
 */
global.StatIdSetBool = function (value, p2) {
	return _in(0x3b510735, 0x3267d7a1, _i, value, p2, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param date :
 * @param p2 :
 */
global.StatIdSetDate = function (p2) {
	return _in(0x1fae9b2f, 0xaa2dfe06, _i, _i, p2, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param value :
 * @param p2 :
 */
global.StatIdSetFloat = function (value, p2) {
	return _in(0x481bdf6a, 0x10c5ef68, _i, _fv(value), p2, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param label :
 * @param p2 :
 */
global.StatIdSetGxtLabel = function (label, p2) {
	return _in(0x05060a54, 0x834f2382, _i, _ts(label), p2, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 * @param value :
 * @param p2 :
 */
global.StatIdSetInt = function (value, p2) {
	return _in(0xa4ddf5df, 0x95e65eee, _i, value, p2, _r);
};

/**
 * statId: see 0xC48FE1971C9743FF
 * @param statId :
 */
global.StatIdSetToPosseId = function (statId) {
	return _in(0x34b22de3, 0x8477edb4, _ii(statId) /* may be optional */);
};

global.StateMachineCreate = function (p0, p1) {
	return _in(0x4c6f2c4b, 0x7a03a266, p0, p1, _r, _ri);
};

global.StateMachineDestroy = function (p0) {
	return _in(0x4eb12221, 0x0a90e2d8, p0);
};

global.StateMachineRequestTransition = function (p0, p1) {
	return _in(0x7ea9c354, 0x7e80350e, p0, p1, _r, _ri);
};

global.StopAnimPlayback = function (ped, p1, p2) {
	return _in(0xee08c992, 0xd238c5d1, ped, p1, p2);
};

global.StopAnimTask = function (ped, animDictionary, animationName, p3) {
	return _in(0x97ff36a1, 0xd40ea00a, ped, _ts(animDictionary), _ts(animationName), _fv(p3));
};

global.StopAudioScene = function (scene) {
	return _in(0xdfe8422b, 0x3b94e688, _ts(scene));
};

global.StopAudioScenes = function () {
	return _in(0xbac7fc81, 0xa75ec1a1);
};

global.StopBenchmarkRecording = function () {
	return _in(0xb89aec71, 0xaff2b599);
};

global.StopCamPointing = function (cam) {
	return _in(0xca1b30a3, 0x357c71f1, cam);
};

global.StopCamShaking = function (cam, p1) {
	return _in(0xb78cc4b4, 0x706614b0, cam, p1);
};

global.StopCurrentPlayingAmbientSpeech = function (p0, p1) {
	return _in(0xb8bec0ca, 0x6f0edb0f, p0, p1);
};

global.StopCurrentPlayingSpeech = function (p0, p1) {
	return _in(0x79d2f0e6, 0x6f81d90d, p0, p1);
};

global.StopEntityAnim = function (entity, animation, animGroup, p3) {
	return _in(0x786591d9, 0x86de9159, entity, _ts(animation), _ts(animGroup), _fv(p3), _r, _ri);
};

global.StopEntityFire = function (p0, p1) {
	return _in(0x8390751d, 0xc40c1e98, p0, p1);
};

global.StopFireInRange = function (x, y, z, radius) {
	return _in(0xdb38f247, 0xbd421708, _fv(x), _fv(y), _fv(z), _fv(radius));
};

global.StopGameplayCamShaking = function (p0) {
	return _in(0xe0de43d2, 0x90fb65f9, p0);
};

global.StopGameplayHint = function (p0) {
	return _in(0x1bcec33d, 0x54cfca8a, p0);
};

global.StopPadShake = function (padIndex) {
	return _in(0x38c16a30, 0x5e8cdc8d, padIndex);
};

global.StopParticleFxLooped = function (ptfxHandle, p1) {
	return _in(0x22970f3a, 0x088b133b, ptfxHandle, p1);
};

global.StopPedSpeaking = function (ped, shaking) {
	return _in(0x9d64d740, 0x5520e3d3, ped, shaking);
};

global.StopPlaybackRecordedVehicle = function (vehicle) {
	return _in(0xbf9b4d62, 0x67e8c26d, vehicle);
};

global.StopPlayerTeleport = function () {
	return _in(0x0858b861, 0x46601be8);
};

global.StopRecordingThisFrame = function () {
	return _in(0xa8c44c13, 0x419634f2);
};

global.StopRopeUnwindingFront = function (ropeId) {
	return _in(0xfff3a507, 0x79efbbb3, ropeId);
};

global.StopRopeWinding = function (ropeId) {
	return _in(0xcb2d4ab8, 0x4a19aa7c, ropeId);
};

global.StopScriptedConversation = function (p0, p1, p2) {
	return _in(0xd79deefb, 0x53455eba, p0, p1, p2, _r, _ri);
};

global.StopStream = function (p0) {
	return _in(0xa4718a14, 0x19d18151, p0);
};

global.StringToInt = function (string, outInteger) {
	return _in(0xf2dd2298, 0xb3af23e2, _ts(string), _ii(outInteger) /* may be optional */, _r);
};

global.SuppressShockingEventsNextFrame = function () {
	return _in(0x84994fad, 0x4e4e4e69);
};

global.TakeOwnershipOfAnimScene = function (animScene) {
	return _in(0xf7a4c571, 0xe572d237, animScene);
};

global.Tan = function (p0) {
	return _in(0x8c13db96, 0x497b7abf, _fv(p0), _r, _rf);
};

global.TaskAchieveHeading = function (ped, heading, timeout) {
	return _in(0x93b93a37, 0x987f1f3d, ped, _fv(heading), timeout);
};

global.TaskAimAtCoord = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x4af1d738, 0x61212f52, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskAimAtEntity = function (p0, p1, p2, p3, p4) {
	return _in(0xcf7569bd, 0x0fb480a0, p0, p1, p2, p3, p4);
};

global.TaskAimGunAtCoord = function (ped, x, y, z, time, p5, p6) {
	return _in(0x6671f3ee, 0xc681bda1, ped, _fv(x), _fv(y), _fv(z), time, p5, p6);
};

global.TaskAimGunAtEntity = function (p0, p1, p2, p3, p4) {
	return _in(0x9b53bb6e, 0x8943af53, p0, p1, p2, p3, p4);
};

global.TaskAmbientAnimalHunt = function (p0, p1, p2) {
	return _in(0x4b39d8f9, 0xd0fe7749, p0, p1, p2);
};

global.TaskAmbientAnimalStalk = function (p0, p1, p2) {
	return _in(0x37c13863, 0xaba1b4a3, p0, p1, p2);
};

global.TaskAnimalAlerted = function (p0, p1, p2) {
	return _in(0x979d9337, 0x2fc8c565, p0, p1, p2);
};

global.TaskAnimalFlee = function (p0, p1, p2) {
	return _in(0xa899b61c, 0x66f09134, p0, p1, p2);
};

global.TaskAnimalInteraction = function (p0, p1, p2, p3, p4) {
	return _in(0xcd181a95, 0x9cfdd7f4, p0, p1, p2, p3, p4);
};

global.TaskAnimalUnalerted = function (p0, p1, p2, p3, p4) {
	return _in(0x21fdf9a2, 0x5cfe1ce5, p0, p1, p2, p3, p4);
};

global.TaskAnimalWrithe = function (p0, p1, p2) {
	return _in(0x8c038a39, 0xc4a4b6d6, p0, p1, p2);
};

global.TaskArrestPed = function (ped, target) {
	return _in(0xf3b9a78a, 0x178572b1, ped, target);
};

global.TaskBark = function (p0, p1, p2) {
	return _in(0x83bfc1f8, 0x36b2f3f2, p0, p1, p2);
};

global.TaskBoardVehicle = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xe53d17ad, 0x837cbf7c, p0, p1, p2, p3, p4, p5);
};

global.TaskBoardVehicle_2 = function (p0, p1, p2, p3, p4) {
	return _in(0xe41a09c8, 0xddff7aa4, p0, p1, p2, p3, p4);
};

global.TaskBoatMission = function (pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11) {
	return _in(0x15c86013, 0x127ce63f, pedDriver, boat, p2, p3, _fv(x), _fv(y), _fv(z), p7, _fv(maxSpeed), drivingStyle, _fv(p10), p11);
};

global.TaskBreakVehicleDoorLock = function (p0, p1) {
	return _in(0xbb28d1bc, 0x9ea8a6a5, p0, p1);
};

global.TaskClearDefensiveArea = function (p0) {
	return _in(0x95a6c46a, 0x31d1917d, p0);
};

global.TaskClearLookAt = function (ped) {
	return _in(0x0f804f1d, 0xb19b9689, ped);
};

global.TaskClimb = function (ped, unused) {
	return _in(0x89d9fcc2, 0x435112f1, ped, unused);
};

global.TaskClimbLadder = function (p0, p1, p2, p3) {
	return _in(0xb6c987f9, 0x285a3814, p0, p1, p2, p3);
};

global.TaskClimb_2 = function (p0, p1) {
	return _in(0xdf1d85bc, 0xaf60d537, p0, p1);
};

global.TaskCombatAnimalCharge = function (p0, p1, p2, p3) {
	return _in(0xee3aa414, 0xcf99f368, p0, p1, p2, p3);
};

global.TaskCombatAnimalWarn = function (p0, p1, p2) {
	return _in(0xf960f3d5, 0x7b660e96, p0, p1, p2);
};

global.TaskCombatHatedTargets = function (p0, p1) {
	return _in(0x8182b561, 0xa29bd597, p0, p1);
};

global.TaskCombatHatedTargetsAroundPed = function (p0, p1, p2, p3) {
	return _in(0x7bf835bb, 0x9e2698c8, p0, p1, p2, p3);
};

global.TaskCombatHatedTargetsAroundPedTimed = function (p0, p1, p2, p3) {
	return _in(0x2bba30b8, 0x54534a0c, p0, _fv(p1), p2, p3);
};

global.TaskCombatHatedTargetsInArea = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x4cf5f55d, 0xac3280a0, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskCombatHatedTargetsNoLosTest = function (p0, p1) {
	return _in(0xb5bc69d9, 0xc4060bc3, p0, p1);
};

global.TaskCombatPed = function (ped, targetPed, p2, p3) {
	return _in(0xf166e484, 0x07bac484, ped, targetPed, p2, p3);
};

global.TaskCombatPedTimed = function (p0, ped, p2, p3) {
	return _in(0x944f30dc, 0xb7096bde, p0, ped, p2, p3);
};

global.TaskCombatPed_3 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xc624414f, 0xa748b9ba, p0, p1, p2, p3, p4, p5);
};

global.TaskCompanionAmbient = function (p0, p1) {
	return _in(0xe017cf6e, 0x2527fe4f, p0, p1);
};

global.TaskConfront = function (p0, p1, p2) {
	return _in(0x3a2a2071, 0xdf5cc569, p0, p1, p2, _r, _ri);
};

global.TaskCower = function (p0, p1, p2, p3) {
	return _in(0x3eb1fe9e, 0x8e908e15, p0, p1, p2, p3);
};

global.TaskCutFreeHogtiedTargetPed = function (p0, p1) {
	return _in(0x81d16c4f, 0xf3a77adf, p0, p1);
};

global.TaskCutFreeHogtiedTargetPed_2 = function (p0, p1, p2) {
	return _in(0x525421a5, 0x07216084, p0, p1, p2);
};

global.TaskDisembarkVehicle = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xa7c6854b, 0xb5a4192a, p0, p1, p2, p3, p4, p5);
};

global.TaskDisembarkVehicle_2 = function (p0, p1, p2) {
	return _in(0x0a11f3bd, 0xec03ed5f, p0, p1, p2);
};

/**
 * Dismounts the ped from the animal it's mounted on. taskFlag affects what side the rider gets off. 1 << 18 will get off on the left side, where any other value will get off on the right side. The only other known value are 1 << 17 and 1 << 24, which has the behavior of any other value (getting off the animal from the right side). p2-p5 are almost always 0.
 * @param rider :
 * @param taskFlag :
 * @param p2 :
 * @param p3 :
 * @param p4 :
 * @param p5 :
 */
global.TaskDismountAnimal = function (rider, taskFlag, p2, p3, p4, p5) {
	return _in(0x48e92d3d, 0xde23c23a, rider, taskFlag, p2, p3, p4, p5);
};

global.TaskDriveBy = function (driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern) {
	return _in(0x2f8af0e8, 0x2773a171, driverPed, targetPed, targetVehicle, _fv(targetX), _fv(targetY), _fv(targetZ), _fv(distanceToShoot), pedAccuracy, p8, _ch(firingPattern));
};

global.TaskDuck = function (p0, p1) {
	return _in(0xa14b5fbf, 0x986bac23, p0, p1);
};

global.TaskDuel = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x5d5b0d5b, 0xc3626e5a, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskDumpCarriableFromParent = function (p0, p1, p2) {
	return _in(0x17ca9870, 0x7b15926a, p0, p1, p2);
};

global.TaskEat = function (p0, p1, p2) {
	return _in(0xbd7949bd, 0x07299672, p0, p1, p2);
};

global.TaskEmote = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xb31a277c, 0x1ac7b7ff, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskEmote_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x884e3436, 0xcc1f41dd, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskEnterAnimScene = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xc2329b02, 0x06426644, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskEnterCover = function (p0) {
	return _in(0x4972a022, 0xae6dafa1, p0);
};

global.TaskEnterTransport = function (p0) {
	return _in(0xaee3add0, 0x8829cb6f, p0);
};

global.TaskEnterVehicle = function (ped, vehicle, timeout, seat, speed, flag, p6) {
	return _in(0xc20e50aa, 0x46d09ca8, ped, vehicle, timeout, seat, _fv(speed), flag, p6);
};

global.TaskEvasiveAnim = function (p0, p1, p2) {
	return _in(0x5f22926e, 0x1bce9b08, p0, p1, p2);
};

global.TaskEveryoneLeaveVehicle = function (p0, p1) {
	return _in(0x7f93691a, 0xb4b92272, p0, p1);
};

global.TaskEveryoneLeaveVehicleInOrder = function (p0, p1) {
	return _in(0x6f1c49f2, 0x75bd25b3, p0, p1);
};

global.TaskExitCover = function (p0) {
	return _in(0x2bc4a6d9, 0x2d140112, p0);
};

global.TaskExitTransport = function (p0) {
	return _in(0xc273a5b8, 0x488f7838, p0);
};

global.TaskExtendRoute = function (x, y, z) {
	return _in(0x1e788977, 0x8264843a, _fv(x), _fv(y), _fv(z));
};

global.TaskFleeFromCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x6879ff20, 0x8ed87f2a, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
};

global.TaskFleeFromPed = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x7b74d8ee, 0xde9b5727, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskFlushRoute = function () {
	return _in(0x841142a1, 0x376e9006);
};

global.TaskFlyAway = function (p0, p1) {
	return _in(0xe86a537b, 0x5a3c297c, p0, p1);
};

global.TaskFlyToCoord = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd6cfc2d5, 0x9da72042, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskFlyingCircle = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x72997893, 0xbfb8eccc, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskFollowAndConverseWithPed = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x489ffccc, 0xe7392b55, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskFollowEntityAlongWaypointRecordingAtOffset = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x4d2b787b, 0xae9ab760, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskFollowEntityWhileAimingAtEntity = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x2d532eaa, 0x142cf83f, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskFollowNavMeshToCoord = function (ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk) {
	return _in(0x15d3a79d, 0x4e44b913, ped, _fv(x), _fv(y), _fv(z), _fv(speed), timeout, _fv(stoppingRange), persistFollowing, _fv(unk));
};

global.TaskFollowNavMeshToCoordAdvanced = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x17f58b88, 0xd085dbac, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
};

global.TaskFollowPavementToCoord = function (p0, p1) {
	return _in(0x1b147541, 0x4e70dd8e, p0, p1);
};

global.TaskFollowPointRoute = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x0e14c555, 0x0dc3cd1d, p0, p1, p2, p3, p4, p5);
};

global.TaskFollowToOffsetOfCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0x2e367628, 0x2c18a692, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskFollowToOffsetOfEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x304ae42e, 0x357b8c7e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
};

global.TaskFollowWaypointRecording = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x07595918, 0x19534f7b, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskFollowWaypointRecordingAdvanced = function (p0, p1) {
	return _in(0x0cfc13eb, 0xc19bca52, p0, p1);
};

global.TaskFollowWaypointRecordingAtOffset = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xbe9b0520, 0xbd7c445b, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskForceMotionState = function (ped, state, p2) {
	return _in(0x4f056e1a, 0xffef17ab, ped, _ch(state), p2);
};

global.TaskGoStraightToCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xd76b57b4, 0x4f1e6f8b, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskGoStraightToCoordRelativeToEntity = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x61e360b7, 0xe040d12e, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskGoToCoordAndAimAtHatedEntitiesNearCoord = function (pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, firingPattern) {
	return _in(0xa5554780, 0x1eb331fc, pedHandle, _fv(goToLocationX), _fv(goToLocationY), _fv(goToLocationZ), _fv(focusLocationX), _fv(focusLocationY), _fv(focusLocationZ), _fv(speed), shootAtEnemies, _fv(distanceToStopAt), _fv(noRoadsDistance), unkTrue, unkFlag, aimingFlag, _ch(firingPattern));
};

global.TaskGoToCoordAndAimAtHatedEntitiesNearCoordUsingCombatStyle = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0x87bd711f, 0xc31ea273, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskGoToCoordAnyMeans = function (ped, x, y, z, speed, p5, p6, walkingStyle, p8) {
	return _in(0x5bc448cb, 0x78fa3e88, ped, _fv(x), _fv(y), _fv(z), _fv(speed), p5, p6, walkingStyle, _fv(p8));
};

global.TaskGoToCoordAnyMeansExtraParams = function (ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12) {
	return _in(0x1dd45f9e, 0xcfdb1bc9, ped, _fv(x), _fv(y), _fv(z), _fv(speed), p5, p6, walkingStyle, _fv(p8), p9, p10, p11, p12);
};

global.TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0xb8ecd61f, 0x531a7b02, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskGoToCoordWhileAimingAtCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) {
	return _in(0x11315ab3, 0x385b8ac0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15);
};

global.TaskGoToCoordWhileAimingAtCoordUsingCombatStyle = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) {
	return _in(0x639c0425, 0xa0b4e77e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15);
};

global.TaskGoToCoordWhileAimingAtEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0xb2a16444, 0xead9ae47, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskGoToCoordWhileAimingAtEntityUsingCombatStyle = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0x78426d09, 0x82d083c9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskGoToEntity = function (entity, target, duration, distance, speed, p5, p6) {
	return _in(0x6a071245, 0xeb0d1882, entity, target, duration, _fv(distance), _fv(speed), _fv(p5), p6);
};

global.TaskGoToEntityWhileAimingAtEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x97465886, 0xd35210e9, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskGoToEntityWhileAimingAtEntityUsingCombatStyle = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0xcef0117c, 0x233026ad, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskGoToWhistle = function (p0, p1, p2) {
	return _in(0xbad65456, 0x08ceca6e, p0, p1, p2);
};

global.TaskGotoEntityAiming = function (ped, target, distanceToStopAt, StartAimingDist) {
	return _in(0xa9da48fa, 0xb8a76c12, ped, target, _fv(distanceToStopAt), _fv(StartAimingDist));
};

global.TaskGotoEntityOffset = function (ped, p1, p2, x, y, z, duration) {
	return _in(0xe39b4ff4, 0xfdebde27, ped, p1, p2, _fv(x), _fv(y), _fv(z), duration);
};

global.TaskGotoEntityOffsetXy = function (p0, oed, duration, p3, p4, p5, p6, p7) {
	return _in(0x338e7ef5, 0x2b6095a9, p0, oed, duration, _fv(p3), _fv(p4), _fv(p5), _fv(p6), p7);
};

global.TaskGotoEntityOffsetXyAiming = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x901bd699, 0x84400f62, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskGotoEntityOffsetXyzAiming = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x41b0832c, 0xa96b5351, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskGrapple = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x779a2ffa, 0xcefaea7b, p0, p1, p2, p3, p4, p5, p6, _r, _ri);
};

global.TaskGuard = function (p0, p1, p2) {
	return _in(0xb9fb242e, 0xaccaf30f, p0, p1, p2);
};

global.TaskGuardAssignedDefensiveArea = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd2a207ee, 0xbdf9889b, p0, _fv(p1), _fv(p2), _fv(p3), _fv(p4), _fv(p5), p6);
};

global.TaskGuardAssignedDefensiveArea_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x1fc9b339, 0x76bacd6c, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskGuardCurrentPosition = function (p0, p1, p2, p3) {
	return _in(0x4a58a47a, 0x72e3fcb4, p0, _fv(p1), _fv(p2), p3);
};

global.TaskHandsUp = function (ped, duration, facingPed, p3, p4) {
	return _in(0xf2eab319, 0x79a7f910, ped, duration, facingPed, p3, p4);
};

global.TaskHitchAnimal = function (p0, p1, p2) {
	return _in(0x9030ad4b, 0x6207bfe8, p0, p1, p2);
};

global.TaskHogtieTargetPed = function (p0, p1) {
	return _in(0x27829afd, 0x3e03ac1a, p0, p1);
};

global.TaskHogtieable = function (p0) {
	return _in(0x6afd8fe0, 0xd723328f, p0);
};

global.TaskHorseAction = function (p0, p1, p2, p3) {
	return _in(0xa09cfd29, 0x100f06c3, p0, p1, p2, p3);
};

global.TaskIntimidated = function (p0, p1, p2, p3, p4) {
	return _in(0x648b75d4, 0x4930d6bd, p0, p1, p2, p3, p4, _r, _ri);
};

global.TaskIntimidated_2 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x933acc1a, 0x1771a288, p0, p1, p2, p3, p4, p5, p6, p7, p8, _r, _ri);
};

global.TaskInvestigate = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x5c851454, 0x0d27fbfb, p0, p1, p2, p3, p4, p5);
};

global.TaskItemInteraction = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xae72e7df, 0x013aaa61, p0, p1, p2, p3, p4, p5);
};

global.TaskItemInteraction_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x72f52aa2, 0xd2b172cc, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskItemInteraction_3 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xd61d5e1a, 0xd9876deb, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskJump = function (ped, unused) {
	return _in(0x0ae40861, 0x04e067b1, ped, unused);
};

global.TaskJump_2 = function (ped, x, y, z, entity) {
	return _in(0x91083103, 0x137d7254, ped, _fv(x), _fv(y), _fv(z), entity);
};

global.TaskKnockedOut = function (p0, p1, p2) {
	return _in(0xf90427f0, 0x0a495a28, p0, p1, p2);
};

global.TaskKnockedOutAndHogtied = function (p0, p1, p2) {
	return _in(0x42ac6401, 0xabb8c7e5, p0, p1, p2);
};

global.TaskLassoPed = function (p0, p1) {
	return _in(0xc716eb2b, 0xd16370a3, p0, p1);
};

global.TaskLeadAndConverse = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xaa19711d, 0x33c6708c, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskLeadHorse = function (p0, p1) {
	return _in(0x9a7a4a54, 0x596fe09d, p0, p1);
};

global.TaskLeaveAnyVehicle = function (ped, p1, p2) {
	return _in(0x504d54df, 0x3f6f2247, ped, p1, p2);
};

global.TaskLeaveVehicle = function (p0, p1, p2, p3) {
	return _in(0xd3dbce61, 0xa490be02, p0, p1, p2, p3);
};

global.TaskLookAtCoord = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x6fa46612, 0x594f7973, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskLookAtEntity = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x69f4be8c, 0x8cc4796c, p0, p1, p2, p3, p4, p5);
};

global.TaskLootEntity = function (p0, p1) {
	return _in(0x48fae038, 0x401a2888, p0, p1);
};

global.TaskLootNearestEntity = function (p0, p1, p2, p3, p4, p5) {
	return _in(0xcf1501cb, 0xc4059412, p0, p1, p2, p3, p4, p5);
};

global.TaskMelee = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x482c99d0, 0xb38d1b0a, p0, p1, p2, p3, p4, p5, p6, p7, _r, _ri);
};

global.TaskMountAnimal = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x92db0739, 0x813c5186, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskMoveBeInFormation = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x4aa5aa97, 0xc65e4a2f, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskMoveInTraffic = function (p0, p1, p2, p3) {
	return _in(0x8aa1593a, 0xec087a29, p0, p1, p2, p3);
};

global.TaskMoveInTraffic_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xdca3a13f, 0x7a45338b, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskMoveInTraffic_3 = function (p0, p1, p2, p3, p4) {
	return _in(0x13ded0bc, 0x45600fe1, p0, p1, p2, p3, p4);
};

global.TaskMoveInTraffic_4 = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x79482c12, 0x482a860d, p0, p1, p2, p3, p4, p5);
};

global.TaskMoveNetworkAdvancedByNameWithInitParamsAttached = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17) {
	return _in(0xf9217109, 0x3bcabed4, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17);
};

global.TaskMoveNetworkByName = function (ped, task, multiplier, p3, animDict, flags) {
	return _in(0x2d537ba1, 0x94896636, ped, _ts(task), _fv(multiplier), p3, _ts(animDict), flags);
};

global.TaskPatrol = function (ped, p1, p2, p3, p4) {
	return _in(0xbda5df49, 0xd080fe4e, ped, _ts(p1), p2, p3, p4);
};

global.TaskPatrol_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x964b06c8, 0x8e4c86db, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskPause = function (ped, ms) {
	return _in(0xe73a266d, 0xb0ca9042, ped, ms);
};

global.TaskPedSlideToCoord = function (ped, x, y, z, heading, p5) {
	return _in(0xd04fe676, 0x5d990a06, ped, _fv(x), _fv(y), _fv(z), _fv(heading), _fv(p5));
};

global.TaskPerformSequence = function (ped, taskSequenceId) {
	return _in(0x5aba3986, 0xd90d8a3b, ped, taskSequenceId);
};

global.TaskPerformSequenceFromProgress = function (p0, p1, p2, p3) {
	return _in(0x89221b16, 0x730234f0, p0, p1, p2, p3);
};

global.TaskPerformSequence_2 = function (p0, p1, p2, p3) {
	return _in(0x4fc0af86, 0x9d6e309d, p0, p1, p2, p3);
};

global.TaskPersistentCharacter = function (p0) {
	return _in(0x4391700c, 0xbd89c3d8, p0);
};

global.TaskPickUpWeapon = function (p0, p1) {
	return _in(0x55b0ecfd, 0x98596624, p0, p1);
};

global.TaskPickupCarriableEntity = function (p0, p1) {
	return _in(0x502ec17b, 0x1bed4bfa, p0, p1);
};

global.TaskPlaceCarriedEntityAtCoord = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xc7f0b43d, 0xcdc57e3d, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskPlaceCarriedEntityOnMount = function (p0, p1, p2, p3) {
	return _in(0x6d3d87c5, 0x7b3d52c7, p0, p1, p2, p3);
};

global.TaskPlantBomb = function (ped, x, y, z, heading) {
	return _in(0x965fec69, 0x1d55e9bf, ped, _fv(x), _fv(y), _fv(z), _fv(heading));
};

global.TaskPlayAnim = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0xea47fe37, 0x19165b94, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
};

global.TaskPlayAnimAdvanced = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) {
	return _in(0x83cdb10e, 0xa29b370b, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16);
};

global.TaskPlayUpperAnimFacingEntity = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14) {
	return _in(0xad672142, 0x36ab1cfe, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14);
};

global.TaskPolice = function (p0, p1) {
	return _in(0x87be5672, 0x4650408e, p0, p1, _r, _ri);
};

global.TaskPutPedDirectlyIntoCover = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {
	return _in(0x4172393e, 0x6be1fece, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
};

global.TaskPutPedDirectlyIntoMelee = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x1c6cd14a, 0x876ffe39, p0, p1, p2, p3, p4, p5, p6);
};

/**
 * Has the ped react to another entity. The reactionType determines how the ped reacts. p3 is 7.5f in the scripts. p4 is 0f. unkFlag is always 4. The rest of the parameters are unknown, but 0 is acceptable input. Here is a list of the different reaction type values by Mooshe: https://pastebin.com/Ju7BbmMt
 * @param ped :
 * @param reactingTo :
 * @param reactionType :
 * @param p3 :
 * @param p4 :
 * @param unkFlag :
 * @param p6 :
 * @param p7 :
 * @param p8 :
 */
global.TaskReact = function (ped, reactingTo, reactionType, p3, p4, unkFlag, p6, p7, p8) {
	return _in(0xc4c32c31, 0x920e1b70, ped, reactingTo, reactionType, _fv(p3), _fv(p4), unkFlag, p6, p7, p8);
};

global.TaskReloadWeapon = function (ped, unused) {
	return _in(0x62d2916f, 0x56b9cd2d, ped, unused);
};

global.TaskReviveTarget = function (p0, p1, p2) {
	return _in(0x35608852, 0x7d9ebaad, p0, p1, p2);
};

global.TaskRideTrain = function (p0, p1, p2, p3) {
	return _in(0x37fb1c87, 0x0e2ec2c6, p0, p1, p2, p3);
};

global.TaskRobPed = function (p0, p1, p2, p3, p4) {
	return _in(0x7bb967f8, 0x5d8ccbdb, p0, p1, p2, p3, p4);
};

global.TaskScriptedAnimation = function (p0, p1) {
	return _in(0x126ef75f, 0x1e17abe5, p0, p1);
};

global.TaskSeekClearLosToEntity = function (p0, p1, p2, p3, p4) {
	return _in(0x8d7f2a63, 0x688c20a4, p0, p1, p2, p3, p4);
};

global.TaskSeekCoverFromPed = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x84d32b3b, 0xec531324, p0, p1, p2, p3, p4, p5);
};

global.TaskSeekCoverFromPos = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x75ac2b60, 0x386d89f2, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskSeekCoverToCoords = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x39246a69, 0x58ef072c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskSeekCoverToCoverPoint = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xd43d95c7, 0xa869447f, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskSetBlockingOfNonTemporaryEvents = function (ped, toggle) {
	return _in(0x90d21561, 0x98831d69, ped, toggle);
};

global.TaskSetCrouchMovement = function (ped, p1, p2, p3) {
	return _in(0x17293c63, 0x3c8ac019, ped, p1, p2, p3);
};

global.TaskSetSphereDefensiveArea = function (p0, p1, p2, p3, p4) {
	return _in(0x933c0651, 0x8b52a9a4, p0, _fv(p1), _fv(p2), _fv(p3), _fv(p4));
};

global.TaskSetStealthMovement = function (ped, p1, p2, p3) {
	return _in(0x4c3fa937, 0xb44a90fa, ped, p1, p2, p3);
};

global.TaskShockingEventReact = function (p0, p1, p2) {
	return _in(0x452419cb, 0xd838065b, p0, p1, p2);
};

global.TaskShootAtCoord = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x46a6cc01, 0xe0826106, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskShootAtEntity = function (p0, p1, p2, p3, p4) {
	return _in(0x08da95e8, 0x298ae772, p0, p1, p2, p3, p4);
};

global.TaskShootWithWeapon = function (p0, p1) {
	return _in(0x08aa95e8, 0x298ae772, p0, p1);
};

global.TaskShuffleToNextVehicleSeat = function (p0, p1) {
	return _in(0x7aa80209, 0xbda643eb, p0, p1);
};

global.TaskSmartFleeCoord = function (ped, x, y, z, distance, time, p6, p7) {
	return _in(0x94587f17, 0xe9c365d5, ped, _fv(x), _fv(y), _fv(z), _fv(distance), time, p6, p7);
};

global.TaskSmartFleePed = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x22b0d0e3, 0x7ccb840d, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskSmartFleeStyleCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x58428248, 0xbf4b64e4, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskSmartFleeStyleCoordVia = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x390e0b69, 0x7d25eaf5, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
};

global.TaskSmartFleeStylePed = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xfd45175a, 0x6dfd7ce9, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskSmartFleeStylePedVia = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x5802e0f9, 0x10e4cf1d, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskStandGuard = function (ped, x, y, z, heading, scenarioName) {
	return _in(0xae032f8b, 0xba959e90, ped, _fv(x), _fv(y), _fv(z), _fv(heading), _ts(scenarioName));
};

global.TaskStandStill = function (ped, time) {
	return _in(0x919be13e, 0xed931959, ped, time);
};

global.TaskStartScenarioAtPosition = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {
	return _in(0x4d1f61fc, 0x34af3cd1, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
};

global.TaskStartScenarioInPlace = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x524b5436, 0x1229154f, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskStartScenarioInPlace_2 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0xa917e39f, 0x2cefd215, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskStayInCover = function (ped) {
	return _in(0xe5da8615, 0xa6180789, ped);
};

global.TaskSwapFishingBait = function (p0, p1, p2) {
	return _in(0x2c28ac30, 0xa72722da, p0, p1, p2);
};

global.TaskSwapWeapon = function (p0, p1, p2, p3, p4) {
	return _in(0xa21c5125, 0x5b205245, p0, p1, p2, p3, p4);
};

global.TaskThrowProjectile = function (p0, p1, p2, p3) {
	return _in(0x7285951d, 0xbf6b5a51, p0, p1, p2, p3);
};

global.TaskThrowProjectile_2 = function (p0, p1, p2, p3) {
	return _in(0x7282356d, 0xff6b5a51, p0, p1, p2, p3);
};

global.TaskTurnPedToFaceCoord = function (ped, x, y, z, duration) {
	return _in(0x1dda930a, 0x0ac38571, ped, _fv(x), _fv(y), _fv(z), duration);
};

global.TaskTurnPedToFaceEntity = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x5ad23d40, 0x115353ac, p0, p1, p2, p3, p4, p5);
};

global.TaskTurnToFaceClosestPed = function (p0, p1, p2, p3) {
	return _in(0x84179419, 0xdbdd36f2, p0, p1, p2, p3);
};

global.TaskUseNearestScenarioChainToCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x9fda1b3d, 0x7e7028b3, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskUseNearestScenarioChainToCoordWarp = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x97a28e63, 0xf0ba5631, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskUseNearestScenarioToCoord = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x322bfdea, 0x666e2b0e, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskUseNearestScenarioToCoordWarp = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0x58e2e0f2, 0x3f6b76c3, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskUseNearestTrainScenarioToCoordWarp = function (p0, p1, p2, p3, p4) {
	return _in(0x3774b034, 0x56dd6106, p0, p1, p2, p3, p4);
};

global.TaskUseRandomScenarioInGroup = function (p0, p1, p2, p3, p4) {
	return _in(0x14747f4a, 0x5971de4e, p0, p1, p2, p3, p4);
};

global.TaskUseScenarioPoint = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) {
	return _in(0xccdae632, 0x4b6a821c, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
};

global.TaskUseScenarioPoint_2 = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x0f664144, 0x9dd86fbe, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskVehicleAimAtCoord = function (ped, x, y, z) {
	return _in(0x447c1e9e, 0xf844bc0f, ped, _fv(x), _fv(y), _fv(z));
};

global.TaskVehicleAimAtPed = function (ped, target) {
	return _in(0xe4188559, 0x2b08b097, ped, target);
};

global.TaskVehicleDriveToCoord = function (ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) {
	return _in(0xe2a2aa2f, 0x659d77a7, ped, vehicle, _fv(x), _fv(y), _fv(z), _fv(speed), p6, _ch(vehicleModel), drivingMode, _fv(stopRange), _fv(p10));
};

global.TaskVehicleDriveToCoord_2 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0xf0108f01, 0xfb105da2, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskVehicleDriveToDestination = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x7f241a0d, 0x14354583, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskVehicleDriveToDestination_2 = function (p0, p1, p2, p3, p4, p5, p6, p7, p8) {
	return _in(0x391073b9, 0xd3cce2ba, p0, p1, p2, p3, p4, p5, p6, p7, p8);
};

global.TaskVehicleDriveToPoint = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x089ff2fb, 0x965f0a29, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskVehicleDriveToPoint_2 = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x6524a898, 0x1e8be7c9, p0, p1, p2, p3, p4, p5, p6);
};

global.TaskVehicleDriveWander = function (ped, vehicle, speed, drivingStyle) {
	return _in(0x48014295, 0x9d337d00, ped, vehicle, _fv(speed), drivingStyle);
};

global.TaskVehicleEscort = function (ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance) {
	return _in(0x0fa6e4b7, 0x5f302400, ped, vehicle, targetVehicle, mode, _fv(speed), drivingStyle, _fv(minDistance), p7, _fv(noRoadsDistance));
};

global.TaskVehicleFollowWaypointRecording = function (p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {
	return _in(0x3123faa6, 0xdb1cf7ed, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
};

global.TaskVehicleGotoNavmesh = function (ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange) {
	return _in(0x195aeeb1, 0x3cefe2ee, ped, vehicle, _fv(x), _fv(y), _fv(z), _fv(speed), behaviorFlag, _fv(stoppingRange));
};

global.TaskVehicleMission = function (p0, p1, veh, p3, p4, p5, p6, p7, p8) {
	return _in(0x659427e0, 0xef36bcde, p0, p1, veh, p3, _fv(p4), p5, _fv(p6), _fv(p7), p8);
};

global.TaskVehicleMissionPedTarget = function (ped, vehicle, pedTarget, mode, maxSpeed, drivingStyle, minDistance, p7, p8) {
	return _in(0x9454528d, 0xf15d657a, ped, vehicle, pedTarget, mode, _fv(maxSpeed), drivingStyle, _fv(minDistance), _fv(p7), p8);
};

global.TaskVehicleShootAtCoord = function (ped, x, y, z, p4) {
	return _in(0x5190796e, 0xd39c9b6d, ped, _fv(x), _fv(y), _fv(z), _fv(p4));
};

global.TaskVehicleShootAtPed = function (ped, target, p2) {
	return _in(0x10ab107b, 0x887214d8, ped, target, _fv(p2));
};

global.TaskVehicleTempAction = function (driver, vehicle, action, time) {
	return _in(0xc429dcee, 0xb339e129, driver, vehicle, action, time);
};

global.TaskWalkAway = function (p0, p1) {
	return _in(0x04acfac7, 0x1e6858f9, p0, p1);
};

global.TaskWanderAndConverseWithPed = function (p0, p1, p2, p3) {
	return _in(0x8ac76d14, 0x08731732, p0, p1, p2, p3);
};

global.TaskWanderInArea = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0xe054346c, 0xa3a0f315, p0, p1, p2, p3, p4, p5, p6, p7);
};

global.TaskWanderInVolume = function (p0, p1, p2, p3, p4) {
	return _in(0x9fda1687, 0x77b28424, p0, p1, p2, p3, p4);
};

global.TaskWanderStandard = function (ped, p1, p2) {
	return _in(0xbb9ce077, 0x274f6a1b, ped, _fv(p1), p2);
};

global.TaskWanderSwim = function (p0, p1) {
	return _in(0x527ea3db, 0x8bc7f03b, p0, p1);
};

global.TaskWarpPedIntoVehicle = function (ped, vehicle, seat) {
	return _in(0x9a7d0914, 0x11c5f684, ped, vehicle, seat);
};

global.TaskWeapon = function (ped) {
	return _in(0x7157b82d, 0x60e4bc46, ped);
};

global.TaskWhistleAnim = function (p0, p1, p2) {
	return _in(0xd6401a1b, 0x2f63bed6, p0, p1, p2);
};

/**
 * Works in MP only.
 * @param uuid :
 */
global.TelemetryCreateUuid = function (uuid) {
	return _in(0xe692d336, 0xf8a2a97f, _ii(uuid) /* may be optional */, _r);
};

global.TelemetryPlayerSpawned = function (ped) {
	return _in(0x5da4718d, 0xf897eb25, ped);
};

global.TerminateThisThread = function () {
	return _in(0x5e8b6d17, 0xff91cd59);
};

global.TerminateThread = function (threadId) {
	return _in(0x87ed52ae, 0x40ea1a52, threadId);
};

global.TestProbeAgainstAllWater = function (p0, p1, p2, p3, p4, p5, p6, p7) {
	return _in(0x8974647e, 0xd222ea5f, p0, p1, p2, p3, p4, p5, p6, p7, _r);
};

global.TestVerticalProbeAgainstAllWater = function (x, y, z, p3, height) {
	return _in(0x2b3451fa, 0x1e3142e2, _fv(x), _fv(y), _fv(z), p3, _fi(height) /* may be optional */, _r);
};

global.TextureDownloadGetName = function (p0) {
	return _in(0x3448505b, 0x6e35262d, p0, _r, _s);
};

global.TextureDownloadRelease = function (p0) {
	return _in(0x487eb90b, 0x98e9fb19, p0);
};

global.TextureDownloadRequest = function (FilePath, Name, p3) {
	return _in(0x16160da7, 0x4a8e74a2, _i, _ts(FilePath), _ts(Name), p3, _r, _ri);
};

global.Timera = function () {
	return _in(0x83666f9f, 0xb8febd4b, _r, _ri);
};

global.Timerb = function () {
	return _in(0xc9d94441, 0x86b5a374, _r, _ri);
};

global.Timestep = function () {
	return _in(0x00000000, 0x50597ee2, _r, _rf);
};

global.ToFloat = function (value) {
	return _in(0xbbda7924, 0x48db5a89, value, _r, _rf);
};

global.TogglePausedRenderphases = function (toggle) {
	return _in(0xef9e1c45, 0x732f55fa, toggle);
};

global.TrackObjectVisibility = function (object) {
	return _in(0xb252bc03, 0x6b525623, object);
};

global.TrackVehicleVisibility = function (vehicle) {
	return _in(0x1f3969b1, 0x40dee157, vehicle);
};

/**
 * The backing function for TriggerEvent.
 * @param eventName 
 * @param eventPayload 
 * @param payloadLength 
 */
global.TriggerEventInternal = function (eventName, eventPayload, payloadLength) {
	return _in(0x00000000, 0x91310870, _ts(eventName), _ts(eventPayload), payloadLength);
};

/**
 * The backing function for TriggerLatentServerEvent.
 * @param eventName 
 * @param eventPayload 
 * @param payloadLength 
 * @param bps 
 */
global.TriggerLatentServerEventInternal = function (eventName, eventPayload, payloadLength, bps) {
	return _in(0x00000000, 0x128737ea, _ts(eventName), _ts(eventPayload), payloadLength, bps);
};

global.TriggerMusicEvent = function (eventName) {
	return _in(0x706d57b0, 0xf50da710, _ts(eventName), _r);
};

global.TriggerScriptEvent = function (p0, p1, p2, p3, p4) {
	return _in(0x5ae99c57, 0x1d5bbe5d, p0, p1, p2, p3, p4);
};

/**
 * The backing function for TriggerServerEvent.
 * @param eventName 
 * @param eventPayload 
 * @param payloadLength 
 */
global.TriggerServerEventInternal = function (eventName, eventPayload, payloadLength) {
	return _in(0x00000000, 0x7fdd1128, _ts(eventName), _ts(eventPayload), payloadLength);
};

global.TriggerSonarBlip = function (p0, p1, p2, p3) {
	return _in(0x72dd432f, 0x3cdfc0ee, p0, p1, p2, p3);
};

global.UgcGetCachedDescription = function (p0, length) {
	return _in(0x40f7e664, 0x72df3e5c, p0, length, _r, _s);
};

global.UgcIsLanguageSupported = function (languageId) {
	return _in(0xf53e4846, 0x1b71eecb, languageId, _r);
};

global.UgcQueryByContentId = function (contentId, latestVersion, contentTypeName) {
	return _in(0x69d22e18, 0x3580113f, _ts(contentId), latestVersion, _ts(contentTypeName), _r);
};

global.UgcRequestCachedDescription = function (p0) {
	return _in(0x5e016527, 0x8f6339ee, p0, _r, _ri);
};

global.UgcRequestContentDataFromParams = function (contentTypeName, contentId, p2, p3, p4) {
	return _in(0x7fd2990a, 0xf016795e, _ts(contentTypeName), _ts(contentId), p2, p3, p4, _r, _ri);
};

global.UgcTextureDownloadRequest = function (p1, p2, p3, p5) {
	return _in(0x308f9645, 0x8b7087cc, _i, p1, p2, p3, _i, p5, _r, _ri);
};

global.UiIsSingleplayerPauseMenuActive = function () {
	return _in(0x4ffa0386, 0xa6216113, _r);
};

global.UiappRequestTransitionByHash = function (p0, p1) {
	return _in(0x7689cd25, 0x5655bfd7, p0, p1, _r, _ri);
};

global.UncuffPed = function (ped) {
	return _in(0x67406f2c, 0x8f87fc4f, ped);
};

global.UnlockIsLootable = function (unlockHash) {
	return _in(0x66bf197e, 0x066050de, _ch(unlockHash), _r);
};

global.UnlockIsNew = function (unlockHash) {
	return _in(0x644166ba, 0x7aa49dea, _ch(unlockHash), _r);
};

global.UnlockIsUnlockFlagSet = function (unlockHash, flag) {
	return _in(0x6b636964, 0x7f26f09f, _ch(unlockHash), flag, _r);
};

global.UnlockIsUnlocked = function (unlockHash) {
	return _in(0xc4b660c7, 0xb6040e75, _ch(unlockHash), _r);
};

global.UnlockIsVisible = function (unlockHash) {
	return _in(0x8588a14b, 0x75af096b, _ch(unlockHash), _r);
};

global.UnlockMinimapAngle = function () {
	return _in(0x5373de8e, 0x179bc2a0);
};

global.UnlockSetNew = function (unlockHash, toggle) {
	return _in(0xa6d79c7a, 0xef870a99, _ch(unlockHash), toggle);
};

global.UnlockSetUnlocked = function (unlockHash, toggle) {
	return _in(0x1b7c5ada, 0x8a6910a0, _ch(unlockHash), toggle);
};

global.UnlockSetVisible = function (unlockHash, toggle) {
	return _in(0x46b901a8, 0xecdb5a61, _ch(unlockHash), toggle);
};

global.UnpinInterior = function (interior) {
	return _in(0x07fd1a0b, 0x814f6055, interior);
};

global.UnregisterScriptWithAudio = function () {
	return _in(0xa8638be2, 0x28d4751a);
};

global.UpdateLightsOnEntity = function (entity) {
	return _in(0xbdbacb52, 0xa03cc760, entity);
};

global.UpdateOnscreenKeyboard = function () {
	return _in(0x37df360f, 0x235a3893, _r, _ri);
};

global.UpdateTaskHandsUpDuration = function (ped, duration) {
	return _in(0xa98fcafd, 0x7893c834, ped, duration);
};

global.UseParticleFxAsset = function (name) {
	return _in(0xa10db07f, 0xc234dd12, _ts(name));
};

global.UsePlayerColourInsteadOfTeamColour = function (toggle) {
	return _in(0x5ffe9b41, 0x44f9712f, toggle);
};

global.UseWaypointRecordingAsAssistedMovementRoute = function (p0, p1, p2, p3, p4) {
	return _in(0x5a353b8e, 0x6b1095b5, p0, p1, p2, p3, p4);
};

global.Vdist = function (x1, y1, z1, x2, y2, z2) {
	return _in(0x2a488c17, 0x6d52cca5, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _r, _rf);
};

global.Vdist2 = function (x1, y1, z1, x2, y2, z2) {
	return _in(0xb7a62832, 0x0eff8e47, _fv(x1), _fv(y1), _fv(z1), _fv(x2), _fv(y2), _fv(z2), _r, _rf);
};

global.VehToNet = function (vehicle) {
	return _in(0xb4c94523, 0xf023419c, vehicle, _r, _ri);
};

global.VehicleWaypointPlaybackGetIsPaused = function (p0) {
	return _in(0x4d6d30ab, 0x18b0b089, p0, _r, _ri);
};

global.VehicleWaypointPlaybackOverrideSpeed = function (vehicle, speed) {
	return _in(0x121f0593, 0xe0a431d7, vehicle, _fv(speed));
};

global.VehicleWaypointPlaybackPause = function (vehicle) {
	return _in(0x8a4e6ac3, 0x73666bc5, vehicle);
};

global.VehicleWaypointPlaybackResume = function (vehicle) {
	return _in(0xdc04fcaa, 0x7839d492, vehicle);
};

global.VehicleWaypointPlaybackUseDefaultSpeed = function (vehicle) {
	return _in(0x5ceb25a7, 0xd2848963, vehicle);
};

global.VirtualCollectionExists = function (p0) {
	return _in(0x37963b56, 0x755bfb35, p0, _r, _ri);
};

global.VirtualCollectionItemAdd = function (p0, p1, p2, p3) {
	return _in(0x6dcbf187, 0x221cf73d, p0, p1, p2, p3);
};

global.VirtualCollectionReset = function (p0) {
	return _in(0x09d95666, 0xed2b5f60, p0);
};

global.VirtualCollectionSetInterestIndex = function (p0, p1) {
	return _in(0x49a84475, 0x33308bcf, p0, p1);
};

global.VirtualCollectionSetSize = function (p0, p1) {
	return _in(0x9dce9b01, 0xa93b58bc, p0, p1);
};

global.Vmag = function (x, y, z) {
	return _in(0x652d2eee, 0xf1d3e62c, _fv(x), _fv(y), _fv(z), _r, _rf);
};

global.Vmag2 = function (x, y, z) {
	return _in(0xa8ceacb4, 0xf35ae058, _fv(x), _fv(y), _fv(z), _r, _rf);
};

global.Wait = function (ms) {
	return _in(0x4ede34fb, 0xadd967a6, ms);
};

/**
 * Returns whether or not the currently executing event was canceled.
 * @return A boolean.
 */
global.WasEventCanceled = function () {
	return _in(0x00000000, 0x58382a19, _r);
};

global.WasPedSkeletonUpdated = function (ped) {
	return _in(0x11b499c1, 0xe0ff8559, ped, _r);
};

global.WaypointPlaybackGetIsAiming = function (p0) {
	return _in(0xd73a5d1f, 0x0325c71c, p0, _r, _ri);
};

global.WaypointPlaybackGetIsPaused = function (p0) {
	return _in(0x701375a7, 0xd43f01cb, p0, _r);
};

global.WaypointPlaybackGetIsShooting = function (p0) {
	return _in(0xa5b94df8, 0xaf058f46, p0, _r, _ri);
};

global.WaypointPlaybackOverrideSpeed = function (p0, p1, p2, p3, p4) {
	return _in(0x7d7d2b47, 0xfa788e85, p0, p1, p2, p3, p4);
};

global.WaypointPlaybackPause = function (p0, p1, p2, p3) {
	return _in(0x0f342546, 0xaa06fed5, p0, p1, p2, p3);
};

global.WaypointPlaybackResume = function (p0, p1, p2, p3) {
	return _in(0x244f70c8, 0x4c547d2d, p0, p1, p2, p3);
};

global.WaypointPlaybackStartAimingAtCoord = function (p0, p1, p2, p3, p4, p5) {
	return _in(0x8968400d, 0x900ed8b3, p0, p1, p2, p3, p4, p5);
};

global.WaypointPlaybackStartAimingAtEntity = function (p0, p1, p2, p3) {
	return _in(0x4f158205, 0xe0c74385, p0, p1, p2, p3);
};

global.WaypointPlaybackStartAimingAtPed = function (p0, p1, p2, p3) {
	return _in(0x20e33093, 0x7c399d29, p0, p1, p2, p3);
};

global.WaypointPlaybackStartShootingAtCoord = function (p0, p1, p2, p3, p4, p5, p6) {
	return _in(0x057a25cf, 0xcc9db671, p0, p1, p2, p3, p4, p5, p6);
};

global.WaypointPlaybackStartShootingAtEntity = function (p0, p1, p2, p3, p4) {
	return _in(0x4af458f7, 0x1c1196d2, p0, p1, p2, p3, p4);
};

global.WaypointPlaybackStartShootingAtPed = function (p0, p1, p2, p3, p4) {
	return _in(0xe70ba7b9, 0x0f8390dc, p0, p1, p2, p3, p4);
};

global.WaypointPlaybackStopAimingOrShooting = function (p0) {
	return _in(0x47efa040, 0xebb8e2ea, p0);
};

global.WaypointPlaybackUseDefaultSpeed = function (p0) {
	return _in(0x6599d834, 0xb12d0800, p0);
};

global.WaypointRecordingGetClosestWaypoint = function (name, x, y, z, point) {
	return _in(0xb629a298, 0x081f876f, _ts(name), _fv(x), _fv(y), _fv(z), _ii(point) /* may be optional */, _r);
};

global.WaypointRecordingGetCoord = function (name, point, coord) {
	return _in(0x2fb89740, 0x5c90b361, _ts(name), point, _v, _r);
};

global.WaypointRecordingGetNumPoints = function (name, points) {
	return _in(0x5343532c, 0x01a07234, _ts(name), _ii(points) /* may be optional */, _r);
};

global.WaypointRecordingGetSpeedAtPoint = function (name, point) {
	return _in(0x005622ae, 0xbc33aca9, _ts(name), point, _r, _rf);
};

global.WeeklyCollectibleGetItemInSet = function (p0, p1, p2, p3, p4) {
	return _in(0xba61ba62, 0x05a3f5a8, p0, p1, p2, p3, p4, _r, _ri);
};

global.WeeklyCollectibleGetItemSetBuyAward = function (p0, p1) {
	return _in(0x610783f6, 0x46894d25, p0, p1, _r, _ri);
};

global.WeeklyCollectibleGetItemSetLabel = function (p0, p1) {
	return _in(0xbffa8852, 0x2ff0f730, p0, p1, _r, _ri);
};

global.WeeklyCollectibleGetNumItemsInSet = function (p0, p1) {
	return _in(0x7d675c9d, 0xddb365be, p0, p1, _r, _ri);
};

global.WeeklyCollectibleGetNumSets = function (p0) {
	return _in(0x8f531772, 0x9f791d10, p0, _r, _ri);
};

global.WouldEntityBeOccluded = function (entityModelHash, x, y, z, p4) {
	return _in(0x3546fab2, 0x93ff2981, _ch(entityModelHash), _fv(x), _fv(y), _fv(z), p4, _r);
};

