class TasksController < ApplicationController

	def index
		@all_tasks = Task.all
		@task = Task.new
	end

	def create
		@task = Task.create(task_params)
		respond_to do |format|
			if @task.save
				format.html { redirect_to @task, notice: 'User was successfully created.' }
				format.js   {}
				format.json { render json: @task, status: :created, location: @task }
			else
				format.html { render action: "index" }
				format.json { render json: @task.errors, status: :unprocessable_entity }
			end
		end
	end


	def active
		@tasks = Task.where(:completed => 'false')
	end

	def completed
		@tasks = Task.where(:completed => 'true')
	end

	def update
			@task = Task.find(params[:id])
			@task.update_attributes!(params[:task])
			respond_to do |format|
				format.html { redirect_to tasks_url }
				format.js
		end
	end

	def destroy
		respond_to do |format|
				format.html { redirect_to tasks_url }
				format.js
			end
		end



end

private
def task_params
	params.require(:task).permit(:title)
end