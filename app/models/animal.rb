class Animal < ActiveRecord::Base
  belongs_to :animal_type
  validates :name, presence: true

end
