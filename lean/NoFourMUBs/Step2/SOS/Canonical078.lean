import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4992 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput4992 : ExponentCode := normalNode2687

theorem canonicalSound4992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4992.moment H = canonicalOutput4992.moment H :=
  canonical_of_padded canonicalInput4992 canonicalOutput4992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4993 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4993 : ExponentCode := normalNode10646

theorem canonicalSound4993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4993.moment H = canonicalOutput4993.moment H :=
  canonical_of_padded canonicalInput4993 canonicalOutput4993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4994 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4994 : ExponentCode := normalNode7004

theorem canonicalSound4994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4994.moment H = canonicalOutput4994.moment H :=
  canonical_of_padded canonicalInput4994 canonicalOutput4994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4995 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput4995 : ExponentCode := normalNode7011

theorem canonicalSound4995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4995.moment H = canonicalOutput4995.moment H :=
  canonical_of_padded canonicalInput4995 canonicalOutput4995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4996 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput4996 : ExponentCode := normalNode6979

theorem canonicalSound4996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4996.moment H = canonicalOutput4996.moment H :=
  canonical_of_padded canonicalInput4996 canonicalOutput4996 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4997 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput4997 : ExponentCode := normalNode2718

theorem canonicalSound4997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4997.moment H = canonicalOutput4997.moment H :=
  canonical_of_padded canonicalInput4997 canonicalOutput4997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4998 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4998 : ExponentCode := normalNode1986

theorem canonicalSound4998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4998.moment H = canonicalOutput4998.moment H :=
  canonical_of_padded canonicalInput4998 canonicalOutput4998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4999 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4999 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound4999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4999.moment H = canonicalOutput4999.moment H :=
  canonical_of_padded canonicalInput4999 canonicalOutput4999 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5000 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput5000 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound5000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5000.moment H = canonicalOutput5000.moment H :=
  canonical_of_padded canonicalInput5000 canonicalOutput5000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5001 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput5001 : ExponentCode := normalNode5053

theorem canonicalSound5001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5001.moment H = canonicalOutput5001.moment H :=
  canonical_of_padded canonicalInput5001 canonicalOutput5001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5002 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput5002 : ExponentCode := normalNode5072

theorem canonicalSound5002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5002.moment H = canonicalOutput5002.moment H :=
  canonical_of_padded canonicalInput5002 canonicalOutput5002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5003 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5003 : ExponentCode := normalNode5071

theorem canonicalSound5003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5003.moment H = canonicalOutput5003.moment H :=
  canonical_of_padded canonicalInput5003 canonicalOutput5003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5004 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5004 : ExponentCode := normalNode7081

theorem canonicalSound5004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5004.moment H = canonicalOutput5004.moment H :=
  canonical_of_padded canonicalInput5004 canonicalOutput5004 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5005 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput5005 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound5005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5005.moment H = canonicalOutput5005.moment H :=
  canonical_of_padded canonicalInput5005 canonicalOutput5005 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5006 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput5006 : ExponentCode := normalNode7073

theorem canonicalSound5006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5006.moment H = canonicalOutput5006.moment H :=
  canonical_of_padded canonicalInput5006 canonicalOutput5006 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5007 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput5007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node834⟩

theorem canonicalSound5007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5007.moment H = canonicalOutput5007.moment H :=
  canonical_of_padded canonicalInput5007 canonicalOutput5007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5008 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput5008 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound5008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5008.moment H = canonicalOutput5008.moment H :=
  canonical_of_padded canonicalInput5008 canonicalOutput5008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5009 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 1, -3, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput5009 : ExponentCode := normalNode7010

theorem canonicalSound5009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5009.moment H = canonicalOutput5009.moment H :=
  canonical_of_padded canonicalInput5009 canonicalOutput5009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5010 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput5010 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound5010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5010.moment H = canonicalOutput5010.moment H :=
  canonical_of_padded canonicalInput5010 canonicalOutput5010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5011 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput5011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound5011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5011.moment H = canonicalOutput5011.moment H :=
  canonical_of_padded canonicalInput5011 canonicalOutput5011 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput5012 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput5012 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound5012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5012.moment H = canonicalOutput5012.moment H :=
  canonical_of_padded canonicalInput5012 canonicalOutput5012 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5013 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput5013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound5013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5013.moment H = canonicalOutput5013.moment H :=
  canonical_of_padded canonicalInput5013 canonicalOutput5013 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput5014 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5014 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1247⟩

theorem canonicalSound5014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5014.moment H = canonicalOutput5014.moment H :=
  canonical_of_padded canonicalInput5014 canonicalOutput5014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5015 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound5015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5015.moment H = canonicalOutput5015.moment H :=
  canonical_of_padded canonicalInput5015 canonicalOutput5015 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput5016 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound5016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5016.moment H = canonicalOutput5016.moment H :=
  canonical_of_padded canonicalInput5016 canonicalOutput5016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5017 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5017 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound5017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5017.moment H = canonicalOutput5017.moment H :=
  canonical_of_padded canonicalInput5017 canonicalOutput5017 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput5018 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput5018 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5018.moment H = canonicalOutput5018.moment H :=
  canonical_of_padded canonicalInput5018 canonicalOutput5018 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5019 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5019 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound5019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5019.moment H = canonicalOutput5019.moment H :=
  canonical_of_padded canonicalInput5019 canonicalOutput5019 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput5020 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput5020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound5020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5020.moment H = canonicalOutput5020.moment H :=
  canonical_of_padded canonicalInput5020 canonicalOutput5020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5021 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5021 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound5021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5021.moment H = canonicalOutput5021.moment H :=
  canonical_of_padded canonicalInput5021 canonicalOutput5021 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5022 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5022 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound5022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5022.moment H = canonicalOutput5022.moment H :=
  canonical_of_padded canonicalInput5022 canonicalOutput5022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5023 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput5023 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound5023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5023.moment H = canonicalOutput5023.moment H :=
  canonical_of_padded canonicalInput5023 canonicalOutput5023 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5024 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput5024 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound5024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5024.moment H = canonicalOutput5024.moment H :=
  canonical_of_padded canonicalInput5024 canonicalOutput5024 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5025 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput5025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound5025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5025.moment H = canonicalOutput5025.moment H :=
  canonical_of_padded canonicalInput5025 canonicalOutput5025 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput5026 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput5026 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound5026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5026.moment H = canonicalOutput5026.moment H :=
  canonical_of_padded canonicalInput5026 canonicalOutput5026 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5027 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput5027 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound5027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5027.moment H = canonicalOutput5027.moment H :=
  canonical_of_padded canonicalInput5027 canonicalOutput5027 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput5028 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput5028 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5028.moment H = canonicalOutput5028.moment H :=
  canonical_of_padded canonicalInput5028 canonicalOutput5028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5029 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput5029 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound5029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5029.moment H = canonicalOutput5029.moment H :=
  canonical_of_padded canonicalInput5029 canonicalOutput5029 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5030 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput5030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound5030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5030.moment H = canonicalOutput5030.moment H :=
  canonical_of_padded canonicalInput5030 canonicalOutput5030 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5031 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5031 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound5031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5031.moment H = canonicalOutput5031.moment H :=
  canonical_of_padded canonicalInput5031 canonicalOutput5031 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5032 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput5032 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound5032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5032.moment H = canonicalOutput5032.moment H :=
  canonical_of_padded canonicalInput5032 canonicalOutput5032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5033 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput5033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound5033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5033.moment H = canonicalOutput5033.moment H :=
  canonical_of_padded canonicalInput5033 canonicalOutput5033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput5034 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput5034 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound5034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5034.moment H = canonicalOutput5034.moment H :=
  canonical_of_padded canonicalInput5034 canonicalOutput5034 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5035 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput5035 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound5035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5035.moment H = canonicalOutput5035.moment H :=
  canonical_of_padded canonicalInput5035 canonicalOutput5035 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5036 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput5036 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound5036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5036.moment H = canonicalOutput5036.moment H :=
  canonical_of_padded canonicalInput5036 canonicalOutput5036 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5037 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5037 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound5037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5037.moment H = canonicalOutput5037.moment H :=
  canonical_of_padded canonicalInput5037 canonicalOutput5037 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5038 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput5038 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound5038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5038.moment H = canonicalOutput5038.moment H :=
  canonical_of_padded canonicalInput5038 canonicalOutput5038 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5039 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput5039 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound5039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5039.moment H = canonicalOutput5039.moment H :=
  canonical_of_padded canonicalInput5039 canonicalOutput5039 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5040 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput5040 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound5040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5040.moment H = canonicalOutput5040.moment H :=
  canonical_of_padded canonicalInput5040 canonicalOutput5040 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5041 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput5041 : ExponentCode := normalNode5866

theorem canonicalSound5041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5041.moment H = canonicalOutput5041.moment H :=
  canonical_of_padded canonicalInput5041 canonicalOutput5041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5042 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5042 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1738⟩

theorem canonicalSound5042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5042.moment H = canonicalOutput5042.moment H :=
  canonical_of_padded canonicalInput5042 canonicalOutput5042 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5043 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5043 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2431⟩

theorem canonicalSound5043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5043.moment H = canonicalOutput5043.moment H :=
  canonical_of_padded canonicalInput5043 canonicalOutput5043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5044 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput5044 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2439⟩

theorem canonicalSound5044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5044.moment H = canonicalOutput5044.moment H :=
  canonical_of_padded canonicalInput5044 canonicalOutput5044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5045 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5045 : ExponentCode := normalNode2651

theorem canonicalSound5045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5045.moment H = canonicalOutput5045.moment H :=
  canonical_of_padded canonicalInput5045 canonicalOutput5045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5046 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput5046 : ExponentCode := normalNode11069

theorem canonicalSound5046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5046.moment H = canonicalOutput5046.moment H :=
  canonical_of_padded canonicalInput5046 canonicalOutput5046 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5047 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput5047 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound5047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5047.moment H = canonicalOutput5047.moment H :=
  canonical_of_padded canonicalInput5047 canonicalOutput5047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput5048 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput5048 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound5048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5048.moment H = canonicalOutput5048.moment H :=
  canonical_of_padded canonicalInput5048 canonicalOutput5048 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5049 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput5049 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound5049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5049.moment H = canonicalOutput5049.moment H :=
  canonical_of_padded canonicalInput5049 canonicalOutput5049 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput5050 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput5050 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound5050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5050.moment H = canonicalOutput5050.moment H :=
  canonical_of_padded canonicalInput5050 canonicalOutput5050 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5051 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5051 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1247⟩

theorem canonicalSound5051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5051.moment H = canonicalOutput5051.moment H :=
  canonical_of_padded canonicalInput5051 canonicalOutput5051 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5052 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput5052 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound5052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5052.moment H = canonicalOutput5052.moment H :=
  canonical_of_padded canonicalInput5052 canonicalOutput5052 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput5053 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound5053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5053.moment H = canonicalOutput5053.moment H :=
  canonical_of_padded canonicalInput5053 canonicalOutput5053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5054 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![2, 1, -2, -1]]⟩

def canonicalOutput5054 : ExponentCode := normalNode6991

theorem canonicalSound5054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5054.moment H = canonicalOutput5054.moment H :=
  canonical_of_padded canonicalInput5054 canonicalOutput5054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5055 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput5055 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2455⟩

theorem canonicalSound5055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5055.moment H = canonicalOutput5055.moment H :=
  canonical_of_padded canonicalInput5055 canonicalOutput5055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
