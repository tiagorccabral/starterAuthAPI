# Creates default users

puts ("Creating users ....")

# Creates admin user
admin = User.new(email: "admin@admin.com", password: "password123")
admin.save
# Adds admin role to user created
admin.add_role "admin"

# Creates colaborator user
colaborator = User.new(email: "colaborator@colaborator.com", password: "password123")
colaborator.save
# Adds colaborator role to user
colaborator.add_role "colaborator"

# Creates regular user
user = User.new(email: "user@user.com", password: "password123")
user.save
# Adds regular user
user.add_role "user"

puts ("Users created ....")