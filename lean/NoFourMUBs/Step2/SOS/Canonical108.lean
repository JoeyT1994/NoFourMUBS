import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6912 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput6912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound6912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6912.moment H = canonicalOutput6912.moment H :=
  canonical_of_padded canonicalInput6912 canonicalOutput6912 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6913 : ExponentCode := ⟨6, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput6913 : ExponentCode := normalNode1449

theorem canonicalSound6913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6913.moment H = canonicalOutput6913.moment H :=
  canonical_of_padded canonicalInput6913 canonicalOutput6913 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6914 : ExponentCode := ⟨6, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput6914 : ExponentCode := normalNode3640

theorem canonicalSound6914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6914.moment H = canonicalOutput6914.moment H :=
  canonical_of_padded canonicalInput6914 canonicalOutput6914 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6915 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 0, 2, -1], ![1, -1, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput6915 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound6915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6915.moment H = canonicalOutput6915.moment H :=
  canonical_of_padded canonicalInput6915 canonicalOutput6915 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6916 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 0, 2, -1], ![2, -1, -2, 0, 1], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput6916 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code905

theorem canonicalSound6916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6916.moment H = canonicalOutput6916.moment H :=
  canonical_of_padded canonicalInput6916 canonicalOutput6916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6917 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 1, 1, -1], ![1, -1, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput6917 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code968

theorem canonicalSound6917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6917.moment H = canonicalOutput6917.moment H :=
  canonical_of_padded canonicalInput6917 canonicalOutput6917 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6918 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6918 : ExponentCode := normalNode8287

theorem canonicalSound6918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6918.moment H = canonicalOutput6918.moment H :=
  canonical_of_padded canonicalInput6918 canonicalOutput6918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation187⟩ (by decide +kernel) hH

def canonicalInput6919 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput6919 : ExponentCode := normalNode10051

theorem canonicalSound6919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6919.moment H = canonicalOutput6919.moment H :=
  canonical_of_padded canonicalInput6919 canonicalOutput6919 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput6920 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6920 : ExponentCode := normalNode10057

theorem canonicalSound6920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6920.moment H = canonicalOutput6920.moment H :=
  canonical_of_padded canonicalInput6920 canonicalOutput6920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput6921 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput6921 : ExponentCode := normalNode8142

theorem canonicalSound6921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6921.moment H = canonicalOutput6921.moment H :=
  canonical_of_padded canonicalInput6921 canonicalOutput6921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput6922 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6922 : ExponentCode := normalNode10456

theorem canonicalSound6922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6922.moment H = canonicalOutput6922.moment H :=
  canonical_of_padded canonicalInput6922 canonicalOutput6922 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput6923 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput6923 : ExponentCode := normalNode8132

theorem canonicalSound6923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6923.moment H = canonicalOutput6923.moment H :=
  canonical_of_padded canonicalInput6923 canonicalOutput6923 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput6924 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![0, 0, 0, 2, -2], ![1, -2, 2, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput6924 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code985

theorem canonicalSound6924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6924.moment H = canonicalOutput6924.moment H :=
  canonical_of_padded canonicalInput6924 canonicalOutput6924 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6925 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 0, 2], ![1, -2, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput6925 : ExponentCode := normalNode10759

theorem canonicalSound6925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6925.moment H = canonicalOutput6925.moment H :=
  canonical_of_padded canonicalInput6925 canonicalOutput6925 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput6926 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 0, 2], ![1, 0, 0, 1, -2], ![0, -3, 2, 1, 0], ![1, 3, -2, -2, 0]]⟩

def canonicalOutput6926 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1178

theorem canonicalSound6926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6926.moment H = canonicalOutput6926.moment H :=
  canonical_of_padded canonicalInput6926 canonicalOutput6926 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6927 : ExponentCode := ⟨5, 6, ![![-2, 0, 0, 0, 2, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 1, 1, -2, -1, 1]]⟩

def canonicalOutput6927 : ExponentCode := normalNode3677

theorem canonicalSound6927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6927.moment H = canonicalOutput6927.moment H :=
  canonical_of_padded canonicalInput6927 canonicalOutput6927 (by decide) (by decide)
    ⟨true, false, canonicalPermutation86, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput6928 : ExponentCode := ⟨5, 6, ![![-2, 0, 0, 0, 2, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![2, 0, 0, 0, -1, -1], ![0, 2, -1, -1, -1, 1]]⟩

def canonicalOutput6928 : ExponentCode := normalNode3672

theorem canonicalSound6928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6928.moment H = canonicalOutput6928.moment H :=
  canonical_of_padded canonicalInput6928 canonicalOutput6928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation87, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6929 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, -1, 1, 1, 1], ![1, 2, -2, -1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput6929 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code146

theorem canonicalSound6929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6929.moment H = canonicalOutput6929.moment H :=
  canonical_of_padded canonicalInput6929 canonicalOutput6929 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6930 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 0, 1, 1, 0], ![2, -2, 1, -1, 0], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6930 : ExponentCode := normalNode823

theorem canonicalSound6930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6930.moment H = canonicalOutput6930.moment H :=
  canonical_of_padded canonicalInput6930 canonicalOutput6930 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6931 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 0, 2, 0, 0], ![2, -2, -1, 1, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput6931 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1515⟩

theorem canonicalSound6931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6931.moment H = canonicalOutput6931.moment H :=
  canonical_of_padded canonicalInput6931 canonicalOutput6931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6932 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 0, 2, 0, 0], ![2, -2, 0, 1, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6932 : ExponentCode := normalNode811

theorem canonicalSound6932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6932.moment H = canonicalOutput6932.moment H :=
  canonical_of_padded canonicalInput6932 canonicalOutput6932 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6933 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 1, 1, -1, 1], ![1, -2, 1, 1, -1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput6933 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code168

theorem canonicalSound6933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6933.moment H = canonicalOutput6933.moment H :=
  canonical_of_padded canonicalInput6933 canonicalOutput6933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6934 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 1, 1, -1, 1], ![2, -2, 1, -1, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput6934 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code213

theorem canonicalSound6934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6934.moment H = canonicalOutput6934.moment H :=
  canonical_of_padded canonicalInput6934 canonicalOutput6934 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6935 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 1, 2, -1, 0], ![1, -2, -1, 1, 1], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput6935 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code172

theorem canonicalSound6935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6935.moment H = canonicalOutput6935.moment H :=
  canonical_of_padded canonicalInput6935 canonicalOutput6935 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6936 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-2, 1, 2, -1, 0], ![2, -2, 0, -1, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput6936 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code215

theorem canonicalSound6936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6936.moment H = canonicalOutput6936.moment H :=
  canonical_of_padded canonicalInput6936 canonicalOutput6936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6937 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, -2, 2, 0, 1], ![1, 1, -2, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput6937 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code528

theorem canonicalSound6937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6937.moment H = canonicalOutput6937.moment H :=
  canonical_of_padded canonicalInput6937 canonicalOutput6937 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6938 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![3, -1, 2, -2, -2]]⟩

def canonicalOutput6938 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code415

theorem canonicalSound6938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6938.moment H = canonicalOutput6938.moment H :=
  canonical_of_padded canonicalInput6938 canonicalOutput6938 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6939 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, -1, 0, 1, 1], ![1, 2, -2, -1, 0], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput6939 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code550

theorem canonicalSound6939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6939.moment H = canonicalOutput6939.moment H :=
  canonical_of_padded canonicalInput6939 canonicalOutput6939 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6940 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, -1, 2, -1, 1], ![0, 2, -1, -1, 0], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput6940 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code776

theorem canonicalSound6940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6940.moment H = canonicalOutput6940.moment H :=
  canonical_of_padded canonicalInput6940 canonicalOutput6940 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6941 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 2, -1, -2, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput6941 : ExponentCode := normalNode2575

theorem canonicalSound6941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6941.moment H = canonicalOutput6941.moment H :=
  canonical_of_padded canonicalInput6941 canonicalOutput6941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6942 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, -1, 1], ![0, 2, -2, 1, -1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput6942 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code457

theorem canonicalSound6942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6942.moment H = canonicalOutput6942.moment H :=
  canonical_of_padded canonicalInput6942 canonicalOutput6942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6943 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, -1, 1], ![1, -2, 1, 1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6943 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code574

theorem canonicalSound6943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6943.moment H = canonicalOutput6943.moment H :=
  canonical_of_padded canonicalInput6943 canonicalOutput6943 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6944 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, -1, 1], ![1, 2, -2, -1, 0], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput6944 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code582

theorem canonicalSound6944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6944.moment H = canonicalOutput6944.moment H :=
  canonical_of_padded canonicalInput6944 canonicalOutput6944 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6945 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, 1, -1], ![1, -2, 1, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6945 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code574

theorem canonicalSound6945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6945.moment H = canonicalOutput6945.moment H :=
  canonical_of_padded canonicalInput6945 canonicalOutput6945 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6946 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, 1, -1], ![1, -2, 1, 0, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6946 : ExponentCode := normalNode2613

theorem canonicalSound6946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6946.moment H = canonicalOutput6946.moment H :=
  canonical_of_padded canonicalInput6946 canonicalOutput6946 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6947 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 1, 1, -1], ![2, -2, 1, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput6947 : ExponentCode := normalNode2768

theorem canonicalSound6947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6947.moment H = canonicalOutput6947.moment H :=
  canonical_of_padded canonicalInput6947 canonicalOutput6947 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6948 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 2, -1, 0], ![1, -2, -1, 1, 1], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput6948 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code576

theorem canonicalSound6948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6948.moment H = canonicalOutput6948.moment H :=
  canonical_of_padded canonicalInput6948 canonicalOutput6948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6949 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 2, 0, -1], ![1, -2, -1, 1, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput6949 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code576

theorem canonicalSound6949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6949.moment H = canonicalOutput6949.moment H :=
  canonical_of_padded canonicalInput6949 canonicalOutput6949 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6950 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 2, 0, -1], ![1, -2, 0, 1, 0], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6950 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1760⟩

theorem canonicalSound6950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6950.moment H = canonicalOutput6950.moment H :=
  canonical_of_padded canonicalInput6950 canonicalOutput6950 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6951 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 2, 0, -1], ![2, -2, -1, 1, 0], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput6951 : ExponentCode := normalNode2781

theorem canonicalSound6951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6951.moment H = canonicalOutput6951.moment H :=
  canonical_of_padded canonicalInput6951 canonicalOutput6951 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6952 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 0, 2, 0, -1], ![2, -2, 0, 1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput6952 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code673

theorem canonicalSound6952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6952.moment H = canonicalOutput6952.moment H :=
  canonical_of_padded canonicalInput6952 canonicalOutput6952 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6953 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 1, 1, -2, 1], ![1, -2, 1, 1, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput6953 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound6953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6953.moment H = canonicalOutput6953.moment H :=
  canonical_of_padded canonicalInput6953 canonicalOutput6953 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6954 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![-1, 1, 2, -2, 0], ![1, -2, -1, 1, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput6954 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code605

theorem canonicalSound6954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6954.moment H = canonicalOutput6954.moment H :=
  canonical_of_padded canonicalInput6954 canonicalOutput6954 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6955 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -3, 2, 0, 1], ![1, 1, -1, -2, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput6955 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code929

theorem canonicalSound6955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6955.moment H = canonicalOutput6955.moment H :=
  canonical_of_padded canonicalInput6955 canonicalOutput6955 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6956 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -3, 2, 0, 1], ![1, 1, 0, 1, -3], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput6956 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code931

theorem canonicalSound6956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6956.moment H = canonicalOutput6956.moment H :=
  canonical_of_padded canonicalInput6956 canonicalOutput6956 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6957 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6957 : ExponentCode := normalNode7640

theorem canonicalSound6957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6957.moment H = canonicalOutput6957.moment H :=
  canonical_of_padded canonicalInput6957 canonicalOutput6957 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput6958 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput6958 : ExponentCode := normalNode7502

theorem canonicalSound6958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6958.moment H = canonicalOutput6958.moment H :=
  canonical_of_padded canonicalInput6958 canonicalOutput6958 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput6959 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput6959 : ExponentCode := normalNode7485

theorem canonicalSound6959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6959.moment H = canonicalOutput6959.moment H :=
  canonical_of_padded canonicalInput6959 canonicalOutput6959 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput6960 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6960 : ExponentCode := normalNode7635

theorem canonicalSound6960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6960.moment H = canonicalOutput6960.moment H :=
  canonical_of_padded canonicalInput6960 canonicalOutput6960 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput6961 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6961 : ExponentCode := normalNode8130

theorem canonicalSound6961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6961.moment H = canonicalOutput6961.moment H :=
  canonical_of_padded canonicalInput6961 canonicalOutput6961 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput6962 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6962 : ExponentCode := normalNode8395

theorem canonicalSound6962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6962.moment H = canonicalOutput6962.moment H :=
  canonical_of_padded canonicalInput6962 canonicalOutput6962 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput6963 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 1, 1], ![0, 0, 2, -1, -1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput6963 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code840

theorem canonicalSound6963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6963.moment H = canonicalOutput6963.moment H :=
  canonical_of_padded canonicalInput6963 canonicalOutput6963 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6964 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 1, 1], ![0, 1, 2, -2, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput6964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound6964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6964.moment H = canonicalOutput6964.moment H :=
  canonical_of_padded canonicalInput6964 canonicalOutput6964 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6965 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 0, 1, 1], ![1, 0, 2, -2, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput6965 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound6965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6965.moment H = canonicalOutput6965.moment H :=
  canonical_of_padded canonicalInput6965 canonicalOutput6965 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6966 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, -1, 2], ![1, 0, 1, 1, -3], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput6966 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code936

theorem canonicalSound6966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6966.moment H = canonicalOutput6966.moment H :=
  canonical_of_padded canonicalInput6966 canonicalOutput6966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6967 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, -1, 2], ![1, 1, -2, -1, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput6967 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code945

theorem canonicalSound6967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6967.moment H = canonicalOutput6967.moment H :=
  canonical_of_padded canonicalInput6967 canonicalOutput6967 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6968 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, -1, 0, 1], ![1, 1, -1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6968 : ExponentCode := normalNode7558

theorem canonicalSound6968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6968.moment H = canonicalOutput6968.moment H :=
  canonical_of_padded canonicalInput6968 canonicalOutput6968 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput6969 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, -1, 1, 0], ![1, 1, -1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6969 : ExponentCode := normalNode8094

theorem canonicalSound6969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6969.moment H = canonicalOutput6969.moment H :=
  canonical_of_padded canonicalInput6969 canonicalOutput6969 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput6970 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![1, 1, -2, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6970 : ExponentCode := normalNode8394

theorem canonicalSound6970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6970.moment H = canonicalOutput6970.moment H :=
  canonical_of_padded canonicalInput6970 canonicalOutput6970 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput6971 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6971 : ExponentCode := normalNode8126

theorem canonicalSound6971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6971.moment H = canonicalOutput6971.moment H :=
  canonical_of_padded canonicalInput6971 canonicalOutput6971 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6972 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput6972 : ExponentCode := normalNode10763

theorem canonicalSound6972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6972.moment H = canonicalOutput6972.moment H :=
  canonical_of_padded canonicalInput6972 canonicalOutput6972 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput6973 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 1, 1, -2], ![0, 2, -1, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput6973 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code820

theorem canonicalSound6973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6973.moment H = canonicalOutput6973.moment H :=
  canonical_of_padded canonicalInput6973 canonicalOutput6973 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput6974 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 1, 1, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput6974 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code842

theorem canonicalSound6974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6974.moment H = canonicalOutput6974.moment H :=
  canonical_of_padded canonicalInput6974 canonicalOutput6974 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6975 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput6975 : ExponentCode := normalNode10759

theorem canonicalSound6975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6975.moment H = canonicalOutput6975.moment H :=
  canonical_of_padded canonicalInput6975 canonicalOutput6975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
