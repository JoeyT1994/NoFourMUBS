import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33920 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33920 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33920.moment H = canonicalOutput33920.moment H :=
  canonical_of_padded canonicalInput33920 canonicalOutput33920 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33921 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33921 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33921.moment H = canonicalOutput33921.moment H :=
  canonical_of_padded canonicalInput33921 canonicalOutput33921 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33922 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33922 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33922.moment H = canonicalOutput33922.moment H :=
  canonical_of_padded canonicalInput33922 canonicalOutput33922 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33923 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33923 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33923.moment H = canonicalOutput33923.moment H :=
  canonical_of_padded canonicalInput33923 canonicalOutput33923 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33924 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33924 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33924.moment H = canonicalOutput33924.moment H :=
  canonical_of_padded canonicalInput33924 canonicalOutput33924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33925 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33925 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33925.moment H = canonicalOutput33925.moment H :=
  canonical_of_padded canonicalInput33925 canonicalOutput33925 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33926 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33926 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33926.moment H = canonicalOutput33926.moment H :=
  canonical_of_padded canonicalInput33926 canonicalOutput33926 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33927 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33927.moment H = canonicalOutput33927.moment H :=
  canonical_of_padded canonicalInput33927 canonicalOutput33927 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33928 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33928 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33928.moment H = canonicalOutput33928.moment H :=
  canonical_of_padded canonicalInput33928 canonicalOutput33928 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33929 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33929 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound33929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33929.moment H = canonicalOutput33929.moment H :=
  canonical_of_padded canonicalInput33929 canonicalOutput33929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33930 : ExponentCode := ⟨6, 6, ![![1, 2, -3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33930 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33930.moment H = canonicalOutput33930.moment H :=
  canonical_of_padded canonicalInput33930 canonicalOutput33930 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33931 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33931 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound33931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33931.moment H = canonicalOutput33931.moment H :=
  canonical_of_padded canonicalInput33931 canonicalOutput33931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33932 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33932 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33932.moment H = canonicalOutput33932.moment H :=
  canonical_of_padded canonicalInput33932 canonicalOutput33932 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33933 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33933 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33933.moment H = canonicalOutput33933.moment H :=
  canonical_of_padded canonicalInput33933 canonicalOutput33933 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33934 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33934 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33934.moment H = canonicalOutput33934.moment H :=
  canonical_of_padded canonicalInput33934 canonicalOutput33934 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33935 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33935 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33935.moment H = canonicalOutput33935.moment H :=
  canonical_of_padded canonicalInput33935 canonicalOutput33935 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33936 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33936 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33936.moment H = canonicalOutput33936.moment H :=
  canonical_of_padded canonicalInput33936 canonicalOutput33936 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33937 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33937 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33937.moment H = canonicalOutput33937.moment H :=
  canonical_of_padded canonicalInput33937 canonicalOutput33937 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33938 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33938 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33938.moment H = canonicalOutput33938.moment H :=
  canonical_of_padded canonicalInput33938 canonicalOutput33938 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33939 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33939 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33939.moment H = canonicalOutput33939.moment H :=
  canonical_of_padded canonicalInput33939 canonicalOutput33939 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33940 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33940 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33940.moment H = canonicalOutput33940.moment H :=
  canonical_of_padded canonicalInput33940 canonicalOutput33940 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33941 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33941 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33941.moment H = canonicalOutput33941.moment H :=
  canonical_of_padded canonicalInput33941 canonicalOutput33941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33942 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33942 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33942.moment H = canonicalOutput33942.moment H :=
  canonical_of_padded canonicalInput33942 canonicalOutput33942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33943 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33943 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33943.moment H = canonicalOutput33943.moment H :=
  canonical_of_padded canonicalInput33943 canonicalOutput33943 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33944 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33944 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33944.moment H = canonicalOutput33944.moment H :=
  canonical_of_padded canonicalInput33944 canonicalOutput33944 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33945 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33945 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33945.moment H = canonicalOutput33945.moment H :=
  canonical_of_padded canonicalInput33945 canonicalOutput33945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33946 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33946 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33946.moment H = canonicalOutput33946.moment H :=
  canonical_of_padded canonicalInput33946 canonicalOutput33946 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33947 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33947 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound33947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33947.moment H = canonicalOutput33947.moment H :=
  canonical_of_padded canonicalInput33947 canonicalOutput33947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33948 : ExponentCode := ⟨6, 6, ![![2, -3, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33948 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound33948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33948.moment H = canonicalOutput33948.moment H :=
  canonical_of_padded canonicalInput33948 canonicalOutput33948 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33949 : ExponentCode := ⟨6, 2, ![![2, -2], ![0, 0], ![-2, 2], ![1, -1], ![0, 0], ![-1, 1]]⟩

def canonicalOutput33949 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound33949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33949.moment H = canonicalOutput33949.moment H :=
  canonical_of_padded canonicalInput33949 canonicalOutput33949 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33950 : ExponentCode := ⟨6, 2, ![![2, -2], ![0, 0], ![0, 0], ![0, 0], ![-1, 1], ![-1, 1]]⟩

def canonicalOutput33950 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33950.moment H = canonicalOutput33950.moment H :=
  canonical_of_padded canonicalInput33950 canonicalOutput33950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33951 : ExponentCode := ⟨6, 2, ![![2, -2], ![0, 0], ![0, 0], ![0, 0], ![0, 0], ![-2, 2]]⟩

def canonicalOutput33951 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound33951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33951.moment H = canonicalOutput33951.moment H :=
  canonical_of_padded canonicalInput33951 canonicalOutput33951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33952 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33952 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33952.moment H = canonicalOutput33952.moment H :=
  canonical_of_padded canonicalInput33952 canonicalOutput33952 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33953 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33953 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33953.moment H = canonicalOutput33953.moment H :=
  canonical_of_padded canonicalInput33953 canonicalOutput33953 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33954 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33954 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33954.moment H = canonicalOutput33954.moment H :=
  canonical_of_padded canonicalInput33954 canonicalOutput33954 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33955 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33955 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33955.moment H = canonicalOutput33955.moment H :=
  canonical_of_padded canonicalInput33955 canonicalOutput33955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33956 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33956 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33956.moment H = canonicalOutput33956.moment H :=
  canonical_of_padded canonicalInput33956 canonicalOutput33956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33957 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33957 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound33957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33957.moment H = canonicalOutput33957.moment H :=
  canonical_of_padded canonicalInput33957 canonicalOutput33957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33958 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33958 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33958.moment H = canonicalOutput33958.moment H :=
  canonical_of_padded canonicalInput33958 canonicalOutput33958 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33959 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33959 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound33959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33959.moment H = canonicalOutput33959.moment H :=
  canonical_of_padded canonicalInput33959 canonicalOutput33959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33960 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33960 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33960.moment H = canonicalOutput33960.moment H :=
  canonical_of_padded canonicalInput33960 canonicalOutput33960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33961 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33961 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33961.moment H = canonicalOutput33961.moment H :=
  canonical_of_padded canonicalInput33961 canonicalOutput33961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33962 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33962 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33962.moment H = canonicalOutput33962.moment H :=
  canonical_of_padded canonicalInput33962 canonicalOutput33962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33963 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33963 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33963.moment H = canonicalOutput33963.moment H :=
  canonical_of_padded canonicalInput33963 canonicalOutput33963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput33964 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33964 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33964.moment H = canonicalOutput33964.moment H :=
  canonical_of_padded canonicalInput33964 canonicalOutput33964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33965 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33965 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33965.moment H = canonicalOutput33965.moment H :=
  canonical_of_padded canonicalInput33965 canonicalOutput33965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33966 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33966 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33966.moment H = canonicalOutput33966.moment H :=
  canonical_of_padded canonicalInput33966 canonicalOutput33966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33967 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33967 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound33967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33967.moment H = canonicalOutput33967.moment H :=
  canonical_of_padded canonicalInput33967 canonicalOutput33967 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33968 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33968 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33968.moment H = canonicalOutput33968.moment H :=
  canonical_of_padded canonicalInput33968 canonicalOutput33968 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33969 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33969 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound33969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33969.moment H = canonicalOutput33969.moment H :=
  canonical_of_padded canonicalInput33969 canonicalOutput33969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33970 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33970 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33970.moment H = canonicalOutput33970.moment H :=
  canonical_of_padded canonicalInput33970 canonicalOutput33970 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33971 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33971 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33971.moment H = canonicalOutput33971.moment H :=
  canonical_of_padded canonicalInput33971 canonicalOutput33971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33972 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33972 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33972.moment H = canonicalOutput33972.moment H :=
  canonical_of_padded canonicalInput33972 canonicalOutput33972 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33973 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33973 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33973.moment H = canonicalOutput33973.moment H :=
  canonical_of_padded canonicalInput33973 canonicalOutput33973 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33974 : ExponentCode := ⟨6, 6, ![![2, -2, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33974 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound33974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33974.moment H = canonicalOutput33974.moment H :=
  canonical_of_padded canonicalInput33974 canonicalOutput33974 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33975 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33975 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33975.moment H = canonicalOutput33975.moment H :=
  canonical_of_padded canonicalInput33975 canonicalOutput33975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33976 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33976 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33976.moment H = canonicalOutput33976.moment H :=
  canonical_of_padded canonicalInput33976 canonicalOutput33976 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33977 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33977 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33977.moment H = canonicalOutput33977.moment H :=
  canonical_of_padded canonicalInput33977 canonicalOutput33977 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33978 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33978 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33978.moment H = canonicalOutput33978.moment H :=
  canonical_of_padded canonicalInput33978 canonicalOutput33978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33979 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33979 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33979.moment H = canonicalOutput33979.moment H :=
  canonical_of_padded canonicalInput33979 canonicalOutput33979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33980 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33980 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33980.moment H = canonicalOutput33980.moment H :=
  canonical_of_padded canonicalInput33980 canonicalOutput33980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33981 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33981 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33981.moment H = canonicalOutput33981.moment H :=
  canonical_of_padded canonicalInput33981 canonicalOutput33981 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput33982 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33982 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33982.moment H = canonicalOutput33982.moment H :=
  canonical_of_padded canonicalInput33982 canonicalOutput33982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33983 : ExponentCode := ⟨6, 6, ![![2, -1, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33983 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound33983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33983.moment H = canonicalOutput33983.moment H :=
  canonical_of_padded canonicalInput33983 canonicalOutput33983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
