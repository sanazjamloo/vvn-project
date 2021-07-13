# Schema Design

Target time: sixty (60) minutes

## Context

We are rapidly increasing the amount of data that we are ingesting. In order to
ensure that it is easy to analyze and report on, we are hoping to re-structure
it in a more organized way. Specifically, we are looking to report on voter
registration forms collected across collection-mode by organization.

Given the source tables below, put together an Entity Relationship Diagram (ERD)
the shows how you would organize the tables. Be sure to include details about
your thought process and why you made the decision you did, in the README you
sumbit. Feel free to use any software you like to generate the diagram (even
non-specific software such as MS Word or Google Docs), and export the final
product as a pdf or image file.

## Data

_\* PII = Personally Identifiable Information, i.e. name, address, etc._

### field_source1

| column                     | description                                                      |
| -------------------------- | ---------------------------------------------------------------- |
| fs1_id                     | the vendor's unique id                                           |
| prefix                     | PII                                                              |
| first_name                 | PII                                                              |
| middle_name                | PII                                                              |
| last_name                  | PII                                                              |
| suffix                     | PII                                                              |
| street                     | PII                                                              |
| city                       | PII                                                              |
| state                      | PII                                                              |
| zip_code                   | PII                                                              |
| email                      | PII                                                              |
| phone_number               | PII                                                              |
| date_of_birth              | PII                                                              |
| registration_date          | the date the regisration was collected                           |
| organization               | the name of the organization the collected the registration form |
| organization_state         | the state in which the organization ran the VR program           |
| organization_funding_level | the level of funding the organization receieved                  |

### field_source2

| column                     | description                                                      |
| -------------------------- | ---------------------------------------------------------------- |
| fs2_id                     | the vendor's unique id                                           |
| prefix                     | PII                                                              |
| first_name                 | PII                                                              |
| middle_name                | PII                                                              |
| last_name                  | PII                                                              |
| suffix                     | PII                                                              |
| street                     | PII                                                              |
| city                       | PII                                                              |
| state                      | PII                                                              |
| zip_code                   | PII                                                              |
| email                      | PII                                                              |
| phone_number               | PII                                                              |
| date_of_birth              | PII                                                              |
| registration_date          | the date the regisration was collected                           |
| organization               | the name of the organization the collected the registration form |
| organization_state         | the state in which the organization ran the VR program           |
| organization_funding_level | the level of funding the organization receieved                  |

### mail_source1

| column              | description                                                      |
| ------------------- | ---------------------------------------------------------------- |
| ms1_id              | the vendor's unique id                                           |
| prefix              | PII                                                              |
| first_name          | PII                                                              |
| middle_name         | PII                                                              |
| last_name           | PII                                                              |
| suffix              | PII                                                              |
| street              | PII                                                              |
| city                | PII                                                              |
| state               | PII                                                              |
| zip_code            | PII                                                              |
| email               | PII                                                              |
| phone_number        | PII                                                              |
| date_of_birth       | PII                                                              |
| date_mail_sent      | the date the regisration was mailed out                          |
| date_mail_receieved | the date the regisration was recieved                            |
| organization        | the name of the organization the collected the registration form |
| organization_state  | the state in which the organization ran the VR program           |

### remote_source1

| column                 | description                                                        |
| ---------------------- | ------------------------------------------------------------------ |
| rs1_id                 | the vendor's unique id                                             |
| prefix                 | PII                                                                |
| first_name             | PII                                                                |
| middle_name            | PII                                                                |
| last_name              | PII                                                                |
| suffix                 | PII                                                                |
| street                 | PII                                                                |
| city                   | PII                                                                |
| state                  | PII                                                                |
| zip_code               | PII                                                                |
| email                  | PII                                                                |
| phone_number           | PII                                                                |
| date_of_birth          | PII                                                                |
| registration_started   | the date the regisration was started online                        |
| registration_submitted | the date the regisration was was submitted online                  |
| application_step       | the step the applicant reached when filling out the application    |
| org_slug               | the slug for the organization that collected the registration form |
| org_program_state      | the state in which the organization ran the online VR program      |

### remote_source2

| column                    | description                                             |
| ------------------------- | ------------------------------------------------------- |
| rs2_id                    | the vendor's unique id                                  |
| prefix                    | PII                                                     |
| first_name                | PII                                                     |
| middle_name               | PII                                                     |
| last_name                 | PII                                                     |
| suffix                    | PII                                                     |
| street                    | PII                                                     |
| city                      | PII                                                     |
| state                     | PII                                                     |
| zip_code                  | PII                                                     |
| email                     | PII                                                     |
| phone_number              | PII                                                     |
| date_of_birth             | PII                                                     |
| registration_completed_at | the date the regisration was was submitted              |
| canvasser_id              | the id of the canvasser that collected the registration |
| org_code                  | the code for the organization                           |

### applicant

| column            | description                                          |
| ----------------- | ---------------------------------------------------- |
| id                | unique id                                            |
| prefix            | PII                                                  |
| first_name        | PII                                                  |
| middle_name       | PII                                                  |
| last_name         | PII                                                  |
| suffix            | PII                                                  |
| street            | PII                                                  |
| city              | PII                                                  |
| state             | PII                                                  |
| zip_code          | PII                                                  |
| email             | PII                                                  |
| phone_number      | PII                                                  |
| date_of_birth     | PII                                                  |
| registration_date | the date the regisration was was collected/submitted |
| org_id            | the id for the organization                          |

## Deliverables

1. ERD document (pdf or jpg/png preferred)
2. README (text or markdown preferred)
