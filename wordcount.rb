#open a file from the command line
# counters how many times word occurs

# dictionary key = word 
#            value = word count


def remove_punc(contents)
    # punc = "!-.:;,\"'"
    return contents.downcase.gsub(/[^a-z]/, ' ')
end

def text_split(contents)
    list_of_words = contents.split(" ")
    return list_of_words
end

def make_hash(list_of_words)
    h = Hash.new
    list_of_words.each do |word|
        # puts word
        if h.include?(word)
            h[word] = h[word] + 1
        else
            h[word] = 1
        end
    end
    return h
end

def display(hash)
    #to display key value pairs

    hash.sort_by { |word, frequency| frequency }.each { |pair|
        puts "#{pair[0]} : #{pair[1]}"
    }
end

def main
    file = open("emma.txt", "r")
    contents = file.read
    file.close
    
    no_punc = remove_punc(contents)
    list_of_words = text_split(no_punc)
    puts list_of_words
    h = make_hash(list_of_words)  
    display(h) 

end

main