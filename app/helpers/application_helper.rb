module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def active_for(options = {})
    name_of_controller = options[:controller] || nil
    name_of_action     = options[:action]     || nil
    request_path       = options[:path]       || nil

    if request_path.nil?
      if (name_of_action.nil? or name_of_action == action_name) and
          name_of_controller == controller_name
        'active'
      else
        ''
      end
    else
      request_path == request.path ? 'active' : ''
    end
  end

  # list mensagers menu page
  def saudacao
    tempo = Time.zone.now.strftime('%k')

    case tempo.to_i

    when 0..12
      "Bom dia!"
    when 12..18
      "Boa tarde!"
    when 18..24
      "Boa noite!"
    when 1..5
      "Boa madrugada!"
    else
      ""
    end
  end


  
  

 end
