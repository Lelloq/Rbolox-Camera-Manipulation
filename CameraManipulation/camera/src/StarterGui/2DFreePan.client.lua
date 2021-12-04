UIP = game:GetService("UserInputService")
Plr = game.Players.LocalPlayer

repeat wait() until workspace.CurrentCamera ~= nil
Cam = workspace.CurrentCamera
Cam.CameraType = "Scriptable"

repeat wait() until Plr.Character ~= nil
Focus1 = workspace.Targets.Target1
Focus2 = workspace.Targets.Target2
Cam.CFrame = CFrame.new(Vector3.new(Focus1.Position.X-20,Focus1.Position.Y,Focus1.Position.Z))
while wait() do
	if UIP:IsKeyDown(Enum.KeyCode.Left) then
		Target = CFrame.new(Vector3.new(Focus2.Position.X-20,Focus2.Position.Y,Focus2.Position.Z))
		Cam.CFrame = Cam.CFrame:Lerp(Target,0.02)
	else if UIP:IsKeyDown(Enum.KeyCode.Right) then
			Target = CFrame.new(Vector3.new(Focus1.Position.X-20,Focus1.Position.Y,Focus1.Position.Z))
			Cam.CFrame = Cam.CFrame:Lerp(Target,0.02)
		end
	end
end


