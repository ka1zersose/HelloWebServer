var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('Hello World! :)');
});

app.get('/bye', function (req, res) {
    res.send('bye bye');
});


app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
    console.log('just a test :)')
});