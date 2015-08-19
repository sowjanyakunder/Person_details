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
		     cnt = /(#{@section}.*\{(\s.*)(\s.*))/.match (text)
		     str1 = $1
		     puts $2
		     puts $3
		     puts str1

		      File.open( @file_names1[0], 'w') do |out_file|
		      out_file.print text.gsub(/#{$1}/,"#{@section}{\n\t\s\s\s\sversionName = \"#{@version_nm}\"\n\t\s\s\sversioncode = #{@version_cd}")
		     end
		   end
	   end

end

v = Version.new(['build1.gradle'],"QA",412,"NEWAND")
v.versionchange()

