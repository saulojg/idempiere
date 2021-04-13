ALTER TABLE C_BankAccount_Processor DROP COLUMN HostAddress;
ALTER TABLE C_BankAccount_Processor DROP COLUMN HostPort;
ALTER TABLE C_BankAccount_Processor DROP COLUMN ProxyAddress;
ALTER TABLE C_BankAccount_Processor DROP COLUMN ProxyPort;
ALTER TABLE C_BankAccount_Processor DROP COLUMN ProxyLogon;
ALTER TABLE C_BankAccount_Processor DROP COLUMN ProxyPassword;

ALTER TABLE C_PaymentProcessor DROP COLUMN PartnerID;
ALTER TABLE C_PaymentProcessor DROP COLUMN VendorID;
ALTER TABLE C_PaymentProcessor DROP COLUMN UserID;
ALTER TABLE C_PaymentProcessor DROP COLUMN Password;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=200566
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field WHERE AD_Field_ID=200566
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=200567
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field WHERE AD_Field_ID=200567
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=200568
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field WHERE AD_Field_ID=200568
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=200569
;

-- Nov 16, 2012 3:32:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Field WHERE AD_Field_ID=200569
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=7798
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column WHERE AD_Column_ID=7798
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=5059
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column WHERE AD_Column_ID=5059
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=5058
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column WHERE AD_Column_ID=5058
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=7797
;

-- Nov 16, 2012 3:33:07 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
DELETE FROM AD_Column WHERE AD_Column_ID=7797
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200589
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200590
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=200587
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=200570
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=200571
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=200572
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=200573
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=200574
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=200575
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=200576
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=200577
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=200578
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=200579
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=200580
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=200581
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=200582
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=200583
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=200584
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=200585
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=200586
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=200588
;

-- Nov 16, 2012 3:33:50 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=200729
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=200558
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=200589
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=200590
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=200587
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=200559
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=200561
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=200562
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=200563
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=200564
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=200565
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=200570
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=200571
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=200572
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=200573
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=200574
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=200575
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=200576
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=200577
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=200578
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=200579
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=200580
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=200581
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=200582
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=200583
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=200584
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=200585
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=200586
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=200588
;

-- Nov 16, 2012 3:33:58 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=200729
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=200558
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=200559
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=200561
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=200562
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=200563
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=200564
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=200565
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=200570
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y' WHERE AD_Field_ID=200571
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y' WHERE AD_Field_ID=200572
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y' WHERE AD_Field_ID=200573
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y' WHERE AD_Field_ID=200574
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y' WHERE AD_Field_ID=200575
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y' WHERE AD_Field_ID=200576
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y' WHERE AD_Field_ID=200577
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y' WHERE AD_Field_ID=200578
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y' WHERE AD_Field_ID=200579
;

-- Nov 16, 2012 3:34:17 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y' WHERE AD_Field_ID=200580
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y' WHERE AD_Field_ID=200581
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y' WHERE AD_Field_ID=200582
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y' WHERE AD_Field_ID=200583
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y' WHERE AD_Field_ID=200584
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y' WHERE AD_Field_ID=200585
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y' WHERE AD_Field_ID=200586
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y' WHERE AD_Field_ID=200588
;

-- Nov 16, 2012 3:34:18 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y' WHERE AD_Field_ID=200729
;

-- Nov 16, 2012 3:35:09 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2012-11-16 15:35:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200897
;

-- Nov 16, 2012 3:35:13 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
INSERT INTO t_alter_column values('c_bankaccount_processor','UserID','VARCHAR(100)',null,null)
;

-- Nov 16, 2012 3:35:13 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
INSERT INTO t_alter_column values('c_bankaccount_processor','UserID',null,'NOT NULL',null)
;

-- Nov 16, 2012 3:35:20 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2012-11-16 15:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200898
;

-- Nov 16, 2012 3:35:22 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
INSERT INTO t_alter_column values('c_bankaccount_processor','Password','VARCHAR(60)',null,null)
;

-- Nov 16, 2012 3:35:22 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
INSERT INTO t_alter_column values('c_bankaccount_processor','Password',null,'NOT NULL',null)
;

-- Nov 16, 2012 5:17:53 PM SGT
-- Ticket #1001611: Adjust Payment Processor Options for Tenant
UPDATE AD_Field SET IsEncrypted='Y',Updated=TO_TIMESTAMP('2012-11-16 17:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200799
;

SELECT register_migration_script('201211161720_TICKET-1001611.sql') FROM dual
;
