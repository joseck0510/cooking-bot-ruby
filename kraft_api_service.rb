require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

def get_recipe(ingredients)
  open('www.kraftfoods.com/ws/recipews.asmx/GetRecipesByIngredients?sIngredient1=chicken&sIngredient2=pepper&sIngredient3=mushrooms&bIsRecipePhotoRequired=true')
end

puts get_recipe('chicken')
