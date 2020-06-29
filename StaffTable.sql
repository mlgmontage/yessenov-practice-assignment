select
	StaffTable.StaffTableId as 'Код',
	StaffTable.createDate as 'Дата создания',
	StaffTable.confirmDate as 'Дата утверждения',
	StaffTable.salary as 'Оклад',
	Division.Name as 'Подразделение',
	Position.Name as 'Должность',
	Organization.Name 'Наим. Организации',
	bookeeper.FIO as 'Бухгалтер',
	director.FIO as 'Начальник'
from StaffTable
join Division on StaffTable.DivisionId = Division.DivisionId 
join Position on StaffTable.PositionId = Position.PositionId
join Employee bookeeper on StaffTable.Bookeeper = bookeeper.EmployeeId 
join Employee director on StaffTable.Director =  director.EmployeeId
join Organization on StaffTable.OrganizationId = Organization.OrganizationId;