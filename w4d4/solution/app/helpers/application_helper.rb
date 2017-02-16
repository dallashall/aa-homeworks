module ApplicationHelper
  def auth_token
    token_script = <<-HTML
    <input type="hidden" name="authenticity_token" value="#{form_authenticity_token}">
    HTML
    token_script.html_safe
  end
end
