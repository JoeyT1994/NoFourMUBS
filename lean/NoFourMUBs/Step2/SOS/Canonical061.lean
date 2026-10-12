import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3904 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 2, 3, -5], ![2, -1, -1, 0]]⟩

def canonicalOutput3904 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code410

theorem canonicalSound3904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3904.moment H = canonicalOutput3904.moment H :=
  canonical_of_padded canonicalInput3904 canonicalOutput3904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3905 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput3905 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1233⟩

theorem canonicalSound3905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3905.moment H = canonicalOutput3905.moment H :=
  canonical_of_padded canonicalInput3905 canonicalOutput3905 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3906 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput3906 : ExponentCode := normalNode6729

theorem canonicalSound3906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3906.moment H = canonicalOutput3906.moment H :=
  canonical_of_padded canonicalInput3906 canonicalOutput3906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3907 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput3907 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node763⟩

theorem canonicalSound3907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3907.moment H = canonicalOutput3907.moment H :=
  canonical_of_padded canonicalInput3907 canonicalOutput3907 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3908 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput3908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound3908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3908.moment H = canonicalOutput3908.moment H :=
  canonical_of_padded canonicalInput3908 canonicalOutput3908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3909 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 0, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput3909 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node792⟩

theorem canonicalSound3909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3909.moment H = canonicalOutput3909.moment H :=
  canonical_of_padded canonicalInput3909 canonicalOutput3909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3910 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput3910 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node792⟩

theorem canonicalSound3910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3910.moment H = canonicalOutput3910.moment H :=
  canonical_of_padded canonicalInput3910 canonicalOutput3910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3911 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 1, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput3911 : ExponentCode := normalNode6729

theorem canonicalSound3911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3911.moment H = canonicalOutput3911.moment H :=
  canonical_of_padded canonicalInput3911 canonicalOutput3911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3912 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, 2, -1, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput3912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code456

theorem canonicalSound3912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3912.moment H = canonicalOutput3912.moment H :=
  canonical_of_padded canonicalInput3912 canonicalOutput3912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3913 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3913 : ExponentCode := normalNode1759

theorem canonicalSound3913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3913.moment H = canonicalOutput3913.moment H :=
  canonical_of_padded canonicalInput3913 canonicalOutput3913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3914 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput3914 : ExponentCode := normalNode1781

theorem canonicalSound3914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3914.moment H = canonicalOutput3914.moment H :=
  canonical_of_padded canonicalInput3914 canonicalOutput3914 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3915 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3915 : ExponentCode := normalNode1828

theorem canonicalSound3915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3915.moment H = canonicalOutput3915.moment H :=
  canonical_of_padded canonicalInput3915 canonicalOutput3915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3916 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput3916 : ExponentCode := normalNode1849

theorem canonicalSound3916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3916.moment H = canonicalOutput3916.moment H :=
  canonical_of_padded canonicalInput3916 canonicalOutput3916 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3917 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput3917 : ExponentCode := normalNode6741

theorem canonicalSound3917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3917.moment H = canonicalOutput3917.moment H :=
  canonical_of_padded canonicalInput3917 canonicalOutput3917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3918 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput3918 : ExponentCode := normalNode6738

theorem canonicalSound3918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3918.moment H = canonicalOutput3918.moment H :=
  canonical_of_padded canonicalInput3918 canonicalOutput3918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3919 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3919 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound3919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3919.moment H = canonicalOutput3919.moment H :=
  canonical_of_padded canonicalInput3919 canonicalOutput3919 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3920 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput3920 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node797⟩

theorem canonicalSound3920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3920.moment H = canonicalOutput3920.moment H :=
  canonical_of_padded canonicalInput3920 canonicalOutput3920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3921 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput3921 : ExponentCode := normalNode10509

theorem canonicalSound3921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3921.moment H = canonicalOutput3921.moment H :=
  canonical_of_padded canonicalInput3921 canonicalOutput3921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3922 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput3922 : ExponentCode := normalNode1725

theorem canonicalSound3922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3922.moment H = canonicalOutput3922.moment H :=
  canonical_of_padded canonicalInput3922 canonicalOutput3922 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3923 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput3923 : ExponentCode := normalNode6745

theorem canonicalSound3923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3923.moment H = canonicalOutput3923.moment H :=
  canonical_of_padded canonicalInput3923 canonicalOutput3923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3924 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3924 : ExponentCode := normalNode9893

theorem canonicalSound3924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3924.moment H = canonicalOutput3924.moment H :=
  canonical_of_padded canonicalInput3924 canonicalOutput3924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3925 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput3925 : ExponentCode := normalNode6746

theorem canonicalSound3925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3925.moment H = canonicalOutput3925.moment H :=
  canonical_of_padded canonicalInput3925 canonicalOutput3925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3926 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput3926 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1658⟩

theorem canonicalSound3926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3926.moment H = canonicalOutput3926.moment H :=
  canonical_of_padded canonicalInput3926 canonicalOutput3926 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3927 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput3927 : ExponentCode := normalNode6748

theorem canonicalSound3927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3927.moment H = canonicalOutput3927.moment H :=
  canonical_of_padded canonicalInput3927 canonicalOutput3927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3928 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2410⟩

theorem canonicalSound3928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3928.moment H = canonicalOutput3928.moment H :=
  canonical_of_padded canonicalInput3928 canonicalOutput3928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3929 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3929 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2411⟩

theorem canonicalSound3929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3929.moment H = canonicalOutput3929.moment H :=
  canonical_of_padded canonicalInput3929 canonicalOutput3929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3930 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput3930 : ExponentCode := normalNode6741

theorem canonicalSound3930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3930.moment H = canonicalOutput3930.moment H :=
  canonical_of_padded canonicalInput3930 canonicalOutput3930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3931 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput3931 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound3931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3931.moment H = canonicalOutput3931.moment H :=
  canonical_of_padded canonicalInput3931 canonicalOutput3931 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3932 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput3932 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2418⟩

theorem canonicalSound3932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3932.moment H = canonicalOutput3932.moment H :=
  canonical_of_padded canonicalInput3932 canonicalOutput3932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3933 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput3933 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound3933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3933.moment H = canonicalOutput3933.moment H :=
  canonical_of_padded canonicalInput3933 canonicalOutput3933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3934 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput3934 : ExponentCode := normalNode8956

theorem canonicalSound3934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3934.moment H = canonicalOutput3934.moment H :=
  canonical_of_padded canonicalInput3934 canonicalOutput3934 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3935 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput3935 : ExponentCode := normalNode7872

theorem canonicalSound3935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3935.moment H = canonicalOutput3935.moment H :=
  canonical_of_padded canonicalInput3935 canonicalOutput3935 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3936 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2621⟩

theorem canonicalSound3936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3936.moment H = canonicalOutput3936.moment H :=
  canonical_of_padded canonicalInput3936 canonicalOutput3936 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3937 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput3937 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2416⟩

theorem canonicalSound3937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3937.moment H = canonicalOutput3937.moment H :=
  canonical_of_padded canonicalInput3937 canonicalOutput3937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3938 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput3938 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1199⟩

theorem canonicalSound3938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3938.moment H = canonicalOutput3938.moment H :=
  canonical_of_padded canonicalInput3938 canonicalOutput3938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3939 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3939 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2576⟩

theorem canonicalSound3939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3939.moment H = canonicalOutput3939.moment H :=
  canonical_of_padded canonicalInput3939 canonicalOutput3939 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3940 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3940 : ExponentCode := normalNode6757

theorem canonicalSound3940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3940.moment H = canonicalOutput3940.moment H :=
  canonical_of_padded canonicalInput3940 canonicalOutput3940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3941 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput3941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound3941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3941.moment H = canonicalOutput3941.moment H :=
  canonical_of_padded canonicalInput3941 canonicalOutput3941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3942 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput3942 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1663⟩

theorem canonicalSound3942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3942.moment H = canonicalOutput3942.moment H :=
  canonical_of_padded canonicalInput3942 canonicalOutput3942 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3943 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3943 : ExponentCode := normalNode8962

theorem canonicalSound3943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3943.moment H = canonicalOutput3943.moment H :=
  canonical_of_padded canonicalInput3943 canonicalOutput3943 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3944 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput3944 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1670⟩

theorem canonicalSound3944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3944.moment H = canonicalOutput3944.moment H :=
  canonical_of_padded canonicalInput3944 canonicalOutput3944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3945 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput3945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1456⟩

theorem canonicalSound3945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3945.moment H = canonicalOutput3945.moment H :=
  canonical_of_padded canonicalInput3945 canonicalOutput3945 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3946 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput3946 : ExponentCode := normalNode1993

theorem canonicalSound3946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3946.moment H = canonicalOutput3946.moment H :=
  canonical_of_padded canonicalInput3946 canonicalOutput3946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3947 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput3947 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound3947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3947.moment H = canonicalOutput3947.moment H :=
  canonical_of_padded canonicalInput3947 canonicalOutput3947 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3948 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput3948 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1042⟩

theorem canonicalSound3948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3948.moment H = canonicalOutput3948.moment H :=
  canonical_of_padded canonicalInput3948 canonicalOutput3948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3949 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3949 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound3949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3949.moment H = canonicalOutput3949.moment H :=
  canonical_of_padded canonicalInput3949 canonicalOutput3949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3950 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput3950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound3950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3950.moment H = canonicalOutput3950.moment H :=
  canonical_of_padded canonicalInput3950 canonicalOutput3950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3951 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput3951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node798⟩

theorem canonicalSound3951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3951.moment H = canonicalOutput3951.moment H :=
  canonical_of_padded canonicalInput3951 canonicalOutput3951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3952 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput3952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node798⟩

theorem canonicalSound3952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3952.moment H = canonicalOutput3952.moment H :=
  canonical_of_padded canonicalInput3952 canonicalOutput3952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3953 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, -1, 1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput3953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node797⟩

theorem canonicalSound3953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3953.moment H = canonicalOutput3953.moment H :=
  canonical_of_padded canonicalInput3953 canonicalOutput3953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3954 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3954 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound3954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3954.moment H = canonicalOutput3954.moment H :=
  canonical_of_padded canonicalInput3954 canonicalOutput3954 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3955 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput3955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound3955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3955.moment H = canonicalOutput3955.moment H :=
  canonical_of_padded canonicalInput3955 canonicalOutput3955 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3956 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput3956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound3956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3956.moment H = canonicalOutput3956.moment H :=
  canonical_of_padded canonicalInput3956 canonicalOutput3956 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3957 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput3957 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound3957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3957.moment H = canonicalOutput3957.moment H :=
  canonical_of_padded canonicalInput3957 canonicalOutput3957 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3958 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput3958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound3958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3958.moment H = canonicalOutput3958.moment H :=
  canonical_of_padded canonicalInput3958 canonicalOutput3958 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput3959 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3959 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound3959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3959.moment H = canonicalOutput3959.moment H :=
  canonical_of_padded canonicalInput3959 canonicalOutput3959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3960 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput3960 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1028⟩

theorem canonicalSound3960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3960.moment H = canonicalOutput3960.moment H :=
  canonical_of_padded canonicalInput3960 canonicalOutput3960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3961 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput3961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound3961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3961.moment H = canonicalOutput3961.moment H :=
  canonical_of_padded canonicalInput3961 canonicalOutput3961 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3962 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound3962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3962.moment H = canonicalOutput3962.moment H :=
  canonical_of_padded canonicalInput3962 canonicalOutput3962 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3963 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput3963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound3963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3963.moment H = canonicalOutput3963.moment H :=
  canonical_of_padded canonicalInput3963 canonicalOutput3963 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3964 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput3964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound3964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3964.moment H = canonicalOutput3964.moment H :=
  canonical_of_padded canonicalInput3964 canonicalOutput3964 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3965 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput3965 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound3965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3965.moment H = canonicalOutput3965.moment H :=
  canonical_of_padded canonicalInput3965 canonicalOutput3965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3966 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput3966 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound3966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3966.moment H = canonicalOutput3966.moment H :=
  canonical_of_padded canonicalInput3966 canonicalOutput3966 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3967 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput3967 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound3967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3967.moment H = canonicalOutput3967.moment H :=
  canonical_of_padded canonicalInput3967 canonicalOutput3967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation47⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
