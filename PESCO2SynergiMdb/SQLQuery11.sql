insert into Barqaab.dbo.InstSection
select Sequence, s_e,
section_id as SectionId,Feeder as FeederId,
--s= from e= to FromNodeId,	ToNodeId
17280920310,	1020720034,
Pole_Phase as SectionPhases,
'mapping required' Description,
con_size_a PhaseConductorId, con_size_n NeutralConductorId,
121.9 as PhaseToPhaseSpacing_MUL, 91.4 as PhaseToNeutralSpacing_MUL,
9.1 as AveHeightAboveGround_MUL, 40 as PercentDistLoadConstImpedance,
10 as PercentDistLoadConstCurrent,	40 as PercentSpotLoadConstImpedance, 30 as PercentSpotLoadConstCurrent,
'cumulative sum of x, y, from node to node' as SectionLength_MUL,
2 as PercentLoadGrowthRate, 0 as MappingLink, 0 as LoadConnectionPhaseGnd, 0 as	UseEquivSpacing,
0 as IdenticalPhaseConductors, Con_Size_B as PhaseConductor2Id, Con_Size_c as PhaseConductor3Id,
0 as PositionCode, '12.5/7.2 kV cross arm C2-2' as ConfigurationId, 0 as IsContingency,
0 as UseSectAmpRating, 100 as AmpRating, '' as DistLoadCustZone,'' as SpotLoadCustZone,
0 as UseDistCustZone, 0 as UseSpotCustZone, 0 as UseCustClassDistLoadIzpq, 0 as UseCustClassSpotLoadIzpq,
'' as ExposureZone, '' as MitiZone, 
'Unknown' as GrowthZone,'N' as FromElbowOrBayStatus, 'N' as ToElbowOrBayStatus, 100 as ElbowOrBayAmpRating,
'' as DuctBankId, '' as	DuctBankInst, 1 as DuctBankCircuit, 0 as UseDuctBankAmpRating,
0 as UseDuctBankConfiguration, 0 as SpotLoadIsOff, 0 as EnergizeYear, 100 as RetireYear, 0 as LoadCategory,
1 as NeutIsGrounded, 0 as HideMapResults,'' as Note_,'*' as LocationLink, '' as AMSLink, '' as Monitor,
1 as ExpFactPermFail, 1 as ExpFactTempFail, 1 as ExpFactRepair, '' as CostZone


--select * from Barqaab.dbo.InstSection
select Sequence, s_e,
section_id as SectionId,Feeder as FeederId,
--s= from e= to FromNodeId,	ToNodeId
17280920310,	1020720034,
Pole_Phase as SectionPhases,
'mapping required' Description,
con_size_a PhaseConductorId, con_size_n NeutralConductorId,
121.9 as PhaseToPhaseSpacing_MUL, 91.4 as PhaseToNeutralSpacing_MUL,
9.1 as AveHeightAboveGround_MUL, 40 as PercentDistLoadConstImpedance,
10 as PercentDistLoadConstCurrent,	40 as PercentSpotLoadConstImpedance, 30 as PercentSpotLoadConstCurrent,
'cumulative sum of x, y, from node to node' as SectionLength_MUL,
2 as PercentLoadGrowthRate, 0 as MappingLink, 0 as LoadConnectionPhaseGnd, 0 as	UseEquivSpacing,
0 as IdenticalPhaseConductors, Con_Size_B as PhaseConductor2Id, Con_Size_c as PhaseConductor3Id,
0 as PositionCode, '12.5/7.2 kV cross arm C2-2' as ConfigurationId, 0 as IsContingency,
0 as UseSectAmpRating, 100 as AmpRating, '' as DistLoadCustZone,'' as SpotLoadCustZone,
0 as UseDistCustZone, 0 as UseSpotCustZone, 0 as UseCustClassDistLoadIzpq, 0 as UseCustClassSpotLoadIzpq,
'' as ExposureZone, '' as MitiZone, 
'Unknown' as GrowthZone,'N' as FromElbowOrBayStatus, 'N' as ToElbowOrBayStatus, 100 as ElbowOrBayAmpRating,
'' as DuctBankId, '' as	DuctBankInst, 1 as DuctBankCircuit, 0 as UseDuctBankAmpRating,
0 as UseDuctBankConfiguration, 0 as SpotLoadIsOff, 0 as EnergizeYear, 100 as RetireYear, 0 as LoadCategory,
1 as NeutIsGrounded, 0 as HideMapResults,'' as Note_,'*' as LocationLink, '' as AMSLink, '' as Monitor,
1 as ExpFactPermFail, 1 as ExpFactTempFail, 1 as ExpFactRepair, '' as CostZone
			
from DISCO_Abdara.dbo.Field_Data
where s_e =  'E'
/*
select * from DISCO_Abdara.dbo.Field_Data
where s_e = 'E'
*/