class ModelInfoController < ApplicationController

	before_filter :get_models_info

	def get_models_info
		# The below line requires "cache_classes" to be "on"
		# It seems it is "on" by default in Dev , but not in Prod
		# See the following SO question & answers - http://stackoverflow.com/questions/516579/is-there-a-way-to-get-a-collection-of-all-the-models-in-your-rails-app
		Rails.application.eager_load!
		#Dir.glob(Rails.root.join('app/models/*')).each do |x| 
		#	require x 
		#end

		@models = ActiveRecord::Base.descendants
		
	end


	def index2
		Rails.application.eager_load!
		@models = ActiveRecord::Base.descendants
	end

	#
	def show_notes_for_table
		@table_name = params[:table]
		@notes = Note.where(:table_name => @table_name)

		render "index2"
	end

	def show_notes_for_column
		@table_name = params[:table]
		@column_name = params[:column]
		@notes = Note.where(:table_name => @table_name, :column_name => @column_name)


		respond_to do |format|
			format.json { render :json => @notes.to_json(:include => :comments) }
			format.html { render "index2" }
		end
	end

	def add_note
		table_name = params[:table_name]
		column_name = params[:column_name]
		author = params[:author]
		note_text = params[:note_text]
		@n = Note.create :table_name => table_name, :column_name => column_name, :author => author, :note_text => note_text
		respond_to do |format|
			format.any(:xml, :html, :json) { render :json => @n.to_json }
		end
	end

	def add_comment
		#table_name = params[:table_name]
		#column_name = params[:column_name]
		author = params[:author]
		comment_text = params[:comment_text]
		note_id = params[:note_id]
		@c = Comment.create :author => author, :comment_text => comment_text, :note_id => note_id
		respond_to do |format|
			format.any(:xml, :html, :json) { render :json => @c.to_json}
		end
	end
end
