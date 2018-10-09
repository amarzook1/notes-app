class Notes
  def initialize
    @notes = []
  end
  
  def add(title, body)
    @notes << { title: title, body: body }
    puts "There are now #{notes.count} notes\n"
  end
  
  attr_reader :notes
  
  def list
    @notes.each_with_index { |notes, index| puts "#{index}. #{notes[:title] }" }
  end
  
  def read(index_num)
    @notes.each { |item|
      if @notes.index(item) == index_num
        puts "#{item[:title].upcase}\n\n#{item[:body]}"
      end
    }
  end
end
