// Require child_process
const { exec } = require('child_process');
const express = require('express');

// Create shutdown function
function shutdown() {
    exec('sudo shutdown now');
}

const app = express();
const port = 3000;

app.get('/', (req, res) => res.send('Hello World! <a href="/shutdown">Shut down</a>'));

app.get('/shutdown', (req, res) => {
  res.send('Shutting down');
  shutdown();
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
