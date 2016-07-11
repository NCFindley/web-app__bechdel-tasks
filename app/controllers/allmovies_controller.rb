MyApp.get "/allmovies" do
	@moviearray = Movie.top_movies_array

	if Movie.find_by({"title" => @moviearray}) != nil
    @new_movie = Movie.find_by({"title" => @moviearray})
  	else
    @new_movie = Movie.new
    @new_movie.title = @movie_details["Title"]
    @new_movie.director = @movie_details["Director"]
    @new_movie.image = @movie_details["Poster"]
    @new_movie.save
  	end

	erb :"movies/allmovies"
end

