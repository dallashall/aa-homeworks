module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
  end

  def receive_toy(name)
    toy = Toy.find_by_name(name) || Toy.new(name: name)
    self.toys += [toy]
  end
end
