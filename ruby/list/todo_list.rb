class TodoList

	def initialize(chores)
		@chores_list = chores.flatten
	end
	def chores
		@chores
	end
	def get_items
		@chores_list
	end

	def add_items(new_item)
		@chores_list << new_item
	end
	def delete_item(item)
		@chores_list.delete_at(item)
	end
	def get_item(index)
		chores_list(index)
	end

end


