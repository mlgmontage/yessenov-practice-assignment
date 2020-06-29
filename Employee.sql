select 
	Employee.FIO as 'Ф.И.О',
	Division.Name as 'Подразделение',
	Position.Name as 'Должность'
from Employee
join Division on Employee.DivisionId = Division.DivisionId
join Position on Employee.PositionId = Position.PositionId;