local allowEndShit = true
function onEndSong()
 if not allowEndShit and isStoryMode and not seenCutscene then
  setProperty('inCutscene', true);
  startDialogue('dialogue2'); 
  allowEndShit = true;
  return Function_Stop;
 end
end


local allowCountdown = false
function onEndSong()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('cutscene pressure');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

