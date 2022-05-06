class Stack

    attr_reader :stacks

    def initialize
        @stacks = []
    end

    def push(el)
        @stacks.push(el)
    end

    def pop
        @stacks.pop
    end

    def peek
        @stacks.last
    end
end

class Queue

    attr_reader :queues

    def initialize
        @queues = []
    end

    def enqueue(el)
        @queues.unshift(el) || @queues.push(el)
    end

    def dequeue
        @queues.pop || @queues.shift
    end

    def peek
        @queues.last || @queues.first
    end
end

class Map

    attr_reader :mapped

    def initialize
        @mapped = []
    end

    def set(key, value)

        ele = @mapped.index{|p| p[0] == key}

        if ele
            @mapped[el][1] = value
        else 
            mapped.push([key, value])
        end
        value
    end

    def get (key)
        @mapped.each { |p| return p[1] if p[0] == key }
        nil
    end

    def delete(key)
        value = get(key)
        @mapped.reject! { |p| p[0] == key }
        value

    end

    def show
        deep_dup(@mapped)
    end

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end  
end