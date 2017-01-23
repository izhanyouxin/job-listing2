# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Hello World!'
puts '這個種子檔會自動建立一個帳號, 並且随机創建 10 個jobs，10个隐藏的jobs'

create_account = User.create([email: '123456@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account is created successfully!'

job_info = [
  '招聘全栈工程师助理',
  '招聘大数据分析师',
  '招聘高级图片处理设计师',
  '招聘ios开发工程师',
  '招聘文案专员',
  '招聘前端开发工程师',
  '招聘市场营销',
  '招聘php后台研发工程师',
  '招聘python工程师',
  '招聘JAVA研发工程师',
  '招聘js前端工程师',
  '招聘高级客服经理'
]
create_jobs = for i in 1..10 do
                Job.create!([title: job_info[rand(job_info.length)], description: "这是一个所有人都可以看到的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
              end
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: "这是一个隐藏的管理员才能看到的工作", wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
