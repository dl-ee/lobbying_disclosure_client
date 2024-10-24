# typed: strict
# frozen_string_literal: true

module LobbyingDisclosureClient
  module Enums
    class GeneralIssueCode < T::Enum
      extend T::Sig
      include LobbyingDisclosureClient::Interfaces::ValidatableEnum

      enums do
        Acc = new('ACC')
        Adv = new('ADV')
        Aer = new('AER')
        Agr = new('AGR')
        Alc = new('ALC')
        Ani = new('ANI')
        App = new('APP')
        Art = new('ART')
        Aut = new('AUT')
        Avi = new('AVI')
        Ban = new('BAN')
        Bnk = new('BNK')
        Bev = new('BEV')
        Bud = new('BUD')
        Civ = new('CIV')
        Chm = new('CHM')
        Caw = new('CAW')
        Cdt = new('CDT')
        Com = new('COM')
        Cpi = new('CPI')
        Con = new('CON')
        Csp = new('CSP')
        Cpt = new('CPT')
        Def = new('DEF')
        Dis = new('DIS')
        Doc = new('DOC')
        Ecn = new('ECN')
        Edu = new('EDU')
        Eng = new('ENG')
        Env = new('ENV')
        Fam = new('FAM')
        Fin = new('FIN')
        Fir = new('FIR')
        Foo = new('FOO')
        For = new('FOR')
        Fue = new('FUE')
        Gam = new('GAM')
        Gov = new('GOV')
        Hcr = new('HCR')
        Hom = new('HOM')
        Hou = new('HOU')
        Imm = new('IMM')
        Ind = new('IND')
        Ins = new('INS')
        Int = new('INT')
        Lbr = new('LBR')
        Law = new('LAW')
        Man = new('MAN')
        Mar = new('MAR')
        Mia = new('MIA')
        Med = new('MED')
        Mmm = new('MMM')
        Mon = new('MON')
        Nat = new('NAT')
        Pha = new('PHA')
        Pos = new('POS')
        Rrr = new('RRR')
        Res = new('RES')
        Rel = new('REL')
        Ret = new('RET')
        Rod = new('ROD')
        Sci = new('SCI')
        Smb = new('SMB')
        Spo = new('SPO')
        Tar = new('TAR')
        Tax = new('TAX')
        Tec = new('TEC')
        Tob = new('TOB')
        Tor = new('TOR')
        Trd = new('TRD')
        Tra = new('TRA')
        Tou = new('TOU')
        Tru = new('TRU')
        Urb = new('URB')
        Unm = new('UNM')
        Uti = new('UTI')
        Vet = new('VET')
        Was = new('WAS')
        Wel = new('WEL')
      end

      sig do
        override.returns(String)
      end
      def name
        case self
        when Acc then 'Accounting'
        when Adv then 'Advertising'
        when Aer then 'Aerospace'
        when Agr then 'Agriculture'
        when Alc then 'Alcohol and Drug Abuse'
        when Ani then 'Animals'
        when App then 'Apparel/Clothing Industry/Textiles'
        when Art then 'Arts/Entertainment'
        when Aut then 'Automotive Industry'
        when Avi then 'Aviation/Airlines/Airports'
        when Ban then 'Banking'
        when Bnk then 'Bankruptcy'
        when Bev then 'Beverage Industry'
        when Bud then 'Budget/Appropriations'
        when Civ then 'Civil Rights/Civil Liberties'
        when Chm then 'Chemicals/Chemical Industry'
        when Caw then 'Clean Air and Water (quality)'
        when Cdt then 'Commodities (big ticket)'
        when Com then 'Communications/Broadcasting/Radio/TV'
        when Cpi then 'Computer Industry'
        when Con then 'Constitution'
        when Csp then 'Consumer Issues/Safety/Products'
        when Cpt then 'Copyright/Patent/Trademark'
        when Def then 'Defense'
        when Dis then 'Disaster Planning/Emergencies'
        when Doc then 'District of Columbia'
        when Ecn then 'Economics/Economic Development'
        when Edu then 'Education'
        when Eng then 'Energy/Nuclear'
        when Env then 'Environment/Superfund'
        when Fam then 'Family issues/Abortion/Adoption'
        when Fin then 'Financial Institutions/Investments/Securities'
        when Fir then 'Firearms/Guns/Ammunition'
        when Foo then 'Food Industry (safety, labeling, etc.)'
        when For then 'Foreign Relations'
        when Fue then 'Fuel/Gas/Oil'
        when Gam then 'Gaming/Gambling/Casino'
        when Gov then 'Government Issues'
        when Hcr then 'Health Issues'
        when Hom then 'Homeland Security'
        when Hou then 'Housing'
        when Imm then 'Immigration'
        when Ind then 'Indian/Native American Affairs'
        when Ins then 'Insurance'
        when Int then 'Intelligence'
        when Lbr then 'Labor Issues/Antitrust/Workplace'
        when Law then 'Law Enforcement/Crime/Criminal Justice'
        when Man then 'Manufacturing'
        when Mar then 'Marine/Maritime/Boating/Fisheries'
        when Mia then 'Media (information/publishing)'
        when Med then 'Medical/Disease Research/Clinical Labs'
        when Mmm then 'Medicare/Medicaid'
        when Mon then 'Minting/Money/Gold Standard'
        when Nat then 'Natural Resources'
        when Pha then 'Pharmacy'
        when Pos then 'Postal'
        when Rrr then 'Railroads'
        when Res then 'Real Estate/Land Use/Conservation'
        when Rel then 'Religion'
        when Ret then 'Retirement'
        when Rod then 'Roads/Highway'
        when Sci then 'Science/Technology'
        when Smb then 'Small Business'
        when Spo then 'Sports/Athletics'
        when Tar then 'Tariff (miscellaneous tariff bills)'
        when Tax then 'Taxation/Internal Revenue Code'
        when Tec then 'Telecommunications'
        when Tob then 'Tobacco'
        when Tor then 'Torts'
        when Trd then 'Trade (domestic/foreign)'
        when Tra then 'Transportation'
        when Tou then 'Travel/Tourism'
        when Tru then 'Trucking/Shipping'
        when Urb then 'Urban Development/Municipalities'
        when Unm then 'Unemployment'
        when Uti then 'Utilities'
        when Vet then 'Veterans'
        when Was then 'Waste (hazardous/solid/interstate/nuclear)'
        when Wel then 'Welfare'
        else
          T.absurd(self)
        end
      end
    end
  end
end
