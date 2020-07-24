require 'active_support/all'

module FinancialUtils
  # Get security password for LifeCard.
  #
  # @param fullname CreditCard Fullname
  # @param first letter index
  # @param second letter index
  # @return hash[:first] => first upcase password, hash[:second] => second upcase password 
  def sec_auth_life_card(fullname, password1, password2)
    return nil if fullname.blank? || password1.blank? || password2.blank?

    fullname.delete!(' ')
    fullname.upcase!
    master = fullname.chars.each.with_index(1).to_h { |v, i| [i, v] }
    { first: master[password1], second: master[password2] }
  end
  
  module_function :sec_auth_life_card
end
