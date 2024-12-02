SET IDENTITY_INSERT Players ON;
INSERT INTO Players (Id, Name, Health, Experience)
VALUES
    (1, 'Sir Lancelot', 100, 0),
    (2, 'John Fallout', 80, 0);
SET IDENTITY_INSERT Players OFF;

SET IDENTITY_INSERT Monsters ON;
INSERT INTO Monsters (Id, Name, MonsterType, Health, AggressionLevel, Sneakiness)
VALUES
    (1, 'Bob', 'Goblin', 20, 10, 3),
    (2, 'Rob', 'Goblin', 30, 10, 3),
    (3, 'Gob', 'Goblin', 40, 10, 3),
    (4, 'Sob', 'Goblin', 10, 0, 0),
    (5, 'Hob', 'Goblin', 50, 20, 5),
    (6, 'Lob', 'Goblin', 30, 5, 8);
SET IDENTITY_INSERT Monsters OFF;

SET IDENTITY_INSERT Abilities ON;
INSERT INTO Abilities (Id, Name, Description, AbilityType, Damage, Distance)
VALUES
    (1, 'Shove', 'Power Shove', 'ShoveAbility', 5, 5),
    (2, 'Smash', 'Smashing Blow', 'SmashAbility', 8, null),
    (3, 'Far Shove', 'A shove with great distance', 'ShoveAbility', 2, 15);
SET IDENTITY_INSERT Abilities OFF;

INSERT INTO PlayerAbilities (PlayersId, AbilitiesId)
VALUES
    (1, 1),
    (1, 2),
    (2, 3); 
