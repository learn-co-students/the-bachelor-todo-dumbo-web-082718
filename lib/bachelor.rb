def get_first_name_of_season_winner(data, season)
  	name = ""
	data.each do |season_name, girls|
		if season_name == season
			girls.each do |girl|
				if girl["status"] == "Winner"
					name = girl["name"].split(" ")[0]
				end
			end
		end
	end
	name
end	

def get_contestant_name(data, occupation)
  	name = ""
	data.each do |season_name, girls|
		girls.each do |girl|
			if girl["occupation"] == occupation
				name = girl["name"]
			end
		end
	end
	name
end	

def count_contestants_by_hometown(data, hometown)
  	count = 0
	data.each do |season_name, girls|
		girls.each do |girl|
			if girl["hometown"] == hometown
				count += 1
			end
		end
	end
	count
end	

def get_occupation(data, hometown)
  occupation = nil
	data.each do |season_name, girls|
		girls.each do |girl|
			if girl["hometown"] == hometown && occupation == nil
				occupation = girl["occupation"]
			end
		end
	end
	occupation
end	


def get_average_age_for_season(data, season)
  	sum = 0
		count = 0
	data.each do |season_name, girls|
		if season_name == season
			girls.each do |girl|
				sum += girl["age"].to_i
				count += 1
			end
		end
	end
	(sum.to_f / count.to_f).round.to_i
end 