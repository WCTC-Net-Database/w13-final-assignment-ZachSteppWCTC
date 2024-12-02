### FINAL PRESENTATION - ConsoleRPG EF Core Application
### Zach Stepp

### Connection String
- Modify the connection string in appsettings to the one included in the assignment.

#### Grade Goal: A+
   - For this project I aimed for the A+ grade by implementing the required featues for each of the other grades, adding new featues of my own,
      and making slight improvements to aspects of the game along the way.
      - The "big selling point" of what makes my project unique is character swapping. I recalled the multiplayer vision from the start of the course
      and realized I could at least let the user control distinct player characters by swapping between them.
      - Made slight changes to the combat, to help properly display what makes a different character unique.

- Below I've modified the original README file, describing how / where I implemented each requirement.

#### Basic Required functionality:
- **Add a new Character to the database**
  - Add a new character under Character Management.
  - Follow the prompts and the monster or player will be added and saved to the game.
  - New players are given a random weapon not already held by another player so they can fight!
- **Edit an existing Character**
  - Edit characters from Character Management. All changes to the character are saved upon existing character editor.
- **Display all Characters**
  - Display all characters and their current room from Character Management.
  - Prompts for the user to press enter at a few stages in the list, this is implement throughout the game for visibility.
- **Search for a specific Character by name**
  - Perform a case-insensitive search for characters from Character Management, which displays detailed information about the character(s) including abilities for players.
- **Logging** (should already be in place)
  - Relevant information is logged for the user.

#### **"C" Level (405/500 points):**
1. **Include all necessary required features.**
2. **Add Abilities to a Character**
   - Add abilities to searched character from Character Management.
   - Follow the prompt (entering either "shove" or "smash" for type) and confirm at the end.
   - What fields you enter change depending on ability type (ex. smash doesn't have distance, shove does).
   - Changes are saved upon completion.
3. **Display Character Abilities**
   - I've included character ability details in Character Search from Character Management.
   - Ability details are displayed as well.
4. **Execute an ability during an attack**
   - A random ability from the player's abilities is selected and executed after each attack.
   - Enemy takes damage from the ability.
   - Correct functionality if there are no abilities.

#### **"B" Level (445/500 points):**
1. **Include all required and "C" level features.**
2. **Add new Room**  
   - Add a new room under Room Management.
   - Follow the prompts and the room will be added and saved to the game.
   - Characters can be added to rooms by adding new characters or editing existing ones. User is reminded of this after creating the room.
   - The user is asked to confirm the details of the room before going ahead to place it on the map, as that can be a trickier process.
   - User is prompted a room to branch off from and what direction the room should be from that room.
3. **Display details of a Room**  
   - Seperate options to search for a room by name, or see current room information, all under Room Management. 
   - Each option displays room information and inhabiting players and monsters.
   - Handles cases where the search comes up empty, or the Room has no Characters gracefully.
4. **Navigate the Rooms**
   - Navigate the current player character from the main menu, using N/S/E/W. Doesn't move if there is no room in the direction.
   - Map display is kept from the week 13 template.
   - DisplayMap is specifically called on ocassion when changes to rooms are made which could make the display inaccurate (ex. Adding Rooms)

#### **"A" Level (475/500 points):**
1. **Include all required, "C" and "B" level features.**
2. **These features might represent if you were an "admin" character in the game.**
   - **List characters in the room by selected attribute:**  
     - View a sorted list of the players and monsters in the room by either Name or Health. Found under Admin Options.
   - **List all Rooms with all characters in those rooms**  
     - Select either players or monsters to see which rooms they inhabit, grouped by room. Found under Admin Options.
3. **Find a specific piece of a equipment and list the associated character and location**
   - Shows all equipment currently in the game, their holder, and location. Found under Admin Options.

#### **"A+" Stretch Level (500/500 points):**
##### The sky is the limit here!  Be creative!
1. **Include all "C", "B", and "A" level features.**
2. **Stretch Feature: Implement something creative of your own making**
   - By keeping player and monster characters seperate, I was able to implement multiple player functionality and the ability to swap characters.
      - Start by choosing a character upon beginning the game.
      - The map follows whichever player is being controlled by the user, there really is no main character.
      - Only monsters are fought when attacking, all players are allies.
      - Player location, status, everything, is saved and switching between characters is easy from the main menu.
   - Added functionality for monsters to die in combat. They are removed from the room and set to 0 health.
      - They don't try to attack after they're already dead, and players don't attack dead enemies or use abilities on them if the main attack did the job.
      - Dead enemies can be effectively revived through the character editor, or just make new ones!
   - Added a shove ability to test expansion of abilities, and to enhance combat.