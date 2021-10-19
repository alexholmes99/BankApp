class Account < ApplicationRecord
    belongs_to :user
    has_many :transactions
    validates :account_name, :account_no, :balance, presence: true
    validates :account_no, uniqueness: true
    validates :account_name, uniqueness: {scope: :user_id}

end
