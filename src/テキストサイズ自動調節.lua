--track0:拡大率,1,1000,100,1
--track1:余白,0,9999,0,1

local camZ = -1024
local zScale = (camZ - obj.z) / camZ

--local margin = obj.track1
local margin = 100
local screenW = obj.screen_w - margin
local zoomRate = obj.getvalue("zoom")/100
--local thresRate = 100/obj.track0
local thresRate = 1.0
local thresholdW = screenW * zoomRate * thresRate

local objectW = obj.w
if (objectW < thresholdW) then
    objectW = thresholdW
end
obj.zoom = screenW * zScale / objectW