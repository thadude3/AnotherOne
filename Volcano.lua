fOne = { {0,"F"},{5,"R"},{7,"L"},{1,"U"},{4,"R"},{0,"T"},{4,"L"},{1,"D"},{3,"L"},{1,"D"},{3,"L"},{0,"T"},{3,"R"},{1,"U"},{2,"L"},{1,"U"},{8,"L"},{1,"U"}}
fTwo = { {0,"F"},{11,"L"},{2,"R"},{1,"U"},{4,"R"},{0,"T"},{13,"L"},{1,"U"},{2,"L"},{1,"U"}}
fThree = { {0,"F"},{7,"L"},{1,"R"},{1,"U"},{6,"R"},{0,"T"},{4,"L"},{1,"U"},{11,"L"},{0,"T"},{7,"R"},{1,"D"},{3,"L"},{1,"D"},{9,"L"},{0,"T"},{3,"R"},{1,"U"},{3,"L"},{1,"U"}}
fFour = { {2,"L"},{0,"T"},{0,"Food"},{6,"L"},{0,"B"}}


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