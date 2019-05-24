fOne = { {0,"F"},{5,"LN"},{.6,"RN"},{1,"U"},{3.4,"LN"},{1,"D"},{1,"RN"},{0,"T"},{5,"LN"},{1,"U"},{1,"RN"},{1,"U"},{1,"LN"},{0,"T"},{1,"RN"},{1,"D"},{3,"LN"},{1,"U"}}
fTwo = { {0,"F"},{5,"LN"},{.6,"RN"},{1,"D"},{1,"RN"},{0,"T"},{9.2,"LN"},{1,"U"}}
fThree = { {0,"F"},{7,"RN"},{1.2,"LN"},{1,"U"},{2,"RN"},{0,"T"},{6,"LN"},{6,"LN"},{0,"T"},{1.6,"RN"},{1,"D"},{1,"RN"},{0,"T"},{1,"LN"},{1,"U"},{1.8,"RN"},{1,"U"},{1.8,"RN"},{1,"U"}}
fFour = { {.5,"LN"},{0,"T"},{0,"Food"},{3,"LN"},{0,"B"}}
mapRegion = Region(1010,45,40,40)
mapRegion:highlight()

function openMapTreasure()
	if(not existsClick(Pattern("treasure.png"):similar(0.8),4)) then
		if(not existsClick(Pattern("exclaim.png"):similar(0.7),4)) then
			existsClick(Pattern("exclaim-v2.png"):similar(0.7),4)
		end
	end
end

function waitForRare() 
	debugToast("Waiting for First Rare")
	m = mapRegion:exists(Pattern("star-rare.png"):similar(0.85),160)	
	--toast("Score:".. m:getScore())
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