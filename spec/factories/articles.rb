FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "MyTitle #{n}" }
    sequence(:content) {|n| "MyContent #{n}" }
    sequence(:slug) { |n| "My-Title-#{n}" }
  end
end
