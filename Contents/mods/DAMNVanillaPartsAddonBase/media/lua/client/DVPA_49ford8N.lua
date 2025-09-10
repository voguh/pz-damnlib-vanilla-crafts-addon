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
    require "DVPA_ClientMain";
end

local parts = DAMNVanillaPartsAddon.parts;
local function swapPartsForVehicle(vehicleId)
    -- Tires
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontLeft", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontRight", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearLeft", parts.heavyDutyTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearRight", parts.heavyDutyTires);

    -- Seats
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontLeft", parts.heavyDutySeats);
end

if DAMNVanillaPartsAddon:enableFor("49ford8N") then
    swapPartsForVehicle("Base.49ford8N");
end
