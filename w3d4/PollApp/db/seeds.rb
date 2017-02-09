User.create(user_name: "Dallas")
User.create(user_name: "Houston")
User.create(user_name: "Charlotte")

Poll.create(title: "First Poll", author_id: 1)
Poll.create(title: "Second Poll", author_id: 2)

Question.create(
  poll_id: 1,
  text: "What is the answer to life, the universe, and everything?"
)
Question.create(
  poll_id: 1,
  text: "How many roads must a man walk down?"
)
Question.create(
  poll_id: 2,
  text: "Why are there so many songs about rainbows?"
)

AnswerChoice.create(
  question_id: 1,
  text: "Live, die, repeat"
)
AnswerChoice.create(
  question_id: 1,
  text: "Jumanji"
)
AnswerChoice.create(
  question_id: 1,
  text: "42"
)
AnswerChoice.create(
  question_id: 2,
  text: "42"
)
AnswerChoice.create(
  question_id: 2,
  text: "2"
)
AnswerChoice.create(
  question_id: 3,
  text: "There aren't really THAT many songs about rainbows."
)
AnswerChoice.create(
  question_id: 3,
  text: "Rainbows are pretty, but not tangeable, like daydreams."
)

Response.create(respondent_id: 1, answer_choice_id: 1)
Response.create(respondent_id: 1, answer_choice_id: 4)
Response.create(respondent_id: 1, answer_choice_id: 7)
Response.create(respondent_id: 2, answer_choice_id: 2)
Response.create(respondent_id: 2, answer_choice_id: 4)
Response.create(respondent_id: 2, answer_choice_id: 7)
Response.create(respondent_id: 3, answer_choice_id: 2)
Response.create(respondent_id: 3, answer_choice_id: 5)
Response.create(respondent_id: 3, answer_choice_id: 6)
