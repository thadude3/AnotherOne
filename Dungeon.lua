

	
function startDungeon()	
	showMenu()
	runDungeon()
end

function showMenu()
	dialogInit()

	addTextView(" Map")
	spItems = {"Moonlight","Marsh", "Miglance Castle","Volcano","Xeno-Domain","Tower of Stars","Dragon Palace"}
	addSpinner("spValue", spItems, spItems[1])
	addSeparator()
	addTextView(" Advanced Dungeon Options")
	newRow()
	addCheckBox("cbValue", "Get Food", true)
	addTextView("    This will use the space time rift to get food")
	newRow()
	addCheckBox("cbMobs", "Skip Mobs",false)
	addTextView("    Skip the 5 random encounters if you have already done them")
	newRow()
	addCheckBox("cbMap", "Skip Using Map",false)
	addTextView("    Skip using the map to get to the dungeon")
	newRow()
	addCheckBox("cbSkipRare", "Skip Rare Bosses", false)
	addTextView("    Try to avoid the rare bosses if possible")
	newRow()
	addCheckBox("cbAbilities", "Use Abilities", true)
	addTextView("   Currently uses 3rd ability for all")
	newRow()
	addCheckBox("cbToast", "Show debug toasts", false)
	addTextView("   Show what is going on via toasts")
	newRow()
	addTextView(" Enter Starting floor number")
	addEditNumber("numFloor",1)
	newRow()
	addTextView(" This is to override the floor you are starting the bot on. Incase it stops or needs to restart")
	newRow()
	addTextView(" Enter amount of replays")
	addEditNumber("numReplay",1)
	newRow()
	dialogShow("Dungeons")
end

function runDungeon()
	setStopMessage("Finished Running Dungeons")
 y = 0
   while(y < numReplay) do
   useMaptoSpace()
    if(cbValue) then
		wait(3)
		getFood()   
		wait(3)
	end
	if(not cbMap) then
	-- Move to door for map selection
	moveLeft(1)
	existsClick(Pattern("doorq.png"),5)
	end		
    if(spValue == "Moonlight") then 
    require(scriptPath() .."Moonlight")
	if(not cbMap) then
		moveToMoonlight()
	end
	elseif(spValue == "Marsh") then
	require(scriptPath() .."Marsh")
	if(not cbMap) then
		moveToMarsh()	
	end
	elseif(spValue == "Miglance Castle") then
	require(scriptPath() .."Miglance")
	if(not cbMap) then
		moveToMiglance()
	end
	elseif(spValue == "Volcano") then
	require(scriptPath() .."Volcano")
	if(not cbMap) then
		moveToVolcano()
	end
	elseif(spValue == "Xeno-Domain") then
	require(scriptPath() .."Xeno")
	if(not cbMap) then
		moveToXeno()
	end 
	elseif(spValue == "Tower of Stars") then
	require(scriptPath() .."Stars")
	if(not cbMap) then
		moveToStars()
	end
	elseif(spValue == "Dragon Palace") then
	require(scriptPath() .."Dragon")
	if(not cbMap) then
		moveToDragon()
	end
   -- select difficulty eventually
    if(not cbMap) then
		existsClick(Pattern("hardv3.png"),5)
		existsClick(Pattern("move.png"),5)
		wait(5)
	end
   -- Detect if in dungeon and start
   end
	x = numFloor
      while(x <= getFloorCount())
      do
        toast("Starting floor ".. x)
        wait(5)
        handleFloor(getFloor(x))
        x=x+1
			--clear variables so we get food and use map for second run
		cbValue = true
		cbMobs = false
		cbMap = false
      end
	wait(10)
	simpleClick(3)
	y = y+1
	existsClick(Pattern("congrat.png"),4)
	existsClick(Pattern("congrat.png"),4)
	wait(5)	

   end 
   end