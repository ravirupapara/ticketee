class CommentsController < ApplicationController
	before_filter :require_signin!
	before_filter :find_ticket

	def new
		@comment = @ticket.comments.build
	end

	def create
		@comment = @ticket.comments.build(comment_param)
		@comment.user = current_user

		if @comment.save
			flash[:notice] = "Comment has been created."
			redirect_to [@ticket.project, @ticket]
		else
			flash[:alert] = "Comment has not been created."
			render :template => "tickets/show"
		end
	end

	private
		def find_ticket
			@ticket = Ticket.find(params[:ticket_id])
		end

		def comment_param
			params.require(:comment).permit(:text)
		end
end
