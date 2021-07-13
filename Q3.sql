/*Write a query (using the `callers`, `dialers`, `programs` tables) that
   returns the `program_name`, `program_date`, `caller_name` and number of calls
   made (`num_calls`). Use `'autodialer'` as the name for calls without a
   caller.*/

   SELECT
     programs.name AS program_name,
     programs.date AS program_date,
     CASE
         WHEN callers.name IS NULL THEN 'autodialer'
         ELSE callers.name
      END AS caller_name,
       COUNT(registrant_response) AS num_calls
   FROM programs
     JOIN dials ON programs.id = dials.program_id
     JOIN callers ON callers.id = dials.caller_id
   GROUP BY 1,2,3
   ORDER BY 4 DESC;
