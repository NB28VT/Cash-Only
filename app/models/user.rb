class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :credits, class_name: "Transaction", foreign_key: "payee_id"
  has_many :debits, class_name: "Transaction", foreign_key: "payer_id"
  has_one :membership
  has_one :friend, through: :membership



  def credit_total
    if self.credits.empty?
      return 0
    else
      credits_array = []
      self.credits.each do |credit|
        credits_array << credit.amount
      end
      credits_array.inject { |sum, amount| sum + amount }
    end
  end

  def debit_total
    if self.debits.empty?
      return 0
    else
      debits_array = []
      self.debits.each do |debit|
        debits_array << debit.amount
      end
      debits_array.inject { |sum, amount| sum + amount }
    end
  end

  def balance
    credit_total - debit_total
  end

end
