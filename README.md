# NOTE

Currently, this only works with [my fork](https://github.com/hoverlover/campfire-bot).  Hopefully,
the maintainers of the [main repo](https://github.com/joshwand/campfire-bot) will pull in my changes.

#CampfireBot::Standup

This is a plugin for use with [campfire-bot](https://github.com/joshwand/campfire-bot).
It provides the ability to send [daily standup](http://en.wikipedia.org/wiki/Stand-up_meeting) emails
to a list of people (your managers).  This campfire-bot plugin is
targeted at distributed teams that don't have the luxury of standing in
the same room.  The message goes out in the campfire room for all
developers to see, and at the same time an email is sent to the
configured list of managers so they can also see the status.

## Installation

1. First, make sure you install the campfire-bot gem.
2. `gem install campfire-bot-absentee-camper`
3. Create Gemfile with the following lines:
    gem 'campfire-bot'
    gem 'campfire-bot-standup'
4. Create your _standup-config.yml_ file (see below).
5. Register the plugin to your main _config.yml_ file

## Usage

First, fire up the bot:

    `bundle exec bot <environment>`

`<environment>` is the matching environment from the config file.  Now,
in the campfire room, give your standup status using the `!standup`
command:

    !standup Yesterday I goofed off a lot.  Today, after checking my Twitter feed, I will hopefully get some work done.

After sending this message, a message will be sent by the Campfire Bot
that your standup email has been emailed to your manager(s):

    Campfire B. Sent standup email to michael.scott@dunder-mifflin.com


## Configuration

Here is a sample config file:

    ---
    production:
      subject: Daily Standup
      to:
        - michael.scott@dunder-mifflin.com
      pony_options:
        # NOTE: The colons before these options are very important.
        #       Pony requires that the keys be symbols and not strings.
        #
        :via: :smtp
        :via_options:
          :address: smtp.sendgrid.net
          :port: 587
          :enable_starttls_auto: true
          :authentication: :plain
          :user_name: your-user-name
          :password: secret

* `production` - This is the environment for which the settins apply.
  You can specify multiple environments (e.g. development, test, etc).
* `subject` - The subject line of the outgoing email.
* `to` - The list of email addresses where the email will be sent.
* `pony_options` - The configuration options for [Pony](https://github.com/adamwiggins/pony)

## TODO

* Specs coming soon!

## Testing

You have two options:

* run `bundle exec rake`
* run `bundle exec guard` for continuous feedback

## Contributing

Do the usual fork -> change -> pull request dance.
