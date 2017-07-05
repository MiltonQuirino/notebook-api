namespace :dev do

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    puts "Cadastrando os tipos de contato"
    kinds = %w(Amigo Comercial Conhecido)
    kinds.each do |kind|
      Kind.create!(
          description: kind
      )
    end
    puts "Tipos de Contatos cadastrados"

    puts "Cadastrando contatos"
    100.times do |i|
      Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          birthdate: Faker::Date.between(35.years.ago, 18.years.ago),
          kind: Kind.all.sample
      )
    end
    puts "Contatos cadastrados"




  end

end