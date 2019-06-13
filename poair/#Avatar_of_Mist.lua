function event_combat(e)
if (e.joined == true) then
eq.set_timer('Hardblur', 180 * 1000);
eq.set_timer('Softblur', 6 * 1000);
else
eq.stop_timer('Hardblur');
eq.stop_timer('Softblur');
end
end


function event_timer(e)
	if (e.timer == 'Hardblur') then
		e.self:WipeHateList();
	elseif (e.timer == 'Softblur') then
		if (math.random(100)<=5) then
			e.self:WipeHateList();
		end
	end
end


function event_spawn(e)
	eq.set_timer("despawn", 2700 * 1000);
	e.self:Shout("Leave now foolish mortal you have begun to send events in motion that you cannot possibly understand!");
end

function event_timer(e)
	if (e.timer == "despawn") then
			eq.stop_timer("despawn");
			eq.depop();
 	end
 
end

function event_death_complete(e)
eq.signal(215455,3);
end