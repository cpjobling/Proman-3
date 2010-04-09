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
class UserObserver < ActiveRecord::Observer
  def after_create(user)
    UserMailer.deliver_signup_notification(user)

    # Easy confirmation URL for testing in the browser
    if RAILS_ENV == "development"
      ActiveRecord::Base.logger.debug "\nCopy & Paste Confirmation:\nlocalhost:3000/" +
        "account/confirm?locale=#{I18n.locale.to_s}&token=#{user.perishable_token}\n\n"
    end
  end

  def after_save(user)
    UserMailer.deliver_activation(user) if user.recently_confirmed?
  end
end