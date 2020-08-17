require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @team_info = {}
        params.each do |k, v|
            @team_info[k] = v
        end
        # binding.pry
        erb :team
    end

end
