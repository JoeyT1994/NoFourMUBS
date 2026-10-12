import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4032 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4032 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound4032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4032.moment H = canonicalOutput4032.moment H :=
  canonical_of_padded canonicalInput4032 canonicalOutput4032 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4033 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput4033 : ExponentCode := normalNode2013

theorem canonicalSound4033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4033.moment H = canonicalOutput4033.moment H :=
  canonical_of_padded canonicalInput4033 canonicalOutput4033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4034 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput4034 : ExponentCode := normalNode3454

theorem canonicalSound4034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4034.moment H = canonicalOutput4034.moment H :=
  canonical_of_padded canonicalInput4034 canonicalOutput4034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4035 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput4035 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node806⟩

theorem canonicalSound4035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4035.moment H = canonicalOutput4035.moment H :=
  canonical_of_padded canonicalInput4035 canonicalOutput4035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4036 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput4036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1696⟩

theorem canonicalSound4036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4036.moment H = canonicalOutput4036.moment H :=
  canonical_of_padded canonicalInput4036 canonicalOutput4036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4037 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput4037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2426⟩

theorem canonicalSound4037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4037.moment H = canonicalOutput4037.moment H :=
  canonical_of_padded canonicalInput4037 canonicalOutput4037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4038 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput4038 : ExponentCode := normalNode6784

theorem canonicalSound4038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4038.moment H = canonicalOutput4038.moment H :=
  canonical_of_padded canonicalInput4038 canonicalOutput4038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4039 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 3, -3, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput4039 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code391

theorem canonicalSound4039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4039.moment H = canonicalOutput4039.moment H :=
  canonical_of_padded canonicalInput4039 canonicalOutput4039 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4040 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4040 : ExponentCode := normalNode3395

theorem canonicalSound4040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4040.moment H = canonicalOutput4040.moment H :=
  canonical_of_padded canonicalInput4040 canonicalOutput4040 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4041 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![0, 3, -2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput4041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code764

theorem canonicalSound4041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4041.moment H = canonicalOutput4041.moment H :=
  canonical_of_padded canonicalInput4041 canonicalOutput4041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4042 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput4042 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound4042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4042.moment H = canonicalOutput4042.moment H :=
  canonical_of_padded canonicalInput4042 canonicalOutput4042 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4043 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput4043 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩

theorem canonicalSound4043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4043.moment H = canonicalOutput4043.moment H :=
  canonical_of_padded canonicalInput4043 canonicalOutput4043 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4044 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4044 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code420

theorem canonicalSound4044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4044.moment H = canonicalOutput4044.moment H :=
  canonical_of_padded canonicalInput4044 canonicalOutput4044 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput4045 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput4045 : ExponentCode := normalNode6783

theorem canonicalSound4045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4045.moment H = canonicalOutput4045.moment H :=
  canonical_of_padded canonicalInput4045 canonicalOutput4045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4046 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4046 : ExponentCode := normalNode6783

theorem canonicalSound4046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4046.moment H = canonicalOutput4046.moment H :=
  canonical_of_padded canonicalInput4046 canonicalOutput4046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4047 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, 2, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput4047 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code420

theorem canonicalSound4047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4047.moment H = canonicalOutput4047.moment H :=
  canonical_of_padded canonicalInput4047 canonicalOutput4047 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4048 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, 3, -3, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput4048 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound4048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4048.moment H = canonicalOutput4048.moment H :=
  canonical_of_padded canonicalInput4048 canonicalOutput4048 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4049 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4049 : ExponentCode := normalNode6789

theorem canonicalSound4049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4049.moment H = canonicalOutput4049.moment H :=
  canonical_of_padded canonicalInput4049 canonicalOutput4049 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4050 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4050 : ExponentCode := normalNode6789

theorem canonicalSound4050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4050.moment H = canonicalOutput4050.moment H :=
  canonical_of_padded canonicalInput4050 canonicalOutput4050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4051 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput4051 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩

theorem canonicalSound4051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4051.moment H = canonicalOutput4051.moment H :=
  canonical_of_padded canonicalInput4051 canonicalOutput4051 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4052 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4052 : ExponentCode := normalNode6788

theorem canonicalSound4052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4052.moment H = canonicalOutput4052.moment H :=
  canonical_of_padded canonicalInput4052 canonicalOutput4052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4053 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4053 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2430⟩

theorem canonicalSound4053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4053.moment H = canonicalOutput4053.moment H :=
  canonical_of_padded canonicalInput4053 canonicalOutput4053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4054 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput4054 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩

theorem canonicalSound4054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4054.moment H = canonicalOutput4054.moment H :=
  canonical_of_padded canonicalInput4054 canonicalOutput4054 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4055 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4055 : ExponentCode := normalNode6787

theorem canonicalSound4055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4055.moment H = canonicalOutput4055.moment H :=
  canonical_of_padded canonicalInput4055 canonicalOutput4055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4056 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4056 : ExponentCode := normalNode6787

theorem canonicalSound4056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4056.moment H = canonicalOutput4056.moment H :=
  canonical_of_padded canonicalInput4056 canonicalOutput4056 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4057 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput4057 : ExponentCode := normalNode6793

theorem canonicalSound4057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4057.moment H = canonicalOutput4057.moment H :=
  canonical_of_padded canonicalInput4057 canonicalOutput4057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4058 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput4058 : ExponentCode := normalNode9111

theorem canonicalSound4058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4058.moment H = canonicalOutput4058.moment H :=
  canonical_of_padded canonicalInput4058 canonicalOutput4058 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4059 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput4059 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩

theorem canonicalSound4059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4059.moment H = canonicalOutput4059.moment H :=
  canonical_of_padded canonicalInput4059 canonicalOutput4059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4060 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput4060 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node810⟩

theorem canonicalSound4060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4060.moment H = canonicalOutput4060.moment H :=
  canonical_of_padded canonicalInput4060 canonicalOutput4060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4061 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput4061 : ExponentCode := normalNode6790

theorem canonicalSound4061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4061.moment H = canonicalOutput4061.moment H :=
  canonical_of_padded canonicalInput4061 canonicalOutput4061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4062 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4062 : ExponentCode := normalNode6790

theorem canonicalSound4062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4062.moment H = canonicalOutput4062.moment H :=
  canonical_of_padded canonicalInput4062 canonicalOutput4062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4063 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4063 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node810⟩

theorem canonicalSound4063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4063.moment H = canonicalOutput4063.moment H :=
  canonical_of_padded canonicalInput4063 canonicalOutput4063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4064 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput4064 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩

theorem canonicalSound4064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4064.moment H = canonicalOutput4064.moment H :=
  canonical_of_padded canonicalInput4064 canonicalOutput4064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4065 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 3, -3], ![1, 2, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput4065 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code469

theorem canonicalSound4065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4065.moment H = canonicalOutput4065.moment H :=
  canonical_of_padded canonicalInput4065 canonicalOutput4065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4066 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput4066 : ExponentCode := normalNode6753

theorem canonicalSound4066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4066.moment H = canonicalOutput4066.moment H :=
  canonical_of_padded canonicalInput4066 canonicalOutput4066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4067 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput4067 : ExponentCode := normalNode6752

theorem canonicalSound4067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4067.moment H = canonicalOutput4067.moment H :=
  canonical_of_padded canonicalInput4067 canonicalOutput4067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4068 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4068 : ExponentCode := normalNode6797

theorem canonicalSound4068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4068.moment H = canonicalOutput4068.moment H :=
  canonical_of_padded canonicalInput4068 canonicalOutput4068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4069 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput4069 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node814⟩

theorem canonicalSound4069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4069.moment H = canonicalOutput4069.moment H :=
  canonical_of_padded canonicalInput4069 canonicalOutput4069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4070 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 0, -1, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput4070 : ExponentCode := normalNode6753

theorem canonicalSound4070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4070.moment H = canonicalOutput4070.moment H :=
  canonical_of_padded canonicalInput4070 canonicalOutput4070 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4071 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4071 : ExponentCode := normalNode6796

theorem canonicalSound4071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4071.moment H = canonicalOutput4071.moment H :=
  canonical_of_padded canonicalInput4071 canonicalOutput4071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4072 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4072 : ExponentCode := normalNode6796

theorem canonicalSound4072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4072.moment H = canonicalOutput4072.moment H :=
  canonical_of_padded canonicalInput4072 canonicalOutput4072 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4073 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, 0, -3, 1]]⟩

def canonicalOutput4073 : ExponentCode := normalNode6799

theorem canonicalSound4073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4073.moment H = canonicalOutput4073.moment H :=
  canonical_of_padded canonicalInput4073 canonicalOutput4073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4074 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 2, -4, 1]]⟩

def canonicalOutput4074 : ExponentCode := normalNode9119

theorem canonicalSound4074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4074.moment H = canonicalOutput4074.moment H :=
  canonical_of_padded canonicalInput4074 canonicalOutput4074 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4075 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, 0, -2, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput4075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node813⟩

theorem canonicalSound4075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4075.moment H = canonicalOutput4075.moment H :=
  canonical_of_padded canonicalInput4075 canonicalOutput4075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4076 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput4076 : ExponentCode := normalNode6798

theorem canonicalSound4076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4076.moment H = canonicalOutput4076.moment H :=
  canonical_of_padded canonicalInput4076 canonicalOutput4076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4077 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, 1, -3, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4077 : ExponentCode := normalNode6798

theorem canonicalSound4077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4077.moment H = canonicalOutput4077.moment H :=
  canonical_of_padded canonicalInput4077 canonicalOutput4077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4078 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, 1, -2, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4078 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node813⟩

theorem canonicalSound4078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4078.moment H = canonicalOutput4078.moment H :=
  canonical_of_padded canonicalInput4078 canonicalOutput4078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4079 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 0, 4, -4], ![1, 2, -3, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput4079 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code472

theorem canonicalSound4079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4079.moment H = canonicalOutput4079.moment H :=
  canonical_of_padded canonicalInput4079 canonicalOutput4079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4080 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput4080 : ExponentCode := normalNode9473

theorem canonicalSound4080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4080.moment H = canonicalOutput4080.moment H :=
  canonical_of_padded canonicalInput4080 canonicalOutput4080 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4081 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput4081 : ExponentCode := normalNode9445

theorem canonicalSound4081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4081.moment H = canonicalOutput4081.moment H :=
  canonical_of_padded canonicalInput4081 canonicalOutput4081 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4082 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput4082 : ExponentCode := normalNode6807

theorem canonicalSound4082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4082.moment H = canonicalOutput4082.moment H :=
  canonical_of_padded canonicalInput4082 canonicalOutput4082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4083 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput4083 : ExponentCode := normalNode6807

theorem canonicalSound4083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4083.moment H = canonicalOutput4083.moment H :=
  canonical_of_padded canonicalInput4083 canonicalOutput4083 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4084 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput4084 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound4084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4084.moment H = canonicalOutput4084.moment H :=
  canonical_of_padded canonicalInput4084 canonicalOutput4084 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4085 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput4085 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound4085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4085.moment H = canonicalOutput4085.moment H :=
  canonical_of_padded canonicalInput4085 canonicalOutput4085 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4086 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput4086 : ExponentCode := normalNode2095

theorem canonicalSound4086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4086.moment H = canonicalOutput4086.moment H :=
  canonical_of_padded canonicalInput4086 canonicalOutput4086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4087 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4087 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1713⟩

theorem canonicalSound4087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4087.moment H = canonicalOutput4087.moment H :=
  canonical_of_padded canonicalInput4087 canonicalOutput4087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4088 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 2, -1, -1], ![2, -2, 3, -3]]⟩

def canonicalOutput4088 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code456

theorem canonicalSound4088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4088.moment H = canonicalOutput4088.moment H :=
  canonical_of_padded canonicalInput4088 canonicalOutput4088 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4089 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput4089 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node411⟩

theorem canonicalSound4089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4089.moment H = canonicalOutput4089.moment H :=
  canonical_of_padded canonicalInput4089 canonicalOutput4089 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4090 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4090 : ExponentCode := normalNode3190

theorem canonicalSound4090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4090.moment H = canonicalOutput4090.moment H :=
  canonical_of_padded canonicalInput4090 canonicalOutput4090 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4091 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4091 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound4091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4091.moment H = canonicalOutput4091.moment H :=
  canonical_of_padded canonicalInput4091 canonicalOutput4091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4092 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput4092 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code485

theorem canonicalSound4092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4092.moment H = canonicalOutput4092.moment H :=
  canonical_of_padded canonicalInput4092 canonicalOutput4092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4093 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput4093 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound4093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4093.moment H = canonicalOutput4093.moment H :=
  canonical_of_padded canonicalInput4093 canonicalOutput4093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4094 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, 1, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput4094 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code482

theorem canonicalSound4094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4094.moment H = canonicalOutput4094.moment H :=
  canonical_of_padded canonicalInput4094 canonicalOutput4094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4095 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput4095 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code481

theorem canonicalSound4095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4095.moment H = canonicalOutput4095.moment H :=
  canonical_of_padded canonicalInput4095 canonicalOutput4095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
