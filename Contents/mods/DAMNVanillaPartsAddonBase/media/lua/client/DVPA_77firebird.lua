--[[
/*!******************************************************************************
 * DAMN Vanilla Parts Addon
 * Copyright (C) 2025 Voguh <voguhofc@protonmail.com>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * This Source Code Form is "Incompatible With Secondary Licenses", as
 * defined by the Mozilla Public License, v. 2.0.
 ******************************************************************************/
]]

if not DAMNVanillaPartsAddon then
    require("DVPA_ClientMain");
end

local MOD_ID = "77firebird";
local UNSTABLE_VEHICLES = {};
local parts = DAMNVanillaPartsAddon.parts;
local function swapPartsForVehicle(vehicleId)
    if not DAMNVanillaPartsAddon:enableUnstableForFor(MOD_ID) and UNSTABLE_VEHICLES[vehicleId] then
        return;
    end

    -- Tires
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontLeft", parts.sportTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontRight", parts.sportTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearLeft", parts.sportTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearRight", parts.sportTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "FRB77SpareTire", parts.sportTires);

    -- Seats
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontLeft", parts.sportSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontRight", parts.sportSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearLeft", parts.sportSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearRight", parts.sportSeats);

    -- Bodywork
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "EngineDoor", parts.sportHood);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TrunkDoor", parts.sportTrunkLid);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "Windshield", parts.sportWindshield);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindshieldRear", parts.sportRearWindshield);

    -- Doors
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontLeft", parts.sportFrontDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontRight", parts.sportFrontDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearLeft", parts.sportRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearRight", parts.sportRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontLeft", parts.sportFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontRight", parts.sportFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearLeft", parts.sportRearWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearRight", parts.sportRearWindows);
end

local function onLoad()
    if DAMNVanillaPartsAddon:enableFor(MOD_ID) then
        swapPartsForVehicle("Base.77firebird");
        swapPartsForVehicle("Base.77firebirdES");
        swapPartsForVehicle("Base.77firebirdFR");
        swapPartsForVehicle("Base.77firebirdTA");
    end
end

Events.OnLoad.Add(onLoad);
