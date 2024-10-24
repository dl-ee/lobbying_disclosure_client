# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class FilingType < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Registration = new('RR')
        RegistrationAmendment = new('RA')
        FirstQuarterReport = new('Q1')
        FirstQuarterReportNoActivity = new('Q1Y')
        FirstQuarterTermination = new('1T')
        FirstQuarterTerminationNoActivity = new('1TY')
        FirstQuarterAmendment = new('1A')
        FirstQuarterAmendmentNoActivity = new('1AY')
        FirstQuarterTerminationAmendment = new('1@')
        FirstQuarterTerminationAmendmentNoActivity = new('1@Y')
        SecondQuarterReport = new('Q2')
        SecondQuarterReportNoActivity = new('Q2Y')
        SecondQuarterTermination = new('2T')
        SecondQuarterTerminationNoActivity = new('2TY')
        SecondQuarterAmendment = new('2A')
        SecondQuarterAmendmentNoActivity = new('2AY')
        SecondQuarterTerminationAmendment = new('2@')
        SecondQuarterTerminationAmendmentNoActivity = new('2@Y')
        ThirdQuarterReport = new('Q3')
        ThirdQuarterReportNoActivity = new('Q3Y')
        ThirdQuarterTermination = new('3T')
        ThirdQuarterTerminationNoActivity = new('3TY')
        ThirdQuarterAmendment = new('3A')
        ThirdQuarterAmendmentNoActivity = new('3AY')
        ThirdQuarterTerminationAmendment = new('3@')
        ThirdQuarterTerminationAmendmentNoActivity = new('3@Y')
        FourthQuarterReport = new('Q4')
        FourthQuarterReportNoActivity = new('Q4Y')
        FourthQuarterTermination = new('4T')
        FourthQuarterTerminationNoActivity = new('4TY')
        FourthQuarterAmendment = new('4A')
        FourthQuarterAmendmentNoActivity = new('4AY')
        FourthQuarterTerminationAmendment = new('4@')
        FourthQuarterTerminationAmendmentNoActivity = new('4@Y')
        MidYearReport = new('MM')
        MidYearReportNoActivity = new('MMY')
        MidYearTermination = new('MT')
        MidYearTerminationNoActivity = new('MTY')
        MidYearAmendment = new('MA')
        MidYearAmendmentNoActivity = new('MAY')
        MidYearTerminationAmendment = new('M@')
        MidYearTerminationAmendmentNoActivity = new('M@Y')
        YearEndReport = new('YY')
        YearEndReportNoActivity = new('YYY')
        YearEndTermination = new('YT')
        YearEndTerminationNoActivity = new('YTY')
        YearEndAmendment = new('YA')
        YearEndAmendmentNoActivity = new('YAY')
        YearEndTerminationAmendment = new('Y@')
        YearEndTerminationAmendmentNoActivity = new('Y@Y')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Registration then 'Registration'
        when RegistrationAmendment then 'Registration - Amendment'
        when FirstQuarterReport then '1st Quarter - Report'
        when FirstQuarterReportNoActivity then '1st Quarter - Report (No Activity)'
        when FirstQuarterTermination then '1st Quarter - Termination'
        when FirstQuarterTerminationNoActivity then '1st Quarter - Termination (No Activity)'
        when FirstQuarterAmendment then '1st Quarter - Amendment'
        when FirstQuarterAmendmentNoActivity then '1st Quarter - Amendment (No Activity)'
        when FirstQuarterTerminationAmendment then '1st Quarter - Termination Amendment'
        when FirstQuarterTerminationAmendmentNoActivity then '1st Quarter - Termination Amendment (No Activity)'
        when SecondQuarterReport then '2nd Quarter - Report'
        when SecondQuarterReportNoActivity then '2nd Quarter - Report (No Activity)'
        when SecondQuarterTermination then '2nd Quarter - Termination'
        when SecondQuarterTerminationNoActivity then '2nd Quarter - Termination (No Activity)'
        when SecondQuarterAmendment then '2nd Quarter - Amendment'
        when SecondQuarterAmendmentNoActivity then '2nd Quarter - Amendment (No Activity)'
        when SecondQuarterTerminationAmendment then '2nd Quarter - Termination Amendment'
        when SecondQuarterTerminationAmendmentNoActivity then '2nd Quarter - Termination Amendment (No Activity)'
        when ThirdQuarterReport then '3rd Quarter - Report'
        when ThirdQuarterReportNoActivity then '3rd Quarter - Report (No Activity)'
        when ThirdQuarterTermination then '3rd Quarter - Termination'
        when ThirdQuarterTerminationNoActivity then '3rd Quarter - Termination (No Activity)'
        when ThirdQuarterAmendment then '3rd Quarter - Amendment'
        when ThirdQuarterAmendmentNoActivity then '3rd Quarter - Amendment (No Activity)'
        when ThirdQuarterTerminationAmendment then '3rd Quarter - Termination Amendment'
        when ThirdQuarterTerminationAmendmentNoActivity then '3rd Quarter - Termination Amendment (No Activity)'
        when FourthQuarterReport then '4th Quarter - Report'
        when FourthQuarterReportNoActivity then '4th Quarter - Report (No Activity)'
        when FourthQuarterTermination then '4th Quarter - Termination'
        when FourthQuarterTerminationNoActivity then '4th Quarter - Termination (No Activity)'
        when FourthQuarterAmendment then '4th Quarter - Amendment'
        when FourthQuarterAmendmentNoActivity then '4th Quarter - Amendment (No Activity)'
        when FourthQuarterTerminationAmendment then '4th Quarter - Termination Amendment'
        when FourthQuarterTerminationAmendmentNoActivity then '4th Quarter - Termination Amendment (No Activity)'
        when MidYearReport then 'Mid-Year Report'
        when MidYearReportNoActivity then 'Mid-Year Report (No Activity)'
        when MidYearTermination then 'Mid-Year Termination'
        when MidYearTerminationNoActivity then 'Mid-Year Termination (No Activity)'
        when MidYearAmendment then 'Mid-Year Amendment'
        when MidYearAmendmentNoActivity then 'Mid-Year Amendment (No Activity)'
        when MidYearTerminationAmendment then 'Mid-Year Termination Amendment'
        when MidYearTerminationAmendmentNoActivity then 'Mid-Year Termination Amendment (No Activity)'
        when YearEndReport then 'Year-End Report'
        when YearEndReportNoActivity then 'Year-End Report (No Activity)'
        when YearEndTermination then 'Year-End Termination'
        when YearEndTerminationNoActivity then 'Year-End Termination (No Activity)'
        when YearEndAmendment then 'Year-End Amendment'
        when YearEndAmendmentNoActivity then 'Year-End Amendment (No Activity)'
        when YearEndTerminationAmendment then 'Year-End Termination Amendment'
        when YearEndTerminationAmendmentNoActivity then 'Year-End Termination Amendment (No Activity)'
        else
          T.absurd(self)
        end
      end
    end
  end
end
