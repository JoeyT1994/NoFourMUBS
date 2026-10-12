import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18432 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput18432 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound18432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18432.moment H = canonicalOutput18432.moment H :=
  canonical_of_padded canonicalInput18432 canonicalOutput18432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18433 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18433 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound18433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18433.moment H = canonicalOutput18433.moment H :=
  canonical_of_padded canonicalInput18433 canonicalOutput18433 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18434 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput18434 : ExponentCode := normalNode4286

theorem canonicalSound18434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18434.moment H = canonicalOutput18434.moment H :=
  canonical_of_padded canonicalInput18434 canonicalOutput18434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18435 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![1, 0, 1, 1, -3], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput18435 : ExponentCode := normalNode1778

theorem canonicalSound18435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18435.moment H = canonicalOutput18435.moment H :=
  canonical_of_padded canonicalInput18435 canonicalOutput18435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18436 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![-2, 2, 0, -1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput18436 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1151

theorem canonicalSound18436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18436.moment H = canonicalOutput18436.moment H :=
  canonical_of_padded canonicalInput18436 canonicalOutput18436 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18437 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![-2, 2, 1, -1, 0], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput18437 : ExponentCode := normalNode5288

theorem canonicalSound18437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18437.moment H = canonicalOutput18437.moment H :=
  canonical_of_padded canonicalInput18437 canonicalOutput18437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18438 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![-1, 2, 0, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18438 : ExponentCode := normalNode4311

theorem canonicalSound18438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18438.moment H = canonicalOutput18438.moment H :=
  canonical_of_padded canonicalInput18438 canonicalOutput18438 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18439 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![-1, 2, 0, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput18439 : ExponentCode := normalNode4310

theorem canonicalSound18439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18439.moment H = canonicalOutput18439.moment H :=
  canonical_of_padded canonicalInput18439 canonicalOutput18439 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18440 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![-1, 2, 1, -1, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput18440 : ExponentCode := normalNode4311

theorem canonicalSound18440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18440.moment H = canonicalOutput18440.moment H :=
  canonical_of_padded canonicalInput18440 canonicalOutput18440 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18441 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound18441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18441.moment H = canonicalOutput18441.moment H :=
  canonical_of_padded canonicalInput18441 canonicalOutput18441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18442 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput18442 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound18442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18442.moment H = canonicalOutput18442.moment H :=
  canonical_of_padded canonicalInput18442 canonicalOutput18442 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18443 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 1, 1], ![0, 2, 0, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18443 : ExponentCode := normalNode4269

theorem canonicalSound18443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18443.moment H = canonicalOutput18443.moment H :=
  canonical_of_padded canonicalInput18443 canonicalOutput18443 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18444 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, -2, 3], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩

theorem canonicalSound18444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18444.moment H = canonicalOutput18444.moment H :=
  canonical_of_padded canonicalInput18444 canonicalOutput18444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18445 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput18445 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2014⟩

theorem canonicalSound18445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18445.moment H = canonicalOutput18445.moment H :=
  canonical_of_padded canonicalInput18445 canonicalOutput18445 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18446 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput18446 : ExponentCode := normalNode1784

theorem canonicalSound18446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18446.moment H = canonicalOutput18446.moment H :=
  canonical_of_padded canonicalInput18446 canonicalOutput18446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18447 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18447 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2607⟩

theorem canonicalSound18447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18447.moment H = canonicalOutput18447.moment H :=
  canonical_of_padded canonicalInput18447 canonicalOutput18447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18448 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, 0, 1], ![0, -1, -1, 1, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18448 : ExponentCode := normalNode7493

theorem canonicalSound18448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18448.moment H = canonicalOutput18448.moment H :=
  canonical_of_padded canonicalInput18448 canonicalOutput18448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput18449 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18449 : ExponentCode := normalNode7523

theorem canonicalSound18449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18449.moment H = canonicalOutput18449.moment H :=
  canonical_of_padded canonicalInput18449 canonicalOutput18449 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput18450 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, 0, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput18450 : ExponentCode := normalNode7526

theorem canonicalSound18450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18450.moment H = canonicalOutput18450.moment H :=
  canonical_of_padded canonicalInput18450 canonicalOutput18450 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput18451 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound18451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18451.moment H = canonicalOutput18451.moment H :=
  canonical_of_padded canonicalInput18451 canonicalOutput18451 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18452 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18452 : ExponentCode := normalNode9487

theorem canonicalSound18452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18452.moment H = canonicalOutput18452.moment H :=
  canonical_of_padded canonicalInput18452 canonicalOutput18452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput18453 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput18453 : ExponentCode := normalNode8979

theorem canonicalSound18453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18453.moment H = canonicalOutput18453.moment H :=
  canonical_of_padded canonicalInput18453 canonicalOutput18453 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18454 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput18454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound18454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18454.moment H = canonicalOutput18454.moment H :=
  canonical_of_padded canonicalInput18454 canonicalOutput18454 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18455 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound18455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18455.moment H = canonicalOutput18455.moment H :=
  canonical_of_padded canonicalInput18455 canonicalOutput18455 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18456 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18456 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound18456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18456.moment H = canonicalOutput18456.moment H :=
  canonical_of_padded canonicalInput18456 canonicalOutput18456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18457 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18457 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound18457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18457.moment H = canonicalOutput18457.moment H :=
  canonical_of_padded canonicalInput18457 canonicalOutput18457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18458 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18458 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound18458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18458.moment H = canonicalOutput18458.moment H :=
  canonical_of_padded canonicalInput18458 canonicalOutput18458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18459 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18459 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound18459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18459.moment H = canonicalOutput18459.moment H :=
  canonical_of_padded canonicalInput18459 canonicalOutput18459 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18460 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18460 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound18460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18460.moment H = canonicalOutput18460.moment H :=
  canonical_of_padded canonicalInput18460 canonicalOutput18460 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18461 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, -1, 2, -2, 1], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput18461 : ExponentCode := normalNode9026

theorem canonicalSound18461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18461.moment H = canonicalOutput18461.moment H :=
  canonical_of_padded canonicalInput18461 canonicalOutput18461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18462 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput18462 : ExponentCode := normalNode7536

theorem canonicalSound18462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18462.moment H = canonicalOutput18462.moment H :=
  canonical_of_padded canonicalInput18462 canonicalOutput18462 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput18463 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18463 : ExponentCode := normalNode6555

theorem canonicalSound18463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18463.moment H = canonicalOutput18463.moment H :=
  canonical_of_padded canonicalInput18463 canonicalOutput18463 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput18464 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18464 : ExponentCode := normalNode8347

theorem canonicalSound18464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18464.moment H = canonicalOutput18464.moment H :=
  canonical_of_padded canonicalInput18464 canonicalOutput18464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput18465 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput18465 : ExponentCode := normalNode9761

theorem canonicalSound18465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18465.moment H = canonicalOutput18465.moment H :=
  canonical_of_padded canonicalInput18465 canonicalOutput18465 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput18466 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput18466 : ExponentCode := normalNode7535

theorem canonicalSound18466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18466.moment H = canonicalOutput18466.moment H :=
  canonical_of_padded canonicalInput18466 canonicalOutput18466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput18467 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound18467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18467.moment H = canonicalOutput18467.moment H :=
  canonical_of_padded canonicalInput18467 canonicalOutput18467 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18468 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18468 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound18468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18468.moment H = canonicalOutput18468.moment H :=
  canonical_of_padded canonicalInput18468 canonicalOutput18468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18469 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, -2, 1], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18469 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound18469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18469.moment H = canonicalOutput18469.moment H :=
  canonical_of_padded canonicalInput18469 canonicalOutput18469 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18470 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18470 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound18470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18470.moment H = canonicalOutput18470.moment H :=
  canonical_of_padded canonicalInput18470 canonicalOutput18470 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18471 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, -2, 3]]⟩

def canonicalOutput18471 : ExponentCode := normalNode7535

theorem canonicalSound18471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18471.moment H = canonicalOutput18471.moment H :=
  canonical_of_padded canonicalInput18471 canonicalOutput18471 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput18472 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, 1, -2], ![-1, 2, -2, 0, 1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound18472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18472.moment H = canonicalOutput18472.moment H :=
  canonical_of_padded canonicalInput18472 canonicalOutput18472 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18473 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18473 : ExponentCode := normalNode3877

theorem canonicalSound18473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18473.moment H = canonicalOutput18473.moment H :=
  canonical_of_padded canonicalInput18473 canonicalOutput18473 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18474 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![-1, 1, 0, 1, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput18474 : ExponentCode := normalNode4307

theorem canonicalSound18474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18474.moment H = canonicalOutput18474.moment H :=
  canonical_of_padded canonicalInput18474 canonicalOutput18474 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18475 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![-1, 1, 1, -2, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput18475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound18475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18475.moment H = canonicalOutput18475.moment H :=
  canonical_of_padded canonicalInput18475 canonicalOutput18475 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18476 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![-1, 1, 1, 1, -2], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18476 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound18476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18476.moment H = canonicalOutput18476.moment H :=
  canonical_of_padded canonicalInput18476 canonicalOutput18476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18477 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18477 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound18477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18477.moment H = canonicalOutput18477.moment H :=
  canonical_of_padded canonicalInput18477 canonicalOutput18477 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18478 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18478 : ExponentCode := normalNode4385

theorem canonicalSound18478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18478.moment H = canonicalOutput18478.moment H :=
  canonical_of_padded canonicalInput18478 canonicalOutput18478 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18479 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![-1, 1, 1, -3, 2], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput18479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1167

theorem canonicalSound18479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18479.moment H = canonicalOutput18479.moment H :=
  canonical_of_padded canonicalInput18479 canonicalOutput18479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18480 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![-1, 1, 1, 0, -1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18480 : ExponentCode := normalNode5621

theorem canonicalSound18480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18480.moment H = canonicalOutput18480.moment H :=
  canonical_of_padded canonicalInput18480 canonicalOutput18480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18481 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, -2, 1, -1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput18481 : ExponentCode := normalNode5381

theorem canonicalSound18481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18481.moment H = canonicalOutput18481.moment H :=
  canonical_of_padded canonicalInput18481 canonicalOutput18481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18482 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18482 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound18482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18482.moment H = canonicalOutput18482.moment H :=
  canonical_of_padded canonicalInput18482 canonicalOutput18482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18483 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput18483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound18483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18483.moment H = canonicalOutput18483.moment H :=
  canonical_of_padded canonicalInput18483 canonicalOutput18483 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18484 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18484 : ExponentCode := normalNode3901

theorem canonicalSound18484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18484.moment H = canonicalOutput18484.moment H :=
  canonical_of_padded canonicalInput18484 canonicalOutput18484 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18485 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, -2, 1, -1, 1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput18485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound18485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18485.moment H = canonicalOutput18485.moment H :=
  canonical_of_padded canonicalInput18485 canonicalOutput18485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18486 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 1, 0, 0, -2], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput18486 : ExponentCode := normalNode3784

theorem canonicalSound18486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18486.moment H = canonicalOutput18486.moment H :=
  canonical_of_padded canonicalInput18486 canonicalOutput18486 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18487 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -1, -1, 1], ![-1, 1, -1, 1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18487 : ExponentCode := normalNode8863

theorem canonicalSound18487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18487.moment H = canonicalOutput18487.moment H :=
  canonical_of_padded canonicalInput18487 canonicalOutput18487 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18488 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput18488 : ExponentCode := normalNode9326

theorem canonicalSound18488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18488.moment H = canonicalOutput18488.moment H :=
  canonical_of_padded canonicalInput18488 canonicalOutput18488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18489 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -1, 1, -1], ![0, -1, 1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput18489 : ExponentCode := normalNode9381

theorem canonicalSound18489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18489.moment H = canonicalOutput18489.moment H :=
  canonical_of_padded canonicalInput18489 canonicalOutput18489 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18490 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput18490 : ExponentCode := normalNode8866

theorem canonicalSound18490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18490.moment H = canonicalOutput18490.moment H :=
  canonical_of_padded canonicalInput18490 canonicalOutput18490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18491 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![-1, -1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput18491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound18491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18491.moment H = canonicalOutput18491.moment H :=
  canonical_of_padded canonicalInput18491 canonicalOutput18491 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18492 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![0, -2, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput18492 : ExponentCode := normalNode3947

theorem canonicalSound18492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18492.moment H = canonicalOutput18492.moment H :=
  canonical_of_padded canonicalInput18492 canonicalOutput18492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18493 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![0, -1, 1, -1, 1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput18493 : ExponentCode := normalNode4396

theorem canonicalSound18493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18493.moment H = canonicalOutput18493.moment H :=
  canonical_of_padded canonicalInput18493 canonicalOutput18493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18494 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18494 : ExponentCode := normalNode4385

theorem canonicalSound18494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18494.moment H = canonicalOutput18494.moment H :=
  canonical_of_padded canonicalInput18494 canonicalOutput18494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18495 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, -2, 1, -1, 1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput18495 : ExponentCode := normalNode4386

theorem canonicalSound18495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18495.moment H = canonicalOutput18495.moment H :=
  canonical_of_padded canonicalInput18495 canonicalOutput18495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
