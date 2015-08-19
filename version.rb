class Version
def initialize(section,version_cd,version_nm)

@section=section
@version_cd=version_cd
@version_nm=version_nm

end

def versionchange()
file_names = ['build1.gradle']
file_names.each do |file_name|
text = File.read(file_name)
 
cnt = /(#{@section}.*\{(\s.*)(\s.*))/.match (text)
str1 = $1
puts $2
puts $3
puts str1
File.open('output.txt', 'w') do |out_file|
out_file.print text.gsub(/#{$1}/,"#{@section}{\n\t    versionName = \"#{@version_nm}\"\n \t    versioncode = #{@version_cd}")
end
end
end
end

v = Version.new("QA",412,"NEWAND")
v.versionchange()

