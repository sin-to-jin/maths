require_relative '../src/lib/financial_utils'

def cleaning_value!(value)
  value.delete!(' ')
end

def random_index(value, duplicate = false)
  cleaning_value! value
  random_value = -> { Random.rand(value.size) + 1 }

  return [random_value.call, random_value.call] if duplicate

  x, y = nil, nil
  while x == y
    x, y = random_value.call, random_value.call
  end
  [x, y]
end

RSpec.describe FinancialUtils do
  describe '#sec_auth_life_card' do
    context 'Invalid Cases' do
      [[nil, 1, 2], ['hogehoge', 1, nil], ['hogehoge', nil, 1], [nil, 1, 2], [nil, nil, 1], [nil, nil, nil]].each do |fullname, password1, password2|
        it "#{fullname.presence || 'nil'}\t|\t#{password1 || 'nil'}\t|\t#{password2 || 'nil'}\t||\tnil" do
          expect(FinancialUtils.sec_auth_life_card(fullname, password1, password2)).to eq(nil)
        end
      end
    end

    context '大文字が渡された時' do
      let(:fullname) { 'YAMADA TARO CHAN' }
      before do
        cleaning_value! fullname
      end
      it do
        password1, password2 = random_index(fullname)
        expected = { first: fullname[password1-1], second: fullname[password2-1] }
        expect(FinancialUtils.sec_auth_life_card(fullname, password1, password2)).to eq(expected)
      end
    end

    context '小文字が渡された時' do
      let(:fullname) { 'yamada taro chan' }
      before do
        cleaning_value! fullname
      end
      it do
        password1, password2 = random_index(fullname)
        expected = { first: fullname[password1-1].upcase, second: fullname[password2-1].upcase }
        expect(FinancialUtils.sec_auth_life_card(fullname, password1, password2)).to eq(expected)
      end
    end
  end
end
