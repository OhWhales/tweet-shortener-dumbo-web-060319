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
    q=finalWord[counter].downcase 
    while (counter2 < key.length)
      if q == key[counter2]
        z=q
        finalWord[counter] = dictionary[z]
      end 
      counter2 = counter2 + 1
    end 
    counter = counter + 1
  end 
  return finalWord.join(" ")
end 



def bulk_tweet_shortener(tweet)
  
  tweet.each do |sentence|
    puts word_substituter(sentence)
  end 

end

def selective_tweet_shortener(tweet)
  
  a=tweet.split("")
  if a.length < 140
    return tweet
  end 
end 


