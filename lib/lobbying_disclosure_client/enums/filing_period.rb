# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class FilingPeriod < T::Enum
      enums do
        FirstQuarter = new('first_quarter')
        SecondQuarter = new('second_quarter')
        ThirdQuarter = new('third_quarter')
        FourthQuarter = new('fourth_quarter')
        MidYear = new('mid_year')
        YearEnd = new('year_end')
      end
    end
  end
end
