#Better program logger
$logger_depth = 0
def log description, &block
  prefix = "  "*$logger_depth
  puts "#{prefix}Beginning \"#{description}\"..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts "#{prefix}\"#{description}\" finished, returning: #{result}"
end
