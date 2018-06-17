class DashboardController < ApplicationController
  def index
    Interaction.update_twitter
  end
end
