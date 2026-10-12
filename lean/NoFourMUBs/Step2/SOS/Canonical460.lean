import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29440 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -2, 1, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput29440 : ExponentCode := normalNode611

theorem canonicalSound29440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29440.moment H = canonicalOutput29440.moment H :=
  canonical_of_padded canonicalInput29440 canonicalOutput29440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29441 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput29441 : ExponentCode := normalNode870

theorem canonicalSound29441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29441.moment H = canonicalOutput29441.moment H :=
  canonical_of_padded canonicalInput29441 canonicalOutput29441 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29442 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput29442 : ExponentCode := normalNode2678

theorem canonicalSound29442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29442.moment H = canonicalOutput29442.moment H :=
  canonical_of_padded canonicalInput29442 canonicalOutput29442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29443 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput29443 : ExponentCode := normalNode2679

theorem canonicalSound29443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29443.moment H = canonicalOutput29443.moment H :=
  canonical_of_padded canonicalInput29443 canonicalOutput29443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29444 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -2, 1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput29444 : ExponentCode := normalNode613

theorem canonicalSound29444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29444.moment H = canonicalOutput29444.moment H :=
  canonical_of_padded canonicalInput29444 canonicalOutput29444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29445 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput29445 : ExponentCode := normalNode2680

theorem canonicalSound29445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29445.moment H = canonicalOutput29445.moment H :=
  canonical_of_padded canonicalInput29445 canonicalOutput29445 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29446 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29446 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3045⟩

theorem canonicalSound29446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29446.moment H = canonicalOutput29446.moment H :=
  canonical_of_padded canonicalInput29446 canonicalOutput29446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation380, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput29447 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 1, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29447 : ExponentCode := normalNode614

theorem canonicalSound29447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29447.moment H = canonicalOutput29447.moment H :=
  canonical_of_padded canonicalInput29447 canonicalOutput29447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29448 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29448 : ExponentCode := normalNode2974

theorem canonicalSound29448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29448.moment H = canonicalOutput29448.moment H :=
  canonical_of_padded canonicalInput29448 canonicalOutput29448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29449 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput29449 : ExponentCode := normalNode7115

theorem canonicalSound29449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29449.moment H = canonicalOutput29449.moment H :=
  canonical_of_padded canonicalInput29449 canonicalOutput29449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29450 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29450 : ExponentCode := normalNode908

theorem canonicalSound29450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29450.moment H = canonicalOutput29450.moment H :=
  canonical_of_padded canonicalInput29450 canonicalOutput29450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29451 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, -2, 0, 4], ![1, 0, 3, -4]]⟩

def canonicalOutput29451 : ExponentCode := normalNode415

theorem canonicalSound29451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29451.moment H = canonicalOutput29451.moment H :=
  canonical_of_padded canonicalInput29451 canonicalOutput29451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29452 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29452 : ExponentCode := normalNode2730

theorem canonicalSound29452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29452.moment H = canonicalOutput29452.moment H :=
  canonical_of_padded canonicalInput29452 canonicalOutput29452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29453 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput29453 : ExponentCode := normalNode6749

theorem canonicalSound29453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29453.moment H = canonicalOutput29453.moment H :=
  canonical_of_padded canonicalInput29453 canonicalOutput29453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29454 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![2, 0, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29454 : ExponentCode := normalNode1870

theorem canonicalSound29454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29454.moment H = canonicalOutput29454.moment H :=
  canonical_of_padded canonicalInput29454 canonicalOutput29454 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29455 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29455 : ExponentCode := normalNode3497

theorem canonicalSound29455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29455.moment H = canonicalOutput29455.moment H :=
  canonical_of_padded canonicalInput29455 canonicalOutput29455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29456 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![2, -1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29456 : ExponentCode := normalNode3522

theorem canonicalSound29456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29456.moment H = canonicalOutput29456.moment H :=
  canonical_of_padded canonicalInput29456 canonicalOutput29456 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29457 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29457 : ExponentCode := normalNode1822

theorem canonicalSound29457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29457.moment H = canonicalOutput29457.moment H :=
  canonical_of_padded canonicalInput29457 canonicalOutput29457 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29458 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput29458 : ExponentCode := normalNode2438

theorem canonicalSound29458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29458.moment H = canonicalOutput29458.moment H :=
  canonical_of_padded canonicalInput29458 canonicalOutput29458 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29459 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput29459 : ExponentCode := normalNode3853

theorem canonicalSound29459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29459.moment H = canonicalOutput29459.moment H :=
  canonical_of_padded canonicalInput29459 canonicalOutput29459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29460 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput29460 : ExponentCode := normalNode4052

theorem canonicalSound29460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29460.moment H = canonicalOutput29460.moment H :=
  canonical_of_padded canonicalInput29460 canonicalOutput29460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29461 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput29461 : ExponentCode := normalNode4000

theorem canonicalSound29461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29461.moment H = canonicalOutput29461.moment H :=
  canonical_of_padded canonicalInput29461 canonicalOutput29461 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29462 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput29462 : ExponentCode := normalNode3853

theorem canonicalSound29462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29462.moment H = canonicalOutput29462.moment H :=
  canonical_of_padded canonicalInput29462 canonicalOutput29462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29463 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, 0, -1, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29463 : ExponentCode := normalNode3355

theorem canonicalSound29463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29463.moment H = canonicalOutput29463.moment H :=
  canonical_of_padded canonicalInput29463 canonicalOutput29463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29464 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput29464 : ExponentCode := normalNode1959

theorem canonicalSound29464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29464.moment H = canonicalOutput29464.moment H :=
  canonical_of_padded canonicalInput29464 canonicalOutput29464 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29465 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput29465 : ExponentCode := normalNode3853

theorem canonicalSound29465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29465.moment H = canonicalOutput29465.moment H :=
  canonical_of_padded canonicalInput29465 canonicalOutput29465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29466 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29466 : ExponentCode := normalNode3752

theorem canonicalSound29466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29466.moment H = canonicalOutput29466.moment H :=
  canonical_of_padded canonicalInput29466 canonicalOutput29466 (by decide) (by decide)
    ⟨false, false, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29467 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput29467 : ExponentCode := normalNode3747

theorem canonicalSound29467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29467.moment H = canonicalOutput29467.moment H :=
  canonical_of_padded canonicalInput29467 canonicalOutput29467 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29468 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput29468 : ExponentCode := normalNode3978

theorem canonicalSound29468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29468.moment H = canonicalOutput29468.moment H :=
  canonical_of_padded canonicalInput29468 canonicalOutput29468 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29469 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29469 : ExponentCode := normalNode2328

theorem canonicalSound29469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29469.moment H = canonicalOutput29469.moment H :=
  canonical_of_padded canonicalInput29469 canonicalOutput29469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29470 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, 0, 0, -2], ![0, -3, 3, 0]]⟩

def canonicalOutput29470 : ExponentCode := normalNode2327

theorem canonicalSound29470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29470.moment H = canonicalOutput29470.moment H :=
  canonical_of_padded canonicalInput29470 canonicalOutput29470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29471 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -2, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29471 : ExponentCode := normalNode4334

theorem canonicalSound29471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29471.moment H = canonicalOutput29471.moment H :=
  canonical_of_padded canonicalInput29471 canonicalOutput29471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29472 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, -1, -1, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput29472 : ExponentCode := normalNode4330

theorem canonicalSound29472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29472.moment H = canonicalOutput29472.moment H :=
  canonical_of_padded canonicalInput29472 canonicalOutput29472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29473 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, -1, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput29473 : ExponentCode := normalNode4352

theorem canonicalSound29473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29473.moment H = canonicalOutput29473.moment H :=
  canonical_of_padded canonicalInput29473 canonicalOutput29473 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29474 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, -1, 0, -1], ![0, -2, 2, 0]]⟩

def canonicalOutput29474 : ExponentCode := normalNode3752

theorem canonicalSound29474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29474.moment H = canonicalOutput29474.moment H :=
  canonical_of_padded canonicalInput29474 canonicalOutput29474 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29475 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 3, 0]]⟩

def canonicalOutput29475 : ExponentCode := normalNode5336

theorem canonicalSound29475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29475.moment H = canonicalOutput29475.moment H :=
  canonical_of_padded canonicalInput29475 canonicalOutput29475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation318, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29476 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, 0, -2], ![0, -3, 2, 1]]⟩

def canonicalOutput29476 : ExponentCode := normalNode3355

theorem canonicalSound29476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29476.moment H = canonicalOutput29476.moment H :=
  canonical_of_padded canonicalInput29476 canonicalOutput29476 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29477 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 0, 3], ![2, 0, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29477 : ExponentCode := normalNode1874

theorem canonicalSound29477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29477.moment H = canonicalOutput29477.moment H :=
  canonical_of_padded canonicalInput29477 canonicalOutput29477 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29478 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![-1, 1, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput29478 : ExponentCode := normalNode616

theorem canonicalSound29478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29478.moment H = canonicalOutput29478.moment H :=
  canonical_of_padded canonicalInput29478 canonicalOutput29478 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29479 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29479 : ExponentCode := normalNode5036

theorem canonicalSound29479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29479.moment H = canonicalOutput29479.moment H :=
  canonical_of_padded canonicalInput29479 canonicalOutput29479 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29480 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, 1, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput29480 : ExponentCode := normalNode876

theorem canonicalSound29480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29480.moment H = canonicalOutput29480.moment H :=
  canonical_of_padded canonicalInput29480 canonicalOutput29480 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29481 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29481 : ExponentCode := normalNode5313

theorem canonicalSound29481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29481.moment H = canonicalOutput29481.moment H :=
  canonical_of_padded canonicalInput29481 canonicalOutput29481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29482 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, 0, -1, -1], ![-1, -1, 4, -2]]⟩

def canonicalOutput29482 : ExponentCode := normalNode4331

theorem canonicalSound29482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29482.moment H = canonicalOutput29482.moment H :=
  canonical_of_padded canonicalInput29482 canonicalOutput29482 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29483 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29483 : ExponentCode := normalNode1972

theorem canonicalSound29483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29483.moment H = canonicalOutput29483.moment H :=
  canonical_of_padded canonicalInput29483 canonicalOutput29483 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29484 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput29484 : ExponentCode := normalNode2684

theorem canonicalSound29484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29484.moment H = canonicalOutput29484.moment H :=
  canonical_of_padded canonicalInput29484 canonicalOutput29484 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29485 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput29485 : ExponentCode := normalNode4380

theorem canonicalSound29485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29485.moment H = canonicalOutput29485.moment H :=
  canonical_of_padded canonicalInput29485 canonicalOutput29485 (by decide) (by decide)
    ⟨false, true, canonicalPermutation181, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29486 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29486 : ExponentCode := normalNode5311

theorem canonicalSound29486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29486.moment H = canonicalOutput29486.moment H :=
  canonical_of_padded canonicalInput29486 canonicalOutput29486 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29487 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 0, -1], ![-1, 0, 2, -1]]⟩

def canonicalOutput29487 : ExponentCode := normalNode4380

theorem canonicalSound29487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29487.moment H = canonicalOutput29487.moment H :=
  canonical_of_padded canonicalInput29487 canonicalOutput29487 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29488 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, -1, 4, -2]]⟩

def canonicalOutput29488 : ExponentCode := normalNode3852

theorem canonicalSound29488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29488.moment H = canonicalOutput29488.moment H :=
  canonical_of_padded canonicalInput29488 canonicalOutput29488 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29489 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29489 : ExponentCode := normalNode4332

theorem canonicalSound29489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29489.moment H = canonicalOutput29489.moment H :=
  canonical_of_padded canonicalInput29489 canonicalOutput29489 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29490 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 0, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput29490 : ExponentCode := normalNode1972

theorem canonicalSound29490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29490.moment H = canonicalOutput29490.moment H :=
  canonical_of_padded canonicalInput29490 canonicalOutput29490 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29491 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput29491 : ExponentCode := normalNode3857

theorem canonicalSound29491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29491.moment H = canonicalOutput29491.moment H :=
  canonical_of_padded canonicalInput29491 canonicalOutput29491 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29492 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29492 : ExponentCode := normalNode4333

theorem canonicalSound29492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29492.moment H = canonicalOutput29492.moment H :=
  canonical_of_padded canonicalInput29492 canonicalOutput29492 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29493 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput29493 : ExponentCode := normalNode4820

theorem canonicalSound29493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29493.moment H = canonicalOutput29493.moment H :=
  canonical_of_padded canonicalInput29493 canonicalOutput29493 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29494 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput29494 : ExponentCode := normalNode877

theorem canonicalSound29494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29494.moment H = canonicalOutput29494.moment H :=
  canonical_of_padded canonicalInput29494 canonicalOutput29494 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29495 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29495 : ExponentCode := normalNode2905

theorem canonicalSound29495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29495.moment H = canonicalOutput29495.moment H :=
  canonical_of_padded canonicalInput29495 canonicalOutput29495 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29496 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput29496 : ExponentCode := normalNode5777

theorem canonicalSound29496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29496.moment H = canonicalOutput29496.moment H :=
  canonical_of_padded canonicalInput29496 canonicalOutput29496 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29497 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 2, -1]]⟩

def canonicalOutput29497 : ExponentCode := normalNode659

theorem canonicalSound29497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29497.moment H = canonicalOutput29497.moment H :=
  canonical_of_padded canonicalInput29497 canonicalOutput29497 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29498 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 0, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29498 : ExponentCode := normalNode5926

theorem canonicalSound29498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29498.moment H = canonicalOutput29498.moment H :=
  canonical_of_padded canonicalInput29498 canonicalOutput29498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation304, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29499 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput29499 : ExponentCode := normalNode5314

theorem canonicalSound29499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29499.moment H = canonicalOutput29499.moment H :=
  canonical_of_padded canonicalInput29499 canonicalOutput29499 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29500 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 1, -1, 1], ![-1, -3, 2, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput29500 : ExponentCode := normalNode1970

theorem canonicalSound29500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29500.moment H = canonicalOutput29500.moment H :=
  canonical_of_padded canonicalInput29500 canonicalOutput29500 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29501 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput29501 : ExponentCode := normalNode2682

theorem canonicalSound29501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29501.moment H = canonicalOutput29501.moment H :=
  canonical_of_padded canonicalInput29501 canonicalOutput29501 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29502 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29502 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3211⟩

theorem canonicalSound29502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29502.moment H = canonicalOutput29502.moment H :=
  canonical_of_padded canonicalInput29502 canonicalOutput29502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29503 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29503 : ExponentCode := normalNode3347

theorem canonicalSound29503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29503.moment H = canonicalOutput29503.moment H :=
  canonical_of_padded canonicalInput29503 canonicalOutput29503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
