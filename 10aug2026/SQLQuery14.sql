select feeder_code, feeder, Substation_Code, Substation,
Equip_Type, 
pole_type,
pole_use,
pole_height,
equip_use,
Equip_Status,
Transformer_Make,
Transformer_Mounting,
Transformer_Location,
Remarks,
* from field_data

/*
select distinct pole_use
from field_data

select distinct equip_type
from field_data

select distinct equip_use
from field_data  -- dedicate and general duty

select distinct Equip_Status
from field_data  -- connected or disconnecte : not null

select distinct transformer_mounting
from field_data

*/