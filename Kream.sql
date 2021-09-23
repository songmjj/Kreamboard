--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-9岿-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "NIKE"."TBL_BOARD" 
   (	"BID" NUMBER(*,0), 
	"CATE_CD" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"VIEW_CNT" VARCHAR2(100 BYTE), 
	"REG_ID" VARCHAR2(50 BYTE), 
	"REG_DT" DATE, 
	"EDIT_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MENU
--------------------------------------------------------

  CREATE TABLE "NIKE"."TBL_MENU" 
   (	"MID" NUMBER(*,0), 
	"CODE" VARCHAR2(20 BYTE), 
	"CODENAME" VARCHAR2(20 BYTE), 
	"SORT_NUM" NUMBER(*,0), 
	"COMMENTS" VARCHAR2(1000 BYTE), 
	"REG_ID" VARCHAR2(20 BYTE), 
	"REG_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_REPLY
--------------------------------------------------------

  CREATE TABLE "NIKE"."TBL_REPLY" 
   (	"RID" NUMBER(*,0), 
	"BID" NUMBER(*,0), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"REG_ID" VARCHAR2(45 BYTE), 
	"REG_DT" TIMESTAMP (6), 
	"EDIT_DT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("EDIT_DT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("REG_DT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("REG_ID" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("VIEW_CNT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_BOARD" MODIFY ("CATE_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MENU
--------------------------------------------------------

  ALTER TABLE "NIKE"."TBL_MENU" MODIFY ("REG_DT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_MENU" MODIFY ("COMMENTS" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_MENU" MODIFY ("SORT_NUM" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_MENU" MODIFY ("CODENAME" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_MENU" MODIFY ("CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "NIKE"."TBL_REPLY" MODIFY ("EDIT_DT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_REPLY" MODIFY ("REG_DT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_REPLY" MODIFY ("REG_ID" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_REPLY" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NIKE"."TBL_REPLY" MODIFY ("BID" NOT NULL ENABLE);
