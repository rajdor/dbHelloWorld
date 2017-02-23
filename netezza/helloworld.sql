SELECT 'Hello World'       AS hello
      , CURRENT_TIMESTAMP  AS tstamp
      , b.val              AS hostname
      , NULL               AS port
      , a.label            AS version
      , c.val              AS timezone
      , CURRENT_CATALOG    AS dbname
      , CURRENT_SCHEMA     AS schemaname
      , CURRENT_USER       AS username
FROM system.._v_host_version a
LEFT JOIN _t_environ b ON b.name = 'HOSTNAME'
LEFT JOIN _t_environ c ON c.name = 'NZ_TZ'
;
