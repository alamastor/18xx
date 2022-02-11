# frozen_string_literal: true

require_relative 'base'
require_relative '../item'

module Engine
  module Step
    class SpecialChoose < Engine::Step::Base
      ACTIONS = %w[choose_ability].freeze

      def actions(entity)
        action = abilities(entity)
        return [] unless action

        action.type == :choose_ability ? ACTIONS : []
      end

      def blocks?
        false
      end

      def choices_ability
        abilities(current_entity).choices
      end

      def abilities(entity, **kwargs, &block)
        @game.abilities(entity, :choose_ability, **kwargs, &block)
      end

      def description
        'Choose'
      end

      def process_choose_ability(action)
        raise NotImplementedError
      end

      def skip!
        pass!
      end
    end
  end
end
