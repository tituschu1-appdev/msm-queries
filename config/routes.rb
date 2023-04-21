Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors", { :controller => "directors", :action => "index" })


  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/", { :controller => "application", :action => "homepage" })


end
