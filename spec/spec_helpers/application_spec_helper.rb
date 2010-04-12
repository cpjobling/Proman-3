module ApplicationSpecHelper
  def with_locale(locale)
    previous_locale = I18n.locale
    I18n.locale = locale.to_sym
    yield
    I18n.locale = previous_locale
  end
  
  def content_for(name)
    response.template.instance_variable_get("@content_for_#{name}")
  end
  
end
