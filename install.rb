# Copies dewplayer into public/

directory = File.join(RAILS_ROOT, '/vendor/plugins/typo_enclosure_on_steroide')

unless File.exists("#{RAILS_ROOT}/public/dewplayer.swf")
  puts "*** Installing Typo Enclosure on steroide ***"
  
  File.copy("#{directory}/dewplayer.swf", "#{RAILS_ROOT}/public/dewplayer.swf")
end