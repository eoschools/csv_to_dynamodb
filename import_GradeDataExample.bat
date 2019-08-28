@ECHO OFF

set FILE_NAME=GradeDataExample.csv
set DYNAMO_TABLE_NAME=test_GradeDataExample_tbl
set DATA_TYPES=int,string,int,string,int,string,string,string,int


python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause