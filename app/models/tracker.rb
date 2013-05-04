class Tracker < ActiveRecord::Base
  attr_accessible :ip, :url, :details
end
