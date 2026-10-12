import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5120 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5120 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node411⟩

theorem canonicalSound5120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5120.moment H = canonicalOutput5120.moment H :=
  canonical_of_padded canonicalInput5120 canonicalOutput5120 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5121 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5121 : ExponentCode := normalNode4103

theorem canonicalSound5121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5121.moment H = canonicalOutput5121.moment H :=
  canonical_of_padded canonicalInput5121 canonicalOutput5121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5122 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 3, -3, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput5122 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code759

theorem canonicalSound5122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5122.moment H = canonicalOutput5122.moment H :=
  canonical_of_padded canonicalInput5122 canonicalOutput5122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5123 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput5123 : ExponentCode := normalNode2785

theorem canonicalSound5123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5123.moment H = canonicalOutput5123.moment H :=
  canonical_of_padded canonicalInput5123 canonicalOutput5123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5124 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 3, -1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5124 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code202

theorem canonicalSound5124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5124.moment H = canonicalOutput5124.moment H :=
  canonical_of_padded canonicalInput5124 canonicalOutput5124 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5125 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput5125 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound5125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5125.moment H = canonicalOutput5125.moment H :=
  canonical_of_padded canonicalInput5125 canonicalOutput5125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5126 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput5126 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound5126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5126.moment H = canonicalOutput5126.moment H :=
  canonical_of_padded canonicalInput5126 canonicalOutput5126 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5127 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput5127 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound5127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5127.moment H = canonicalOutput5127.moment H :=
  canonical_of_padded canonicalInput5127 canonicalOutput5127 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5128 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound5128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5128.moment H = canonicalOutput5128.moment H :=
  canonical_of_padded canonicalInput5128 canonicalOutput5128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5129 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput5129 : ExponentCode := normalNode7049

theorem canonicalSound5129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5129.moment H = canonicalOutput5129.moment H :=
  canonical_of_padded canonicalInput5129 canonicalOutput5129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5130 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5130 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound5130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5130.moment H = canonicalOutput5130.moment H :=
  canonical_of_padded canonicalInput5130 canonicalOutput5130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5131 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput5131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5131.moment H = canonicalOutput5131.moment H :=
  canonical_of_padded canonicalInput5131 canonicalOutput5131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5132 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 1, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput5132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound5132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5132.moment H = canonicalOutput5132.moment H :=
  canonical_of_padded canonicalInput5132 canonicalOutput5132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5133 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 2, -4, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound5133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5133.moment H = canonicalOutput5133.moment H :=
  canonical_of_padded canonicalInput5133 canonicalOutput5133 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5134 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, 3, -3, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput5134 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound5134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5134.moment H = canonicalOutput5134.moment H :=
  canonical_of_padded canonicalInput5134 canonicalOutput5134 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5135 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput5135 : ExponentCode := normalNode7057

theorem canonicalSound5135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5135.moment H = canonicalOutput5135.moment H :=
  canonical_of_padded canonicalInput5135 canonicalOutput5135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5136 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 2, -4, 1]]⟩

def canonicalOutput5136 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1086⟩

theorem canonicalSound5136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5136.moment H = canonicalOutput5136.moment H :=
  canonical_of_padded canonicalInput5136 canonicalOutput5136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5137 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput5137 : ExponentCode := normalNode7056

theorem canonicalSound5137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5137.moment H = canonicalOutput5137.moment H :=
  canonical_of_padded canonicalInput5137 canonicalOutput5137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5138 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput5138 : ExponentCode := normalNode9472

theorem canonicalSound5138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5138.moment H = canonicalOutput5138.moment H :=
  canonical_of_padded canonicalInput5138 canonicalOutput5138 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5139 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput5139 : ExponentCode := normalNode7075

theorem canonicalSound5139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5139.moment H = canonicalOutput5139.moment H :=
  canonical_of_padded canonicalInput5139 canonicalOutput5139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5140 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput5140 : ExponentCode := normalNode7076

theorem canonicalSound5140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5140.moment H = canonicalOutput5140.moment H :=
  canonical_of_padded canonicalInput5140 canonicalOutput5140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5141 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5141 : ExponentCode := normalNode7077

theorem canonicalSound5141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5141.moment H = canonicalOutput5141.moment H :=
  canonical_of_padded canonicalInput5141 canonicalOutput5141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5142 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5142 : ExponentCode := normalNode7076

theorem canonicalSound5142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5142.moment H = canonicalOutput5142.moment H :=
  canonical_of_padded canonicalInput5142 canonicalOutput5142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5143 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput5143 : ExponentCode := normalNode7075

theorem canonicalSound5143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5143.moment H = canonicalOutput5143.moment H :=
  canonical_of_padded canonicalInput5143 canonicalOutput5143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5144 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, 1, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput5144 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code597

theorem canonicalSound5144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5144.moment H = canonicalOutput5144.moment H :=
  canonical_of_padded canonicalInput5144 canonicalOutput5144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5145 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5145 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound5145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5145.moment H = canonicalOutput5145.moment H :=
  canonical_of_padded canonicalInput5145 canonicalOutput5145 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5146 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound5146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5146.moment H = canonicalOutput5146.moment H :=
  canonical_of_padded canonicalInput5146 canonicalOutput5146 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5147 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5147 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1782⟩

theorem canonicalSound5147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5147.moment H = canonicalOutput5147.moment H :=
  canonical_of_padded canonicalInput5147 canonicalOutput5147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5148 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5148 : ExponentCode := normalNode7043

theorem canonicalSound5148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5148.moment H = canonicalOutput5148.moment H :=
  canonical_of_padded canonicalInput5148 canonicalOutput5148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5149 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5149 : ExponentCode := normalNode7046

theorem canonicalSound5149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5149.moment H = canonicalOutput5149.moment H :=
  canonical_of_padded canonicalInput5149 canonicalOutput5149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5150 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput5150 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound5150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5150.moment H = canonicalOutput5150.moment H :=
  canonical_of_padded canonicalInput5150 canonicalOutput5150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5151 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, -2, 1], ![2, -1, 3, -4]]⟩

def canonicalOutput5151 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code157

theorem canonicalSound5151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5151.moment H = canonicalOutput5151.moment H :=
  canonical_of_padded canonicalInput5151 canonicalOutput5151 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5152 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput5152 : ExponentCode := normalNode2981

theorem canonicalSound5152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5152.moment H = canonicalOutput5152.moment H :=
  canonical_of_padded canonicalInput5152 canonicalOutput5152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5153 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound5153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5153.moment H = canonicalOutput5153.moment H :=
  canonical_of_padded canonicalInput5153 canonicalOutput5153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5154 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput5154 : ExponentCode := normalNode3982

theorem canonicalSound5154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5154.moment H = canonicalOutput5154.moment H :=
  canonical_of_padded canonicalInput5154 canonicalOutput5154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5155 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput5155 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code601

theorem canonicalSound5155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5155.moment H = canonicalOutput5155.moment H :=
  canonical_of_padded canonicalInput5155 canonicalOutput5155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5156 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput5156 : ExponentCode := normalNode2809

theorem canonicalSound5156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5156.moment H = canonicalOutput5156.moment H :=
  canonical_of_padded canonicalInput5156 canonicalOutput5156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5157 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5157 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1821⟩

theorem canonicalSound5157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5157.moment H = canonicalOutput5157.moment H :=
  canonical_of_padded canonicalInput5157 canonicalOutput5157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5158 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput5158 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound5158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5158.moment H = canonicalOutput5158.moment H :=
  canonical_of_padded canonicalInput5158 canonicalOutput5158 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5159 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5159 : ExponentCode := normalNode4437

theorem canonicalSound5159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5159.moment H = canonicalOutput5159.moment H :=
  canonical_of_padded canonicalInput5159 canonicalOutput5159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5160 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput5160 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound5160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5160.moment H = canonicalOutput5160.moment H :=
  canonical_of_padded canonicalInput5160 canonicalOutput5160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5161 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5161 : ExponentCode := normalNode4543

theorem canonicalSound5161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5161.moment H = canonicalOutput5161.moment H :=
  canonical_of_padded canonicalInput5161 canonicalOutput5161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5162 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound5162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5162.moment H = canonicalOutput5162.moment H :=
  canonical_of_padded canonicalInput5162 canonicalOutput5162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5163 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5163 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound5163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5163.moment H = canonicalOutput5163.moment H :=
  canonical_of_padded canonicalInput5163 canonicalOutput5163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5164 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput5164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound5164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5164.moment H = canonicalOutput5164.moment H :=
  canonical_of_padded canonicalInput5164 canonicalOutput5164 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5165 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput5165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node848⟩

theorem canonicalSound5165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5165.moment H = canonicalOutput5165.moment H :=
  canonical_of_padded canonicalInput5165 canonicalOutput5165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5166 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 0, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput5166 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node848⟩

theorem canonicalSound5166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5166.moment H = canonicalOutput5166.moment H :=
  canonical_of_padded canonicalInput5166 canonicalOutput5166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5167 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 1, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput5167 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound5167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5167.moment H = canonicalOutput5167.moment H :=
  canonical_of_padded canonicalInput5167 canonicalOutput5167 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5168 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput5168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound5168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5168.moment H = canonicalOutput5168.moment H :=
  canonical_of_padded canonicalInput5168 canonicalOutput5168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5169 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput5169 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound5169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5169.moment H = canonicalOutput5169.moment H :=
  canonical_of_padded canonicalInput5169 canonicalOutput5169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5170 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 1, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩

theorem canonicalSound5170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5170.moment H = canonicalOutput5170.moment H :=
  canonical_of_padded canonicalInput5170 canonicalOutput5170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5171 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput5171 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code608

theorem canonicalSound5171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5171.moment H = canonicalOutput5171.moment H :=
  canonical_of_padded canonicalInput5171 canonicalOutput5171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5172 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput5172 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1767⟩

theorem canonicalSound5172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5172.moment H = canonicalOutput5172.moment H :=
  canonical_of_padded canonicalInput5172 canonicalOutput5172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5173 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput5173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2444⟩

theorem canonicalSound5173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5173.moment H = canonicalOutput5173.moment H :=
  canonical_of_padded canonicalInput5173 canonicalOutput5173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5174 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput5174 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound5174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5174.moment H = canonicalOutput5174.moment H :=
  canonical_of_padded canonicalInput5174 canonicalOutput5174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5175 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput5175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5175.moment H = canonicalOutput5175.moment H :=
  canonical_of_padded canonicalInput5175 canonicalOutput5175 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput5176 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput5176 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1787⟩

theorem canonicalSound5176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5176.moment H = canonicalOutput5176.moment H :=
  canonical_of_padded canonicalInput5176 canonicalOutput5176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5177 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5177 : ExponentCode := normalNode7031

theorem canonicalSound5177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5177.moment H = canonicalOutput5177.moment H :=
  canonical_of_padded canonicalInput5177 canonicalOutput5177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5178 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5178 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1811⟩

theorem canonicalSound5178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5178.moment H = canonicalOutput5178.moment H :=
  canonical_of_padded canonicalInput5178 canonicalOutput5178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5179 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput5179 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2452⟩

theorem canonicalSound5179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5179.moment H = canonicalOutput5179.moment H :=
  canonical_of_padded canonicalInput5179 canonicalOutput5179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5180 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput5180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound5180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5180.moment H = canonicalOutput5180.moment H :=
  canonical_of_padded canonicalInput5180 canonicalOutput5180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5181 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput5181 : ExponentCode := normalNode2800

theorem canonicalSound5181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5181.moment H = canonicalOutput5181.moment H :=
  canonical_of_padded canonicalInput5181 canonicalOutput5181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5182 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput5182 : ExponentCode := normalNode2802

theorem canonicalSound5182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5182.moment H = canonicalOutput5182.moment H :=
  canonical_of_padded canonicalInput5182 canonicalOutput5182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5183 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput5183 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1817⟩

theorem canonicalSound5183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5183.moment H = canonicalOutput5183.moment H :=
  canonical_of_padded canonicalInput5183 canonicalOutput5183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
