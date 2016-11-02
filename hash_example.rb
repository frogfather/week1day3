#A

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']


#1. Work out how many stops there are in the lines array
    lines.count

#2. Return 'Edinburgh Park' from the array
    lines[1]

#3. How many ways can we return 'Princes Street' from the array?
    lines[4] 
    lines.pop 
    lines[-1] 

#4. Work out the index position of 'Haymarket' 
    #it's index 3 as it's the 4th item

#5. Add 'Airport' to the start of the array 
    lines.unshift('Airport')

#6. Add 'York Place' to the end of the array
    lines.push('York Place')

#7. Remove 'Edinburgh Park' from the array using its name 
    lines.delete_at(lines.index('Haymarket')) 

#8. Delete 'Edinburgh Park' from the array by index
    indexpos = lines.index('Haymarket')
    if indexpos != nil then 
      lines.delete_at(indexpos)
    end

#9. Reverse the positions of the stops in the array
    lines.reverse!

#10. Print out all of the stops using a for loop and a while loop
    
    for stop in lines
    puts stop
    end
    
    counter=0
    while counter < lines.count
    puts lines[counter]
    counter +=1
    end

# B. Given the following data structure:


  my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

#1. How would you return the string `"One"`?
    my_hash[1]

#2. How would you return the string `"Two"`?
    my_hash[:two]

#3. How would you return the number `2`?
    my_hash["two"]

#4. How would you add `{3 => "Three"}` to the hash? 
    my_hash[3]="Three"

#5. How would you add `{:four => 4}` to the hash? 
    my_hash[:four]=4


users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        :fluffy => "cat",
        :fido => "dog",
        :spike => "dog"
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        :nemo => "fish",
        :kevin => "fish",
        :rover => "dog",
        :rupert => "parrot"
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :sssteven => "snake"
      }
    },
  }

#q1
  puts users["Jonathan"][:twitter]

#q2  
  puts users["Erik"][:home_town]

#q3
  puts users["Erik"][:favourite_numbers]

#q4
  puts users["Avril"][:pets][:Colin] #a virtual pet!

#q5
  erik_numbers = users["Erik"][:favourite_numbers]
  puts erik_numbers.sort.first

  avril_numbers = users["Avril"][:favourite_numbers]
  avril_even_numbers = []
  for numbers in avril_numbers
    if numbers % 2 ==0 then avril_even_numbers.push(numbers)
    end
  end
  puts "avril: #{avril_even_numbers}"
  
  jonathan_sorted_numbers = users["Jonathan"][:favourite_numbers].sort!
  jonathan_unique_numbers = []
  for numbers in jonathan_sorted_numbers 
    if jonathan_unique_numbers.index(numbers) == nil then jonathan_unique_numbers.push(numbers)
    end
  end
  puts "jonathan: #{jonathan_unique_numbers}"

  users["Erik"][:favourite_numbers].push(7)
  puts users["Erik"][:favourite_numbers]

  users["Erik"][:home_town] = "Edinburgh"
  puts users["Erik"][:home_town]

  users["Erik"][:pets]["Fluffy"]="Dog"
  puts users["Erik"][:pets]
  #used string rather than symbol as capital F specified on Fluffy

  users["John"]={:twitter => 'frogfather', :favourite_numbers => [2,3,5,7], :home_town => "Edinburgh"}
  puts users["John"]
