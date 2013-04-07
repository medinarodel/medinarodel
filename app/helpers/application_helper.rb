module ApplicationHelper
  def knows
    [
        'Ruby on Rails', 
        'PHP', 
        'JQuery', 
        'AJAX', 
        'HTML', 
        'CSS', 
        'API - Facebook',
        'API - Twitter',
        'API - LinkedIn',
        'API - SendGrid',
        'API - Didoline',
        'API - Twillio',
        'Twitter Boostrap',
        'PSD to HTML',
        'Google Maps',
        'Google Charts'
    ].sort.map do |tech|

      content_tag(:li, tech)

    end.join(' ').html_safe
  end
  
  def color
    ['success', 'info', ''].sample
  end
end