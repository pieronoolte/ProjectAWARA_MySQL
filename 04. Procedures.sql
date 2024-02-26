
-- PROCEDURE
DROP PROCEDURE IF EXISTS sp_ordenamiento;
DELIMITER //
CREATE PROCEDURE sp_ordenamiento (	IN p_tabla VARCHAR(30),
									IN p_column_orderby VARCHAR(30),
									IN p_orderby VARCHAR(4),
                                    OUT p_salida VARCHAR(150)
								 )
BEGIN


SET @P_SALIDA = CONCAT('SELECT * FROM ', p_tabla, ' ORDER BY ', p_column_orderby, ' ', p_orderby);

PREPARE param_stmt from @p_salida  ;
EXECUTE param_stmt;
deallocate PREPARE param_stmt;
END //
DELIMITER ;

DROP PROCEDURE  IF EXISTS sp_insert ;
DELIMITER //
CREATE PROCEDURE sp_insert(IN p_tabla VARCHAR(1000), IN p_columns_insert VARCHAR(1000), OUT p_insert_concat VARCHAR(1000))
BEGIN
    
    SET @P_INSERT_CONCAT = CONCAT('INSERT INTO ', p_tabla, ' VALUES ', p_columns_insert);
   
    PREPARE stmt1 FROM @p_insert_concat;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;

END //
DELIMITER ;


DROP PROCEDURE IF EXISTS sp_update_delete;
DELIMITER //
CREATE PROCEDURE sp_update_delete (	IN p_tabla VARCHAR(50),
									IN p_accion VARCHAR(50),
									IN p_column_update VARCHAR(50),
                                    IN p_value_update VARCHAR(50),
									IN p_id INT,
                                    OUT p_salida VARCHAR (150)
								 )
BEGIN


IF   UPPER(TRIM(P_ACCION)) = 'UPDATE' THEN
SET @sql_query_1 = CONCAT('UPDATE ', p_tabla, ' SET ', p_column_update, ' = ''',  p_value_update,''' WHERE ID = ', p_id );

	PREPARE dynamic_query_1 FROM @sql_query_1;
    EXECUTE dynamic_query_1;
    DEALLOCATE PREPARE dynamic_query_1;
    
SET @p_salida =CONCAT('SELECT * FROM ', p_tabla,' WHERE ID = ', p_id );

    PREPARE dynamic_query_3 FROM @P_SALIDA;
    EXECUTE dynamic_query_3;
    DEALLOCATE PREPARE dynamic_query_3;

ELSEIF   UPPER(TRIM(P_ACCION)) = 'DELETE' THEN
SET @sql_query_2 = CONCAT('DELETE FROM ', p_tabla,' WHERE ID = ', p_id) ;
SET @p_salida = ' DELETE OK ' ;

	PREPARE dynamic_query_2 FROM @sql_query_2;
    EXECUTE dynamic_query_2;
    DEALLOCATE PREPARE dynamic_query_2;
ELSE 
SET @p_salida = ' ERROR: DATO NO VALIDO ' ;
END IF;

END //
DELIMITER ;




DROP PROCEDURE IF EXISTS sp_agr_act_agent;
DELIMITER //
CREATE PROCEDURE sp_agr_act_agent(IN p_id_sa INT,  OUT p_salida CHAR(50))
BEGIN

	SET @sql_query_1 = CONCAT('
        SELECT act_typ, cst_id, stg_cli, cont_dt, nxt_cont
        FROM activities
        WHERE sa_id = ', p_ID_SA, '
        ORDER BY nxt_cont DESC;
    ');

    PREPARE dynamic_query_1 FROM @sql_query_1;
    EXECUTE dynamic_query_1;
    DEALLOCATE PREPARE dynamic_query_1;
    
    SET @sql_query_2= CONCAT('
        SELECT prj_id, deal_dt, fst_pay, last_pay, curr_pay
        FROM agreements
        WHERE sa_id = ', p_ID_SA, '
        ORDER BY curr_pay DESC;
    ');
	SET @P_SALIDA = 'REGISTRO DE ACTIVIDADES Y OPORTUNIDADES DEL AGENTE';
    
    PREPARE dynamic_query_2 FROM @sql_query_2;
    EXECUTE dynamic_query_2;
    DEALLOCATE PREPARE dynamic_query_2;
END //
DELIMITER ;


DROP PROCEDURE IF EXISTS sp_project_customer;
DELIMITER //
CREATE PROCEDURE sp_project_customer(IN p_customer INT,  OUT p_salida CHAR(40))
BEGIN

	SET @sql_query_3 = CONCAT('
        SELECT cst_id, srv_id, start_dt, end_dt, stg, profit, accrc
        FROM projects
        WHERE cst_id = ', P_CUSTOMER, '
        ORDER BY start_dt DESC;
    ');

	SET @P_SALIDA = 'REGISTRO DE PROYECTOS DEL CUSTOMER';
    
    PREPARE dynamic_query_3 FROM @sql_query_3;
    EXECUTE dynamic_query_3;
    DEALLOCATE PREPARE dynamic_query_3;
END //
DELIMITER ;