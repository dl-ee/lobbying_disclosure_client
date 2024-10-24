# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class Country < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Us = new('US')
        Ca = new('CA')
        Af = new('AF')
        Ax = new('AX')
        Al = new('AL')
        Dz = new('DZ')
        As = new('AS')
        Ad = new('AD')
        Ao = new('AO')
        Ai = new('AI')
        Aq = new('AQ')
        Ag = new('AG')
        Ar = new('AR')
        Am = new('AM')
        Aw = new('AW')
        Au = new('AU')
        At = new('AT')
        Az = new('AZ')
        Bs = new('BS')
        Bh = new('BH')
        Bd = new('BD')
        Bb = new('BB')
        By = new('BY')
        Be = new('BE')
        Bz = new('BZ')
        Bj = new('BJ')
        Bm = new('BM')
        Bt = new('BT')
        Bo = new('BO')
        Bq = new('BQ')
        Ba = new('BA')
        Bw = new('BW')
        Bv = new('BV')
        Br = new('BR')
        Io = new('IO')
        Bn = new('BN')
        Bg = new('BG')
        Bf = new('BF')
        Bi = new('BI')
        Cv = new('CV')
        Kh = new('KH')
        Cm = new('CM')
        Ky = new('KY')
        Cf = new('CF')
        Td = new('TD')
        Cl = new('CL')
        Cn = new('CN')
        Cx = new('CX')
        Cc = new('CC')
        Co = new('CO')
        Km = new('KM')
        Cg = new('CG')
        Cd = new('CD')
        Ck = new('CK')
        Cr = new('CR')
        Ci = new('CI')
        Hr = new('HR')
        Cu = new('CU')
        Cw = new('CW')
        Cy = new('CY')
        Cz = new('CZ')
        Dk = new('DK')
        Dj = new('DJ')
        Dm = new('DM')
        Do = new('DO')
        Ec = new('EC')
        Eg = new('EG')
        Sv = new('SV')
        Gq = new('GQ')
        Er = new('ER')
        Ee = new('EE')
        Sz = new('SZ')
        Et = new('ET')
        Fk = new('FK')
        Fo = new('FO')
        Fj = new('FJ')
        Fi = new('FI')
        Fr = new('FR')
        Gf = new('GF')
        Pf = new('PF')
        Tf = new('TF')
        Ga = new('GA')
        Gm = new('GM')
        Ge = new('GE')
        De = new('DE')
        Gh = new('GH')
        Gi = new('GI')
        Gr = new('GR')
        Gl = new('GL')
        Gd = new('GD')
        Gp = new('GP')
        Gu = new('GU')
        Gt = new('GT')
        Gg = new('GG')
        Gn = new('GN')
        Gw = new('GW')
        Gy = new('GY')
        Ht = new('HT')
        Hm = new('HM')
        Va = new('VA')
        Hn = new('HN')
        Hk = new('HK')
        Hu = new('HU')
        Is = new('IS')
        In = new('IN')
        Id = new('ID')
        Ir = new('IR')
        Iq = new('IQ')
        Ie = new('IE')
        Im = new('IM')
        Il = new('IL')
        It = new('IT')
        Jm = new('JM')
        Jp = new('JP')
        Je = new('JE')
        Jo = new('JO')
        Kz = new('KZ')
        Ke = new('KE')
        Ki = new('KI')
        Xk = new('XK')
        Kw = new('KW')
        Kg = new('KG')
        La = new('LA')
        Lv = new('LV')
        Lb = new('LB')
        Ls = new('LS')
        Lr = new('LR')
        Ly = new('LY')
        Li = new('LI')
        Lt = new('LT')
        Lu = new('LU')
        Mo = new('MO')
        Mg = new('MG')
        Mw = new('MW')
        My = new('MY')
        Mv = new('MV')
        Ml = new('ML')
        Mt = new('MT')
        Mh = new('MH')
        Mq = new('MQ')
        Mr = new('MR')
        Mu = new('MU')
        Yt = new('YT')
        Mx = new('MX')
        Fm = new('FM')
        Md = new('MD')
        Mc = new('MC')
        Mn = new('MN')
        Me = new('ME')
        Ms = new('MS')
        Ma = new('MA')
        Mz = new('MZ')
        Mm = new('MM')
        Na = new('NA')
        Nr = new('NR')
        Np = new('NP')
        Nl = new('NL')
        Nc = new('NC')
        Nz = new('NZ')
        Ni = new('NI')
        Ne = new('NE')
        Ng = new('NG')
        Nu = new('NU')
        Nf = new('NF')
        Kp = new('KP')
        Mk = new('MK')
        Mp = new('MP')
        No = new('NO')
        Om = new('OM')
        Pk = new('PK')
        Pw = new('PW')
        Ps = new('PS')
        Pa = new('PA')
        Pg = new('PG')
        Py = new('PY')
        Pe = new('PE')
        Ph = new('PH')
        Pn = new('PN')
        Pl = new('PL')
        Pt = new('PT')
        Pr = new('PR')
        Qa = new('QA')
        Re = new('RE')
        Ro = new('RO')
        Ru = new('RU')
        Rw = new('RW')
        Bl = new('BL')
        Sh = new('SH')
        Kn = new('KN')
        Lc = new('LC')
        Mf = new('MF')
        Pm = new('PM')
        Vc = new('VC')
        Ws = new('WS')
        Sm = new('SM')
        St = new('ST')
        Sa = new('SA')
        Sn = new('SN')
        Rs = new('RS')
        Sc = new('SC')
        Sl = new('SL')
        Sg = new('SG')
        Sx = new('SX')
        Sk = new('SK')
        Si = new('SI')
        Sb = new('SB')
        So = new('SO')
        Za = new('ZA')
        Gs = new('GS')
        Kr = new('KR')
        Ss = new('SS')
        Es = new('ES')
        Lk = new('LK')
        Sd = new('SD')
        Sr = new('SR')
        Sj = new('SJ')
        Se = new('SE')
        Ch = new('CH')
        Sy = new('SY')
        Tw = new('TW')
        Tj = new('TJ')
        Tz = new('TZ')
        Th = new('TH')
        Tl = new('TL')
        Tg = new('TG')
        Tk = new('TK')
        To = new('TO')
        Tt = new('TT')
        Tn = new('TN')
        Tr = new('TR')
        Tm = new('TM')
        Tc = new('TC')
        Tv = new('TV')
        Ug = new('UG')
        Ua = new('UA')
        Ae = new('AE')
        Gb = new('GB')
        Um = new('UM')
        Uy = new('UY')
        Uz = new('UZ')
        Vu = new('VU')
        Ve = new('VE')
        Vn = new('VN')
        Vg = new('VG')
        Vi = new('VI')
        Wf = new('WF')
        Eh = new('EH')
        Ye = new('YE')
        Zm = new('ZM')
        Zw = new('ZW')

        # This is listed as a possible value in the API documentation,
        # but it's unclear what it's intended to represent
        ZeroZero = new('00')

        # This is not returned as a possible value in the constants API endpoint,
        # but empirically it does get returned by other endpoints
        Blank = new('')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Ad then 'Andorra'
        when Ae then 'United Arab Emirates'
        when Af then 'Afghanistan'
        when Ag then 'Antigua and Barbuda'
        when Ai then 'Anguilla'
        when Al then 'Albania'
        when Am then 'Armenia'
        when Ao then 'Angola'
        when Aq then 'Antarctica'
        when Ar then 'Argentina'
        when As then 'American Samoa'
        when At then 'Austria'
        when Au then 'Australia'
        when Aw then 'Aruba'
        when Ax then 'Åland Islands'
        when Az then 'Azerbaijan'
        when Ba then 'Bosnia and Herzegovina'
        when Bb then 'Barbados'
        when Bd then 'Bangladesh'
        when Be then 'Belgium'
        when Bf then 'Burkina Faso'
        when Bg then 'Bulgaria'
        when Bh then 'Bahrain'
        when Bi then 'Burundi'
        when Bj then 'Benin'
        when Bl then 'Saint Barthélemy'
        when Bm then 'Bermuda'
        when Bn then 'Brunei'
        when Bo then 'Bolivia'
        when Bq then 'Bonaire, Sint Eustatius and Saba'
        when Br then 'Brazil'
        when Bs then 'Bahamas'
        when Bt then 'Bhutan'
        when Bv then 'Bouvet Island'
        when Bw then 'Botswana'
        when By then 'Belarus'
        when Bz then 'Belize'
        when Ca then 'Canada'
        when Cc then 'Cocos (Keeling) Islands'
        when Cd then 'Congo (the Democratic Republic of the)'
        when Cf then 'Central African Republic'
        when Cg then 'Congo'
        when Ch then 'Switzerland'
        when Ci then "Côte d'Ivoire"
        when Ck then 'Cook Islands'
        when Cl then 'Chile'
        when Cm then 'Cameroon'
        when Cn then 'China'
        when Co then 'Colombia'
        when Cr then 'Costa Rica'
        when Cu then 'Cuba'
        when Cv then 'Cabo Verde'
        when Cw then 'Curaçao'
        when Cx then 'Christmas Island'
        when Cy then 'Cyprus'
        when Cz then 'Czechia'
        when De then 'Germany'
        when Dj then 'Djibouti'
        when Dk then 'Denmark'
        when Dm then 'Dominica'
        when Do then 'Dominican Republic'
        when Dz then 'Algeria'
        when Ec then 'Ecuador'
        when Ee then 'Estonia'
        when Eg then 'Egypt'
        when Eh then 'Western Sahara'
        when Er then 'Eritrea'
        when Es then 'Spain'
        when Et then 'Ethiopia'
        when Fi then 'Finland'
        when Fj then 'Fiji'
        when Fk then 'Falkland Islands (Malvinas)'
        when Fm then 'Micronesia (Federated States of)'
        when Fo then 'Faroe Islands'
        when Fr then 'France'
        when Ga then 'Gabon'
        when Gb then 'United Kingdom'
        when Gd then 'Grenada'
        when Ge then 'Georgia'
        when Gf then 'French Guiana'
        when Gg then 'Guernsey'
        when Gh then 'Ghana'
        when Gi then 'Gibraltar'
        when Gl then 'Greenland'
        when Gm then 'Gambia'
        when Gn then 'Guinea'
        when Gp then 'Guadeloupe'
        when Gq then 'Equatorial Guinea'
        when Gr then 'Greece'
        when Gs then 'South Georgia and the South Sandwich Islands'
        when Gt then 'Guatemala'
        when Gu then 'Guam'
        when Gw then 'Guinea-Bissau'
        when Gy then 'Guyana'
        when Hk then 'Hong Kong'
        when Hm then 'Heard Island and McDonald Islands'
        when Hn then 'Honduras'
        when Hr then 'Croatia'
        when Ht then 'Haiti'
        when Hu then 'Hungary'
        when Id then 'Indonesia'
        when Ie then 'Ireland'
        when Il then 'Israel'
        when Im then 'Isle of Man'
        when In then 'India'
        when Io then 'British Indian Ocean Territory'
        when Iq then 'Iraq'
        when Ir then 'Iran'
        when Is then 'Iceland'
        when It then 'Italy'
        when Je then 'Jersey'
        when Jm then 'Jamaica'
        when Jo then 'Jordan'
        when Jp then 'Japan'
        when Ke then 'Kenya'
        when Kg then 'Kyrgyzstan'
        when Kh then 'Cambodia'
        when Ki then 'Kiribati'
        when Km then 'Comoros'
        when Kn then 'Saint Kitts and Nevis'
        when Kp then 'North Korea'
        when Kr then 'South Korea'
        when Kw then 'Kuwait'
        when Ky then 'Cayman Islands'
        when Kz then 'Kazakhstan'
        when La then 'Laos'
        when Lb then 'Lebanon'
        when Lc then 'Saint Lucia'
        when Li then 'Liechtenstein'
        when Lk then 'Sri Lanka'
        when Lr then 'Liberia'
        when Ls then 'Lesotho'
        when Lt then 'Lithuania'
        when Lu then 'Luxembourg'
        when Lv then 'Latvia'
        when Ly then 'Libya'
        when Ma then 'Morocco'
        when Mc then 'Monaco'
        when Md then 'Moldova'
        when Me then 'Montenegro'
        when Mf then 'Saint Martin (French part)'
        when Mg then 'Madagascar'
        when Mh then 'Marshall Islands'
        when Mk then 'North Macedonia'
        when Ml then 'Mali'
        when Mm then 'Myanmar'
        when Mn then 'Mongolia'
        when Mo then 'Macao'
        when Mp then 'Northern Mariana Islands'
        when Mq then 'Martinique'
        when Mr then 'Mauritania'
        when Ms then 'Montserrat'
        when Mt then 'Malta'
        when Mu then 'Mauritius'
        when Mv then 'Maldives'
        when Mw then 'Malawi'
        when Mx then 'Mexico'
        when My then 'Malaysia'
        when Mz then 'Mozambique'
        when Na then 'Namibia'
        when Nc then 'New Caledonia'
        when Ne then 'Niger'
        when Nf then 'Norfolk Island'
        when Ng then 'Nigeria'
        when Ni then 'Nicaragua'
        when Nl then 'Netherlands'
        when No then 'Norway'
        when Np then 'Nepal'
        when Nr then 'Nauru'
        when Nu then 'Niue'
        when Nz then 'New Zealand'
        when Om then 'Oman'
        when Pa then 'Panama'
        when Pe then 'Peru'
        when Pf then 'French Polynesia'
        when Pg then 'Papua New Guinea'
        when Ph then 'Philippines'
        when Pk then 'Pakistan'
        when Pl then 'Poland'
        when Pm then 'Saint Pierre and Miquelon'
        when Pn then 'Pitcairn'
        when Pr then 'Puerto Rico'
        when Ps then 'Palestine, State of'
        when Pt then 'Portugal'
        when Pw then 'Palau'
        when Py then 'Paraguay'
        when Qa then 'Qatar'
        when Re then 'Réunion'
        when Ro then 'Romania'
        when Rs then 'Serbia'
        when Ru then 'Russia'
        when Rw then 'Rwanda'
        when Sa then 'Saudi Arabia'
        when Sb then 'Solomon Islands'
        when Sc then 'Seychelles'
        when Sd then 'Sudan'
        when Se then 'Sweden'
        when Sg then 'Singapore'
        when Sh then 'Saint Helena, Ascension and Tristan da Cunha'
        when Si then 'Slovenia'
        when Sj then 'Svalbard and Jan Mayen'
        when Sk then 'Slovakia'
        when Sl then 'Sierra Leone'
        when Sm then 'San Marino'
        when Sn then 'Senegal'
        when So then 'Somalia'
        when Sr then 'Suriname'
        when Ss then 'South Sudan'
        when St then 'Sao Tome and Principe'
        when Sv then 'El Salvador'
        when Sx then 'Sint Maarten (Dutch part)'
        when Sy then 'Syria'
        when Sz then 'Eswatini'
        when Tc then 'Turks and Caicos Islands'
        when Td then 'Chad'
        when Tf then 'French Southern Territories'
        when Tg then 'Togo'
        when Th then 'Thailand'
        when Tj then 'Tajikistan'
        when Tk then 'Tokelau'
        when Tl then 'Timor-Leste'
        when Tm then 'Turkmenistan'
        when Tn then 'Tunisia'
        when To then 'Tonga'
        when Tr then 'Türkiye'
        when Tt then 'Trinidad and Tobago'
        when Tv then 'Tuvalu'
        when Tw then 'Taiwan'
        when Tz then 'Tanzania'
        when Ua then 'Ukraine'
        when Ug then 'Uganda'
        when Um then 'United States Minor Outlying Islands'
        when Us then 'United States of America'
        when Uy then 'Uruguay'
        when Uz then 'Uzbekistan'
        when Va then 'Holy See'
        when Vc then 'Saint Vincent and the Grenadines'
        when Ve then 'Venezuela'
        when Vg then 'Virgin Islands (British)'
        when Vi then 'Virgin Islands (U.S.)'
        when Vn then 'Vietnam'
        when Vu then 'Vanuatu'
        when Wf then 'Wallis and Futuna'
        when Ws then 'Samoa'
        when Xk then 'Kosovo'
        when Ye then 'Yemen'
        when Yt then 'Mayotte'
        when Za then 'South Africa'
        when Zm then 'Zambia'
        when Zw then 'Zimbabwe'
        when ZeroZero, Blank then '* Undetermined'
        else
          T.absurd(self)
        end
      end
    end
  end
end
