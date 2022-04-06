local allowCountdown = false

function onEndSong()
    if not allowCountdown then
        runTimer('endText', 0.1);
		allowCountdown = true;
		startCountdown()
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'endText' then
        noteTweenAlpha('1', 1, 0, 1, 'linear')
        noteTweenAlpha('2', 2, 0, 1, 'linear')
        noteTweenAlpha('3', 3, 0, 1, 'linear')
        noteTweenAlpha('4', 4, 0, 1, 'linear')
        noteTweenAlpha('5', 5, 0, 1, 'linear')
        noteTweenAlpha('6', 6, 0, 1, 'linear')
        noteTweenAlpha('7', 7, 0, 1, 'linear')
        noteTweenAlpha('0', 0, 0, 1, 'linear')
        doTweenAlpha('GUItween', 'camHUD', 0, 1, 'linear');
        playMusic('Ending', 1)
        --Separation To Keep My Brain From Exploding
        if getProperty('songMisses') == 0 then
            makeLuaSprite('goodEnd', 'endings/GoodEnd', 0, 0)
            setObjectCamera('goodEnd', 'other')
		    addLuaSprite('goodEnd', true)
        else
            makeLuaSprite('badEnd', 'endings/BadEnd', 0, 0)
            setObjectCamera('badEnd', 'other')
		    addLuaSprite('badEnd', true)
        end
        function onUpdate()
            if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                endSong()
            end
        end
    end
end