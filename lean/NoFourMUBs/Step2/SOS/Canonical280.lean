import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17920 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 1, -3, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput17920 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1979⟩

theorem canonicalSound17920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17920.moment H = canonicalOutput17920.moment H :=
  canonical_of_padded canonicalInput17920 canonicalOutput17920 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17921 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -3, 2]]⟩

def canonicalOutput17921 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1673⟩

theorem canonicalSound17921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17921.moment H = canonicalOutput17921.moment H :=
  canonical_of_padded canonicalInput17921 canonicalOutput17921 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17922 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -3, 3], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17922 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1981⟩

theorem canonicalSound17922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17922.moment H = canonicalOutput17922.moment H :=
  canonical_of_padded canonicalInput17922 canonicalOutput17922 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17923 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17923 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound17923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17923.moment H = canonicalOutput17923.moment H :=
  canonical_of_padded canonicalInput17923 canonicalOutput17923 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17924 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17924 : ExponentCode := normalNode1784

theorem canonicalSound17924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17924.moment H = canonicalOutput17924.moment H :=
  canonical_of_padded canonicalInput17924 canonicalOutput17924 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17925 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 0, -3, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17925 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1634⟩

theorem canonicalSound17925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17925.moment H = canonicalOutput17925.moment H :=
  canonical_of_padded canonicalInput17925 canonicalOutput17925 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17926 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17926 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound17926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17926.moment H = canonicalOutput17926.moment H :=
  canonical_of_padded canonicalInput17926 canonicalOutput17926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17927 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17927 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2607⟩

theorem canonicalSound17927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17927.moment H = canonicalOutput17927.moment H :=
  canonical_of_padded canonicalInput17927 canonicalOutput17927 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17928 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1634⟩

theorem canonicalSound17928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17928.moment H = canonicalOutput17928.moment H :=
  canonical_of_padded canonicalInput17928 canonicalOutput17928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17929 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17929 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound17929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17929.moment H = canonicalOutput17929.moment H :=
  canonical_of_padded canonicalInput17929 canonicalOutput17929 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17930 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput17930 : ExponentCode := normalNode3483

theorem canonicalSound17930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17930.moment H = canonicalOutput17930.moment H :=
  canonical_of_padded canonicalInput17930 canonicalOutput17930 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17931 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17931 : ExponentCode := normalNode10949

theorem canonicalSound17931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17931.moment H = canonicalOutput17931.moment H :=
  canonical_of_padded canonicalInput17931 canonicalOutput17931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17932 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -3, 3], ![0, 0, 1, 3, -4], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17932 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2269⟩

theorem canonicalSound17932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17932.moment H = canonicalOutput17932.moment H :=
  canonical_of_padded canonicalInput17932 canonicalOutput17932 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17933 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -3, 3], ![0, 1, -1, 2, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17933 : ExponentCode := normalNode4891

theorem canonicalSound17933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17933.moment H = canonicalOutput17933.moment H :=
  canonical_of_padded canonicalInput17933 canonicalOutput17933 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17934 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 1, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput17934 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2830⟩

theorem canonicalSound17934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17934.moment H = canonicalOutput17934.moment H :=
  canonical_of_padded canonicalInput17934 canonicalOutput17934 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17935 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17935 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1746⟩

theorem canonicalSound17935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17935.moment H = canonicalOutput17935.moment H :=
  canonical_of_padded canonicalInput17935 canonicalOutput17935 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17936 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 3, -3], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17936 : ExponentCode := normalNode1800

theorem canonicalSound17936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17936.moment H = canonicalOutput17936.moment H :=
  canonical_of_padded canonicalInput17936 canonicalOutput17936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17937 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17937 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound17937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17937.moment H = canonicalOutput17937.moment H :=
  canonical_of_padded canonicalInput17937 canonicalOutput17937 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17938 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 2, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17938 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound17938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17938.moment H = canonicalOutput17938.moment H :=
  canonical_of_padded canonicalInput17938 canonicalOutput17938 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17939 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17939 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound17939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17939.moment H = canonicalOutput17939.moment H :=
  canonical_of_padded canonicalInput17939 canonicalOutput17939 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17940 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput17940 : ExponentCode := normalNode10816

theorem canonicalSound17940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17940.moment H = canonicalOutput17940.moment H :=
  canonical_of_padded canonicalInput17940 canonicalOutput17940 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17941 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17941 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound17941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17941.moment H = canonicalOutput17941.moment H :=
  canonical_of_padded canonicalInput17941 canonicalOutput17941 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17942 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17942 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound17942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17942.moment H = canonicalOutput17942.moment H :=
  canonical_of_padded canonicalInput17942 canonicalOutput17942 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17943 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 3, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17943 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2409⟩

theorem canonicalSound17943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17943.moment H = canonicalOutput17943.moment H :=
  canonical_of_padded canonicalInput17943 canonicalOutput17943 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17944 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput17944 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound17944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17944.moment H = canonicalOutput17944.moment H :=
  canonical_of_padded canonicalInput17944 canonicalOutput17944 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17945 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![1, 0, 0, 1, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput17945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound17945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17945.moment H = canonicalOutput17945.moment H :=
  canonical_of_padded canonicalInput17945 canonicalOutput17945 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17946 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![1, 0, 1, 1, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17946 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound17946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17946.moment H = canonicalOutput17946.moment H :=
  canonical_of_padded canonicalInput17946 canonicalOutput17946 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17947 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -1, 1], ![0, 0, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2846⟩

theorem canonicalSound17947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17947.moment H = canonicalOutput17947.moment H :=
  canonical_of_padded canonicalInput17947 canonicalOutput17947 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17948 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17948 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound17948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17948.moment H = canonicalOutput17948.moment H :=
  canonical_of_padded canonicalInput17948 canonicalOutput17948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17949 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 0, 0], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17949 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node711⟩

theorem canonicalSound17949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17949.moment H = canonicalOutput17949.moment H :=
  canonical_of_padded canonicalInput17949 canonicalOutput17949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17950 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17950 : ExponentCode := normalNode10895

theorem canonicalSound17950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17950.moment H = canonicalOutput17950.moment H :=
  canonical_of_padded canonicalInput17950 canonicalOutput17950 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17951 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17951 : ExponentCode := normalNode6992

theorem canonicalSound17951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17951.moment H = canonicalOutput17951.moment H :=
  canonical_of_padded canonicalInput17951 canonicalOutput17951 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17952 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17952 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2642⟩

theorem canonicalSound17952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17952.moment H = canonicalOutput17952.moment H :=
  canonical_of_padded canonicalInput17952 canonicalOutput17952 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17953 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -3, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17953 : ExponentCode := normalNode3516

theorem canonicalSound17953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17953.moment H = canonicalOutput17953.moment H :=
  canonical_of_padded canonicalInput17953 canonicalOutput17953 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17954 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17954 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound17954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17954.moment H = canonicalOutput17954.moment H :=
  canonical_of_padded canonicalInput17954 canonicalOutput17954 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17955 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17955 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2440⟩

theorem canonicalSound17955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17955.moment H = canonicalOutput17955.moment H :=
  canonical_of_padded canonicalInput17955 canonicalOutput17955 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17956 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17956 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound17956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17956.moment H = canonicalOutput17956.moment H :=
  canonical_of_padded canonicalInput17956 canonicalOutput17956 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17957 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17957 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound17957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17957.moment H = canonicalOutput17957.moment H :=
  canonical_of_padded canonicalInput17957 canonicalOutput17957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17958 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17958 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound17958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17958.moment H = canonicalOutput17958.moment H :=
  canonical_of_padded canonicalInput17958 canonicalOutput17958 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17959 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput17959 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2440⟩

theorem canonicalSound17959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17959.moment H = canonicalOutput17959.moment H :=
  canonical_of_padded canonicalInput17959 canonicalOutput17959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17960 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -3, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17960 : ExponentCode := normalNode1778

theorem canonicalSound17960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17960.moment H = canonicalOutput17960.moment H :=
  canonical_of_padded canonicalInput17960 canonicalOutput17960 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17961 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 3, -3], ![0, 1, -1, -1, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17961 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1637⟩

theorem canonicalSound17961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17961.moment H = canonicalOutput17961.moment H :=
  canonical_of_padded canonicalInput17961 canonicalOutput17961 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17962 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 0, 3, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17962 : ExponentCode := normalNode11135

theorem canonicalSound17962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17962.moment H = canonicalOutput17962.moment H :=
  canonical_of_padded canonicalInput17962 canonicalOutput17962 (by decide) (by decide)
    ⟨true, true, canonicalPermutation37, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17963 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, -3, 2], ![0, 0, 0, 2, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17963 : ExponentCode := normalNode3516

theorem canonicalSound17963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17963.moment H = canonicalOutput17963.moment H :=
  canonical_of_padded canonicalInput17963 canonicalOutput17963 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17964 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, -3, 2], ![0, 0, 0, 3, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17964 : ExponentCode := normalNode5541

theorem canonicalSound17964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17964.moment H = canonicalOutput17964.moment H :=
  canonical_of_padded canonicalInput17964 canonicalOutput17964 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17965 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput17965 : ExponentCode := normalNode5402

theorem canonicalSound17965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17965.moment H = canonicalOutput17965.moment H :=
  canonical_of_padded canonicalInput17965 canonicalOutput17965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17966 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput17966 : ExponentCode := normalNode8772

theorem canonicalSound17966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17966.moment H = canonicalOutput17966.moment H :=
  canonical_of_padded canonicalInput17966 canonicalOutput17966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17967 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, 2, -3], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17967 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound17967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17967.moment H = canonicalOutput17967.moment H :=
  canonical_of_padded canonicalInput17967 canonicalOutput17967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17968 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17968 : ExponentCode := normalNode5413

theorem canonicalSound17968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17968.moment H = canonicalOutput17968.moment H :=
  canonical_of_padded canonicalInput17968 canonicalOutput17968 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17969 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, 2, -3], ![0, 1, -1, -1, 1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput17969 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2510⟩

theorem canonicalSound17969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17969.moment H = canonicalOutput17969.moment H :=
  canonical_of_padded canonicalInput17969 canonicalOutput17969 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17970 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 1, 2, -3], ![0, 1, -1, 0, 0], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput17970 : ExponentCode := normalNode11097

theorem canonicalSound17970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17970.moment H = canonicalOutput17970.moment H :=
  canonical_of_padded canonicalInput17970 canonicalOutput17970 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17971 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 0, 2, 1, -3], ![0, 1, -3, 1, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17971 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound17971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17971.moment H = canonicalOutput17971.moment H :=
  canonical_of_padded canonicalInput17971 canonicalOutput17971 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17972 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 0, 0, -2, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound17972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17972.moment H = canonicalOutput17972.moment H :=
  canonical_of_padded canonicalInput17972 canonicalOutput17972 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17973 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 0, 0, 2, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17973 : ExponentCode := normalNode1778

theorem canonicalSound17973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17973.moment H = canonicalOutput17973.moment H :=
  canonical_of_padded canonicalInput17973 canonicalOutput17973 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17974 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -2, 2, -1], ![0, 0, 1, -3, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17974 : ExponentCode := normalNode5109

theorem canonicalSound17974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17974.moment H = canonicalOutput17974.moment H :=
  canonical_of_padded canonicalInput17974 canonicalOutput17974 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17975 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -2, 2, -1], ![0, 0, 1, 1, -2], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput17975 : ExponentCode := normalNode5045

theorem canonicalSound17975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17975.moment H = canonicalOutput17975.moment H :=
  canonical_of_padded canonicalInput17975 canonicalOutput17975 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17976 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -1, -3, 3], ![0, 0, 0, 2, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17976 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound17976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17976.moment H = canonicalOutput17976.moment H :=
  canonical_of_padded canonicalInput17976 canonicalOutput17976 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17977 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -1, -2, 2], ![0, 0, -1, 3, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17977 : ExponentCode := normalNode9316

theorem canonicalSound17977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17977.moment H = canonicalOutput17977.moment H :=
  canonical_of_padded canonicalInput17977 canonicalOutput17977 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17978 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -1, -2, 2], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17978 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2440⟩

theorem canonicalSound17978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17978.moment H = canonicalOutput17978.moment H :=
  canonical_of_padded canonicalInput17978 canonicalOutput17978 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17979 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -1, -2, 2], ![0, 0, 0, 3, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17979 : ExponentCode := normalNode9923

theorem canonicalSound17979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17979.moment H = canonicalOutput17979.moment H :=
  canonical_of_padded canonicalInput17979 canonicalOutput17979 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17980 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![0, 1, -1, 2, -2], ![0, 0, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound17980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17980.moment H = canonicalOutput17980.moment H :=
  canonical_of_padded canonicalInput17980 canonicalOutput17980 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17981 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![1, -1, -2, 1, 1], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput17981 : ExponentCode := normalNode7748

theorem canonicalSound17981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17981.moment H = canonicalOutput17981.moment H :=
  canonical_of_padded canonicalInput17981 canonicalOutput17981 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17982 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![1, 0, 0, -3, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput17982 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1630⟩

theorem canonicalSound17982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17982.moment H = canonicalOutput17982.moment H :=
  canonical_of_padded canonicalInput17982 canonicalOutput17982 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17983 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![1, 0, 0, -3, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17983 : ExponentCode := normalNode5413

theorem canonicalSound17983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17983.moment H = canonicalOutput17983.moment H :=
  canonical_of_padded canonicalInput17983 canonicalOutput17983 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
