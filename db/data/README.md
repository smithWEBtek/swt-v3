
## Some rake tasks and what they do:
 
---
```
rake -T
```	
- Show a list of all rake tasks

---
``` 
rake db:backup
```                          
- Back up db data, using this gem...
- https://rubygems.org/gems/seed_dump/versions/3.2.4
- ...and store the data in a timestamped file in db/data folder

example: `~db/data/backup_data1521891686.rb`

---
``` 
rake db:bdcms
```
- Backup, drop, create, migrate, seed the db, restart rails server

---
```
rake db:dcms
```
- Drop, create, migrate, seed the db, restart rails server

---
``` 
rake db:drop                       
```
- Drop the database

---
```
rake db:dump                       
```
- Dump schema and data to db/schema.rb and db/data.yml

---

```
rake db:dump_store_data_yml        
```
- Dump to data.yml,
- run db:store_data_yml to rename and move file to db/data/

---
```
rake db:store_data_yml             
```
- rename and move data.yml file

---
```
rake db:store_seeds_data           
```
- rename and move seeds.rb file




---
```
rake db:hdcms                      
```
- run Heroku pg:reset, drop, create, migrate, seed 

---
```
rake db:load                       
```
Load schema and data 
from db/schema.rb and db/data.yml

--- 

```
rake db:seed                       
```
- Loads the seed data from db/seeds.rb

---

```
rake db:setup                      
```
- Creates the database, 
- loads the schema, 
- and initializes with the seed data (use db:reset to also drop the db)

