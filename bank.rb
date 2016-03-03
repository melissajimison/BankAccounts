require 'csv'
module Bank
  class Account
    attr_accessor :id, :balance, :date
    def initialize
      @id = nil
      @balance = nil
      @date = nil
    end

    def one
      # user = []
      total = CSV.read('support/accounts.csv')
      total = total.first
      @id = total[0]
      @balance = total[1]
      @date = total[2]
      # user << @id
      # user << @balance
      # user << @date
      # puts "id: #{@id} - balance: #{@balance} - use since #{@date}"
      # puts user
      # puts user
      # return total
    end

        # Class method One before deciding to chanfe to initializer
        # def self.one
        #   total = CSV.read('support/accounts.csv').first
        #   @id = total[0]
        #   @balance = total[1]
        #   @data = total[2]
        #   self.new
        # end

    def self.all
      array_accounts = []
      CSV.read('support/accounts.csv').each do |i|
        i = self.new
        array_accounts << i
      end
        # puts array_accounts
        # puts array_accounts[2]
    end

    # def withdraw(withdraw)
    #   @balance = @balance - withdraw
    #   if @balance < 0
    #     @balance = @balance + withdraw
    #     puts "You dont have all that money"
    #   end
    #   balance
    # end
    #
    # def deposit(money)
    #   @balance = @balance + money
    #   balance
    # end
    #
    # def balance
    #   puts "#{@balance} is your new balance"
    # end

  end

  class Owner #< Account
    attr_accessor :name, :last_name, :address, :email, :mobile
    def initialize(user_hash)
      @name = user_hash[:name]
      @last_name = user_hash[:last_name]
      @address = user_hash[:address]
      @email = user_hash[:email]
      @mobile = user_hash[:mobile]
    end
  end

end

clients = Bank::Account.new
puts clients.one
puts clients.class
puts clients
puts clients.balance
# melissa_account = Bank::Account.one
# puts melissa_account
# melissa_account.deposit(400)
