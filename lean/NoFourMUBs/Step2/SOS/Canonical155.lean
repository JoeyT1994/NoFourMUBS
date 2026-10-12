import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9920 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9920 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound9920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9920.moment H = canonicalOutput9920.moment H :=
  canonical_of_padded canonicalInput9920 canonicalOutput9920 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9921 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9921 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound9921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9921.moment H = canonicalOutput9921.moment H :=
  canonical_of_padded canonicalInput9921 canonicalOutput9921 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9922 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput9922 : ExponentCode := normalNode10997

theorem canonicalSound9922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9922.moment H = canonicalOutput9922.moment H :=
  canonical_of_padded canonicalInput9922 canonicalOutput9922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9923 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9923 : ExponentCode := normalNode4974

theorem canonicalSound9923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9923.moment H = canonicalOutput9923.moment H :=
  canonical_of_padded canonicalInput9923 canonicalOutput9923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9924 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput9924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound9924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9924.moment H = canonicalOutput9924.moment H :=
  canonical_of_padded canonicalInput9924 canonicalOutput9924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9925 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9925 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2216⟩

theorem canonicalSound9925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9925.moment H = canonicalOutput9925.moment H :=
  canonical_of_padded canonicalInput9925 canonicalOutput9925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9926 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9926 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound9926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9926.moment H = canonicalOutput9926.moment H :=
  canonical_of_padded canonicalInput9926 canonicalOutput9926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9927 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput9927 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node593⟩

theorem canonicalSound9927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9927.moment H = canonicalOutput9927.moment H :=
  canonical_of_padded canonicalInput9927 canonicalOutput9927 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9928 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput9928 : ExponentCode := normalNode11051

theorem canonicalSound9928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9928.moment H = canonicalOutput9928.moment H :=
  canonical_of_padded canonicalInput9928 canonicalOutput9928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9929 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput9929 : ExponentCode := normalNode11051

theorem canonicalSound9929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9929.moment H = canonicalOutput9929.moment H :=
  canonical_of_padded canonicalInput9929 canonicalOutput9929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9930 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput9930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node593⟩

theorem canonicalSound9930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9930.moment H = canonicalOutput9930.moment H :=
  canonical_of_padded canonicalInput9930 canonicalOutput9930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9931 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, 1, 0, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput9931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound9931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9931.moment H = canonicalOutput9931.moment H :=
  canonical_of_padded canonicalInput9931 canonicalOutput9931 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9932 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9932 : ExponentCode := normalNode11162

theorem canonicalSound9932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9932.moment H = canonicalOutput9932.moment H :=
  canonical_of_padded canonicalInput9932 canonicalOutput9932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9933 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9933 : ExponentCode := normalNode5456

theorem canonicalSound9933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9933.moment H = canonicalOutput9933.moment H :=
  canonical_of_padded canonicalInput9933 canonicalOutput9933 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9934 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput9934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1342⟩

theorem canonicalSound9934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9934.moment H = canonicalOutput9934.moment H :=
  canonical_of_padded canonicalInput9934 canonicalOutput9934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9935 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput9935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1342⟩

theorem canonicalSound9935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9935.moment H = canonicalOutput9935.moment H :=
  canonical_of_padded canonicalInput9935 canonicalOutput9935 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9936 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput9936 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1188

theorem canonicalSound9936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9936.moment H = canonicalOutput9936.moment H :=
  canonical_of_padded canonicalInput9936 canonicalOutput9936 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9937 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9937 : ExponentCode := normalNode11144

theorem canonicalSound9937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9937.moment H = canonicalOutput9937.moment H :=
  canonical_of_padded canonicalInput9937 canonicalOutput9937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9938 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput9938 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code745

theorem canonicalSound9938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9938.moment H = canonicalOutput9938.moment H :=
  canonical_of_padded canonicalInput9938 canonicalOutput9938 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9939 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput9939 : ExponentCode := normalNode5000

theorem canonicalSound9939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9939.moment H = canonicalOutput9939.moment H :=
  canonical_of_padded canonicalInput9939 canonicalOutput9939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9940 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput9940 : ExponentCode := normalNode7483

theorem canonicalSound9940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9940.moment H = canonicalOutput9940.moment H :=
  canonical_of_padded canonicalInput9940 canonicalOutput9940 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9941 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput9941 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code744

theorem canonicalSound9941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9941.moment H = canonicalOutput9941.moment H :=
  canonical_of_padded canonicalInput9941 canonicalOutput9941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9942 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput9942 : ExponentCode := normalNode7409

theorem canonicalSound9942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9942.moment H = canonicalOutput9942.moment H :=
  canonical_of_padded canonicalInput9942 canonicalOutput9942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9943 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput9943 : ExponentCode := normalNode9039

theorem canonicalSound9943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9943.moment H = canonicalOutput9943.moment H :=
  canonical_of_padded canonicalInput9943 canonicalOutput9943 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9944 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 0, 4, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput9944 : ExponentCode := normalNode9039

theorem canonicalSound9944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9944.moment H = canonicalOutput9944.moment H :=
  canonical_of_padded canonicalInput9944 canonicalOutput9944 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9945 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, -2, 1], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput9945 : ExponentCode := normalNode10896

theorem canonicalSound9945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9945.moment H = canonicalOutput9945.moment H :=
  canonical_of_padded canonicalInput9945 canonicalOutput9945 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput9946 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput9946 : ExponentCode := normalNode10888

theorem canonicalSound9946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9946.moment H = canonicalOutput9946.moment H :=
  canonical_of_padded canonicalInput9946 canonicalOutput9946 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9947 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput9947 : ExponentCode := normalNode7481

theorem canonicalSound9947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9947.moment H = canonicalOutput9947.moment H :=
  canonical_of_padded canonicalInput9947 canonicalOutput9947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9948 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput9948 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩

theorem canonicalSound9948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9948.moment H = canonicalOutput9948.moment H :=
  canonical_of_padded canonicalInput9948 canonicalOutput9948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9949 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput9949 : ExponentCode := normalNode11198

theorem canonicalSound9949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9949.moment H = canonicalOutput9949.moment H :=
  canonical_of_padded canonicalInput9949 canonicalOutput9949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9950 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound9950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9950.moment H = canonicalOutput9950.moment H :=
  canonical_of_padded canonicalInput9950 canonicalOutput9950 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9951 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node820⟩

theorem canonicalSound9951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9951.moment H = canonicalOutput9951.moment H :=
  canonical_of_padded canonicalInput9951 canonicalOutput9951 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9952 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput9952 : ExponentCode := normalNode10303

theorem canonicalSound9952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9952.moment H = canonicalOutput9952.moment H :=
  canonical_of_padded canonicalInput9952 canonicalOutput9952 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9953 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput9953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound9953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9953.moment H = canonicalOutput9953.moment H :=
  canonical_of_padded canonicalInput9953 canonicalOutput9953 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9954 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput9954 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound9954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9954.moment H = canonicalOutput9954.moment H :=
  canonical_of_padded canonicalInput9954 canonicalOutput9954 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9955 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound9955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9955.moment H = canonicalOutput9955.moment H :=
  canonical_of_padded canonicalInput9955 canonicalOutput9955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9956 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput9956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound9956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9956.moment H = canonicalOutput9956.moment H :=
  canonical_of_padded canonicalInput9956 canonicalOutput9956 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9957 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9957 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound9957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9957.moment H = canonicalOutput9957.moment H :=
  canonical_of_padded canonicalInput9957 canonicalOutput9957 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9958 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput9958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩

theorem canonicalSound9958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9958.moment H = canonicalOutput9958.moment H :=
  canonical_of_padded canonicalInput9958 canonicalOutput9958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9959 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 3, -4], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput9959 : ExponentCode := normalNode9128

theorem canonicalSound9959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9959.moment H = canonicalOutput9959.moment H :=
  canonical_of_padded canonicalInput9959 canonicalOutput9959 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9960 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, 1, 3, -4], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput9960 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code996

theorem canonicalSound9960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9960.moment H = canonicalOutput9960.moment H :=
  canonical_of_padded canonicalInput9960 canonicalOutput9960 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9961 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput9961 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1094

theorem canonicalSound9961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9961.moment H = canonicalOutput9961.moment H :=
  canonical_of_padded canonicalInput9961 canonicalOutput9961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9962 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, -1, 2], ![0, 1, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput9962 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1101

theorem canonicalSound9962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9962.moment H = canonicalOutput9962.moment H :=
  canonical_of_padded canonicalInput9962 canonicalOutput9962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9963 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, -1, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput9963 : ExponentCode := normalNode9128

theorem canonicalSound9963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9963.moment H = canonicalOutput9963.moment H :=
  canonical_of_padded canonicalInput9963 canonicalOutput9963 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9964 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, 2, -1], ![0, 1, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1097

theorem canonicalSound9964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9964.moment H = canonicalOutput9964.moment H :=
  canonical_of_padded canonicalInput9964 canonicalOutput9964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9965 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, 3, -2], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9965 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1098

theorem canonicalSound9965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9965.moment H = canonicalOutput9965.moment H :=
  canonical_of_padded canonicalInput9965 canonicalOutput9965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9966 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput9966 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1102

theorem canonicalSound9966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9966.moment H = canonicalOutput9966.moment H :=
  canonical_of_padded canonicalInput9966 canonicalOutput9966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9967 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -2, 4, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9967 : ExponentCode := normalNode10896

theorem canonicalSound9967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9967.moment H = canonicalOutput9967.moment H :=
  canonical_of_padded canonicalInput9967 canonicalOutput9967 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9968 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -1, -1, 1], ![0, -1, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput9968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩

theorem canonicalSound9968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9968.moment H = canonicalOutput9968.moment H :=
  canonical_of_padded canonicalInput9968 canonicalOutput9968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9969 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput9969 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩

theorem canonicalSound9969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9969.moment H = canonicalOutput9969.moment H :=
  canonical_of_padded canonicalInput9969 canonicalOutput9969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9970 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput9970 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1100

theorem canonicalSound9970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9970.moment H = canonicalOutput9970.moment H :=
  canonical_of_padded canonicalInput9970 canonicalOutput9970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9971 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -1, 3, -3], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput9971 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1099

theorem canonicalSound9971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9971.moment H = canonicalOutput9971.moment H :=
  canonical_of_padded canonicalInput9971 canonicalOutput9971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9972 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, -1, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput9972 : ExponentCode := normalNode10888

theorem canonicalSound9972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9972.moment H = canonicalOutput9972.moment H :=
  canonical_of_padded canonicalInput9972 canonicalOutput9972 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9973 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, 0, 1, -2], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput9973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound9973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9973.moment H = canonicalOutput9973.moment H :=
  canonical_of_padded canonicalInput9973 canonicalOutput9973 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9974 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, 0, 2, -3], ![0, 1, -2, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput9974 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1097

theorem canonicalSound9974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9974.moment H = canonicalOutput9974.moment H :=
  canonical_of_padded canonicalInput9974 canonicalOutput9974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9975 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![1, 0, 3, -4], ![0, 1, -2, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput9975 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1096

theorem canonicalSound9975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9975.moment H = canonicalOutput9975.moment H :=
  canonical_of_padded canonicalInput9975 canonicalOutput9975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9976 : ExponentCode := ⟨5, 5, ![![-2, 1, -1, 1, 1], ![0, -2, 1, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput9976 : ExponentCode := normalNode8548

theorem canonicalSound9976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9976.moment H = canonicalOutput9976.moment H :=
  canonical_of_padded canonicalInput9976 canonicalOutput9976 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput9977 : ExponentCode := ⟨5, 5, ![![-2, 1, -1, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput9977 : ExponentCode := normalNode8172

theorem canonicalSound9977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9977.moment H = canonicalOutput9977.moment H :=
  canonical_of_padded canonicalInput9977 canonicalOutput9977 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput9978 : ExponentCode := ⟨5, 5, ![![-2, 1, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput9978 : ExponentCode := normalNode8205

theorem canonicalSound9978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9978.moment H = canonicalOutput9978.moment H :=
  canonical_of_padded canonicalInput9978 canonicalOutput9978 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput9979 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9979 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound9979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9979.moment H = canonicalOutput9979.moment H :=
  canonical_of_padded canonicalInput9979 canonicalOutput9979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation347⟩ (by decide +kernel) hH

def canonicalInput9980 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9980 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound9980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9980.moment H = canonicalOutput9980.moment H :=
  canonical_of_padded canonicalInput9980 canonicalOutput9980 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput9981 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9981 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound9981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9981.moment H = canonicalOutput9981.moment H :=
  canonical_of_padded canonicalInput9981 canonicalOutput9981 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput9982 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9982 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound9982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9982.moment H = canonicalOutput9982.moment H :=
  canonical_of_padded canonicalInput9982 canonicalOutput9982 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput9983 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 2, -2, 1, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9983 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound9983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9983.moment H = canonicalOutput9983.moment H :=
  canonical_of_padded canonicalInput9983 canonicalOutput9983 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation318, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
