-- 定义递归查找的目录范围
local config_dir = os.getenv("HOME")  -- 设置为 ~ 目录
local config_file_name = ".nvim.lua"  -- 配置文件名

-- ~/.config/nvim/init.lua

-- 定义多个配置目录
local config_dirs = {
  os.getenv("HOME"),  -- 设置为 ~ 目录
  -- "/usr/local",       -- 设置为 /usr/local 目录
  -- 可以添加更多目录
}

-- 自定义函数：检查当前目录是否在配置目录表中
local function is_in_config_dirs(dir, config_dirs)
  for _, config_dir in ipairs(config_dirs) do
    if dir:sub(1, #config_dir) == config_dir then
      return true
    end
  end
  return false
end

-- 自定义函数：递归查找并加载项目级别配置文件
local function load_project_config()
  local file_path = vim.fn.expand("%:p")
  local current_dir = vim.fn.fnamemodify(file_path, ":h")

  -- 递归查找配置文件
  while current_dir ~= "" do
    -- 检查当前目录是否在配置目录表中
    if not is_in_config_dirs(current_dir, config_dirs) then
      -- 当前目录不在配置目录范围内，停止递归
      break
    end

    local config_file = current_dir .. "/" .. config_file_name
    -- vim.notify("检查配置文件: " .. config_file, vim.log.levels.DEBUG, { title = "", icon = "" })
    if vim.fn.filereadable(config_file) == 1 then
      -- 文件找到，加载配置文件
      vim.cmd("source " .. config_file)
      -- vim.notify("加载配置文件: " .. config_file, vim.log.levels.INFO)
      return
    end

    -- 递归向上级目录查找
    current_dir = vim.fn.fnamemodify(current_dir, ":h")
  end
  -- vim.notify("未找到配置文件，停止递归查找", vim.log.levels.INFO)
end

-- 使用 autocmd 在打开新文件时自动调用 load_project_config 函数
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = load_project_config,
})
