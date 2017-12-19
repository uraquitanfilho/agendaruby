namespace :utils do
  desc "Popular Banco de Dados."
  task seed: :environment do
      puts "Gerando os contatos (Contacts)"
      10.times do |i|
          Contact.create!({name:Faker::Name.name, 
                        email:Faker::Internet.email,
                        kind:Kind.all.sample,
                        rmk:Faker::Lorem.paragraph([1,2,3,4,5].sample)
                       })
      end  
      puts "Fim da geração dos Contacts [OK]"  
      
      puts "Gerando os endereços"
      Contact.all.each do |contact|
          Address.create!({street:Faker::Address.street_address, 
                        city:Faker::Address.city,
                        state:Faker::Address.state_abbr,
                        contact: contact
                       })
      end  
      puts "Fim da geração dos endereços [OK]"
      
      puts "Gerando os telefones"
       Random.rand(1..5).times do |i|
          Contact.all.each do |_contact|
              Phone.create!({  phone: Faker::PhoneNumber.phone_number,
                               contact: _contact
                           })
        end               
      end  
      puts "Fim da geração dos telefones [OK]"
      
  end
end
