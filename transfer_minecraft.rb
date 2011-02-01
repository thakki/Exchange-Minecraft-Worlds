#!/usr/bin/env ruby
require 'export_minecraft.rb'
require 'import_minecraft.rb'
require 'updown_minecraft.rb'

winrar_path = ""      #e.g. "C:\\Program Files\\WinRar"
minecraft_path = ""   #e.g. "C:\\Users\\Thakki\\AppData\\Roaming\\.minecraft\\saves"
save_path = ""        #e.g. "C:\\Users\\Thakki\\Desktop"

if (winrar_path == "") or (minecraft_path == "") or (save_path == "")
  puts "Please set variables first (use notepad or similar editor to edit this file)!"
elsif (ARGV[0] == nil) or (ARGV[1] == nil)
  puts "Usage: \t#{$0}\ttype world_name"
  puts "\t\t\t\ttype = import / export"
else
  type = ARGV[0].chomp
  minecraft_world = ARGV[1].chomp
  if type == "import"
    puts "downloading #{minecraft_world}"
    transfer_mc("down", "#{minecraft_world}.rar")
    puts "importing #{minecraft_world}"
    import_mc(minecraft_path, winrar_path, Dir.pwd, minecraft_world)
  elsif type == "export"
    puts "exporting #{minecraft_world}"
    export_mc(minecraft_path, winrar_path, save_path, minecraft_world)
    puts "uploading #{minecraft_world}"
    transfer_mc("up", "#{save_path}\\#{minecraft_world}.rar")
  else
    puts "Fail"
  end  
end