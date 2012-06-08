require "humans/version"

module Humans

  def self.generate
    people = `git log --format='%aN|%aE' | sort -u`.split("\n")

    File.open('humans.txt', 'w') do |f|

      f << <<-eos
/* TEAM */


eos

      people.each do |w|
        name, *email = w.to_s.split("|")
        email.to_s.gsub!(/\[|\"\]/, "")

        f << <<-eos
Name:  #{ name }
Email: #{ email } 

        eos

      end

    end

  end

end
