

User.create! ([{email: 'clintbarton@gmail.com', password: 'pizzadog', password_confirmation: 'pizzadog'},
               {email: 'katebishop@gmail.com', password: 'lucky777', password_confirmation: 'lucky777'},
               {email: 'caroldanvers@gmail.com', password: 'AFpilot', password_confirmation: 'AFpilot'},
               {email: 'sanji@gmail.com', password: 'vinsmokesux', password_confirmation: 'vinsmokesux'},])

Artist.create! ([{name: 'Alamakota'},{name: 'Basia'},{name: 'Breakfast'},
                 {name: 'Gluten Free'},{name: 'Vegan'},{name: 'Lactose Free'}])

users = User.all
artists = Artist.all


10.times do
  RelatedArtist.create!(
    original_artist: artists.sample,
    related_artist: artists.sample
  )
end

10.times do
  users.sample.artists << artists.sample
end
