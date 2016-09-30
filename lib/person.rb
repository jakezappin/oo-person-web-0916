# your code goes here

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid (amount)
    @bank_account = @bank_account + amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    @happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)

    if topic == "politics"

      @happiness = @happiness - 2
      self.happiness=(@happiness)

      friend.happiness = friend.happiness - 2
      friend.happiness=(friend.happiness)

      return "blah blah partisan blah lobbyist"

    elsif topic == "weather"
      @happiness = @happiness + 1
      self.happiness=(@happiness)

      friend.happiness = friend.happiness + 1
      friend.happiness=(friend.happiness)

      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
    self.happiness=(@happiness)
    friend.happiness=(friend.happiness)
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

end
