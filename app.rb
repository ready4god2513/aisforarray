require "sinatra"

set :public_folder, "public"

get "/" do
  cache_control :public, max_age: 60
  erb :index
end

get "/purpose.html" do
  cache_control :public, max_age: 60
  erb :purpose
end

get "/book.html" do
  cache_control :public, max_age: 60
  erb :book, layout: :full
end

not_found do
  status 301
  redirect "/"
end