SELECT 'Hello World'                                    AS hello
      , sysdate                                         as sysdate            -- server/user/session config dependent
      , getdate()                                       as getdate            -- server/user/session config dependent
      , now()                                           as now                -- client dependent
      , current_timestamp                               as current_timestamp  -- client dependent
      , convert_timezone('UTC', sysdate)                as utc
      , convert_timezone('Australia/Brisbane', sysdate) as bne
      , inet_server_addr()                              AS hostname
      , inet_server_port()                              AS port
      , version()                                       AS version
      , pg.setting                                      AS datestyle
      , current_database()                              AS dbname
      , current_schema()                                AS schemaname
      , current_user                                    AS username
from pg_settings pg where name = 'datestyle'
;