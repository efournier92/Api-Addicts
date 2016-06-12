FactoryGirl.define do
	factory :api do
		sequence(:name) { |n| "API ##{n}" }
		sequence(:url)  { |n| "www.apiaddict.xyz/api#{n}" }
		description 'This is an awesome paid API.'
		paid false
		association :user, factory: :user
		trait (:paid) { paid true}
		trait (:free) { paid false}
	end
end
