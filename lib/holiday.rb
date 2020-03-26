require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  holiday_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  # return the second element in the 4th of July array
  
 holiday_hash[:summer][:fourth_of_july][1]
 
# binding.pry
  end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas][2] = "Balloons"
  
  holiday_hash[:winter][:new_years][1] = "Balloons"
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash[:spring][:memorial_day].push(supply)
  
end

# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   holiday_hash[:fall][:diwali] = supply_array
#    
#   holiday_hash
# end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |seasons, festivals|
    festivals.each do |festivals, items|
      season = seasons.to_s.capitalize!
      festival_cap = festivals.to_s.split
      festival_cap.map do |words| 
        words.capitalize!
      end
      puts "#{season}:
     #{festival_cap}: #{items}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.collect do |season, festival|
    season.collect do |festival,|
      if festival[item] == "BBQ"
        p festival
      end
    end
  end

end







