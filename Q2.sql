/*2. Write a query using the `registrations` table that returns the total number
   of registrations(`total`), the number of completed registrations
   (`completed_registrations`) and the number of valid registrations that are
   incomplete (`valid_incomplete_registrations`), by organization and state.*/

   SELECT org, state,
     COUNT(file_id) AS total,
     COUNT(is_complete_registration) AS completed_registrations,
     COUNT(is_valid_registration) AS valid_incomplete_registrations
   FROM
     registrations
   WHERE
     is_complete_registration = true
     AND file_id NOT IN (
       SELECT
         file_id
       FROM
         registrations
       WHERE
         is_complete_registration = false
     )
   GROUP BY 1, 2
   ORDER BY 1 DESC;
