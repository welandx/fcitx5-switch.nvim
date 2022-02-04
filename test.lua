
  local cmd=io.popen("fcitx5-remote")
  --local cmd=io.popen("echo hello")
  local ret=cmd:read("*a")
  local tmp=tonumber(ret)
  cmd:close()
  print(ret)
  print(tmp)
  print(type(tmp))
