require 'spec_helper'

describe(Task) do

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:list_id => 1, :description => "learn SQL", :type => "homework"})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#description") do
    it("let's you describe the task") do
      test_task = Task.new({:list_id => 1, :description => "learn SQL", :type => "homework"})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:list_id => 1, :description => "learn SQL", :type => "homework"})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same description and list ID") do
      task1 = Task.new({:list_id => 1, :description => "learn SQL", :type => "homework"})
      task2 = Task.new({:list_id => 1, :description => "learn SQL", :type => "homework"})
      expect(task1).to(eq(task2))
    end
  end
end
