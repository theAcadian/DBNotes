# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Adding seed data for Comment.Author & Note.Author columns
=begin
Note.create(author: "Sai Ponduru", table_name: "Comment", column_name: "author", note_text: "Author will identify the user who wrote this note. This will contain the full name of the user. The fullname will be retireved from Jira.")
Note.create(author: "Sai Ponduru", table_name: "Comment", column_name: "author", note_text: "There is no point in making this a link")
Note.create(author: "Sai Ponduru", table_name: "Comment", column_name: "author", note_text: "Users can edit their own notes, so displaying 'author' will allow users to Edit their own notes")

Note.create(author: "Sai Ponduru", table_name: "Note", column_name: "author", note_text: "Author will identify the user who wrote this note. This will contain the full name of the user. The fullname will be retireved from Jira.")
Note.create(author: "Sai Ponduru", table_name: "Note", column_name: "author", note_text: "There is no point in making this a link")
Note.create(author: "Sai Ponduru", table_name: "Note", column_name: "author", note_text: "Users can edit their own notes, so displaying 'author' will allow users to Edit their own notes")
=end


# Adding seed data for - added 2 comments for notes that have ids from 1-10
=begin 
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:1
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:1
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:2
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:2
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:3
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:3
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:4
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:4
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:5
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:5
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:6
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:6
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:7
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:7
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:8
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:8
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:9
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:9
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:10
Comment.create author:"Sai Ponduru", comment_text:"Very useful , thanks!", note_id:10
=end