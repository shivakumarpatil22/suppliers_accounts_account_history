class Account < ApplicationRecord
  belongs_to :supplier
  has_one :account_histories
  delegate :name, :to => :supplier, :allow_nil => true, :prefix => true
end
