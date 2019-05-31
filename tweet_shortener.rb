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
      if finalWord[counter] == key[counter2]
        z=finalWord[counter]
        finalWord[counter] = dictionary[z]
      end 
      counter2 = counter2 + 1
    end 
    counter = counter + 1
  end 
  return finalWord.join(" ")
end 



def bulk_tweet_shortener(tweet)
  
  increment = 0 
  while (increment < tweet.length)
  
    finalWord=tweet[increment]
    finalWord=finalWord.split(" ")
    key = dictionary.keys 
    counter = 0 
    while (counter < finalWord.length)
      counter2=0 
      while (counter2 < key.length)
        q=finalWord[counter]
        if finalWord[counter] == key[counter2]
          z=finalWord[counter]
          finalWord[counter] = dictionary[z]
        end 
        counter2 = counter2 + 1
      end 
      counter = counter + 1
    end 
    puts finalWord.join(" ")
  
  increment = increment + 1 
  end
end




