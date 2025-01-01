local function foo(t, path)
  local result = {}
  for k, v in pairs(t) do
    local newPath = table.concat({path, k}, ".")
    if type(v) == "table" then
      result[newPath] = foo(v, newPath)
    else
      result[newPath] = v
    end
  end
  return result
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local results = foo(t, "")
print(results["b.d.e"])