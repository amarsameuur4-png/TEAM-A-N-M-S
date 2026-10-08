```lua
-- Speed Hack / تجاوز الحماية - كود روبلوكس خرافي

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- سرعة المشي الخرافية
Humanoid.WalkSpeed = 200 -- سرعة جنونية!

-- قفز عالي جداً
Humanoid.JumpPower = 150

-- تجاوز حدود الحركة (Bypass)
RootPart.Velocity = Vector3.new(0, 0, 0)

-- تفعيل السرعة عند الضغط على مفتاح معين
UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.Q then
        -- تبديل بين السرعة العادية والخارقة
        if Humanoid.WalkSpeed == 50 then
            Humanoid.WalkSpeed = 200
            print("⚡ Speed Mode ON ⚡")
        else
            Humanoid.WalkSpeed = 50
            print("🐢 Normal Mode")
        end
    end
end)

print("🔥 Speed Hack Loaded Successfully 🔥")
```