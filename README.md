# Lib3DObjects - Textures

This extension to Lib3DObject allows you to add and use textures provided by various addons.

a textureObject looks like this:

```lua
local textureObject = {
    texturePath = "path/to/texture.dds", -- The file path to the texture image
    textureCoords = {0, 1, 0, 1}, -- The coordinates of the texture (left, right , top, bottom) - usefull for combined textures and spritesheets
    categories = {"category1", "category2"}, -- Categories to which this texture belongs
}
```

to register a texture use the function:

```lua
Lib3DObjectsTextures.RegisterTexture(namespace, textureObject) -- namespace can be something like your addon name
```

to get a list of textures use functions like this one:
```lua
Lib3DObjectsTextures.List() -- returns a table of all registered textures
```
all function that can be used are inside the API.lua file