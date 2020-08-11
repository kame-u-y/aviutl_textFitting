--track0:拡大率,1,1000,100,1
--track1:余白,0,9999,0,1

local camZ = -1024
local zScale = (camZ - obj.z) / camZ

--local margin = obj.track1
local margin = 100
local screenW = obj.screen_w - margin
local zoomRate = obj.getvalue("zoom")/100
--local thresRate = obj.track0/100
local thresRate = 1.0
local thresholdW = screenW * zoomRate / thresRate

local isLast = false
local wSum = 0


--サイズ取得
if (obj.getoption("multi_object")==true) then
    hoge = "piyo"
    wSum = wSum + obj.w
end

--ラスト判定とサイズ調節
if (obj.index == obj.num-1) then
    isLast = true
end

if (isLast) then
    fuka = wSum
    local objectW = 0
    if (obj.getoption("multi_object")) then
        objectW = wSum
    else
        objectW = obj.w
    end
    if (objectW < thresholdW) then
        objectW = thresholdW
    end
    obj.zoom = screenW * zScale / objectW
end
