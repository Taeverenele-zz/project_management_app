class ProjectsController < ApplicationController
  
  def index
    #show all of the resources
    @projects = [
      {
        id: 1,
        name: 'terminal app',
        github_status: true,
        date_completed: '17/08/2020'
      },
      {
        id: 2,
        name: 'react app',
        github_status: false,
        date_completed: '20/10/2020'
      }
    ]
  end
  def new
    #to have a form that allows you to create a new resource
  end
  def show
    #show one of the resources
  end
  # def create
  # end
end


# class ProjectsController < ApplicationController
#   before_action :read_projects
#   skip_before_action :verify_authenticity_token
  
#   def index
#     # send back all of the resources to the client
#     render json: @projects
#   end

#   def show
#     # show is for sending back only one resource
#     found_project = @projects.find do |project|
#       project["id"] == params[:id].to_i
#     end

#     render json: found_project
#   end

#   def create
#     new_project = {
#       id: params[:id].to_i, 
#       name: params[:name], 
#       github_status: is_true?(params[:github_status])}
#     @projects << new_project
#     write_projects(@projects)
#     redirect_to projects_path
#   end

#   private

#   def is_true?(bool)
#     bool == true
#   end

#   def write_projects(projects)
#     File.write(Rails.public_path.join("projects.json"), JSON.generate(projects))
#   end

#   def read_projects
#     @projects = JSON.parse(File.read(Rails.public_path.join("projects.json")))
#   end

# end
