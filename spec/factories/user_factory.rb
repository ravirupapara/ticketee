
FactoryGirl.define do
	
	factory :user do
		name "new_username"
		email "user@example.com"
		password_digest "$2a$10$r97o0ors6HO6btzJsEirZOfn1zHtMEgyAMuFTwl7wLTN9XTZjgJ8y"
	end
	
end