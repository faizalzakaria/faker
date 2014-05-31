module Faker
  class Location < Base
    class << self

      def latitude
        ref_latitude + delta
      end

      def longitude
        ref_longitude + delta
      end

      def ref_latitude
        3.1357
      end

      def ref_longitude
        101.6880
      end

      private

      def delta
        (rand - 0.5) / 10
      end

    end
  end
end
