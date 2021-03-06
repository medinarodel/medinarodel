module ApplicationHelper
  def tags_builder tags=[]

    tags.sort.map do |tech|

      content_tag(:span, tech, class: 'label label-success')

    end.join(' ').html_safe

  end

 def knows
    [
        'Ruby on Rails', 
        'PHP', 
        'JQuery', 
        'AJAX', 
        'HTML', 
        'CSS', 
        'EchoSign API',
        'Facebook API',
        'Twitter API',
        'LinkedIn API',
        'SendGrid API',
        'Didoline API',
        'Twillio API',
        'Stripe API',
        'Twitter Boostrap',
        'PSD to HTML',
        'Google Maps',
        'Google Charts',
        'iOS',
        'AngularJS'
    ].sort.map { |tech|  content_tag(:span, tech, class: 'tech') }.join(' ').html_safe
  end

end
