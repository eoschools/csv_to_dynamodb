@ECHO OFF

set FILE_NAME=AP.IBExamDataExample.csv
set DYNAMO_TABLE_NAME=test_AP.IBExamDataExample_tbl
set DATA_TYPES=int,string,string,int,int


:: create table test_AP.IBExamDataExample_tbl with data: 
:: Primary key = StudentID
:: Primary type: int
:: Sort key = Test Subject
:: Sort type: string

python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause