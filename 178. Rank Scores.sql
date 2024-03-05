# Write your MySQL query statement below
SELECT
  s.Score,
  (SELECT count(distinct ds.Score) FROM Scores ds WHERE ds.Score >= s.Score) as 'rank'
FROM Scores s
ORDER BY s.Score desc
