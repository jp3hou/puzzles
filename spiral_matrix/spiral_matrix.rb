class SpiralMatrix
  def initialize(two_d_array)
    @two_d_array = two_d_array
    @top_index = @left_index = 0
    @bottom_index = @two_d_array.length - 1
    @right_index = @two_d_array[0].length - 1
    @result = ''
  end

  def p_top_row
    (@left_index..@right_index).each do |index|
      @result << @two_d_array[@top_index][index].to_s
    end
  end

  def p_right_column
    (@top_index..@bottom_index).each do |index|
      @result << @two_d_array[index][@right_index].to_s
    end
  end

  def p_bottom_row
    @right_index.downto(@left_index) do |index|
      @result << @two_d_array[@bottom_index][index].to_s
    end
  end

  def p_left_column
    @bottom_index.downto(@top_index) do |index|
      @result << @two_d_array[index][@left_index].to_s
    end
  end

  def calculate
    until (@left_index > @right_index || @top_index > @bottom_index) do
      puts "left: #{@left_index}, right: #{@right_index}, top: #{@top_index}, bottom: #{@bottom_index}"
      p_top_row
      @top_index += 1

      p_right_column
      @right_index -= 1

      p_bottom_row
      @bottom_index -= 1

      p_left_column
      @left_index += 1

    end
    puts @result
  end
end
