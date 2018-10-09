class Notes
  def initialize
    @notes = []
  end
  
  def add(title, body)
    @notes << { title: title, body: body }
    puts "There are now #{notes.count} notes"
  end
  
  attr_reader :notes
  
  def list
    i = 0
    @notes.each { |notes| puts "#{i}. #{notes[:title] }"
    i += 1 }
  end
  
  def read(index_num)
    @notes.each { |item|
      if @notes.index(item) == index_num
        puts "#{item[:title].upcase}\n\n#{item[:body]}"
      end
    }
  end
end
