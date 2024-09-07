# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class Constant < T::Struct
      const :name, String
      const :value, String
    end
  end
end
