# def get_account_name(account)
#   return account[:holder_name]
# end

class BankAccount
  #
  # attr_reader :holder_name, :balance, :type
  #
  # attr_writer :holder_name, :balance, :type

  attr_accessor :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  # def holder_name
  #   return @holder_name
  # end
  #
  # def balance
  #   return @balance
  # end
  #
  # def type
  #   return @type
  # end

  # def set_holder_name(name)
  #   @holder_name = name
  # end
  #
  # def set_balance(balance)
  #   @balance = balance
  # end
  #
  # def set_type(type)
  #   @type = type
  # end

  def pay_in(value)
    @balance += value
  end

  def pay_monthly_fee
    # if @type == "business"
    #   @balance -= 50
    # elsif @type == "personal"
    #   @balance -= 10
    # end

    # @balance -= 50 if @type == "business"
    # @balance -= 10 if @type == "personal"

    charges = {
      "business" => 50,
      "personal" => 10
    }

    @balance -= charges[@type]
    
  end

end
