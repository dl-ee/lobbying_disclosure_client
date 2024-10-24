# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class Suffix < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Jr = new('jr')
        Sr = new('sr')
        I = new('i')
        Ii = new('ii')
        Iii = new('iii')
        Iv = new('iv')
        V = new('v')
        Cae = new('cae')
        Dvm = new('dvm')
        Dmd = new('dmd')
        Dppd = new('dppd')
        Edd = new('edd')
        Esq = new('esq')
        Jd = new('jd')
        Md = new('md')
        Ma = new('ma')
        Med = new('med')
        Mhsa = new('mhsa')
        Mph = new('mph')
        Od = new('od')
        Pa = new('pa')
        Pe = new('pe')
        Phd = new('phd')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Jr then 'JR'
        when Sr then 'SR'
        when I then 'I'
        when Ii then 'II'
        when Iii then 'III'
        when Iv then 'IV'
        when V then 'V'
        when Cae then 'CAE'
        when Dvm then 'DVM'
        when Dmd then 'DMD'
        when Dppd then 'DPPD'
        when Edd then 'EDD'
        when Esq then 'ESQ'
        when Jd then 'JD'
        when Md then 'MD'
        when Ma then 'MA'
        when Med then 'MED'
        when Mhsa then 'MHSA'
        when Mph then 'MPH'
        when Od then 'OD'
        when Pa then 'PA'
        when Pe then 'PE'
        when Phd then 'PHD'
        else
          T.absurd(self)
        end
      end
    end
  end
end
