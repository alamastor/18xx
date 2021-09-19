# frozen_string_literal: true

class Api
  hash_routes :api do |hr|
    hr.on 'engine' do |r|
      # '/api/engine/<game_id>/*'
      r.on Integer do |id|
        halt(404, 'Game does not exist') unless (game = Game[id])

        # '/api/engine/<game_id>/'
        r.is do
          engine = Engine::Game.load(game, actions: actions_h(game))
          game_data = engine.to_h

          game_data
        end
      end
    end
  end
end
