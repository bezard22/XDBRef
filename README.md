# XDBRef
Cross Database Reference

A sereies of example scripts detailing the SQL operations for the following database technologies:

- sqlite3
- sql server
- mysql
- postgresql
- mongodb

---

## Project Outline

| Operation | Description | 
| --- | --- |
| connect | connect to the specified databse |
| createDB | create a new database usign the specified technology |
| createTable | create a new table in the specified database | 
| insert | perform a single insertion to the specified table |
| select | select data from the specified table |

---
## Project Structure

A directory exists for each database containing a src directory for sql script files and a series of shell scripts which execute the given database operation.

```
├── <DB>
│   ├── src
|   |   └── <operation>.sql
|   └── <operation>.sh
```