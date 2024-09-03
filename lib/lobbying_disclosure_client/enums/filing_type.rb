# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    # Filing type is technically an enum, whose values are not clarified
    # by the LDA documentation. Additionally, the different values are
    # challenging to represent as a T::Enum because they can contain
    # or begin with numbers and/or '@' (e.g. '2@Y', '3@').
    #
    # For this reason, I'm choosing to defer this type's enum-ification
    # and will happily return to it, especially if the meaning of these
    # values comes to light.

    FilingType = T.type_alias { String }
  end
end
