class Entry < ApplicationRecord

    validates_presence_of :name, :description, :rating, :deadline, :cost, :typeofaward, :url
end
