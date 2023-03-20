-- local install = "mv fonts ~/.local/share/"

function fn_install()
  local install = "mv fonts ~/.local/share/"
  os.execute(install)
  print("Fonts to be read...")
  return true
end

function fn_load()
  local fc = "fc-cache -fv >/dev/null"
  os.execute(fc)
  print("Updating cache for fonts...")
  return true
end


if( fn_install() ) then
  if( fn_load() ) then
    print("Fonts successfully installed!")
  else
    print("Failed to update fonts.")
  end
else
  print("Failed to install fonts.")
end
