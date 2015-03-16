# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.destroy_all
Answer.destroy_all

Question.create([{id:1, question:"Where is the world court?"}])
Answer.create([{id:1, question_id: 1, answer: "The Hague", is_correct: "y"}])
Answer.create([{id:2, question_id: 1, answer: "Hyderabed", is_correct: "n"}])
Answer.create([{id:3, question_id: 1, answer: "New York", is_correct: "n"}])

Question.create([{id:2, question:"who is the father of computers?"}])
Answer.create([{id:4, question_id: 2, answer: "charles babage", is_correct: "y"}])
Answer.create([{id:5, question_id: 2, answer: "you", is_correct: "n"}])
Answer.create([{id:6, question_id: 2, answer: "anna hazare", is_correct: "n"}])

Question.create([{id:3, question:"My name is?"}])
Answer.create([{id:7, question_id: 3, answer: "Ram", is_correct: "y"}])
Answer.create([{id:8, question_id: 3, answer: "tej", is_correct: "n"}])
Answer.create([{id:9, question_id: 3, answer: "anna hazare", is_correct: "n"}])