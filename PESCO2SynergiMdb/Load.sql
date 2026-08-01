WITH result AS (
    SELECT 
  (cast((rs_con3 + LC_Con + SI_Con + LI_Con + PB_Con + AG_Con + ST_Con) as int)/3
+ case when RS_Con1 + SC_Con >=1 then RS_Con1 + SC_Con else 0 end ) Phase1Customers,

(cast((rs_con3 + LC_Con + SI_Con + LI_Con + PB_Con + AG_Con + ST_Con) as int)/3
+ case when RS_Con1 + SC_Con >=1 then RS_Con1 + SC_Con else 0 end ) Phase2Customers,

(cast((rs_con3 + LC_Con + SI_Con + LI_Con + PB_Con + AG_Con + ST_Con) as int)/3
+ case when RS_Con1 + SC_Con >=1 then RS_Con1 + SC_Con else 0 end ) Phase3Customers,
   RS_Con3 * 3 + LC_Con * 3 + SI_Con * 3 + LI_Con * 3 + PB_Con * 3 + AG_Con * 3 + ST_Con * 3
   + case REPLACE(Pole_Phase, '-', '') when 'R' then rs_con1 else 0 end
   + case REPLACE(Pole_Phase, '-', '') when 'R' then SC_Con else 0 end
   as phase1kva
   
   ,0 as phase2kva 
   ,0 as phase3kva 
   ,*
    FROM disco_abdara.dbo.field_data
)
SELECT 
    id, section_id,
    CASE 
        WHEN Phase1Customers <3 THEN
             case when cast(Phase1Customers as int) % 3 in (1,2) then 1 else 0 end

        WHEN Phase1Customers >=3 THEN cast(Phase1Customers as int) / 3 
           + case when cast(Phase1Customers as int) % 3 in (1,2) then 1 else 0 end

        ELSE 0
    END AS Phase1Customers,
    --Phase1Customers p1c,

    CASE 
        WHEN Phase2Customers <3 THEN 
             case when cast(Phase2Customers as int) % 3 in (2) then 1 else 0 end

        WHEN Phase2Customers >=3 THEN cast(Phase2Customers as int) / 3 
           + case when cast(Phase2Customers as int) % 3 in (2) then 1 else 0 end

        ELSE 0
    END AS Phase2Customers,
    --Phase2Customers p2c,

    CASE 
       WHEN Phase3Customers >=3 THEN cast(Phase3Customers as int) / 3
       ELSE 0
    END AS Phase3Customers
    --,Phase3Customers p3c
    ,phase1kva, phase2kva, phase3kva,
    Pole_Phase
FROM result
/*

select phase1kva, phase2kva, phase3kva
, * from abdara.dbo.Loads

*/