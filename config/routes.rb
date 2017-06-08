Rails.application.routes.draw do
  # Routes for the Response resource:

  # Routes for the homepage
  get("/", {:controller => "interest_indications", :action => "index"})

  # READ
  get "/thankyou", :controller => "responses", :action => "thankyou"


  # CREATE
  get "/get_feedback/:id", :controller => "interest_indications", :action => "get_feedback"
  get "/responses/new_participated/:id", :controller => "responses", :action => "new_participated"
  get "/responses/new_dnp/:id", :controller => "responses", :action => "new_dnp"

  post "/create_response", :controller => "responses", :action => "create"

  get "/responses", :controller => "responses", :action => "index"
  get "/responses/:id", :controller => "responses", :action => "show"

  # UPDATE
  get "/responses/:id/edit", :controller => "responses", :action => "edit"
  post "/update_response/:id", :controller => "responses", :action => "update"

  # DELETE
  get "/delete_response/:id", :controller => "responses", :action => "destroy"
  #------------------------------

  # Routes for the Interest_indication resource:
  # CREATE
  get "/interest_indications/new", :controller => "interest_indications", :action => "new"
  post "/create_interest_indication", :controller => "interest_indications", :action => "create"

  # READ
  get "/interest_indications", :controller => "interest_indications", :action => "index"
  get "/interest_indications/:id", :controller => "interest_indications", :action => "show"

  # UPDATE
  get "/interest_indications/:id/edit", :controller => "interest_indications", :action => "edit"
  post "/update_interest_indication/:id", :controller => "interest_indications", :action => "update"

  get "/interest_indications/:id/remove_interest", :controller => "interest_indications", :action => "remove_interest"
  post "/remove_interest_indication/:id", :controller => "interest_indications", :action => "interest_false"

  # DELETE
  get "/delete_interest_indication/:id", :controller => "interest_indications", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
