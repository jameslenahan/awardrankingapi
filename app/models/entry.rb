class Entry < ApplicationRecord
    has_many :agencies
    validates_presence_of :name, :description, :rating, :deadline, :cost, :typeofaward, :url
end
