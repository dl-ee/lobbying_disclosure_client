# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class State < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Al = new('AL')
        Ak = new('AK')
        Az = new('AZ')
        Ar = new('AR')
        Ca = new('CA')
        Co = new('CO')
        Ct = new('CT')
        De = new('DE')
        Dc = new('DC')
        Fl = new('FL')
        Ga = new('GA')
        Hi = new('HI')
        Id = new('ID')
        Il = new('IL')
        In = new('IN')
        Ia = new('IA')
        Ks = new('KS')
        Ky = new('KY')
        La = new('LA')
        Me = new('ME')
        Md = new('MD')
        Ma = new('MA')
        Mi = new('MI')
        Mn = new('MN')
        Ms = new('MS')
        Mo = new('MO')
        Mt = new('MT')
        Ne = new('NE')
        Nv = new('NV')
        Nh = new('NH')
        Nj = new('NJ')
        Nm = new('NM')
        Ny = new('NY')
        Nc = new('NC')
        Nd = new('ND')
        Oh = new('OH')
        Ok = new('OK')
        Or = new('OR')
        Pa = new('PA')
        Ri = new('RI')
        Sc = new('SC')
        Sd = new('SD')
        Tn = new('TN')
        Tx = new('TX')
        Ut = new('UT')
        Vt = new('VT')
        Va = new('VA')
        Wa = new('WA')
        Wv = new('WV')
        Wi = new('WI')
        Wy = new('WY')

        As = new('AS')
        Aa = new('AA')
        Ae = new('AE')
        Ap = new('AP')
        Gu = new('GU')
        Mp = new('MP')
        Pr = new('PR')
        Vi = new('VI')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Al then 'Alabama'
        when Ak then 'Alaska'
        when As then 'American Samoa'
        when Az then 'Arizona'
        when Ar then 'Arkansas'
        when Aa then 'Armed Forces Americas'
        when Ae then 'Armed Forces Europe'
        when Ap then 'Armed Forces Pacific'
        when Ca then 'California'
        when Co then 'Colorado'
        when Ct then 'Connecticut'
        when De then 'Delaware'
        when Dc then 'District of Columbia'
        when Fl then 'Florida'
        when Ga then 'Georgia'
        when Gu then 'Guam'
        when Hi then 'Hawaii'
        when Id then 'Idaho'
        when Il then 'Illinois'
        when In then 'Indiana'
        when Ia then 'Iowa'
        when Ks then 'Kansas'
        when Ky then 'Kentucky'
        when La then 'Louisiana'
        when Me then 'Maine'
        when Md then 'Maryland'
        when Ma then 'Massachusetts'
        when Mi then 'Michigan'
        when Mn then 'Minnesota'
        when Ms then 'Mississippi'
        when Mo then 'Missouri'
        when Mt then 'Montana'
        when Ne then 'Nebraska'
        when Nv then 'Nevada'
        when Nh then 'New Hampshire'
        when Nj then 'New Jersey'
        when Nm then 'New Mexico'
        when Ny then 'New York'
        when Nc then 'North Carolina'
        when Nd then 'North Dakota'
        when Mp then 'Northern Mariana Islands'
        when Oh then 'Ohio'
        when Ok then 'Oklahoma'
        when Or then 'Oregon'
        when Pa then 'Pennsylvania'
        when Pr then 'Puerto Rico'
        when Ri then 'Rhode Island'
        when Sc then 'South Carolina'
        when Sd then 'South Dakota'
        when Tn then 'Tennessee'
        when Tx then 'Texas'
        when Ut then 'Utah'
        when Vt then 'Vermont'
        when Vi then 'Virgin Islands'
        when Va then 'Virginia'
        when Wa then 'Washington'
        when Wv then 'West Virginia'
        when Wi then 'Wisconsin'
        when Wy then 'Wyoming'
        else
          T.absurd(self)
        end
      end
    end
  end
end
