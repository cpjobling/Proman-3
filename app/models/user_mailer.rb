# -*- coding: utf-8 -*-
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
class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject += I18n.t('user_mailer.signup_subject')
  end

  def activation(user)
    setup_email(user)
    @subject += I18n.t('user_mailer.activation_subject')
  end

  def reset_password_instructions(user)
    setup_email(user)
    @subject += I18n.t('user_mailer.reset_password_subject')
  end

  protected
  def setup_email(user)
    recipients user.email
    from       I18n.t('user_mailer.from', :email => '<notifications@example.com>')
    @subject   = "[Proman] "
    sent_on    Time.now
    body :user => user
  end
end