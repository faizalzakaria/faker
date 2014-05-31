module Faker
  class Car < Base
    class << self

      def registration_number_malaysia
        l_alphabet = (0...3).map { ('A'..'Z').to_a[rand(26)] }.join
        r_number   = Number.number(4)
        "#{l_alphabet} #{r_number}"
      end
      alias_method :registration_number, :registration_number_malaysia

    end
  end
end
