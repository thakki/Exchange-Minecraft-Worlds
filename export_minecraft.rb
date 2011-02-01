#!/usr/bin/env ruby

def export_mc(minecraft_path, winrar_path, save_path, minecraft_world)
  Dir.chdir(minecraft_path)
  winrar_command = "#{winrar_path}\\rar.exe a -m0 #{save_path}\\#{minecraft_world} #{minecraft_world}"
  system(winrar_command)
end