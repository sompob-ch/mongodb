### Text Search

- start mongodb in /docker (sample data is companies.json)

- run mongosh
```bash
# docker exec -it <container_name_or_id> mongosh -u <username> -p <password> --authenticationDatabase admin
docker exec -it docker-mongo-1 mongosh -u admin -p password --authenticationDatabase admin
use training
```

- Create a Text Index
```bash
db.companies.createIndex( { category_code: "text", email_address: "text", phone_number: "text" } )
```

- Search for an Exact Phrase
```bash
# Search for a Single Word
db.companies.find( { $text: { $search: "web" } } )
# Match Any of the Search Terms (contain "web" OR "660")
db.companies.find( { $text: { $search: "web 660" } } )
# Search for a Phrase
db.companies.find( { $text: { $search: "\"web 660\"" } } )
```

- Exclude a Term
```bash
db.companies.find( { $text: { $search: "\"web 660 -wetpaint.com\"" } } )
```

- Sort the Results

