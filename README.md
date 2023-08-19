# ix-playerneeds

Utilizes [Helix](https://gethelix.co/), a community-made gamemode framework for [Garry's Mod](https://store.steampowered.com/app/4000/Garrys_Mod/).
<br>
<br>
Adds a hunger and thirst system for the [Character class](https://docs.gethelix.co/classes/character/) within Helix. **Disclaimer: this is a data structure and therefore provides no graphics (HUD elements such as a hunger and thirst bar, etc)!** Use the commands below with a minimum of zero and a maximum of *defaultMax* for your own HUD element.
<br>
<br>
Hunger and thirst decay by 1 every *hungerDecayRate* and *thirstDecayRate* seconds respectively, starting at *defaultMax*. These can all be changed, [here](https://github.com/OctraSource/ix-playerneeds/blob/main/playerneeds/sh_plugin.lua).
# commands
To get a player's current character's hunger, do: **player:GetHunger()**
<br>
For the player's current character's thirst, do: **player:GetThirst()**
<br>
<br>
Both of these functions will return a value from 0 to *defaultMax*, representing a character's current hunger level and current thirst level (0 being the thirstiest and hungriest, *defaultMax* being full and not thirsty). 
<br>
Note: this is NOT returned as a percentage! To get a percentange, just divide the return value by *defaultMax*.
