
screenW = obj.screen_w - 100
zoomRate = obj.getvalue("zoom")/100
thresholdW = screenW   --obj.wの閾値（基本文字サイズはこれで調節）

camZ = -1024
zScale = (camZ - obj.z) / camZ

fitW = obj.w
if (obj.w < thresholdW) then
    fitW = thresholdW
end

obj.zoom = screenW * zScale / fitW