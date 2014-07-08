class TasksController < ApplicationController

	def index
		@task = Task.new
		@tasks = current_user.tasks
	end

	def create
		current_user.tasks.create(task_params)
		redirect_to :tasks #this path won't change, so it's better to redirect here rather than the root_path (in case, for example, marketing decides to add some sort of landing page)
	end


	private

	def task_params
		params.require(:task).permit(
			:title, 
			:body,
		)
	end
end