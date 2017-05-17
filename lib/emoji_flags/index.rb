require "json"

module EmojiFlags
  class Index
    DATASOURCE = '/app/config/index.json'.freeze

    class << self
      def all
        emoji_list
      end

      def by_code(code)
        emoji_list.find { |emoji| emoji[:code] == code }
      end

      private

      def emoji_list
        return @emoji_list if @emoji_list
        @emoji_list = JSON.parse(File.read(DATASOURCE), symbolize_names: true)
        @emoji_list
      end
    end
  end
end
