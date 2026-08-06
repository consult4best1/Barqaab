select * from barqaab.dbo.Gnodes
where SectionId not in (
select section_id from disco_abdara.dbo.Field_Data
)

select * from abdara.dbo.Gnodes
where SectionId not in (
select section_id from disco_abdara.dbo.Field_Data
)

-- Done
instprimaryTransformer
transformerType 50 + KVA = field_data : Equip_Size when Equip_Type = 'Transformer'

--exec sp_insertions

SELECT e.Equip_Type, Equip_Size, * from  disco_abdara.dbo.Field_Data e


need to see RYB in section_phase in Loads

phase1kva value not comming from phase1custoemr, to phase3customer 


-- sai_control table: add same row from adbara gulraiz Done

select Phase1Customers, Phase2Customers,Phase3Customers,
	   phase1kva, phase2kva,phase3kva,
* from barqaab.dbo.Loads a

select rs_con1,  * from disco_abdara.dbo.field_data a

select * from barqaab.dbo.sai_control

select * from barqaab.dbo.instfeeders
select distinct feeder, substation,null,null,null,null
	from DISCO_Abdara.dbo.Field_Data a
	where feeder not in (select FeederId from barqaab.dbo.instfeeders b
	where b.feederid = a.feeder and b.substationid = a.substation)
	and substation not in (select substationid from barqaab.dbo.instfeeders);


