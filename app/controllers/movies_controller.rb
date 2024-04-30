class MoviesController < ApplicationController

def create
  # Parameters: {"the_title"=>"2", "the_duration"=>"3", "the_description"=>"4", "the_image"=>"5", "the_director_id"=>"6"}

  m = Movie.new
  m.title = params.fetch("the_title")
  m.year = params.fetch("the_title")
  m.duration = params.fetch("the_title")
  m.description = params.fetch("the_title")
  m.image = params.fetch("the_title")
  m.director_id = params.fetch("the_title")
  m.save
  
redirect_to("/movies")

  # Retrieve the user's inputs from params
  # Create a record in the movie table
  # Populate each column with the user input
  # Save

  # Redirect the user back to the /movies URL
end

  def index
    matching_movies = Movie.all
    @list_of_movies = matching_movies.order({ :created_at => :desc })

    render({ :template => "movie_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_movies = Movie.where({ :id => the_id })
    @the_movie = matching_movies.at(0)

    render({ :template => "movie_templates/show" })
  end

  
end
