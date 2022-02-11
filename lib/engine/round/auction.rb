# frozen_string_literal: true

require_relative 'base'

module Engine
  module Round
    class Auction < Base

      def to_h
        super.merge({
          :short_name => @short_name,
        })
      end

      def name
        'Auction Round'
      end

      def self.short_name
        'ISR'
      end

      def auction?
        true
      end

      def select_entities
        @game.players
      end
    end
  end
end
