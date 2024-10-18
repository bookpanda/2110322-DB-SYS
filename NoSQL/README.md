```bash
docker exec -it mongodb mongosh "mongodb://root:1234@localhost:27017"

show dbs

# create/use database
use DATABASE_NAME

# check current database
db

db.dropDatabase()

db.createCollection("post")
db.createCollection("post_w_options", { capped: true, size: 6142800, max: 10000 })
show collections

db.post1.insert({"owner_name": "lionking"})
show collections

db.post.insertOne({title: "Post 1", content: "Content 1", tags: ["tag1", "tag2"]})
db["post"].find()
```