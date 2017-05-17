require "active_support/core_ext/hash"
require "active_support/core_ext/time"
require "active_support/core_ext/object/deep_dup"
require "active_support/core_ext/object/blank"

require 'emoji_flags/version'
require 'emoji_flags/index'

module EmojiFlags
  def self.index
    EmojiFlags::Index.all
  end

  def self.by_code(code)
    EmojiFlags::Index.by_code(code)
  end
end
