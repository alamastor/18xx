# frozen_string_literal: true

require_relative '../meta'
require_relative '../g_1822/meta'

module Engine
  module Game
    module G1822MX
      module Meta
        include Game::Meta

        DEV_STAGE = :prealpha
        DEPENDS_ON = '1822'

        GAME_SUBTITLE = 'MHA_GAME_SUBTITLE'
        GAME_DESIGNER = 'Scott Peterson'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/1822MX'
        GAME_LOCATION = 'Mexico'
        GAME_PUBLISHER = :all_aboard_games
        GAME_RULES_URL = 'https://boardgamegeek.com/filepage/219065/1822-railways-great-britain-rules'
        GAME_TITLE = '1822MX'

        PLAYER_RANGE = [3, 5].freeze
      end
    end
  end
end
