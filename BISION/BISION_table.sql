--------------------------------------------------------
--  DDL for Table AGECOUNT
--------------------------------------------------------

  CREATE TABLE "AGECOUNT" 
   (	"KEYWORDSEQ" NUMBER, 
	"AGE" VARCHAR2(100), 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BISION_USER
--------------------------------------------------------

  CREATE TABLE "BISION_USER" 
   (	"USERID" VARCHAR2(100), 
	"USERNAME" VARCHAR2(100), 
	"USERPW" VARCHAR2(200), 
	"USERBIRTH" VARCHAR2(200), 
	"USERADDRESS" VARCHAR2(1000), 
	"USERPHONE" VARCHAR2(200), 
	"USERBELONG" VARCHAR2(300), 
	"USERDIVISION" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYAGECOUNT
--------------------------------------------------------

  CREATE TABLE "CPYAGECOUNT" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"AGE" VARCHAR2(100), 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYAGECOUNT_BK
--------------------------------------------------------

  CREATE TABLE "CPYAGECOUNT_BK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"AGE" VARCHAR2(100), 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYGENDERCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYGENDERCOUNT" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"MALEPCUSERCOUNT" NUMBER, 
	"FEMALEPCUSERCOUNT" NUMBER, 
	"MALEMOBILEUSERCOUNT" NUMBER, 
	"FEMALEMOBILEUSERCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYGENDERCOUNT_BK
--------------------------------------------------------

  CREATE TABLE "CPYGENDERCOUNT_BK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"MALEPCUSERCOUNT" NUMBER, 
	"FEMALEPCUSERCOUNT" NUMBER, 
	"MALEMOBILEUSERCOUNT" NUMBER, 
	"FEMALEMOBILEUSERCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYKEYWORD
--------------------------------------------------------

  CREATE TABLE "CPYKEYWORD" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"CPYKEYWORD" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table CPYKEYWORD_BK
--------------------------------------------------------

  CREATE TABLE "CPYKEYWORD_BK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"CPYKEYWORD" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table CPYMONTHCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYMONTHCOUNT" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"PCCOUNT" NUMBER, 
	"MOBILECOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYMONTHCOUNT_BK
--------------------------------------------------------

  CREATE TABLE "CPYMONTHCOUNT_BK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"PCCOUNT" NUMBER, 
	"MOBILECOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYNEWSINFO
--------------------------------------------------------

  CREATE TABLE "CPYNEWSINFO" 
   (	"NEWS_NO" NUMBER, 
	"CPYKEYWORDSEQ" NUMBER, 
	"NEWS_DIVISION" VARCHAR2(50), 
	"NEWS_TITLE" VARCHAR2(800), 
	"NEWS_CONTENT" CLOB, 
	"NEWS_IMAGE" VARCHAR2(3000), 
	"NEWS_DATE" DATE, 
	"BYLINE" VARCHAR2(300), 
	"EMTANALYSIS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIAGECOUNT
--------------------------------------------------------

  CREATE TABLE "CPYRLIAGECOUNT" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"AGE" VARCHAR2(100), 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIGENDERCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYRLIGENDERCOUNT" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"MALEPCUSERCOUNT" NUMBER, 
	"FEMALEPCUSERCOUNT" NUMBER, 
	"MALEMOBILEUSERCOUNT" NUMBER, 
	"FEMALEMOBILEUSERCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIKEYWORD
--------------------------------------------------------

  CREATE TABLE "CPYRLIKEYWORD" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"CPYKEYWORDSEQ" NUMBER, 
	"RLIKEYWORD" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIKEYWORD_BK
--------------------------------------------------------

  CREATE TABLE "CPYRLIKEYWORD_BK" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"CPYKEYWORDSEQ" NUMBER, 
	"RLIKEYWORD" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIMONTHCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYRLIMONTHCOUNT" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"PCCOUNT" NUMBER, 
	"MOBILECOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYRLIYEARCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYRLIYEARCOUNT" 
   (	"CPYRLIKEYWORDSEQ" NUMBER, 
	"MONTH" DATE, 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYSTOCK
--------------------------------------------------------

  CREATE TABLE "CPYSTOCK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"STOCKVALUE" NUMBER, 
	"COUNTRY" VARCHAR2(20), 
	"MOVEVALUE" VARCHAR2(20), 
	"PER" NUMBER, 
	"SIGN" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table CPYYEARCOUNT
--------------------------------------------------------

  CREATE TABLE "CPYYEARCOUNT" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"MONTH" DATE, 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CPYYEARCOUNT_BK
--------------------------------------------------------

  CREATE TABLE "CPYYEARCOUNT_BK" 
   (	"CPYKEYWORDSEQ" NUMBER, 
	"MONTH" DATE, 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GENDERCOUNT
--------------------------------------------------------

  CREATE TABLE "GENDERCOUNT" 
   (	"KEYWORDSEQ" NUMBER, 
	"MALEPCUSERCOUNT" NUMBER, 
	"FEMALEPCUSERCOUNT" NUMBER, 
	"MALEMOBILEUSERCOUNT" NUMBER, 
	"FEMALEMOBILEUSERCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KEYWORD
--------------------------------------------------------

  CREATE TABLE "KEYWORD" 
   (	"KEYWORDSEQ" NUMBER, 
	"KEYWORD" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table MONTHCOUNT
--------------------------------------------------------

  CREATE TABLE "MONTHCOUNT" 
   (	"KEYWORDSEQ" NUMBER, 
	"PCCOUNT" NUMBER, 
	"MOBILECOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table NEWSINFO
--------------------------------------------------------

  CREATE TABLE "NEWSINFO" 
   (	"NEWS_SEQ" NUMBER, 
	"KEYWORDSEQ" NUMBER, 
	"NEWS_DIVISION" VARCHAR2(50), 
	"NEWS_TITLE" VARCHAR2(800), 
	"NEWS_CONTENT" CLOB, 
	"NEWS_IMAGE" VARCHAR2(3000), 
	"NEWS_DATE" DATE, 
	"BYLINE" VARCHAR2(300), 
	"EMTANALYSIS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table NEWSINFO_BK
--------------------------------------------------------

  CREATE TABLE "NEWSINFO_BK" 
   (	"NEWS_NO" NUMBER, 
	"KEYWORD" VARCHAR2(200), 
	"NEWS_DIVISION" VARCHAR2(50), 
	"NEWS_TITLE" VARCHAR2(800), 
	"NEWS_CONTENT" CLOB, 
	"NEWS_IMAGE" VARCHAR2(3000), 
	"NEWS_DATE" DATE, 
	"BYLINE" VARCHAR2(100), 
	"EMTANALYSIS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table NEWS_BK
--------------------------------------------------------

  CREATE TABLE "NEWS_BK" 
   (	"NEWS_NO" NUMBER, 
	"KEYWORD" VARCHAR2(200), 
	"NEWS_DIVISION" VARCHAR2(50), 
	"NEWS_TITLE" VARCHAR2(800), 
	"NEWS_CONTENT" VARCHAR2(4000), 
	"NEWS_DATE" DATE, 
	"EMTANALYSIS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RLIAGECOUNT
--------------------------------------------------------

  CREATE TABLE "RLIAGECOUNT" 
   (	"RLIKEYWORDSEQ" NUMBER, 
	"AGE" VARCHAR2(100), 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RLIGENDERCOUNT
--------------------------------------------------------

  CREATE TABLE "RLIGENDERCOUNT" 
   (	"RLIKEYWORDSEQ" NUMBER, 
	"MALEPCUSERCOUNT" NUMBER, 
	"FEMALEPCUSERCOUNT" NUMBER, 
	"MALEMOBILEUSERCOUNT" NUMBER, 
	"FEMALEMOBILEUSERCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RLIKEYWORD
--------------------------------------------------------

  CREATE TABLE "RLIKEYWORD" 
   (	"RLIKEYWORDSEQ" NUMBER, 
	"KEYWORDSEQ" NUMBER, 
	"KEYWORD" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table RLIMONTHCOUNT
--------------------------------------------------------

  CREATE TABLE "RLIMONTHCOUNT" 
   (	"RLIKEYWORDSEQ" NUMBER, 
	"PCCOUNT" NUMBER, 
	"MOBILECOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table RLIYEARCOUNT
--------------------------------------------------------

  CREATE TABLE "RLIYEARCOUNT" 
   (	"RLIKEYWORDSEQ" NUMBER, 
	"MONTH" DATE, 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table YEARCOUNT
--------------------------------------------------------

  CREATE TABLE "YEARCOUNT" 
   (	"KEYWORDSEQ" NUMBER, 
	"MONTH" DATE, 
	"PCMONTHCOUNT" NUMBER, 
	"MOBILEMONTHCOUNT" NUMBER
   ) ;
