-- TABLAS 
SELECT * FROM activities;
SELECT * FROM agreements;
SELECT * FROM projects;
SELECT * FROM companies;
SELECT * FROM customers;
SELECT * FROM industries;
SELECT * FROM services;
SELECT * FROM sales_agents;

-- FUNCTIONS
SELECT fn_total_for_pay('2024-01-01', '2024-12-12') AS total_for_pay;
SELECT fn_percent_goal('2024-01-01', '2024-12-12') AS percent_goal;
SELECT fn_avg_total('2024-01-01', '2024-12-12') AS prom_total;
SELECT fn_sum_total('2024-01-01', '2024-12-12') AS sum_total;

-- PROCEDURES

SET @p_tabla = 'activities';
SET @p_column_orderby = 'id';
SET @p_orderby = 'asc';
-- Ejecutar SP
CALL sp_ordenamiento (@p_tabla , @p_column_orderby , @p_orderby,  @p_salida );

SET @p_tabla = 'activities(sa_id, act_typ, cst_id, stg_cli, cont_dt, nxt_cont)';
SET @p_columns_insert = '(1, ''Call'', 1, ''Negotiation'', ''2025-02-01 12:30:45'', ''2024-02-05 12:30:45'');';
-- Ejecutar SP
CALL SP_INSERT(@p_tabla , @p_columns_insert ,  @p_insert_concat );
SELECT * FROM activities WHERE cont_dt = '2025-02-01 12:30:45';

SET @p_tabla = 'projects';
SET @p_accion = 'UPDATE';
SET @p_column_update = 'stg';
SET @p_value_update= 'Monitoring';
SET @p_id=9;
-- Ejecutar SP
CALL SP_UPDATE_DELETE(@p_tabla , @p_accion , @p_column_update, @p_value_update, @p_id,  @p_salida );

CALL SP_UPDATE_DELETE('agreements', 'delete' ,NULL, NULL, 60,  @p_salida );

SET @P_ID_SA=1;
-- Ejecutar SP
CALL sp_agr_act_agent(@P_ID_SA,@P_SALIDA);

SET @p_customer=5;
-- Ejecutar SP
CALL sp_project_customer(@p_customer,@p_salida);


-- TRIGGERS
UPDATE projects
SET
  START_DT = '2023-04-01',
  END_DT = '2023-08-01',
  STG = 'Planning',
  PROFIT = 18000.75,
  ACCRC = 0.90
WHERE
  ID=1;
SELECT * FROM projects WHERE id =1;

UPDATE agreements
SET
  fst_pay = '2024-02-28',
  last_pay = '2024-04-01',
  curr_pay = 14000.00
WHERE
  ID=1;
SELECT * FROM agreements WHERE id =1;

DELETE FROM agreements WHERE ID=3;
DELETE FROM projects WHERE ID=3;
DELETE FROM activities WHERE ID=3;

SELECT * FROM LOG_AUDITORIA;


-- VIEWS
SELECT * FROM vw_activities_agents; 
SELECT * FROM vw_biz_companies;
SELECT * FROM vw_status_customer;
SELECT * FROM vw_service_agreements;
SELECT * FROM vw_outstanding_payments_proyects;
SELECT * FROM vw_sales_agents_report;
