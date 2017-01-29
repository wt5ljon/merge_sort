# main merge sort function
def merge_sort(array)
	return array if array.length == 1
	if array.length > 1
		p = 0
		r = array.length
		q = (p + r)/2
		b = array.dup.slice(0, q)
		c = array.dup.slice(q, r)
	end
	merge_sort(b)
	merge_sort(c)
	merge(b, c, array)
end

# merging helper function
def merge(first, second, array)
	p = 0		# index into first
	q = 0		# index into second
	r = 0		# index into array

	# merge first and second arrays until one is exhausted
	while p < first.length && q < second.length
		if first[p] < second[q]
			array[r] = first[p]
			p += 1
			r += 1
		else
			array[r] = second[q]
			q += 1
			r += 1
		end
	end
	
	# merge remainder of first array until exhausted
	while p < first.length
		array[r] = first[p]
		p += 1
		r += 1
	end

	# merge remainder of second array until exhausted 
	while q < second.length
		array[r] = second[q]
		q += 1
		r += 1
	end
	array
end
		
