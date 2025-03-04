# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Interfaces
    module ListEndpoint
      extend T::Generic
      extend T::Sig
      interface!

      module ClassMethods
        extend T::Sig
        extend T::Helpers
        extend T::Generic
        abstract!

        ListEndpointInputType = type_member { { upper: LobbyingDisclosureClient::Interfaces::ListEndpointInput } }
        ListEndpointOutputType = type_member { { upper: LobbyingDisclosureClient::Interfaces::ListEndpointOutput } }

        sig { abstract.params(input: ListEndpointInputType).returns(ListEndpointOutputType) }
        def call(input:); end
      end

      mixes_in_class_methods(ClassMethods)
    end
  end
end
