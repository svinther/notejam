class Note
  include DataMapper::Resource
  include DataMapper::Validate

  # Properties
  property :id,               Serial
  property :name,             String
  property :text,             Text

  belongs_to :user
  belongs_to :pad, :required => false

  # Validations
  validates_presence_of      :name
  validates_presence_of      :text
end


