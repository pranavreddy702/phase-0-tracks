arr = ["los angeles", "chicago", "NY", "san francisco" ]

city = {
	west: "LA",
	east: "NY",
	central: "chicago"
}
p arr
p city
arr.each do |i|
	puts i
end

arr.map! do |i|
	puts i + " is my city in the U.S.A"
end

arr = [1,2,3,4,5,12,15,13,27,33,45]

=begin	arr.each do |i|
	arr.reject! {|i| i < 10}
		puts i
	end

	
	arr.each do |i|
		arr.select! {|i| i < 10}
		puts i
	end
	


puts arr.last
=end

arr.each do
temp = arr.length
arr.delete_at(1) == 2 
end

