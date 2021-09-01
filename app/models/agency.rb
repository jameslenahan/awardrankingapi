class Entry < ApplicationRecord
    has_many :entries
    validates_presence_of :name, :description, :typeofagency,

end
