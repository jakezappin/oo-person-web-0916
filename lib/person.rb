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
    @hygiene = @hygiene + 4

    self.hygiene=(@hygiene)

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def hygiene=(num)
    @hygiene = num

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happiness=(num)
    @happiness = num

    if @happiness > 10
      @happiness= 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def work_out
    @happiness = @happiness + 2
    @hygiene = @hygiene - 3

    self.hygiene=(@hygiene)
    self.happiness=(@happiness)

    if @happiness > 10
      @happiness = 10
    end

    if @hygiene < 0
      @hygiene = 0
    end

    return "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    @happiness = @happiness + 3

    self.happiness=(@happiness)

    friend.happiness = friend.happiness + 3
    if friend.happiness > 10
      friend.happiness = 10
    end

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
end
