from __future__ import print_function
from __future__ import division
import argparse
import boto3
import csv
import time

# command line arguments
parser = argparse.ArgumentParser(description='Import data to dynamo db table from CSV files.')
parser.add_argument('csvFile', help='Path to csv file location')
parser.add_argument('table', help='Dynamo db table name')
parser.add_argument('headerFormat', help='Data types for csv line, eg. string,string,int')
parser.add_argument('writeRate', default=5, type=int, nargs='?', help='Number of records to write in table per second (default:5)')
parser.add_argument('delimiter', default=',', nargs='?', help='Delimiter for csv records (default=,)')
parser.add_argument('region', default='us-west-2', nargs='?', help='Dynamo db region name (default=us-west-2')
args = parser.parse_args()
print(args)

# init dynamodb
endpointUrl = "https://dynamodb." + args.region + ".amazonaws.com"
dynamodb = boto3.resource('dynamodb', region_name=args.region, endpoint_url=endpointUrl)
table = dynamodb.Table(args.table)

headerFormat = args.headerFormat.split(",")
print(headerFormat)
#start write records to dynamo db
with open(args.csvFile) as csv_file:
    tokens = csv.reader(csv_file, delimiter=args.delimiter)
    # read first line in file which contains dynamo db field names
    header = next(tokens);
    # rest of file contain new records
    for token in tokens:
       item = {}
       for i,val in enumerate(token):
         if val:
           key = header[i].replace(" ", "")
           if headerFormat[i]=='int':
             val = int(val)
           item[key] = val
       print(item)
       table.put_item(Item = item)

       time.sleep(1/args.writeRate) # to accomodate max write provisioned capacity for table