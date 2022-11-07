FactoryBot.define do
  factory :comment do
    article_id {1}
    commneter {"commenter_name"}
    body {"commenters_body"}
    status {"private"}
  end
end