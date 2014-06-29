"DVM" by spanky

Include Postures by Emily Short.

When play begins:
	now the story viewpoint is first person singular;
	now the story tense is present tense.   

The player is in the Public Bathroom.	

Section Equipment

[TODO: make things undroppable]

The paper clip is in the Empty Cubicles.
The broken paper clip is a thing.
The crowbar is a thing.

A stack of cash is in the duffel bag. The description is "A banded stack of twenties, totaling $2,000, weighing just under 0.23 pounds. It's all I have left in loose cash, the rest is already spent, so to speak."
The dozen coffees are a thing.
The ticket is a thing. The ticket is in the fitz_conf. The description of the ticket is "A green bag check ticket with the logo of the Everett-Fitzgerald hotel and a number printed on it."
The gym bag is a closed openable container. The description is "I can tell the owner of the gym bag is male and image conscious-- it's a sleek black and red and looks like the seat from a sports car.".
workout clothes are in the gym bag. workout clothes are wearable. The description is "They're from an expensive athletic clothing brand, exactly the sort of thing a yuppie alpha male would wear to show off at the gym.".
The pass is a thing. The pass is in the gym bag.

The notepad is a thing.
The pencil is in the Office Lobby.
The towels are a thing.

Section Clothing

The description of the player is "I'm wearing a navy blue suit and a tailored dress shirt. It's a good way to get people's trust in a hurry in this city, especially if you need to con them for something. Besides, I have to go in to the office later."

Carry out wearing the workout clothes:
	Now the description of the player is "I'm wearing a short sleeve compression top and long basketball shorts, typical gym wear.".
Carry out taking off the workout clothes:
	Now the description of the player is "I'm wearing a navy blue suit and a tailored dress shirt. It's a good way to get people's trust in a hurry in this city, especially if you need to con them for something. Besides, I have to go in to the office later.".

Section NPCs

The concierge is a man. The concierge is in the fitz_lobby.
Instead of giving or showing the ticket to the concierge:
	Remove the ticket from play;
	Now the player has the gym bag.

Section Breaking

A thing can be breakable or unbreakable. A thing is usually unbreakable.
Understand the command "break" as something new.
Breaking is an action applying to one thing. Understand "break [something]" as breaking.
Breaking it with is an action applying to one visible thing and one carried thing. Understand "break [something] with [something preferably held]" as breaking it with.

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

The hole in the ceiling is an open container. The hole in the ceiling is not portable.
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
[END SECTION BATHROOM========================================]
The bathroom door is a closed door. The bathroom door is west of the Public Bathroom and east of the Vacant Office Space.

Section Vacant Office Space

The Vacant Office Space is a room. The description is "The huge empty office space's beige drywall and concrete floor are dimly lit by a few emergency lights. Without desks, chairs, or cubicle walls, the place almost looks like a warehouse, albeit one with a decent view of the city. The previous tenant was some kind of telecom, I think, judging by some old hardware and paperwork left behind from their move. I like to use this space since it's not likely to get leased in a hurry, what with the recession.[paragraph break]I can see a small cluster of cubicles to the west.[paragraph break]From here I can take the elevator down to the lobby."

Section Empty Cubicles

Empty Cubicles is a room. Empty Cubicles is west of the Vacant Office Space. The description is "The west side of the floor is taken up by the half-broken remnants of a cubicle farm. The empty maze of gray panels resembles a broken hive, long since abandoned by its worker drones. Whatever company moved out of here appears to have been in a hurry; assorted desks and supplies still remain in some of the cubicles, and papers litter the floor."

The filing cabinet is a closed locked container in Empty Cubicles. The filing cabinet is not portable.
Understand "drawer" as filing cabinet.
Instead of opening the filing cabinet:
	if the filing cabinet is locked:
		say "It's locked. There's no hope of finding the key since the original owner is long gone. I'll need to find some other way to get it open.";
		stop the action;
	otherwise:
		continue the action;	
Instead of unlocking the filing cabinet with the crowbar:
		say "I pry it open.";
		now the description of the filing cabinet is "The largest drawer hangs open, a chunk missing from it where the lock mechanism is still holding on to the wood.";
		now the filing cabinet is unlocked;
		now the filing cabinet is not lockable;
		now the filing cabinet is open.		
Instead of breaking the filing cabinet with the crowbar:
	try unlocking the filing cabinet with the crowbar;
	stop the action.
Instead of unlocking the filing cabinet with the broken paper clip:
	say "The pieces are too large to fit in the desk's lock.";
	stop the action;
	
Section Office Lobby

The Office Lobby is a room. The Office Lobby is below the Vacant Office Space. The Office Lobby is an up_lobby. The description is "The lobby is rather spartan, but not as neglected as the space upstairs. An empty desk for a receptionist sits here, as does a building directory.[paragraph break]I can see through the glass doors in front to 58th Street outside."
The building directory is scenery in the Office Lobby. The description is "A list of assorted businesses, a chiropractor, a dentist, small law practices. Nothing interesting."
The receptionist desk is scenery in the Office Lobby. The description is "A simple white desk. Elegant, modern, and more than a little dusty. There's no chair behind it."

Section Streets

w58_aveam is a room. w58_aveam is outside of the Office Lobby. The printed name of w58_aveam is "W 58th St. and Avenue of the Americas".

w59_aveam is a room. w59_aveam is north of w58_aveam. The printed name of w59_aveam is "W 59th St. and Avenue of the Americas".

fitz_outside is a room. fitz_outside is east of w59_aveam. The printed name of fitz_outside is "Outside the Everett-Fitzgerald Hotel".

Section Olympia Coffee

Olympia Coffee is a room. Olympia Coffee is south of w58_aveam.
After reading a command:
	If the player's command matches "buy coffee":
		If the player has the cash:
			now the player has the dozen coffees;
			stop the action;
		otherwise if the player has the duffel bag and the cash is in the duffel bag:
			say "I'll have to take the money out to pay for anything.";
			stop the action;
		otherwise:
			say "I'll need some money to pay for it.";
			stop the action.
			
Section Everett-Fitzgerald

fitz_lobby is a room. fitz_lobby is south of fitz_outside. The printed name of fitz_lobby is "Everett-Fitzgerald Hotel Lobby".
instead of going east:
	if the player does not have the dozen coffees and the dozen coffees is not in the fitz_conf:
		stop the action;
	otherwise:
		continue the action.

fitz_conf is a room. fitz_conf is east of fitz_lobby. The printed name of fitz_conf is "Conference Room".