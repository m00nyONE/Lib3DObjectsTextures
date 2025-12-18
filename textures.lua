local lib_name = "Lib3DObjectsTextures"
local lib = _G[lib_name]

local textures = {
    {
        texturePath = "Lib3DObjectsTextures/textures/arrow_long_256x256.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"basic", "squared", "shapes", "arrows", "nocolor"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/circle_128x128.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"basic", "squared", "shapes", "circles", "nocolor"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/plus_64x64.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"basic", "squared", "shapes", "nocolor"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/marker_A.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "markers", "letters", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/marker_B.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "markers", "letters", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/arrow_down_blue.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "markers", "arrows", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/arrow_down_red.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "markers", "arrows", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/arrow_down_yellow.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "markers", "arrows", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/diamonds.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "cards", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/spades.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "cards", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/hearts.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "cards", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/clubs.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "cards", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/shield-yes.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "shield", "colored"},
    },
    {
        texturePath = "Lib3DObjectsTextures/textures/shield-no.dds",
        textureCoords = { 0, 1, 0, 1 },
        categories = {"squared", "shield", "colored"},
    },
}

for _, tex in ipairs(textures) do
    lib.RegisterTexture("Lib3DObjects", tex)
end