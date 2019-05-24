-- ==== Settings =======
scriptDimension = 1280
scriptHeight = 720
Settings:setScriptDimension(true, scriptDimension)
Settings:setCompareDimension(true, scriptDimension)
Settings:set("MinSimilarity", 0.8)            
setImmersiveMode(true)
--setAlternativeClick(true)
hHalfWay = scriptHeight/2
wHalfWay = scriptDimension/1.6
-- Character locations
char1Loc = Location(90,650)
char2Loc = Location(264,650)
char3Loc = Location(430,650)
char4Loc = Location(600,650)
-- Move locations
fourthMove = Location(890,540)
   	  
-- Regions
battleRegion = Region(1060,510,240,240)
menuRegion = Region(10,510,340,200)
itemRegion = Region(0,0,150,150)
ultimateRegion = Region(600,0,400,80)
ultButtonRegion = Region(1100,0,200,100)
--itemRegion:highlight()
--menuRegion:highlight()
--ultimateRegion:highlight()

-- ===== Functions

function getFood()
		print("Getting Food")
		if(existsClick(Pattern("fruit.png"))) then
		  simpleClick(1)
     existsClick(Pattern("yes.png"),5)
     simpleClick(1)
	 simpleClick(1)	
	 simpleClick(1)
	 simpleClick(1)
	  else
	    print("Food not found")	    
	  end	
end

function useMaptoSpace()
if(not cbMap) then
	debugToast("Using Map")		
	if(menuRegion:existsClick(Pattern("map.png"):similar(0.5),5)) then
		debugToast("Clicked Map")
	else
	debugToast("Failed to Click Map")
		scriptExit("Failed to click Map")
	end
	existsClick(Pattern("tri.png"),5)
	existsClick(Pattern("space.png"),5)
	existsClick(Pattern("yes.png"),5)
	end
end

function moveToMoonlight()
	debugToast("Moving to Moonlight")	
	--maybe loop and swipe around until clicked?
	existsClick(Pattern("pres.png"),5)
	existsClick(Pattern("moon.png"),5)
end

function moveToMarsh()
	debugToast("Moving to Marsh")	
	existsClick(Pattern("anti.png"),5)
	existsClick(Pattern("marsh.png"),5)
end

function moveToMiglance()
	debugToast("Moving to Miglance")
	existsClick(Pattern("pres.png"),5)
	existsClick(Pattern("migl.png"),5)
end

function moveToVolcano()
	debugToast("Moving to Volcano")	
	existsClick(Pattern("anti.png"),5)
	existsClick(Pattern("vol.png"),5)	
end

function moveToXeno()
	debugToast("Moving to Xeno-Domain")
	existsClick(Pattern("fut.png"),5)
	--Loop 4 times, break on success. 
  for i = 0,4 do
	if(not existsClick(Pattern("xeno.png"),5)) then
		if(i == 0) then
			mapMoveUp(500)
		end
		if(i == 1) then
			mapMoveDown(500)
		end
		if(i == 2) then
			mapMoveLeft(500)
		end
		if(i == 3) then
			mapMoveRight(500)
		end
	else
		break
	end
	
  end	
end

function moveToStars()
	debugToast("Moving to Tower of Stars")
	existsClick(Pattern("anti.png"),5)
	--Loop 4 times, break on success. 
  for i = 0,4 do
	if(not existsClick(Pattern("stars.png"),5)) then
		if(i == 0) then
			mapMoveUp(500)
		end
		if(i == 1) then
			mapMoveDown(500)
		end
		if(i == 2) then
			mapMoveLeft(500)
		end
		if(i == 3) then
			mapMoveRight(500)
		end
	else
		break
	end
	
  end	
end

function moveToDragon()
	debugToast("Moving to Dragon Palace")
	existsClick(Pattern("anti.png"),5)
	--Loop 4 times, break on success. 
  for i = 0,4 do
	if(not existsClick(Pattern("dp1.png"),5)) then
		if(i == 0) then
			mapMoveUp(500)
		end
		if(i == 1) then
			mapMoveDown(500)
		end
		if(i == 2) then
			mapMoveLeft(500)
		end
		if(i == 3) then
			mapMoveRight(500)
		end
	else
		break
	end
	
  end	
end

function useAbilities()
if(cbAbilities) then
actionList = {
	{action = "touchDown", target = char1Loc},
{action = "touchUp", target = char1Loc},
{action = "wait", target = 0.5},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = char2Loc},
{action = "touchUp", target = char2Loc},
{action = "wait", target = 0.5},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = char3Loc},
{action = "touchUp", target = char3Loc},
{action = "wait", target = 0.5},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = char4Loc},
{action = "touchUp", target = char4Loc},
{action = "wait", target = 0.5},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove}

	}
     manualTouch(actionList)

  end
end

function useUltimate()
debugToast("Using Ultimate")
ultButtonRegion:existsClick(Pattern("ultbutton.png"))
actionList = {	
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},

{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove},
{action = "wait", target = 0.1},
{action = "touchDown", target = fourthMove},
{action = "touchUp", target = fourthMove}
}
manualTouch(actionList)

end

function doBattle()
debugToast("Doing Battle")
   battleButton = Pattern("battle.png"):similar(0.7)
   turn = 0
   maxTime = 300
   currentTime = os.time()
   elapsedTime = 0
   while true do
   	   if(battleRegion:exists(battleButton,2)) then
   	     useAbilities()
		 simpleClick(1)
		 currentTime = os.time()
		if(ultimateRegion:exists(Pattern("ultfull.png"):similar(0.95))) then
			useUltimate()
		end
		battleRegion:existsClick(battleButton)
   	   end
			    
	    turn = turn+1
		if(itemRegion:existsClick(Pattern("items.png",1):similar(0.7))) then			
			break
	    end
		elapsedTime = os.difftime(os.time(),currentTime) 
		if(elapsedTime > maxTime) then
			toast("Ran out of time")
			print("Ran out of time")
			simpleClick(1)
			break
		end
	end
	--finished battling wait for dilogs to disappear before moving again.
	wait(3)
end

function waitRare()
debugToast("Sneaking Past Rare")
	waitForRare()
end

function fightRare()
if(not cbSkipRare) then
toast("Fighting Rare")
maxTime = 30 -- seconds
currentTime = os.time()
elapsedTime = 0
  while true do 
   if(battleRegion:exists(Pattern("battle.png"))) then
     currentTime = os.time()
     maxTime = 600
     doBattle()
     break
    end
    elapsedTime = os.difftime(os.time(),currentTime) 
      if(elapsedTime > maxTime) then
      toast("Ran out of time")
        break
      end
  end
  end
end

function farmMobs()
toast("Farming Mobs")
while true do
  if(battleRegion:exists(Pattern("battle.png"))) then
     doBattle()
   end
	newmoveRight(1)
   if(battleRegion:exists(Pattern("battle.png"))) then
     doBattle()
   end   
   newmoveLeft(1)
end

end

function fightMobs()
debugToast("Fighting Mobs")
battles = 0
maxBattles = 5
maxTime = 80 -- 1.2 minutes
currentTime = os.time()
elapsedTime = 0

   while(battles < maxBattles)
    do
      moveRight(1)
      moveLeft(1)
      if(battleRegion:exists(Pattern("battle.png"))) then 
         doBattle()
         battles = battles+1
         debugToast("Fought ".. battles .. " battles")
         currentTime = os.time()
      end
      elapsedTime = os.difftime(os.time(),currentTime) 
	  --os.clock() - currentTime
      if(elapsedTime > maxTime) then
        break
      end
   end
   print("Battles")
end
function handleFloor(floor)
   for i, moves in ipairs(floor) do	
	    m = moves[1]
	    d = moves[2]	    
	    	if(not cbMobs and d == "F") then
	    		 fightMobs() 
	    	end
      
	    	
	    	if(d == "L") then
	    	   moveLeft(m)
	    	elseif(d == "LN") then
	    	   newmoveLeft(m)
	    	elseif(d == "R") then
	    	   moveRight(m)
			elseif(d == "RN") then
	    	   newmoveRight(m)
	    	elseif(d == "U") then
	    	   moveUp(m)
	    	elseif(d == "D") then
	    	   moveDown(m)
	    	elseif(d == "T") then
	    	   openTreasure()
	    	elseif(d == "E") then
	    	   openExit()
	    	elseif(d == "Food") then
	    	   eatFood()
	    	elseif(d == "Rare") then
	    	   fightRare()
			elseif(d == "W") then
	    	   waitRare()
	    	elseif(d == "B") then	  
	    	   fightBoss()
	    	end   
   end
end

function openTreasure()
debugToast("Opening Treasure")
	--if(existsClick(Pattern("treasure.png",4):similar(0.6))) then
	--	debugToast("Used first pattern")
--	elseif(existsClick(Pattern("pointtrans.png"):similar(0.7),4)) then
	--	debugToast("Used newnew trans mask")
--	elseif(existsClick(Pattern("exclaimtrans.png",4))) then
	--	debugToast("Used new trans mask")
--	elseif(existsClick(Pattern("alttreasure.png",4):similar(0.6))) then
--		debugToast("Used second pattern")	
	--elseif(existsClick(Pattern("treasure2.png",4))) then
	--	debugToast("Used third pattern")
--	end
	openMapTreasure()
	if(not existsClick(Pattern("menuborder.png",4))) then
		simpleClick(1)
	end
end
function openExit()
	debugToast("Open Exit")
	wait(1)	
	if(existsClick(Pattern("exittrans.png"):similar(0.6),5)) then
		debugToast("Clicked Exit Successful")
	end    
end

function eatFood()
  toast("Eating Food")
  if(not existsClick(Pattern("menu.png"),5)) then
	scriptExit("Failed to click menu")
  end
  existsClick(Pattern("foodbtn.png"),5)
  existsClick(Pattern("use.png"),5)
  existsClick(Pattern("menuborder.png"),3)
  existsClick(Pattern("menuborder.png"),3)
	-- click(Location(wHalfWay,hHalfWay))
	simpleClick(3) 	
end

function fightBoss()
 toast("FightBoss")
 if(existsClick(Pattern("yes.png"),5) or exists(Pattern("battle.png"))	) then 
   doBattle()
   simpleClick(3)
 end
end

function simpleClick(index)
debugToast("SimpleClick")
--todo loop for index
actionList = {}
  for i = 0,index do
    actionList[i] = {action = "touchDown", target = Location(500,500)}
    i = i + 1
    actionList[i] = {action = "touchUp", target = Location(500,500)}
    i= i + 1
    actionList[i] = {action = "wait", target = 1}
    i = i + 1
   index = index + 3
  end
manualTouch(actionList)
end

function newmoveRight(index)
debugToast("New Moving Right")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay+100,hHalfWay) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = index},
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end
function newmoveLeft(index)
debugToast("New Moving Left")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay-100,hHalfWay) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = index},
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end

function mapMoveUp(index)
debugToast("Moving Map Up")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay,hHalfWay+index) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = 2},	
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end

function mapMoveDown(index)
debugToast("Moving Map Down")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay,hHalfWay-index) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = 2},
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end

function mapMoveRight(index)
debugToast("Moving Map Right")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay+index,hHalfWay) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = 2},
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end

function mapMoveLeft(index)
debugToast("Moving Map Left")
startLoc = Location(wHalfWay,hHalfWay)
endLoc = Location(wHalfWay-index,hHalfWay) 

actionList = {{action = "touchDown", target = startLoc},
	{action = "wait", target = 0.1},
	{action = "touchMove", target = endLoc},
	{action = "wait", target = 2},
	{action = "touchUp", target = endLoc}
}
manualTouch(actionList)

end

function moveRight(index)
i=0
while(i < index) do 	
	dragDrop(Location(wHalfWay,hHalfWay),Location(wHalfWay+100,hHalfWay))
  debugToast("Moving Right")
  i = i+1
   end
end
function moveLeft(index)
i=0
while(i<index) do
      dragDrop(Location(wHalfWay,hHalfWay),Location(wHalfWay-100,hHalfWay))
   debugToast("Moving Left")
   i = i+1
   end
end
function moveUp(index)
i=0
while(i<index) do
      dragDrop(Location(wHalfWay,hHalfWay),Location(wHalfWay,hHalfWay-150))
   debugToast("Moving Up")
   i = i+1
   end
end
function moveDown(index)
i=0
while(i<index) do
      dragDrop(Location(wHalfWay,hHalfWay),Location(wHalfWay,hHalfWay+150))
   debugToast("Moving Down")
   i = i+1
   end
end

function debugToast(text)
    if(cbToast) then
    toast(text)	
    end
end

-- ===== Clear Preferences
removePreference("numFloor")

-- ===== Main program
dialogInit()
addTextView(" Tasks")
newRow()
addRadioGroup("rgIndex", 1)
addRadioButton("Click - This will click a lot", 1)
addRadioButton("Farm Mobs - This will move back and forth and battle", 2)
addRadioButton("Run Dungeon - This will auto run selected dungeon", 3)
addRadioButton("Fishing - This will set you up for fishing", 4)
addRadioButton("Collect Chronus - This will collect the daily Chronus Stones", 4)
newRow()
dialogShow("Another Eden Farming Bot")

if(rgIndex == 1) then
   while(true) do
	simpleClick(1)	
	end   
end

if(rgIndex == 2) then
   setStopMessage("Finished Farming Mobs")
   farmMobs()   
end
if(rgIndex == 3) then
    require(scriptPath() .."Dungeon")
	startDungeon()
end

if(rgIndex == 4) then
	require(scriptPath() .."Fishing")
	startFishing()
end

if(rgIndex == 4) then
	require(scriptPath() .."Chronus")
	startChronus()
end