local addonName, addon = ...

addon.version = GetAddOnMetadata(addonName, "Version")
addon.notes = GetAddOnMetadata(addonName, "Notes")

print(addonName .. " // " .. addon.notes .. " // Version " .. addon.version)
