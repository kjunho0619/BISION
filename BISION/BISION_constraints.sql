--------------------------------------------------------
--  Ref Constraints for Table CPYAGECOUNT_BK
--------------------------------------------------------

  ALTER TABLE "CPYAGECOUNT_BK" ADD CONSTRAINT "CPYAGECOUNT_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD_BK" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYGENDERCOUNT_BK
--------------------------------------------------------

  ALTER TABLE "CPYGENDERCOUNT_BK" ADD CONSTRAINT "CPYGENDERCOUNT_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD_BK" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYMONTHCOUNT_BK
--------------------------------------------------------

  ALTER TABLE "CPYMONTHCOUNT_BK" ADD CONSTRAINT "CPYMONTHCOUNT_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD_BK" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYNEWSINFO
--------------------------------------------------------

  ALTER TABLE "CPYNEWSINFO" ADD CONSTRAINT "CPYNEWSINFO_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYRLIAGECOUNT
--------------------------------------------------------

  ALTER TABLE "CPYRLIAGECOUNT" ADD CONSTRAINT "CPYRLIAGECOUNT_FK" FOREIGN KEY ("CPYRLIKEYWORDSEQ")
	  REFERENCES "CPYRLIKEYWORD" ("CPYRLIKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYRLIGENDERCOUNT
--------------------------------------------------------

  ALTER TABLE "CPYRLIGENDERCOUNT" ADD CONSTRAINT "CPYRLIGENDERCOUNT_FK" FOREIGN KEY ("CPYRLIKEYWORDSEQ")
	  REFERENCES "CPYRLIKEYWORD" ("CPYRLIKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYRLIKEYWORD_BK
--------------------------------------------------------

  ALTER TABLE "CPYRLIKEYWORD_BK" ADD CONSTRAINT "CPYRLIKEYWORD_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD_BK" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYRLIMONTHCOUNT
--------------------------------------------------------

  ALTER TABLE "CPYRLIMONTHCOUNT" ADD CONSTRAINT "CPYRLIMONTHCOUNT_FK" FOREIGN KEY ("CPYRLIKEYWORDSEQ")
	  REFERENCES "CPYRLIKEYWORD" ("CPYRLIKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYRLIYEARCOUNT
--------------------------------------------------------

  ALTER TABLE "CPYRLIYEARCOUNT" ADD CONSTRAINT "CPYRLIYEARCOUNT_FK" FOREIGN KEY ("CPYRLIKEYWORDSEQ")
	  REFERENCES "CPYRLIKEYWORD" ("CPYRLIKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYSTOCK
--------------------------------------------------------

  ALTER TABLE "CPYSTOCK" ADD CONSTRAINT "STOCK_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD" ("CPYKEYWORDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CPYYEARCOUNT_BK
--------------------------------------------------------

  ALTER TABLE "CPYYEARCOUNT_BK" ADD CONSTRAINT "CPYYEARCOUNT_FK" FOREIGN KEY ("CPYKEYWORDSEQ")
	  REFERENCES "CPYKEYWORD_BK" ("CPYKEYWORDSEQ") ENABLE;
