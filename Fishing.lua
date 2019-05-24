changeRegion = Region(900,650,70,40)
fishingRegion = Region(550,360,30,60)
castRegion = Region(550,380,30,60)
fishingRegionTwo = Region(700,380,30,60)
castRegionTwo = Region(700,400,30,60)

function startFishing()
	setStopMessage("Finished Fishing")
	--show menu
	fishMenu()
	--Move to Fishing spot	
	moveToFishingSpot(fishingLocations)
	-- Select Bait
	selectBait(fishingBait)
	
	fish()
end

function fishMenu()
	dialogInit()
	addTextView(" Location")
	fishingSpinner = {"Kira Beach","Dragon Palace 1"}
	addSpinner("fishingLocations", fishingSpinner, "Kira Beach")
	addSeparator()
	addTextView(" Bait")
	baitSpinner = {"Fishing Dango","Worm"}
	addSpinner("fishingBait", baitSpinner, "Fishing Dango")
	newRow()
	addTextView(" Bag Size")
	addEditNumber("numBagSize",10)
	newRow()	
	addCheckBox("cbSellFish", "Automatically Sell Fish", false)
	dialogShow("Fishing")		
end

function moveToFishingSpot(location)
	toast("Moving to ".. location)
	if(menuRegion:existsClick(Pattern("map.png"):similar(0.5),5)) then
		debugToast("Clicked Map")
	else
		debugToast("Failed to Click Map")		
	end
	
	existsClick(Pattern("anti.png"),5)
	
	if(location == "Kira Beach") then
		locPattern = Pattern("kira.png")
	elseif (location == "Dragon Palace 1") then
		locPattern = Pattern("dp1.png")
	end
	
	
	--Loop 4 times, break on success. 
	for i = 0,4 do
		if(not existsClick(locPattern,5)) then
			if(i == 0) then
				mapMoveUp(100)
			end
			if(i == 1) then
				mapMoveDown(100)
			end
			if(i == 2) then
				mapMoveLeft(100)
			end
			if(i == 3) then
				mapMoveRight(100)
			end
		else
			break
		end	
	end	
	-- Accept
	existsClick(Pattern("yes.png"),5)
	wait(2)
	if(location == "Kira Beach") then
		newmoveLeft(2)
	elseif (location == "Dragon Palace 1") then
		newmoveLeft(3)
	end
	
	wait(2)
	existsClick(Pattern("fish.png"),5)
	
end

function selectBait(bait)
	if(bait == "Fishing Dango") then
		baitPat = Pattern("dango.png")
	end
	changeRegion:existsClick(Pattern("changebait.png"),5)
	existsClick(baitPat,5)
end

function fish()
	x = 0
	while(x <= numBagSize)
	do
		toast("Casting Region One")
		cast(castRegion)
		if(fishingRegion:exists(Pattern("bobber.png"):similar(0.6),2)) then
			if(fishingRegion:waitVanish(Pattern("bobber.png"):similar(0.6),20)) then
				click(castRegion)
				toast("Caught")
				wait(3)
				click(castRegion)
				
				
			end
		end
		toast("Casting Region Two")
		cast(castRegionTwo)
		if(fishingRegionTwo:exists(Pattern("bobber.png"):similar(0.6),2)) then
			if(fishingRegionTwo:waitVanish(Pattern("bobber.png"):similar(0.6),20)) then
				click(castRegionTwo)
				toast("Caught")
				wait(3)
				click(castRegionTwo)
				
				
			end
		end
		x = x+1
	end
	--todo handle no more fish
	--handle battle while moving
	
	--Click in random spot to cast
	--Watch for dialogs and click and re cast
	--watch for image region to disappear and click fast(hopefully works to castch fish?)
end

function cast(region)
	click(region)	
end
