def get_name(person)
  return person[:name]
end


def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def check_particular_food(person, snack)
  for food in person[:favourites][:snacks]
    if food == snack
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
  p person[:friends].length()
end


def remove_friend(person, friend)
  person[:friends].delete(friend)
  p person[:friends].length()
end



def total_monies(people)
    total = 0
    for money in people
      total += money[:monies]
      money[:monies] = 0
    end
    return total
  end


  def lend_money(person1, person2, amount)
    person1[:monies] += amount
    return person1[:monies]
  end



  def total_food(people)
    food = Array.new
    for type in people
      food += type[:favourites][:snacks]
      # food.concat(type[:favourites][:snacks])
    end
    return food.length() #.flatten() ???
  end


  def no_friends(people)
    lonely = Array.new
    for busy in people
      if busy[:friends][0] == nil
        lonely.push(busy[:name])
      end
    end
    return lonely.length()
  end
