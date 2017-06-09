class InterestIndication < ApplicationRecord

  has_one :interest_outcome, :class_name => "Response", :dependent => :nullify


  validates :competition_name, :presence => true
  validates :email_address, :presence => true, :uniqueness => { :scope => :competition_name }

end
