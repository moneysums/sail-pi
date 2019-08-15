// Require child_process
const { exec } = require('child_process');
const express = require('express');

// Create shutdown function
function shutdown() {
  exec('sudo shutdown now');
}

// Create shutdown function
function update() {
  exec('bash ./scripts/update.sh');
}

const app = express();
const port = 3000;

let links = '<li><a href="/">Home</a></li>';
links += '<li><a href="/shutdown">Shut down</a></li>';
links += '<li><a href="/update">Update</a></li>';
links = `<ul>${links}</ul>`;

app.get('/', (req, res) => res.send(`Hello World!${links}`));

app.get('/shutdown', (req, res) => {
  setTimeout(shutdown, 5000);
  res.send(`Shutting down in 5 seconds${links}`);
});

app.get('/update', (req, res) => {
  update();
  res.send(`Updating ${links}`);
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
