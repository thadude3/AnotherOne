fOne = { {0,"F"},{8,"LN"},{.1,"RN"},{1,"U"},{3,"RN"},{0,"T"},{1.2,"LN"},{1,"U"},{8,"RN"},{0,"T"},{9,"LN"},{1,"U"}}
fTwo = { {0,"F"},{5,"RN"},{2.5,"LN"},{0,"W"},{1,"U"},{1.5,"LN"},{1,"U"},{5,"LN"},{0,"T"},{2.2,"RN"},{0,"W"},{1,"D"},{1.1,"LN"},{1,"D"},{3,"LN"},{0,"E"}}
fThree = { {0,"F"},{8,"RN"},{1.4,"LN"},{1,"U"},{1.8,"LN"},{0,"T"},{1.8,"RN"},{1,"D"},{4.5,"LN"},{1,"D"},{3.9,"LN"},{1,"U"},{1.8,"LN"},{0,"T"},{1.8,"RN"},{1,"D"},{3.9,"RN"},{1,"U"},{1.6,"LN"},{1,"U"},{3.5,"RN"},{0,"T"},{4,"LN"},{1,"U"}}
fFour = { {.2,"LN"},{0,"T"},{0,"Food"},{3,"LN"},{0,"B"}}
mapRegion = Region(1040,40,80,40)
mapRegion2 = Region(1140,100,80,40)
count = 0

mapRegion:highlight()
mapRegion2:highlight()

function openMapTreasure()
	if(not existsClick(Pattern("xeno-treasure.png"):similar(0.7),4)) then
		if(not existsClick(Pattern("exclaim.png"):similar(0.7),4)) then
			existsClick(Pattern("exclaim-v2.png"):similar(0.7),4)
		end
	end
end

function waitForRare()
 if(count == 0) then
	count = 1	
	debugToast("Waiting for First Rare")
	mapRegion:exists(Pattern("xeno-rare.png"),80)	
 else
	debugToast("Waiting for Second Rare")
	mapRegion2:exists(Pattern("xeno-rare2.png"),80)	
 end
end

function getFloorCount()
	return 4
end

function getFloor(number)
	if number == 1 then
		return fOne
	elseif number == 2 then 
		return fTwo
	elseif number == 3 then 
		return fThree
	elseif number == 4 then 
		return fFour
	end
	return "unknown"
end