# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'mercy.ike@andela.com' }
    password { 'ozone4real' }
    first_name { 'Mercy' }
    last_name { 'Ike' }
    address { '8. Meigida st' }
    city { 'Apapa' }
    state { 'Lagos' }
    phone { '081738393000' }
    country { 'Nigeria' }
    postal_code { '1203309' }

    factory :admin do
      is_admin { true }
    end
  end
end
