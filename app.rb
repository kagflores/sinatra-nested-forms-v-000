require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ships.new(details)
      end

      erb :pirate
    end
  end
end
