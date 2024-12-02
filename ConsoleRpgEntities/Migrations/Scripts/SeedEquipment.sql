-- 1. Insert a new sword into the Items table
INSERT INTO Items (Name, Type, Attack, Defense, Weight, Value)
VALUES ('Sword', 'Weapon', 5, 0, 1, 10),
		('Machete', 'Weapon', 8, 0, 1, 10);

-- Get the Id of the newly inserted Item
Declare @SwordId INT = (Select top 1 Id from Items where Name = 'Sword')
Insert into Equipments
Values (@SwordId, NULL)

Declare @EquipmentId INT = (Select top 1 Id from Equipments where WeaponId = @SwordId)

Update Players
Set EquipmentID = @EquipmentId
Where Id = 1


Declare @MacheteId INT = (Select top 1 Id from Items where Name = 'Machete')
Insert into Equipments
Values (@MacheteId, NULL)

Declare @EquipmentId2 INT = (Select top 1 Id from Equipments where WeaponId = @MacheteId)

Update Players
Set EquipmentID = @EquipmentId2
Where Id = 2
