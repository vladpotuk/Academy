SELECT * FROM [Curators];
SELECT * FROM [Departments];
SELECT * FROM [Faculties];
SELECT * FROM [Groups];
SELECT * FROM [GroupsCurators];
SELECT * FROM [GroupsLectures];
SELECT * FROM [Lectures];
SELECT * FROM [Subjects];
SELECT * FROM [Teachers];

SELECT c.[Name] + ' ' + c.[Surname] AS 'Curator', g.[Name] AS 'Group'
FROM [Curators] AS c
INNER JOIN [GroupsCurators] AS gc ON c.[Id] = gc.[CuratorId]
INNER JOIN [Groups] AS g ON gc.[GroupId] = g.[Id];

SELECT f.[Name] AS 'Faculty', d.[Name] AS 'Department'
FROM [Faculties] AS f
INNER JOIN [Departments] AS d ON f.[Id] = d.[FacultyId]
WHERE d.[Financing] > f.[Financing];

SELECT c.[Name] + ' ' + c.[Surname] AS 'Curator', g.[Name] AS 'Group'
FROM [Curators] AS c
INNER JOIN [GroupsCurators] AS gc ON c.[Id] = gc.[CuratorId]
INNER JOIN [Groups] AS g ON gc.[GroupId] = g.[Id];

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', s.[Name] AS 'Subject', g.[Name] AS 'Group'
FROM [Teachers] AS t
INNER JOIN [Lectures] AS l ON t.[Id] = l.[TeacherId]
INNER JOIN [Subjects] AS s ON l.[SubjectId] = s.[Id]
INNER JOIN [GroupsLectures] AS gl ON l.[Id] = gl.[LectureId]
INNER JOIN [Groups] AS g ON gl.[GroupId] = g.[Id]
WHERE g.[Name] = 'P107';

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', f.[Name] AS 'Faculty'
FROM [Teachers] AS t
INNER JOIN [Lectures] AS l ON t.[Id] = l.[TeacherId]
INNER JOIN [Subjects] AS s ON l.[SubjectId] = s.[Id]
INNER JOIN [Departments] AS d ON s.[DepartmentId] = d.[Id]
INNER JOIN [Faculties] AS f ON d.[FacultyId] = f.[Id];

SELECT d.[Name] AS 'Department', g.[Name] AS 'Group'
FROM [Departments] AS d
INNER JOIN [Groups] AS g ON d.[Id] = g.[DepartmentId];

SELECT s.[Name] AS 'Subject'
FROM [Teachers] AS t
INNER JOIN [Lectures] AS l ON t.[Id] = l.[TeacherId]
INNER JOIN [Subjects] AS s ON l.[SubjectId] = s.[Id]
WHERE t.[Name] + ' ' + t.[Surname] = 'Samantha Adams';

SELECT d.[Name] AS 'Department'
FROM [Teachers] AS t
INNER JOIN [Lectures] AS l ON t.[Id] = l.[TeacherId]
INNER JOIN [Subjects] AS s ON l.[SubjectId] = s.[Id]
INNER JOIN [Departments] AS d ON s.[DepartmentId] = d.[Id]
WHERE s.[Name] = 'Database Theory';

SELECT g.[Name] AS 'Group'
FROM [Groups] AS g
INNER JOIN [Departments] AS d ON g.[DepartmentId] = d.[Id]
INNER JOIN [Faculties] AS f ON d.[FacultyId] = f.[Id]
WHERE f.[Name] = 'Computer Science';

SELECT g.[Name] AS 'Group', f.[Name] AS 'Faculty'
FROM [Groups] AS g
INNER JOIN [Departments] AS d ON g.[DepartmentId] = d.[Id]
INNER JOIN [Faculties] AS f ON d.[FacultyId] = f.[Id]
WHERE g.[Year] = 5;

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', s.[Name] AS 'Subject', g.[Name] AS 'Group'
FROM [Teachers] AS t
INNER JOIN [Lectures] AS l ON t.[Id] = l.[TeacherId]
INNER JOIN [Subjects] AS s ON l.[SubjectId] = s.[Id]
INNER JOIN [GroupsLectures] AS gl ON l.[Id] = gl.[LectureId]
INNER JOIN [Groups] AS g ON gl.[GroupId] = g.[Id]
WHERE l.[LectureRoom] = 'B103';
