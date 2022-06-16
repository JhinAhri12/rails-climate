class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if !current_user.nil? && current_user.role == "officine"
      @chambers = Chamber.where(user_id: current_user.id)
    else
      @chambers = Chamber.all
    end
  end
end
