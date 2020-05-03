class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@teams = Team.where('id = ?', current_user.team_id)
  		@projects = Project.where('team_id = ?', current_user.team_id)
  	end
  end
end
