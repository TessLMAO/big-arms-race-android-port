function onCreate()


    if boyfriendName == 'armminji' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'armminji');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Minji_gameover'); 
    end

    if boyfriendName == 'armmia-playable' then
        setPropertyFromClass('GameOverSubstate', 'characterName', 'armmia-playable');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Mia_gameover'); 
    end


end