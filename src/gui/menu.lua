local common = require 'gui.common'
local MenuItem = require 'gui.menu_item'

local Menu = {}
local metatable = common.create_metatable(Menu)

metatable.get_text = function(object)
  local text = object.wx:GetTitle()
  return wx.wxMenuItem.GetLabelText(text)
end

local menu_items = {}

local function on_item_select(event_args)
  local menu_item_id = event_args:GetId()
  local menu_item = menu_items[menu_item_id]
  
  if menu_item ~= nil and type(menu_item.on_select) == 'function' then
    menu_item.checked = not menu_item.checked   -- prevent wxWidgets from changing the state automatically
    menu_item:on_select()
  end
end

function Menu.create(name)
  local menu = {}
  menu.wx = wx.wxMenu()
  
  menu.wx:Connect(wx.wxEVT_COMMAND_MENU_SELECTED, on_item_select)
  
  setmetatable(menu, metatable)
  return menu
end

function Menu:add_item(text)
  local item = MenuItem.create(self, text)
  menu_items[item.wx:GetId()] = item
  self.wx:Append(item.wx)
  return item
end

return Menu