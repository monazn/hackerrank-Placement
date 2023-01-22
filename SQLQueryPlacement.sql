SELECT S.Name 
FROM (Students S 
     INNER JOIN Packages P ON S.ID=P.ID
     INNER JOIN Friends F ON F.id=S.id
     INNER JOIN Packages PP ON F.Friend_id=PP.id)
WHERE PP.Salary > P.Salary
ORDER BY PP.Salary;