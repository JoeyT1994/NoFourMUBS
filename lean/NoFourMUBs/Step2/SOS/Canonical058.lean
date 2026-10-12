import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3712 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, 0, -1], ![1, 0, -1, -1, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput3712 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound3712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3712.moment H = canonicalOutput3712.moment H :=
  canonical_of_padded canonicalInput3712 canonicalOutput3712 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3713 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, 0, -2, 0], ![1, -1, -2, 1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput3713 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code525

theorem canonicalSound3713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3713.moment H = canonicalOutput3713.moment H :=
  canonical_of_padded canonicalInput3713 canonicalOutput3713 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3714 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput3714 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound3714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3714.moment H = canonicalOutput3714.moment H :=
  canonical_of_padded canonicalInput3714 canonicalOutput3714 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3715 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, 0, 0, -2], ![-1, -1, 2, -1, 1], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput3715 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code927

theorem canonicalSound3715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3715.moment H = canonicalOutput3715.moment H :=
  canonical_of_padded canonicalInput3715 canonicalOutput3715 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3716 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput3716 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code927

theorem canonicalSound3716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3716.moment H = canonicalOutput3716.moment H :=
  canonical_of_padded canonicalInput3716 canonicalOutput3716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3717 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 3, -2, -1, 0], ![1, -3, 1, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3717 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code29

theorem canonicalSound3717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3717.moment H = canonicalOutput3717.moment H :=
  canonical_of_padded canonicalInput3717 canonicalOutput3717 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3718 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![1, -1, -2, 0, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3718 : ExponentCode := normalNode6554

theorem canonicalSound3718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3718.moment H = canonicalOutput3718.moment H :=
  canonical_of_padded canonicalInput3718 canonicalOutput3718 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation46⟩ (by decide +kernel) hH

def canonicalInput3719 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![1, -1, 1, -2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3719 : ExponentCode := normalNode6835

theorem canonicalSound3719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3719.moment H = canonicalOutput3719.moment H :=
  canonical_of_padded canonicalInput3719 canonicalOutput3719 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3720 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![1, -1, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput3720 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound3720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3720.moment H = canonicalOutput3720.moment H :=
  canonical_of_padded canonicalInput3720 canonicalOutput3720 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput3721 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![1, -1, 2, 0, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput3721 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound3721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3721.moment H = canonicalOutput3721.moment H :=
  canonical_of_padded canonicalInput3721 canonicalOutput3721 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3722 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 0, 0, 1, -2], ![0, 2, -2, -1, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3722 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound3722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3722.moment H = canonicalOutput3722.moment H :=
  canonical_of_padded canonicalInput3722 canonicalOutput3722 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3723 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3723 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1012

theorem canonicalSound3723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3723.moment H = canonicalOutput3723.moment H :=
  canonical_of_padded canonicalInput3723 canonicalOutput3723 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3724 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 1, -2, 0, 0], ![0, -1, 2, 1, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput3724 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code832

theorem canonicalSound3724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3724.moment H = canonicalOutput3724.moment H :=
  canonical_of_padded canonicalInput3724 canonicalOutput3724 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3725 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 1, -2, 0, 0], ![0, 1, 1, -3, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3725 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound3725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3725.moment H = canonicalOutput3725.moment H :=
  canonical_of_padded canonicalInput3725 canonicalOutput3725 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3726 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 1, 0, -2, 0], ![0, -1, 2, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput3726 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code533

theorem canonicalSound3726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3726.moment H = canonicalOutput3726.moment H :=
  canonical_of_padded canonicalInput3726 canonicalOutput3726 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3727 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![1, 1, 0, -2, 0], ![0, -1, 3, 0, -2], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput3727 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code836

theorem canonicalSound3727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3727.moment H = canonicalOutput3727.moment H :=
  canonical_of_padded canonicalInput3727 canonicalOutput3727 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3728 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![1, 2, -2, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3728 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node624⟩

theorem canonicalSound3728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3728.moment H = canonicalOutput3728.moment H :=
  canonical_of_padded canonicalInput3728 canonicalOutput3728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3729 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![2, -1, -2, 0, 1], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput3729 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound3729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3729.moment H = canonicalOutput3729.moment H :=
  canonical_of_padded canonicalInput3729 canonicalOutput3729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3730 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![2, -1, 0, -1, 0], ![-1, 1, 2, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput3730 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code556

theorem canonicalSound3730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3730.moment H = canonicalOutput3730.moment H :=
  canonical_of_padded canonicalInput3730 canonicalOutput3730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3731 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![2, 0, -2, 0, 0], ![-1, -1, 2, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput3731 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code526

theorem canonicalSound3731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3731.moment H = canonicalOutput3731.moment H :=
  canonical_of_padded canonicalInput3731 canonicalOutput3731 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3732 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![2, 0, 0, 0, -2], ![-1, -1, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput3732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code525

theorem canonicalSound3732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3732.moment H = canonicalOutput3732.moment H :=
  canonical_of_padded canonicalInput3732 canonicalOutput3732 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3733 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput3733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1969⟩

theorem canonicalSound3733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3733.moment H = canonicalOutput3733.moment H :=
  canonical_of_padded canonicalInput3733 canonicalOutput3733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3734 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput3734 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1968⟩

theorem canonicalSound3734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3734.moment H = canonicalOutput3734.moment H :=
  canonical_of_padded canonicalInput3734 canonicalOutput3734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3735 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 1, 1], ![0, 0, 2, -2], ![2, 3, -3, -2]]⟩

def canonicalOutput3735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code463

theorem canonicalSound3735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3735.moment H = canonicalOutput3735.moment H :=
  canonical_of_padded canonicalInput3735 canonicalOutput3735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3736 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput3736 : ExponentCode := normalNode3479

theorem canonicalSound3736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3736.moment H = canonicalOutput3736.moment H :=
  canonical_of_padded canonicalInput3736 canonicalOutput3736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3737 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput3737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node597⟩

theorem canonicalSound3737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3737.moment H = canonicalOutput3737.moment H :=
  canonical_of_padded canonicalInput3737 canonicalOutput3737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3738 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput3738 : ExponentCode := normalNode3451

theorem canonicalSound3738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3738.moment H = canonicalOutput3738.moment H :=
  canonical_of_padded canonicalInput3738 canonicalOutput3738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3739 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput3739 : ExponentCode := normalNode3475

theorem canonicalSound3739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3739.moment H = canonicalOutput3739.moment H :=
  canonical_of_padded canonicalInput3739 canonicalOutput3739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3740 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput3740 : ExponentCode := normalNode3490

theorem canonicalSound3740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3740.moment H = canonicalOutput3740.moment H :=
  canonical_of_padded canonicalInput3740 canonicalOutput3740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3741 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput3741 : ExponentCode := normalNode3492

theorem canonicalSound3741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3741.moment H = canonicalOutput3741.moment H :=
  canonical_of_padded canonicalInput3741 canonicalOutput3741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3742 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3742 : ExponentCode := normalNode3491

theorem canonicalSound3742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3742.moment H = canonicalOutput3742.moment H :=
  canonical_of_padded canonicalInput3742 canonicalOutput3742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3743 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput3743 : ExponentCode := normalNode3491

theorem canonicalSound3743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3743.moment H = canonicalOutput3743.moment H :=
  canonical_of_padded canonicalInput3743 canonicalOutput3743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3744 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput3744 : ExponentCode := normalNode3608

theorem canonicalSound3744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3744.moment H = canonicalOutput3744.moment H :=
  canonical_of_padded canonicalInput3744 canonicalOutput3744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3745 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput3745 : ExponentCode := normalNode3607

theorem canonicalSound3745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3745.moment H = canonicalOutput3745.moment H :=
  canonical_of_padded canonicalInput3745 canonicalOutput3745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3746 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput3746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node480⟩

theorem canonicalSound3746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3746.moment H = canonicalOutput3746.moment H :=
  canonical_of_padded canonicalInput3746 canonicalOutput3746 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3747 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput3747 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code387

theorem canonicalSound3747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3747.moment H = canonicalOutput3747.moment H :=
  canonical_of_padded canonicalInput3747 canonicalOutput3747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3748 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3748 : ExponentCode := normalNode3375

theorem canonicalSound3748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3748.moment H = canonicalOutput3748.moment H :=
  canonical_of_padded canonicalInput3748 canonicalOutput3748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3749 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput3749 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code389

theorem canonicalSound3749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3749.moment H = canonicalOutput3749.moment H :=
  canonical_of_padded canonicalInput3749 canonicalOutput3749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3750 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput3750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound3750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3750.moment H = canonicalOutput3750.moment H :=
  canonical_of_padded canonicalInput3750 canonicalOutput3750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3751 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput3751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound3751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3751.moment H = canonicalOutput3751.moment H :=
  canonical_of_padded canonicalInput3751 canonicalOutput3751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3752 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput3752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩

theorem canonicalSound3752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3752.moment H = canonicalOutput3752.moment H :=
  canonical_of_padded canonicalInput3752 canonicalOutput3752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3753 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput3753 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node591⟩

theorem canonicalSound3753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3753.moment H = canonicalOutput3753.moment H :=
  canonical_of_padded canonicalInput3753 canonicalOutput3753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3754 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3754 : ExponentCode := normalNode3388

theorem canonicalSound3754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3754.moment H = canonicalOutput3754.moment H :=
  canonical_of_padded canonicalInput3754 canonicalOutput3754 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput3755 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput3755 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code762

theorem canonicalSound3755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3755.moment H = canonicalOutput3755.moment H :=
  canonical_of_padded canonicalInput3755 canonicalOutput3755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3756 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3756 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩

theorem canonicalSound3756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3756.moment H = canonicalOutput3756.moment H :=
  canonical_of_padded canonicalInput3756 canonicalOutput3756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3757 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, -1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput3757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound3757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3757.moment H = canonicalOutput3757.moment H :=
  canonical_of_padded canonicalInput3757 canonicalOutput3757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3758 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput3758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node595⟩

theorem canonicalSound3758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3758.moment H = canonicalOutput3758.moment H :=
  canonical_of_padded canonicalInput3758 canonicalOutput3758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3759 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput3759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1313⟩

theorem canonicalSound3759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3759.moment H = canonicalOutput3759.moment H :=
  canonical_of_padded canonicalInput3759 canonicalOutput3759 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3760 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput3760 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1305⟩

theorem canonicalSound3760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3760.moment H = canonicalOutput3760.moment H :=
  canonical_of_padded canonicalInput3760 canonicalOutput3760 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3761 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput3761 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound3761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3761.moment H = canonicalOutput3761.moment H :=
  canonical_of_padded canonicalInput3761 canonicalOutput3761 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3762 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput3762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound3762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3762.moment H = canonicalOutput3762.moment H :=
  canonical_of_padded canonicalInput3762 canonicalOutput3762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3763 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput3763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node602⟩

theorem canonicalSound3763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3763.moment H = canonicalOutput3763.moment H :=
  canonical_of_padded canonicalInput3763 canonicalOutput3763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3764 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput3764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound3764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3764.moment H = canonicalOutput3764.moment H :=
  canonical_of_padded canonicalInput3764 canonicalOutput3764 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3765 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 3, 0, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput3765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node595⟩

theorem canonicalSound3765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3765.moment H = canonicalOutput3765.moment H :=
  canonical_of_padded canonicalInput3765 canonicalOutput3765 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3766 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput3766 : ExponentCode := normalNode1672

theorem canonicalSound3766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3766.moment H = canonicalOutput3766.moment H :=
  canonical_of_padded canonicalInput3766 canonicalOutput3766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3767 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput3767 : ExponentCode := normalNode1671

theorem canonicalSound3767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3767.moment H = canonicalOutput3767.moment H :=
  canonical_of_padded canonicalInput3767 canonicalOutput3767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3768 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -3, 1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput3768 : ExponentCode := normalNode1673

theorem canonicalSound3768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3768.moment H = canonicalOutput3768.moment H :=
  canonical_of_padded canonicalInput3768 canonicalOutput3768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3769 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3769 : ExponentCode := normalNode1675

theorem canonicalSound3769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3769.moment H = canonicalOutput3769.moment H :=
  canonical_of_padded canonicalInput3769 canonicalOutput3769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3770 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3770 : ExponentCode := normalNode1676

theorem canonicalSound3770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3770.moment H = canonicalOutput3770.moment H :=
  canonical_of_padded canonicalInput3770 canonicalOutput3770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3771 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, 0, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput3771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code391

theorem canonicalSound3771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3771.moment H = canonicalOutput3771.moment H :=
  canonical_of_padded canonicalInput3771 canonicalOutput3771 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3772 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3772 : ExponentCode := normalNode10905

theorem canonicalSound3772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3772.moment H = canonicalOutput3772.moment H :=
  canonical_of_padded canonicalInput3772 canonicalOutput3772 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3773 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput3773 : ExponentCode := normalNode9578

theorem canonicalSound3773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3773.moment H = canonicalOutput3773.moment H :=
  canonical_of_padded canonicalInput3773 canonicalOutput3773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3774 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 2, -3, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code406

theorem canonicalSound3774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3774.moment H = canonicalOutput3774.moment H :=
  canonical_of_padded canonicalInput3774 canonicalOutput3774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3775 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput3775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code405

theorem canonicalSound3775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3775.moment H = canonicalOutput3775.moment H :=
  canonical_of_padded canonicalInput3775 canonicalOutput3775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
