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
FROM [Curators] c, [GroupsCurators] gc, [Groups] g
WHERE c.[Id] = gc.[CuratorId] AND gc.[GroupId] = g.[Id];

SELECT f.[Name] AS 'Faculty', d.[Name] AS 'Department'
FROM [Faculties] f, [Departments] d
WHERE d.[FacultyId] = f.[Id] AND d.[Financing] > f.[Financing];

SELECT c.[Name] + ' ' + c.[Surname] AS 'Curator', g.[Name] AS 'Group'
FROM [Curators] c, [GroupsCurators] gc, [Groups] g
WHERE c.[Id] = gc.[CuratorId] AND gc.[GroupId] = g.[Id];

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', s.[Name] AS 'Subject', g.[Name] AS 'Group'
FROM [Teachers] t, [Lectures] l, [Subjects] s, [GroupsLectures] gl, [Groups] g
WHERE t.[Id] = l.[TeacherId] AND l.[SubjectId] = s.[Id] AND l.[Id] = gl.[LectureId] AND gl.[GroupId] = g.[Id] AND g.[Name] = 'P107';

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', f.[Name] AS 'Faculty'
FROM [Teachers] t, [Lectures] l, [Subjects] s, [Departments] d, [Faculties] f
WHERE t.[Id] = l.[TeacherId] AND l.[SubjectId] = s.[Id] AND s.[DepartmentId] = d.[Id] AND d.[FacultyId] = f.[Id];

SELECT d.[Name] AS 'Department', g.[Name] AS 'Group'
FROM [Departments] d, [Groups] g
WHERE d.[Id] = g.[DepartmentId];

SELECT s.[Name] AS 'Subject'
FROM [Teachers] t, [Lectures] l, [Subjects] s
WHERE t.[Id] = l.[TeacherId] AND l.[SubjectId] = s.[Id] AND t.[Name] + ' ' + t.[Surname] = 'Samantha Adams';

SELECT d.[Name] AS 'Department'
FROM [Teachers] t, [Lectures] l, [Subjects] s, [Departments] d
WHERE t.[Id] = l.[TeacherId] AND l.[SubjectId] = s.[Id] AND s.[DepartmentId] = d.[Id] AND s.[Name] = 'Database Theory';

SELECT g.[Name] AS 'Group'
FROM [Groups] g, [Departments] d, [Faculties] f
WHERE g.[DepartmentId] = d.[Id] AND d.[FacultyId] = f.[Id] AND f.[Name] = 'Computer Science';

SELECT g.[Name] AS 'Group', f.[Name] AS 'Faculty'
FROM [Groups] g, [Departments] d, [Faculties] f
WHERE g.[DepartmentId] = d.[Id] AND d.[FacultyId] = f.[Id] AND g.[Year] = 5;

SELECT t.[Name] + ' ' + t.[Surname] AS 'Teacher', s.[Name] AS 'Subject', g.[Name] AS 'Group'
FROM [Teachers] t, [Lectures] l, [Subjects] s, [GroupsLectures] gl, [Groups] g
WHERE t.[Id] = l.[TeacherId] AND l.[SubjectId] = s.[Id] AND l.[Id] = gl.[LectureId] AND gl.[GroupId] = g.[Id] AND l.[LectureRoom] = 'B103';
