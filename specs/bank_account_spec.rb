require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test

  def setup
    # account = {
    #   holder_name: "John",
    #   balance: 500,
    #   type: "business"
    # }

    @bank_account = BankAccount.new("John", 500, "business")
  end

  def test_account_name
    assert_equal("John", @bank_account.holder_name)
  end

  def test_account_balance
    assert_equal(500, @bank_account.balance)
  end

  def test_account_type
    assert_equal("business", @bank_account.type)
  end

  def test_set_account_name
    @bank_account.holder_name = "Conor"
    assert_equal("Conor", @bank_account.holder_name)
  end

  def test_set_account_balance
    @bank_account.balance = 250
    assert_equal(250, @bank_account.balance)
  end

  def test_set_account_type
    @bank_account.type = "personal"
    assert_equal("personal", @bank_account.type)
  end

  def test_pay_into_account
    @bank_account.pay_in(100)
    assert_equal(600, @bank_account.balance)
  end

  # def test_pay_monthly_fee
  #   @bank_account.pay_monthly_fee
  #   assert_equal(450, @bank_account.balance)
  # end

  def test_pay_monthly_fee__business
    @bank_account.pay_monthly_fee
    assert_equal(450, @bank_account.balance)
  end

  def test_pay_monthly_fee__personal
    second_bank_account = BankAccount.new("Conor", 250, "personal")
    second_bank_account.pay_monthly_fee
    assert_equal(240, second_bank_account.balance)
  end

end
