import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput34304 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-3, 4, -2, 1], ![1, -4, 1, 2]]⟩

def canonicalOutput34304 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code92

theorem canonicalSound34304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34304.moment H = canonicalOutput34304.moment H :=
  canonical_of_padded canonicalInput34304 canonicalOutput34304 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34305 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-2, -3, 3, 2], ![0, 3, -4, 1]]⟩

def canonicalOutput34305 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code83

theorem canonicalSound34305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34305.moment H = canonicalOutput34305.moment H :=
  canonical_of_padded canonicalInput34305 canonicalOutput34305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34306 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-2, 4, -2, 0], ![0, -4, 1, 3]]⟩

def canonicalOutput34306 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound34306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34306.moment H = canonicalOutput34306.moment H :=
  canonical_of_padded canonicalInput34306 canonicalOutput34306 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34307 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-1, -3, 3, 1], ![-1, 3, -4, 2]]⟩

def canonicalOutput34307 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound34307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34307.moment H = canonicalOutput34307.moment H :=
  canonical_of_padded canonicalInput34307 canonicalOutput34307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34308 : ExponentCode := ⟨3, 4, ![![2, 0, 1, -3], ![-1, 4, -2, -1], ![-1, -4, 1, 4]]⟩

def canonicalOutput34308 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound34308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34308.moment H = canonicalOutput34308.moment H :=
  canonical_of_padded canonicalInput34308 canonicalOutput34308 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34309 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34309 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34309.moment H = canonicalOutput34309.moment H :=
  canonical_of_padded canonicalInput34309 canonicalOutput34309 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34310 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34310 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34310.moment H = canonicalOutput34310.moment H :=
  canonical_of_padded canonicalInput34310 canonicalOutput34310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34311 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34311 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34311.moment H = canonicalOutput34311.moment H :=
  canonical_of_padded canonicalInput34311 canonicalOutput34311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34312 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34312 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34312.moment H = canonicalOutput34312.moment H :=
  canonical_of_padded canonicalInput34312 canonicalOutput34312 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput34313 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34313 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34313.moment H = canonicalOutput34313.moment H :=
  canonical_of_padded canonicalInput34313 canonicalOutput34313 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34314 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34314 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34314.moment H = canonicalOutput34314.moment H :=
  canonical_of_padded canonicalInput34314 canonicalOutput34314 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34315 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34315 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34315.moment H = canonicalOutput34315.moment H :=
  canonical_of_padded canonicalInput34315 canonicalOutput34315 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34316 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34316 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34316.moment H = canonicalOutput34316.moment H :=
  canonical_of_padded canonicalInput34316 canonicalOutput34316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34317 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34317 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34317.moment H = canonicalOutput34317.moment H :=
  canonical_of_padded canonicalInput34317 canonicalOutput34317 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34318 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34318 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34318.moment H = canonicalOutput34318.moment H :=
  canonical_of_padded canonicalInput34318 canonicalOutput34318 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34319 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34319 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34319.moment H = canonicalOutput34319.moment H :=
  canonical_of_padded canonicalInput34319 canonicalOutput34319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34320 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34320 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34320.moment H = canonicalOutput34320.moment H :=
  canonical_of_padded canonicalInput34320 canonicalOutput34320 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34321 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34321 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34321.moment H = canonicalOutput34321.moment H :=
  canonical_of_padded canonicalInput34321 canonicalOutput34321 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34322 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34322 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34322.moment H = canonicalOutput34322.moment H :=
  canonical_of_padded canonicalInput34322 canonicalOutput34322 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34323 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34323 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34323.moment H = canonicalOutput34323.moment H :=
  canonical_of_padded canonicalInput34323 canonicalOutput34323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput34324 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34324 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34324.moment H = canonicalOutput34324.moment H :=
  canonical_of_padded canonicalInput34324 canonicalOutput34324 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34325 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34325 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34325.moment H = canonicalOutput34325.moment H :=
  canonical_of_padded canonicalInput34325 canonicalOutput34325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34326 : ExponentCode := ⟨6, 6, ![![2, 1, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34326 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34326.moment H = canonicalOutput34326.moment H :=
  canonical_of_padded canonicalInput34326 canonicalOutput34326 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput34327 : ExponentCode := ⟨6, 2, ![![3, -3], ![-1, 1], ![-1, 1], ![0, 0], ![0, 0], ![-1, 1]]⟩

def canonicalOutput34327 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node26⟩

theorem canonicalSound34327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34327.moment H = canonicalOutput34327.moment H :=
  canonical_of_padded canonicalInput34327 canonicalOutput34327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34328 : ExponentCode := ⟨6, 2, ![![3, -3], ![0, 0], ![-3, 3], ![0, 0], ![0, 0], ![0, 0]]⟩

def canonicalOutput34328 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound34328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34328.moment H = canonicalOutput34328.moment H :=
  canonical_of_padded canonicalInput34328 canonicalOutput34328 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34329 : ExponentCode := ⟨6, 2, ![![3, -3], ![0, 0], ![-2, 2], ![0, 0], ![0, 0], ![-1, 1]]⟩

def canonicalOutput34329 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34329.moment H = canonicalOutput34329.moment H :=
  canonical_of_padded canonicalInput34329 canonicalOutput34329 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34330 : ExponentCode := ⟨6, 2, ![![3, -3], ![0, 0], ![-1, 1], ![0, 0], ![-1, 1], ![-1, 1]]⟩

def canonicalOutput34330 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node26⟩

theorem canonicalSound34330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34330.moment H = canonicalOutput34330.moment H :=
  canonical_of_padded canonicalInput34330 canonicalOutput34330 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34331 : ExponentCode := ⟨6, 2, ![![3, -3], ![0, 0], ![-1, 1], ![0, 0], ![0, 0], ![-2, 2]]⟩

def canonicalOutput34331 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34331.moment H = canonicalOutput34331.moment H :=
  canonical_of_padded canonicalInput34331 canonicalOutput34331 (by decide) (by decide)
    ⟨false, false, canonicalPermutation226, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34332 : ExponentCode := ⟨6, 2, ![![3, -3], ![1, -1], ![-1, 1], ![0, 0], ![-1, 1], ![-2, 2]]⟩

def canonicalOutput34332 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node118⟩

theorem canonicalSound34332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34332.moment H = canonicalOutput34332.moment H :=
  canonical_of_padded canonicalInput34332 canonicalOutput34332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34333 : ExponentCode := ⟨6, 2, ![![3, -3], ![1, -1], ![1, -1], ![-1, 1], ![-2, 2], ![-2, 2]]⟩

def canonicalOutput34333 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node382⟩

theorem canonicalSound34333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34333.moment H = canonicalOutput34333.moment H :=
  canonical_of_padded canonicalInput34333 canonicalOutput34333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput34334 : ExponentCode := ⟨6, 2, ![![3, -3], ![1, -1], ![1, -1], ![-1, 1], ![-1, 1], ![-3, 3]]⟩

def canonicalOutput34334 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node381⟩

theorem canonicalSound34334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34334.moment H = canonicalOutput34334.moment H :=
  canonical_of_padded canonicalInput34334 canonicalOutput34334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput34335 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34335 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound34335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34335.moment H = canonicalOutput34335.moment H :=
  canonical_of_padded canonicalInput34335 canonicalOutput34335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34336 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34336 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34336.moment H = canonicalOutput34336.moment H :=
  canonical_of_padded canonicalInput34336 canonicalOutput34336 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34337 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34337 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34337.moment H = canonicalOutput34337.moment H :=
  canonical_of_padded canonicalInput34337 canonicalOutput34337 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34338 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34338 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound34338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34338.moment H = canonicalOutput34338.moment H :=
  canonical_of_padded canonicalInput34338 canonicalOutput34338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput34339 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34339 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34339.moment H = canonicalOutput34339.moment H :=
  canonical_of_padded canonicalInput34339 canonicalOutput34339 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34340 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34340 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34340.moment H = canonicalOutput34340.moment H :=
  canonical_of_padded canonicalInput34340 canonicalOutput34340 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34341 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34341 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34341.moment H = canonicalOutput34341.moment H :=
  canonical_of_padded canonicalInput34341 canonicalOutput34341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput34342 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34342 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34342.moment H = canonicalOutput34342.moment H :=
  canonical_of_padded canonicalInput34342 canonicalOutput34342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34343 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34343 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34343.moment H = canonicalOutput34343.moment H :=
  canonical_of_padded canonicalInput34343 canonicalOutput34343 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34344 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34344 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34344.moment H = canonicalOutput34344.moment H :=
  canonical_of_padded canonicalInput34344 canonicalOutput34344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput34345 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34345 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34345.moment H = canonicalOutput34345.moment H :=
  canonical_of_padded canonicalInput34345 canonicalOutput34345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34346 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34346 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34346.moment H = canonicalOutput34346.moment H :=
  canonical_of_padded canonicalInput34346 canonicalOutput34346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34347 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34347 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound34347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34347.moment H = canonicalOutput34347.moment H :=
  canonical_of_padded canonicalInput34347 canonicalOutput34347 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput34348 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34348 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34348.moment H = canonicalOutput34348.moment H :=
  canonical_of_padded canonicalInput34348 canonicalOutput34348 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34349 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34349 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34349.moment H = canonicalOutput34349.moment H :=
  canonical_of_padded canonicalInput34349 canonicalOutput34349 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34350 : ExponentCode := ⟨6, 6, ![![3, -3, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34350 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound34350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34350.moment H = canonicalOutput34350.moment H :=
  canonical_of_padded canonicalInput34350 canonicalOutput34350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput34351 : ExponentCode := ⟨6, 3, ![![3, -2, -1], ![1, 0, -1], ![-1, 2, -1], ![0, -1, 1], ![-1, 0, 1], ![-2, 1, 1]]⟩

def canonicalOutput34351 : ExponentCode := normalNode2989

theorem canonicalSound34351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34351.moment H = canonicalOutput34351.moment H :=
  canonical_of_padded canonicalInput34351 canonicalOutput34351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34352 : ExponentCode := ⟨6, 3, ![![3, -2, -1], ![1, 0, -1], ![1, 0, -1], ![-1, 0, 1], ![-2, 1, 1], ![-2, 1, 1]]⟩

def canonicalOutput34352 : ExponentCode := normalNode3021

theorem canonicalSound34352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34352.moment H = canonicalOutput34352.moment H :=
  canonical_of_padded canonicalInput34352 canonicalOutput34352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34353 : ExponentCode := ⟨6, 3, ![![3, -2, -1], ![1, 0, -1], ![1, 0, -1], ![-1, 0, 1], ![-1, 0, 1], ![-3, 2, 1]]⟩

def canonicalOutput34353 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1873⟩

theorem canonicalSound34353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34353.moment H = canonicalOutput34353.moment H :=
  canonical_of_padded canonicalInput34353 canonicalOutput34353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput34354 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34354 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound34354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34354.moment H = canonicalOutput34354.moment H :=
  canonical_of_padded canonicalInput34354 canonicalOutput34354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34355 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34355 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound34355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34355.moment H = canonicalOutput34355.moment H :=
  canonical_of_padded canonicalInput34355 canonicalOutput34355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34356 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34356 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound34356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34356.moment H = canonicalOutput34356.moment H :=
  canonical_of_padded canonicalInput34356 canonicalOutput34356 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput34357 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34357 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound34357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34357.moment H = canonicalOutput34357.moment H :=
  canonical_of_padded canonicalInput34357 canonicalOutput34357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34358 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34358 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34358.moment H = canonicalOutput34358.moment H :=
  canonical_of_padded canonicalInput34358 canonicalOutput34358 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput34359 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34359 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34359.moment H = canonicalOutput34359.moment H :=
  canonical_of_padded canonicalInput34359 canonicalOutput34359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34360 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34360 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34360.moment H = canonicalOutput34360.moment H :=
  canonical_of_padded canonicalInput34360 canonicalOutput34360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34361 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34361 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34361.moment H = canonicalOutput34361.moment H :=
  canonical_of_padded canonicalInput34361 canonicalOutput34361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34362 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34362 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34362.moment H = canonicalOutput34362.moment H :=
  canonical_of_padded canonicalInput34362 canonicalOutput34362 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34363 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34363 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound34363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34363.moment H = canonicalOutput34363.moment H :=
  canonical_of_padded canonicalInput34363 canonicalOutput34363 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput34364 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34364 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound34364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34364.moment H = canonicalOutput34364.moment H :=
  canonical_of_padded canonicalInput34364 canonicalOutput34364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34365 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34365 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound34365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34365.moment H = canonicalOutput34365.moment H :=
  canonical_of_padded canonicalInput34365 canonicalOutput34365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput34366 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34366 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound34366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34366.moment H = canonicalOutput34366.moment H :=
  canonical_of_padded canonicalInput34366 canonicalOutput34366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput34367 : ExponentCode := ⟨6, 6, ![![3, -2, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput34367 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound34367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput34367.moment H = canonicalOutput34367.moment H :=
  canonical_of_padded canonicalInput34367 canonicalOutput34367 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
