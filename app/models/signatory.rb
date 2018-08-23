class Signatory < ApplicationRecord
  belongs_to :signatory_category
  belongs_to :consultation
end
