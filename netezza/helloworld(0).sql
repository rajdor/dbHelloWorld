SELECT 'Hello World'       AS hello
      , CURRENT_TIMESTAMP  AS tstamp
      , inet_server_addr() AS hostname
      , inet_server_port() AS port
      , version()          AS version
      , pgs.setting        AS timezone
      , current_database() AS dbname
      , current_schema()   AS schemaname
      , current_user       AS username
from pg_settings pgs 
where pgs.name = 'TimeZone'
;