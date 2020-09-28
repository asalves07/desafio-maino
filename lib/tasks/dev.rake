namespace :dev do
  desc "Configura o Ambiente de desenvolvimento"
  task setup: :environment do
    %x(rails db:drop db:create db:migrate db:seed)
    # %x(rails dev:add_pokemons)
  end

  # desc "Adiciona os pokemons"
  # task add_pokemons: :environment do 
  #   url = 'https://pokeapi.co/api/v2/pokemon/'
  #   200.times do |i|
  #     resp = RestClient.get"#{url}#{i+1}"
  #     puts JSON.parse(resp.body).dig("name")
  #     Pokemon.create!(
  #       name: JSON.parse(resp.body).dig("name"), 
  #       kind:  JSON.parse(resp.body).dig("types", 0, "type","name"),
  #       kind_2: JSON.parse(resp.body).dig("types", 1, "type", "name"), 
  #       sprite: JSON.parse(resp.body).dig("sprites", "front_default")
  #     )
  #   end
  # end

end


