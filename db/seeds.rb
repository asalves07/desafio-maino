require  'poke-api-v2'

(1..721).each do |i|
  poke_api = PokeApi.get(pokemon: i)
  Pokemon.find_or_create_by!(
    name: poke_api.name, 
    kind:  poke_api.types[0].type.name,
    kind_2: poke_api.types[1]&.type&.name, 
    sprite: poke_api.sprites.front_default
  )
end