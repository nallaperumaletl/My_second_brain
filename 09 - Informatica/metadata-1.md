---
tags:
  - informatica
  - metadata
  - oracle
---

### Query to check current running wfs, start time , also converted to IST , elapsed minutes can be seen.

```sql
SELECT DISTINCT
   subject_area,
   workflow_name,
   server_name,
   start_time,
   end_time,
   TO_CHAR(FROM_TZ(CAST(start_time AS TIMESTAMP), 'UTC') AT TIME ZONE 'Asia/Kolkata','HH24:MI:SS') AS IST,
   TO_CHAR(FROM_TZ(CAST(start_time AS TIMESTAMP), 'UTC') AT TIME ZONE 'Asia/Kolkata', 'Day') AS weekday,
   TRUNC((end_time - start_time) * 1440) AS elapsedminutes,
   CASE
       WHEN run_status_code = '1' THEN 'Succeeded'
       WHEN run_status_code = '2' THEN 'Disabled'
       WHEN run_status_code = '3' THEN 'Failed'
       WHEN run_status_code = '4' THEN 'Stopped'
       WHEN run_status_code = '5' THEN 'Aborted'
       WHEN run_status_code = '6' THEN 'Running'
       WHEN run_status_code = '15' THEN 'Terminated'
   END AS load_status
FROM
   rep_wflow_run
WHERE
   run_status_code = '6'
ORDER BY
   1, 2, 3;
```
