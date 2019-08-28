@ECHO OFF

set FILE_NAME=CourseRequestFileExample.csv
set DYNAMO_TABLE_NAME=test_CourseRequestFileExample_tbl
set DATA_TYPES=int,string,int,string

:: create table test_CourseRequestFileExample_tbl with data: 
:: Primary key = StudentID
:: Primary type: int
:: Sort key = CourseID
:: Sort type: int

python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause