require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |info_array|
    info_array.each do |key, value|
      if (key == "status") && (value == "Winner")
        return info_array["name"].split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info_array|
    info_array.each do |contestant_info_hash|
      contestant_info_hash.each do |key, value|
        if (key == "occupation") && (value == occupation)
          return contestant_info_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, info_array|
    info_array.each do |contestant_info_hash|
      contestant_info_hash.each do |key, value|
        if value == hometown
          hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, info_array|
    info_array.each do |contestant_info_hash|
      contestant_info_hash.each do |key, value|
          if contestant_info_hash["hometown"] == hometown
            return contestant_info_hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  average = 0
  data.each do |season_number, info_array|
    if season_number == season
      info_array.each do |contestant_info_hash|
        contestant_info_hash.each do |key, value|
          if key == "age"
            age_total += value.to_f
            average = (age_total / info_array.length).round
          end
        end
      end
    end
  end
  average
end
