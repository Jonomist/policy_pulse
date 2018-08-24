# National Policy Consultation

This is the opensource code repository of Policy Pulse built by the i4policy initiative. Policy Pulse is a growing initiative to support Government’s to listen at scale and provide’s citizens with the opportunity to meaningfully contribute to making public policies better.

## Work Flows

We have a [project board](https://github.com/i4policy/policy_consultation/projects/1) that is interacting with our [issues list](https://github.com/i4policy/policy_consultation/issues) and subsequent pull requests on those issues; the issues are labeled accordingly and associated with the [four milestones](https://github.com/i4policy/policy_consultation/milestones).

## User Flows

Admin: As a national office of innovation and entrepreneurship, I am seeking useful feedback on a new startup law, so that we can propose more appropriate legislation that emphasizes the needs of entrepreneurs and innovators and leads to a greater social impact.

### Web App:

The core user story is as follows:

• As a User, I want to see how the consultation works so that I know what I’m supposed to do.
• As a User, I want to interact with each sentence and section of the policy document so that I can provide my feedback without any minimum required input.
• As a User, I want to be able to remain anonymous to the admin with my contribution.
• As an Admin, I want to be able to see all of the inputs from the consultation.

### Messenger Bot:

This is in efforts to make the consultation as representative as possible, and cater to a larger part of the population by (a) hitting them on the mediums they are frequenting already and (b) catering to the part of the population that only has access to Free Basics.

So if somebody doesn’t have access to go onto the web app and access the document that way they should be able to participate like so:

* As a User, I want to read the policy in a digestible, non-overwhelming format so that I can get a grip on each section.
* As a User, I want to be able to provide my feedback on every section through the bot.
* As a User, I want to be able to provide overall feedback on the policy document.
* As an Admin, I want to be able to see all of the input from the bot interactions on my admin dashboard.

We will use one of the Ruby wrappers or Rails libraries for messenger implementation to keep the stack consistent across the board. Will also be handy for the integration, because we want citizen input from the bot and citizen input from the app to essentially feed into the same db.

Relevant Documentation Here: https://developers.facebook.com/docs/messenger-platform/introduction

We are using the following Ruby client to build the bot into the application:

https://github.com/jgorset/facebook-messenger

-----------------------------

The closest project for reference is Consul, an all-in-one tool developed by the city of Madrid found here: https://consul_docs.gitbooks.io/docs/content/en/


