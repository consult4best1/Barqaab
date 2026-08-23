select feeder_code, feeder, Substation_Code, Substation,
Equip_Type, pole_type,pole_use,pole_height,equip_use,
Equip_Status,Transformer_Make,Transformer_Mounting,
Transformer_Location,Con_Size_A, Con_Size_B, Con_Size_C, Con_Size_N,
Remarks,
select gps_no, x,y, con_size_a,con_size_b, con_size_c,con_size_n,
pole_phase, 
* from field_data
where rs_con1 > 0

select * from GPS_Points

/*
select distinct pole_use
from field_data

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

	