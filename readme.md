# sct_presskey_minigame

https://youtu.be/RA98nH1r6l4

```
local result =
    exports["sct_presskey_minigame"]:ActionMinigame(
    {
        duration = 5, -- เวลา timeout ใส่เป็นจำนวนวิ
        maxLimit = 4, -- กดผิดได้กี่ครั้ง
        keySize = 4, --  จำนวนตัวอักษรที่ต้องกด
        keyRandom = {"A", "B", "C", "D", "Z"}, -- ตัวอักษรที่ให้สุ่ม
    }
)

keyRandom = {"A", "B", "C", "D", "Z"}, -- ตัวอักษรที่ให้สุ่ม
keyRandom: {'↑', '↓', '←', '→'} -- ปุ่มให้สุ่ม
keyRandom: {'A', 'B', '↑', '↓', '←', '→'} -- ปุ่มให้สุ่ม + ตัวอักษรให้สุ่ม

-- ค่าที่ result เป็น { 'result': bool, 'messages': string }
print(json.encode(result))
```