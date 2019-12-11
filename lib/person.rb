# your code goes here
require 'pry'
class Person
    # initialized with a name
    attr_reader :name 
    # eight happiness points -make attr_accessors
    # eight hygiene points -make attr_accessors
    # $25 in their bank accounts- make attr_accessor
    attr_accessor :happiness, :hygiene, :bank_account
    def initialize(name, happiness = 8 , hygiene = 8, bank_account = 25)
        @name = name 
        @hygiene = hygiene
        @bank_account = bank_account
        @happiness = happiness
        
    end
    def happiness=(new_happy)
        if new_happy > 10
            @happiness = 10
        elsif new_happy < 0
            @happiness = 0
        else
            @happiness = new_happy
            return new_happy
        end
    end 

    def hygiene=(new_hygiene)
        if new_hygiene > 10 
            @hygiene = 10
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
            return new_hygiene
        end

    end

    def happy?
        if @happiness > 7 
            return true
        else
            return false
        end
    end
    
    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene+= 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend = "friend")
        self.happiness += 3
        friend.happiness += 3



    end

end


amia = Person.new("Amia")
john_louis = Person.new("John Louis")

# binding.pry