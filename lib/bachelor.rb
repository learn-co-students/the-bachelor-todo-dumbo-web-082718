def get_first_name_of_season_winner(data, season)
  data[season].each do |e|
    if e["status"] == "Winner"
      return e["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_info|
    season_info.each do |e|
      if e["occupation"] == occupation
        return e["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season,season_info|
    season_info.each do |e|
      if e["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_info|
    season_info.each do |e|
      if e["hometown"] == hometown
        return e["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = []
  sum = 0
  data[season].each do |e|
    arr.push(e["age"])
  end
  arr.each do |e|
    sum += e.to_f
  end
  (sum/arr.length).round
end
