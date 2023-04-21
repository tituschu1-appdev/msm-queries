Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "earliest" })

  get("/directors", { :controller => "directors", :action => "index" })


  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/", { :controller => "application", :action => "homepage" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:mov_id", { :controller => "movies", :action => "movie_details" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details" })
end
