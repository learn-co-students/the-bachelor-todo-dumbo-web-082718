def get_first_name_of_season_winner(data, season)
  first_name=""
  data.each do |season_num,array|
    if season_num== season
      array.each do |stat_hash|
        stat_hash.each do |stat_key,stat_value|
          if stat_hash["status"]=="Winner"
            name= stat_hash["name"]
            first_name= name.split(" ")
            return first_name[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num,array|
    array.each do |stat_hash|
      stat_hash.each do |stat_key,stat_value|
        if stat_hash["occupation"]==occupation
          return stat_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num,array|
    array.each do |stat_hash|
      if stat_hash["hometown"]==hometown
        count +=1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_num,array|
    array.each do |stat_hash|
      if stat_hash["hometown"]==hometown
        return stat_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_average_array=[]
  data.each do |season_num,array|
    if season_num== season
      array.each do |stat_hash|
        stat_hash.each do |stat_key,stat_value|
          age_average_array<<stat_hash["age"].to_f
        end
      end
    end
  end
  age_total=0
  age_average_array.each do |age|
    age_total=age_total+ age
  end
  average= age_total/age_average_array.length
  return average.round
end
