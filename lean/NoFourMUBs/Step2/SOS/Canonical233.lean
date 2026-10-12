import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14912 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14912 : ExponentCode := normalNode10085

theorem canonicalSound14912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14912.moment H = canonicalOutput14912.moment H :=
  canonical_of_padded canonicalInput14912 canonicalOutput14912 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput14913 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14913 : ExponentCode := normalNode8672

theorem canonicalSound14913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14913.moment H = canonicalOutput14913.moment H :=
  canonical_of_padded canonicalInput14913 canonicalOutput14913 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput14914 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14914 : ExponentCode := normalNode9245

theorem canonicalSound14914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14914.moment H = canonicalOutput14914.moment H :=
  canonical_of_padded canonicalInput14914 canonicalOutput14914 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput14915 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14915 : ExponentCode := normalNode8328

theorem canonicalSound14915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14915.moment H = canonicalOutput14915.moment H :=
  canonical_of_padded canonicalInput14915 canonicalOutput14915 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput14916 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14916 : ExponentCode := normalNode8652

theorem canonicalSound14916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14916.moment H = canonicalOutput14916.moment H :=
  canonical_of_padded canonicalInput14916 canonicalOutput14916 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput14917 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput14917 : ExponentCode := normalNode8695

theorem canonicalSound14917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14917.moment H = canonicalOutput14917.moment H :=
  canonical_of_padded canonicalInput14917 canonicalOutput14917 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput14918 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput14918 : ExponentCode := normalNode8697

theorem canonicalSound14918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14918.moment H = canonicalOutput14918.moment H :=
  canonical_of_padded canonicalInput14918 canonicalOutput14918 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput14919 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2639⟩

theorem canonicalSound14919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14919.moment H = canonicalOutput14919.moment H :=
  canonical_of_padded canonicalInput14919 canonicalOutput14919 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14920 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14920 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2637⟩

theorem canonicalSound14920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14920.moment H = canonicalOutput14920.moment H :=
  canonical_of_padded canonicalInput14920 canonicalOutput14920 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14921 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 0, 0, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14921 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2780⟩

theorem canonicalSound14921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14921.moment H = canonicalOutput14921.moment H :=
  canonical_of_padded canonicalInput14921 canonicalOutput14921 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput14922 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput14922 : ExponentCode := normalNode8716

theorem canonicalSound14922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14922.moment H = canonicalOutput14922.moment H :=
  canonical_of_padded canonicalInput14922 canonicalOutput14922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput14923 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput14923 : ExponentCode := normalNode10170

theorem canonicalSound14923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14923.moment H = canonicalOutput14923.moment H :=
  canonical_of_padded canonicalInput14923 canonicalOutput14923 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput14924 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput14924 : ExponentCode := normalNode10162

theorem canonicalSound14924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14924.moment H = canonicalOutput14924.moment H :=
  canonical_of_padded canonicalInput14924 canonicalOutput14924 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14925 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14925 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2780⟩

theorem canonicalSound14925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14925.moment H = canonicalOutput14925.moment H :=
  canonical_of_padded canonicalInput14925 canonicalOutput14925 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14926 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14926 : ExponentCode := normalNode9381

theorem canonicalSound14926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14926.moment H = canonicalOutput14926.moment H :=
  canonical_of_padded canonicalInput14926 canonicalOutput14926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14927 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14927 : ExponentCode := normalNode9447

theorem canonicalSound14927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14927.moment H = canonicalOutput14927.moment H :=
  canonical_of_padded canonicalInput14927 canonicalOutput14927 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14928 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14928 : ExponentCode := normalNode9074

theorem canonicalSound14928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14928.moment H = canonicalOutput14928.moment H :=
  canonical_of_padded canonicalInput14928 canonicalOutput14928 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14929 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14929 : ExponentCode := normalNode9447

theorem canonicalSound14929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14929.moment H = canonicalOutput14929.moment H :=
  canonical_of_padded canonicalInput14929 canonicalOutput14929 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14930 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14930 : ExponentCode := normalNode9381

theorem canonicalSound14930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14930.moment H = canonicalOutput14930.moment H :=
  canonical_of_padded canonicalInput14930 canonicalOutput14930 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14931 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14931 : ExponentCode := normalNode7572

theorem canonicalSound14931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14931.moment H = canonicalOutput14931.moment H :=
  canonical_of_padded canonicalInput14931 canonicalOutput14931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14932 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14932 : ExponentCode := normalNode7621

theorem canonicalSound14932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14932.moment H = canonicalOutput14932.moment H :=
  canonical_of_padded canonicalInput14932 canonicalOutput14932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput14933 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14933 : ExponentCode := normalNode7618

theorem canonicalSound14933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14933.moment H = canonicalOutput14933.moment H :=
  canonical_of_padded canonicalInput14933 canonicalOutput14933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14934 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput14934 : ExponentCode := normalNode7609

theorem canonicalSound14934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14934.moment H = canonicalOutput14934.moment H :=
  canonical_of_padded canonicalInput14934 canonicalOutput14934 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14935 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14935 : ExponentCode := normalNode9072

theorem canonicalSound14935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14935.moment H = canonicalOutput14935.moment H :=
  canonical_of_padded canonicalInput14935 canonicalOutput14935 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14936 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14936 : ExponentCode := normalNode7017

theorem canonicalSound14936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14936.moment H = canonicalOutput14936.moment H :=
  canonical_of_padded canonicalInput14936 canonicalOutput14936 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14937 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14937 : ExponentCode := normalNode10326

theorem canonicalSound14937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14937.moment H = canonicalOutput14937.moment H :=
  canonical_of_padded canonicalInput14937 canonicalOutput14937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14938 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14938 : ExponentCode := normalNode7618

theorem canonicalSound14938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14938.moment H = canonicalOutput14938.moment H :=
  canonical_of_padded canonicalInput14938 canonicalOutput14938 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput14939 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput14939 : ExponentCode := normalNode10086

theorem canonicalSound14939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14939.moment H = canonicalOutput14939.moment H :=
  canonical_of_padded canonicalInput14939 canonicalOutput14939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput14940 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput14940 : ExponentCode := normalNode7620

theorem canonicalSound14940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14940.moment H = canonicalOutput14940.moment H :=
  canonical_of_padded canonicalInput14940 canonicalOutput14940 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput14941 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14941 : ExponentCode := normalNode9098

theorem canonicalSound14941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14941.moment H = canonicalOutput14941.moment H :=
  canonical_of_padded canonicalInput14941 canonicalOutput14941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14942 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14942 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14942.moment H = canonicalOutput14942.moment H :=
  canonical_of_padded canonicalInput14942 canonicalOutput14942 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14943 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14943 : ExponentCode := normalNode9074

theorem canonicalSound14943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14943.moment H = canonicalOutput14943.moment H :=
  canonical_of_padded canonicalInput14943 canonicalOutput14943 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14944 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput14944 : ExponentCode := normalNode8232

theorem canonicalSound14944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14944.moment H = canonicalOutput14944.moment H :=
  canonical_of_padded canonicalInput14944 canonicalOutput14944 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14945 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14945.moment H = canonicalOutput14945.moment H :=
  canonical_of_padded canonicalInput14945 canonicalOutput14945 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14946 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14946 : ExponentCode := normalNode9098

theorem canonicalSound14946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14946.moment H = canonicalOutput14946.moment H :=
  canonical_of_padded canonicalInput14946 canonicalOutput14946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14947 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound14947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14947.moment H = canonicalOutput14947.moment H :=
  canonical_of_padded canonicalInput14947 canonicalOutput14947 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14948 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14948 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound14948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14948.moment H = canonicalOutput14948.moment H :=
  canonical_of_padded canonicalInput14948 canonicalOutput14948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14949 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput14949 : ExponentCode := normalNode8651

theorem canonicalSound14949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14949.moment H = canonicalOutput14949.moment H :=
  canonical_of_padded canonicalInput14949 canonicalOutput14949 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput14950 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput14950 : ExponentCode := normalNode10469

theorem canonicalSound14950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14950.moment H = canonicalOutput14950.moment H :=
  canonical_of_padded canonicalInput14950 canonicalOutput14950 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput14951 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14951 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound14951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14951.moment H = canonicalOutput14951.moment H :=
  canonical_of_padded canonicalInput14951 canonicalOutput14951 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14952 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput14952 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1794⟩

theorem canonicalSound14952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14952.moment H = canonicalOutput14952.moment H :=
  canonical_of_padded canonicalInput14952 canonicalOutput14952 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14953 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -3, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14953 : ExponentCode := normalNode887

theorem canonicalSound14953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14953.moment H = canonicalOutput14953.moment H :=
  canonical_of_padded canonicalInput14953 canonicalOutput14953 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14954 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14954 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14954.moment H = canonicalOutput14954.moment H :=
  canonical_of_padded canonicalInput14954 canonicalOutput14954 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14955 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14955 : ExponentCode := normalNode9447

theorem canonicalSound14955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14955.moment H = canonicalOutput14955.moment H :=
  canonical_of_padded canonicalInput14955 canonicalOutput14955 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14956 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14956 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14956.moment H = canonicalOutput14956.moment H :=
  canonical_of_padded canonicalInput14956 canonicalOutput14956 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14957 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14957 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound14957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14957.moment H = canonicalOutput14957.moment H :=
  canonical_of_padded canonicalInput14957 canonicalOutput14957 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14958 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput14958 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound14958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14958.moment H = canonicalOutput14958.moment H :=
  canonical_of_padded canonicalInput14958 canonicalOutput14958 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14959 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput14959 : ExponentCode := normalNode3991

theorem canonicalSound14959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14959.moment H = canonicalOutput14959.moment H :=
  canonical_of_padded canonicalInput14959 canonicalOutput14959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14960 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 2, -3], ![0, 0, 1, -2, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14960 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1822⟩

theorem canonicalSound14960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14960.moment H = canonicalOutput14960.moment H :=
  canonical_of_padded canonicalInput14960 canonicalOutput14960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14961 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 1, 2, -3], ![0, 1, 0, -2, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14961 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2444⟩

theorem canonicalSound14961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14961.moment H = canonicalOutput14961.moment H :=
  canonical_of_padded canonicalInput14961 canonicalOutput14961 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14962 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -3, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14962 : ExponentCode := normalNode2569

theorem canonicalSound14962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14962.moment H = canonicalOutput14962.moment H :=
  canonical_of_padded canonicalInput14962 canonicalOutput14962 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14963 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -3, 1], ![0, 1, 0, 2, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14963 : ExponentCode := normalNode8982

theorem canonicalSound14963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14963.moment H = canonicalOutput14963.moment H :=
  canonical_of_padded canonicalInput14963 canonicalOutput14963 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput14964 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, -1, 1], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput14964 : ExponentCode := normalNode2694

theorem canonicalSound14964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14964.moment H = canonicalOutput14964.moment H :=
  canonical_of_padded canonicalInput14964 canonicalOutput14964 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14965 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14965 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound14965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14965.moment H = canonicalOutput14965.moment H :=
  canonical_of_padded canonicalInput14965 canonicalOutput14965 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14966 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14966 : ExponentCode := normalNode9000

theorem canonicalSound14966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14966.moment H = canonicalOutput14966.moment H :=
  canonical_of_padded canonicalInput14966 canonicalOutput14966 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14967 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14967 : ExponentCode := normalNode9000

theorem canonicalSound14967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14967.moment H = canonicalOutput14967.moment H :=
  canonical_of_padded canonicalInput14967 canonicalOutput14967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14968 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14968 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound14968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14968.moment H = canonicalOutput14968.moment H :=
  canonical_of_padded canonicalInput14968 canonicalOutput14968 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14969 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14969 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound14969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14969.moment H = canonicalOutput14969.moment H :=
  canonical_of_padded canonicalInput14969 canonicalOutput14969 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14970 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14970 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound14970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14970.moment H = canonicalOutput14970.moment H :=
  canonical_of_padded canonicalInput14970 canonicalOutput14970 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14971 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14971 : ExponentCode := normalNode2718

theorem canonicalSound14971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14971.moment H = canonicalOutput14971.moment H :=
  canonical_of_padded canonicalInput14971 canonicalOutput14971 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14972 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound14972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14972.moment H = canonicalOutput14972.moment H :=
  canonical_of_padded canonicalInput14972 canonicalOutput14972 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14973 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput14973 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound14973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14973.moment H = canonicalOutput14973.moment H :=
  canonical_of_padded canonicalInput14973 canonicalOutput14973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14974 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput14974 : ExponentCode := normalNode4385

theorem canonicalSound14974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14974.moment H = canonicalOutput14974.moment H :=
  canonical_of_padded canonicalInput14974 canonicalOutput14974 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14975 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput14975 : ExponentCode := normalNode4206

theorem canonicalSound14975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14975.moment H = canonicalOutput14975.moment H :=
  canonical_of_padded canonicalInput14975 canonicalOutput14975 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
