require "active_record"

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    puts "#{id}#{"."}#{display_status} #{todo_text} #{display_date}"
  end

  def self.show_list
    puts "My Todo-list\n\n"
    puts "Overdue\n"
    all.select { |todo| todo.due_date < Date.today }.map { |todo| todo.to_displayable_string }
    puts "\n\n"
    puts "Due Today\n"
    all.order(:ids)
    all.select { |todo| todo.due_date == Date.today }.map { |todo| todo.to_displayable_string }
    puts "\n\n"
    puts "Due Later\n"
    all.select { |todo| todo.due_date > Date.today }.map { |todo| todo.to_displayable_string }
    puts "\n\n"
  end
  def self.add_task(todo_hash)
    return(Todo.create!(todo_text: todo_hash[:todo_text], due_date: todo_hash[:due_in_days], completed: false))
  end
  def self.mark_as_complete!(todo_id)
    todo_item = Todo.find(todo_id)
    todo_item.completed = true
    todo_item.save
    return todo_item
  end
end
