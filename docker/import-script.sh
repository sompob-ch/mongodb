#!/bin/bash
set -e

mongoimport  --drop --uri "mongodb://localhost:27017/training" --collection companies --type json --file /seed-data/companies.json
