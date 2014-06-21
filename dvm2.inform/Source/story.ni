"DVM" by spanky

Include Postures by Emily Short.

When play begins:
	now the story viewpoint is first person singular;
	now the story tense is present tense.   

The player is in the Public Bathroom.	

Section Elevators

A room can be an up_lobby, a down_lobby, or neither. A room is usually neither.

The up_elevator is a backdrop.
Instead of entering the up_elevator:
	try going up.
Instead of taking the up_elevator:
	try going up.
When play begins:
	move the up_elevator backdrop to all up_lobby rooms.

The down_elevator is a backdrop.
Instead of entering the down_elevator:
	try going down.
Instead of taking the down_elevator:
	try going down.
When play begins:
	move the down_elevator backdrop to all down_lobby rooms.
	
Section Bathroom

The Public Bathroom is a room. The description is "I'm in a public bathroom, lit by a single buzzing fluorescent light. A sink juts out of the wall, the hot water knob missing. A dusty sign above it reads, 'Employees must wash hands before returning to work.' A toilet sits in the corner. There's no toilet paper."

The toilet is a supporter in the Public Bathroom. The toilet is scenery. The toilet is enterable. The toilet allows seated and standing. The description is "A standard toilet. It's a rugged model, with a sturdy metal handle and pipe connecting it to the wall. It clearly hasn't been used in months."

The sink is scenery in the bathroom. The sink is a supporter. The sink is enterable. The sink allows standing. The description is "A thick porcelain sink mounted to the wall. It shows slight cracks from age and a lack of maintenance. Other than a thin layer of dust, it's not as dirty as a public bathroom sink this broken would ordinarily be."

The hole in the ceiling is an open container.
The duffel bag is an openable closed container in the hole in the ceiling.

Instead of entering the sink:
	say "The sink has already half broken away from the wall. It doesn't look like it will hold my weight.[line break]";
	stop the action.

The loose ceiling tile is in the bathroom.
Instead of taking the loose ceiling tile:
	If the player is standing on the toilet:
		Now the hole in the ceiling is in the Public Bathroom;
		Continue the action;
	Otherwise:
		say "I'll have to stand on something to reach it.";
		Stop the action.

Instead of taking the duffel bag:
	If the player is standing on the toilet:
		Continue the action;
	Otherwise:
		say "I'll have to stand on something to reach it.";
		Stop the action.

After reading a command:
	If the player's command matches "wash hands":
		say "I wash my hands in the sink.";
		stop the action.
