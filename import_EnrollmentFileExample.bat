@ECHO OFF

set FILE_NAME=EnrollmentFileExample.csv
set DYNAMO_TABLE_NAME=test_EnrollmentFileExample_tbl
set DATA_TYPES=string,int,string,string,string,int,string,int,int,string,int

# create table test_EnrollmentFileExample_tbl with data: 
# Primary key = CourseID
# Primary type: int

python importDynamoDb.py %1 %FILE_NAME% %DYNAMO_TABLE_NAME% %DATA_TYPES%
pause