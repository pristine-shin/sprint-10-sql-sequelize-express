// Phase 2
const {
  getAllArtists,
  getLatestArtist,
  getArtistByArtistId,
  addArtist,
  editArtistByArtistId,
  deleteArtistByArtistId,
  getAlbumsForLatestArtist,
  getAlbumsByArtistId,
  getAlbumByAlbumId,
  addAlbumByArtistId,
  editAlbumByAlbumId,
  deleteAlbumByAlbumId,
  getFilteredAlbums,
  getSongsByArtistId,
  getSongsByAlbumId,
  getSongBySongId,
  addSongByAlbumId,
  editSongBySongId,
  deleteSongBySongId
} = require('./data');

const express = require('express');
const app = express();

// Your code here

//Basic Phase 1: Handle JSON In Request
  //Parse the JSON body of a request
  app.use(express.json());

  //Test a JSON request
  app.use((req, res, next) => {
    console.log('Request Body:', req.body);
    next();
  });

//Basic Phase 2: Create Route Handlers
app.get('/artists', (req, res) => {
  res.send(getAllArtists())
})

app.post('/artists', (req, res) => {
  const newArtist = addArtist(req.body);

  res.status(201);
  res.send(newArtist)
})


// DO NOT MODIFY
if (require.main === module) {
  const port = 8000;
  app.listen(port, () => console.log('Server is listening on port', port));
} else {
  module.exports = app;
}
