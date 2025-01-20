-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
  -- Auto choose dGPU rendering with Vulkan
  if (gpu.backend == 'Vulkan' and gpu.device_type == 'DiscreteGpu') or gpu.backend == 'Metal' then
    config.webgpu_preferred_adapter = gpu
    config.front_end = 'WebGpu'
    break
  end
end

config.font = wezterm.font 'MesloLGS NF'
config.font_size = 14.0

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Light color scheme
-- config.color_scheme = 'Builtin Light'

-- and finally, return the configuration to wezterm
return config
