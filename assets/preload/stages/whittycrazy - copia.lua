function onCreate()
	makeAnimatedLuaSprite('BallisticBackgroundC','BallisticBackgroundC',-550,-200)
	addAnimationByPrefix('BallisticBackgroundC','BallisticBackgroundC','Background Whitty Moving',24,true)
	addLuaSprite('BallisticBackgroundC',false)
	objectPlayAnimation('BallisticBackgroundC','BallisticBackgroundC',false)
end