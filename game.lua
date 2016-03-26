#!/usr/local/bin/lua
local lfs = require 'lfs'
local clock = os.clock
function sleep(n)
   local t0 = clock()
   while clock() - t0 <= n do end
end
function clear()
   os.execute('clear')
end
function ls(root)
  for file in lfs.dir(root) do
		if file~='.' and file~='..' and file~='.DS_Store' then
			local fullPath=root..'/'..file
			local mode=lfs.attributes(fullPath,'mode')
			if mode=='file' then
				print(file)
      elseif mode=='directory' then
				ls(fullPath);
			end
		end
	end
end
function file_exists(file)
  local f = io.open(file, 'rb')
  if f then f:close() end
  return f ~= nil
end
function readData(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do
    lines[#lines + 1] = line
  end
  return lines
end
function ConfigGet()
   configFile = Dir/Where/Config/is..'config.txt'
   config = readData(configFile)
   varof1stconfigline = config[1]
end

function main()
   clear()
   print[[

     Play

     About

     Credits

     Exit
   ]]
   io.write("Select a Option: ")
   option = io.read()
   print()
   if option == "Play" then
      play()
   else
      if option == "About" then
         about()
      else
         if option == "Credits" then
            credits()
         else
            if option == "Exit" then
               clear()
            else
       	       print("Invalid Option")
               sleep(1)
               main()
            end
         end
      end
   end
end

function play()
   clear()
   print("Type commands to do things. Do command 'help' to list types of commands. Then do 'helptype' and then type the type of command to get what commands do.")
   io.write("Command: ")
   command = io.read()
   if command == "help" then
     print[[

   Types of Commands are

   movement

   sight

   misc (random)

   crafting

   destroying

   presonal
     ]]
    sleep(2)
    play()
   elseif command == "helptype" then
   helptype()
   end
end

function about()
   clear()
   print("This is a text adventure game about survival.")
   sleep(1)
   main()
end

function credits()
	clear()
	print[[

    Credits

    Main Designer: Caleb J.

    Inspiration: Michael D. and Caleb J.

    Beta and Alpha Testers: Caleb J.

  ]]
  sleep(2)
  main()
end

function checkcommand()

end

destroying

personal

function helptype()
  io.write("Type of Command: ")
  toc = io.read()
  if toc == "movement" then
    print[[

    Command   |    What it does
    ----------+----------------
    move      |  Makes your carector move
              |
    moveto    |  Makes your carector move to something
              |
              |
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  elseif toc == "sight" then
    print[[

    Command   |    What it does
    ----------+----------------
    look      |  Makes your carector look around
              |
    lookdir   |  Makes your carector look in a direction
              |
    lookfor   |  Makes your carector look for something
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  elseif toc == "misc" then
    print[[

    Command   |    What it does
    ----------+----------------
    look      |  Makes your carector look around
              |
    lookdir   |  Makes your carector look in a direction
              |
    lookfor   |  Makes your carector look for something
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  elseif toc == "crafting" then
    print[[

    Command   |    What it does
    ----------+----------------
    look      |  Makes your carector look around
              |
    lookdir   |  Makes your carector look in a direction
              |
    lookfor   |  Makes your carector look for something
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  elseif toc == "destroying" then
    print[[

    Command   |    What it does
    ----------+----------------
    look      |  Makes your carector look around
              |
    lookdir   |  Makes your carector look in a direction
              |
    lookfor   |  Makes your carector look for something
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  elseif toc == "crafting" then
    print[[

    Command   |    What it does
    ----------+----------------
    look      |  Makes your carector look around
              |
    lookdir   |  Makes your carector look in a direction
              |
    lookfor   |  Makes your carector look for something
              |
              |
              |
              |
              |

    ]]
    sleep(3)
    play()
  end
end

main()
