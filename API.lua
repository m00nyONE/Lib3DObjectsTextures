local lib_name = "Lib3DObjectsTextures"
local lib = _G[lib_name]

local textures = {}
local textureCategories = {}
local textureNamespaces = {}

---@alias textureObject table

--- Registers a texture object under a given namespace.
--- @param namespace string The namespace under which to register the texture (eg. Your addon name).
--- @param textureObject textureObject The texture object to register.
function lib.RegisterTexture(namespace, textureObject)
    assert(type(namespace) == "string", "namespace must be a string")
    assert(type(textureObject) == "table", "textureObject must be a table")
    assert(type(textureObject.texturePath) == "string", "textureObject.texturePath must be a string")
    assert(type(textureObject.textureCoords) == "table", "textureObject.textureCoords must be a table")
    assert(#textureObject.textureCoords == 4, "textureObject.textureCoords must have 4 elements: left, right, top, bottom")

    table.insert(textures, textureObject)

    if textureObject.categories then
        for _, category in ipairs(textureObject.categories) do
            textureCategories[category] = textureCategories[category] or {}
            table.insert(textureCategories[category], textureObject)
        end
    else
        textureCategories["undefined"] = textureCategories["undefined"] or {}
        table.insert(textureCategories["undefined"], textureObject)
    end

    textureNamespaces[namespace] = textureNamespaces[namespace] or {}
    table.insert(textureNamespaces[namespace], textureObject)
end

--- Lists all registered texture objects.
--- @return textureObject[] A list of all registered texture objects.
function lib.List()
    return textures or {}
end

--- Lists all registered texture categories.
--- @return string[] A list of all registered texture categories.
function lib.ListCategories()
    local categories = {}
    for category, _ in pairs(textureCategories) do
        table.insert(categories, category)
    end
    return categories
end

--- Lists all texture objects under a given category.
--- @param category string The category to list textures from.
--- @return textureObject[] A list of texture objects under the specified category.
function lib.ListCategory(category)
    return textureCategories[category] or {}
end

--- Lists all registered texture namespaces.
--- @return string[] A list of all registered texture namespaces.
function lib.ListNamespaces()
    local namespaces = {}
    for namespace, _ in pairs(textureNamespaces) do
        table.insert(namespaces, namespace)
    end
    return namespaces
end

--- Lists all texture objects under a given namespace.
--- @param namespace string The namespace to list textures from.
--- @return textureObject[] A list of texture objects under the specified namespace.
function lib.ListNamespace(namespace)
    return textureNamespaces[namespace] or {}
end