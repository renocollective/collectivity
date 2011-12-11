puts 'Seeding DB ...'

tr  = Collectivity::Organization.create!(:name => "Treeness")

tr.members.create!(:first_name => "John", :last_name => "Jusayan", :email => "john@example.com")

rc = Collectivity::Organization.create!(:name => "Reno Collective")

rc.members.create!(:first_name => "Chris", :last_name => "Yoder", :email => "chris@example.com")
rc.members.create!(:first_name => "Colin", :last_name => "Loretz", :email => "colin@example.com")
rc.members.create!(:first_name => "Don", :last_name => "Morrison", :email => "don@example.com")

ab = Collectivity::Organization.create!(:name => "Arborglyph")

ab.members.create!(:first_name => "Mike", :last_name => "Henderson", :email => "mike@example.com")