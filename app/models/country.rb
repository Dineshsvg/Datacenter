class Country < ActiveRecord::Base
validates_presence_of :name
has_many :languages
belongs_to :datacenter
end
