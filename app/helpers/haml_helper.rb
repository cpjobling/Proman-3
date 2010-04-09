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
module HamlHelper

  def locale_attrs
    html_attrs(I18n.locale.to_s)
  end

  def submit_button(label)
    capture_haml do
      haml_tag :fieldset, :class => 'buttons' do
        haml_tag :ol do
          haml_tag :li do
            haml_concat submit_tag label, :class => 'button'
          end
        end
      end
    end
  end

  def text_field_i18n(model, attribute)
    str = attribute.to_s
    capture_haml do
      haml_concat label_tag(str, model.human_attribute_name(str))
      haml_concat text_field_tag(attribute, nil, :class => 'text_field')
    end
  end

end