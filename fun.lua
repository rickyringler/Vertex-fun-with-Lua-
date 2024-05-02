local function randomFloat(min, max)
    return min + math.random() * (max - min)
end

local my_vertices = 12

local min_x, max_x = 100, 500
local min_y, max_y = 100, 500

local step_x = (max_x - min_x) / (my_vertices / 3 - 1)
local step_y = (max_y - min_y) / (my_vertices / 3 - 1)

local vertices = {}
for i = 1, my_vertices / 3 do
    local x1 = min_x + (i - 1) * step_x
    local x2 = min_x + i * step_x
    local y1 = min_y + (i - 1) * step_y
    local y2 = min_y + i * step_y  

    for j = 1, 3 do
        local x = randomFloat(x1, x2)
        local y = randomFloat(y1, y2)
        table.insert(vertices, {x = x, y = y})
    end
end
