import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3648 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput3648 : ExponentCode := normalNode8278

theorem canonicalSound3648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3648.moment H = canonicalOutput3648.moment H :=
  canonical_of_padded canonicalInput3648 canonicalOutput3648 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3649 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3649 : ExponentCode := normalNode9493

theorem canonicalSound3649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3649.moment H = canonicalOutput3649.moment H :=
  canonical_of_padded canonicalInput3649 canonicalOutput3649 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3650 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3650 : ExponentCode := normalNode9493

theorem canonicalSound3650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3650.moment H = canonicalOutput3650.moment H :=
  canonical_of_padded canonicalInput3650 canonicalOutput3650 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3651 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3651 : ExponentCode := normalNode8720

theorem canonicalSound3651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3651.moment H = canonicalOutput3651.moment H :=
  canonical_of_padded canonicalInput3651 canonicalOutput3651 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3652 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3652 : ExponentCode := normalNode10094

theorem canonicalSound3652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3652.moment H = canonicalOutput3652.moment H :=
  canonical_of_padded canonicalInput3652 canonicalOutput3652 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3653 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3653 : ExponentCode := normalNode10421

theorem canonicalSound3653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3653.moment H = canonicalOutput3653.moment H :=
  canonical_of_padded canonicalInput3653 canonicalOutput3653 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3654 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3654 : ExponentCode := normalNode10164

theorem canonicalSound3654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3654.moment H = canonicalOutput3654.moment H :=
  canonical_of_padded canonicalInput3654 canonicalOutput3654 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3655 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, -1, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3655 : ExponentCode := normalNode9207

theorem canonicalSound3655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3655.moment H = canonicalOutput3655.moment H :=
  canonical_of_padded canonicalInput3655 canonicalOutput3655 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3656 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3656 : ExponentCode := normalNode10084

theorem canonicalSound3656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3656.moment H = canonicalOutput3656.moment H :=
  canonical_of_padded canonicalInput3656 canonicalOutput3656 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3657 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3657 : ExponentCode := normalNode10133

theorem canonicalSound3657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3657.moment H = canonicalOutput3657.moment H :=
  canonical_of_padded canonicalInput3657 canonicalOutput3657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3658 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3658 : ExponentCode := normalNode6637

theorem canonicalSound3658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3658.moment H = canonicalOutput3658.moment H :=
  canonical_of_padded canonicalInput3658 canonicalOutput3658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3659 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3659 : ExponentCode := normalNode6636

theorem canonicalSound3659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3659.moment H = canonicalOutput3659.moment H :=
  canonical_of_padded canonicalInput3659 canonicalOutput3659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3660 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 2, -2, 0, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3660 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound3660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3660.moment H = canonicalOutput3660.moment H :=
  canonical_of_padded canonicalInput3660 canonicalOutput3660 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3661 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3661 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code558

theorem canonicalSound3661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3661.moment H = canonicalOutput3661.moment H :=
  canonical_of_padded canonicalInput3661 canonicalOutput3661 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3662 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -2, 1], ![1, -1, 1, 0, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3662 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code886

theorem canonicalSound3662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3662.moment H = canonicalOutput3662.moment H :=
  canonical_of_padded canonicalInput3662 canonicalOutput3662 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3663 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3663 : ExponentCode := normalNode8231

theorem canonicalSound3663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3663.moment H = canonicalOutput3663.moment H :=
  canonical_of_padded canonicalInput3663 canonicalOutput3663 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3664 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3664 : ExponentCode := normalNode10017

theorem canonicalSound3664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3664.moment H = canonicalOutput3664.moment H :=
  canonical_of_padded canonicalInput3664 canonicalOutput3664 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3665 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3665 : ExponentCode := normalNode10022

theorem canonicalSound3665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3665.moment H = canonicalOutput3665.moment H :=
  canonical_of_padded canonicalInput3665 canonicalOutput3665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3666 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3666 : ExponentCode := normalNode10019

theorem canonicalSound3666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3666.moment H = canonicalOutput3666.moment H :=
  canonical_of_padded canonicalInput3666 canonicalOutput3666 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3667 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3667 : ExponentCode := normalNode8321

theorem canonicalSound3667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3667.moment H = canonicalOutput3667.moment H :=
  canonical_of_padded canonicalInput3667 canonicalOutput3667 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3668 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3668 : ExponentCode := normalNode6565

theorem canonicalSound3668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3668.moment H = canonicalOutput3668.moment H :=
  canonical_of_padded canonicalInput3668 canonicalOutput3668 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput3669 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3669 : ExponentCode := normalNode8715

theorem canonicalSound3669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3669.moment H = canonicalOutput3669.moment H :=
  canonical_of_padded canonicalInput3669 canonicalOutput3669 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3670 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, -2, 0], ![1, -1, -2, 1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput3670 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code526

theorem canonicalSound3670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3670.moment H = canonicalOutput3670.moment H :=
  canonical_of_padded canonicalInput3670 canonicalOutput3670 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3671 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, -1, -1], ![0, 2, -1, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3671 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound3671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3671.moment H = canonicalOutput3671.moment H :=
  canonical_of_padded canonicalInput3671 canonicalOutput3671 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3672 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, -1, -1], ![0, 3, -1, -1, -1], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput3672 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1000

theorem canonicalSound3672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3672.moment H = canonicalOutput3672.moment H :=
  canonical_of_padded canonicalInput3672 canonicalOutput3672 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3673 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput3673 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound3673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3673.moment H = canonicalOutput3673.moment H :=
  canonical_of_padded canonicalInput3673 canonicalOutput3673 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3674 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 2, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3674 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound3674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3674.moment H = canonicalOutput3674.moment H :=
  canonical_of_padded canonicalInput3674 canonicalOutput3674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3675 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![0, 3, -2, -1, 0], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput3675 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code855

theorem canonicalSound3675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3675.moment H = canonicalOutput3675.moment H :=
  canonical_of_padded canonicalInput3675 canonicalOutput3675 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3676 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput3676 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code843

theorem canonicalSound3676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3676.moment H = canonicalOutput3676.moment H :=
  canonical_of_padded canonicalInput3676 canonicalOutput3676 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3677 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput3677 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code551

theorem canonicalSound3677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3677.moment H = canonicalOutput3677.moment H :=
  canonical_of_padded canonicalInput3677 canonicalOutput3677 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3678 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![1, -1, -1, 0, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput3678 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound3678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3678.moment H = canonicalOutput3678.moment H :=
  canonical_of_padded canonicalInput3678 canonicalOutput3678 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3679 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 0, 2, 0, -2], ![2, -1, 0, -1, 0], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput3679 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound3679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3679.moment H = canonicalOutput3679.moment H :=
  canonical_of_padded canonicalInput3679 canonicalOutput3679 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3680 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3680 : ExponentCode := normalNode6567

theorem canonicalSound3680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3680.moment H = canonicalOutput3680.moment H :=
  canonical_of_padded canonicalInput3680 canonicalOutput3680 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput3681 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, -1, 2, 1, -2], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput3681 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code833

theorem canonicalSound3681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3681.moment H = canonicalOutput3681.moment H :=
  canonical_of_padded canonicalInput3681 canonicalOutput3681 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3682 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3682 : ExponentCode := normalNode8483

theorem canonicalSound3682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3682.moment H = canonicalOutput3682.moment H :=
  canonical_of_padded canonicalInput3682 canonicalOutput3682 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3683 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3683 : ExponentCode := normalNode10145

theorem canonicalSound3683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3683.moment H = canonicalOutput3683.moment H :=
  canonical_of_padded canonicalInput3683 canonicalOutput3683 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3684 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3684 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound3684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3684.moment H = canonicalOutput3684.moment H :=
  canonical_of_padded canonicalInput3684 canonicalOutput3684 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3685 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3685 : ExponentCode := normalNode6835

theorem canonicalSound3685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3685.moment H = canonicalOutput3685.moment H :=
  canonical_of_padded canonicalInput3685 canonicalOutput3685 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3686 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3686 : ExponentCode := normalNode8125

theorem canonicalSound3686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3686.moment H = canonicalOutput3686.moment H :=
  canonical_of_padded canonicalInput3686 canonicalOutput3686 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3687 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3687 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound3687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3687.moment H = canonicalOutput3687.moment H :=
  canonical_of_padded canonicalInput3687 canonicalOutput3687 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3688 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3688 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code936

theorem canonicalSound3688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3688.moment H = canonicalOutput3688.moment H :=
  canonical_of_padded canonicalInput3688 canonicalOutput3688 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3689 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -2, 1, 0], ![1, -1, 2, 0, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput3689 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code852

theorem canonicalSound3689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3689.moment H = canonicalOutput3689.moment H :=
  canonical_of_padded canonicalInput3689 canonicalOutput3689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3690 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, -1, 1], ![0, 2, -1, 0, -1], ![2, -2, 2, -1, -1]]⟩

def canonicalOutput3690 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code582

theorem canonicalSound3690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3690.moment H = canonicalOutput3690.moment H :=
  canonical_of_padded canonicalInput3690 canonicalOutput3690 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3691 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, -1, 1], ![1, -2, 2, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput3691 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1306

theorem canonicalSound3691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3691.moment H = canonicalOutput3691.moment H :=
  canonical_of_padded canonicalInput3691 canonicalOutput3691 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3692 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3692 : ExponentCode := normalNode8658

theorem canonicalSound3692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3692.moment H = canonicalOutput3692.moment H :=
  canonical_of_padded canonicalInput3692 canonicalOutput3692 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3693 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3693 : ExponentCode := normalNode8654

theorem canonicalSound3693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3693.moment H = canonicalOutput3693.moment H :=
  canonical_of_padded canonicalInput3693 canonicalOutput3693 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3694 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3694 : ExponentCode := normalNode9776

theorem canonicalSound3694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3694.moment H = canonicalOutput3694.moment H :=
  canonical_of_padded canonicalInput3694 canonicalOutput3694 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput3695 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3695 : ExponentCode := normalNode9212

theorem canonicalSound3695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3695.moment H = canonicalOutput3695.moment H :=
  canonical_of_padded canonicalInput3695 canonicalOutput3695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput3696 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, 0, -2, 1], ![0, -1, 2, 1, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput3696 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code535

theorem canonicalSound3696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3696.moment H = canonicalOutput3696.moment H :=
  canonical_of_padded canonicalInput3696 canonicalOutput3696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3697 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, 1, -2, 0], ![1, -1, 1, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput3697 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound3697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3697.moment H = canonicalOutput3697.moment H :=
  canonical_of_padded canonicalInput3697 canonicalOutput3697 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3698 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, 1, 0, -2], ![0, 1, -2, -1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3698 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code556

theorem canonicalSound3698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3698.moment H = canonicalOutput3698.moment H :=
  canonical_of_padded canonicalInput3698 canonicalOutput3698 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3699 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput3699 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound3699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3699.moment H = canonicalOutput3699.moment H :=
  canonical_of_padded canonicalInput3699 canonicalOutput3699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3700 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, -1, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput3700 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound3700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3700.moment H = canonicalOutput3700.moment H :=
  canonical_of_padded canonicalInput3700 canonicalOutput3700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3701 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![-1, -1, 2, -1, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput3701 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code843

theorem canonicalSound3701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3701.moment H = canonicalOutput3701.moment H :=
  canonical_of_padded canonicalInput3701 canonicalOutput3701 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3702 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![0, 1, 2, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput3702 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code581

theorem canonicalSound3702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3702.moment H = canonicalOutput3702.moment H :=
  canonical_of_padded canonicalInput3702 canonicalOutput3702 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3703 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![1, -3, 1, 0, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput3703 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code949

theorem canonicalSound3703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3703.moment H = canonicalOutput3703.moment H :=
  canonical_of_padded canonicalInput3703 canonicalOutput3703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3704 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![1, -2, 1, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3704 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code551

theorem canonicalSound3704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3704.moment H = canonicalOutput3704.moment H :=
  canonical_of_padded canonicalInput3704 canonicalOutput3704 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3705 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput3705 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound3705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3705.moment H = canonicalOutput3705.moment H :=
  canonical_of_padded canonicalInput3705 canonicalOutput3705 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3706 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -2, 0, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput3706 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound3706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3706.moment H = canonicalOutput3706.moment H :=
  canonical_of_padded canonicalInput3706 canonicalOutput3706 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3707 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, -1, 0], ![-1, -1, 2, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput3707 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code930

theorem canonicalSound3707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3707.moment H = canonicalOutput3707.moment H :=
  canonical_of_padded canonicalInput3707 canonicalOutput3707 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3708 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, -1, 0], ![0, 1, 2, -1, -2], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput3708 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code585

theorem canonicalSound3708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3708.moment H = canonicalOutput3708.moment H :=
  canonical_of_padded canonicalInput3708 canonicalOutput3708 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3709 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, 0, -1], ![0, 1, 2, -2, -1], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput3709 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code584

theorem canonicalSound3709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3709.moment H = canonicalOutput3709.moment H :=
  canonical_of_padded canonicalInput3709 canonicalOutput3709 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3710 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput3710 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code971

theorem canonicalSound3710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3710.moment H = canonicalOutput3710.moment H :=
  canonical_of_padded canonicalInput3710 canonicalOutput3710 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3711 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, 2, -1, 0, -1], ![1, -1, -1, 0, 1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput3711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound3711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3711.moment H = canonicalOutput3711.moment H :=
  canonical_of_padded canonicalInput3711 canonicalOutput3711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
