if not DAMNVanillaPartsAddon then
    require("DVPA_ClientMain");
end

local parts = DAMNVanillaPartsAddon.parts;
local function swapPartsForVehicle(vehicleId)
    -- Tires
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontLeft", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireFrontRight", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearLeft", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TireRearRight", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "VAN63ApocSpareCage", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "VAN63ApocSpareRoof", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "VAN63SpareCab", parts.standardTires);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "VAN63SpareRoof", parts.standardTires);

    -- Seats
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontLeft", parts.standardSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatFrontRight", parts.standardSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatMiddleLeft", parts.standardSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatMiddleRight", parts.standardSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearLeft", parts.standardSeats);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "SeatRearRight", parts.standardSeats);

    -- Bodywork
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "EngineDoor", parts.standardHood);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "TrunkDoor", parts.standardTrunkLid);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "Windshield", parts.standardWindshield);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindshieldRear", parts.standardRearWindshield);

    -- Doors
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontLeft", parts.standardFrontDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorFrontRight", parts.standardFrontDoors);
    -- DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearLeft", parts.standardRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "DoorRearRight", parts.standardRearDoors);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontLeft", parts.standardFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowFrontRight", parts.standardFrontWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearLeft", parts.standardRearWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowRearRight", parts.standardRearWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowBackLeft", parts.standardRearWindows);
    DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, "WindowBackRight", parts.standardRearWindows);
end

if getActivatedMods():contains("63Type2Van") then
    swapPartsForVehicle("Base.63Type2VanApocalypse");
    swapPartsForVehicle("Base.63Type2VanHippie");
    swapPartsForVehicle("Base.63Type2VanMilitary");
    swapPartsForVehicle("Base.63Type2Van");
end
