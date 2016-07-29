library(httr)

url <- "http://ec2-52-29-124-65.eu-central-1.compute.amazonaws.com:2990/jira/rest/api/2/issue/"

res <- POST(url,
  body = "-u janko.thyson:!(JttWism)/23,aN#wschA --data @data.json -H Content-Type: application/json",
  encode = "json"
)

res <- POST(url, "-u" = "myuser:mypassword", "--data" = "@data.json",
  "-H" = "Content-Type: application/json")
content(res)

httr_options()
httr_options("post")
curl_docs("user")

POST("http://aws-url:8080/jira/rest/api/2/issue/",
  "-u" = "myuser:mypassword",
  "--data" = "@data.json",
  "-H" = "Content-Type: application/json")

res <- POST(url,
  body = "-u myuser:mypassword --data @data.txt -H Content-Type: application/json",
  encode = "json"
)
res <- POST(url,
  body = "-u janko.thyson:!(JttWism)/23,aN#wschA --data @data.txt",
  encode = "json"
)


# New try -----------------------------------------------------------------

library(httr)

url <- "http://ec2-52-29-124-65.eu-central-1.compute.amazonaws.com:8080/rest/api/latest/issue/CRUD-1"

res <- GET(url, authenticate("janko.thyson", "!(JttWism)/23,aN#wschA"))
tmp <- content(res)
tmp$fields$issuetype

url <- "http://ec2-52-29-124-65.eu-central-1.compute.amazonaws.com:8080/rest/api/latest/issue/"
res <- POST(url,
  authenticate("janko.thyson", "!(JttWism)/23,aN#wschA"),
  body = upload_file("data.json"),
  encode = "json"
)
content(res)
