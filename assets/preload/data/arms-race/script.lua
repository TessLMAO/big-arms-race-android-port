local xx = 850;
local yy = 450;
local xx2 = 850;
local yy2 = 450;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
    if difficulty == 0 then
        makeLuaSprite('minji indicator', 'minji indicator', 350, 200);
        setScrollFactor('minji indicator', 0, 0);
        scaleObject('minji indicator',0.8,0.8);
        addLuaSprite('minji indicator', true);

    end
    if difficulty == 1 then
        makeLuaSprite('mia indicator', 'mia indicator', 350, 200);
        setScrollFactor('mia indicator', 0, 0);
        scaleObject('mia indicator',0.8,0.8);
        addLuaSprite('mia indicator', true);

    end
    makeLuaSprite('card', 'mechanic explanation', 900,350);
	setScrollFactor('card',0,0);
    scaleObject('card',0.5,0.5);
    addLuaSprite('card', true);


end

card = 0;



function onStepHit()
    if curStep == 64 then
        removeLuaSprite('minji indicator',true)
        removeLuaSprite('mia indicator',true)
        card = 1
    end

    if curStep == 128 then
        removeLuaSprite('card',true)
    end
end


function onUpdate()

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'danceLeft' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
          end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if difficulty == 1 then
        if middlescroll == false then
	        setPropertyFromGroup('opponentStrums', 0, 'x', 720);
	        setPropertyFromGroup('opponentStrums', 1, 'x', 830);
	        setPropertyFromGroup('opponentStrums', 2, 'x', 940);
	        setPropertyFromGroup('opponentStrums', 3, 'x', 1050);

            setPropertyFromGroup('playerStrums', 0, 'x', 100);
            setPropertyFromGroup('playerStrums', 1, 'x', 210);
            setPropertyFromGroup('playerStrums', 2, 'x', 320);
            setPropertyFromGroup('playerStrums', 3, 'x', 430);
        end
    end
    if card == 1 then
		setProperty ('card.x', getProperty ('card.x') + 15);
	end
    
end



    function opponentNoteHit(id, noteData, noteType, isSustainNote)
        if getProperty('health') > (0.01 / 50) and getProperty('health') < (0.99 / 50) then -- Health is from 0 to 2, so dividing the value by 50 allow to just turn it into percentage easly
            setProperty('health', (0.01 / 50))
        else if  getProperty('health') > (0.01 / 50) and getProperty('health') > (0.99 / 50) then
            setProperty('health', getProperty('health')-(0.99 / 50))
        end
        end
    end
