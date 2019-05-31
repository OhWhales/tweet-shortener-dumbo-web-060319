# Write your code here.

def dictionary
change=
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end 

def word_substituter(str)
  
  finalWord=str.split(" ")
  key = dictionary.keys 
  counter = 0 
  while (counter < finalWord.length)
    counter2=0 
    while (counter2 < key.length)
      if finalWord[counter].downcase == key[counter2]
        finalWord[counter] == dictionary[finalWord[counter]]
      end 
      counter2 = counter2 + 1
    end 
    counter = counter + 1
  end 
end 