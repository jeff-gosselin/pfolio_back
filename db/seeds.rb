User.destroy_all
Project.destroy_all
Skill.destroy_all
Summary.destroy_all

# u1 = User.create({username: 'Jeff', password_digest: '123abc'})

# p1 = Project.create({user_id: 14, title: 'Project One', technologies: 'React, Ruby on Rails', description: 'Lorem ipsum dolar at amet di', url: 'http://www.site1.com', date: 'March 2019'})

# p2 = Project.create({user_id: 14, title: 'Project Two', technologies: 'React, Ruby on Rails', description: 'Lorem ipsum dolar at amet di', url: 'http://www.site2.com', date: 'April 2019'})

# p3 = Project.create({user_id: 14, title: 'Project Three', technologies: 'React, Ruby on Rails', description: 'Lorem ipsum dolar at amet di', url: 'http://www.site3.com', date: 'May 2019'})

# if User.exists?
#     admin = User.first
#     about = Summary.create({user_id: admin.id, content: ''})
# end