class TasksController < ApplicationController
    before_action :set_improvement
    
    def create     
        @task = @improvement.task.create(task_params)
        redirect_to @improvement
    end 
    
    private 
    
    def set_improvement
       @improvement = Improvement.find(params[:improvement_id])
    end 
    
    def task_params
       params[:task].permit(:content, :hora_gastas)
    end
    
end
