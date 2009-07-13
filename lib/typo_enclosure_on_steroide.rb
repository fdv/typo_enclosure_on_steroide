# TypoEnclosureOnSteroide
module TypoEnclosureOnSteroide
  
end

module TypoEnclosureOnSteroideHelper
  
  def display_mp3(filename)
    html = "<li><object type='application/x-shockwave-flash' data='/dewplayer.swf?mp3=/files/#{filename}' width='200' height='20'>"
    html << "<param name='movie' value='/dewplayer.swf?mp3=/files/#{filename}' />"
    html << "</object></li>"
  end
  
  def display_simple_file(filename)
    html = "<li>"
    html << link_to(filename, "/files/#{filename}")
    html << "</li>"
  end
  
  def display_resources(article)
    return if article.resources.size == 0
    
    html = "<h3>Attachments</h3>"
    html << "<ul>"
    
    article.resources.each do |resource|
      if resource.filename =~ /.mp3/
        html << display_mp3(resource.filename)
      else
        html << display_simple_file(resource.filename)
      end
    end
    
    html << "</ul>"
    
  end
end