module FinancialUtils
  def sec_auth_life_card(fullname, password1, password2)
    master = fullname.chars.each.with_index(1).to_h { |v, i| [i, v] }
    { first: master[password1], second: master[password2] }
  end
  
  module_function :sec_auth_life_card
end