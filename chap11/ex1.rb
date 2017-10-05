#Safer picture downloading
Dir.chdir('/home/m/Desktop/pic/2/')
pic_names = Dir['/home/m/Desktop/pic/1/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts "Downloading #{pic_names.length} files"
pic_number = 1
pic_names.each do |name| print'.'
  new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end

  if File.exist?(new_name) == true
    i=1
      while File.exist?(new_name) == true
      new_name = new_name[0..-5]+"(#{i}).jpg"
       i+=1
     end
      File.rename name, new_name
  else
      File.rename name, new_name
  end
  pic_number+=1
end
puts "done!"
