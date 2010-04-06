require 'rubygems'
require 'active_resource'



ActiveResource::Base.logger = Logger.new("#{File.dirname(__FILE__)}/events.log")



class Event < ActiveResource::Base
  self.site = "http://localhost:3000"
end



events = Event.find(:all)
puts events.map(&:name)



e = Event.find(1)
e.price = 20.00
e.save



e = Event.create(:name      => "Shortest event evar!", 
                 :starts_at => 1.second.ago,
                 :capacity  => 25,
                 :price     => 10.00)
e.destroy
