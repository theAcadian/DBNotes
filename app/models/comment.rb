class Comment < ActiveRecord::Base
	belongs_to :note
  attr_accessible :author, :comment_text, :note_id
end
