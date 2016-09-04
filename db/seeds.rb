# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.destroy_all

names = [
	"이은찬",
	"김슬아",
	"홍민석",
	"한승진",
	"황규정",
	"안재욱",

	"고수창",
	"김현우",
	"조건희",
	"김유민",


	"최지훈",
	"김선우",
	"유건열",
	"박현우",
	"김동우",
	"김재은",

	"장선혁",
	"백동환",
	"전현준",
	"최하진",
	"방지윤",
	"신광수",


	"이원준",
	"배지운",
	"유민정",
	"윤지수",
	"정훈",
	"최진용",

	"임재웅",
	"김민수",
	"홍한석",
	"김도형",
	"정성민",
	"이준수",


	"남창현",
	"이주진",
	"이준형",
	"김운식",
	"김문수",

	"문상진",
	"오현석",
	"김현준",
	"최평강",


	"박환일",
	"유호균",
	"이상준",
	"박진수",
	"장준하",
	"이주홍",

	"박준우",
	"이태우",
	"권기용",
	"박종복",
	"김경수",
	"박지혁",


	"이영수",
	"장승호",
	"주병진",
	"박준규",
	"박승현",
	"송원준",

	"임영민",
	"배정한",
	"이호연",
	"김규환",
	"이지명",
	"손진호",


	"이종현",
	"조준래",
	"정유빈",
	"진주원",
	"조영제",
	"이제형",

	"이미정",
	"장경주",
	"남은우",
	"임현진",
	"임규리",
	"전성민",


	"권미영",
	"박형철",
	"강병욱",
	"이슬기",
	"최수봉",
	"윤승원",

	"정현진",
	"유영수",
	"박준영",
	"강대현",
	"오영진",
	"최한설",


	"한윤도",
	"최혜선",
	"이종찬",
	"김태성",
	"신우철",

	"오지원",
	"한정민",
	"황대민",
	"김택민"
]

puts names.count

names.each_with_index do |name, i|
	p = Profile.new
	p.name = name
	p.email = "#{name}@gmail.com"
	p.phone_number = "010-0000-%04i" % rand(1000)
	p.seat_number = i
	p.save
end
