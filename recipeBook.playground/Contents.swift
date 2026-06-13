struct RecipeBook {
    var recipes: [String] = []
    var ratings: [Int] = []
    
    mutating func addRecipe(_ name: String, rating: Int) {
        recipes.append(name)
        ratings.append(rating)
    }
    
    func bestRated() -> String {
        var highest = 0
        var bestRecipe = ""
        for i in 0..<ratings.count {
            if ratings[i] > highest {
                highest = ratings[i]
                bestRecipe = recipes[i]
            }
        }
        return bestRecipe
    }
    
    func showBook() {
        print("Recipe Book ( \(recipes.count) recipes):")
        for i in 0..<recipes.count {
            print("\(i + 1). \(recipes[i]) — \(ratings[i])/5 ⭐")
        }
        print("Best rated: \(bestRated())")
    }
}

var book = RecipeBook()
book.addRecipe("Tacos", rating: 5)
book.addRecipe("Pasta", rating: 3)
book.addRecipe("Ramen", rating: 4)
book.showBook()
