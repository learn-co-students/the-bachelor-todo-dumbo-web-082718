def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |contestant_info|
      if contestant_info.include?("Winner")
        return contestants["name"].split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  counter = 0
    data[season].each do |contestants|
        total += contestants["age"].to_f
        counter += 1
  end
  (total / counter).round
end
