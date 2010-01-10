--[[ Copyright (c) 2010 Miika-Petteri Matikainen

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. --]]

local object = {}
object.id = "hair_restorer"
object.thob = 25
object.name = _S(2, 26)
object.ticks = false
object.build_cost = 1000
object.build_preview_animation = 5074
object.machine = true
local function copy_north_to_south(t)
  t.south = t.north
  return t
end
object.idle_animations = copy_north_to_south {
  north = 2070,
}

object.usage_animations = copy_north_to_south {
  north = {
    begin_use = { -- Patient sits down
      ["Slack Male Patient"] = 2074
    },
    begin_use_2 = { -- Hair cap goes down
      ["Slack Male Patient"] = 2078
    },
    in_use = { -- Use animation
      ["Slack Male Patient"] = 2082
    },
    finish_use = { -- Hair cap goes up and patient stands up
      ["Slack Male Patient"] = 2086
    },
  },
}

object.orientations = {
  north = {
    use_position = {0, 1},
    finish_use_position = {0, 1},
    footprint = { {0, -1}, {0, 0}, {0, 1, only_passable = true} },
    use_animate_from_use_position = true,
  },
  east = {
    use_position = {1, 0},
    finish_use_position = {1, 0},
    footprint = { {-1, 0}, {0, 0}, {1, 0, only_passable = true} },
    use_animate_from_use_position = true,
  },
}

return object