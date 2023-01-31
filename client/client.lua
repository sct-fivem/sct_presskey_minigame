Debug = true
Promise = nil

exports(
	"ActionMinigame",
	function(data)
		SetNuiFocus(true, false)
		SendNUIMessage(
			{
				action = "ACTION_MINIGAME",
				data = data
			}
		)
		Promise = promise.new()
		local result = Citizen.Await(Promise)
		return result
	end
)

RegisterNUICallback(
	"ACTION_MINIGAME_RESULT",
	function(result, cb)
		SetNuiFocus(false, false)
		Promise:resolve(result)
		cb("OK")
	end
)

if Debug then
	RegisterCommand(
		"test",
		function()
			local result =
				exports["sct_presskey_minigame"]:ActionMinigame(
				{
					duration = 5, -- เวลา timeout ใส่เป็นจำนวนวิ
					maxLimit = 4, -- กดผิดได้กี่ครั้ง
					keySize = 4, --  จำนวนตัวอักษรที่ต้องกด
					keyRandom = {"A", "B", "C", "D", "Z"}, -- ตัวอักษรที่ให้สุ่ม
				}
			)
			print(json.encode(result))
		end,
		false
	)
end


-- postMessage({
-- 	action: "ACTION_MINIGAME", data: {
-- 	  duration: 5,
-- 	  maxLimit: 4,
-- 	  keySize: 4,
-- 	  keyRandom: ['A', 'B', 'C', 'D', 'Z'],
-- 	}
--   })
  