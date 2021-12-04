Plr = game.Players.LocalPlayer
repeat wait() until workspace.CurrentCamera ~= nil
Cam = workspace.CurrentCamera
Cam.CameraType = "Scriptable"
repeat
	wait()
until
	Plr.Character ~= nil
Focus = Plr.Character.Head
while true do
	Mag = (Focus.Position - workspace.Part.Position).Magnitude
	wait()
	if Focus.Position.X > workspace.Part.Position.X then
		Target = CFrame.new(Focus.Position.X-(Mag/2),Focus.Position.Y,Mag)
		Cam.CFrame = Cam.CFrame:lerp(Target,0.05)
	else
		Target = CFrame.new(Focus.Position.X+(Mag/2),Focus.Position.Y,Mag)
		Cam.CFrame = Cam.CFrame:lerp(Target,0.05)
	end
end
