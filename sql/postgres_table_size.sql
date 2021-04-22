SELECT nspname || '.' || relname AS "relation",
    pg_size_pretty(pg_relation_size(C.oid)) AS "size"
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE nspname IN ('public')
  ORDER BY pg_relation_size(C.oid) DESC
  LIMIT 20;


  SELECT pg_size_pretty( pg_total_relation_size('table_name') );