-- FUNCIONES
DROP FUNCTION  IF EXISTS fn_total_for_pay ;
DELIMITER //
CREATE FUNCTION fn_total_for_pay (  p_start_date DATE,
                                 p_end_date DATE  )
RETURNS DECIMAL(8,2)
DETERMINISTIC
BEGIN
	DECLARE v_value DECIMAL(8,2);  
   
	SELECT SUM(p.profit * p.accrc - a.curr_pay) INTO v_value
	FROM projects as p
	JOIN agreements AS a ON  a.prj_id = p.id
    WHERE start_dt BETWEEN p_start_date AND p_end_date;
	RETURN v_value;
END; //
DELIMITER ;


DROP FUNCTION  IF EXISTS fn_percent_goal ;
DELIMITER //
CREATE FUNCTION fn_percent_goal (  p_start_date DATE,
                                 p_end_date DATE  )
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
	DECLARE v_value VARCHAR(20);  
   
	SELECT CONCAT(ROUND((SUM(a.curr_pay)/SUM(sa.sa_tgt))*100,2),'%') INTO v_value
	FROM sales_agents as sa
	JOIN agreements AS a ON  a.sa_id = sa.id
    WHERE deal_dt BETWEEN p_start_date AND p_end_date;
	RETURN v_value;
END; //
DELIMITER ;


DROP FUNCTION  IF EXISTS fn_avg_total ;
DELIMITER //
CREATE FUNCTION fn_avg_total (  p_start_date DATE,
                                 p_end_date DATE  )
RETURNS DECIMAL(8,2)
DETERMINISTIC
BEGIN
	DECLARE v_value DECIMAL(8,2);  
   
	SELECT AVG(profit * accrc) INTO v_value
	FROM projects
	WHERE start_dt BETWEEN p_start_date AND p_end_date;

	RETURN v_value;
END; //
DELIMITER ;


DROP FUNCTION  IF EXISTS fn_sum_total ;
DELIMITER //
CREATE FUNCTION fn_sum_total( p_start_date DATE,
                                 p_end_date DATE )
RETURNS DECIMAL(8,2)
DETERMINISTIC
BEGIN

	DECLARE v_value DECIMAL(8,2);  
   
	SELECT SUM(profit * accrc) INTO v_value
	FROM projects
	WHERE start_dt BETWEEN p_start_date AND p_end_date;

	RETURN v_value;
END //
DELIMITER ;