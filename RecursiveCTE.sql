/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [Id]
--      ,[Name]
--      ,[Age]
--      ,[ReportToId]
--      ,[DepartmentId]
--  FROM [TheCompanyDBTest].[dbo].[Employee]

WITH cte_org AS (
    SELECT       
        [name], 
        age,
        ReportToId
        
    FROM       
       employee
    WHERE Id = 8
    UNION ALL
    SELECT 
        e.[name], 
        e.age,
        e.ReportToId
    FROM 
        employee e
        INNER JOIN cte_org o 
            ON o.ReportToId = e.Id
)
SELECT * FROM cte_org;