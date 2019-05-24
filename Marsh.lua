fOne = { {0,"F"},{7,"L"},{1,"U"},{2,"L"},{1,"U"}, {2,"R"}, {0,"T"},{2,"L"}, {1,"D"},{2,"L"},{1,"D"},{2,"R"}, {0,"T"},{2,"L"},{1,"U"},{2,"R"},{1,"U"},{4,"L"},{0,"E"}}
fTwo = { {0,"F"},{5,"R"},{1,"U"},{3,"L"},{0,"T"},{3,"R"},{1,"D"},{5,"L"},{1,"U"},{4,"L"},{1,"D"},{5,"L"},{0,"E"}}
fThree = { {0,"F"},{8,"L"},{4,"R"},{1,"U"},{2,"L"},{0,"T"},{2,"R"},{1,"D"},{3,"L"},{1,"D"},{2,"R"},{0,"T"},{7,"L"},{1,"U"},{3,"L"},{0,"T"},{1,"R"},{1,"U"},{2,"R"},{0,"E"}}
fFour = { {3,"R"},{0,"T"},{0,"Food"},{10,"L"},{0,"B"}}


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