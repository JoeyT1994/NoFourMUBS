import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20928 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20928 : ExponentCode := normalNode3881

theorem canonicalSound20928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20928.moment H = canonicalOutput20928.moment H :=
  canonical_of_padded canonicalInput20928 canonicalOutput20928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20929 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![2, 0, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20929 : ExponentCode := normalNode3208

theorem canonicalSound20929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20929.moment H = canonicalOutput20929.moment H :=
  canonical_of_padded canonicalInput20929 canonicalOutput20929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20930 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20930 : ExponentCode := normalNode10535

theorem canonicalSound20930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20930.moment H = canonicalOutput20930.moment H :=
  canonical_of_padded canonicalInput20930 canonicalOutput20930 (by decide) (by decide)
    ⟨false, true, canonicalPermutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20931 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, -2, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput20931 : ExponentCode := normalNode353

theorem canonicalSound20931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20931.moment H = canonicalOutput20931.moment H :=
  canonical_of_padded canonicalInput20931 canonicalOutput20931 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20932 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -2, 1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput20932 : ExponentCode := normalNode1071

theorem canonicalSound20932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20932.moment H = canonicalOutput20932.moment H :=
  canonical_of_padded canonicalInput20932 canonicalOutput20932 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20933 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, -2, 2, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput20933 : ExponentCode := normalNode1364

theorem canonicalSound20933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20933.moment H = canonicalOutput20933.moment H :=
  canonical_of_padded canonicalInput20933 canonicalOutput20933 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20934 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, -2, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput20934 : ExponentCode := normalNode1074

theorem canonicalSound20934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20934.moment H = canonicalOutput20934.moment H :=
  canonical_of_padded canonicalInput20934 canonicalOutput20934 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation342, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20935 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput20935 : ExponentCode := normalNode5333

theorem canonicalSound20935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20935.moment H = canonicalOutput20935.moment H :=
  canonical_of_padded canonicalInput20935 canonicalOutput20935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20936 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20936 : ExponentCode := normalNode10594

theorem canonicalSound20936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20936.moment H = canonicalOutput20936.moment H :=
  canonical_of_padded canonicalInput20936 canonicalOutput20936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20937 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -2, 2, 1], ![2, 2, 1, -5]]⟩

def canonicalOutput20937 : ExponentCode := normalNode349

theorem canonicalSound20937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20937.moment H = canonicalOutput20937.moment H :=
  canonical_of_padded canonicalInput20937 canonicalOutput20937 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20938 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput20938 : ExponentCode := normalNode6299

theorem canonicalSound20938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20938.moment H = canonicalOutput20938.moment H :=
  canonical_of_padded canonicalInput20938 canonicalOutput20938 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20939 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, -2, 2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput20939 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3332⟩

theorem canonicalSound20939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20939.moment H = canonicalOutput20939.moment H :=
  canonical_of_padded canonicalInput20939 canonicalOutput20939 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20940 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20940 : ExponentCode := normalNode10694

theorem canonicalSound20940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20940.moment H = canonicalOutput20940.moment H :=
  canonical_of_padded canonicalInput20940 canonicalOutput20940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20941 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![0, 2, 2, -4]]⟩

def canonicalOutput20941 : ExponentCode := normalNode10693

theorem canonicalSound20941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20941.moment H = canonicalOutput20941.moment H :=
  canonical_of_padded canonicalInput20941 canonicalOutput20941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20942 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput20942 : ExponentCode := normalNode10692

theorem canonicalSound20942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20942.moment H = canonicalOutput20942.moment H :=
  canonical_of_padded canonicalInput20942 canonicalOutput20942 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20943 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput20943 : ExponentCode := normalNode1015

theorem canonicalSound20943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20943.moment H = canonicalOutput20943.moment H :=
  canonical_of_padded canonicalInput20943 canonicalOutput20943 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20944 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20944 : ExponentCode := normalNode7176

theorem canonicalSound20944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20944.moment H = canonicalOutput20944.moment H :=
  canonical_of_padded canonicalInput20944 canonicalOutput20944 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20945 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput20945 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3348⟩

theorem canonicalSound20945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20945.moment H = canonicalOutput20945.moment H :=
  canonical_of_padded canonicalInput20945 canonicalOutput20945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20946 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20946 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3449⟩

theorem canonicalSound20946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20946.moment H = canonicalOutput20946.moment H :=
  canonical_of_padded canonicalInput20946 canonicalOutput20946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20947 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput20947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2708⟩

theorem canonicalSound20947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20947.moment H = canonicalOutput20947.moment H :=
  canonical_of_padded canonicalInput20947 canonicalOutput20947 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20948 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, -1, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput20948 : ExponentCode := normalNode10571

theorem canonicalSound20948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20948.moment H = canonicalOutput20948.moment H :=
  canonical_of_padded canonicalInput20948 canonicalOutput20948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20949 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 2, 3, -4]]⟩

def canonicalOutput20949 : ExponentCode := normalNode4766

theorem canonicalSound20949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20949.moment H = canonicalOutput20949.moment H :=
  canonical_of_padded canonicalInput20949 canonicalOutput20949 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20950 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20950 : ExponentCode := normalNode1012

theorem canonicalSound20950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20950.moment H = canonicalOutput20950.moment H :=
  canonical_of_padded canonicalInput20950 canonicalOutput20950 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20951 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput20951 : ExponentCode := normalNode10515

theorem canonicalSound20951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20951.moment H = canonicalOutput20951.moment H :=
  canonical_of_padded canonicalInput20951 canonicalOutput20951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20952 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput20952 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3428⟩

theorem canonicalSound20952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20952.moment H = canonicalOutput20952.moment H :=
  canonical_of_padded canonicalInput20952 canonicalOutput20952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20953 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-1, 2, 3, -4]]⟩

def canonicalOutput20953 : ExponentCode := normalNode4733

theorem canonicalSound20953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20953.moment H = canonicalOutput20953.moment H :=
  canonical_of_padded canonicalInput20953 canonicalOutput20953 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20954 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20954 : ExponentCode := normalNode10814

theorem canonicalSound20954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20954.moment H = canonicalOutput20954.moment H :=
  canonical_of_padded canonicalInput20954 canonicalOutput20954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation196, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20955 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput20955 : ExponentCode := normalNode10621

theorem canonicalSound20955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20955.moment H = canonicalOutput20955.moment H :=
  canonical_of_padded canonicalInput20955 canonicalOutput20955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20956 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![0, -2, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput20956 : ExponentCode := normalNode3057

theorem canonicalSound20956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20956.moment H = canonicalOutput20956.moment H :=
  canonical_of_padded canonicalInput20956 canonicalOutput20956 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20957 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20957 : ExponentCode := normalNode5865

theorem canonicalSound20957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20957.moment H = canonicalOutput20957.moment H :=
  canonical_of_padded canonicalInput20957 canonicalOutput20957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20958 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![2, -1, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20958 : ExponentCode := normalNode5057

theorem canonicalSound20958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20958.moment H = canonicalOutput20958.moment H :=
  canonical_of_padded canonicalInput20958 canonicalOutput20958 (by decide) (by decide)
    ⟨false, true, canonicalPermutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20959 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20959 : ExponentCode := normalNode7176

theorem canonicalSound20959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20959.moment H = canonicalOutput20959.moment H :=
  canonical_of_padded canonicalInput20959 canonicalOutput20959 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20960 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 3, -5]]⟩

def canonicalOutput20960 : ExponentCode := normalNode1712

theorem canonicalSound20960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20960.moment H = canonicalOutput20960.moment H :=
  canonical_of_padded canonicalInput20960 canonicalOutput20960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20961 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput20961 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3412⟩

theorem canonicalSound20961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20961.moment H = canonicalOutput20961.moment H :=
  canonical_of_padded canonicalInput20961 canonicalOutput20961 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20962 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput20962 : ExponentCode := normalNode10702

theorem canonicalSound20962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20962.moment H = canonicalOutput20962.moment H :=
  canonical_of_padded canonicalInput20962 canonicalOutput20962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20963 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput20963 : ExponentCode := normalNode5857

theorem canonicalSound20963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20963.moment H = canonicalOutput20963.moment H :=
  canonical_of_padded canonicalInput20963 canonicalOutput20963 (by decide) (by decide)
    ⟨false, true, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20964 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput20964 : ExponentCode := normalNode10667

theorem canonicalSound20964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20964.moment H = canonicalOutput20964.moment H :=
  canonical_of_padded canonicalInput20964 canonicalOutput20964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20965 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput20965 : ExponentCode := normalNode5033

theorem canonicalSound20965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20965.moment H = canonicalOutput20965.moment H :=
  canonical_of_padded canonicalInput20965 canonicalOutput20965 (by decide) (by decide)
    ⟨false, true, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20966 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput20966 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2751⟩

theorem canonicalSound20966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20966.moment H = canonicalOutput20966.moment H :=
  canonical_of_padded canonicalInput20966 canonicalOutput20966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20967 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput20967 : ExponentCode := normalNode1708

theorem canonicalSound20967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20967.moment H = canonicalOutput20967.moment H :=
  canonical_of_padded canonicalInput20967 canonicalOutput20967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20968 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20968 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3424⟩

theorem canonicalSound20968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20968.moment H = canonicalOutput20968.moment H :=
  canonical_of_padded canonicalInput20968 canonicalOutput20968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20969 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![2, 0, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20969 : ExponentCode := normalNode3208

theorem canonicalSound20969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20969.moment H = canonicalOutput20969.moment H :=
  canonical_of_padded canonicalInput20969 canonicalOutput20969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20970 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput20970 : ExponentCode := normalNode9909

theorem canonicalSound20970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20970.moment H = canonicalOutput20970.moment H :=
  canonical_of_padded canonicalInput20970 canonicalOutput20970 (by decide) (by decide)
    ⟨false, true, canonicalPermutation127, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20971 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, -2, 4, -1]]⟩

def canonicalOutput20971 : ExponentCode := normalNode1258

theorem canonicalSound20971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20971.moment H = canonicalOutput20971.moment H :=
  canonical_of_padded canonicalInput20971 canonicalOutput20971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20972 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput20972 : ExponentCode := normalNode10605

theorem canonicalSound20972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20972.moment H = canonicalOutput20972.moment H :=
  canonical_of_padded canonicalInput20972 canonicalOutput20972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20973 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput20973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound20973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20973.moment H = canonicalOutput20973.moment H :=
  canonical_of_padded canonicalInput20973 canonicalOutput20973 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20974 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, 2, -3, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20974 : ExponentCode := normalNode10824

theorem canonicalSound20974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20974.moment H = canonicalOutput20974.moment H :=
  canonical_of_padded canonicalInput20974 canonicalOutput20974 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20975 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -3, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput20975 : ExponentCode := normalNode4872

theorem canonicalSound20975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20975.moment H = canonicalOutput20975.moment H :=
  canonical_of_padded canonicalInput20975 canonicalOutput20975 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20976 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput20976 : ExponentCode := normalNode3462

theorem canonicalSound20976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20976.moment H = canonicalOutput20976.moment H :=
  canonical_of_padded canonicalInput20976 canonicalOutput20976 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20977 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, 2, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20977 : ExponentCode := normalNode10814

theorem canonicalSound20977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20977.moment H = canonicalOutput20977.moment H :=
  canonical_of_padded canonicalInput20977 canonicalOutput20977 (by decide) (by decide)
    ⟨false, false, canonicalPermutation198, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20978 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 2, -3, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput20978 : ExponentCode := normalNode3203

theorem canonicalSound20978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20978.moment H = canonicalOutput20978.moment H :=
  canonical_of_padded canonicalInput20978 canonicalOutput20978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20979 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, -2, 4, -1]]⟩

def canonicalOutput20979 : ExponentCode := normalNode1250

theorem canonicalSound20979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20979.moment H = canonicalOutput20979.moment H :=
  canonical_of_padded canonicalInput20979 canonicalOutput20979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20980 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput20980 : ExponentCode := normalNode5776

theorem canonicalSound20980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20980.moment H = canonicalOutput20980.moment H :=
  canonical_of_padded canonicalInput20980 canonicalOutput20980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20981 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput20981 : ExponentCode := normalNode4819

theorem canonicalSound20981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20981.moment H = canonicalOutput20981.moment H :=
  canonical_of_padded canonicalInput20981 canonicalOutput20981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20982 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput20982 : ExponentCode := normalNode5788

theorem canonicalSound20982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20982.moment H = canonicalOutput20982.moment H :=
  canonical_of_padded canonicalInput20982 canonicalOutput20982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20983 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20983 : ExponentCode := normalNode7352

theorem canonicalSound20983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20983.moment H = canonicalOutput20983.moment H :=
  canonical_of_padded canonicalInput20983 canonicalOutput20983 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20984 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput20984 : ExponentCode := normalNode9798

theorem canonicalSound20984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20984.moment H = canonicalOutput20984.moment H :=
  canonical_of_padded canonicalInput20984 canonicalOutput20984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20985 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput20985 : ExponentCode := normalNode5796

theorem canonicalSound20985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20985.moment H = canonicalOutput20985.moment H :=
  canonical_of_padded canonicalInput20985 canonicalOutput20985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20986 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, 1, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput20986 : ExponentCode := normalNode4841

theorem canonicalSound20986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20986.moment H = canonicalOutput20986.moment H :=
  canonical_of_padded canonicalInput20986 canonicalOutput20986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20987 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -3, 3], ![2, -2, 2, -2]]⟩

def canonicalOutput20987 : ExponentCode := normalNode5798

theorem canonicalSound20987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20987.moment H = canonicalOutput20987.moment H :=
  canonical_of_padded canonicalInput20987 canonicalOutput20987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20988 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -3, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput20988 : ExponentCode := normalNode10859

theorem canonicalSound20988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20988.moment H = canonicalOutput20988.moment H :=
  canonical_of_padded canonicalInput20988 canonicalOutput20988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20989 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput20989 : ExponentCode := normalNode7877

theorem canonicalSound20989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20989.moment H = canonicalOutput20989.moment H :=
  canonical_of_padded canonicalInput20989 canonicalOutput20989 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20990 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput20990 : ExponentCode := normalNode5788

theorem canonicalSound20990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20990.moment H = canonicalOutput20990.moment H :=
  canonical_of_padded canonicalInput20990 canonicalOutput20990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20991 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20991 : ExponentCode := normalNode7389

theorem canonicalSound20991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20991.moment H = canonicalOutput20991.moment H :=
  canonical_of_padded canonicalInput20991 canonicalOutput20991 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
