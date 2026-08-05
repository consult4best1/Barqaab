-- Data comparison with Abdara

select NodeId from barqaab.dbo.Node  -- NodeId = 17150920001
where NodeId not in (select NodeId from abdara.dbo.Node)

select NodeId from abdara.dbo.Node  -- O record
where NodeId not in (select NodeId from barqaab.dbo.Node)

select NodeId from barqaab.dbo.Node  -- 399 records : additional NodeId = 17150920001
except
select NodeId from abdara.dbo.Node  -- 398 records


select * from DISCO_Abdara.dbo.Field_Data 
where Section_ID in ('05141417160920080','05141417160920080',
'05141417280920354','05141417280920354')


select * from abdara.dbo.Gnodes 
where sectionid not in(select sectionid from barqaab.dbo.Gnodes)

select * from barqaab.dbo.Gnodes 
where sectionid not in(select sectionid from abdara.dbo.Gnodes)

select * from abdara.dbo.Gnodes
except
select * from barqaab.dbo.Gnodes

select * from barqaab.dbo.Gnodes
except
select * from abdara.dbo.Gnodes


select * from abdara.dbo.instfeeders
select * from barqaab.dbo.instfeeders

select * from abdara.dbo.InstSection
select * from barqaab.dbo.InstSection

select * from abdara.dbo.InstPrimaryTransformers
select * from barqaab.dbo.InstPrimaryTransformers

select * from abdara.dbo.Loads
select * from barqaab.dbo.Loads


	/*
	delete from barqaab.dbo.Loads
	delete from barqaab.dbo.InstPrimaryTransformers
	delete from barqaab.dbo.InstSection
	delete from barqaab.dbo.instfeeders
	delete from barqaab.dbo.Gnodes
	delete from barqaab.dbo.Node

	

	exec sp_insertions

	*/