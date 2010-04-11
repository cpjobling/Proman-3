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

# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_to_with_highlight(name, options = {}, html_options = {}) # same sig as #link_to
    html_options.merge!({ :class => 'active' }) if current_page?(options)
    link_to(name, options, html_options)
  end
  
  # Generate a quotation suitable for a page slogan.
  def quotation_generator(quotation, citation = {})
    born = citation[:born] || '?'
    died = citation[:died] || '?'
    author = citation[:author] || 'Anonymous'
    dates = "#{born}&mdash;#{died}"
    cited_quotation = "&ldquo;#{h(quotation)}&rdquo; &ndash; #{h(author)}"
    if (dates == "?&mdash;?")
      return cited_quotation
    else
      return cited_quotation += " (#{dates})"
    end
  end
  
  # The Proman logo
  def proman
    return "<em>Proman<sup>&beta;</sup></em>"
  end
end
