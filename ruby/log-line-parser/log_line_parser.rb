class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[1].strip
  end

  def log_level
    @line.split(":")[0].scan(/\[(\w+)\]/)[0][0].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
