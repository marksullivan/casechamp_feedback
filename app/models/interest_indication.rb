class InterestIndication < ApplicationRecord

  has_one :interest_outcome, :class_name => "Response", :dependent => :nullify

end
