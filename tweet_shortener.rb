require 'pry'
def dictionary
{
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4', 
"For" => 4,
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter string
    tweet = string.split
    dict = dictionary
    tweet.each_with_index do |word,i|
        dict.each do |keyword,replacement|
            word == keyword ? tweet[i] = replacement : word = word
        end
    end
    tweet.join ' '
end

def bulk_tweet_shortener tweets
    tweets.each do |tweet|
        puts word_substituter tweet
    end
end

def selective_tweet_shortener tweet
    if tweet.length > 140 
        word_substituter tweet
    else
        tweet    
     end
end

def shortened_tweet_truncator tweet
    subbed = word_substituter tweet
    subbed.length > 140 ? subbed[0..139] : subbed
end
shortened_tweet_truncator("sdklfjslkcjdskcfj  sdfkjdscldsjf slkfjsdlkfjkj skldfjsdklfjkj ksljflskefjksdjfsl dskfjskfjsdkfj dsfjkjklsdskdljf skdjf") 
