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
//Basic Phase 1 Handle JSON In Request + Parse the JSON body of a request
app.use(express.json());
app.use((req, res, next) => {
  console.log('Request Body:', req.body);
  next();
});

//Basic Phase 2 Create Route Handlers
app.get('/artists', (req, res) => {
  res.json(getAllArtists());
})

app.post('/artists', (req, res) => {
  res.status(201);
  res.json(addArtist(req.body))
})

//BONUS
//Get the latest artist added
app.get('/artists/latest', (req, res) => {
  res.json(getLatestArtist())
})

//Get all albums of the latest artist
app.get('/artists/latest/albums', (req, res) => {
  res.json(getAlbumsForLatestArtist())
})

//LONG PRACTICE
//Get a specific artist's details based on artistId
app.get('/artists/:artistId', (req, res) => {
  res.json(getArtistByArtistId(req.params.artistId))
})

//Edit a specified artist by artistId
app.put('/artists/:artistId', (req, res) => {
  res.json(editArtistByArtistId(req.params.artistId, req.body))
})

app.patch('/artists/:artistId', (req, res) => {
  res.json(editArtistByArtistId(req.params.artistId, req.body))
})

// Delete a specified artist by artistId
app.delete('/artists/:artistId', (req, res) => {
  deleteArtistByArtistId(req.params.artistId);
  res.json({
    "message": "Successfully deleted"
  })
})

// Get all albums of a specific artist based on artistId
app.get('/artists/:artistId/albums', (req, res) => {
  res.json(getAlbumsByArtistId(req.params.artistId))
})

// Get a specific album's details based on albumId
app.get('/albums/:albumId', (req, res) => {
  res.json(getAlbumByAlbumId(req.params.albumId))
})

// Add an album to a specific artist based on artistId
app.post('/artists/:artistId/albums', (req, res) => {
  res.status(201);
  res.json(addAlbumByArtistId(req.params.artistId, req.body))
})

//Edit a specified album by albumId
app.put('/albums/:albumId', (req, res) => {
  res.json(editAlbumByAlbumId(req.params.albumId, req.body))
})

app.patch('/albums/:albumId', (req, res) => {
  res.json(editAlbumByAlbumId(req.params.albumId, req.body))
})

//Delete a specified album by albumId
app.delete('/albums/:albumId', (req, res) => {
  deleteAlbumByAlbumId(req.params.albumId)
  res.json( {
    "message": "Successfully deleted"
  })
})

// Get all albums with names filtered by first letter
app.get('/albums', (req, res) => {
  res.json(getFilteredAlbums(req.query.startsWith))
})

// Get a specific song's details based on songId
app.get('/songs/:songId', (req, res) => {
  res.json(getSongBySongId(req.params.songId))
})

// Add a song to a specific album based on albumId
app.post('/albums/:albumId/songs', (req, res) => {
  res.status(201)
  res.json(addSongByAlbumId(req.params.albumId, req.body))
})

// Get all songs of a specific artist based on artistId
app.get('/artists/:artistId/songs', (req, res) => {
  res.json(getSongsByArtistId(req.params.artistId))
})

// Get all songs of a specific album based on albumId
app.get('/albums/:albumId/songs', (req, res) => {
  res.json(getSongsByAlbumId(req.params.albumId))
})

// Edit a specified song by songId
app.put('/songs/:songId', (req, res) => {
  res.json(editSongBySongId(req.params.songId, req.body))
})

app.patch('/songs/:songId', (req, res) => {
  res.json(editSongBySongId(req.params.songId, req.body))
})

// Delete a specified song by songId
app.delete('/songs/:songId', (req, res) => {
  deleteSongBySongId(req.params.songId);
  res.json( {
    "message": "Successfully deleted"
  })
})





// DO NOT MODIFY
if (require.main === module) {
  const port = 8000;
  app.listen(port, () => console.log('Server is listening on port', port));
} else {
  module.exports = app;
}
