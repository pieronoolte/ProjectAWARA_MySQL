DROP SCHEMA IF EXISTS crm_database_awara ;
CREATE SCHEMA IF NOT EXISTS crm_database_awara;
USE crm_database_awara;

DROP TABLE IF EXISTS sales_agents;
CREATE TABLE IF NOT EXISTS sales_agents(
id INT AUTO_INCREMENT PRIMARY KEY,
sa_name VARCHAR(25) NOT NULL,
age TINYINT NOT NULL,
gen ENUM('F','M') NOT NULL,
career VARCHAR(30) NOT NULL,
job_tit VARCHAR(30) NOT NULL,
sa_tgt FLOAT not null,
avail BIT NOT NULL
);


DROP TABLE IF EXISTS industries;
CREATE TABLE IF NOT EXISTS industries(
id INT AUTO_INCREMENT PRIMARY KEY,
ind_typ VARCHAR(50) NOT NULL,
gdp_pct DECIMAL(4,2),
gdp_grw DECIMAL(4,2),
pol_sit ENUM ('Stable', 'Unstable', 'Neutral', 'Unknown'),
avg_ann_rev FLOAT NOT NULL,
avg_emp_count INT NOT NULL
); 


DROP TABLE IF EXISTS services;
CREATE TABLE IF NOT EXISTS services(
id INT AUTO_INCREMENT PRIMARY KEY,
srv_typ VARCHAR(25) NOT NULL,
wsp VARCHAR(25) NOT NULL,
min_time_exe TINYINT not null,
max_time_exe TINYINT not null,
min_bud DECIMAL(7,2),
max_bud DECIMAL(7,2),
avail TINYINT(1) NOT NULL
);


DROP TABLE IF EXISTS companies;
CREATE TABLE IF NOT EXISTS companies(
id INT AUTO_INCREMENT PRIMARY KEY,
cm_name VARCHAR(25) NOT NULL,
since YEAR NOT NULL DEFAULT 2000,
loc SET('North of Peru', 'South of Peru', 'Midle of Peru') NOT NULL,
ind_id INT NOT NULL,
biz_typ ENUM ('Small business', 'Mid sized business', 'Large business', 'Startup', 'Corporation', 'Multinational corporation'),
fin_stmt ENUM('Income Statement', 'Balance Sheet', 'Cash Flow Statement'),
FOREIGN KEY (ind_id) REFERENCES industries(id)
);


DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers(
id INT AUTO_INCREMENT PRIMARY KEY,
cst_name VARCHAR(25) NOT NULL,
gen ENUM('F','M') NOT NULL,
career VARCHAR(30) NOT NULL,
job_tit VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL UNIQUE,
phone VARCHAR(15) NOT NULL,
cm_id INT NOT NULL,
typ_cli ENUM('Prospect','Lead', 'New Client', 'Sporadic Client','Loyal Client'),
FOREIGN KEY (cm_id) REFERENCES companies(id)
);


DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects(
id INT AUTO_INCREMENT PRIMARY KEY,
cst_id INT NOT NULL,
srv_id INT NOT NULL,   
start_dt DATE NOT NULL,
end_dt DATE NOT NULL,
stg ENUM('Initiation','Planning', 'Execution', 'Monitoring','Closure') NOT NULL,
profit DECIMAL(7,2),
accrc DECIMAL(4,2),
FOREIGN KEY (cst_id) REFERENCES customers(id),
FOREIGN KEY (srv_id) REFERENCES services(id)
);


DROP TABLE IF EXISTS activities;
CREATE TABLE IF NOT EXISTS activities(
id INT AUTO_INCREMENT PRIMARY KEY,
sa_id INT NOT NULL,
act_typ ENUM('Call','Meeting', 'Mail') NOT NULL,
cst_id INT NOT NULL,
stg_cli ENUM('Negotiation','Deal', 'Not Apply', 'Future Followup','Decline') NOT NULL,
cont_dt DATETIME,
nxt_cont DATETIME,
FOREIGN KEY (sa_id) REFERENCES sales_agents(id),
FOREIGN KEY (cst_id) REFERENCES customers(id)
);


DROP TABLE IF EXISTS agreements;
CREATE TABLE IF NOT EXISTS agreements(
id INT AUTO_INCREMENT PRIMARY KEY,
sa_id INT NOT NULL,
prj_id INT NOT NULL,
deal_dt DATE,
fst_pay DATE,
last_pay DATE,
curr_pay DECIMAL(7,2),
FOREIGN KEY (sa_id) REFERENCES sales_agents(id),
FOREIGN KEY (prj_id) REFERENCES projects(id)
);

