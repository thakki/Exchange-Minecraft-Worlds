#!/usr/bin/env ruby

def transfer_mc(direction, minecraft_world)
  if direction == "up"
    system("curl.exe -T #{minecraft_world} ftp://USER:PASSWORD@DOMAIN:PORT")
  elsif direction == "down"
    system("curl.exe -O ftp://USER:PASSWORD@DOMAIN:PORT/#{minecraft_world}")
  else
    puts "Fail"
  end
end