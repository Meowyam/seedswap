class Seed
  include Mongoid::Document
  field :name, type: String
  field :genus, type: String
end
