# Exotic3f status
#### การติดตั้ง

1) เอาไปใส่ไว้ใน folder resource
2) แก้ Esx_status แก้ใน client > main.lua ตามด้านล่างประมาณบันทัดที่ 52
```
	Citizen.CreateThread(function()
	  while true do

	  	for i=1, #Status, 1 do
	  		Status[i].onTick()
	  	end

			SendNUIMessage({
				update = true,
				status = GetStatusData()
			})
		TriggerEvent('stx_fwui:updateStatus', GetStatusData(true)) //แก้ตรงนี้
	    Citizen.Wait(Config.TickTime)

	  end
	end)

end)
```
3) เพิ่มข้อความข้างล่างนี้ใน server.cfg
```
start stx_fwui
```
4) ลบ cache หากมีปัญหา
5) ต้องตั้งชื่อ folder เป็น stx_fwui เท่านั้น!!!!
#### ตัวอย่าง
###### https://streamable.com/9mk07
###### https://streamable.com/9g0p0
###### https://streamable.com/o36jf
###### https://streamable.com/z8f70
#### Credits
###### (https://github.com/oscsystemx/stx_fwui)
###### (https://www.facebook.com/sys.bus)
###### Exotic3F Team

### ห้ามขายหรือจำหน่าสคริปนี้โดยเด็กขาด 
### ขายพ่องตาย!
