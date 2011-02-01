#!/usr/bin/env ruby
run = system("ps aux | grep ts3 > log.txt")

if run == true
  minecraft = false
  File.open("log.txt", 'r').each do |line|
    test = line.match(/(.*)(server_nogui)(.*)/)
    if test != nil
      minecraft = true
    end
  end
  if minecraft == true
    t = Time.now
    system("tar cfvz Minecraft#{t.to_s.gsub(" ", "")}.tar.gz  /home/ts3/minecraft/Mittelerde/")
  end
end