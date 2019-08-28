@ECHO OFF

set FILE_NAME=TestScoresExample.csv
set DYNAMO_TABLE_NAME=test_TestScoresExample_tbd
set DATA_TYPES=int,string,string,int,int

python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause