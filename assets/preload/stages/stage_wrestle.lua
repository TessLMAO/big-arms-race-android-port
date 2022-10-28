function onCreate()
	-- background shit
	makeLuaSprite('bar', 'bar', -170, 0);
	setScrollFactor('bar', 0.8, 0.8);
	scaleObject('bar',0.75,0.75);
	addLuaSprite('bar', false);

    makeAnimatedLuaSprite('bopper 1', 'bopper 1', 100, 0);
	addAnimationByPrefix('bopper 1', 'bop', 'bopper 1 bop', 12, true);
	scaleObject('bopper 1', 0.75, 0.75);
	setScrollFactor('bopper 1', 0.9, 0.9);
	objectPlayAnimation('bopper 1', 'bop');
	addLuaSprite('bopper 1', false);

	
    makeAnimatedLuaSprite('bopper 2', 'bopper 2', 100, 0);
	addAnimationByPrefix('bopper 2', 'bop', 'bopper 2 bop', 12, true);
	scaleObject('bopper 2', 0.75, 0.75);
	setScrollFactor('bopper 2', 0.9, 0.9);
	objectPlayAnimation('bopper 2', 'bop');
	addLuaSprite('bopper 2', false);

	makeLuaSprite('table', 'table', 170, 95);
	setScrollFactor('table', 1, 1);
	scaleObject('table',0.8,0.8);
	addLuaSprite('table', false);

	makeLuaSprite('lighting', 'lighting', -100, -100);
	setScrollFactor('lighting', 0, 0);
	scaleObject('lighting',0.8,0.8);
	setBlendMode('lighting', hardlight)
	addLuaSprite('lighting', true);



end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 1 == 0 then
		objectPlayAnimation('bopper 1', 'bop');
		objectPlayAnimation('bopper 2', 'bop');

	end
		
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think

	if counter % 1 == 0 then
		objectPlayAnimation('bopper 1', 'bop');
		objectPlayAnimation('bopper 2', 'bop');
	end

end