class Language < ActiveRecord::Base
validates_presence_of :name
belongs_to :country
end
