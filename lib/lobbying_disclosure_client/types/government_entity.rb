# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Types
    class GovernmentEntity < T::Struct
      const :id, Integer
      const :name, String
    end
  end
end
