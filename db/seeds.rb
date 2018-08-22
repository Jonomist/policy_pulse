# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting metadatum'
Metadatum.destroy_all

puts 'deleting all consultation'
Consultation.destroy_all

puts 'deleting all answers'
Answer.destroy_all

puts 'deleting all questions'
Question.destroy_all

puts 'deleting all clauses'
Clause.destroy_all

puts 'deleting all sections'
Section.destroy_all

puts 'deleting all legislation'
Legislation.destroy_all

puts 'deleting Admin users'
AdminUser.destroy_all

puts 'deleting users'
User.destroy_all

puts 'deleting general feedbacks'
GeneralFeedback.destroy_all

puts "creating user"
u = User.create!(email: "theresafend@gmail.com", password: "Lefkada88")
User.create!(email: "user2@charitize.com", password: "123456")
User.create!(email: "user3@charitize.com", password: "123456")
User.create!(email: "user4@charitize.com", password: "123456")
User.create!(email: "user5@charitize.com", password: "123456")
User.create!(email: "user6@charitize.com", password: "123456")

puts "creating admin user"
AdminUser.create!(email:"theresafend@gmail.com", password: "Lefkada88")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

puts "creating legislation"
l = Legislation.create!(
title: 'Africa Innovation Policy Manifesto',
introduction: "We are social innovators, entrepreneurs, innovation spaces and startups across Africa that have come together to articulate and share our views and recommendations for policies that we believe will accelerate digital transformation and contribute to more equitable, inclusive and sustainable development of our economies and societies.
The actors who have undersigned this document are ready and willing to strategically engage with policymakers to further this agenda.")

puts "creating consultation"
c = Consultation.create!(title: "i4policy Pilot Manifesto", legislation: l, user: u)

puts "creating signatory categories"
cat1 = Category.create!(title: "GLOBAL AND REGIONAL HUB NETWORKS")
cat2 = Category.create!(title: "NATIONAL HUB NETWORKS")
cat3 = Category.create!(title: "COMMUNITY INNOVATION HUBS")
cat4 = Category.create!(title: "SUPPORTERS")
cat5 = Category.create!(title: "AFFILIATES")

puts "creating signatories"
Signatory.create!(organization: "Afrilabs", person: "Anna Ekeledo", category: cat1, date: Date.parse('2018-05-09'), consultation: c)
Signatory.create!(organization: "Global Innovation Gathering", person: "GIG; Vicy Wenzelmann", category: cat1, date: Date.parse('2018-05-09'), consultation: c)
Signatory.create!(organization: "Network of Incubators and Innovators in Nigeria", person: "Bankole Olaruntoba", category: cat2, date: Date.parse('2018-05-09'), consultation: c)
Signatory.create!(organization: "Bolab", person: "Médard C. Agbayazon", category: cat3, date: Date.parse('2018-05-09'), consultation: c, location: "Benin")

puts "creating sections"
s = Section.create(title: 'SECTION NAME 1',
description: "lorem ipsum",
legislation: l)

Section.create!(title: 'SECTION NAME 2',
description: "lorem ipsum",
legislation: l)

Section.create!(title: 'SECTION NAME 3',
description: "lorem ipsum",
legislation: l)


puts "creating introduction"

puts "creating clauses for section 1"

cl1 = Clause.create!(content: 'clause text clause textclause textclause textclause textclause textclause textclause text', section: s)

  Question.create!(content: 'How well does this represent your views?', clause: cl1)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl1)
  Question.create!(content: 'Please provide your suggested revision', clause: cl1)

  Metadatum.create!(
    agency: 'COUNTRY Communications Commission (NCC)',
    rationale: 'This would bring down the cost and ensure affordable access.',
    status: 'NCC published guidelines on collocation and infrastructure sharing on Rights of Way, Masts, Poles, Antenna and tower-structures, Ducts, Trenches, Electric power. In the guidelines, each operator (licensee) is expected to publish standard price list, this is not regulated by NCC which could be exploited by the operators. NCC maintains a list of operators on its website, this includes the name of the company, address, start and expiry dates. This list may not be conclusive as there are operators that are not listed there but in previous published lists. The issue with the guidelines is that it is only for passive sharing, there is no guidelines on active sharing. However, NCC is working on a framework on active sharing but this is yet to be published. The COUNTRY National Broadband Plan 2013 - 2018 is aimed at  “connecting communities with high speed internet and broadband access to facilitate faster socioeconomic advancement of the nation and its people”. To achieve this, the government, through NCC require Infrastructure Companies (Infracos) to bid for license to provide broadband infrastructure on an open access, non-discriminatory, price regulated basis to the six geopolitical zones and Lagos. Licenses have been awarded for Lagos, North Central, South East, North East. The license for North West, South South and South West have purportedly been awarded, The network and services infrastructure is divided into 3 layers; Passive Infrastructure Layer, Wholesale layer, Retail Service Providers (RSP). The main challenge telecommunication companies face is security, to this end, NCC and COUNTRY Security and Civil Defence Corps (NSCDC) signed an MOU to protect the infrastructure. This would go along way in alleviating this challenge which would in turn increase access to affordable broadband. Furthermore, the government plans to lay 18,000KM of fibre in the country in its effort to achieve and surpass the 30% broadband penetration target of 2018.',
    clause: cl1
    )

cl2 = Clause.create!(content: 'clause text clause textclause textclause textclause textclause textclause textclause text', section: s)
  Question.create!(content: 'How well does this represent your views?', clause: cl2)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl2)
  Question.create!(content: 'Please provide your suggested revision', clause: cl2)

  Metadatum.create!(
    agency: 'Federal Inland Revenue Services (FIRS), Federal Ministry of Power, Works and Housing, State Inland Revenue Board, Local Government Authority, COUNTRY Communications Commission (NCC), Nigeria Customs Service (NCS), Federal Ministry of Finance (how about the respective state agencies)',
    rationale: 'Lack of harmonised RoW across federal, state and LGA and multiple taxation increases the cost of service delivery which is passed on to the consumers. Elimination of such charges, duties and tax would encourage investments and reduce the cost of service delivery.',
    status: "Currently, there is a guideline for the grant and access of right way to ICT services on federal roads by the Federal Ministry of Power, Works and Housing. The charges are N145 per linear meter for ducts and cables and N20 per linear metre annual maintenance fees subject to change every 5 years. States and Local Governments have different charges and this varies from state to state. The lack of uniform charges is one of the challenges telcos face which affects the supply of services. To address this challenge, NEC approved a policy on harmonization of right of way charges across LG, states and federal highways. The NEC RoW guideline still maintains the amount of N145 per meter for laying fibre for all parts of the country. Also, NCC made a case to the Governors Forum to ensure on the need to adhere to the NEC’s resolutions. Right of Way is included in the COUNTRY Communications Commission’s Guidelines on Collocation and Infrastructure Sharing, this provides a means of bringing down the cost of broadband as shown in Vision 1. The import duties on all telecommunications equipment is 10% with the exception of parts and accessories of instruments/apparatus, designed for telecommunications which is 5%. In the NITDA establishment Act, all telecommunications companies, GSM Service Providers, Cyber Companies and Internet Providers with annual turnover of 100M and above are liable to pay 1%  of the profit before tax.",
    clause: cl2
    )

cl3 = Clause.create!(content: 'clause text clause textclause textclause textclause textclause textclause textclause text', section: s)
  Question.create!(content: 'How well does this represent your views?', clause: cl3)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl3)
  Question.create!(content: 'Please provide your suggested revision', clause: cl3)


puts "creating dummy general feedback"
GeneralFeedback.create!(content: 'My custom feedback 1', consultation: c)
GeneralFeedback.create!(content: 'I really like it because...', consultation: c)
GeneralFeedback.create!(content: 'I totally disagree becasue', consultation: c)
GeneralFeedback.create!(content: 'My custom feedback 4', consultation: c)
GeneralFeedback.create!(content: 'My custom feedback 5', consultation: c)
GeneralFeedback.create!(content: 'My custom feedback xyz 6', consultation: c)

# puts "creating dummy answers"
# Answer.create!(content: 'yes', question_id: 1, user_id: 1)
# Answer.create!(content: '1', question_id: 2, user_id: 1)
# Answer.create!(content: 'yes', question_id: 3, user_id: 1)
# Answer.create!(content: 'My custom revision content - clause 1 - User 1', question_id: 4, user_id: 1)

# Answer.create!(content: '1', question_id: 5, user_id: 1)
# Answer.create!(content: '1', question_id: 6, user_id: 1)
# Answer.create!(content: 'yes', question_id: 7, user_id: 1)
# Answer.create!(content: 'My custom feedback clause 2 - User 1', question_id: 8, user_id: 1)

# #feedback from another user

# Answer.create!(content: 'yes', question_id: 1, user_id: 2)
# Answer.create!(content: '2', question_id: 2, user_id: 2)
# Answer.create!(content: 'yes', question_id: 3, user_id: 2)
# Answer.create!(content: 'My custom revision content - clause 1 - User 2', question_id: 4, user_id: 2)

# Answer.create!(content: '1', question_id: 5, user_id: 2)
# Answer.create!(content: '1', question_id: 6, user_id: 2)
# Answer.create!(content: 'yes', question_id: 7, user_id: 2)
# Answer.create!(content: 'My custom feedback clause 2- User 2', question_id: 8, user_id: 2)

