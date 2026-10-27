
for field_Data stored procedure execution sequence 

1. Gps2FiledData_Insert

2. 

rs_3phase_load


disco_field_data_max_id()

dt.Rows[NewRecordId]["id"] = NewRecordId;

DataTable dtId = new DataTable();
dtId = discoDb.disco_field_data_max_id();

dt.Rows[dataTableIndex]["id"] = dtId.Rows[0]["Column1"];

btnGpsSrh.PerformClick();
btnLast.PerformClick();