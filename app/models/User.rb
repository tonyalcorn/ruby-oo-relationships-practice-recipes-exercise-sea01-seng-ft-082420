class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def recipes
        RecipeCard.all.select {|recipe| recipe.user == self}
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end
    
    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipes
        self.recipes.sort {|recipea, recipeb| recipea.rating <=> recipeb.rating}.reverse[0..2]
    end

    def most_recent_recipe
        self.recipes.sort {|recipea, recipeb| recipea.date <=> recipeb.date}.reverse[0]
    end
end
