class Store < ActiveRecord::Base
   has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,    greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_men_or_women_apparel
  after_validation :print_error, on: [ :create, :update ]
  
  def  must_carry_at_least_one_men_or_women_apparel
    if !mens_apparel && !womens_apparel
      puts " Stores must carry at least one of the men's or women's apparel"
      return false
    else
      return true
    end
  end
  def print_error
    puts self.errors.full_messages
  end
end
