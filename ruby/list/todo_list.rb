
# Challenge 6.5 Pair Program, 5/3/17
# Chris McMenomy
# Joshua Rudio

class TodoList
  def initialize(arr)
    @list = arr
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_items
    @list
  end

  def get_item(int)
    @list[int]
  end
end
