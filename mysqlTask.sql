SELECT Movie.Title, Media.Type, Media.URL
FROM Movie
JOIN Media ON Movie.MovieID = Media.MovieID;
SELECT Genre.Name
FROM Genre
JOIN MovieGenre ON Genre.GenreID = MovieGenre.GenreID
WHERE MovieGenre.MovieID = <specific_movie_id>;
SELECT Review.Rating, Review.Comment, User.Username
FROM Review
JOIN User ON Review.UserID = User.UserID
WHERE Review.MovieID = <specific_movie_id>;
SELECT Movie.Title, GROUP_CONCAT(Role.Name) AS Roles
FROM Movie
JOIN MovieArtistRole ON Movie.MovieID = MovieArtistRole.MovieID
JOIN Artist ON MovieArtistRole.ArtistID = Artist.ArtistID
JOIN Role ON MovieArtistRole.RoleID = Role.RoleID
WHERE Artist.Name = '<specific_artist_name>'
GROUP BY Movie.Title;
