class EntrySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :deadline, :rating, :typeofaward, :cost, :url
end
