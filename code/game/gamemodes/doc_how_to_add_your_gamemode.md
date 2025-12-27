hello, its documentation how to add your gamemode to this repository


so ehm, first of all

1. Create folder with name, you need create folder at gamemodes folder, for example,
log into folder /gamemode/ then you need to create something like f. e. Siege or something liek that

2. log into folder, then create file with name of your gamemode
siege.dm for example

3. then you need to log into file and create base class of your gamemode
all gamemodes made with base class of /datum/game_mode

then yoou need to give name for that

/datum/game_mode/siege

4. now you need to add name and some description, round description and extended desp

add something

5. then add config_tag 
something short, like its just id or name

6. then add minimum required_players and required_enemies
its vars which are defining the volume of players needed for gamemode and of antags, for beginning make them equal to 0
