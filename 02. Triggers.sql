-- TRIGGER

DROP TABLE IF EXISTS  log_auditoria;
CREATE TABLE IF NOT EXISTS log_auditoria 
(
id_log INT AUTO_INCREMENT ,
camponuevo_campoanterior VARCHAR(255),
nombre_de_accion VARCHAR(10) ,
nombre_tabla VARCHAR(50) ,
usuario VARCHAR(100) ,
fecha_upd_ins_del TIMESTAMP    ,
PRIMARY KEY (id_log)
)
;

DROP TRIGGER IF EXISTS trg_log_auditoria_1 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_1 BEFORE INSERT ON projects
FOR EACH ROW 
BEGIN

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( CONCAT('id_newproject: ', NEW.id, ' customer- service:', NEW.cst_id, '-', NEW.srv_id) , 'insert' , 'projects',CURRENT_USER(), NOW());

END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_2 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_2 AFTER UPDATE ON projects
FOR EACH ROW 
BEGIN

 DECLARE update_columns_1 VARCHAR(255);
	SET update_columns_1 = ' ';
    
    IF NEW.end_dt <> OLD.end_dt THEN
        SET update_columns_1 = CONCAT('new end date: ', NEW.end_dt, ' old end date: ', OLD.end_dt, '\n');
    END IF;

    IF NEW.profit <> OLD.profit THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new profit: ', NEW.profit, ' old profit: ', OLD.profit, '\n');
    END IF;

    IF NEW.accrc <> OLD.accrc THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new accrc: ', NEW.accrc, ' old accrc: ', OLD.accrc, '\n');
    END IF;
    
    IF NEW.stg <> OLD.stg THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new stage: ', NEW.stg, ' old stage: ', OLD.stg, '\n');
    END IF;

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( update_columns_1  , 'update' , 'projects' ,CURRENT_USER(), NOW());
       
END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_3 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_3 BEFORE INSERT ON agreements
FOR EACH ROW 
BEGIN

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( CONCAT('id_newagreement: ', NEW.id, ' salesAgent- project:', NEW.sa_id, '-', NEW.prj_id) , 'insert' , 'agreements',CURRENT_USER(), NOW());

END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_4 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_4 AFTER UPDATE ON agreements
FOR EACH ROW 
BEGIN

 DECLARE update_columns_2 VARCHAR(255);
    SET update_columns_2 = ' ';
    IF NEW.fst_pay <> OLD.fst_pay THEN
        SET update_columns_2 = CONCAT('new first payment: ', NEW.fst_pay, ' first payment: ', OLD.fst_pay , '\n');
    END IF;
    
    IF NEW.last_pay <> OLD.last_pay THEN
        SET update_columns_2 = CONCAT(update_columns_2,'new last payment: ', NEW.last_pay, ' last payment: ', OLD.last_pay , '\n');
    END IF;

    IF NEW.curr_pay <> OLD.curr_pay THEN
        SET update_columns_2 = CONCAT(update_columns_2, 'new current payment: ', NEW.curr_pay, ' old current payment: ', OLD.curr_pay, '\n');
    END IF;


INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( update_columns_2  , 'update' , 'agreements' ,CURRENT_USER(), NOW());
       
END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_5 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_5 BEFORE DELETE ON projects
FOR EACH ROW 
BEGIN

DECLARE delete_column_json_1 JSON;

    SET  delete_column_json_1 = JSON_OBJECT(
        'id', OLD.id,
        'cst_id', OLD.cst_id,
        'srv_id', OLD.srv_id,
        'start_dt', OLD.start_dt,
        'end_dt', OLD.end_dt,
        'stg', OLD.stg,
        'profit',OLD.profit,
        'accrc',OLD.accrc
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_1 , 'delete' , 'projects',CURRENT_USER(), NOW());

END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_6 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_6 BEFORE DELETE ON agreements
FOR EACH ROW 
BEGIN

DECLARE delete_column_json_2 JSON;

    SET  delete_column_json_2 = JSON_OBJECT(
        'id', OLD.id,
        'sa_id', OLD.sa_id,
        'prj_id', OLD.prj_id,
        'deal_dt', OLD.deal_dt,
        'fst_pay', OLD.fst_pay,
        'last_pay', OLD.last_pay,
        'curr_pay', OLD.curr_pay
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_2 , 'delete' , 'agreements', CURRENT_USER(), NOW());

END//
DELIMITER ;


DROP TRIGGER IF EXISTS trg_log_auditoria_7 ;
DELIMITER //
CREATE TRIGGER  trg_log_auditoria_7 BEFORE DELETE ON activities
FOR EACH ROW
BEGIN
DECLARE delete_column_json_2 JSON;

    SET  delete_column_json_2 = JSON_OBJECT(
        'id', OLD.id,
        'sa_id', OLD.sa_id,
        'act_typ', OLD.act_typ,
        'cst_id', OLD.cst_id,
        'stg_cli', OLD.stg_cli,
        'cont_dt', OLD.cont_dt,
        'nxt_cont', OLD.nxt_cont
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_2 , 'delete' , 'activities', CURRENT_USER(), NOW());

END//
DELIMITER ;