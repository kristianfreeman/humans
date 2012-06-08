require "humans/version"

module Humans

  def self.generate
    people = `git log --format='%aN|%aE' | sort -u`.split("\n")

    File.open('humans.txt', 'w') do |f|

      f << <<-eos
/* TEAM */


eos

      people.each do |w|
        name, match, email = w.rpartition('|')
        name.gsub!(/[^0-9a-z ]/i, '')
        email.gsub!(/[^0-9a-z \@\.]/i, '')

        f << <<-eos
Name:  #{ name }
Email: #{ email } 

        eos

      end

    end

  end

end
