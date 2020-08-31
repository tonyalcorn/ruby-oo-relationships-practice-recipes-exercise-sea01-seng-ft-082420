require 'pry'
class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        self.all.max{|ingredient| ingredient.allergies.length}
    end

    def allergies
        Allergy.all.select{|allergy| allergy.ingredient == self}
    end

end
