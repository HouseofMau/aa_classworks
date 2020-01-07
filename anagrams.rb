# Phase 1
# Time Complexity: O(n!)
def first_anagram?(str1, str2)
    arr1 = str1.split("") 
    arr2 = arr1.permutation.to_a 

    arr2.include?(str2.split("")) 
end 

p first_anagram?("cat", "tac") 
p first_anagram?("cat", "nope") 
puts

# Phase 2
# Time Complexity: O(n) 
def second_anagram?(str1, str2)
    arr1 = str1.split("")
    arr2 = str2.split("") 

    arr1.each do |char|
        index = arr2.index(char) 
        return false if index.nil?

        arr2.delete_at(index) 
    end 

    arr2.empty? 
end 
p second_anagram?("cat", "tac") 
p second_anagram?("cat", "nope") 
puts 

# Phase 3
# Time Complexity: O(1)
def third_anagram?(str1, str2)

    str1.split("").sort == str2.split("").sort

end 
p third_anagram?("cat", "tac") 
p third_anagram?("cat", "nope") 
puts 

# Phase 4
# Time Complexity: O(n)
def fourth_anagram?(str1, str2)
    helper(str1) == helper(str2)
end 

def helper(str)
    hash = Hash.new(0)
    str.each_char do |char|
        hash[char] += 1
    end
    hash
end

p fourth_anagram?("cat", "tac") 
p fourth_anagram?("cat", "nope") 
puts 