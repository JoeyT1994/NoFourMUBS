import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12928 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 1, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1711⟩

theorem canonicalSound12928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12928.moment H = canonicalOutput12928.moment H :=
  canonical_of_padded canonicalInput12928 canonicalOutput12928 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12929 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput12929 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1709⟩

theorem canonicalSound12929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12929.moment H = canonicalOutput12929.moment H :=
  canonical_of_padded canonicalInput12929 canonicalOutput12929 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12930 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![0, 1, 1, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput12930 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound12930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12930.moment H = canonicalOutput12930.moment H :=
  canonical_of_padded canonicalInput12930 canonicalOutput12930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12931 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![1, 0, 0, -2, 1], ![0, 1, 0, 1, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput12931 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound12931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12931.moment H = canonicalOutput12931.moment H :=
  canonical_of_padded canonicalInput12931 canonicalOutput12931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12932 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![1, 0, 0, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput12932 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound12932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12932.moment H = canonicalOutput12932.moment H :=
  canonical_of_padded canonicalInput12932 canonicalOutput12932 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12933 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![1, 0, 1, -2, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput12933 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩

theorem canonicalSound12933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12933.moment H = canonicalOutput12933.moment H :=
  canonical_of_padded canonicalInput12933 canonicalOutput12933 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12934 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 1, 3], ![1, 0, 1, 0, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput12934 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound12934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12934.moment H = canonicalOutput12934.moment H :=
  canonical_of_padded canonicalInput12934 canonicalOutput12934 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12935 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12935 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound12935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12935.moment H = canonicalOutput12935.moment H :=
  canonical_of_padded canonicalInput12935 canonicalOutput12935 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12936 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound12936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12936.moment H = canonicalOutput12936.moment H :=
  canonical_of_padded canonicalInput12936 canonicalOutput12936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12937 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput12937 : ExponentCode := normalNode8316

theorem canonicalSound12937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12937.moment H = canonicalOutput12937.moment H :=
  canonical_of_padded canonicalInput12937 canonicalOutput12937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput12938 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput12938 : ExponentCode := normalNode8316

theorem canonicalSound12938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12938.moment H = canonicalOutput12938.moment H :=
  canonical_of_padded canonicalInput12938 canonicalOutput12938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput12939 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12939 : ExponentCode := normalNode8410

theorem canonicalSound12939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12939.moment H = canonicalOutput12939.moment H :=
  canonical_of_padded canonicalInput12939 canonicalOutput12939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput12940 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12940 : ExponentCode := normalNode8416

theorem canonicalSound12940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12940.moment H = canonicalOutput12940.moment H :=
  canonical_of_padded canonicalInput12940 canonicalOutput12940 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput12941 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12941 : ExponentCode := normalNode7599

theorem canonicalSound12941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12941.moment H = canonicalOutput12941.moment H :=
  canonical_of_padded canonicalInput12941 canonicalOutput12941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput12942 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput12942 : ExponentCode := normalNode8334

theorem canonicalSound12942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12942.moment H = canonicalOutput12942.moment H :=
  canonical_of_padded canonicalInput12942 canonicalOutput12942 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput12943 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput12943 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1733⟩

theorem canonicalSound12943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12943.moment H = canonicalOutput12943.moment H :=
  canonical_of_padded canonicalInput12943 canonicalOutput12943 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12944 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput12944 : ExponentCode := normalNode8339

theorem canonicalSound12944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12944.moment H = canonicalOutput12944.moment H :=
  canonical_of_padded canonicalInput12944 canonicalOutput12944 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput12945 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput12945 : ExponentCode := normalNode8339

theorem canonicalSound12945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12945.moment H = canonicalOutput12945.moment H :=
  canonical_of_padded canonicalInput12945 canonicalOutput12945 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput12946 : ExponentCode := ⟨5, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput12946 : ExponentCode := normalNode8334

theorem canonicalSound12946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12946.moment H = canonicalOutput12946.moment H :=
  canonical_of_padded canonicalInput12946 canonicalOutput12946 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput12947 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput12947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1757⟩

theorem canonicalSound12947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12947.moment H = canonicalOutput12947.moment H :=
  canonical_of_padded canonicalInput12947 canonicalOutput12947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12948 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput12948 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1732⟩

theorem canonicalSound12948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12948.moment H = canonicalOutput12948.moment H :=
  canonical_of_padded canonicalInput12948 canonicalOutput12948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12949 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput12949 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1731⟩

theorem canonicalSound12949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12949.moment H = canonicalOutput12949.moment H :=
  canonical_of_padded canonicalInput12949 canonicalOutput12949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12950 : ExponentCode := ⟨4, 5, ![![-1, -2, -1, 2, 2], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput12950 : ExponentCode := normalNode2307

theorem canonicalSound12950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12950.moment H = canonicalOutput12950.moment H :=
  canonical_of_padded canonicalInput12950 canonicalOutput12950 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12951 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12951 : ExponentCode := normalNode5631

theorem canonicalSound12951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12951.moment H = canonicalOutput12951.moment H :=
  canonical_of_padded canonicalInput12951 canonicalOutput12951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12952 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput12952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound12952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12952.moment H = canonicalOutput12952.moment H :=
  canonical_of_padded canonicalInput12952 canonicalOutput12952 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12953 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12953 : ExponentCode := normalNode5635

theorem canonicalSound12953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12953.moment H = canonicalOutput12953.moment H :=
  canonical_of_padded canonicalInput12953 canonicalOutput12953 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12954 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput12954 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound12954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12954.moment H = canonicalOutput12954.moment H :=
  canonical_of_padded canonicalInput12954 canonicalOutput12954 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12955 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput12955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound12955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12955.moment H = canonicalOutput12955.moment H :=
  canonical_of_padded canonicalInput12955 canonicalOutput12955 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12956 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node585⟩

theorem canonicalSound12956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12956.moment H = canonicalOutput12956.moment H :=
  canonical_of_padded canonicalInput12956 canonicalOutput12956 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12957 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 1, 1, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput12957 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code677

theorem canonicalSound12957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12957.moment H = canonicalOutput12957.moment H :=
  canonical_of_padded canonicalInput12957 canonicalOutput12957 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12958 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 3, -2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput12958 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code627

theorem canonicalSound12958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12958.moment H = canonicalOutput12958.moment H :=
  canonical_of_padded canonicalInput12958 canonicalOutput12958 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12959 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput12959 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code394

theorem canonicalSound12959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12959.moment H = canonicalOutput12959.moment H :=
  canonical_of_padded canonicalInput12959 canonicalOutput12959 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12960 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput12960 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code530

theorem canonicalSound12960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12960.moment H = canonicalOutput12960.moment H :=
  canonical_of_padded canonicalInput12960 canonicalOutput12960 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12961 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput12961 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code933

theorem canonicalSound12961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12961.moment H = canonicalOutput12961.moment H :=
  canonical_of_padded canonicalInput12961 canonicalOutput12961 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12962 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput12962 : ExponentCode := normalNode7429

theorem canonicalSound12962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12962.moment H = canonicalOutput12962.moment H :=
  canonical_of_padded canonicalInput12962 canonicalOutput12962 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12963 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12963 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code280

theorem canonicalSound12963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12963.moment H = canonicalOutput12963.moment H :=
  canonical_of_padded canonicalInput12963 canonicalOutput12963 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12964 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 2, -2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code280

theorem canonicalSound12964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12964.moment H = canonicalOutput12964.moment H :=
  canonical_of_padded canonicalInput12964 canonicalOutput12964 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12965 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 2, -1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12965 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1295

theorem canonicalSound12965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12965.moment H = canonicalOutput12965.moment H :=
  canonical_of_padded canonicalInput12965 canonicalOutput12965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12966 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 3, -2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12966 : ExponentCode := normalNode7429

theorem canonicalSound12966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12966.moment H = canonicalOutput12966.moment H :=
  canonical_of_padded canonicalInput12966 canonicalOutput12966 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12967 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12967 : ExponentCode := normalNode1256

theorem canonicalSound12967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12967.moment H = canonicalOutput12967.moment H :=
  canonical_of_padded canonicalInput12967 canonicalOutput12967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12968 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound12968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12968.moment H = canonicalOutput12968.moment H :=
  canonical_of_padded canonicalInput12968 canonicalOutput12968 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12969 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12969 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1575⟩

theorem canonicalSound12969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12969.moment H = canonicalOutput12969.moment H :=
  canonical_of_padded canonicalInput12969 canonicalOutput12969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12970 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12970 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1576⟩

theorem canonicalSound12970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12970.moment H = canonicalOutput12970.moment H :=
  canonical_of_padded canonicalInput12970 canonicalOutput12970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12971 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput12971 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code629

theorem canonicalSound12971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12971.moment H = canonicalOutput12971.moment H :=
  canonical_of_padded canonicalInput12971 canonicalOutput12971 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12972 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12972 : ExponentCode := normalNode5321

theorem canonicalSound12972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12972.moment H = canonicalOutput12972.moment H :=
  canonical_of_padded canonicalInput12972 canonicalOutput12972 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12973 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput12973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound12973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12973.moment H = canonicalOutput12973.moment H :=
  canonical_of_padded canonicalInput12973 canonicalOutput12973 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12974 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput12974 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code624

theorem canonicalSound12974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12974.moment H = canonicalOutput12974.moment H :=
  canonical_of_padded canonicalInput12974 canonicalOutput12974 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12975 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput12975 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound12975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12975.moment H = canonicalOutput12975.moment H :=
  canonical_of_padded canonicalInput12975 canonicalOutput12975 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12976 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound12976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12976.moment H = canonicalOutput12976.moment H :=
  canonical_of_padded canonicalInput12976 canonicalOutput12976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12977 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12977 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node454⟩

theorem canonicalSound12977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12977.moment H = canonicalOutput12977.moment H :=
  canonical_of_padded canonicalInput12977 canonicalOutput12977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12978 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node454⟩

theorem canonicalSound12978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12978.moment H = canonicalOutput12978.moment H :=
  canonical_of_padded canonicalInput12978 canonicalOutput12978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12979 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12979 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound12979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12979.moment H = canonicalOutput12979.moment H :=
  canonical_of_padded canonicalInput12979 canonicalOutput12979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12980 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 3, -2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput12980 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code624

theorem canonicalSound12980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12980.moment H = canonicalOutput12980.moment H :=
  canonical_of_padded canonicalInput12980 canonicalOutput12980 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12981 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12981 : ExponentCode := normalNode1318

theorem canonicalSound12981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12981.moment H = canonicalOutput12981.moment H :=
  canonical_of_padded canonicalInput12981 canonicalOutput12981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12982 : ExponentCode := ⟨5, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12982 : ExponentCode := normalNode1319

theorem canonicalSound12982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12982.moment H = canonicalOutput12982.moment H :=
  canonical_of_padded canonicalInput12982 canonicalOutput12982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12983 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput12983 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩

theorem canonicalSound12983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12983.moment H = canonicalOutput12983.moment H :=
  canonical_of_padded canonicalInput12983 canonicalOutput12983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12984 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput12984 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound12984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12984.moment H = canonicalOutput12984.moment H :=
  canonical_of_padded canonicalInput12984 canonicalOutput12984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12985 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput12985 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1023

theorem canonicalSound12985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12985.moment H = canonicalOutput12985.moment H :=
  canonical_of_padded canonicalInput12985 canonicalOutput12985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12986 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput12986 : ExponentCode := normalNode9863

theorem canonicalSound12986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12986.moment H = canonicalOutput12986.moment H :=
  canonical_of_padded canonicalInput12986 canonicalOutput12986 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12987 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12987 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1090⟩

theorem canonicalSound12987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12987.moment H = canonicalOutput12987.moment H :=
  canonical_of_padded canonicalInput12987 canonicalOutput12987 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12988 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12988 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node777⟩

theorem canonicalSound12988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12988.moment H = canonicalOutput12988.moment H :=
  canonical_of_padded canonicalInput12988 canonicalOutput12988 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12989 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12989 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound12989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12989.moment H = canonicalOutput12989.moment H :=
  canonical_of_padded canonicalInput12989 canonicalOutput12989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12990 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12990 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code303

theorem canonicalSound12990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12990.moment H = canonicalOutput12990.moment H :=
  canonical_of_padded canonicalInput12990 canonicalOutput12990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12991 : ExponentCode := ⟨4, 4, ![![-1, -2, -1, 4], ![-1, 0, 3, -2], ![1, 2, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node777⟩

theorem canonicalSound12991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12991.moment H = canonicalOutput12991.moment H :=
  canonical_of_padded canonicalInput12991 canonicalOutput12991 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
