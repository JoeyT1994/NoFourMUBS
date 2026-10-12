import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25920 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![-1, 2, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput25920 : ExponentCode := normalNode11144

theorem canonicalSound25920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25920.moment H = canonicalOutput25920.moment H :=
  canonical_of_padded canonicalInput25920 canonicalOutput25920 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25921 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 2, -3, 1], ![0, -1, 0, 1]]⟩

def canonicalOutput25921 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound25921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25921.moment H = canonicalOutput25921.moment H :=
  canonical_of_padded canonicalInput25921 canonicalOutput25921 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25922 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, 0, 0], ![-1, -1, 3, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25922 : ExponentCode := normalNode7683

theorem canonicalSound25922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25922.moment H = canonicalOutput25922.moment H :=
  canonical_of_padded canonicalInput25922 canonicalOutput25922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25923 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, 0, 0], ![-1, 0, 3, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput25923 : ExponentCode := normalNode1639

theorem canonicalSound25923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25923.moment H = canonicalOutput25923.moment H :=
  canonical_of_padded canonicalInput25923 canonicalOutput25923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25924 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![-1, 0, 2, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25924 : ExponentCode := normalNode499

theorem canonicalSound25924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25924.moment H = canonicalOutput25924.moment H :=
  canonical_of_padded canonicalInput25924 canonicalOutput25924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25925 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput25925 : ExponentCode := normalNode500

theorem canonicalSound25925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25925.moment H = canonicalOutput25925.moment H :=
  canonical_of_padded canonicalInput25925 canonicalOutput25925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25926 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput25926 : ExponentCode := normalNode2472

theorem canonicalSound25926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25926.moment H = canonicalOutput25926.moment H :=
  canonical_of_padded canonicalInput25926 canonicalOutput25926 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25927 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput25927 : ExponentCode := normalNode5393

theorem canonicalSound25927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25927.moment H = canonicalOutput25927.moment H :=
  canonical_of_padded canonicalInput25927 canonicalOutput25927 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25928 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput25928 : ExponentCode := normalNode1255

theorem canonicalSound25928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25928.moment H = canonicalOutput25928.moment H :=
  canonical_of_padded canonicalInput25928 canonicalOutput25928 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25929 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![-1, -1, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25929 : ExponentCode := normalNode3055

theorem canonicalSound25929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25929.moment H = canonicalOutput25929.moment H :=
  canonical_of_padded canonicalInput25929 canonicalOutput25929 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25930 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -2, 0, 0], ![-1, 1, 3, -3]]⟩

def canonicalOutput25930 : ExponentCode := normalNode3854

theorem canonicalSound25930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25930.moment H = canonicalOutput25930.moment H :=
  canonical_of_padded canonicalInput25930 canonicalOutput25930 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25931 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput25931 : ExponentCode := normalNode5394

theorem canonicalSound25931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25931.moment H = canonicalOutput25931.moment H :=
  canonical_of_padded canonicalInput25931 canonicalOutput25931 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25932 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, 0, -1, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput25932 : ExponentCode := normalNode4735

theorem canonicalSound25932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25932.moment H = canonicalOutput25932.moment H :=
  canonical_of_padded canonicalInput25932 canonicalOutput25932 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25933 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![2, -1, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25933 : ExponentCode := normalNode5056

theorem canonicalSound25933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25933.moment H = canonicalOutput25933.moment H :=
  canonical_of_padded canonicalInput25933 canonicalOutput25933 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25934 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-2, -1, 3, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput25934 : ExponentCode := normalNode7737

theorem canonicalSound25934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25934.moment H = canonicalOutput25934.moment H :=
  canonical_of_padded canonicalInput25934 canonicalOutput25934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation388, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25935 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-2, 0, 3, -1], ![3, -2, -1, 0]]⟩

def canonicalOutput25935 : ExponentCode := normalNode6639

theorem canonicalSound25935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25935.moment H = canonicalOutput25935.moment H :=
  canonical_of_padded canonicalInput25935 canonicalOutput25935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25936 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, -1, 3, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput25936 : ExponentCode := normalNode4332

theorem canonicalSound25936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25936.moment H = canonicalOutput25936.moment H :=
  canonical_of_padded canonicalInput25936 canonicalOutput25936 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25937 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, 0, 3, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput25937 : ExponentCode := normalNode2333

theorem canonicalSound25937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25937.moment H = canonicalOutput25937.moment H :=
  canonical_of_padded canonicalInput25937 canonicalOutput25937 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25938 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25938 : ExponentCode := normalNode875

theorem canonicalSound25938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25938.moment H = canonicalOutput25938.moment H :=
  canonical_of_padded canonicalInput25938 canonicalOutput25938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25939 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25939 : ExponentCode := normalNode7177

theorem canonicalSound25939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25939.moment H = canonicalOutput25939.moment H :=
  canonical_of_padded canonicalInput25939 canonicalOutput25939 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25940 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 1, 0], ![2, -1, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25940 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2893⟩

theorem canonicalSound25940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25940.moment H = canonicalOutput25940.moment H :=
  canonical_of_padded canonicalInput25940 canonicalOutput25940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25941 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-2, -1, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput25941 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2901⟩

theorem canonicalSound25941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25941.moment H = canonicalOutput25941.moment H :=
  canonical_of_padded canonicalInput25941 canonicalOutput25941 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25942 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -2, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput25942 : ExponentCode := normalNode6435

theorem canonicalSound25942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25942.moment H = canonicalOutput25942.moment H :=
  canonical_of_padded canonicalInput25942 canonicalOutput25942 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25943 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25943 : ExponentCode := normalNode7175

theorem canonicalSound25943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25943.moment H = canonicalOutput25943.moment H :=
  canonical_of_padded canonicalInput25943 canonicalOutput25943 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25944 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -1, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25944 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3347⟩

theorem canonicalSound25944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25944.moment H = canonicalOutput25944.moment H :=
  canonical_of_padded canonicalInput25944 canonicalOutput25944 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25945 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -2, 2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput25945 : ExponentCode := normalNode762

theorem canonicalSound25945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25945.moment H = canonicalOutput25945.moment H :=
  canonical_of_padded canonicalInput25945 canonicalOutput25945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25946 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 0, 3], ![2, 0, 3, -5]]⟩

def canonicalOutput25946 : ExponentCode := normalNode1707

theorem canonicalSound25946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25946.moment H = canonicalOutput25946.moment H :=
  canonical_of_padded canonicalInput25946 canonicalOutput25946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25947 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput25947 : ExponentCode := normalNode2467

theorem canonicalSound25947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25947.moment H = canonicalOutput25947.moment H :=
  canonical_of_padded canonicalInput25947 canonicalOutput25947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25948 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25948 : ExponentCode := normalNode6937

theorem canonicalSound25948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25948.moment H = canonicalOutput25948.moment H :=
  canonical_of_padded canonicalInput25948 canonicalOutput25948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25949 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25949 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3387⟩

theorem canonicalSound25949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25949.moment H = canonicalOutput25949.moment H :=
  canonical_of_padded canonicalInput25949 canonicalOutput25949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25950 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![2, -1, 3, -4]]⟩

def canonicalOutput25950 : ExponentCode := normalNode3421

theorem canonicalSound25950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25950.moment H = canonicalOutput25950.moment H :=
  canonical_of_padded canonicalInput25950 canonicalOutput25950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25951 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput25951 : ExponentCode := normalNode10267

theorem canonicalSound25951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25951.moment H = canonicalOutput25951.moment H :=
  canonical_of_padded canonicalInput25951 canonicalOutput25951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25952 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25952 : ExponentCode := normalNode9688

theorem canonicalSound25952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25952.moment H = canonicalOutput25952.moment H :=
  canonical_of_padded canonicalInput25952 canonicalOutput25952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25953 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput25953 : ExponentCode := normalNode3204

theorem canonicalSound25953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25953.moment H = canonicalOutput25953.moment H :=
  canonical_of_padded canonicalInput25953 canonicalOutput25953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25954 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25954 : ExponentCode := normalNode2925

theorem canonicalSound25954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25954.moment H = canonicalOutput25954.moment H :=
  canonical_of_padded canonicalInput25954 canonicalOutput25954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25955 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25955 : ExponentCode := normalNode878

theorem canonicalSound25955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25955.moment H = canonicalOutput25955.moment H :=
  canonical_of_padded canonicalInput25955 canonicalOutput25955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25956 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![2, 0, -1, -1], ![-3, 2, 2, -1]]⟩

def canonicalOutput25956 : ExponentCode := normalNode6183

theorem canonicalSound25956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25956.moment H = canonicalOutput25956.moment H :=
  canonical_of_padded canonicalInput25956 canonicalOutput25956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25957 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput25957 : ExponentCode := normalNode2929

theorem canonicalSound25957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25957.moment H = canonicalOutput25957.moment H :=
  canonical_of_padded canonicalInput25957 canonicalOutput25957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25958 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput25958 : ExponentCode := normalNode3422

theorem canonicalSound25958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25958.moment H = canonicalOutput25958.moment H :=
  canonical_of_padded canonicalInput25958 canonicalOutput25958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25959 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25959 : ExponentCode := normalNode5056

theorem canonicalSound25959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25959.moment H = canonicalOutput25959.moment H :=
  canonical_of_padded canonicalInput25959 canonicalOutput25959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25960 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput25960 : ExponentCode := normalNode2332

theorem canonicalSound25960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25960.moment H = canonicalOutput25960.moment H :=
  canonical_of_padded canonicalInput25960 canonicalOutput25960 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25961 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25961 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3420⟩

theorem canonicalSound25961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25961.moment H = canonicalOutput25961.moment H :=
  canonical_of_padded canonicalInput25961 canonicalOutput25961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25962 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, -1, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25962 : ExponentCode := normalNode877

theorem canonicalSound25962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25962.moment H = canonicalOutput25962.moment H :=
  canonical_of_padded canonicalInput25962 canonicalOutput25962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25963 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, -1, -1, 0], ![-3, 2, 2, -1]]⟩

def canonicalOutput25963 : ExponentCode := normalNode6151

theorem canonicalSound25963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25963.moment H = canonicalOutput25963.moment H :=
  canonical_of_padded canonicalInput25963 canonicalOutput25963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25964 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput25964 : ExponentCode := normalNode763

theorem canonicalSound25964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25964.moment H = canonicalOutput25964.moment H :=
  canonical_of_padded canonicalInput25964 canonicalOutput25964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25965 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput25965 : ExponentCode := normalNode1708

theorem canonicalSound25965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25965.moment H = canonicalOutput25965.moment H :=
  canonical_of_padded canonicalInput25965 canonicalOutput25965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25966 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25966 : ExponentCode := normalNode2473

theorem canonicalSound25966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25966.moment H = canonicalOutput25966.moment H :=
  canonical_of_padded canonicalInput25966 canonicalOutput25966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25967 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput25967 : ExponentCode := normalNode6938

theorem canonicalSound25967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25967.moment H = canonicalOutput25967.moment H :=
  canonical_of_padded canonicalInput25967 canonicalOutput25967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25968 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25968 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3389⟩

theorem canonicalSound25968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25968.moment H = canonicalOutput25968.moment H :=
  canonical_of_padded canonicalInput25968 canonicalOutput25968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25969 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput25969 : ExponentCode := normalNode9407

theorem canonicalSound25969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25969.moment H = canonicalOutput25969.moment H :=
  canonical_of_padded canonicalInput25969 canonicalOutput25969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25970 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25970 : ExponentCode := normalNode9664

theorem canonicalSound25970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25970.moment H = canonicalOutput25970.moment H :=
  canonical_of_padded canonicalInput25970 canonicalOutput25970 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25971 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput25971 : ExponentCode := normalNode10964

theorem canonicalSound25971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25971.moment H = canonicalOutput25971.moment H :=
  canonical_of_padded canonicalInput25971 canonicalOutput25971 (by decide) (by decide)
    ⟨false, true, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25972 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 1, -3, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput25972 : ExponentCode := normalNode7396

theorem canonicalSound25972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25972.moment H = canonicalOutput25972.moment H :=
  canonical_of_padded canonicalInput25972 canonicalOutput25972 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25973 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 0, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25973 : ExponentCode := normalNode10816

theorem canonicalSound25973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25973.moment H = canonicalOutput25973.moment H :=
  canonical_of_padded canonicalInput25973 canonicalOutput25973 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25974 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-2, 0, 3, -1]]⟩

def canonicalOutput25974 : ExponentCode := normalNode3467

theorem canonicalSound25974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25974.moment H = canonicalOutput25974.moment H :=
  canonical_of_padded canonicalInput25974 canonicalOutput25974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25975 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, -1, 3, 0]]⟩

def canonicalOutput25975 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2964⟩

theorem canonicalSound25975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25975.moment H = canonicalOutput25975.moment H :=
  canonical_of_padded canonicalInput25975 canonicalOutput25975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25976 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput25976 : ExponentCode := normalNode4835

theorem canonicalSound25976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25976.moment H = canonicalOutput25976.moment H :=
  canonical_of_padded canonicalInput25976 canonicalOutput25976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25977 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput25977 : ExponentCode := normalNode11027

theorem canonicalSound25977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25977.moment H = canonicalOutput25977.moment H :=
  canonical_of_padded canonicalInput25977 canonicalOutput25977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25978 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25978 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2972⟩

theorem canonicalSound25978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25978.moment H = canonicalOutput25978.moment H :=
  canonical_of_padded canonicalInput25978 canonicalOutput25978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25979 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput25979 : ExponentCode := normalNode4836

theorem canonicalSound25979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25979.moment H = canonicalOutput25979.moment H :=
  canonical_of_padded canonicalInput25979 canonicalOutput25979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25980 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput25980 : ExponentCode := normalNode10602

theorem canonicalSound25980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25980.moment H = canonicalOutput25980.moment H :=
  canonical_of_padded canonicalInput25980 canonicalOutput25980 (by decide) (by decide)
    ⟨false, true, canonicalPermutation318, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25981 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput25981 : ExponentCode := normalNode7395

theorem canonicalSound25981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25981.moment H = canonicalOutput25981.moment H :=
  canonical_of_padded canonicalInput25981 canonicalOutput25981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25982 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1], ![-2, 0, 3, -1]]⟩

def canonicalOutput25982 : ExponentCode := normalNode10534

theorem canonicalSound25982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25982.moment H = canonicalOutput25982.moment H :=
  canonical_of_padded canonicalInput25982 canonicalOutput25982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25983 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-2, -1, 4, -1]]⟩

def canonicalOutput25983 : ExponentCode := normalNode1252

theorem canonicalSound25983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25983.moment H = canonicalOutput25983.moment H :=
  canonical_of_padded canonicalInput25983 canonicalOutput25983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
