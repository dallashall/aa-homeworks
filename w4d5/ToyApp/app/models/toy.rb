class Toy < ActiveRecord::Base
  belongs_to :toyable, polymorphic: true

  validates :name, presence: true, uniqueness: { scope: :toyable }
end
