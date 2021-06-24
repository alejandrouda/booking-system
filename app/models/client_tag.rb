class ClientTag < ApplicationRecord
  belongs_to :booking
  belongs_to :client
end
