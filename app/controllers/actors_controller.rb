class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    
  render ({ :template => "actor_templates/index.html.erb" })
  end

     
  def actor_details

    the_id = params.fetch("actor_id")

    @the_actor = Actor.where({ :id => the_id}).at(0)

    char_movie_actor_in_id = Character.where({ :actor_id => @the_actor.id}).at(0).movie_id


    @char_movie_actor_in_id_name = Character.where({ :actor_id => @the_actor.id}).where({ :movie_id => char_movie_actor_in_id}).at(0).name

    @actor_filmography = Movie.where({ :id => char_movie_actor_in_id})

    @actor_characters = Character.where({ :actor_id => @the_actor.id})

# Character.where({ :actor_id => 2})

   render ({ :template => "actor_templates/show.html.erb" })
 end


end
