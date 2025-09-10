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

DAMNVanillaPartsAddon = DAMNVanillaPartsAddon or {};
DAMNVanillaPartsAddon.store = DAMNVanillaPartsAddon.store or {};
DAMNVanillaPartsAddon.parts = {
    ["standardTires"] = {"Base.OldTire1","Base.NormalTire1","Base.ModernTire1"},
    ["standardSeats"] = {"Base.NormalCarSeat1"},
    ["standardHood"] = {"Base.EngineDoor1"},
    ["standardTrunkLid"] = {"Base.TrunkDoor1"},
    ["standardWindshield"] = {"Base.Windshield1"},
    ["standardRearWindshield"] = {"Base.RearWindshield1"},
    ["standardFrontDoors"] = {"Base.FrontCarDoor1"},
    ["standardRearDoors"] = {"Base.RearCarDoor1"},
    ["standardFrontWindows"] = {"Base.FrontWindow1"},
    ["standardRearWindows"] = {"Base.RearWindow1"},

    ["heavyDutyTires"] = {"Base.OldTire2","Base.NormalTire2","Base.ModernTire2"},
    ["heavyDutySeats"] = {"Base.NormalCarSeat2"},
    ["heavyDutyHood"] = {"Base.EngineDoor2"},
    ["heavyDutyTrunkLid"] = {"Base.TrunkDoor2"},
    ["heavyDutyWindshield"] = {"Base.Windshield2"},
    ["heavyDutyRearWindshield"] = {"Base.RearWindshield2"},
    ["heavyDutyFrontDoors"] = {"Base.FrontCarDoor2"},
    ["heavyDutyRearDoors"] = {"Base.RearCarDoor2"},
    ["heavyDutyDoubleRearDoors"] = {"Base.RearCarDoorDouble2"},
    ["heavyDutyFrontWindows"] = {"Base.FrontWindow2"},
    ["heavyDutyRearWindows"] = {"Base.RearWindow2"},

    ["sportTires"] = {"Base.OldTire3","Base.NormalTire3","Base.ModernTire3"},
    ["sportSeats"] = {"Base.NormalCarSeat3"},
    ["sportHood"] = {"Base.EngineDoor3"},
    ["sportTrunkLid"] = {"Base.TrunkDoor3"},
    ["sportWindshield"] = {"Base.Windshield3"},
    ["sportRearWindshield"] = {"Base.RearWindshield3"},
    ["sportFrontDoors"] = {"Base.FrontCarDoor3"},
    ["sportRearDoors"] = {"Base.RearCarDoor3"},
    ["sportFrontWindows"] = {"Base.FrontWindow3"},
    ["sportRearWindows"] = {"Base.RearWindow3"}
};

function DAMNVanillaPartsAddon:replaceVehiclePart(vehicleId, partId, itemTypes)
    self.store[vehicleId] = self.store[vehicleId] or {};
    self.store[vehicleId][partId] = itemTypes;
    print("DAMNVanillaPartsAddon: Registered vehicle parts replacement for '" .. vehicleId .. "', part '" .. partId .. "'");
end

function DAMNVanillaPartsAddon:enableFor(modId)
    local sandboxOption = SandboxVars.DAMNVanillaPartsAddon["Enable_" .. modId];
    return getActivatedMods():contains(modId) and sandboxOption ~= false;
end

--********************************************************************************************************************--

local ISVehicleMechanics = ISVehicleMechanics;
local originalDoPartContextMenu = ISVehicleMechanics.doPartContextMenu;
---@param part VehiclePart
---@param x number
---@param y number
function ISVehicleMechanics:doPartContextMenu(part, x, y)
    local vehicle = part:getVehicle();
    local itemType = part:getItemType();
    -- TODO: Remove debug print later
    print("DAMNVanillaPartsAddon: doPartContextMenu called for vehicle part '" .. part:getId() .. "' of vehicle '" .. vehicle:getScriptName() .. "'");

    if vehicle ~= nil then
        local partsToOverrideGroup = DAMNVanillaPartsAddon.store[vehicle:getScriptName()];
        if partsToOverrideGroup ~= nil then
            local partsToOverride = partsToOverrideGroup[part:getId()];
            if partsToOverride ~= nil then
                itemType:clear();
                for _, partToOverride in ipairs(partsToOverride) do
                    if not itemType:contains(partToOverride) then
                        itemType:add(partToOverride);
                    end
                end
            end
        end
    end

    originalDoPartContextMenu(self, part, x, y);
end
