require "date"

class Todo
  def initialize(text, date, completed)
    @text = text
    @date = date
    @completed = completed
  end

  def overdue?
    Date.today > @date
  end

  def due_later?
    Date.today < @date
  end

  def due_today?
    Date.today == @date
  end

  def to_displayable_string
    if @completed
      todo_completion = "[X] #{@text} "
    elsif !@completed and Date.today == @date
      todo_completion = "[ ] #{@text} "
    else
      todo_completion = "[ ] #{@text} #{@date} "
    end
    return todo_completion
  end
end

class TodosList
  def initialize(todos)
    @todos = todos
  end

  def add(todo_added)
    @todos.push todo_added
  end

  def overdue
    TodosList.new(@todos.filter { |todo| todo.overdue? })
  end

  def due_today
    TodosList.new(@todos.filter { |todo| todo.due_today? })
  end

  def due_later
    TodosList.new(@todos.filter { |todo| todo.due_later? })
  end

  def to_displayable_list
    increment_value = 0
    todos_array = []
    @todos.each do |name|
      todos_array[increment_value] = name.to_displayable_string
      increment_value = increment_value + 1
    end
    return todos_array.join("\n")
  end
end

date = Date.today
todos = [
  { text: "Submit assignment", due_date: date - 1, completed: false },
  { text: "Pay rent", due_date: date, completed: true },
  { text: "File taxes", due_date: date + 1, completed: false },
  { text: "Call Acme Corp.", due_date: date + 1, completed: false },
]

todos = todos.map { |todo|
  Todo.new(todo[:text], todo[:due_date], todo[:completed])
}

todos_list = TodosList.new(todos)
todos_list.add(Todo.new("Sevice vehicle", date, false))
puts "My Todo-list\n\n"

puts "Overdue\n"
puts todos_list.overdue.to_displayable_list
puts "\n\n"

puts "Due Today\n"
puts todos_list.due_today.to_displayable_list
puts "\n\n"

puts "Due Later\n"
puts todos_list.due_later.to_displayable_list
puts "\n\n"
