# sct_presskey_minigame

https://youtu.be/RA98nH1r6l4

```
local result =
    exports["sct_presskey_minigame"]:ActionMinigame(
    {
        time = 5, -- เวลา timeout ใส่เป็นจำนวนวิ
        limit = 4, -- กดผิดได้กี่ครั้ง
        keys = {"A", "B", "C", "D", "Z"}, -- ตัวอักษรที่ให้สุ่ม
        keysSize = 4 --  จำนวนตัวอักษรที่ต้องกด
    }
)

-- ค่าที่ result เป็น { 'result': bool, 'messages': string }
print(json.encode(result))
```