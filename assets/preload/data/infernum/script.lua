function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.0 then
        setProperty('health', health- 0.005);
    end
end

local allowCountdown = false
function onEndSong()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('cutscene vexation');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
