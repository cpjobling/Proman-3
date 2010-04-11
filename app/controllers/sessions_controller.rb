# Copyright 2009-2010 Swansea University
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
class SessionsController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @session = UserSession.new
  end

  def create
    @session = UserSession.new(params[:user_session])
    if @session.save
      flash[:notice] = t :login_successful
      redirect_back_or_default account_url
    else
      message = @session.errors.on(:base) ? @session.errors.on(:base) : t(:login_unsuccessful)
      flash.now[:error] = message
      render :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = t :logout_successful
    redirect_back_or_default login_url
  end
end
