require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness
    attr_writer 
    
    def initialize(name)
        @name = name 
        @hygiene = 8
        @happiness = 8 
        @bank_account = 25
    end

    def happiness=(new_happiness)
    
        if new_happiness > 10
            @happiness = 10 

        elsif new_happiness < 0
            @happiness = 0

        else
            @happiness = new_happiness
        end

    end

    def hygiene=(new_hygiene)

        if new_hygiene > 10 
            @hygiene = 10
        elsif new_hygiene < 0 
            @hygiene = 0 
        else
            @hygiene = new_hygiene
        end

    end 

    # state if they are happy and/or clean
    #The clean? and happy? methods are pretty 
    #similiar: they should return true if the happiness or hygiene points exceed seven. 
    #Otherwise they should return false.

    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
    end

    # get paid/receive payments

    def get_paid(salary)
        #adds salary to the bank_account
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out

        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"

        #The work_out method should increment the person's happiness by two points, 
        #decrease their hygiene by three points, 
        #and return the Queen lyrics, "♪ another one bites the dust ♫".
    end

    def call_friend(friend)
        
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
    #If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end

    #If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
        if topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        end

    #If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
        if topic != "politics" || "weather"
            return "blah blah blah blah blah"
        end

    end 
   



end
