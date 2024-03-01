#!/bin/bash
set -e

mongoimport  --drop --uri "mongodb://localhost:27017/not-modified-training" --collection companies --type json --file /seed-data/companies.json
mongoimport  --drop --uri "mongodb://localhost:27017/regex-training" --collection companies --type json --file /seed-data/companies.json
mongoimport  --drop --uri "mongodb://localhost:27017/text-search-training" --collection companies --type json --file /seed-data/companies.json

