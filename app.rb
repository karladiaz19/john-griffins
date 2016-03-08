 require_relative 'config/environment'

class App < Sinatra::Base 

  get '/' do
   erb :index
  end 

post '/' do
  @user = {
   name: "#{params["fname"]} #{params["lname"]}",
   profilepic: "#{params["propic"]}",
   email: "#{params["email"]}",
   status: "#{params["status"]}",
   birthday: "#{params["bday"]}",
   age: "#{params["age"]}",
   favcolor: "#{params["favcr"]}",
   username: "#{params["username"]}",
    }
  
 erb :dashboard
  end

end