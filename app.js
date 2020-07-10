const express = require("express");
const bodyParser = require("body-parser");
const pathSearcher = require("./pathHandler")
const cors = require('cors')
const app = express();

//const urlencodedParser = bodyParser.urlencoded({ extended: true });
const jsonParser = express.json();

app.use(cors());

app.get("/", function (request, response) {
    response.sendFile(__dirname + '/index.html');
});

app.post("/sendPath", jsonParser, async function (request, response) {
    let pathParts;
    console.log(request.body.path);
    pathParts = await pathSearcher.makeTree(request.body.path);
    response.send(pathParts);
})

app.listen(3000);