# Include hook code here
require 'typo_enclosure_on_steroide'
 
ActionController::Base.send :include, TypoEnclosureOnSteroide
ActionController::Base.send :helper, TypoEnclosureOnSteroideHelper