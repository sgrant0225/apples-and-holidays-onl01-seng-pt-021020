require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash[:winter].collect do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring].collect do |holiday, supplies|
     supplies << supply
   end
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season][holiday_name] = supply_array
    holiday_hash
  end

def all_winter_holiday_supplies(holiday_hash)
 supplies_for_winter = holiday_hash[:winter].collect do |holiday, supplies|
   supplies
  end
  supplies_for_winter.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
 holiday_hash.each do |key, value|
   puts "#{key.to_s.capitalize!}:"
   value.each do |holiday, supplies|
     holiday = holiday.to_s.split("_")
      holiday.each do |holidays|
        holidays.capitalize!
      end
  puts "  #{holiday.join(" ")}: #{supplies.join(", ")}"
   end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    bbq_array = [] 
  holiday_hash.collect do |season, holiday|
    holiday.collect do |data, supplies|
      if supplies.include?("BBQ")
        bbq_array << data
      end
      bbq_array
    end
  end
end







