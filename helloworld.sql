SELECT 'Hello World'       AS hello
      , CURRENT_TIMESTAMP  AS tstamp
      , a.inst_name       as instance_name
      , b.host_name        as host_name
--      ,                AS port
      , a.service_level     as version
      , current_timezone   AS timezone
      , current_server     AS dbname
      , current_schema     AS schemaname
      , current_user       AS username
FROM SYSIBMADM.ENV_INST_INFO a
left join 
   (select host_name 
      from table(SYSPROC.ENV_GET_SYSTEM_RESOURCES()) 
     where member = 0
   ) b
on 1=1
;