FactoryGirl.define do
   factory :vote do
     value rand(1..5)
     post
     user
   end
 end