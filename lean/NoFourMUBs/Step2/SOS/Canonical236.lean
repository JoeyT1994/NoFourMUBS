import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15104 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15104 : ExponentCode := normalNode4347

theorem canonicalSound15104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15104.moment H = canonicalOutput15104.moment H :=
  canonical_of_padded canonicalInput15104 canonicalOutput15104 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15105 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput15105 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code955

theorem canonicalSound15105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15105.moment H = canonicalOutput15105.moment H :=
  canonical_of_padded canonicalInput15105 canonicalOutput15105 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15106 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15106 : ExponentCode := normalNode7688

theorem canonicalSound15106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15106.moment H = canonicalOutput15106.moment H :=
  canonical_of_padded canonicalInput15106 canonicalOutput15106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15107 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15107 : ExponentCode := normalNode3912

theorem canonicalSound15107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15107.moment H = canonicalOutput15107.moment H :=
  canonical_of_padded canonicalInput15107 canonicalOutput15107 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15108 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput15108 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound15108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15108.moment H = canonicalOutput15108.moment H :=
  canonical_of_padded canonicalInput15108 canonicalOutput15108 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15109 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15109 : ExponentCode := normalNode7690

theorem canonicalSound15109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15109.moment H = canonicalOutput15109.moment H :=
  canonical_of_padded canonicalInput15109 canonicalOutput15109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15110 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput15110 : ExponentCode := normalNode7690

theorem canonicalSound15110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15110.moment H = canonicalOutput15110.moment H :=
  canonical_of_padded canonicalInput15110 canonicalOutput15110 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15111 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput15111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound15111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15111.moment H = canonicalOutput15111.moment H :=
  canonical_of_padded canonicalInput15111 canonicalOutput15111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15112 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput15112 : ExponentCode := normalNode7838

theorem canonicalSound15112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15112.moment H = canonicalOutput15112.moment H :=
  canonical_of_padded canonicalInput15112 canonicalOutput15112 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15113 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput15113 : ExponentCode := normalNode7838

theorem canonicalSound15113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15113.moment H = canonicalOutput15113.moment H :=
  canonical_of_padded canonicalInput15113 canonicalOutput15113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15114 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15114 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code768

theorem canonicalSound15114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15114.moment H = canonicalOutput15114.moment H :=
  canonical_of_padded canonicalInput15114 canonicalOutput15114 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15115 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 2, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15115 : ExponentCode := normalNode7838

theorem canonicalSound15115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15115.moment H = canonicalOutput15115.moment H :=
  canonical_of_padded canonicalInput15115 canonicalOutput15115 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15116 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 3, -1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput15116 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1284

theorem canonicalSound15116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15116.moment H = canonicalOutput15116.moment H :=
  canonical_of_padded canonicalInput15116 canonicalOutput15116 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15117 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput15117 : ExponentCode := normalNode2409

theorem canonicalSound15117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15117.moment H = canonicalOutput15117.moment H :=
  canonical_of_padded canonicalInput15117 canonicalOutput15117 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15118 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15118 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1342

theorem canonicalSound15118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15118.moment H = canonicalOutput15118.moment H :=
  canonical_of_padded canonicalInput15118 canonicalOutput15118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15119 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15119 : ExponentCode := normalNode7848

theorem canonicalSound15119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15119.moment H = canonicalOutput15119.moment H :=
  canonical_of_padded canonicalInput15119 canonicalOutput15119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15120 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput15120 : ExponentCode := normalNode1210

theorem canonicalSound15120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15120.moment H = canonicalOutput15120.moment H :=
  canonical_of_padded canonicalInput15120 canonicalOutput15120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15121 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15121 : ExponentCode := normalNode7850

theorem canonicalSound15121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15121.moment H = canonicalOutput15121.moment H :=
  canonical_of_padded canonicalInput15121 canonicalOutput15121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15122 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15122 : ExponentCode := normalNode7846

theorem canonicalSound15122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15122.moment H = canonicalOutput15122.moment H :=
  canonical_of_padded canonicalInput15122 canonicalOutput15122 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15123 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15123 : ExponentCode := normalNode7850

theorem canonicalSound15123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15123.moment H = canonicalOutput15123.moment H :=
  canonical_of_padded canonicalInput15123 canonicalOutput15123 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15124 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15124 : ExponentCode := normalNode7849

theorem canonicalSound15124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15124.moment H = canonicalOutput15124.moment H :=
  canonical_of_padded canonicalInput15124 canonicalOutput15124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15125 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15125 : ExponentCode := normalNode7849

theorem canonicalSound15125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15125.moment H = canonicalOutput15125.moment H :=
  canonical_of_padded canonicalInput15125 canonicalOutput15125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15126 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![2, 0, -1, -1]]⟩

def canonicalOutput15126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node932⟩

theorem canonicalSound15126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15126.moment H = canonicalOutput15126.moment H :=
  canonical_of_padded canonicalInput15126 canonicalOutput15126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15127 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15127 : ExponentCode := normalNode4218

theorem canonicalSound15127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15127.moment H = canonicalOutput15127.moment H :=
  canonical_of_padded canonicalInput15127 canonicalOutput15127 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15128 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15128 : ExponentCode := normalNode4395

theorem canonicalSound15128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15128.moment H = canonicalOutput15128.moment H :=
  canonical_of_padded canonicalInput15128 canonicalOutput15128 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15129 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput15129 : ExponentCode := normalNode3955

theorem canonicalSound15129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15129.moment H = canonicalOutput15129.moment H :=
  canonical_of_padded canonicalInput15129 canonicalOutput15129 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15130 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15130 : ExponentCode := normalNode424

theorem canonicalSound15130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15130.moment H = canonicalOutput15130.moment H :=
  canonical_of_padded canonicalInput15130 canonicalOutput15130 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15131 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15131 : ExponentCode := normalNode3064

theorem canonicalSound15131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15131.moment H = canonicalOutput15131.moment H :=
  canonical_of_padded canonicalInput15131 canonicalOutput15131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15132 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![1, -1, 3, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput15132 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code615

theorem canonicalSound15132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15132.moment H = canonicalOutput15132.moment H :=
  canonical_of_padded canonicalInput15132 canonicalOutput15132 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15133 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, -1, 2], ![1, 0, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput15133 : ExponentCode := normalNode7852

theorem canonicalSound15133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15133.moment H = canonicalOutput15133.moment H :=
  canonical_of_padded canonicalInput15133 canonicalOutput15133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15134 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15134 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2529⟩

theorem canonicalSound15134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15134.moment H = canonicalOutput15134.moment H :=
  canonical_of_padded canonicalInput15134 canonicalOutput15134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15135 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput15135 : ExponentCode := normalNode7872

theorem canonicalSound15135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15135.moment H = canonicalOutput15135.moment H :=
  canonical_of_padded canonicalInput15135 canonicalOutput15135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15136 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput15136 : ExponentCode := normalNode7952

theorem canonicalSound15136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15136.moment H = canonicalOutput15136.moment H :=
  canonical_of_padded canonicalInput15136 canonicalOutput15136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15137 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput15137 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node964⟩

theorem canonicalSound15137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15137.moment H = canonicalOutput15137.moment H :=
  canonical_of_padded canonicalInput15137 canonicalOutput15137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15138 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput15138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound15138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15138.moment H = canonicalOutput15138.moment H :=
  canonical_of_padded canonicalInput15138 canonicalOutput15138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15139 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 0, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput15139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound15139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15139.moment H = canonicalOutput15139.moment H :=
  canonical_of_padded canonicalInput15139 canonicalOutput15139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15140 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15140 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2536⟩

theorem canonicalSound15140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15140.moment H = canonicalOutput15140.moment H :=
  canonical_of_padded canonicalInput15140 canonicalOutput15140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15141 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput15141 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2534⟩

theorem canonicalSound15141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15141.moment H = canonicalOutput15141.moment H :=
  canonical_of_padded canonicalInput15141 canonicalOutput15141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15142 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15142 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩

theorem canonicalSound15142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15142.moment H = canonicalOutput15142.moment H :=
  canonical_of_padded canonicalInput15142 canonicalOutput15142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15143 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 1, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput15143 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound15143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15143.moment H = canonicalOutput15143.moment H :=
  canonical_of_padded canonicalInput15143 canonicalOutput15143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15144 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput15144 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound15144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15144.moment H = canonicalOutput15144.moment H :=
  canonical_of_padded canonicalInput15144 canonicalOutput15144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15145 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput15145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2059⟩

theorem canonicalSound15145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15145.moment H = canonicalOutput15145.moment H :=
  canonical_of_padded canonicalInput15145 canonicalOutput15145 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15146 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15146 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound15146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15146.moment H = canonicalOutput15146.moment H :=
  canonical_of_padded canonicalInput15146 canonicalOutput15146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15147 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput15147 : ExponentCode := normalNode7905

theorem canonicalSound15147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15147.moment H = canonicalOutput15147.moment H :=
  canonical_of_padded canonicalInput15147 canonicalOutput15147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15148 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15148 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound15148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15148.moment H = canonicalOutput15148.moment H :=
  canonical_of_padded canonicalInput15148 canonicalOutput15148 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15149 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput15149 : ExponentCode := normalNode7747

theorem canonicalSound15149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15149.moment H = canonicalOutput15149.moment H :=
  canonical_of_padded canonicalInput15149 canonicalOutput15149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15150 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput15150 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code640

theorem canonicalSound15150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15150.moment H = canonicalOutput15150.moment H :=
  canonical_of_padded canonicalInput15150 canonicalOutput15150 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput15151 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15151 : ExponentCode := normalNode5327

theorem canonicalSound15151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15151.moment H = canonicalOutput15151.moment H :=
  canonical_of_padded canonicalInput15151 canonicalOutput15151 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15152 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput15152 : ExponentCode := normalNode5368

theorem canonicalSound15152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15152.moment H = canonicalOutput15152.moment H :=
  canonical_of_padded canonicalInput15152 canonicalOutput15152 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15153 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput15153 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound15153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15153.moment H = canonicalOutput15153.moment H :=
  canonical_of_padded canonicalInput15153 canonicalOutput15153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15154 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput15154 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound15154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15154.moment H = canonicalOutput15154.moment H :=
  canonical_of_padded canonicalInput15154 canonicalOutput15154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15155 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound15155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15155.moment H = canonicalOutput15155.moment H :=
  canonical_of_padded canonicalInput15155 canonicalOutput15155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15156 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput15156 : ExponentCode := normalNode7904

theorem canonicalSound15156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15156.moment H = canonicalOutput15156.moment H :=
  canonical_of_padded canonicalInput15156 canonicalOutput15156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15157 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 2, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput15157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound15157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15157.moment H = canonicalOutput15157.moment H :=
  canonical_of_padded canonicalInput15157 canonicalOutput15157 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15158 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 3, -2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput15158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound15158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15158.moment H = canonicalOutput15158.moment H :=
  canonical_of_padded canonicalInput15158 canonicalOutput15158 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15159 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput15159 : ExponentCode := normalNode7916

theorem canonicalSound15159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15159.moment H = canonicalOutput15159.moment H :=
  canonical_of_padded canonicalInput15159 canonicalOutput15159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15160 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15160 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2562⟩

theorem canonicalSound15160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15160.moment H = canonicalOutput15160.moment H :=
  canonical_of_padded canonicalInput15160 canonicalOutput15160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15161 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput15161 : ExponentCode := normalNode7732

theorem canonicalSound15161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15161.moment H = canonicalOutput15161.moment H :=
  canonical_of_padded canonicalInput15161 canonicalOutput15161 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15162 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput15162 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2543⟩

theorem canonicalSound15162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15162.moment H = canonicalOutput15162.moment H :=
  canonical_of_padded canonicalInput15162 canonicalOutput15162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15163 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15163 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2009⟩

theorem canonicalSound15163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15163.moment H = canonicalOutput15163.moment H :=
  canonical_of_padded canonicalInput15163 canonicalOutput15163 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15164 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput15164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code975

theorem canonicalSound15164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15164.moment H = canonicalOutput15164.moment H :=
  canonical_of_padded canonicalInput15164 canonicalOutput15164 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15165 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15165 : ExponentCode := normalNode3944

theorem canonicalSound15165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15165.moment H = canonicalOutput15165.moment H :=
  canonical_of_padded canonicalInput15165 canonicalOutput15165 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15166 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput15166 : ExponentCode := normalNode3987

theorem canonicalSound15166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15166.moment H = canonicalOutput15166.moment H :=
  canonical_of_padded canonicalInput15166 canonicalOutput15166 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15167 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput15167 : ExponentCode := normalNode6686

theorem canonicalSound15167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15167.moment H = canonicalOutput15167.moment H :=
  canonical_of_padded canonicalInput15167 canonicalOutput15167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
