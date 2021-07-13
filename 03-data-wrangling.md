# Data Wrangling

Target time: forty-five (45) minutes

## Context

We have started running a new program and we wanted to get a list of all the
users that have been processed. For this program, we used three (3) different
vendors and each one gave us the data in a different format. The task is to
combine the data and prepare it to be loaded into our data warehouse. We
anticipate that we will continue running this program long term. Therefore,
consider that it would be included as part of a larger pipeline.

You may use any programming language you're comfortable with - our preference,
in order, is Python, R, other. In the README you sumbit, make sure to add a
section about how to run the script. If you are short on time, you may write
pseudo code for a script that would accomplish this task.

## Data

_**NOTE:** all data is randomly generated._

1. vendor1-users.csv
2. vendor2-users.json
   - _note: the file is line delimited_
3. [vendor3-users](https://randomuser.me/api/?results=500&seed=0)
   - [Docs](https://randomuser.me/documentation#results)

### Mappings

| all-users         | vendor1-users    | vendor2-users    | vendor3-users     |
| ----------------- | ---------------- | ---------------- | ----------------- |
| id                | vendor1_id       | vendor2_id       | login.uuid        |
| prefix            | prefix           |                  | name.title        |
| first_name        | first_name       | firstName        | name.first        |
| middle_name       | middle_name      | middleName       |                   |
| last_name         | last_name        | lastName         | name.last         |
| suffix            | suffix           | suffix           |                   |
| street            | addr             | addressLine1     | location.street   |
| city              | city             | city             | location.city     |
| state             | state            | state            | location.state    |
| zip_code          | zip              | zipCode          | location.postcode |
| email             | email            | email            | email             |
| phone_number      | phone_num        | phoneNum         | phone             |
| date_of_birth     | dob              | birthDate        | dob.date          |
| registration_date | date_registrated | registrationDate | registered.date   |

## Deliverables

1. all-user.csv
2. source code
3. README (text or markdown preferred)

## Tips

- Ensure the final csv has valid column names
- Write your code so that it's reusable and and flexible
