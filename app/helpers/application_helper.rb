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
      content_tag(:span, tech, class: 'badge')
    end.join('<br />').html_safe
  end
  
  def badge
    ['badge badge-important', 'badge badge-success', 'badge badge-info', 'badge badge-warning', 'badge badge-inverse', 'badge'].sample
    ''
  end
end