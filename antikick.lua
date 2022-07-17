local namecall;

namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Parameters, Method = {...}, getnamecallmethod() or get_namecall_method()
    
    if Method == "Kick" then 
        print"Namecall kick attempted"
        return wait(9e9)
    end
    
    return namecall(self, ...) -- or; return namecall(self, unpack(Parameters)) if you're using the parameters (...)
end)

print"Anti-Kick loaded"

wait(2)

game:GetService"Players".LocalPlayer:Kick("Anti")