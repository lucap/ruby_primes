def print_table(t)
  t.each {|r| puts "#{r.join "\t"}\n"}
end

def find_primes(n)
  # source: http://codegolf.stackexchange.com/a/19994
  (2..(1.0/0)).lazy.select{|i|!(2...i).any?{|j|i%j==0}}.take(n).to_a
end

def multiply(arr)
  res = [[''] + arr]
  for i in 0..arr.size-1
    res.push([arr[i]])
    for j in 0..arr.size-1
      res[i+1].push(arr[i] * arr[j])
    end
  end 
  res 
end

n = (!ARGV[0].nil? ? ARGV[0].to_i : 10)
print_table multiply(find_primes(n))
