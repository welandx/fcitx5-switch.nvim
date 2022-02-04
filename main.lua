
local ZH_on = 2
local EN_on = 1

--local get_fcitx_status = "fcitx5-remote"
local sw_to_CH="fcitx5-remote -o"
local sw_to_EN="fcitx5-remote -c"

--os.execute(sw_to_EN)

local stack_insert_status = 1

function Get_fcitx_status()
  local cmd=io.popen("fcitx5-remote")
  local ret=cmd:read("*a")
  local tmp=tonumber(ret)
  cmd:close()
  return tmp
end

function Leave_insert()
  local exit_insert_status=Get_fcitx_status()
  --stack_insert_status=exit_insert_status
  if exit_insert_status == 2 then
    os.execute(sw_to_EN)
    stack_insert_status=2
  else
    stack_insert_status=1
  end
end

function Enter_insert()
  local enter_insert_status=EN_on
  if enter_insert_status~=stack_insert_status then
    if stack_insert_status==ZH_on then
      os.execute(sw_to_CH)
    end
  else os.execute(sw_to_EN)
  end
end

vim.api.nvim_command('augroup Leave_enter')
vim.api.nvim_command('autocmd InsertLeave * lua Leave_insert()')
vim.api.nvim_command('autocmd InsertEnter * lua Enter_insert()')
vim.api.nvim_command('augroup end')
