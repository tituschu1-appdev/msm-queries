class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    
  render ({ :template => "actor_templates/index.html.erb" })
  end

     
  def actor_details

    the_id = params.fetch("actor_id")

    @the_actor = Actor.where({ :id => the_id}).at(0)

    char_mov = Character.where({ :actor_id => @the_actor.id}).at(0).name

    movie_actor_in_id = Character.where({ :actor_id => @the_actor.id}).at(0).movie_id

    char_movie_actor_in_id = Character.where({ :actor_id => @the_actor.id}).at(0).movie_id


    @char_movie_actor_in_id = Character.where({ :actor_id => @the_actor.id}).where({ :movie_id => char_movie_actor_in_id}).at(0).name

    @filmography = Movie.where({ :id => movie_actor_in_id})
    #@filmography = Character.where({ :actor_id => @the_actor.id})
    #movie_actor_in_id = Character.where({ :actor_id => 2}).where({ :movie_id =}).at(0).id
    # Character.where({ :actor_id => 144}).where({ :movie_id => 11}).at(0).name

   render ({ :template => "actor_templates/show.html.erb" })
 end


end
