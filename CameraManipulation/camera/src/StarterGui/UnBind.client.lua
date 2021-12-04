plr = game.Players.LocalPlayer
repeat
	wait()
until
	plr.Character ~= nil
Char = plr.Character
CAS = game:GetService("ContextActionService")
CAS:UnbindAllActions()
UIP = game:GetService("UserInputService")
UIP.InputBegan:connect(function(k,ke)
	if k.KeyCode == Enum.KeyCode.W then
		Char.Humanoid.WalkSpeed = 0
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://1429721653"
		PlayAnim = Char.Humanoid:LoadAnimation(Anim)
		PlayAnim:Play()
	elseif k.KeyCode == Enum.KeyCode.S then
		Char.Humanoid.WalkSpeed = 0
		local AnimTwo = Instance.new("Animation")
		AnimTwo.AnimationId = "rbxassetid://1429724187"
		PlayAnimTwo = Char.Humanoid:LoadAnimation(AnimTwo)
		PlayAnimTwo:Play()
	end
end)
UIP.InputEnded:connect(function(k,ke)
	if k.KeyCode == Enum.KeyCode.W then
		Char.Humanoid.WalkSpeed = 16
		PlayAnim:Stop()
	elseif k.KeyCode == Enum.KeyCode.S then
		Char.Humanoid.WalkSpeed = 16
		PlayAnimTwo:Stop()
	end
end)
--Enables walking left and right--
UIP.InputBegan:connect(function(k,ke)
	if k.KeyCode == Enum.KeyCode.A then
		Char.Humanoid:MoveTo(Vector3.new(-1000,0,0))
	end
	if k.KeyCode == Enum.KeyCode.D then
		Char.Humanoid:MoveTo(Vector3.new(1000,0,0))	
	end	
end)
UIP.InputBegan:connect(function(k,ke)
	if k.KeyCode == Enum.KeyCode.Space then
		r = true
		while wait() and r == true do
			Char.Humanoid.Jump = true
		end
	end
end)
UIP.InputEnded:connect(function(k,ke)
	if k.KeyCode == Enum.KeyCode.A then
		Char.Humanoid:MoveTo(Vector3.new(Char.UpperTorso.Position.X,0,0))
	end
	if k.KeyCode == Enum.KeyCode.D then
		Char.Humanoid:MoveTo(Vector3.new(Char.UpperTorso.Position.X,0,0))
	end
	if k.KeyCode == Enum.KeyCode.Space then
		 r = false
	end
end)