# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting general feedbacks'
GeneralFeedback.destroy_all

puts 'deleting signatories'
Signatory.destroy_all

puts 'deleting categories'
Category.destroy_all


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
education_sec = Section.create(title: 'EDUCATION AND R&D',
legislation: l)

multispaces_sec = Section.create!(title: 'PUBLIC & MULTIDISCIPLINARY SPACES',
legislation: l)

digital_sec = Section.create!(title: 'DIGITAL INFRASTRUCTURE',
legislation: l)

business_sec = Section.create!(title: 'BUSINESS REGISTRATION',
legislation: l)

finance_sec = Section.create!(title: 'FINANCE FOR INNOVATION AND ENTREPRENEURSHIP',
  description: 'Governments and public policy have an important role to play in addressing the financial challenges impeding innovation, and must work to reduce uncertainty and risks associated with financing innovators.',
legislation: l)

local_sec = Section.create!(title: 'LOCAL AND PAN-AFRICAN MARKETS',
legislation: l)

intellectual_sec = Section.create!(title: 'INTELLECTUAL PROPERTY RIGHTS',
legislation: l)

tax_sec = Section.create!(title: 'TAXATION SYSTEM',
legislation: l)


puts "creating introduction"

puts "creating clauses for section 1"

cl1 = Clause.create!(section: education_sec, content:'Recognizing that education is the most critical factor to accelerating innovation, digital and socio-economic transformation, we recommend government’s urgently adopt a three-pronged approach to stimulating R&D and innovation education across the continent: investing in R&D, amplifying indigenous R&D and co-creating education systems and curriculum redesign together with a broad coalition of partners, such as labs and civic spaces,  emphasizing e-learning tools and do-it-yourself, hands-on learning, rewarding experimentation, failure and critical thinking, and teaching digital and financial literacy and software skills.
These can and must be achieved through a number of approaches: 1) apportioning a percentage of national fiscal budgets to various Research and Development and Innovation education, such as our national commitments to invest 1% of GDP in R&D; 2) establishing partnerships between government labs, universities and regulatory bodies; 3) supporting Intellectual Property Rights acquisition; 4) Supporting multidisciplinary research; 5) incentivizing the private sector to develop digital infrastructure, such as internet, hardware and digital facilities for social development; 6) activating a national and pan-African sharing platform to develop national strategies, advise and inform governments; 7) encouraging diversity and inclusion in Science, Technology, Engineering, Arts and Mathematics (STEAM) education, particularly supporting marginalized groups such as women and people living with disabilities; 8) establishing feasible innovation channels for the market contexts; 9) developing strategic partnerships with different ecosystem players to co-create curriculum; 10) continuing to emphasize Arts, Culture and Humanities, which remain just as important to empowering citizens to drive the continent’s digital transformation, as the current emphasis on education on STEAM.
')

  Question.create!(content: 'How well does this represent your views?', clause: cl1)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl1)
  Question.create!(content: 'Please provide your suggested revision', clause: cl1)

  # Metadatum.create!(
  #   agency: 'COUNTRY Communications Commission (NCC)',
  #   rationale: 'This would bring down the cost and ensure affordable access.',
  #   status: 'NCC published guidelines on collocation and infrastructure sharing on Rights of Way, Masts, Poles, Antenna and tower-structures, Ducts, Trenches, Electric power. In the guidelines, each operator (licensee) is expected to publish standard price list, this is not regulated by NCC which could be exploited by the operators. NCC maintains a list of operators on its website, this includes the name of the company, address, start and expiry dates. This list may not be conclusive as there are operators that are not listed there but in previous published lists. The issue with the guidelines is that it is only for passive sharing, there is no guidelines on active sharing. However, NCC is working on a framework on active sharing but this is yet to be published. The COUNTRY National Broadband Plan 2013 - 2018 is aimed at  “connecting communities with high speed internet and broadband access to facilitate faster socioeconomic advancement of the nation and its people”. To achieve this, the government, through NCC require Infrastructure Companies (Infracos) to bid for license to provide broadband infrastructure on an open access, non-discriminatory, price regulated basis to the six geopolitical zones and Lagos. Licenses have been awarded for Lagos, North Central, South East, North East. The license for North West, South South and South West have purportedly been awarded, The network and services infrastructure is divided into 3 layers; Passive Infrastructure Layer, Wholesale layer, Retail Service Providers (RSP). The main challenge telecommunication companies face is security, to this end, NCC and COUNTRY Security and Civil Defence Corps (NSCDC) signed an MOU to protect the infrastructure. This would go along way in alleviating this challenge which would in turn increase access to affordable broadband. Furthermore, the government plans to lay 18,000KM of fibre in the country in its effort to achieve and surpass the 30% broadband penetration target of 2018.',
  #   clause: cl1
  #   )

cl2 = Clause.create!(content: 'We recommend that governments invest in public spaces, and remove restrictions for diverse citizens to gather and discuss socially and commercially relevant issues and co-design solutions.
When governments invest in civic spaces, it is critical that they do not crowd out other stakeholders by imposing outcome-based metrics which prevent or hinder the emergence of new ideas and relationships from being formed. As much as possible, Governments can partner with credible and trusted, local, grassroots and community-based groups and organizations, such as hubs and labs to foster bottom-up innovation, mutual learning, exchange and serendipity. These partners should be involved in the design or redesign (in the case of existing spaces) from conceptualization. Through this approach, both partners will recognize the value that they each bring and there will be transparency on the win-win value created.
To strengthen our economies, we must also strengthen our public spaces for the sharing of ideas, for creative expression, cultural exchange and serendipity. Civic spaces – ranging from libraries and parks to museums, performing art venues and business incubators – are the catalysts in which the creative and social economy is born and fostered. Socially relevant innovations need time and space and the convergence of diverse ideas, opinions, perspectives, experiences, and skills to emerge. Once this process has run its course, clear outcomes including roles and responsibilities from all stakeholders will be done by mutual agreement. One of the benefits is that it not only indirectly adds to various levels of the economy but directly allows parties to create their own economic ecosystem. Ultimately, this is in line with the SDG goals 9 (industry, innovation and infrastructure) and goal 17 partnership to achieve the goal.
', section: multispaces_sec)
  Question.create!(content: 'How well does this represent your views?', clause: cl2)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl2)
  Question.create!(content: 'Please provide your suggested revision', clause: cl2)

  # Metadatum.create!(
  #   agency: 'Federal Inland Revenue Services (FIRS), Federal Ministry of Power, Works and Housing, State Inland Revenue Board, Local Government Authority, COUNTRY Communications Commission (NCC), Nigeria Customs Service (NCS), Federal Ministry of Finance (how about the respective state agencies)',
  #   rationale: 'Lack of harmonised RoW across federal, state and LGA and multiple taxation increases the cost of service delivery which is passed on to the consumers. Elimination of such charges, duties and tax would encourage investments and reduce the cost of service delivery.',
  #   status: "Currently, there is a guideline for the grant and access of right way to ICT services on federal roads by the Federal Ministry of Power, Works and Housing. The charges are N145 per linear meter for ducts and cables and N20 per linear metre annual maintenance fees subject to change every 5 years. States and Local Governments have different charges and this varies from state to state. The lack of uniform charges is one of the challenges telcos face which affects the supply of services. To address this challenge, NEC approved a policy on harmonization of right of way charges across LG, states and federal highways. The NEC RoW guideline still maintains the amount of N145 per meter for laying fibre for all parts of the country. Also, NCC made a case to the Governors Forum to ensure on the need to adhere to the NEC’s resolutions. Right of Way is included in the COUNTRY Communications Commission’s Guidelines on Collocation and Infrastructure Sharing, this provides a means of bringing down the cost of broadband as shown in Vision 1. The import duties on all telecommunications equipment is 10% with the exception of parts and accessories of instruments/apparatus, designed for telecommunications which is 5%. In the NITDA establishment Act, all telecommunications companies, GSM Service Providers, Cyber Companies and Internet Providers with annual turnover of 100M and above are liable to pay 1%  of the profit before tax.",
  #   clause: cl2
  #   )

cl3 = Clause.create!(content: 'There are numerous areas where digital infrastructure can be integrated to achieve the economies of scale needed to reduce the cost of internet access and to increase the amount of African-hosted content to reduce the dependency on international fibre connections and their associated costs. In particular, governments must encourage shared ownership of fibre infrastructure, nationally and regionally.
Additionally, we implore governments to provide tax waivers for the importation and indigenous production of ICT equipment & hardware to ease access for entrepreneurs. Also, government must provide tax waivers for digital infrastructure investments to reduce the retail costs paid by consumers. In exchange, government regulatory agencies will ensure independent oversight of internet service providers to enhance transparency of their fees-for-access model and to combat monopolistic practices that result in excessive charges in many markets.
The innovation community encourages public, private, multilateral and civil society actors to provide funds for hubs to acquire ICT equipment, to support community innovation hubs as safe spaces for women & youth to access the internet. Moreover, we encourage the creation of open data portals and internet subsidies for community innovation hubs, innovation centres, and educational institutions.
We implore governments to adopt the African Declaration on Internet Rights and Freedoms, to truly unlock the potential of the internet for transformational change and social mobility. In addition, we encourage governments to go a step further and create stakeholder forums to facilitate dialogue with citizens before passing laws that might inhibit freedom of expression or privacy.
We applaud the leadership of the Smart Africa Secretariat for making bold progress in pan-African integration, notably through the elimination of roaming charges across Smart Africa member nations.
', section: digital_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl3)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl3)
  Question.create!(content: 'Please provide your suggested revision', clause: cl3)

cl4 = Clause.create!(content: 'In order to unlock the potential of citizens to provide new business solutions and services, it is imperative that barriers to register and close businesses are reduced. Business registration must be available online and the costs – financial and transactional – must be reduced to expand access and availability. On the other hand we recommend unifying the registration process, for all statutory obligations.
New business owners must also be provided a comprehensive list of their regulatory compliance obligations, as well as legal support during the registration process. In addition, closing businesses and declaring bankruptcy must be eased and decriminalized in order to provide entrepreneurs with an opportunity to try again. These processes must also involve feedback from citizens to ensure that services are improved, inclusive and responsive.
', section: business_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl4)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl4)
  Question.create!(content: 'Please provide your suggested revision', clause: cl4)

cl5 = Clause.create!(content: 'We recommend a three-pronged approach, targeting each key stakeholder:
Entrepreneurs:
Recognizing that capacity building is essential to business development and fundraising, we recommend support for organizations and institutions that provide financial training and mentoring to entrepreneurs, such as community innovation hubs. It is important that entrepreneurs have clear and precise information to access grants, venture capital, private equity funds, loans and government innovation and SME funds. Furthermore, we encourage tracking and reporting of innovation and entrepreneurship fundraising to encourage sharing of success stories and best practice.
Supporters (NGOs, corporates, multilaterals, financial institutions  and angel investors):
We encourage corporates to invest in early-stage enterprise acceleration through open innovation. We recommend lower interest rates for entrepreneurs. We recommend incentives, training and additional support for angel investors to unlock funding for seed stage and pre-seed stage startups in product development phase. Moreover, we encourage funders to broaden M&E metrics to assess and prioritise impact. We recommend that funders are encouraged to create shorter and simpler exit strategies, as compared to the existing ones.
Governments:
Governments must establish incentives for angel investors, private equity, venture capital, corporates and traditional financial institutions to expand working capital and investment capital for startups. Moreover, governments should establish funding mechanisms for the community innovation hubs. We strongly encourage governments to establish innovation-for-procurement mechanisms, and to otherwise ease access for entrepreneurs and innovation hubs to public tenders.
Overall, we believe it is the responsibility of governments to provide a sustainable and friendly environment for investments.',
section: finance_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl5)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl5)
  Question.create!(content: 'Please provide your suggested revision', clause: cl5)

cl6 = Clause.create!(content: 'We recommend improvements in public procurement procedures and the easing of pan-African trade. Government budgets can be used to stimulate local businesses, research and development, and job creation. Moreover, improving market access for African businesses must be addressed in concert amongst African governments. The transaction costs of trade will reduce as the levels of trade increase, and vice versa.
Governments must also assess how to ease mobility of people, as well as goods and services. From prohibitive visa regimes to poor intra-continental infrastructure, Africa’s people are unable to move freely within their own continent. This prevents the acquisition and exchange of perspectives, skills, networks and access to scale their enterprises and ideas. We strongly implore governments to ease mobility for Africans in Africa.
To achieve our joint goals of inclusive development and digital transformation, we believe innovation communities and governments must work in collaboration to 1) support local & African SMEs; 2) increase access to vital information, such as national and cross-border regulatory compliance; 3) establish clear and transparently-enforced investment laws; 4) ease mobility of people throughout the continent; 5) remove barriers for cross-border financial transactions; 6) ease restrictions on intra-African trade; 7) ensure inclusion & diversity throughout the process; and, 8) guarantee effective governance, consultation and enforcement of existing and new policies.', section: local_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl6)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl6)
  Question.create!(content: 'Please provide your suggested revision', clause: cl6)

cl7 = Clause.create!(content: 'Intellectual Property Rights processes are costly and time consuming; registration of brands, industrial inventions and trademarks take up to a year or more for some countries, whilst government enforcement agencies are lax on counterfeiters and infringers of IP.
Acknowledging that IP rights are territorial, we recommend that the African Union adopt a joint IP policy. Intellectual Property regimes must simplify registration, in particular reducing the costs and bureaucracy, increasing transparency and providing greater accessibility for  startups to register intellectual property ownership alongside their eased business registration. If African governments can adopt and enforce a unified IP regime, it will unlock innovation and expand investment in research and development. We implore countries to build open portals for IP, providing clear and transparent information on access and processes.',
section: intellectual_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl7)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl7)
  Question.create!(content: 'Please provide your suggested revision', clause: cl7)

cl8 = Clause.create!(content: 'Recognizing that current tax regimes and administration are not conducive to innovation and business growth across the continent, we recommend a simplified digital tax registration and filing system under a government one-stop shop through e-filing and e-tax procedures.
It is important to levy taxes based on the stage of the business, ranging from ideation to growth stage.  This will stimulate innovation, the emergence of new industries, and R&D to increase socio-economic development. Importantly, innovative companies should receive tax incentives, rebates, holidays and other forms of relief for investments, imports, hiring and capital gains tax.
We urge governments to implement proactive tax information campaigns to ensure adequate awareness and compliance amongst taxpayers. Moreover, penalties and fines should be designed to encourage and incentivize compliance, not to destroy business growth in the face of overwhelming compliance costs. This means that new enterprises and SME’s should have lower penalties. Furthermore, governments should explore alternative dispute resolution mechanisms, such as amnesty from penalties, staggered payment options for defaulters and rapid access facilities for arbitration.  This would improve sustainability of businesses, re-startup and persistent innovation.
We encourage governments to provide tax incentives for employing youth. Internship stipends must be tax exempt for university students, and companies can receive a payroll tax holidays for hiring first-time employees and other disadvantaged groups. Finally, we encourage African governments to treat all African startups as indigenous startups.',
section: tax_sec)

  Question.create!(content: 'How well does this represent your views?', clause: cl8)
  Question.create!(content: 'Does this strengthen the COUNTRY technology entrepreneurship ecosystem?', clause: cl8)
  Question.create!(content: 'Please provide your suggested revision', clause: cl8)


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

