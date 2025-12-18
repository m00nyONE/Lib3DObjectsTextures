
--[[ doc.lua begin ]]
--- @class Lib3DObjects
--- @field name string
--- @field version string
--- @field author string
--- @field AUTOROTATE_NONE number
--- @field AUTOROTATE_CAMERA number
--- @field AUTOROTATE_PLAYER number
local lib = {
    name = "Lib3DObjectsTextures",
    version = "dev",
    author = "@m00nyONE",
}
local lib_name = lib.name
local lib_author = lib.author
local lib_version = lib.version
_G[lib_name] = lib

local EM = GetEventManager()


--[[ doc.lua end ]]
local function initialize()

end

EM:RegisterForEvent(lib_name, EVENT_ADD_ON_LOADED, function(_, name)
    if name ~= lib_name then return end

    EM:UnregisterForEvent(lib_name, EVENT_ADD_ON_LOADED)
    initialize()
end)
