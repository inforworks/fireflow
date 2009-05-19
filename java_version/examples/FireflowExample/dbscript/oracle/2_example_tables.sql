drop table T_BIZ_GD_TASKINSTANCE cascade constraints;
drop table T_BIZ_LOANINFO cascade constraints;
drop table T_BIZ_LOAN_APPROVEINFO cascade constraints;
drop table T_BIZ_LOAN_TASKINSTANCE cascade constraints;
drop table T_Biz_TradeInfo cascade constraints;
drop table T_FF_RT_TASKINSTANCE cascade constraints;
drop table T_SECU_DEPARTMENT cascade constraints;
drop table T_SECU_RESOURCE cascade constraints;
drop table T_SECU_ROLE cascade constraints;
drop table T_SECU_ROLE_RESOURCE cascade constraints;
drop table T_SECU_USER cascade constraints;
drop table T_SECU_USER_ROLE cascade constraints;
create table T_BIZ_GD_TASKINSTANCE (TASKINSTANCE_ID varchar2(50 char) not null, SN varchar2(255 char), GOODS_NAME varchar2(255 char), QUANTITY number(19,0), CUSTOMER_NAME varchar2(255 char), primary key (TASKINSTANCE_ID));
create table T_BIZ_LOANINFO (ID varchar2(50 char) not null, SN varchar2(50 char) not null unique, APPLICANT_NAME varchar2(50 char) not null, APPLICANT_ID varchar2(50 char) not null, ADDRESS varchar2(256 char) not null, SALARY number(10,0) not null, LOAN_VALUE number(10,0) not null, RETURN_DATE varchar2(10 char) not null, LOANTELLER varchar2(50 char) not null, APP_INFO_INPUT_DATE timestamp not null, SALARY_IS_REAL number(1,0), CREDIT_STATUS number(1,0), RISK_FLAG number(1,0), RISK_EVALUATOR varchar2(50 char), RISK_INFO_INPUT_DATE timestamp, DECISION number(1,0), examinerList varchar2(128 char), approverList varchar2(128 char), opponentList varchar2(128 char), LEND_MONEY_INFO varchar2(256 char), LEND_MONEY_OFFICER varchar2(50 char), LEND_MONEY_INFO_INPUT_TIME timestamp, REJECT_INFO varchar2(256 char), REJECT_INFO_INPUT_TIME timestamp, primary key (ID));
create table T_BIZ_LOAN_APPROVEINFO (ID varchar2(50 char) not null, SN varchar2(50 char) not null, approver varchar2(50 char) not null, decision number(1,0), detail varchar2(50 char), primary key (ID));
create table T_BIZ_LOAN_TASKINSTANCE (TASKINSTANCE_ID varchar2(50 char) not null, SN varchar2(255 char), APPLICANT_NAME varchar2(255 char), LOAN_VALUE number(10,0), RISK_FLAG number(1,0), DECISION number(1,0), primary key (TASKINSTANCE_ID));
create table T_Biz_TradeInfo (ID varchar2(50 char) not null, SN varchar2(50 char) unique, GOODS_NAME varchar2(100 char), GOODS_TYPE varchar2(50 char), QUANTITY number(19,0), UNIT_PRICE double precision, AMOUNT double precision, CUSTOMER_NAME varchar2(50 char), CUSTOMER_MOBILE varchar2(30 char), CUSTOMER_PHONE_FAX varchar2(30 char), CUSTOMER_ADDRESS varchar2(150 char), STATE varchar2(15 char), PAYED_TIME timestamp, DELIVERED_TIME timestamp, primary key (ID));
create table T_FF_RT_TASKINSTANCE (ID varchar2(50 char) not null, BIZ_TYPE varchar2(250 char) not null, TASK_ID varchar2(300 char) not null, ACTIVITY_ID varchar2(200 char) not null, NAME varchar2(100 char) not null, DISPLAY_NAME varchar2(128 char), STATE number(10,0) not null, SUSPENDED number(1,0) not null, TASK_TYPE varchar2(10 char), CREATED_TIME timestamp not null, STARTED_TIME timestamp, EXPIRED_TIME timestamp, END_TIME timestamp, ASSIGNMENT_STRATEGY varchar2(10 char), PROCESSINSTANCE_ID varchar2(50 char) not null, PROCESS_ID varchar2(100 char) not null, VERSION number(10,0) not null, TARGET_ACTIVITY_ID varchar2(100 char), FROM_ACTIVITY_ID varchar2(600 char), STEP_NUMBER number(10,0) not null, CAN_BE_WITHDRAWN number(1,0) not null, primary key (ID));
create table T_SECU_DEPARTMENT (ID varchar2(50 char) not null, CODE varchar2(50 char) not null unique, NAME varchar2(100 char) not null, PARENT_CODE varchar2(50 char) not null, DESCRIPTION varchar2(256 char), primary key (ID));
create table T_SECU_RESOURCE (ID varchar2(50 char) not null, CODE varchar2(50 char) not null unique, NAME varchar2(100 char) not null, TYPE varchar2(2 char) not null, VALUE varchar2(256 char), PARENT_CODE varchar2(50 char) not null, SORT number(19,0), MENU_FLAG varchar2(10 char), primary key (ID));
create table T_SECU_ROLE (ID varchar2(50 char) not null, CODE varchar2(50 char) not null unique, NAME varchar2(100 char) not null, DESCRIPTION varchar2(256 char), primary key (ID));
create table T_SECU_ROLE_RESOURCE (ID varchar2(50 char) not null, ROLE_CODE varchar2(50 char) not null, RESOURCE_CODE varchar2(50 char) not null, primary key (ID));
create table T_SECU_USER (ID varchar2(50 char) not null, LOGINID varchar2(50 char) not null unique, PASSWORD varchar2(128 char) not null, NAME varchar2(50 char) not null, DISABLED number(1,0) not null, ACCOUNT_LOCKED number(1,0) not null, ACCOUNT_EXPIRED_TIME timestamp, PASSWORD_EXPIRED_TIME timestamp, EMAIL varchar2(64 char), DEPARTMENT_CODE varchar2(50 char) not null, DEPARTMENT_NAME varchar2(100 char), TITLE varchar2(50 char), primary key (ID));
create table T_SECU_USER_ROLE (ID varchar2(50 char) not null, LOGINID varchar2(50 char) not null, ROLE_CODE varchar2(50 char) not null, primary key (ID));
alter table T_BIZ_GD_TASKINSTANCE add constraint FKF0F6F985D06C779D foreign key (TASKINSTANCE_ID) references T_FF_RT_TASKINSTANCE;
alter table T_BIZ_LOAN_TASKINSTANCE add constraint FKCBD3CE1240A045E2 foreign key (TASKINSTANCE_ID) references T_FF_RT_TASKINSTANCE;