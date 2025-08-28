local CollectionService = game:GetService("CollectionService")
local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"]["ResetOnSpawn"] = false

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Frame_2"]["Active"] = true
G2L["Frame_2"]["BorderSizePixel"] = 0
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(139, 139, 139)
G2L["Frame_2"]["Size"] = UDim2.new(0.27969, 0, 0.24259, 0)
G2L["Frame_2"]["Position"] = UDim2.new(0.27187, 0, 0.14825, 0)
G2L["Frame_2"]["BackgroundTransparency"] = 0.25

G2L["results_3"] = Instance.new("Textbox", G2L["Frame_2"])
G2L["results_3"]["BorderSizePixel"] = 0
G2L["results_3"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151)
G2L["results_3"]["Size"] = UDim2.new(0.68715, 0, 0.37778, 0)
G2L["results_3"]["Name"] = "results"
G2L["results_3"]["Position"] = UDim2.new(0.02793, 0, 0.5, 0)

G2L["UICorner_4"] = Instance.new("UICorner", G2L["Frame_2"])

G2L["user_5"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["user_5"]["BorderSizePixel"] = 0
G2L["user_5"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151)
G2L["user_5"]["Size"] = UDim2.new(0.68715, 0, 0.37778, 0)
G2L["user_5"]["Name"] = "user"
G2L["user_5"]["Position"] = UDim2.new(0.03911, 0, 0.04444, 0)

G2L["Dox_6"] = Instance.new("TextButton", G2L["Frame_2"])
G2L["Dox_6"]["BorderSizePixel"] = 0
G2L["Dox_6"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
G2L["Dox_6"]["Size"] = UDim2.new(0.20112, 0, 0.78889, 0)
G2L["Dox_6"]["Text"] = "Dox"
G2L["Dox_6"]["Name"] = "Dox"
G2L["Dox_6"]["Position"] = UDim2.new(0.75978, 0, 0.07778, 0)

local streets = {"Maple St","Oak Ave","Pine Rd","Elm Blvd","Cedar Ln","Birch Dr","Willow Way","Aspen Ct","Spruce St","Magnolia Ave"}
local cities = {"New York","Los Angeles","Chicago","Houston","Phoenix","Philadelphia","San Antonio","San Diego","Dallas","San Jose"}
local states = {"CA","TX","FL","NY","PA","IL","OH","GA","NC","MI"}
local countries = {"United States","Canada","UK","Australia","Germany","France","Japan","Brazil","Mexico","India"}
local isps = {"Comcast","AT&T","Verizon","Spectrum","CenturyLink","Cox","Frontier","Optimum","Mediacom","Windstream"}

G2L["Dox_6"].MouseButton1Click:Connect(function()
    local randomStreet = streets[math.random(1, #streets)]
    local randomCity = cities[math.random(1, #cities)]
    local randomState = states[math.random(1, #states)]
    local randomCountry = countries[math.random(1, #countries)]
    local randomISP = isps[math.random(1, #isps)]
    local randomZip = tostring(math.random(10000, 99999))
    local randomIP = math.random(1,255).."."..math.random(1,255).."."..math.random(1,255).."."..math.random(1,255)
    
    local fakeInfo = "IP: "..randomIP.."\n"
    fakeInfo = fakeInfo.."ISP: "..randomISP.."\n"
    fakeInfo = fakeInfo.."Location: "..randomStreet..", "..randomCity..", "..randomState.." "..randomZip.."\n"
    fakeInfo = fakeInfo.."Country: "..randomCountry.."\n"
    fakeInfo = fakeInfo.."Coordinates: "..math.random(30,45).."."..math.random(1000,9999).."N, "..math.random(70,120).."."..math.random(1000,9999).."W"
    
    G2L["results_3"].Text = fakeInfo
end)

return G2L["ScreenGui_1"], require
