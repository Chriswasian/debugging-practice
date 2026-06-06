// Quiz tracker

var questions = ["Math", "Science", "History", "English", "Art"]
var correctAnswers = 0
let passingScore = 3

@MainActor func markCorrect() {
    correctAnswers += 1
}

@MainActor func showResults() {
    print("You got \(correctAnswers) out of \(questions.count) correct")
    if correctAnswers >= passingScore {
        print("You passed! 🎉")
    } else {
        print("Keep studying!")
    }

    print("\nQuestions:")
    for i in 0..<questions.count {
        print("- \(questions[i])")
    }
}

markCorrect()
markCorrect()
markCorrect()
showResults()
