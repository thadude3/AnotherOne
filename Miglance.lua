fOne = { {0,"F"},{5,"LN"},{.3,"RN"},{1,"U"},{2,"R"},{1,"U"},{2,"L"},{0,"T"},{2,"R"},{1,"D"},{6,"L"},{1,"U"},{5,"L"},{1,"D"},{7,"L"},{0,"T"},{2,"R"},{1,"U"}}
fTwo = { {0,"F"},{7,"R"},{1.5,"LN"},{1,"U"},{4,"L"},{0,"W"},{1,"U"},{2.8,"LN"},{1,"D"},{6,"L"},{1,"U"},{2,"L"},{0,"T"},{2,"R"},{1,"D"},{3,"R"},{1,"D"},{2,"L"},{1,"U"}}
fThree = { {0,"F"},{5,"LN"},{1.5,"RN"},{1,"D"},{3,"L"},{1,"D"},{3,"R"},{0,"T"},{3,"L"},{1,"U"},{12,"L"},{0,"T"},{4,"R"},{1,"D"},{2,"L"},{0,"T"},{2,"R"},{1,"U"},{2,"R"},{1,"U"},{3,"L"},{1,"U"}}
fFour = { {2,"L"},{0,"T"},{0,"Food"},{9,"L"},{0,"B"}}
mapRegion = Region(1115,10,40,40)

function waitForRare() 
	mapRegion:exists(Pattern("rare2.png"),80)	 
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