class API
  
  def get_info
    response = HTTParty.get("https://rickandmortyapi.com/api/character/")
    characters = JSON.parse(response.body)["results"]
    characters.each do |character|
      Characters.new(character)
    
    end 
  end 
end 
