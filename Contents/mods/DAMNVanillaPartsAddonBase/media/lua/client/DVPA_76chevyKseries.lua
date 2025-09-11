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

local MOD_ID = "76chevyKseries";
local UNSTABLE_VEHICLES = {
    ["Base.76chevyK10"] = true,
    ["Base.76chevyK10fd"] = true,
    ["Base.76chevyK10spirit"] = true,
    ["Base.76chevyK20"] = true,
    ["Base.76chevyK20BigRed"] = true,
    ["Base.76chevyK20utility"] = true,
    ["Base.76chevyK30CC"] = true,
    ["Base.76chevyK30CCutility"] = true
};
local parts = DAMNVanillaPartsAddon.parts;
local function swapPartsForVehicle(vehicleId)
    if not DAMNVanillaPartsAddon:enableUnstableForFor(MOD_ID) and UNSTABLE_VEHICLES[vehicleId] then
        return;
    end

    -- Tires
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontLeft", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontRight", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearLeft", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearRight", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DAMNSpareTire", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "CH76SpareTireBed", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "CH76SpareTireRoof", parts.heavyDutyTires);

    -- Seats
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontLeft", parts.heavyDutySeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontRight", parts.heavyDutySeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearLeft", parts.heavyDutySeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearRight", parts.heavyDutySeats);

    -- Bodywork
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "EngineDoor", parts.heavyDutyHood);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TrunkDoor", parts.heavyDutyTrunkLid);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "Windshield", parts.heavyDutyWindshield);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindshieldRear", parts.heavyDutyRearWindshield);

    -- Doors
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontLeft", parts.heavyDutyFrontDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontRight", parts.heavyDutyFrontDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearLeft", parts.heavyDutyRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearRight", parts.heavyDutyRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontLeft", parts.heavyDutyFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontRight", parts.heavyDutyFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearLeft", parts.heavyDutyRearWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearRight", parts.heavyDutyRearWindows);
end

local function onLoad()
    if DAMNVanillaPartsAddon:enableFor(MOD_ID) then
        swapPartsForVehicle("Base.76chevyC30CCwrecker");
        swapPartsForVehicle("Base.76chevyC30SCwrecker");
        swapPartsForVehicle("Base.76chevyK10");
        swapPartsForVehicle("Base.76chevyK10fd");
        swapPartsForVehicle("Base.76chevyK10spirit");
        swapPartsForVehicle("Base.76chevyK20");
        swapPartsForVehicle("Base.76chevyK20BigRed");
        swapPartsForVehicle("Base.76chevyK20utility");
        swapPartsForVehicle("Base.76chevyK30CC");
        swapPartsForVehicle("Base.76chevyK30CCdually");
        swapPartsForVehicle("Base.76chevyK30CCfd");
        swapPartsForVehicle("Base.76chevyK30CCutility");
        swapPartsForVehicle("Base.76chevyK30SCdually");
        swapPartsForVehicle("Base.76chevyK20fd");
    end
end

Events.OnLoad.Add(onLoad);
