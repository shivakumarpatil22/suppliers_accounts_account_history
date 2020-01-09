class Supplier < ApplicationRecord
  has_one :account
  has_one :account_histories, :through => :account
end
