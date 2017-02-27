
require 'sinatra'
Choices = {
    'HAM' => 'Hamburger',
    'PIZ' => 'Pizza',
    'CUR' => 'Curry',
    'Noo' => 'Noodles',
}

get '/' do
    @title = "Test"
    erb :index

end

post '/cast' do
    @title = 'Thanks for voting?'
    @vote = params['vote']
    erb :cast
end

get '/results' do
    @title = 'Results'
    @votes = {
        'HAM' => 3
    }
    
    erb :result
end