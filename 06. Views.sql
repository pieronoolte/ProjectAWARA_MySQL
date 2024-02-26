-- VISTAS
CREATE OR REPLACE VIEW vw_activities_agents AS (
SELECT 	act.act_typ, 
		sa.sa_name, 
        act.cst_id,
        c.email,
        c.phone,
        act.nxt_cont 
FROM activities AS act
JOIN customers AS c ON c.id = act.cst_id
JOIN sales_agents AS sa ON act.sa_id = sa.id
WHERE act.stg_cli IN ('Negotiation','Future followup')
ORDER BY act.nxt_cont DESC );

 
CREATE OR REPLACE VIEW vw_biz_companies AS (
    SELECT
        cm.biz_typ,
        COUNT(cm.id) AS total_companies,
        COUNT(p.id) AS total_projects,
        CONCAT(ROUND((SUM(a.curr_pay) / SUM(SUM(a.curr_pay)) OVER ()) * 100, 2), '%') AS market_percent,
        MAX(srv.srv_typ) AS most_requested_service
    FROM companies AS cm
    JOIN customers AS c ON c.cm_id = cm.id
    JOIN projects AS p ON c.id = p.cst_id
    JOIN agreements AS a ON p.id = a.prj_id
    JOIN services AS srv ON p.srv_id = srv.id
    GROUP BY cm.biz_typ
    HAVING SUM(a.curr_pay) > 0.5 * (SUM(p.profit * p.accrc))
);


CREATE OR REPLACE VIEW vw_status_customer AS (
SELECT 	
		c.cst_name,
        count(act.id) AS activities,
        count(p.id) AS total_projects,
        CASE
			WHEN count(p.id) > 0 THEN 'Current projects' 
            ELSE 'Non-current'
		END AS current_projects,
        CASE
			WHEN SUM(a.curr_pay) < 0.75*SUM(p.profit * p.accrc)
            THEN 'overdue customer'
			ELSE 'up-to-date customer'
		END AS account_statement
FROM customers as c
LEFT JOIN projects as p ON c.id= p.cst_id
LEFT JOIN activities as act ON c.id = act.cst_id
LEFT JOIN agreements AS a ON p.id = a.prj_id
GROUP BY c.cst_name
ORDER BY total_projects DESC );


CREATE OR REPLACE VIEW vw_service_agreements AS (
SELECT  srv.srv_typ,
		count(p.id) as projects,
        count(act.id) as activities,
        sum(p.profit * p.accrc) as expected_payment,
        sum(a.curr_pay) as current_payment,
        CONCAT((sum(a.curr_pay) / SUM(sum(a.curr_pay)) OVER ())*100,'%') AS current_payment_percentage
FROM projects AS p
JOIN customers AS c ON p.cst_id = c.id
JOIN activities AS act ON act.cst_id = c.id
JOIN agreements AS a ON  a.prj_id = p.id
JOIN services AS srv ON p.srv_id = srv.id
GROUP BY p.srv_id );


CREATE OR REPLACE VIEW vw_outstanding_payments_proyects AS (
SELECT 	c.cst_name, 
		p.stg, 
        p.profit * p.accrc AS total_payment, 
		a.curr_pay
FROM projects as p 
JOIN agreements as a ON p.id = a.prj_id
JOIN customers AS c ON p.cst_id = c.id
WHERE p.stg IN ('Monitoring', 'Closure') 
AND a.curr_pay < p.profit * p.accrc);


CREATE OR REPLACE VIEW vw_sales_agents_report AS ( 
SELECT 	sa.sa_name,
		sum(a.curr_pay*0.1) as sales_commission,
		sum(p.profit * p.accrc -(a.curr_pay)) AS receivable_payments,
		CONCAT(ROUND((SUM(a.curr_pay) / SUM(sa.sa_tgt)) * 100,2), '%') AS goal_percent
FROM agreements as a 
JOIN projects as p ON  a.prj_id = p.id 
JOIN sales_agents as sa ON a.sa_id = sa.id 
GROUP BY sa.sa_name
ORDER BY sum(a.curr_pay*0.2) DESC);