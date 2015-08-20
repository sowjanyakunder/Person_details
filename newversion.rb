class Version
  
	  def initialize(file_names,section,version_cd,version_nm)
		   @section=section
		   @version_cd=version_cd
		   @version_nm=version_nm
		   @file_names1 = file_names
	  end

	  def versionchange()
		   
		     @file_names1.each do |file_name|
		     text = File.read(file_name)
		   
             cntt = /((#{@section}.*\s.*(versionCode\s.*?(.*)\s.*?(versionName\s=?)(.*))))/.match (text)
             
		     File.open(@file_names1[0], 'w') do |out_file|
		      out_file.print text.gsub(/#{$3}/,"\n\t\s\s\s\sversionName = \"#{@version_nm}\"\n\t\s\s\sversioncode = #{@version_cd}")
		     end
		   end
	   end

end

v = Version.new(['build1.gradle'],"DEV",512,"NEWAND")
v.versionchange()




