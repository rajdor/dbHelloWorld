SELECT 'Hello World'       AS hello
      , CURRENT_TIMESTAMP  AS tstamp
      , @@hostname         AS hostname
      , @@port             AS port
      , @@version          AS version
      , @@system_time_zone AS timezone
      , database()         AS dbname
      , ''                 AS schemaname
      , user()             AS username
;
