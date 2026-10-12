import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3840 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput3840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound3840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3840.moment H = canonicalOutput3840.moment H :=
  canonical_of_padded canonicalInput3840 canonicalOutput3840 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3841 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput3841 : ExponentCode := normalNode1774

theorem canonicalSound3841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3841.moment H = canonicalOutput3841.moment H :=
  canonical_of_padded canonicalInput3841 canonicalOutput3841 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3842 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput3842 : ExponentCode := normalNode1782

theorem canonicalSound3842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3842.moment H = canonicalOutput3842.moment H :=
  canonical_of_padded canonicalInput3842 canonicalOutput3842 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3843 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput3843 : ExponentCode := normalNode3493

theorem canonicalSound3843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3843.moment H = canonicalOutput3843.moment H :=
  canonical_of_padded canonicalInput3843 canonicalOutput3843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3844 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3844 : ExponentCode := normalNode1861

theorem canonicalSound3844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3844.moment H = canonicalOutput3844.moment H :=
  canonical_of_padded canonicalInput3844 canonicalOutput3844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3845 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput3845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound3845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3845.moment H = canonicalOutput3845.moment H :=
  canonical_of_padded canonicalInput3845 canonicalOutput3845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3846 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput3846 : ExponentCode := normalNode1865

theorem canonicalSound3846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3846.moment H = canonicalOutput3846.moment H :=
  canonical_of_padded canonicalInput3846 canonicalOutput3846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3847 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3847 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound3847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3847.moment H = canonicalOutput3847.moment H :=
  canonical_of_padded canonicalInput3847 canonicalOutput3847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3848 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput3848 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code395

theorem canonicalSound3848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3848.moment H = canonicalOutput3848.moment H :=
  canonical_of_padded canonicalInput3848 canonicalOutput3848 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3849 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3849 : ExponentCode := normalNode3390

theorem canonicalSound3849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3849.moment H = canonicalOutput3849.moment H :=
  canonical_of_padded canonicalInput3849 canonicalOutput3849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput3850 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput3850 : ExponentCode := normalNode1869

theorem canonicalSound3850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3850.moment H = canonicalOutput3850.moment H :=
  canonical_of_padded canonicalInput3850 canonicalOutput3850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3851 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput3851 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound3851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3851.moment H = canonicalOutput3851.moment H :=
  canonical_of_padded canonicalInput3851 canonicalOutput3851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3852 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput3852 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1950⟩

theorem canonicalSound3852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3852.moment H = canonicalOutput3852.moment H :=
  canonical_of_padded canonicalInput3852 canonicalOutput3852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3853 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput3853 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound3853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3853.moment H = canonicalOutput3853.moment H :=
  canonical_of_padded canonicalInput3853 canonicalOutput3853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3854 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput3854 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound3854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3854.moment H = canonicalOutput3854.moment H :=
  canonical_of_padded canonicalInput3854 canonicalOutput3854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3855 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput3855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound3855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3855.moment H = canonicalOutput3855.moment H :=
  canonical_of_padded canonicalInput3855 canonicalOutput3855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3856 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3856 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound3856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3856.moment H = canonicalOutput3856.moment H :=
  canonical_of_padded canonicalInput3856 canonicalOutput3856 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3857 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput3857 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound3857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3857.moment H = canonicalOutput3857.moment H :=
  canonical_of_padded canonicalInput3857 canonicalOutput3857 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3858 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput3858 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code300

theorem canonicalSound3858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3858.moment H = canonicalOutput3858.moment H :=
  canonical_of_padded canonicalInput3858 canonicalOutput3858 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3859 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 2, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3859 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound3859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3859.moment H = canonicalOutput3859.moment H :=
  canonical_of_padded canonicalInput3859 canonicalOutput3859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3860 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 3, -3, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput3860 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound3860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3860.moment H = canonicalOutput3860.moment H :=
  canonical_of_padded canonicalInput3860 canonicalOutput3860 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3861 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3861 : ExponentCode := normalNode1880

theorem canonicalSound3861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3861.moment H = canonicalOutput3861.moment H :=
  canonical_of_padded canonicalInput3861 canonicalOutput3861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3862 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3862 : ExponentCode := normalNode1890

theorem canonicalSound3862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3862.moment H = canonicalOutput3862.moment H :=
  canonical_of_padded canonicalInput3862 canonicalOutput3862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3863 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput3863 : ExponentCode := normalNode6713

theorem canonicalSound3863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3863.moment H = canonicalOutput3863.moment H :=
  canonical_of_padded canonicalInput3863 canonicalOutput3863 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput3864 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput3864 : ExponentCode := normalNode1886

theorem canonicalSound3864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3864.moment H = canonicalOutput3864.moment H :=
  canonical_of_padded canonicalInput3864 canonicalOutput3864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3865 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput3865 : ExponentCode := normalNode1895

theorem canonicalSound3865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3865.moment H = canonicalOutput3865.moment H :=
  canonical_of_padded canonicalInput3865 canonicalOutput3865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3866 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput3866 : ExponentCode := normalNode1894

theorem canonicalSound3866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3866.moment H = canonicalOutput3866.moment H :=
  canonical_of_padded canonicalInput3866 canonicalOutput3866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3867 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput3867 : ExponentCode := normalNode6785

theorem canonicalSound3867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3867.moment H = canonicalOutput3867.moment H :=
  canonical_of_padded canonicalInput3867 canonicalOutput3867 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3868 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3868 : ExponentCode := normalNode1898

theorem canonicalSound3868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3868.moment H = canonicalOutput3868.moment H :=
  canonical_of_padded canonicalInput3868 canonicalOutput3868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3869 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput3869 : ExponentCode := normalNode1901

theorem canonicalSound3869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3869.moment H = canonicalOutput3869.moment H :=
  canonical_of_padded canonicalInput3869 canonicalOutput3869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3870 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput3870 : ExponentCode := normalNode7842

theorem canonicalSound3870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3870.moment H = canonicalOutput3870.moment H :=
  canonical_of_padded canonicalInput3870 canonicalOutput3870 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3871 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput3871 : ExponentCode := normalNode6714

theorem canonicalSound3871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3871.moment H = canonicalOutput3871.moment H :=
  canonical_of_padded canonicalInput3871 canonicalOutput3871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput3872 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput3872 : ExponentCode := normalNode6703

theorem canonicalSound3872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3872.moment H = canonicalOutput3872.moment H :=
  canonical_of_padded canonicalInput3872 canonicalOutput3872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3873 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput3873 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound3873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3873.moment H = canonicalOutput3873.moment H :=
  canonical_of_padded canonicalInput3873 canonicalOutput3873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3874 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput3874 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code445

theorem canonicalSound3874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3874.moment H = canonicalOutput3874.moment H :=
  canonical_of_padded canonicalInput3874 canonicalOutput3874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3875 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 2, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3875 : ExponentCode := normalNode6703

theorem canonicalSound3875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3875.moment H = canonicalOutput3875.moment H :=
  canonical_of_padded canonicalInput3875 canonicalOutput3875 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput3876 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3876 : ExponentCode := normalNode6714

theorem canonicalSound3876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3876.moment H = canonicalOutput3876.moment H :=
  canonical_of_padded canonicalInput3876 canonicalOutput3876 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput3877 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 2, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput3877 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound3877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3877.moment H = canonicalOutput3877.moment H :=
  canonical_of_padded canonicalInput3877 canonicalOutput3877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3878 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 3, -2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput3878 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code442

theorem canonicalSound3878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3878.moment H = canonicalOutput3878.moment H :=
  canonical_of_padded canonicalInput3878 canonicalOutput3878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3879 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3879 : ExponentCode := normalNode1908

theorem canonicalSound3879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3879.moment H = canonicalOutput3879.moment H :=
  canonical_of_padded canonicalInput3879 canonicalOutput3879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3880 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3880 : ExponentCode := normalNode1907

theorem canonicalSound3880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3880.moment H = canonicalOutput3880.moment H :=
  canonical_of_padded canonicalInput3880 canonicalOutput3880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3881 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput3881 : ExponentCode := normalNode3033

theorem canonicalSound3881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3881.moment H = canonicalOutput3881.moment H :=
  canonical_of_padded canonicalInput3881 canonicalOutput3881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3882 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput3882 : ExponentCode := normalNode3034

theorem canonicalSound3882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3882.moment H = canonicalOutput3882.moment H :=
  canonical_of_padded canonicalInput3882 canonicalOutput3882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3883 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput3883 : ExponentCode := normalNode1912

theorem canonicalSound3883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3883.moment H = canonicalOutput3883.moment H :=
  canonical_of_padded canonicalInput3883 canonicalOutput3883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3884 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput3884 : ExponentCode := normalNode1914

theorem canonicalSound3884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3884.moment H = canonicalOutput3884.moment H :=
  canonical_of_padded canonicalInput3884 canonicalOutput3884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3885 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput3885 : ExponentCode := normalNode3035

theorem canonicalSound3885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3885.moment H = canonicalOutput3885.moment H :=
  canonical_of_padded canonicalInput3885 canonicalOutput3885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput3886 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput3886 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node399⟩

theorem canonicalSound3886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3886.moment H = canonicalOutput3886.moment H :=
  canonical_of_padded canonicalInput3886 canonicalOutput3886 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput3887 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput3887 : ExponentCode := normalNode6013

theorem canonicalSound3887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3887.moment H = canonicalOutput3887.moment H :=
  canonical_of_padded canonicalInput3887 canonicalOutput3887 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput3888 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput3888 : ExponentCode := normalNode11217

theorem canonicalSound3888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3888.moment H = canonicalOutput3888.moment H :=
  canonical_of_padded canonicalInput3888 canonicalOutput3888 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput3889 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 1, -2, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput3889 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code134

theorem canonicalSound3889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3889.moment H = canonicalOutput3889.moment H :=
  canonical_of_padded canonicalInput3889 canonicalOutput3889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput3890 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 1, -1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput3890 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code451

theorem canonicalSound3890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3890.moment H = canonicalOutput3890.moment H :=
  canonical_of_padded canonicalInput3890 canonicalOutput3890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3891 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 2, -4, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput3891 : ExponentCode := normalNode11217

theorem canonicalSound3891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3891.moment H = canonicalOutput3891.moment H :=
  canonical_of_padded canonicalInput3891 canonicalOutput3891 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput3892 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 2, -2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput3892 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code450

theorem canonicalSound3892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3892.moment H = canonicalOutput3892.moment H :=
  canonical_of_padded canonicalInput3892 canonicalOutput3892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3893 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput3893 : ExponentCode := normalNode6730

theorem canonicalSound3893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3893.moment H = canonicalOutput3893.moment H :=
  canonical_of_padded canonicalInput3893 canonicalOutput3893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3894 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput3894 : ExponentCode := normalNode6733

theorem canonicalSound3894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3894.moment H = canonicalOutput3894.moment H :=
  canonical_of_padded canonicalInput3894 canonicalOutput3894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3895 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput3895 : ExponentCode := normalNode1208

theorem canonicalSound3895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3895.moment H = canonicalOutput3895.moment H :=
  canonical_of_padded canonicalInput3895 canonicalOutput3895 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3896 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput3896 : ExponentCode := normalNode6728

theorem canonicalSound3896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3896.moment H = canonicalOutput3896.moment H :=
  canonical_of_padded canonicalInput3896 canonicalOutput3896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3897 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput3897 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2406⟩

theorem canonicalSound3897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3897.moment H = canonicalOutput3897.moment H :=
  canonical_of_padded canonicalInput3897 canonicalOutput3897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3898 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput3898 : ExponentCode := normalNode6728

theorem canonicalSound3898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3898.moment H = canonicalOutput3898.moment H :=
  canonical_of_padded canonicalInput3898 canonicalOutput3898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3899 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput3899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩

theorem canonicalSound3899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3899.moment H = canonicalOutput3899.moment H :=
  canonical_of_padded canonicalInput3899 canonicalOutput3899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3900 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3900 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2405⟩

theorem canonicalSound3900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3900.moment H = canonicalOutput3900.moment H :=
  canonical_of_padded canonicalInput3900 canonicalOutput3900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3901 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3901 : ExponentCode := normalNode6727

theorem canonicalSound3901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3901.moment H = canonicalOutput3901.moment H :=
  canonical_of_padded canonicalInput3901 canonicalOutput3901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3902 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3902 : ExponentCode := normalNode6727

theorem canonicalSound3902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3902.moment H = canonicalOutput3902.moment H :=
  canonical_of_padded canonicalInput3902 canonicalOutput3902 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3903 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![2, 0, -1, -1]]⟩

def canonicalOutput3903 : ExponentCode := normalNode6732

theorem canonicalSound3903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3903.moment H = canonicalOutput3903.moment H :=
  canonical_of_padded canonicalInput3903 canonicalOutput3903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
