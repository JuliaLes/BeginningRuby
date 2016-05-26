# Find the largest palindrome made from the product of two three-digit numbers

max = 0

for i in 100..1000 do 
	for j in 100..1000 do
		k = i * j
		if k.to_s == k.to_s.reverse
			if k > max 
				max = k
			end
		end
	end
end
	puts max