## Schema Design

### Objective:
To design an Entity Relationship Diagram (ERD)
that enables a more organized, flexible, and easy-to-maintain database.
The main focus of this design is on the voter
registration forms collected across collection-mode by organization.

### Approach:
To reduce or avoid data redundancy, I tried to normalize the database design as much as I can.  I decided to create two new tables of Address and Organizations out of the larger tables and linked them to the rest of the entities using cardinal relationships. The tables are related to each other by the primary keys, and this gives easy access to all the information in each table. This eliminates redundant data and ensures data is stored logically. However, I still kept the address attributes for each of the Applicant, Remote, Field, and Mail entities for validation purposes. We can still remove the address attributes from these entities and have all the address attributes stored in one table as Address entity.  I kept both options in my design because I believe the database design depends on many other factors that is not covered here. This is just my quick approach based on the information I had.  
Please see a screenshot of my approach [here:] (https://imgur.com/xDo42Ow)
