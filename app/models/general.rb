class General < ApplicationRecord

  def make_name
    n = rand(1..2)
    new_name = self.names.sample.capitalize
    n.times do
      new_name = new_name + self.names.sample
    end
    return new_name
  end

end
