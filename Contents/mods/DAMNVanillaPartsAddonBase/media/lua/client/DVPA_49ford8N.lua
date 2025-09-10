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

if getActivatedMods():contains("49ford8N") then
    swapPartsForVehicle("Base.49ford8N");
end
