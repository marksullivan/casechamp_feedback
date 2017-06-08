class InterestIndication < ApplicationRecord

  has_many :interest_outcomes, :class_name => "Response", :dependent => :nullify

end
