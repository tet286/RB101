# problem_10.rb
# Given the Munster hash
# modify the has such that each member has an additionall age_group key
# age_group key has 1 of 3 values decribing the age group (kid, adult, senior)
# age = 0 - 17 => kid
# age = 18 - 64 => adult
# age > 64 => senior

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.values.each_with_index do |hash, index|
  if hash["age"] < 18
    hash["age_group"] = "kid"
  elsif hash["age"] > 17 && hash["age"] < 65
    hash["age_group"] = "adult"
  elsif hash["age"] > 64
    hash["age_group"] = "senior"
  end
end

p munsters

# Other Solution with each and case statement:
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
