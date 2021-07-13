/* 1. We are trying to insert vendor4's data into our `all_users` table. Write a
   _select_ query that returns the standardized data that could be inserted into
   the `all_users` table. */


   -- Using CAST() function to convert the phone_number integer datatype to varchar.
   -- I'm not including the last two columns in the vendor4_users to keep the number of the columns in both tables compatable.
   INSERT INTO all_users (first_name, last_name, CAST(phone_number AS VARCHAR(10)), zip_code, month_registerted)
   SELECT last_first_name, email, phone, zip_code, reg_date
   FROM vendor4_users;
