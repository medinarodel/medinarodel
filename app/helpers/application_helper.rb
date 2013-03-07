module ApplicationHelper
  def knows
    [
        'Ruby on Rails', 
        'PHP', 
        'JQuery', 
        'AJAX', 
        'HTML', 
        'CSS', 
        'HAML', 
        'SLIM', 
        'ERB', 
        'JS Coffee', 
        'SCSS', 
        'SASS',
        'Facebook API',
        'Twitter API',
        'LinkedIn API',
        'SendGrid API',
        'Didoline API',
        'Twitter Boostrap'
    ].shuffle.map do |tech|
      content_tag(:div, tech, class: "alert alert-#{color}")
    end.join('<br />').html_safe
  end
  
  def color
    ['success', 'info', ''].sample
  end
end