class ProjectsController < ApplicationController
  before_action :read_projects
  skip_before_action :verify_authenticity_token
  
  def index
    # send back all of the resources to the client
    render json: @projects
  end

  def show
    # show is for sending back only one resource
    found_project = @projects.find do |project|
      project["id"] == params[:id].to_i
    end

    render json: found_project
  end

  def create
    new_project = {
      id: params[:id].to_i, 
      name: params[:name], 
      github_status: is_true?(params[:github_status])}
    @projects << new_project
    write_projects(@projects)
    redirect_to projects_path
  end

  private

  def is_true?(bool)
    bool == true
  end

  def write_projects(projects)
    File.write(Rails.public_path.join("projects.json"), JSON.generate(projects))
  end

  def read_projects
    @projects = JSON.parse(File.read(Rails.public_path.join("projects.json")))
  end

end
