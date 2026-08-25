select feeder_code, feeder, Substation_Code, Substation,
Equip_Type, pole_type,pole_use,pole_height,equip_use,
Equip_Status,Transformer_Make,Transformer_Mounting,
Transformer_Location,Con_Size_A, Con_Size_B, Con_Size_C, Con_Size_N,
Remarks,

  --  '2250220196'

select * from conductor where conductor_type = 'Feeder'

--drop table field_data
--select * into field_data from disco_barqaab.dbo.field_data_24aug

select * from Pole_Type_Use

insert into field_data(gps_no, x, y)
select gps_num, x, y from gps_points

insert into barqaab.dbo.field_data
select * from disco_abdara.dbo.field_data

--delete from drop table disco_barqaab.dbo.field_data 
select * from disco_abdara.dbo.field_data
alter table

SELECT COUNT(*) AS total_columns
FROM sys.columns --58
WHERE object_id = OBJECT_ID('disco_barqaab.dbo.field_data');

 

/*
select distinct pole_phase, equip_type
from field_data
where equip_type in ('Secondary Pole', 'Transformer')

select distinct equip_type
from field_data

select distinct equip_use
from field_data  -- dedicated and general duty

select distinct Equip_Status
from field_data  -- connected or disconnecte : not null

select distinct transformer_mounting
from field_data



SELECT distinct
IDENTITY(INT, 1, 1) AS id,
transformer_mounting
INTO transformer_mounting 
FROM field_data

select *
into barqaab.dbo.equip_type 
from equip_type

select * from barqaab.dbo.Equipment_Type 

SELECT distinct
IDENTITY(INT, 1, 1) AS id,
Transformer_Make 
INTO barqaab.dbo.Transformer_Make 
FROM field_data
*/

	