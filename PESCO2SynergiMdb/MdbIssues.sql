select * from barqaab.dbo.Gnodes
where SectionId not in (
select section_id from disco_abdara.dbo.Field_Data
)

select * from abdara.dbo.Gnodes
where SectionId not in (
select section_id from disco_abdara.dbo.Field_Data
)

instprimaryTransformer
transformerType 50 + KVA = field_data : Equip_Size when Equip_Type = 'Transformer'

SELECT e.Equip_Type, Equip_Size, * from  disco_abdara.dbo.Field_Data e


need to see RYB in section_phase in instsection

phase1kva value not comming from phase1custoemr, to phase3customer 


sai_control table: add same row from adbara gulraiz