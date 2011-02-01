#!/usr/bin/env ruby

def import_mc(minecraft_path, winrar_path, save_path, archive_name)
  Dir.chdir(minecraft_path)
  winrar_command = "#{winrar_path}\\unrar.exe x -o+ #{save_path}\\#{archive_name}"
  system(winrar_command)
end