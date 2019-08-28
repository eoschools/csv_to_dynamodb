# csv_to_dynamodb
Example project for importing csv data to AWS DynamoDb

The main idea is to have .bat files which describes 3 parameters for import script:

FILE_NAME - file to read and import e.g.: TestScoresExample.csv
DYNAMO_TABLE_NAME - dynamo db table name (created manually before importing tasks), e.g. test_TestScoresExample_tbd
DATA_TYPES - describe data types for csv columns, e.g. int,string,string,int,int

When you execute .bat file, the import starts.

So please examine importDynamoDb.py for more details.

Also, region, csv delimiter and writeRate to DynamoDb is configurable in the script.
