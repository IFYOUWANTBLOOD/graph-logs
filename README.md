lib for showing progress or some shit
* you can use the graph and also the text logs

```lua
local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/loglizzy/graph-logs/main/main.lua'))()
local win = lib.new('logs','gold')
win.add('<font color="rgb(255,255,100)">Suck 100 dicks</font> quest completed, got 500 gold')
win.add('another shit completed with sucess, got <font color="rgb(255,255,100)">700</font> bucks')
win.add('the time right here is auto generated when you use add function')
win.graph({
    {'07:48:26',500},
    {'07:48:28',1200},
    {'07:48:30',800}
})
```
![image](https://user-images.githubusercontent.com/72479668/134770750-9f6124e9-9250-4b3d-a138-2c2ac2b605ea.png)

#video
https://user-images.githubusercontent.com/72479668/134769663-34db99c4-6517-45fc-884e-4cfd8dc0f177.mp4
