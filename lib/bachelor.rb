
def get_first_name_of_season_winner(data, season)

  name = ""
  data[season].find do |hash|
     name = hash["name"]
  end
  name.split.first

end

def get_contestant_name(data, occupation)
  # code here
  #first find the right hash containing the given occupation
 name = " "

 data.each do |key, value|
   value.each do |hashes|
     if hashes["occupation"] == occupation
       #Then isolate the name
       hashes.map do |attribute, value|
         if attribute == "name"
           name = value
         end
       end
     end
   end
 end

 name

end

def count_contestants_by_hometown(data, hometown)
  # code here

  counter = 0

  data.each do |key, value|
    value.each do |hashes|
      if hashes["hometown"] == hometown
        counter += 1
      end
    end
    end

  counter
end



def get_occupation(data, hometown)

 hometown_hash = []

 data.each do |key, value|
   value.find do |hashes|
     if hashes["hometown"] == hometown
     	hometown_hash << hashes
     end
   end
 end

 first_person = hometown_hash.find do |name|
   name
 end

 first_person["occupation"]

end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |hash|
    hash.each do |attribute, value|
      if attribute == "age"
        ages << value
      end
    end
  end

 number_array = []
 ages.map do |numbers|
   number_array << numbers.to_f
 end

 sum = number_array.inject { |sum, el| sum + el }

 size =  number_array.size

 average = (sum/size).round
 average

end
