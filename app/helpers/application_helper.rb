module ApplicationHelper
  def flash_message(type, text)
    flash[type] ||= []
    flash[text] << text
  end

  def render_flash
    rendered =[]
    flash.each do |type, messages|
      messages.each do |msg|
      rendered << render(partial: 'partials/flash', locals: {type: type, message: msg}) unless msg.blank?
      end
    end
    rendered.join('<br>')
  end
end

