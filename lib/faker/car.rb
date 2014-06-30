module Faker
  class Car < Base
    class << self

      BRAND = [ :toyota, :honda, :chery, :mercedes, :bmw ]

      def brand
        BRAND[rand(BRAND.size)]
      end

      def registration_number_mys
        l_alphabet = (0...3).map { ('A'..'Z').to_a[rand(26)] }.join
        r_number   = Number.number(4)
        "#{l_alphabet} #{r_number}"
      end
      alias_method :reg_number_mys, :registration_number_mys

      def registration_number_gbr
        # TODO: implement this
      end
      alias_method :reg_number_gbr, :registration_number_gbr

    end
  end
end
