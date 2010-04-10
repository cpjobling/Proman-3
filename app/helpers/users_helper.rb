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
module UsersHelper

  def get_titles
    # Return i18n strings for titles
    return [
      I18n.t('activerecord.attributes.user.titles.mr'),
      I18n.t('activerecord.attributes.user.titles.mrs'),
      I18n.t('activerecord.attributes.user.titles.ms'),
      I18n.t('activerecord.attributes.user.titles.miss'),
      I18n.t('activerecord.attributes.user.titles.dr'),
      I18n.t('activerecord.attributes.user.titles.prof')
    ]
  end

end