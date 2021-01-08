local addonName, addon = ...

addon.version = GetAddOnMetadata(addonName, "Version")
addon.notes = GetAddOnMetadata(addonName, "Notes")
SLASH_WOWADDON1, SLASH_WOWADDON2 = "/wowaddon", "/wowa"

function addon.Init()
    print(addonName .. " // " .. addon.notes .. " // Version " .. addon.version)
end

function SlashCmdList.WOWADDON(msg, editBox)
    local command, rest = msg:match("^(%S*)%s*(.-)$")
    if command ~= "" and rest ~= "" then
        print("Kommando: " .. command .. " // Argumente: " .. rest)
    else
        print("Syntax: /wowa Kommando Argumente")
    end
end

addon.Init()
