@ECHO OFF

set FILE_NAME=StaffFileExample.csv
set DYNAMO_TABLE_NAME=test_StaffFileExample_tbl
set DATA_TYPES=string,string,string,string,string,string

python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause