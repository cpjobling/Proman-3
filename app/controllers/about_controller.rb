class AboutController < ApplicationController

  # Deisplays the about us page
  def index
  end
  
  # Displays the terms of service page
  def tos
  end
  
  # Displays the contact us page
  def contact
  		@title = :contact
  end
  
  # Displays the license
  def license
  end

end
