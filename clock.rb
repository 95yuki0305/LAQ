require 'clockwork'
 
require File.expand_path('../boot', __FILE__)
require File.expand_path('../environment', __FILE__)

module Clockwork
 
  def one_minute
    p "minutely job"
  end
 
  def one_hour
    p "hourly job"
  end
 
 
  handler do |job|
    self.send(job.to_sym)
  end
 
  every(1.minute, 'one_minute')
  every(1.hour, 'one_hour')
end