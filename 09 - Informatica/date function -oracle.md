
```sql
SELECT 
    TO_CHAR(TIMESTAMP '2024-06-04 13:30:00' - TIMESTAMP '2024-06-04 12:00:00', 'MI:SS') AS mm_ss_difference
FROM dual;
```
