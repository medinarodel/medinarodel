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
        'Didoline API'
    ].sort.map do |tech|
      content_tag(:div, tech, class: 'well well-small')
    end.join('').html_safe
  end
  
  def badge
    ['badge badge-important', 'badge badge-success', 'badge badge-info', 'badge badge-warning', 'badge badge-inverse', 'badge'].sample
    ''
  end
end