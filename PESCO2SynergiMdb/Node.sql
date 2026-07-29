--Node data
select * FROM [Hayatabad-2].dbo.Node Node

SELECT distinct Node.nodeid, node.x, node.y,
SUBSTRING(FORMAT(Field_Data.gps_no, '0'),1,20) Field_Data_gps_no,
SUBSTRING(FORMAT(gps_points.gps_num, '0'),1,20) gps_points_gps_num, gps_points.x gps_points_x, 
gps_points.y gps_points_y
FROM [Hayatabad-2].dbo.Node Node
join (select * from DISCO.dbo.Field_Data a 
	  where SUBSTRING(FORMAT(a.gps_no, '0'),1,20) in (select nodeid from [Hayatabad-2].dbo.node)) Field_Data
on node.nodeid = SUBSTRING(FORMAT(Field_Data.gps_no, '0'),1,20)

join (select * from DISCO.dbo.gps_points b 
	  where SUBSTRING(FORMAT(b.gps_num, '0'),1,20) in (select nodeid from [Hayatabad-2].dbo.node)  ) gps_points
on node.nodeid = SUBSTRING(FORMAT(gps_points.gps_num, '0'),1,20)

where Node.nodeid in (SELECT SUBSTRING(FORMAT(gps_no, '0'),1,20) 
					  FROM DISCO.dbo.Field_Data)

exec disco.dbo.Sp_Select_Node

SELECT Node.nodeid, node.x, node.y
FROM [Hayatabad-2].dbo.Node Node
where Node.nodeid in (SELECT SUBSTRING(FORMAT(gps_no, '0'),1,20) 
FROM DISCO.dbo.Field_Data)

select * from disco.dbo.gps_points
where SUBSTRING(FORMAT(gps_num, '0'),1,20) in (SELECT nodeid
FROM [Hayatabad-2].dbo.Node)



SELECT  *
FROM [Hayatabad-2].dbo.Node
where nodeid not in (SELECT SUBSTRING(FORMAT(gps_no, '0'),1,20) FROM DISCO.dbo.Field_Data)



-- Table Node
select * from [Hayatabad-2].dbo.Node
where Node.nodeid not in (SELECT SUBSTRING(FORMAT(gps_no, '0'),1,20) 
					  FROM DISCO.dbo.Field_Data)

-- Table GNodes
select * from [Hayatabad-2].dbo.GNodes
where sectionid not in (select section_id from disco.dbo.Field_Data)

--Table InstSection 
select * from [Hayatabad-2].dbo.InstSection
where sectionid in (select section_id from disco.dbo.Field_Data)

--Table InstFeeders
select * from [Hayatabad-2].dbo.InstFeeders
where FeederId in (select feeder from disco.dbo.Field_Data)

--Table InstPrimaryTransformers
select * from [Hayatabad-2].dbo.InstPrimaryTransformers
where sectionid in (select section_id from disco.dbo.Field_Data)

--Table Loads
select * from [Hayatabad-2].dbo.Loads
where sectionid in (select section_id from disco.dbo.Field_Data)


