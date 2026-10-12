import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12992 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput12992 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩

theorem canonicalSound12992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12992.moment H = canonicalOutput12992.moment H :=
  canonical_of_padded canonicalInput12992 canonicalOutput12992 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12993 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12993 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1767⟩

theorem canonicalSound12993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12993.moment H = canonicalOutput12993.moment H :=
  canonical_of_padded canonicalInput12993 canonicalOutput12993 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12994 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12994 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2483⟩

theorem canonicalSound12994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12994.moment H = canonicalOutput12994.moment H :=
  canonical_of_padded canonicalInput12994 canonicalOutput12994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12995 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12995 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2487⟩

theorem canonicalSound12995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12995.moment H = canonicalOutput12995.moment H :=
  canonical_of_padded canonicalInput12995 canonicalOutput12995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12996 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput12996 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node891⟩

theorem canonicalSound12996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12996.moment H = canonicalOutput12996.moment H :=
  canonical_of_padded canonicalInput12996 canonicalOutput12996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12997 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12997 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩

theorem canonicalSound12997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12997.moment H = canonicalOutput12997.moment H :=
  canonical_of_padded canonicalInput12997 canonicalOutput12997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12998 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12998 : ExponentCode := normalNode5007

theorem canonicalSound12998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12998.moment H = canonicalOutput12998.moment H :=
  canonical_of_padded canonicalInput12998 canonicalOutput12998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12999 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12999 : ExponentCode := normalNode5094

theorem canonicalSound12999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12999.moment H = canonicalOutput12999.moment H :=
  canonical_of_padded canonicalInput12999 canonicalOutput12999 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13000 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13000 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1127⟩

theorem canonicalSound13000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13000.moment H = canonicalOutput13000.moment H :=
  canonical_of_padded canonicalInput13000 canonicalOutput13000 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13001 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13001 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound13001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13001.moment H = canonicalOutput13001.moment H :=
  canonical_of_padded canonicalInput13001 canonicalOutput13001 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13002 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13002 : ExponentCode := normalNode9478

theorem canonicalSound13002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13002.moment H = canonicalOutput13002.moment H :=
  canonical_of_padded canonicalInput13002 canonicalOutput13002 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13003 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 2, -1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13003 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1590⟩

theorem canonicalSound13003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13003.moment H = canonicalOutput13003.moment H :=
  canonical_of_padded canonicalInput13003 canonicalOutput13003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13004 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 2, 0, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1557⟩

theorem canonicalSound13004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13004.moment H = canonicalOutput13004.moment H :=
  canonical_of_padded canonicalInput13004 canonicalOutput13004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13005 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13005 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩

theorem canonicalSound13005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13005.moment H = canonicalOutput13005.moment H :=
  canonical_of_padded canonicalInput13005 canonicalOutput13005 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13006 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 2, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13006 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node891⟩

theorem canonicalSound13006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13006.moment H = canonicalOutput13006.moment H :=
  canonical_of_padded canonicalInput13006 canonicalOutput13006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13007 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![0, -1, 2, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput13007 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code386

theorem canonicalSound13007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13007.moment H = canonicalOutput13007.moment H :=
  canonical_of_padded canonicalInput13007 canonicalOutput13007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13008 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput13008 : ExponentCode := normalNode6425

theorem canonicalSound13008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13008.moment H = canonicalOutput13008.moment H :=
  canonical_of_padded canonicalInput13008 canonicalOutput13008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13009 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![0, 0, 2, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput13009 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code121

theorem canonicalSound13009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13009.moment H = canonicalOutput13009.moment H :=
  canonical_of_padded canonicalInput13009 canonicalOutput13009 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13010 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput13010 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1279

theorem canonicalSound13010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13010.moment H = canonicalOutput13010.moment H :=
  canonical_of_padded canonicalInput13010 canonicalOutput13010 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13011 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput13011 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code123

theorem canonicalSound13011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13011.moment H = canonicalOutput13011.moment H :=
  canonical_of_padded canonicalInput13011 canonicalOutput13011 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13012 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput13012 : ExponentCode := normalNode9655

theorem canonicalSound13012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13012.moment H = canonicalOutput13012.moment H :=
  canonical_of_padded canonicalInput13012 canonicalOutput13012 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13013 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -2, 0], ![1, 0, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput13013 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1279

theorem canonicalSound13013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13013.moment H = canonicalOutput13013.moment H :=
  canonical_of_padded canonicalInput13013 canonicalOutput13013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13014 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13014 : ExponentCode := normalNode4328

theorem canonicalSound13014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13014.moment H = canonicalOutput13014.moment H :=
  canonical_of_padded canonicalInput13014 canonicalOutput13014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13015 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput13015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound13015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13015.moment H = canonicalOutput13015.moment H :=
  canonical_of_padded canonicalInput13015 canonicalOutput13015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13016 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput13016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1001

theorem canonicalSound13016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13016.moment H = canonicalOutput13016.moment H :=
  canonical_of_padded canonicalInput13016 canonicalOutput13016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13017 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13017 : ExponentCode := normalNode7273

theorem canonicalSound13017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13017.moment H = canonicalOutput13017.moment H :=
  canonical_of_padded canonicalInput13017 canonicalOutput13017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13018 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13018 : ExponentCode := normalNode7275

theorem canonicalSound13018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13018.moment H = canonicalOutput13018.moment H :=
  canonical_of_padded canonicalInput13018 canonicalOutput13018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13019 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput13019 : ExponentCode := normalNode6432

theorem canonicalSound13019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13019.moment H = canonicalOutput13019.moment H :=
  canonical_of_padded canonicalInput13019 canonicalOutput13019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13020 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput13020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound13020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13020.moment H = canonicalOutput13020.moment H :=
  canonical_of_padded canonicalInput13020 canonicalOutput13020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13021 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13021 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound13021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13021.moment H = canonicalOutput13021.moment H :=
  canonical_of_padded canonicalInput13021 canonicalOutput13021 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13022 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput13022 : ExponentCode := normalNode6460

theorem canonicalSound13022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13022.moment H = canonicalOutput13022.moment H :=
  canonical_of_padded canonicalInput13022 canonicalOutput13022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13023 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput13023 : ExponentCode := normalNode7925

theorem canonicalSound13023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13023.moment H = canonicalOutput13023.moment H :=
  canonical_of_padded canonicalInput13023 canonicalOutput13023 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13024 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, -1, -1], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput13024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound13024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13024.moment H = canonicalOutput13024.moment H :=
  canonical_of_padded canonicalInput13024 canonicalOutput13024 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13025 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, 0, -2], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13025 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2067⟩

theorem canonicalSound13025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13025.moment H = canonicalOutput13025.moment H :=
  canonical_of_padded canonicalInput13025 canonicalOutput13025 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13026 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 3, 0, -2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2485⟩

theorem canonicalSound13026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13026.moment H = canonicalOutput13026.moment H :=
  canonical_of_padded canonicalInput13026 canonicalOutput13026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13027 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 3, 0, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13027 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1125⟩

theorem canonicalSound13027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13027.moment H = canonicalOutput13027.moment H :=
  canonical_of_padded canonicalInput13027 canonicalOutput13027 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13028 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13028 : ExponentCode := normalNode6399

theorem canonicalSound13028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13028.moment H = canonicalOutput13028.moment H :=
  canonical_of_padded canonicalInput13028 canonicalOutput13028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13029 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput13029 : ExponentCode := normalNode6400

theorem canonicalSound13029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13029.moment H = canonicalOutput13029.moment H :=
  canonical_of_padded canonicalInput13029 canonicalOutput13029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13030 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput13030 : ExponentCode := normalNode7306

theorem canonicalSound13030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13030.moment H = canonicalOutput13030.moment H :=
  canonical_of_padded canonicalInput13030 canonicalOutput13030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13031 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput13031 : ExponentCode := normalNode6417

theorem canonicalSound13031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13031.moment H = canonicalOutput13031.moment H :=
  canonical_of_padded canonicalInput13031 canonicalOutput13031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13032 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![-1, 3, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13032 : ExponentCode := normalNode7327

theorem canonicalSound13032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13032.moment H = canonicalOutput13032.moment H :=
  canonical_of_padded canonicalInput13032 canonicalOutput13032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13033 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13033 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2507⟩

theorem canonicalSound13033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13033.moment H = canonicalOutput13033.moment H :=
  canonical_of_padded canonicalInput13033 canonicalOutput13033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13034 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput13034 : ExponentCode := normalNode6439

theorem canonicalSound13034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13034.moment H = canonicalOutput13034.moment H :=
  canonical_of_padded canonicalInput13034 canonicalOutput13034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13035 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput13035 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2508⟩

theorem canonicalSound13035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13035.moment H = canonicalOutput13035.moment H :=
  canonical_of_padded canonicalInput13035 canonicalOutput13035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13036 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput13036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2499⟩

theorem canonicalSound13036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13036.moment H = canonicalOutput13036.moment H :=
  canonical_of_padded canonicalInput13036 canonicalOutput13036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13037 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput13037 : ExponentCode := normalNode6440

theorem canonicalSound13037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13037.moment H = canonicalOutput13037.moment H :=
  canonical_of_padded canonicalInput13037 canonicalOutput13037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13038 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput13038 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2493⟩

theorem canonicalSound13038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13038.moment H = canonicalOutput13038.moment H :=
  canonical_of_padded canonicalInput13038 canonicalOutput13038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13039 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput13039 : ExponentCode := normalNode6441

theorem canonicalSound13039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13039.moment H = canonicalOutput13039.moment H :=
  canonical_of_padded canonicalInput13039 canonicalOutput13039 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13040 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput13040 : ExponentCode := normalNode7412

theorem canonicalSound13040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13040.moment H = canonicalOutput13040.moment H :=
  canonical_of_padded canonicalInput13040 canonicalOutput13040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13041 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 3, -1, -2], ![0, 0, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13041 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound13041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13041.moment H = canonicalOutput13041.moment H :=
  canonical_of_padded canonicalInput13041 canonicalOutput13041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13042 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput13042 : ExponentCode := normalNode6442

theorem canonicalSound13042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13042.moment H = canonicalOutput13042.moment H :=
  canonical_of_padded canonicalInput13042 canonicalOutput13042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13043 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput13043 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound13043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13043.moment H = canonicalOutput13043.moment H :=
  canonical_of_padded canonicalInput13043 canonicalOutput13043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13044 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput13044 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node892⟩

theorem canonicalSound13044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13044.moment H = canonicalOutput13044.moment H :=
  canonical_of_padded canonicalInput13044 canonicalOutput13044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13045 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13045 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node911⟩

theorem canonicalSound13045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13045.moment H = canonicalOutput13045.moment H :=
  canonical_of_padded canonicalInput13045 canonicalOutput13045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13046 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13046 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound13046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13046.moment H = canonicalOutput13046.moment H :=
  canonical_of_padded canonicalInput13046 canonicalOutput13046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13047 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput13047 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩

theorem canonicalSound13047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13047.moment H = canonicalOutput13047.moment H :=
  canonical_of_padded canonicalInput13047 canonicalOutput13047 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13048 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, -1, 2, -1], ![0, 3, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput13048 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node920⟩

theorem canonicalSound13048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13048.moment H = canonicalOutput13048.moment H :=
  canonical_of_padded canonicalInput13048 canonicalOutput13048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13049 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, -1, 3, -2], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13049 : ExponentCode := normalNode6457

theorem canonicalSound13049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13049.moment H = canonicalOutput13049.moment H :=
  canonical_of_padded canonicalInput13049 canonicalOutput13049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13050 : ExponentCode := ⟨3, 4, ![![-1, -2, -1, 4], ![0, -1, 3, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput13050 : ExponentCode := normalNode235

theorem canonicalSound13050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13050.moment H = canonicalOutput13050.moment H :=
  canonical_of_padded canonicalInput13050 canonicalOutput13050 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13051 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput13051 : ExponentCode := normalNode7960

theorem canonicalSound13051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13051.moment H = canonicalOutput13051.moment H :=
  canonical_of_padded canonicalInput13051 canonicalOutput13051 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13052 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput13052 : ExponentCode := normalNode10316

theorem canonicalSound13052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13052.moment H = canonicalOutput13052.moment H :=
  canonical_of_padded canonicalInput13052 canonicalOutput13052 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13053 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput13053 : ExponentCode := normalNode7932

theorem canonicalSound13053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13053.moment H = canonicalOutput13053.moment H :=
  canonical_of_padded canonicalInput13053 canonicalOutput13053 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13054 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13054 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1176⟩

theorem canonicalSound13054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13054.moment H = canonicalOutput13054.moment H :=
  canonical_of_padded canonicalInput13054 canonicalOutput13054 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput13055 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput13055 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node286⟩

theorem canonicalSound13055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13055.moment H = canonicalOutput13055.moment H :=
  canonical_of_padded canonicalInput13055 canonicalOutput13055 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
