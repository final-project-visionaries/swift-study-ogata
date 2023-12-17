const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors());
app.get('/', (req, res) => {
  console.log('access is arived!!');
  res.send({ message: '8080GETメッソど' });
});

app.listen(8080, () => {
  console.log('server is running');
});
