class Response < ApplicationRecord

belongs_to :interest_indication

validates :interest_indication_id, :presence => true, :uniqueness => true
validates :outcome, :presence => true
validates :likely_to_recommend, :presence => true

end
