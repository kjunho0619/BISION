--------------------------------------------------------
--  DDL for Index AGECOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGECOUNT_PK" ON "AGECOUNT" ("KEYWORDSEQ", "AGE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007136
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007136" ON "CPYRLIMONTHCOUNT" ("CPYRLIKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index YEARCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YEARCOUNT_PK" ON "YEARCOUNT" ("KEYWORDSEQ", "MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index CPYRLIAGECOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CPYRLIAGECOUNT_PK" ON "CPYRLIAGECOUNT" ("CPYRLIKEYWORDSEQ", "AGE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007114
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007114" ON "CPYGENDERCOUNT" ("CPYKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index RLIAGECOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RLIAGECOUNT_PK" ON "RLIAGECOUNT" ("RLIKEYWORDSEQ", "AGE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007108
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007108" ON "CPYRLIKEYWORD" ("CPYRLIKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index CPYRLIYEARCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CPYRLIYEARCOUNT_PK" ON "CPYRLIYEARCOUNT" ("CPYRLIKEYWORDSEQ", "MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007213
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007213" ON "CPYNEWSINFO" ("NEWS_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007107
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007107" ON "CPYKEYWORD" ("CPYKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007110
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007110" ON "CPYMONTHCOUNT" ("CPYKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index CPYYEARCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CPYYEARCOUNT_PK" ON "CPYYEARCOUNT_BK" ("CPYKEYWORDSEQ", "MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index RLIYEARCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RLIYEARCOUNT_PK" ON "RLIYEARCOUNT" ("RLIKEYWORDSEQ", "MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007152
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007152" ON "CPYRLIGENDERCOUNT" ("CPYRLIKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007224
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007224" ON "CPYSTOCK" ("CPYKEYWORDSEQ") 
  ;
--------------------------------------------------------
--  DDL for Index CPYAGECOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CPYAGECOUNT_PK" ON "CPYAGECOUNT_BK" ("CPYKEYWORDSEQ", "AGE") 
  ;
