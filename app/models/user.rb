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
class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessor :validate_password
  
  validates_presence_of :first_name, :last_name
  validates_acceptance_of :terms, :accept => true
  validates_format_of :staff_or_student_number, :with => /\A\d{6,}\Z/, :on => :create
  # TODO: validate that email is part of institutional domain

  def recently_confirmed?
    @recent_confirmation
  end

  def deliver_password_reset!
    reset_perishable_token!
    UserMailer.deliver_reset_password_instructions(self)
  end

  def confirm!
    self.update_attribute(:confirmed, true)
    @recent_confirmation = true
  end

  private
  def require_password?
    super || validate_password
  end

end