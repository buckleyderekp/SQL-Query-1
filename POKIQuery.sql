
--1
--SELECT 
--[Name]
--FROM Grade

--2
--Select 
--[Name]
--FROM Emotion

--3 
--SELECT
--Count(Poem.id) AS 'Number Of Poems'
--FROM Poem;

--4 5 6
--SELECT TOP 76 
--a.[Name],
--g.[Name],
--gender.[Name]
--FROM Author a
--JOIN Grade g ON a.GradeId = g.Id
--JOIN Gender gender ON a.GenderId = gender.Id
--ORDER BY a.[Name];

--7 
--SELECT SUM(WordCount)
--FROM Poem;

--8
--SELECT 
--Title
--FROM Poem
--WHERE CharCount = (SELECT MIN(CharCount) FROM Poem);

--9
--SELECT
--Count(author.GradeId) AS 'Authors in 3rd Grade'
--FROM Author author
--WHERE author.GradeId = 3;


--10 
--SELECT
--Count(author.GradeId) AS 'Authors in 1st 2nd and 3rd Grade'
--FROM Author author
--WHERE author.GradeId = 3 OR author.GradeId =1 OR author.GradeId = 2;

--11
--SELECT
--Count(poem.Id) AS 'Poems by 4th Graders'
--FROM Poem poem
--JOIN Author author ON author.Id = poem.AuthorId
--JOIN Grade grade ON author.GradeId = grade.Id
--WHERE grade.Id = 4;

--12
--SELECT
--Count(poem.Id) AS 'Poems per Grade',
--grade.[name]
--FROM Author author
--JOIN Grade grade ON grade.Id = author.GradeId
--JOIN Poem poem ON poem.AuthorId = author.Id
--GROUP BY grade.[name];

--13
--SELECT
--Count( author.Id) AS 'Authors Per Grade',
--grade.[Name]
--FROM Author author
--JOIN Grade grade ON author.GradeId = grade.Id
--GROUP BY grade.[Name];

--14
--SELECT 
--Title
--FROM Poem
--Where WordCount = (SELECT MAX(WordCount) from Poem)

--15
--SELECT TOP 10
--COUNT(poem.Id) AS 'Number of Poems',
--author.Id,
--author.[Name]
--FROM Poem poem
--JOIN Author author ON author.Id = poem.AuthorId
--GROUP BY author.Id, author.[Name]
--ORDER BY Count(poem.Id)DESC

--16
--SELECT
--COUNT(poem.Id) AS 'Number of Poems with Sadness'
--FROM Poem poem
--JOIN PoemEmotion poememotion ON poememotion.PoemId = poem.Id
--JOIN Emotion emotion ON emotion.Id = poememotion.EmotionId
--WHERE poememotion.EmotionId = 3;

--17
--SELECT 
--COUNT(poem.id) AS 'Number of Poems with no Emotion'
--FROM Poem poem
--LEFT JOIN PoemEmotion poememotion ON poememotion.PoemId = poem.Id
--WHERE poememotion.PoemID IS NULL

--18
--SELECT TOP 1
--COUNT(poem.Id) AS 'Number of Poems with that Emotion',
--emotion.[Name]
--FROM Poem poem 
--JOIN PoemEmotion poememotion ON poememotion.PoemId = poem.Id
--JOIN Emotion emotion ON emotion.Id = poememotion.EmotionId
--GROUP BY emotion.[Name]
--Order BY COUNT(poem.Id)

--19
--SELECT
--COUNT(poem.Id) AS 'Poems With Joy'
--From Poem poem
--JOIN PoemEmotion poememotion ON poememotion.PoemId = poem.Id
--JOIN Emotion emotion ON emotion.Id = poememotion.EmotionId
--WHERE emotion.Id = 4;

--20
--SELECT TOP 1
--COUNT(poem.Id) AS 'Number of Poems',
--gender.[Name]
--From Poem poem
--JOIN Author author ON author.Id = poem.AuthorId
--JOIN PoemEmotion poememotion ON poememotion.PoemId = poem.Id
--JOIN Emotion emotion ON emotion.Id = poememotion.EmotionId
--JOIN Gender gender ON gender.Id = author.GenderId
--WHERE emotion.Id=2
--GROUP BY gender.Id, gender.[Name]
--ORDER BY COUNT(poem.Id)