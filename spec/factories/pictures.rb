FactoryGirl.define do
  factory :picture do
    name "Logo"
	preview "/uploads/picture/test/1"
	file "/uploads/picture/test/1"
	license_id 1
	user_id 1
  end

end
