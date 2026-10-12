import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3584 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3584 : ExponentCode := normalNode6828

theorem canonicalSound3584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3584.moment H = canonicalOutput3584.moment H :=
  canonical_of_padded canonicalInput3584 canonicalOutput3584 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3585 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput3585 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound3585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3585.moment H = canonicalOutput3585.moment H :=
  canonical_of_padded canonicalInput3585 canonicalOutput3585 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3586 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3586 : ExponentCode := normalNode8106

theorem canonicalSound3586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3586.moment H = canonicalOutput3586.moment H :=
  canonical_of_padded canonicalInput3586 canonicalOutput3586 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3587 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 2, -2, 0, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3587 : ExponentCode := normalNode8105

theorem canonicalSound3587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3587.moment H = canonicalOutput3587.moment H :=
  canonical_of_padded canonicalInput3587 canonicalOutput3587 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3588 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 2, -2, 0, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput3588 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound3588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3588.moment H = canonicalOutput3588.moment H :=
  canonical_of_padded canonicalInput3588 canonicalOutput3588 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3589 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 2, 1, -1, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3589 : ExponentCode := normalNode8439

theorem canonicalSound3589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3589.moment H = canonicalOutput3589.moment H :=
  canonical_of_padded canonicalInput3589 canonicalOutput3589 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3590 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![1, 0, 1, -1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3590 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1368

theorem canonicalSound3590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3590.moment H = canonicalOutput3590.moment H :=
  canonical_of_padded canonicalInput3590 canonicalOutput3590 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3591 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![1, 0, 1, 0, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput3591 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound3591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3591.moment H = canonicalOutput3591.moment H :=
  canonical_of_padded canonicalInput3591 canonicalOutput3591 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3592 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![1, 1, -2, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3592 : ExponentCode := normalNode6828

theorem canonicalSound3592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3592.moment H = canonicalOutput3592.moment H :=
  canonical_of_padded canonicalInput3592 canonicalOutput3592 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3593 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput3593 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1239

theorem canonicalSound3593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3593.moment H = canonicalOutput3593.moment H :=
  canonical_of_padded canonicalInput3593 canonicalOutput3593 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3594 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, 1, -1], ![1, 0, 1, -3, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3594 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1302

theorem canonicalSound3594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3594.moment H = canonicalOutput3594.moment H :=
  canonical_of_padded canonicalInput3594 canonicalOutput3594 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3595 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3595 : ExponentCode := normalNode6816

theorem canonicalSound3595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3595.moment H = canonicalOutput3595.moment H :=
  canonical_of_padded canonicalInput3595 canonicalOutput3595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput3596 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -2, 1], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput3596 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound3596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3596.moment H = canonicalOutput3596.moment H :=
  canonical_of_padded canonicalInput3596 canonicalOutput3596 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3597 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![-1, 2, -1, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput3597 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code980

theorem canonicalSound3597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3597.moment H = canonicalOutput3597.moment H :=
  canonical_of_padded canonicalInput3597 canonicalOutput3597 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3598 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![0, 1, -2, 0, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput3598 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound3598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3598.moment H = canonicalOutput3598.moment H :=
  canonical_of_padded canonicalInput3598 canonicalOutput3598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3599 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, -1, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput3599 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound3599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3599.moment H = canonicalOutput3599.moment H :=
  canonical_of_padded canonicalInput3599 canonicalOutput3599 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3600 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3600 : ExponentCode := normalNode8588

theorem canonicalSound3600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3600.moment H = canonicalOutput3600.moment H :=
  canonical_of_padded canonicalInput3600 canonicalOutput3600 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3601 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput3601 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code673

theorem canonicalSound3601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3601.moment H = canonicalOutput3601.moment H :=
  canonical_of_padded canonicalInput3601 canonicalOutput3601 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3602 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![0, 2, 0, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3602 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound3602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3602.moment H = canonicalOutput3602.moment H :=
  canonical_of_padded canonicalInput3602 canonicalOutput3602 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3603 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![1, 1, -3, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound3603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3603.moment H = canonicalOutput3603.moment H :=
  canonical_of_padded canonicalInput3603 canonicalOutput3603 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3604 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3604 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound3604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3604.moment H = canonicalOutput3604.moment H :=
  canonical_of_padded canonicalInput3604 canonicalOutput3604 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3605 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput3605 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code873

theorem canonicalSound3605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3605.moment H = canonicalOutput3605.moment H :=
  canonical_of_padded canonicalInput3605 canonicalOutput3605 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3606 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![1, 1, 0, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput3606 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound3606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3606.moment H = canonicalOutput3606.moment H :=
  canonical_of_padded canonicalInput3606 canonicalOutput3606 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3607 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![2, 0, 0, 0, -2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput3607 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound3607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3607.moment H = canonicalOutput3607.moment H :=
  canonical_of_padded canonicalInput3607 canonicalOutput3607 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3608 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput3608 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound3608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3608.moment H = canonicalOutput3608.moment H :=
  canonical_of_padded canonicalInput3608 canonicalOutput3608 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3609 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput3609 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1277

theorem canonicalSound3609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3609.moment H = canonicalOutput3609.moment H :=
  canonical_of_padded canonicalInput3609 canonicalOutput3609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3610 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, -2, 2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput3610 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code937

theorem canonicalSound3610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3610.moment H = canonicalOutput3610.moment H :=
  canonical_of_padded canonicalInput3610 canonicalOutput3610 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3611 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, -1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput3611 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound3611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3611.moment H = canonicalOutput3611.moment H :=
  canonical_of_padded canonicalInput3611 canonicalOutput3611 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3612 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3612 : ExponentCode := normalNode8582

theorem canonicalSound3612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3612.moment H = canonicalOutput3612.moment H :=
  canonical_of_padded canonicalInput3612 canonicalOutput3612 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3613 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3613 : ExponentCode := normalNode9247

theorem canonicalSound3613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3613.moment H = canonicalOutput3613.moment H :=
  canonical_of_padded canonicalInput3613 canonicalOutput3613 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3614 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3614 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code906

theorem canonicalSound3614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3614.moment H = canonicalOutput3614.moment H :=
  canonical_of_padded canonicalInput3614 canonicalOutput3614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3615 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3615 : ExponentCode := normalNode8231

theorem canonicalSound3615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3615.moment H = canonicalOutput3615.moment H :=
  canonical_of_padded canonicalInput3615 canonicalOutput3615 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3616 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3616 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound3616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3616.moment H = canonicalOutput3616.moment H :=
  canonical_of_padded canonicalInput3616 canonicalOutput3616 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3617 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 2, 0, -1, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3617 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound3617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3617.moment H = canonicalOutput3617.moment H :=
  canonical_of_padded canonicalInput3617 canonicalOutput3617 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3618 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![0, 3, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3618 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code952

theorem canonicalSound3618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3618.moment H = canonicalOutput3618.moment H :=
  canonical_of_padded canonicalInput3618 canonicalOutput3618 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3619 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput3619 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound3619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3619.moment H = canonicalOutput3619.moment H :=
  canonical_of_padded canonicalInput3619 canonicalOutput3619 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3620 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput3620 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound3620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3620.moment H = canonicalOutput3620.moment H :=
  canonical_of_padded canonicalInput3620 canonicalOutput3620 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3621 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, -1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput3621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound3621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3621.moment H = canonicalOutput3621.moment H :=
  canonical_of_padded canonicalInput3621 canonicalOutput3621 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3622 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3622 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code887

theorem canonicalSound3622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3622.moment H = canonicalOutput3622.moment H :=
  canonical_of_padded canonicalInput3622 canonicalOutput3622 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3623 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 1, -2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput3623 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code871

theorem canonicalSound3623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3623.moment H = canonicalOutput3623.moment H :=
  canonical_of_padded canonicalInput3623 canonicalOutput3623 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3624 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 2, 0, -1], ![1, 1, 0, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput3624 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound3624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3624.moment H = canonicalOutput3624.moment H :=
  canonical_of_padded canonicalInput3624 canonicalOutput3624 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3625 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput3625 : ExponentCode := normalNode8753

theorem canonicalSound3625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3625.moment H = canonicalOutput3625.moment H :=
  canonical_of_padded canonicalInput3625 canonicalOutput3625 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3626 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3626 : ExponentCode := normalNode8559

theorem canonicalSound3626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3626.moment H = canonicalOutput3626.moment H :=
  canonical_of_padded canonicalInput3626 canonicalOutput3626 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3627 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3627 : ExponentCode := normalNode8451

theorem canonicalSound3627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3627.moment H = canonicalOutput3627.moment H :=
  canonical_of_padded canonicalInput3627 canonicalOutput3627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3628 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![1, -1, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3628 : ExponentCode := normalNode8506

theorem canonicalSound3628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3628.moment H = canonicalOutput3628.moment H :=
  canonical_of_padded canonicalInput3628 canonicalOutput3628 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3629 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3629 : ExponentCode := normalNode10810

theorem canonicalSound3629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3629.moment H = canonicalOutput3629.moment H :=
  canonical_of_padded canonicalInput3629 canonicalOutput3629 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3630 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3630 : ExponentCode := normalNode8505

theorem canonicalSound3630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3630.moment H = canonicalOutput3630.moment H :=
  canonical_of_padded canonicalInput3630 canonicalOutput3630 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3631 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3631 : ExponentCode := normalNode6627

theorem canonicalSound3631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3631.moment H = canonicalOutput3631.moment H :=
  canonical_of_padded canonicalInput3631 canonicalOutput3631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3632 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3632 : ExponentCode := normalNode6628

theorem canonicalSound3632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3632.moment H = canonicalOutput3632.moment H :=
  canonical_of_padded canonicalInput3632 canonicalOutput3632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3633 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 2, -1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3633 : ExponentCode := normalNode10399

theorem canonicalSound3633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3633.moment H = canonicalOutput3633.moment H :=
  canonical_of_padded canonicalInput3633 canonicalOutput3633 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3634 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3634 : ExponentCode := normalNode8558

theorem canonicalSound3634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3634.moment H = canonicalOutput3634.moment H :=
  canonical_of_padded canonicalInput3634 canonicalOutput3634 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3635 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3635 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code371

theorem canonicalSound3635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3635.moment H = canonicalOutput3635.moment H :=
  canonical_of_padded canonicalInput3635 canonicalOutput3635 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput3636 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3636 : ExponentCode := normalNode10391

theorem canonicalSound3636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3636.moment H = canonicalOutput3636.moment H :=
  canonical_of_padded canonicalInput3636 canonicalOutput3636 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3637 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3637 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code372

theorem canonicalSound3637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3637.moment H = canonicalOutput3637.moment H :=
  canonical_of_padded canonicalInput3637 canonicalOutput3637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3638 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3638 : ExponentCode := normalNode6624

theorem canonicalSound3638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3638.moment H = canonicalOutput3638.moment H :=
  canonical_of_padded canonicalInput3638 canonicalOutput3638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3639 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3639 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code373

theorem canonicalSound3639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3639.moment H = canonicalOutput3639.moment H :=
  canonical_of_padded canonicalInput3639 canonicalOutput3639 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput3640 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3640 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code370

theorem canonicalSound3640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3640.moment H = canonicalOutput3640.moment H :=
  canonical_of_padded canonicalInput3640 canonicalOutput3640 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3641 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, 0, -2], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3641 : ExponentCode := normalNode10385

theorem canonicalSound3641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3641.moment H = canonicalOutput3641.moment H :=
  canonical_of_padded canonicalInput3641 canonicalOutput3641 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3642 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 1, 0, -3], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3642 : ExponentCode := normalNode8167

theorem canonicalSound3642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3642.moment H = canonicalOutput3642.moment H :=
  canonical_of_padded canonicalInput3642 canonicalOutput3642 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3643 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3643 : ExponentCode := normalNode8043

theorem canonicalSound3643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3643.moment H = canonicalOutput3643.moment H :=
  canonical_of_padded canonicalInput3643 canonicalOutput3643 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3644 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3644 : ExponentCode := normalNode9258

theorem canonicalSound3644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3644.moment H = canonicalOutput3644.moment H :=
  canonical_of_padded canonicalInput3644 canonicalOutput3644 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3645 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 0, 0, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2538⟩

theorem canonicalSound3645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3645.moment H = canonicalOutput3645.moment H :=
  canonical_of_padded canonicalInput3645 canonicalOutput3645 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3646 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3646 : ExponentCode := normalNode8624

theorem canonicalSound3646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3646.moment H = canonicalOutput3646.moment H :=
  canonical_of_padded canonicalInput3646 canonicalOutput3646 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3647 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, -1, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3647 : ExponentCode := normalNode9261

theorem canonicalSound3647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3647.moment H = canonicalOutput3647.moment H :=
  canonical_of_padded canonicalInput3647 canonicalOutput3647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
