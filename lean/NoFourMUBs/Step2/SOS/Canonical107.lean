import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6848 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6848 : ExponentCode := normalNode8013

theorem canonicalSound6848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6848.moment H = canonicalOutput6848.moment H :=
  canonical_of_padded canonicalInput6848 canonicalOutput6848 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6849 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6849 : ExponentCode := normalNode8031

theorem canonicalSound6849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6849.moment H = canonicalOutput6849.moment H :=
  canonical_of_padded canonicalInput6849 canonicalOutput6849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput6850 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 2, -2, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6850 : ExponentCode := normalNode8219

theorem canonicalSound6850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6850.moment H = canonicalOutput6850.moment H :=
  canonical_of_padded canonicalInput6850 canonicalOutput6850 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput6851 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 2, -1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6851 : ExponentCode := normalNode8447

theorem canonicalSound6851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6851.moment H = canonicalOutput6851.moment H :=
  canonical_of_padded canonicalInput6851 canonicalOutput6851 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput6852 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6852 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code814

theorem canonicalSound6852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6852.moment H = canonicalOutput6852.moment H :=
  canonical_of_padded canonicalInput6852 canonicalOutput6852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6853 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput6853 : ExponentCode := normalNode9985

theorem canonicalSound6853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6853.moment H = canonicalOutput6853.moment H :=
  canonical_of_padded canonicalInput6853 canonicalOutput6853 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput6854 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6854 : ExponentCode := normalNode7496

theorem canonicalSound6854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6854.moment H = canonicalOutput6854.moment H :=
  canonical_of_padded canonicalInput6854 canonicalOutput6854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput6855 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6855 : ExponentCode := normalNode8267

theorem canonicalSound6855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6855.moment H = canonicalOutput6855.moment H :=
  canonical_of_padded canonicalInput6855 canonicalOutput6855 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput6856 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6856 : ExponentCode := normalNode8448

theorem canonicalSound6856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6856.moment H = canonicalOutput6856.moment H :=
  canonical_of_padded canonicalInput6856 canonicalOutput6856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6857 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 0, 3, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6857 : ExponentCode := normalNode8452

theorem canonicalSound6857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6857.moment H = canonicalOutput6857.moment H :=
  canonical_of_padded canonicalInput6857 canonicalOutput6857 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput6858 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 0, 3, -2], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6858 : ExponentCode := normalNode8450

theorem canonicalSound6858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6858.moment H = canonicalOutput6858.moment H :=
  canonical_of_padded canonicalInput6858 canonicalOutput6858 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6859 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 1, 0, 0], ![0, -1, 1, 0, 0], ![0, 2, -1, -1, 0], ![2, 0, -1, 2, -3]]⟩

def canonicalOutput6859 : ExponentCode := normalNode9239

theorem canonicalSound6859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6859.moment H = canonicalOutput6859.moment H :=
  canonical_of_padded canonicalInput6859 canonicalOutput6859 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput6860 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 1, 0, 0], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![2, 0, -1, 2, -3]]⟩

def canonicalOutput6860 : ExponentCode := normalNode9242

theorem canonicalSound6860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6860.moment H = canonicalOutput6860.moment H :=
  canonical_of_padded canonicalInput6860 canonicalOutput6860 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6861 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 1, 0, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, -1, 3, -3]]⟩

def canonicalOutput6861 : ExponentCode := normalNode9240

theorem canonicalSound6861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6861.moment H = canonicalOutput6861.moment H :=
  canonical_of_padded canonicalInput6861 canonicalOutput6861 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput6862 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, -1, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6862 : ExponentCode := normalNode10760

theorem canonicalSound6862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6862.moment H = canonicalOutput6862.moment H :=
  canonical_of_padded canonicalInput6862 canonicalOutput6862 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput6863 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 3, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6863 : ExponentCode := normalNode8024

theorem canonicalSound6863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6863.moment H = canonicalOutput6863.moment H :=
  canonical_of_padded canonicalInput6863 canonicalOutput6863 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput6864 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput6864 : ExponentCode := normalNode6546

theorem canonicalSound6864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6864.moment H = canonicalOutput6864.moment H :=
  canonical_of_padded canonicalInput6864 canonicalOutput6864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6865 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, -1, 2, -1, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6865 : ExponentCode := normalNode7489

theorem canonicalSound6865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6865.moment H = canonicalOutput6865.moment H :=
  canonical_of_padded canonicalInput6865 canonicalOutput6865 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput6866 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, -1, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6866 : ExponentCode := normalNode8051

theorem canonicalSound6866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6866.moment H = canonicalOutput6866.moment H :=
  canonical_of_padded canonicalInput6866 canonicalOutput6866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput6867 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -2, 0, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6867 : ExponentCode := normalNode10004

theorem canonicalSound6867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6867.moment H = canonicalOutput6867.moment H :=
  canonical_of_padded canonicalInput6867 canonicalOutput6867 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput6868 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, -1, 3, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput6868 : ExponentCode := normalNode8052

theorem canonicalSound6868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6868.moment H = canonicalOutput6868.moment H :=
  canonical_of_padded canonicalInput6868 canonicalOutput6868 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput6869 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, -1, 0], ![1, -1, -1, 3, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6869 : ExponentCode := normalNode9226

theorem canonicalSound6869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6869.moment H = canonicalOutput6869.moment H :=
  canonical_of_padded canonicalInput6869 canonicalOutput6869 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput6870 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, -2, 0, 3, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput6870 : ExponentCode := normalNode10000

theorem canonicalSound6870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6870.moment H = canonicalOutput6870.moment H :=
  canonical_of_padded canonicalInput6870 canonicalOutput6870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput6871 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 3, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6871 : ExponentCode := normalNode8054

theorem canonicalSound6871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6871.moment H = canonicalOutput6871.moment H :=
  canonical_of_padded canonicalInput6871 canonicalOutput6871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput6872 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![-2, 0, 1, 2, -1], ![2, -2, 1, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6872 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code194

theorem canonicalSound6872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6872.moment H = canonicalOutput6872.moment H :=
  canonical_of_padded canonicalInput6872 canonicalOutput6872 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6873 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![-2, 0, 1, 2, -1], ![2, -2, 1, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6873 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code195

theorem canonicalSound6873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6873.moment H = canonicalOutput6873.moment H :=
  canonical_of_padded canonicalInput6873 canonicalOutput6873 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6874 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![-1, -1, 1, 1, 0], ![0, 2, -2, 1, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput6874 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound6874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6874.moment H = canonicalOutput6874.moment H :=
  canonical_of_padded canonicalInput6874 canonicalOutput6874 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6875 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![-1, 0, 0, 2, -1], ![1, -2, 2, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6875 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code572

theorem canonicalSound6875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6875.moment H = canonicalOutput6875.moment H :=
  canonical_of_padded canonicalInput6875 canonicalOutput6875 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6876 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![-1, 0, 0, 2, -1], ![1, -2, 2, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6876 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code573

theorem canonicalSound6876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6876.moment H = canonicalOutput6876.moment H :=
  canonical_of_padded canonicalInput6876 canonicalOutput6876 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6877 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6877 : ExponentCode := normalNode10757

theorem canonicalSound6877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6877.moment H = canonicalOutput6877.moment H :=
  canonical_of_padded canonicalInput6877 canonicalOutput6877 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput6878 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6878 : ExponentCode := normalNode8142

theorem canonicalSound6878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6878.moment H = canonicalOutput6878.moment H :=
  canonical_of_padded canonicalInput6878 canonicalOutput6878 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6879 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 0, 2, -1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6879 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code838

theorem canonicalSound6879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6879.moment H = canonicalOutput6879.moment H :=
  canonical_of_padded canonicalInput6879 canonicalOutput6879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6880 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 0, 2, 0, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6880 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code837

theorem canonicalSound6880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6880.moment H = canonicalOutput6880.moment H :=
  canonical_of_padded canonicalInput6880 canonicalOutput6880 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6881 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput6881 : ExponentCode := normalNode8159

theorem canonicalSound6881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6881.moment H = canonicalOutput6881.moment H :=
  canonical_of_padded canonicalInput6881 canonicalOutput6881 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6882 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6882 : ExponentCode := normalNode8121

theorem canonicalSound6882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6882.moment H = canonicalOutput6882.moment H :=
  canonical_of_padded canonicalInput6882 canonicalOutput6882 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6883 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput6883 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code845

theorem canonicalSound6883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6883.moment H = canonicalOutput6883.moment H :=
  canonical_of_padded canonicalInput6883 canonicalOutput6883 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6884 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 0, 2, 0], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput6884 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code846

theorem canonicalSound6884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6884.moment H = canonicalOutput6884.moment H :=
  canonical_of_padded canonicalInput6884 canonicalOutput6884 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6885 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 0, 0, 1, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6885 : ExponentCode := normalNode8157

theorem canonicalSound6885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6885.moment H = canonicalOutput6885.moment H :=
  canonical_of_padded canonicalInput6885 canonicalOutput6885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput6886 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput6886 : ExponentCode := normalNode8158

theorem canonicalSound6886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6886.moment H = canonicalOutput6886.moment H :=
  canonical_of_padded canonicalInput6886 canonicalOutput6886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput6887 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6887 : ExponentCode := normalNode8157

theorem canonicalSound6887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6887.moment H = canonicalOutput6887.moment H :=
  canonical_of_padded canonicalInput6887 canonicalOutput6887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput6888 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6888 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code841

theorem canonicalSound6888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6888.moment H = canonicalOutput6888.moment H :=
  canonical_of_padded canonicalInput6888 canonicalOutput6888 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6889 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6889 : ExponentCode := normalNode10759

theorem canonicalSound6889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6889.moment H = canonicalOutput6889.moment H :=
  canonical_of_padded canonicalInput6889 canonicalOutput6889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput6890 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput6890 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound6890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6890.moment H = canonicalOutput6890.moment H :=
  canonical_of_padded canonicalInput6890 canonicalOutput6890 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6891 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, -2, 2, -1], ![2, 1, 1, -3, -1]]⟩

def canonicalOutput6891 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound6891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6891.moment H = canonicalOutput6891.moment H :=
  canonical_of_padded canonicalInput6891 canonicalOutput6891 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6892 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput6892 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code822

theorem canonicalSound6892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6892.moment H = canonicalOutput6892.moment H :=
  canonical_of_padded canonicalInput6892 canonicalOutput6892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6893 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6893 : ExponentCode := normalNode8288

theorem canonicalSound6893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6893.moment H = canonicalOutput6893.moment H :=
  canonical_of_padded canonicalInput6893 canonicalOutput6893 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput6894 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput6894 : ExponentCode := normalNode8574

theorem canonicalSound6894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6894.moment H = canonicalOutput6894.moment H :=
  canonical_of_padded canonicalInput6894 canonicalOutput6894 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput6895 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6895 : ExponentCode := normalNode8123

theorem canonicalSound6895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6895.moment H = canonicalOutput6895.moment H :=
  canonical_of_padded canonicalInput6895 canonicalOutput6895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput6896 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput6896 : ExponentCode := normalNode8294

theorem canonicalSound6896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6896.moment H = canonicalOutput6896.moment H :=
  canonical_of_padded canonicalInput6896 canonicalOutput6896 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput6897 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput6897 : ExponentCode := normalNode9144

theorem canonicalSound6897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6897.moment H = canonicalOutput6897.moment H :=
  canonical_of_padded canonicalInput6897 canonicalOutput6897 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput6898 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6898 : ExponentCode := normalNode8120

theorem canonicalSound6898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6898.moment H = canonicalOutput6898.moment H :=
  canonical_of_padded canonicalInput6898 canonicalOutput6898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6899 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6899 : ExponentCode := normalNode10766

theorem canonicalSound6899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6899.moment H = canonicalOutput6899.moment H :=
  canonical_of_padded canonicalInput6899 canonicalOutput6899 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput6900 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6900 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code824

theorem canonicalSound6900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6900.moment H = canonicalOutput6900.moment H :=
  canonical_of_padded canonicalInput6900 canonicalOutput6900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6901 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput6901 : ExponentCode := normalNode10759

theorem canonicalSound6901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6901.moment H = canonicalOutput6901.moment H :=
  canonical_of_padded canonicalInput6901 canonicalOutput6901 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput6902 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6902 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code823

theorem canonicalSound6902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6902.moment H = canonicalOutput6902.moment H :=
  canonical_of_padded canonicalInput6902 canonicalOutput6902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6903 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6903 : ExponentCode := normalNode8111

theorem canonicalSound6903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6903.moment H = canonicalOutput6903.moment H :=
  canonical_of_padded canonicalInput6903 canonicalOutput6903 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6904 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6904 : ExponentCode := normalNode8112

theorem canonicalSound6904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6904.moment H = canonicalOutput6904.moment H :=
  canonical_of_padded canonicalInput6904 canonicalOutput6904 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput6905 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput6905 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound6905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6905.moment H = canonicalOutput6905.moment H :=
  canonical_of_padded canonicalInput6905 canonicalOutput6905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6906 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6906 : ExponentCode := normalNode10759

theorem canonicalSound6906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6906.moment H = canonicalOutput6906.moment H :=
  canonical_of_padded canonicalInput6906 canonicalOutput6906 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation71⟩ (by decide +kernel) hH

def canonicalInput6907 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 1, 0], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6907 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound6907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6907.moment H = canonicalOutput6907.moment H :=
  canonical_of_padded canonicalInput6907 canonicalOutput6907 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6908 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6908 : ExponentCode := normalNode8106

theorem canonicalSound6908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6908.moment H = canonicalOutput6908.moment H :=
  canonical_of_padded canonicalInput6908 canonicalOutput6908 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6909 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput6909 : ExponentCode := normalNode8569

theorem canonicalSound6909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6909.moment H = canonicalOutput6909.moment H :=
  canonical_of_padded canonicalInput6909 canonicalOutput6909 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput6910 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput6910 : ExponentCode := normalNode9142

theorem canonicalSound6910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6910.moment H = canonicalOutput6910.moment H :=
  canonical_of_padded canonicalInput6910 canonicalOutput6910 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput6911 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -2, 1, 2, -1], ![1, 1, -2, 1, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput6911 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound6911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6911.moment H = canonicalOutput6911.moment H :=
  canonical_of_padded canonicalInput6911 canonicalOutput6911 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
