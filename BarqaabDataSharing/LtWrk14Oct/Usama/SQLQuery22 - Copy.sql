select id, id2, s_e, sequence, * from field_data
where s_e = 's'

select * from node

---group number 01

--- record saving must be started from interface
-- all interface records must be within the range of gpx file,
--except first and 2nd records are dummpy point
--and first dummy point should be feeder with cable length 20 meter and S_E = S
--and second dummy point should be transformer of the value indicated  and S_E = E
-- and then 2nd dummpy new row with cable length 20 meter  and S_E = S
--2ND dummpy point will be extracted from frist dummpy point 
--with post fix section_id.1

-- in the sheet heander as T/F capacity value = equipment_type

-- the 3rd point will (which is actually the first point of gpx file) 
--be started from 2nd dummpy point 

--- formula : ((pole_height - 4) * 0.3048) / (2/3) : this is for mul_suc_lengt
--utilize the lat lon and elev to convert in 3d cordinate x,y,z 
--(search prompt :  formulate to convert lat, lon, elev of gpx file in
--3d cordinate x,y,z to accurately determine the the distacne between two way points)

---  load colums for rs and sc and for 3phase
-- 3phase * 6 and  divided by 3 and place in r y b values of RS

---


 


-- 


