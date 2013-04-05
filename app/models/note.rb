class Note < ActiveRecord::Base
	has_many :comments
  attr_accessible :author, :column_name, :note_text, :table_name

  
end
