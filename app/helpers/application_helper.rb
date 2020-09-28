module ApplicationHelper
  def create_pokemon(i)
    url = 'https://pokeapi.co/api/v2/pokemon/'
    poke = i

    resp = RestClient.get "#{url}#{poke}"

    @name = JSON.parse(resp.body).dig("name")
    @sprite = JSON.parse(resp.body).dig("sprites", "front_default")
    @kind = JSON.parse(resp.body).dig("types", 0, "type","name")
    @kind_2 = JSON.parse(resp.body).dig("types", 1, "type", "name")
    # %x(team.pokemons.create!(name: @name, kind: @kind, kind_2: @kind_2, sprite: @sprite))
  end
end
