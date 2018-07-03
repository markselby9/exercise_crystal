# Please implement your solution to react in this file
module React
  abstract class Cell
    @dependents = [] of ComputeCell

    def initialize(value : Int32)
      @value = value
    end

    getter :value
    getter :dependents
  end

  class InputCell < Cell
    def value=(new_value : Int32) # note!!
      @value = new_value

      # @dependents.each(&.propagate)
      @dependents.each { |t| t.propagate }
      # @dependents.each(&.fire_callbacks)
      @dependents.each { |t| t.fire_callbacks }
    end
  end

  class ComputeCell < Cell
    @callback_id = 0
    @callbacks = {} of Int32 => Int32 ->
    @last_callback_return_value = 0

    def initialize(cell : Cell, &callback : Int32 -> Int32)
      # proc = ->{ callback.call(cell.value)}
      initialize(->{ callback.call(cell.value) }, cell) # note!!
    end

    def initialize(cell1 : Cell, cell2 : Cell, &callback : (Int32, Int32) -> Int32)
      initialize(->{ callback.call(cell1.value, cell2.value) }, cell1, cell2)
    end

    private def initialize(@newValueProc : -> Int32, *dependencies : Cell) # note!!
      super(@newValueProc.call)
      @last_callback_return_value = @value
      dependencies.each { |c| c.dependents << self }
    end

    def add_callback(&callback : Int32 ->) : Int32
      @callback_id += 1
      @callbacks[@callback_id] = callback
      @callback_id
    end

    def remove_callback(id : Int32)
      @callbacks.delete(id)
    end

    protected def propagate
      new_value = @newValueProc.call
      return if new_value == @value
      @value = new_value
      @dependents.each(&.propagate)
    end

    protected def fire_callbacks
      return if @last_callback_return_value == @value
      @last_callback_return_value = @value
      @callbacks.each_value do |c|
        c.call(@value)
      end
      @dependents.each(&.fire_callbacks)
    end
  end
end

input = React::InputCell.new(1)
output = React::ComputeCell.new(input) { |v| v + 1 }
puts output.value == 2
input.value = 2
puts output.value == 3
