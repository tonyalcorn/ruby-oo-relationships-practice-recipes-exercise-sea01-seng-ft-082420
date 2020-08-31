require 'pry'

class Recipe

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        self.all.max {|recipe| 
        recipe.all_cards.length
        #binding.pry
        }
    end

    def all_cards
        RecipeCard.all.select{|card| card.recipe == self}
    end

    def users
        self.all_cards.map {|card| card.user}.uniq
    end

    def ingredients
        self.all_recipe_ingredients.map {|ri| ri.ingredient}.uniq
    end

    def all_recipe_ingredients
        RecipeIngredient.all.select{|ri| ri.recipe == self}
    end

    def allergens 
        self.ingredients.select {|ingredient| 
        Allergy.all.any? {|allergy| allergy.ingredient == ingredient}}
    end

    def add_ingredients(ingredients)
        ingredients.each {|ingredient| RecipeIngredient.new(ingredient, self)}
    end


end