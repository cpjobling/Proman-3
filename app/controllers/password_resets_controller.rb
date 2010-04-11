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
class PasswordResetsController < ApplicationController

  before_filter :require_no_user
  before_filter :load_user_with_token, :only => [:edit, :update]

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      @user.deliver_password_reset!
      flash[:notice] = t :reset_successful
      redirect_to root_url
    else
      flash.now[:error] = t :reset_unsuccessful
      render :new
    end
  end

  def edit
  end

  def update
    @user.validate_password = true
    if @user.update_attributes(params[:user])
      flash[:notice] = t :password_update_successful
      redirect_to account_url
    else
      render :edit
    end
  end

  private
  def load_user_with_token
    @user = User.find_using_perishable_token(params[:token])
    unless @user
      flash[:error] = t :invalid_reset_token
      redirect_to root_url
    end
  end

end
