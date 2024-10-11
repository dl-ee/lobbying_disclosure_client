# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Util
    class ConstantsValidator
      class InvalidEnumError < StandardError; end

      class ItemToValidate < T::Struct
        const :enum_klass, T.class_of(T::Enum)
        const :api_klass, T.any(
          T.class_of(LobbyingDisclosureClient::V1::Constants::Contribution::ListContributionItemTypes),
          T.class_of(LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes),
          T.class_of(LobbyingDisclosureClient::V1::Constants::Filing::ListLobbyingActivityGeneralIssues),
          T.class_of(LobbyingDisclosureClient::V1::Constants::General::ListCountries),
          T.class_of(LobbyingDisclosureClient::V1::Constants::General::ListStates),
          T.class_of(LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistPrefixes),
          T.class_of(LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistSuffixes)
        )
      end

      ITEMS_TO_VALIDATE = T.let(
        [
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::ContributionType,
            api_klass: LobbyingDisclosureClient::V1::Constants::Contribution::ListContributionItemTypes
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::FilingType,
            api_klass: LobbyingDisclosureClient::V1::Constants::Filing::ListFilingTypes
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::GeneralIssueCode,
            api_klass: LobbyingDisclosureClient::V1::Constants::Filing::ListLobbyingActivityGeneralIssues
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::Country,
            api_klass: LobbyingDisclosureClient::V1::Constants::General::ListCountries
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::State,
            api_klass: LobbyingDisclosureClient::V1::Constants::General::ListStates
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::Prefix,
            api_klass: LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistPrefixes
          ),
          ItemToValidate.new(
            enum_klass: LobbyingDisclosureClient::Enums::Suffix,
            api_klass: LobbyingDisclosureClient::V1::Constants::Lobbyist::ListLobbyistSuffixes
          )
        ].freeze,
        T::Array[ItemToValidate]
      )

      class << self
        extend T::Sig

        sig { void }
        def validate!
          validation_results = ITEMS_TO_VALIDATE.map do |item_to_validate|
            enum_is_in_sync_with_live_api_result?(item_to_validate)
          end

          if validation_results.all?
            puts 'All enums passed validation 🏆🏆🏆'
          else
            puts 'Some enums failed validation ⛈️⛈️⛈️'
            raise InvalidEnumError
          end
        end

        private

        sig do
          params(
            item_to_validate: ItemToValidate
          ).returns(T::Boolean)
        end
        def enum_is_in_sync_with_live_api_result?(item_to_validate)
          enum_klass = item_to_validate.enum_klass
          api_klass = item_to_validate.api_klass

          puts "Validating #{enum_klass.name} against the live API..."

          serialized_enum_values = enum_klass.values.map(&:serialize)
          api_values = api_klass.call.map(&:value)

          values_missing_from_enum = api_values - serialized_enum_values
          extra_values_in_enum = serialized_enum_values - api_values

          unless values_missing_from_enum.empty?
            puts "Detected values in live API result that are missing from #{enum_klass.name}."
            values_missing_from_enum.map { |value| puts "  - \"#{value}\"" }
          end

          unless extra_values_in_enum.empty?
            puts "Detected values in #{enum_klass.name} that are not present in the live API result."
            extra_values_in_enum.map { |value| puts "  - \"#{value}\"" }
          end

          if values_missing_from_enum.empty? && extra_values_in_enum.empty?
            puts "#{enum_klass} passed validation 🏆\n\n"
            true
          else
            puts "#{enum_klass} failed validation ⛈️\n\n"
            false
          end
        end
      end
    end
  end
end
