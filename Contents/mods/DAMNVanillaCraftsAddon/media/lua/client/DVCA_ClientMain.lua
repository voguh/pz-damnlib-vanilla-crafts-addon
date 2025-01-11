DAMNVanillaCraftsAddon = DAMNVanillaCraftsAddon or {}

function DAMNVanillaCraftsAddon.updateItemRecipes(itemType, recipes)
    local item = ScriptManager.instance:getItem(itemType);

    if item ~= nil then
        local existingRecipes = item:getTeachedRecipes();
        local size = existingRecipes:size()

        for i = 0, size - 1 do
            local recipe = existingRecipes:get(i)
            table.insert(recipes, recipe)
        end

        item:DoParam("TeachedRecipes = "..table.concat(recipes, "; "));
    end
end

function DAMNVanillaCraftsAddon.OnGameBoot()
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.WindowSchematics", { "Make Front Window Type Standard", "Make Front Window Type Heavy-Duty", "Make Front Window Type Sport", "Make Rear Window Type Standard", "Make Rear Window Type Heavy-Duty", "Make Rear Window Type Sport", "Make Windshield Type Standard", "Make Windshield Type Heavy-Duty", "Make Windshield Type Sport", "Make Rear Windshield Type Standard", "Make Rear Windshield Type Heavy-Duty", "Make Rear Windshield Type Sport" });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.DoorSchematics", { "Make Front Door Type Standard", "Make Front Door Type Heavy-Duty", "Make Front Door Type Sport", "Make Rear Door Type Standard", "Make Rear Door Type Heavy-Duty", "Make Rear Door Type Sport", "Make Double Rear Door Type Standard", "Make Double Rear Door Type Heavy-Duty", "Make Double Rear Door Type Sport" });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.HoodSchematics", { "Make Hood Type Standard", "Make Hood Type Heavy-Duty", "Make Hood Type Sport" });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.TrunkLidSchematics", { "Make Trunk Lid Type Standard", "Make Trunk Lid Type Heavy-Duty", "Make Trunk Lid Type Sport" });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.SeatSchematics", { "Make Standard Seat Type Standard", "Make Standard Seat Type Heavy-Duty", "Make Standard Seat Type Sport" });
    -- DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.RimSchematics", {  });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.MufflerSchematics", { "Make Average Muffler Type Standard", "Make Average Muffler Type Heavy-Duty", "Make Average Muffler Type Sport" });
    -- DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.BumperSchematics", {  });
    DAMNVanillaCraftsAddon.updateItemRecipes("damnCraft.BodyworkSchematics", { "Make Big Gas Tank Type Standard", "Make Big Gas Tank Type Heavy-Duty", "Make Big Gas Tank Type Sport", "Make Standard Gas Tank Type Standard", "Make Standard Gas Tank Type Heavy-Duty", "Make Standard Gas Tank Type Sport", "Make Small Gas Tank Type Standard", "Make Small Gas Tank Type Heavy-Duty", "Make Small Gas Tank Type Sport" });
end

Events.OnGameBoot.Add(DAMNVanillaCraftsAddon.OnGameBoot)
