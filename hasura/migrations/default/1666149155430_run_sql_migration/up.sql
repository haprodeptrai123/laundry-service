-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Customers(
	Customer_ID Char(10) NOT NULL,
	First_Name Varchar(50) NULL,
	Last_Name Varchar(50) NULL,
	Email Varchar(50) NULL,
	Phone int NULL,
	Address Varchar(50) NULL,
	Password Varchar(50) NULL,
	Active Boolean NULL,
 CONSTRAINT PK_Customers PRIMARY KEY 
(
	Customer_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Equipment]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Equipment(
	Equipment_ID Char(10) NOT NULL,
	Equipment_name Varchar(50) NULL,
	Equipment_Description Varchar(100) NULL,
	Equipment_Price Double precision NULL,
 CONSTRAINT PK_Equipment PRIMARY KEY 
(
	Equipment_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Managers]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Managers(
	Manager_ID Char(10) NOT NULL,
	First_Name Varchar(50) NULL,
	Last_Name Varchar(50) NULL,
	Email Varchar(50) NULL,
	Phone int NULL,
	Password Varchar(50) NULL,
	Working_Status Boolean NULL,
	Store_ID Char(10) NOT NULL,
 CONSTRAINT PK_Managers PRIMARY KEY 
(
	Manager_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[OrderDetail]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE OrderDetail(
	Order_Deatail_ID Char(10) NOT NULL,
	Order_ID Char(10) NOT NULL,
	Product_ID Char(10) NOT NULL,
	Service_ID Char(10) NOT NULL,
	Equipment_ID Char(10) NOT NULL,
	Voucher_ID Char(10) NOT NULL,
	Quantity int NULL,
	Weight int NULL,
 CONSTRAINT PK_OrderDetail PRIMARY KEY 
(
	Order_Deatail_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Orders]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Orders(
	Order_ID Char(10) NOT NULL,
	Customer_ID Char(10) NOT NULL,
	Order_Date date NULL,
	Staff_ID Char(10) NOT NULL,
	Manager_ID Char(10) NOT NULL,
	Store_ID Char(10) NOT NULL,
	Required_Giving_Time Timestamp(3) NULL,
	Required_Deliver_Time Timestamp(3) NULL,
 CONSTRAINT PK_Orders PRIMARY KEY 
(
	Order_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[ProcessPipeline]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE ProcessPipeline(
	Process_Pipeline_ID Char(10) NOT NULL,
	Process_Pipeline_Name Varchar(50) NULL,
	Process_Pipeline_Status Boolean NULL,
	Order_Detail_ID Char(10) NOT NULL,
	Staff_ID Char(10) NOT NULL,
	Manager_ID Char(10) NOT NULL,
 CONSTRAINT PK_ProcessPipeline PRIMARY KEY 
(
	Process_Pipeline_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Product]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Product(
	Product_ID Char(10) NOT NULL,
	Product_Name Varchar(50) NULL,
	Product_Price Double precision NULL,
 CONSTRAINT PK_Product PRIMARY KEY 
(
	Product_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Schedule]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Schedule(
	Schedule_ID Char(10) NOT NULL,
	Date date NULL,
	Slot int NULL,
 CONSTRAINT PK_Schedule PRIMARY KEY 
(
	Schedule_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Service]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Service(
	Service_ID Char(10) NOT NULL,
	Service_Name Varchar(50) NULL,
	Service_Description Varchar(100) NULL,
	Min_Weight int NULL,
	Max_Weight int NULL,
	Service_Price Double precision NULL,
 CONSTRAINT PK_Service PRIMARY KEY 
(
	Service_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Staffs]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Staffs(
	Staff_ID Char(10) NOT NULL,
	First_Name Varchar(50) NULL,
	Last_Name Varchar(50) NULL,
	Email Varchar(50) NULL,
	Phone int NULL,
	Password Varchar(50) NULL,
	Working_Status Boolean NULL,
	Store_ID Char(10) NOT NULL,
	Manager_ID Char(10) NOT NULL,
 CONSTRAINT PK_Staffs PRIMARY KEY 
(
	Staff_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Stores]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Stores(
	Store_ID Char(10) NOT NULL,
	Store_Name Varchar(50) NULL,
	Phone int NULL,
	Email Varchar(50) NULL,
	Street Varchar(50) NULL,
	District Varchar(50) NULL,
	City Varchar(50) NULL,
	Zip_Code int NULL,
 CONSTRAINT PK_Stores PRIMARY KEY 
(
	Store_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[TrackingOrder]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TrackingOrder(
	Order_Detail_ID Char(10) NOT NULL,
	Time Timestamp(3) NULL,
	Order_Status Boolean NULL
);
/* SQLINES DEMO *** le [dbo].[Transaction]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Transaction(
	Transaction_ID Char(10) NOT NULL,
	Order_ID Char(10) NOT NULL,
	Customer_ID Char(10) NOT NULL,
	Transaction_date date NULL,
 CONSTRAINT PK_Transaction PRIMARY KEY 
(
	Transaction_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[Voucher]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Voucher(
	Voucher_ID Char(10) NOT NULL,
	Voucher_Name Varchar(50) NULL,
	Voucher_Description Varchar(100) NULL,
	Start_Date Timestamp(3) NULL,
	End_Date Timestamp(3) NULL,
	Service_ID Char(10) NOT NULL,
	Condition_Weight int NULL,
	VoucherQuantity int NULL,
 CONSTRAINT PK_Voucher PRIMARY KEY 
(
	Voucher_ID 
) 
);
/* SQLINES DEMO *** le [dbo].[WorkSchedule]    Script Date: 10/15/2022 9:48:01 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE WorkSchedule(
	Schedule_ID Char(10) NOT NULL,
	Staff_ID Char(10) NOT NULL,
	Manager_ID Char(10) NOT NULL
);
ALTER TABLE Managers  ADD  CONSTRAINT FK_Managers_Stores FOREIGN KEY(Store_ID)
REFERENCES Stores (Store_ID);
 
ALTER TABLE Managers VALIDATE CONSTRAINT FK_Managers_Stores;
 
ALTER TABLE OrderDetail  ADD  CONSTRAINT FK_OrderDetail_Equipment FOREIGN KEY(Equipment_ID)
REFERENCES Equipment (Equipment_ID);
 
ALTER TABLE OrderDetail VALIDATE CONSTRAINT FK_OrderDetail_Equipment;
 
ALTER TABLE OrderDetail  ADD  CONSTRAINT FK_OrderDetail_Orders FOREIGN KEY(Order_ID)
REFERENCES Orders (Order_ID);
 
ALTER TABLE OrderDetail VALIDATE CONSTRAINT FK_OrderDetail_Orders;
 
ALTER TABLE OrderDetail  ADD  CONSTRAINT FK_OrderDetail_Product FOREIGN KEY(Product_ID)
REFERENCES Product (Product_ID);
 
ALTER TABLE OrderDetail VALIDATE CONSTRAINT FK_OrderDetail_Product;
 
ALTER TABLE OrderDetail  ADD  CONSTRAINT FK_OrderDetail_Service FOREIGN KEY(Service_ID)
REFERENCES Service (Service_ID);
 
ALTER TABLE OrderDetail VALIDATE CONSTRAINT FK_OrderDetail_Service;
 
ALTER TABLE OrderDetail  ADD  CONSTRAINT FK_OrderDetail_Voucher FOREIGN KEY(Voucher_ID)
REFERENCES Voucher (Voucher_ID);
 
ALTER TABLE OrderDetail VALIDATE CONSTRAINT FK_OrderDetail_Voucher;
 
ALTER TABLE Orders  ADD  CONSTRAINT FK_Orders_Customers FOREIGN KEY(Customer_ID)
REFERENCES Customers (Customer_ID);
 
ALTER TABLE Orders VALIDATE CONSTRAINT FK_Orders_Customers;
 
ALTER TABLE Orders  ADD  CONSTRAINT FK_Orders_Managers FOREIGN KEY(Manager_ID)
REFERENCES Managers (Manager_ID);
 
ALTER TABLE Orders VALIDATE CONSTRAINT FK_Orders_Managers;
 
ALTER TABLE Orders  ADD  CONSTRAINT FK_Orders_Staffs FOREIGN KEY(Staff_ID)
REFERENCES Staffs (Staff_ID);
 
ALTER TABLE Orders VALIDATE CONSTRAINT FK_Orders_Staffs;
 
ALTER TABLE Orders  ADD  CONSTRAINT FK_Orders_Stores FOREIGN KEY(Store_ID)
REFERENCES Stores (Store_ID);
 
ALTER TABLE Orders VALIDATE CONSTRAINT FK_Orders_Stores;
 
ALTER TABLE ProcessPipeline  ADD  CONSTRAINT FK_ProcessPipeline_Managers FOREIGN KEY(Manager_ID)
REFERENCES Managers (Manager_ID);
 
ALTER TABLE ProcessPipeline VALIDATE CONSTRAINT FK_ProcessPipeline_Managers;
 
ALTER TABLE ProcessPipeline  ADD  CONSTRAINT FK_ProcessPipeline_OrderDetail FOREIGN KEY(Order_Detail_ID)
REFERENCES OrderDetail (Order_Deatail_ID);
 
ALTER TABLE ProcessPipeline VALIDATE CONSTRAINT FK_ProcessPipeline_OrderDetail;
 
ALTER TABLE ProcessPipeline  ADD  CONSTRAINT FK_ProcessPipeline_Staffs FOREIGN KEY(Staff_ID)
REFERENCES Staffs (Staff_ID);
 
ALTER TABLE ProcessPipeline VALIDATE CONSTRAINT FK_ProcessPipeline_Staffs;
 
ALTER TABLE Staffs  ADD  CONSTRAINT FK_Staffs_Managers FOREIGN KEY(Manager_ID)
REFERENCES Managers (Manager_ID);
 
ALTER TABLE Staffs VALIDATE CONSTRAINT FK_Staffs_Managers;
 
ALTER TABLE Staffs  ADD  CONSTRAINT FK_Staffs_Stores FOREIGN KEY(Store_ID)
REFERENCES Stores (Store_ID);
 
ALTER TABLE Staffs VALIDATE CONSTRAINT FK_Staffs_Stores;
 
ALTER TABLE TrackingOrder  ADD  CONSTRAINT FK_TrackingOrder_OrderDetail FOREIGN KEY(Order_Detail_ID)
REFERENCES OrderDetail (Order_Deatail_ID);
 
ALTER TABLE TrackingOrder VALIDATE CONSTRAINT FK_TrackingOrder_OrderDetail;
 
ALTER TABLE Transaction  ADD  CONSTRAINT FK_Transaction_Customers FOREIGN KEY(Customer_ID)
REFERENCES Customers (Customer_ID);
 
ALTER TABLE Transaction VALIDATE CONSTRAINT FK_Transaction_Customers;
 
ALTER TABLE Transaction  ADD  CONSTRAINT FK_Transaction_Orders FOREIGN KEY(Order_ID)
REFERENCES Orders (Order_ID);
 
ALTER TABLE Transaction VALIDATE CONSTRAINT FK_Transaction_Orders;
 
ALTER TABLE Voucher  ADD  CONSTRAINT FK_Voucher_Service FOREIGN KEY(Service_ID)
REFERENCES Service (Service_ID);
 
ALTER TABLE Voucher VALIDATE CONSTRAINT FK_Voucher_Service;
 
ALTER TABLE WorkSchedule  ADD  CONSTRAINT FK_WorkSchedule_Managers FOREIGN KEY(Manager_ID)
REFERENCES Managers (Manager_ID);
 
ALTER TABLE WorkSchedule VALIDATE CONSTRAINT FK_WorkSchedule_Managers;
 
ALTER TABLE WorkSchedule  ADD  CONSTRAINT FK_WorkSchedule_Schedule FOREIGN KEY(Schedule_ID)
REFERENCES Schedule (Schedule_ID);
 
ALTER TABLE WorkSchedule VALIDATE CONSTRAINT FK_WorkSchedule_Schedule;
 
ALTER TABLE WorkSchedule  ADD  CONSTRAINT FK_WorkSchedule_Staffs FOREIGN KEY(Staff_ID)
REFERENCES Staffs (Staff_ID);
 
ALTER TABLE WorkSchedule VALIDATE CONSTRAINT FK_WorkSchedule_Staffs;
