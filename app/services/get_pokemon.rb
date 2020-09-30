require  'poke-api-v2'

class GetPokemon

  def initialize
    @i = rand(1..721)
    @poke_api = PokeApi.get(pokemon: @i)
  end

  def name
    @poke_api.name
  end
  def kind
    @poke_api.types[0].type.name
  end
  def kind_2
    @poke_api.types[1]&.type&.name
  end
  def sprite
    @poke_api.sprites.front_default
  end

end