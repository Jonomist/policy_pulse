class Signatory < ApplicationRecord
  belongs_to :category
  belongs_to :consultation
end
