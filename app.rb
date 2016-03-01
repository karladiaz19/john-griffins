require_relative 'config/environment'

class app < Sinatra::Base 

  get '/' do
   erb :dashboard
  end 
  
end

post '/' do
  @user = {
   name: "#{params["fname"]} #{params["lname"]}" 
    }
 erb:dashboard
 end

end