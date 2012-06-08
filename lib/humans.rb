require "humans/version"

module Humans

  def generate
    people = `git log --format='%aN|%aE' | sort -u`.split

    File.open('humans.txt', 'w') do |f|

      f = <<-eos
      /* TEAM */


      eos

      people.each do |w|
        name, *email = w.split("|")

        f << <<-eos
        Name:  #{ name }
        Email: #{ email} 

        eos
        
      end

    end

  end

end
