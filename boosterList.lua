local boosterList = {}
local HttpService = game:GetService("HttpService")

local URL = "https://raw.githubusercontent.com/Timothy3773/scpfboosterlist/main/list.json"

local response = HttpService:JSONDecode(HttpService:GetAsync(URL))

function boosterList:getList()
    return response
end

function boosterList:isBooster(userid)
    local list = boosterList:getList()
    for i, id in pairs(list) do
        if id == userid then
            return true
        end
    end
    return false
end

return boosterList
