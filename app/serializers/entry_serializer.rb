class EntrySerializer < ActiveModel::Serializer
  attributes :name, :description, :deadline, :rating, :typeofaward, :cost, :url
end
