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
class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create, :confirm]
  before_filter :require_user, :only => [:show, :edit, :update]

  def new
    @user = User.new

    render :new, :layout => 'single_column'
  end

  def create


    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = t :register_successful
      redirect_to root_url
    else
      render :new, :layout => 'single_column'
    end
  end

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = t :account_updated
      redirect_to account_url
    else
      render :edit
    end
  end

  def confirm
    @user = User.find_using_perishable_token(params[:token])

    if @user
      @user.confirm!
      UserSession.create(@user)

      flash[:notice] = t :confirm_successful
      redirect_to account_url
    else
      flash[:error] = t :confirm_unsuccessful
      redirect_to root_url
    end
  end
end
