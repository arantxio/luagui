local api = {
  gui = {
    type = 'lib',
    description = 'Allows you to create a graphical user interface in Lua.',
    
    childs = {
      create_timer = {
        type = 'function',
        description = 'Creates a timer.',
        args = '()',
        returns = '(timer)',
        valuetype = 'timer'
      },
    
      create_window = {
        type = 'function',
        description = 'Creates a new window.',
        args = '()',
        returns = '(window)',
        valuetype = 'window'
      },
      
      run = {
        type = 'function',
        description = 'Starts the main event loop.',
        args = '()',
        returns = '()'
      }
    }
  },
  
  button = {
    type = 'class',
    description = 'A button.',
    
    childs = {
      anchor = {
        type = 'value',
        description = "The sides of the button's parent to which the button is anchored. When the button is anchored to a side, the distance between the button and the parent's side don't change when you resize the parent. Valid values are 'left', 'right', 'top', 'bottom', or combinations thereof separated by a space. 'all' is a shortcut for 'top left bottom right'."
      },
      
      background_color = {
        type = 'value',
        description = 'The background color of the button. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the background color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      height = {
        type = 'value',
        description = 'The height of the button in pixels.'
      },
      
      text = {
        type = 'value',
        description = 'The text on the button.'
      },
      
      text_color = {
        type = 'value',
        description = 'The color of the text on the button. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the text color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      width = {
        type = 'value',
        description = 'The width of the button in pixels.'      
      },
      
      x = {
        type = 'value',
        description = 'The x-position of the button in pixels.'
      },
      
      y = {
        type = 'value',
        description = 'The y-position of the button in pixels.'
      },
      
      click = {
        type = 'method',
        description = 'Simulates a click on the button.',
        args = '()',
        returns = '()'
      },
      
      destroy = {
        type = 'method',
        description = 'Removes the button from its window. Once a button is destroyed, you can\'t access its properties, call its functions, or listen to its events anymore.',
        args = '()',
        returns = '()'
      },
      
      on_click = {
        type = 'method',
        description = 'The event handler that is called when the user clicks the button with the left mouse button.',
        args = '()',
        returns = '()'
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the button.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the button.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the button.',
        args = '(button, x, y)',
        returns = '()'
      }
    }
  },
  
  dialog = {
    type = 'class',
    description = 'A dialog box.',
    
    childs = {
      background_color = {
        type = 'value',
        description = 'The background color of the dialog. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the background color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      height = {
        type = 'value',
        description = 'The height of the dialog in pixels. The height does not include borders or the title bar.'
      },
      
      resizable = {
        type = 'value',
        description = 'true if the user can resize the dialog, false if the size of the dialog is fixed.'
      },
      
      title = {
        type = 'value',
        description = 'The text that is displayed in the title bar of the dialog.'
      },
      
      width = {
        type = 'value',
        description = 'The width of the dialog in pixels. The width does not include borders.'        
      },
      
      x = {
        type = 'value',
        description = 'The x-coordinate of the dialog in pixels.'
      },
      
      y = {
        type = 'value',
        description = 'The y-coordinate of the dialog in pixels.'
      },
      
      add_button = {
        type = 'method',
        description = 'Creates a button and adds it to the dialog.',
        args = '()',
        returns = '(button)',
        valuetype = 'button'
      },
      
      add_image = {
        type = 'method',
        description = 'Creates an image and adds it to the dialog.',
        args = '()',
        returns = '(image)',
        valuetype = 'image'
      },
      
      add_label = {
        type = 'method',
        description = 'Creates a label and adds it to the dialog.',
        args = '()',
        returns = '(label)',
        valuetype = 'label'
      },
      
      add_text_box = {
        type = 'method',
        description = 'Creates a text box and adds it to the dialog.',
        args = '()',
        returns = '(text_box)',
        value_type = 'text_box'
      },
      
      close = {
        type = 'method',
        description = 'Closes the dialog.'
      },
      
      show_modal = {
        type = 'method',
        description = "Shows the dialog. While the dialog is visible, the user can't activate the parent window.",
        args = '()',
        returns = '()'
      },
      
      show_modeless = {
        type = 'method',
        description = 'Shows the dialog. The user can still activate the parent window while the dialog is visible.',
        args = '()',
        returns = '()'
      },
      
      on_key_down = {
        type = 'method',
        description = 'The event handler that is called when the user presses a key while the dialog has focus.',
        args = '(key, modifiers)',
        returns = '()'
      },
      
      on_key_up = {
        type = 'method',
        description = 'The event handler that is called when the user releases a key while the dialog has focus.',
        args = '(key, modifiers)',
        returns = '()'
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the dialog.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the dialog.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the dialog.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the dialog.',
        args = '()',
        returns = '()'
      },
      
      on_resize = {
        type = 'method',
        description = 'The event handler that is called when the user resizes the dialog.',
        args = '()',
        returns = '()'
      }
    }
  },
  
  file_dialog = {
    type = 'class',
    description = 'A file dialog with which the user can select a file to open or save.',
    
    childs = {
      default_folder = {
        type = 'value',
        description = 'The path of the folder the user starts in when the file dialog opens.'
      },
      
      default_file = {
        type = 'value',
        description = 'The name of the file that is selected when the file dialog opens.'
      },
      
      file_name = {
        type = 'value',
        description = 'The name of the file the user has selected. The file name includes the full path of the file. If multiselect is true, you should use file_names instead of file_name.'
      },
      
      file_names = {
        type = 'value',
        description = 'A list of names of the files the user has selected. The file names include the full path of the file. If multiselect is false, you should use file_name instead of file_names.'
      },
      
      filters = {
        type = 'value',
        description = "A list of file filters that are available in the file dialog. Every filter in the list is of itself a list with two values: the description and the wildcard filter itself. For example: { { 'Text files', '*.txt' }, { 'All files', '*.*' } }"
      },
      
      multiselect = {
        type = 'value',
        description = 'true if the user can select multiple files in the file dialog, or false when the user can select only a single file.'
      },
      
      title = {
        type = 'value',
        description = 'The text that is displayed in the title bar of the file dialog.'
      },
      
      open = {
        type = 'method',
        description = 'Shows a dialog for opening a file. Returns true if the user has selected a file, or false when the user has cancelled the dialog.',
        args = '()',
        returns = '(bool)'
      },
      
      save = {
        type = 'method',
        description = 'Shows a dialog for saving a file. Returns true if the user has selected a file, or false when the user has cancelled the dialog.',
        args = '()',
        returns = '(bool)'
      }
    }
  },
  
  image = {
    type = 'class',
    description = 'An image, displayed in a window.',
    
    childs = {
      anchor = {
        type = 'value',
        description = "The sides of the image's parent to which the image is anchored. When the image is anchored to a side, the distance between the image and the parent's side don't change when you resize the parent. Valid values are 'left', 'right', 'top', 'bottom', or combinations thereof separated by a space. 'all' is a shortcut for 'top left bottom right'."
      },
      
      file_name = {
        type = 'value',
        description = 'The path of the file that contains the image.'
      },
      
      height = {
        type = 'value',
        description = "The image's height in pixels."
      },
      
      width = {
        type = 'value',
        description = "The image's width in pixels."
      },
      
      x = {
        type = 'value',
        description = "The image's x-coordinate in pixels relative to the window."
      },
      
      y = {
        type = 'value',
        description = "The image's y-coordinate in pixels relative to the window."
      },
      
      destroy = {
        type = 'method',
        description = 'Removes the image from its window. Once an image is destroyed, you can\'t access its properties, call its functions, or listen to its events anymore.',
        args = '()',
        returns = '()'
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the image.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_over = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the image.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the image.',
        args = '(button, x, y)',
        returns = '()'
      }
    }
  },
  
  keyboard = {
    type = 'class',
    description = 'The current state of the keyboard.',
    
    childs = {
      key_down = {
        type = 'value',
        description = 'A list of all keyboard keys with an associated value of true if the key is down and false if the key is up.'
      },
      
      key_up = {
        type = 'value',
        description = 'A list of all keyboard keys with an associated value of true if the key is up and false if the key is down.'
      }
    }
  },
  
  label = {
    type = 'class',
    description = 'A label with static text.',
    
    childs = {
      height = {
        type = 'value',
        description = "The label's height in pixels."
      },
      
      text = {
        type = 'value',
        description = 'The text that is displayed on the label.'
      },
      
      width = {
        type = 'value',
        description = "The label's width in pixels."
      },
      
      x = {
        type = 'value',
        description = "The label's x-coordinate in pixels relative to the window."
      },
      
      y = {
        type = 'value',
        description = "The label's y-coordinate in pixels relative to the window."
      },
      
      destroy = {
        type = 'method',
        description = 'Removes the label from its window. Once a label is destroyed, you can\'t access its properties, call its functions, or listen to its events anymore.',
        args = '()',
        returns = '()'
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the label.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the label.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the label.',
        args = '(button, x, y)',
        returns = '()'
      }
    }
  },
  
  menu = {
    type = 'class',
    description = 'A menu on the menu bar',
    
    childs = {
      text = {
        type = 'value',
        description = "The menu's text."
      },
      
      add_item = {
        type = 'method',
        description = 'Creates a menu item with the specified text and adds it to the menu.',
        args = '(text)',
        returns = '(menu_item)',
        valuetype = 'menu_item'
      }
    }
  },
  
  menu_bar = {
    type = 'class',
    description = 'The menu bar of a window.',
    
    childs = {
      add_menu = {
        type = 'method',
        description = 'Creates a menu with the specified text and adds it to the menu bar.',
        args = '(text)',
        returns = '(menu)',
        valuetype = 'menu'
      }
    }
  },
  
  menu_item = {
    type = 'class',
    description = 'A menu item in a menu.',
    
    childs = {
      checked = {
        type = 'value',
        description = "true if the menu item has a checkmark in front of it, false if it doesn't."
      },
      
      text = {
        type = 'value',
        description = "The menu item's text."
      },
      
      select = {
        type = 'method',
        description = 'Select the menu item, just as if the user had clicked it.',
        args = '()',
        returns = '()'
      },
      
      on_select = {
        type = 'method',
        description = 'The event handler that is called when the user selects the menu item.',
        args = '()',
        returns = '()'
      }
    }
  },
  
  mouse = {
    type = 'class',
    description = 'The current state of the mouse.',
    
    childs = {
      button_down = {
        type = 'value',
        description = 'A list of mouse buttons with an associated value of true if the button is down and false if the button is up.'
      },
      
      button_up = {
        type = 'value',
        description = 'A list of mouse buttons with an associated value of true if the button is up and false if the button is down.'
      },
      
      screen_x = {
        type = 'value',
        description = 'The x-coordinate of the mouse cursor in pixels relative to the screen.'
      },
      
      screen_y = {
        type = 'value',
        description = 'The y-coordinate of the mouse cursor in pixels relative to the screen.'
      },
      
      x = {
        type = 'value',
        description = 'The x-coordinate of the mouse cursor in pixels relative to the window that has focus.'
      },
      
      y = {
        type = 'value',
        description = 'The y-coordinate of the mouse cursor in pixels relative to the window that has focus.'
      }
    }
  },
  
  text_box = {
    type = 'class',
    description = 'A box in which the user can enter text.',
    
    childs = {
      anchor = {
        type = 'value',
        description = "The sides of the text box's parent to which the text box is anchored. When the text box is anchored to a side, the distance between the text box and the parent's side don't change when you resize the parent. Valid values are 'left', 'right', 'top', 'bottom', or combinations thereof separated by a space. 'all' is a shortcut for 'top left bottom right'."
      },
      
      background_color = {
        type = 'value',
        description = 'The background color of the text box. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the background color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      destroy = {
        type = 'method',
        description = 'Removes the text box from its window. Once a text box is destroyed, you can\'t access its properties, call its functions, or listen to its events anymore.',
        args = '()',
        returns = '()'
      },
      
      height = {
        type = 'value',
        description = "The text box's height in pixels.",
      },
      
      multiline = {
        type = 'value',
        description = 'true if the text box can show multiple lines of text, false if it only shows one.'
      },
      
      text = {
        type = 'value',
        description = 'The text in the text box.'
      },
      
      text_color = {
        type = 'value',
        description = 'The color of the text in the text box. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the text color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      width = {
        type = 'value',
        description = "The text box's width in pixels."
      },
      
      word_wrap = {
        type = 'value',
        description = "true if words that don't fit in the text box automatically wrap to the next line, false if long lines require vertical scrolling."
      },
      
      x = {
        type = 'value',
        description = "The text box's x-coordinate in pixels relative to the window."
      },
      
      y = {
        type = 'value',
        description = "The text box's y-coordinate in pixels relative to the window."
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the text box.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the text box.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the text box.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_text_changed = {
        type = 'method',
        description = 'The event handler that is called when the text in the text box has changed.',
        args = '()',
        returns = '()'
      }
    }
  },
  
  timer = {
    type = 'class',
    description = 'A timer that raises an event after a set interval has expired.',
    
    childs = {
      interval = {
        type = 'value',
        description = 'The interval in seconds between on_tick-events.'
      },
      
      start = {
        type = 'method',
        description = 'Starts the timer. The timer will start to raise on_tick-events.',
        args = '()',
        returns = '()'
      },
      
      stop = {
        type = 'method',
        description = 'Stops the timer. The timer will stop raising on_tick-events.',
        args = '()',
        returns = '()'
      },
      
      on_tick = {
        type = 'method',
        description = "The event handler that is called each time when the timer's interval expires.",
        args = '(delta_time)',
        returns = '()'
      }
    }
  },
  
  window = {
    type = 'class',
    description = 'A window with a title bar.',
    
    childs = {
      background_color = {
        type = 'value',
        description = 'The background color of the window. You can specify the color as a list of numbers in the order red, green, blue, or as a table with the fields red, green and blue. So, the color orange would be either { 1.0, 0.4, 0 } or { red = 1.0, green = 0.4, blue = 0 }. When you read the background color, it is always specified in the second format. This property is not supported under MacOS.'
      },
      
      height = {
        type = 'value',
        description = 'The height of the window in pixels. The height does not include borders, scroll bars, the title bar, the menu bar, or the status bar.'
      },
      
      menu_bar = {
        type = 'value',
        description = "The window's menu bar.",
        valuetype = 'menu_bar'
      },
      
      resizable = {
        type = 'value',
        description = 'true if the user can resize the window, false if the size of the window is fixed.'
      },
      
      title = {
        type = 'value',
        description = 'The text that is displayed in the title bar of the window.'
      },
      
      width = {
        type = 'value',
        description = 'The width of the window in pixels. The width does not include borders and scroll bars.'        
      },
      
      x = {
        type = 'value',
        description = 'The x-coordinate of the window in pixels.'
      },
      
      y = {
        type = 'value',
        description = 'The y-coordinate of the window in pixels.'
      },
      
      add_button = {
        type = 'method',
        description = 'Creates a button and adds it to the window.',
        args = '()',
        returns = '(button)',
        valuetype = 'button'
      },
      
      add_image = {
        type = 'method',
        description = 'Creates an image and adds it to the window.',
        args = '()',
        returns = '(image)',
        valuetype = 'image'
      },
      
      add_label = {
        type = 'method',
        description = 'Creates a label and adds it to the window.',
        args = '()',
        returns = '(label)',
        valuetype = 'label'
      },
      
      add_text_box = {
        type = 'method',
        description = 'Creates a text box and adds it to the window.',
        args = '()',
        returns = '(text_box)',
        value_type = 'text_box'
      },
      
      close = {
        type = 'method',
        description = 'Closes the window. If there are no other open windows, the application will close.'
      },
      
      create_dialog = {
        type = 'method',
        description = "Creates a dialog box. A dialog box is a separate window with its own controls. Unlike a window, a dialog box doesn't show up in the task bar.",
        args = '()',
        returns = '(dialog)',
        value_type = 'dialog'
      },
      
      create_file_dialog = {
        type = 'method',
        description = 'Creates a file dialog that you can use to specify a file to open or save.',
        args = '()',
        returns = '(file_dialog)',
        value_type = 'file_dialog'
      },
      
      on_key_down = {
        type = 'method',
        description = 'The event handler that is called when the user presses a key while the window has focus.',
        args = '(key, modifiers)',
        returns = '()'
      },
      
      on_key_up = {
        type = 'method',
        description = 'The event handler that is called when the user releases a key while the window has focus.',
        args = '(key, modifiers)',
        returns = '()'
      },
      
      on_mouse_down = {
        type = 'method',
        description = 'The event handler that is called when the user releases a mouse button while the mouse cursor is over the window.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_mouse_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the mouse cursor over the window.',
        args = '(x, y)',
        returns = '()'
      },
      
      on_mouse_up = {
        type = 'method',
        description = 'The event handler that is called when the user presses a mouse button while the mouse cursor is over the window.',
        args = '(button, x, y)',
        returns = '()'
      },
      
      on_move = {
        type = 'method',
        description = 'The event handler that is called when the user moves the window.',
        args = '()',
        returns = '()'
      },
      
      on_resize = {
        type = 'method',
        description = 'The event handler that is called when the user resizes the window.',
        args = '()',
        returns = '()'
      }
    }
  }
}

return {
  name = "Lua GUI",
  description = "A GUI library for Lua that is simple to use.",
  author = "William Willing",
  version = 2,
  
  onRegister = function()
    ide:AddAPI("lua", "gui", api)
    table.insert(ide.interpreters.luadeb.api, "gui")
    ReloadLuaAPI()
  end,
  
  onUnRegister = function()
    ide:RemoveAPI("lua", "gui")

    for i, v in ipairs(ide.interpreters.luadeb.api) do
      if v == "gui" then
        table.remove(ide.interpreters.luadeb.api, i)
        break
      end
    end
  end
}