class Employee < ActiveRecord::Base
   belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true ,greater_than_or_equal_to: 40 ,less_than_or_equal_to: 200}
  validates :store, presence: true
  after_validation :print_error, on: [ :create, :update ]

  def print_error
    puts self.errors.full_messages
  end

end
