
local boppin = false

function start(song)
    print("funny BEAN")
end


function beatHit (beat)
    if boppin then
	    setCamZoom(1)
	end
end

function stepHit (step)
    if curStep == 704 then
            boppin = true
    end
    if curStep == 768 then
            boppin = false
    end
end