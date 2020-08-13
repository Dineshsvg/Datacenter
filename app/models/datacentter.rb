class Datacentter < ActiveRecord::Base
validates_presence_of :code, :country
has_many :countries
end
