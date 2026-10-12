import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16896 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput16896 : ExponentCode := normalNode5405

theorem canonicalSound16896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16896.moment H = canonicalOutput16896.moment H :=
  canonical_of_padded canonicalInput16896 canonicalOutput16896 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16897 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput16897 : ExponentCode := normalNode5405

theorem canonicalSound16897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16897.moment H = canonicalOutput16897.moment H :=
  canonical_of_padded canonicalInput16897 canonicalOutput16897 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16898 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16898 : ExponentCode := normalNode1778

theorem canonicalSound16898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16898.moment H = canonicalOutput16898.moment H :=
  canonical_of_padded canonicalInput16898 canonicalOutput16898 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16899 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput16899 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1364

theorem canonicalSound16899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16899.moment H = canonicalOutput16899.moment H :=
  canonical_of_padded canonicalInput16899 canonicalOutput16899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16900 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput16900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound16900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16900.moment H = canonicalOutput16900.moment H :=
  canonical_of_padded canonicalInput16900 canonicalOutput16900 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16901 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput16901 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound16901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16901.moment H = canonicalOutput16901.moment H :=
  canonical_of_padded canonicalInput16901 canonicalOutput16901 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16902 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput16902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound16902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16902.moment H = canonicalOutput16902.moment H :=
  canonical_of_padded canonicalInput16902 canonicalOutput16902 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16903 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput16903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound16903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16903.moment H = canonicalOutput16903.moment H :=
  canonical_of_padded canonicalInput16903 canonicalOutput16903 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16904 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput16904 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1544⟩

theorem canonicalSound16904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16904.moment H = canonicalOutput16904.moment H :=
  canonical_of_padded canonicalInput16904 canonicalOutput16904 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16905 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput16905 : ExponentCode := normalNode8917

theorem canonicalSound16905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16905.moment H = canonicalOutput16905.moment H :=
  canonical_of_padded canonicalInput16905 canonicalOutput16905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16906 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput16906 : ExponentCode := normalNode8916

theorem canonicalSound16906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16906.moment H = canonicalOutput16906.moment H :=
  canonical_of_padded canonicalInput16906 canonicalOutput16906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16907 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 1, 3, -4], ![2, 0, -1, -1]]⟩

def canonicalOutput16907 : ExponentCode := normalNode8921

theorem canonicalSound16907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16907.moment H = canonicalOutput16907.moment H :=
  canonical_of_padded canonicalInput16907 canonicalOutput16907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16908 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput16908 : ExponentCode := normalNode4219

theorem canonicalSound16908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16908.moment H = canonicalOutput16908.moment H :=
  canonical_of_padded canonicalInput16908 canonicalOutput16908 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16909 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16909 : ExponentCode := normalNode3066

theorem canonicalSound16909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16909.moment H = canonicalOutput16909.moment H :=
  canonical_of_padded canonicalInput16909 canonicalOutput16909 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16910 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, -2, 3], ![1, 0, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput16910 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node992⟩

theorem canonicalSound16910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16910.moment H = canonicalOutput16910.moment H :=
  canonical_of_padded canonicalInput16910 canonicalOutput16910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16911 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput16911 : ExponentCode := normalNode2933

theorem canonicalSound16911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16911.moment H = canonicalOutput16911.moment H :=
  canonical_of_padded canonicalInput16911 canonicalOutput16911 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16912 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput16912 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1361

theorem canonicalSound16912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16912.moment H = canonicalOutput16912.moment H :=
  canonical_of_padded canonicalInput16912 canonicalOutput16912 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16913 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput16913 : ExponentCode := normalNode8932

theorem canonicalSound16913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16913.moment H = canonicalOutput16913.moment H :=
  canonical_of_padded canonicalInput16913 canonicalOutput16913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16914 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput16914 : ExponentCode := normalNode8933

theorem canonicalSound16914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16914.moment H = canonicalOutput16914.moment H :=
  canonical_of_padded canonicalInput16914 canonicalOutput16914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16915 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, 2, -2, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput16915 : ExponentCode := normalNode4650

theorem canonicalSound16915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16915.moment H = canonicalOutput16915.moment H :=
  canonical_of_padded canonicalInput16915 canonicalOutput16915 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16916 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput16916 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound16916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16916.moment H = canonicalOutput16916.moment H :=
  canonical_of_padded canonicalInput16916 canonicalOutput16916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16917 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, -1, 2], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput16917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound16917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16917.moment H = canonicalOutput16917.moment H :=
  canonical_of_padded canonicalInput16917 canonicalOutput16917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16918 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput16918 : ExponentCode := normalNode4560

theorem canonicalSound16918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16918.moment H = canonicalOutput16918.moment H :=
  canonical_of_padded canonicalInput16918 canonicalOutput16918 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16919 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput16919 : ExponentCode := normalNode8957

theorem canonicalSound16919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16919.moment H = canonicalOutput16919.moment H :=
  canonical_of_padded canonicalInput16919 canonicalOutput16919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16920 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16920 : ExponentCode := normalNode9397

theorem canonicalSound16920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16920.moment H = canonicalOutput16920.moment H :=
  canonical_of_padded canonicalInput16920 canonicalOutput16920 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16921 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput16921 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2579⟩

theorem canonicalSound16921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16921.moment H = canonicalOutput16921.moment H :=
  canonical_of_padded canonicalInput16921 canonicalOutput16921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16922 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput16922 : ExponentCode := normalNode10327

theorem canonicalSound16922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16922.moment H = canonicalOutput16922.moment H :=
  canonical_of_padded canonicalInput16922 canonicalOutput16922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16923 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput16923 : ExponentCode := normalNode10270

theorem canonicalSound16923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16923.moment H = canonicalOutput16923.moment H :=
  canonical_of_padded canonicalInput16923 canonicalOutput16923 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16924 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1681⟩

theorem canonicalSound16924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16924.moment H = canonicalOutput16924.moment H :=
  canonical_of_padded canonicalInput16924 canonicalOutput16924 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16925 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput16925 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound16925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16925.moment H = canonicalOutput16925.moment H :=
  canonical_of_padded canonicalInput16925 canonicalOutput16925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16926 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 0, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput16926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound16926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16926.moment H = canonicalOutput16926.moment H :=
  canonical_of_padded canonicalInput16926 canonicalOutput16926 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16927 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 1, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput16927 : ExponentCode := normalNode8980

theorem canonicalSound16927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16927.moment H = canonicalOutput16927.moment H :=
  canonical_of_padded canonicalInput16927 canonicalOutput16927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16928 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput16928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2519⟩

theorem canonicalSound16928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16928.moment H = canonicalOutput16928.moment H :=
  canonical_of_padded canonicalInput16928 canonicalOutput16928 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16929 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput16929 : ExponentCode := normalNode3256

theorem canonicalSound16929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16929.moment H = canonicalOutput16929.moment H :=
  canonical_of_padded canonicalInput16929 canonicalOutput16929 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16930 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 1, 0], ![0, 3, -1, -2], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16930 : ExponentCode := normalNode1802

theorem canonicalSound16930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16930.moment H = canonicalOutput16930.moment H :=
  canonical_of_padded canonicalInput16930 canonicalOutput16930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16931 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 1, 0], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput16931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound16931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16931.moment H = canonicalOutput16931.moment H :=
  canonical_of_padded canonicalInput16931 canonicalOutput16931 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16932 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput16932 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2516⟩

theorem canonicalSound16932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16932.moment H = canonicalOutput16932.moment H :=
  canonical_of_padded canonicalInput16932 canonicalOutput16932 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16933 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput16933 : ExponentCode := normalNode4286

theorem canonicalSound16933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16933.moment H = canonicalOutput16933.moment H :=
  canonical_of_padded canonicalInput16933 canonicalOutput16933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16934 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput16934 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound16934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16934.moment H = canonicalOutput16934.moment H :=
  canonical_of_padded canonicalInput16934 canonicalOutput16934 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16935 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput16935 : ExponentCode := normalNode4396

theorem canonicalSound16935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16935.moment H = canonicalOutput16935.moment H :=
  canonical_of_padded canonicalInput16935 canonicalOutput16935 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16936 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16936.moment H = canonicalOutput16936.moment H :=
  canonical_of_padded canonicalInput16936 canonicalOutput16936 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16937 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput16937 : ExponentCode := normalNode3518

theorem canonicalSound16937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16937.moment H = canonicalOutput16937.moment H :=
  canonical_of_padded canonicalInput16937 canonicalOutput16937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16938 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16938 : ExponentCode := normalNode5282

theorem canonicalSound16938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16938.moment H = canonicalOutput16938.moment H :=
  canonical_of_padded canonicalInput16938 canonicalOutput16938 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16939 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput16939 : ExponentCode := normalNode2004

theorem canonicalSound16939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16939.moment H = canonicalOutput16939.moment H :=
  canonical_of_padded canonicalInput16939 canonicalOutput16939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16940 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput16940 : ExponentCode := normalNode5437

theorem canonicalSound16940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16940.moment H = canonicalOutput16940.moment H :=
  canonical_of_padded canonicalInput16940 canonicalOutput16940 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16941 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput16941 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1369

theorem canonicalSound16941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16941.moment H = canonicalOutput16941.moment H :=
  canonical_of_padded canonicalInput16941 canonicalOutput16941 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16942 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput16942 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound16942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16942.moment H = canonicalOutput16942.moment H :=
  canonical_of_padded canonicalInput16942 canonicalOutput16942 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16943 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 1, -3, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput16943 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound16943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16943.moment H = canonicalOutput16943.moment H :=
  canonical_of_padded canonicalInput16943 canonicalOutput16943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16944 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput16944 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound16944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16944.moment H = canonicalOutput16944.moment H :=
  canonical_of_padded canonicalInput16944 canonicalOutput16944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16945 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1681⟩

theorem canonicalSound16945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16945.moment H = canonicalOutput16945.moment H :=
  canonical_of_padded canonicalInput16945 canonicalOutput16945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16946 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput16946 : ExponentCode := normalNode9027

theorem canonicalSound16946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16946.moment H = canonicalOutput16946.moment H :=
  canonical_of_padded canonicalInput16946 canonicalOutput16946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16947 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput16947 : ExponentCode := normalNode8826

theorem canonicalSound16947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16947.moment H = canonicalOutput16947.moment H :=
  canonical_of_padded canonicalInput16947 canonicalOutput16947 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16948 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput16948 : ExponentCode := normalNode3959

theorem canonicalSound16948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16948.moment H = canonicalOutput16948.moment H :=
  canonical_of_padded canonicalInput16948 canonicalOutput16948 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16949 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput16949 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound16949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16949.moment H = canonicalOutput16949.moment H :=
  canonical_of_padded canonicalInput16949 canonicalOutput16949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16950 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput16950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound16950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16950.moment H = canonicalOutput16950.moment H :=
  canonical_of_padded canonicalInput16950 canonicalOutput16950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16951 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 3, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput16951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound16951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16951.moment H = canonicalOutput16951.moment H :=
  canonical_of_padded canonicalInput16951 canonicalOutput16951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16952 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 4, -3], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput16952 : ExponentCode := normalNode9038

theorem canonicalSound16952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16952.moment H = canonicalOutput16952.moment H :=
  canonical_of_padded canonicalInput16952 canonicalOutput16952 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16953 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 4, -3], ![0, 1, -3, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput16953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound16953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16953.moment H = canonicalOutput16953.moment H :=
  canonical_of_padded canonicalInput16953 canonicalOutput16953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16954 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16954 : ExponentCode := normalNode3432

theorem canonicalSound16954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16954.moment H = canonicalOutput16954.moment H :=
  canonical_of_padded canonicalInput16954 canonicalOutput16954 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16955 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 0, 4, -3], ![1, 0, -3, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput16955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound16955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16955.moment H = canonicalOutput16955.moment H :=
  canonical_of_padded canonicalInput16955 canonicalOutput16955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16956 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput16956 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1110

theorem canonicalSound16956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16956.moment H = canonicalOutput16956.moment H :=
  canonical_of_padded canonicalInput16956 canonicalOutput16956 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16957 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![0, 1, 3, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput16957 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1150

theorem canonicalSound16957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16957.moment H = canonicalOutput16957.moment H :=
  canonical_of_padded canonicalInput16957 canonicalOutput16957 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16958 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput16958 : ExponentCode := normalNode9443

theorem canonicalSound16958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16958.moment H = canonicalOutput16958.moment H :=
  canonical_of_padded canonicalInput16958 canonicalOutput16958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16959 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, -1, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput16959 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound16959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16959.moment H = canonicalOutput16959.moment H :=
  canonical_of_padded canonicalInput16959 canonicalOutput16959 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
