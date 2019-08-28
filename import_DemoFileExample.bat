@ECHO OFF

set FILE_NAME=DemoFileExample.csv
set DYNAMO_TABLE_NAME=test_DemoFileExample_tbl
set DATA_TYPES=int,string,string,string,int,string,string,string,string,string,string,string,float,float,string,string,string,string,string,int

:: create table test_DemoFileExample_tbl with data: 
:: Primary key = StudentID
:: Primary type: int
python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause