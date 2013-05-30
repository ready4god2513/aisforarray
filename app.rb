require "sinatra"

set :public_folder, "public"

get "/" do
  cache_control :public, max_age: 60
  send_file File.expand_path("index.html", settings.public_folder)
end

not_found do
  status 301
  redirect "/"
end