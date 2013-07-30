# activerecord-redshift-adapter

adapter for aws redshift for rails 3

ripped from rails 3 postgresql -- deleted code until it worked

barely tested (I'm working on a project that needs this -- this works as much as I need to get the project moving)

good luck

## example database.yml
```yml
common: &common
  adapter: postgresql
  username: postgres
  encoding: SQL_ASCII
  template: template0
  pool: 5
  timeout: 5000

redshiftdb: &redshiftdb
  adapter: redshift
  host: clustername.something.us-east-1.redshift.amazonaws.com
  database: databasename
  port: 5439
  username: username
  password: password

redshift_development:
  <<: *common
  <<: *redshiftdb
  database: databasename
```

## options
<table>
  <tr>
    <th>option</th>
    <th>description</th>
  </tr>
  <tr>
    <th>schema_search_path</th>
    <td>set schema_search_path. use default value if not given.</td>
  </tr>
  <tr>
    <th>read_timezone</th>
    <td>force timezone for datetime when select values. ActiveRecord default timezone will set if not given.</td>
  </tr>
</table>
