import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7808 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7808 : ExponentCode := normalNode9905

theorem canonicalSound7808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7808.moment H = canonicalOutput7808.moment H :=
  canonical_of_padded canonicalInput7808 canonicalOutput7808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7809 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7809 : ExponentCode := normalNode9905

theorem canonicalSound7809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7809.moment H = canonicalOutput7809.moment H :=
  canonical_of_padded canonicalInput7809 canonicalOutput7809 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7810 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -2, 1], ![2, -1, -2, 1]]⟩

def canonicalOutput7810 : ExponentCode := normalNode10353

theorem canonicalSound7810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7810.moment H = canonicalOutput7810.moment H :=
  canonical_of_padded canonicalInput7810 canonicalOutput7810 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7811 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput7811 : ExponentCode := normalNode4111

theorem canonicalSound7811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7811.moment H = canonicalOutput7811.moment H :=
  canonical_of_padded canonicalInput7811 canonicalOutput7811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7812 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7812 : ExponentCode := normalNode10560

theorem canonicalSound7812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7812.moment H = canonicalOutput7812.moment H :=
  canonical_of_padded canonicalInput7812 canonicalOutput7812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7813 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -1, -3, 2]]⟩

def canonicalOutput7813 : ExponentCode := normalNode9649

theorem canonicalSound7813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7813.moment H = canonicalOutput7813.moment H :=
  canonical_of_padded canonicalInput7813 canonicalOutput7813 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7814 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 2, -4, 2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7814 : ExponentCode := normalNode3313

theorem canonicalSound7814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7814.moment H = canonicalOutput7814.moment H :=
  canonical_of_padded canonicalInput7814 canonicalOutput7814 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7815 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 2, -3, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput7815 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code793

theorem canonicalSound7815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7815.moment H = canonicalOutput7815.moment H :=
  canonical_of_padded canonicalInput7815 canonicalOutput7815 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7816 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![0, 2, -2, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput7816 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code718

theorem canonicalSound7816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7816.moment H = canonicalOutput7816.moment H :=
  canonical_of_padded canonicalInput7816 canonicalOutput7816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7817 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![1, -2, -1, 2], ![1, 2, -3, 0]]⟩

def canonicalOutput7817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code471

theorem canonicalSound7817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7817.moment H = canonicalOutput7817.moment H :=
  canonical_of_padded canonicalInput7817 canonicalOutput7817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7818 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![1, -2, 0, 1], ![1, 2, -4, 1]]⟩

def canonicalOutput7818 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code316

theorem canonicalSound7818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7818.moment H = canonicalOutput7818.moment H :=
  canonical_of_padded canonicalInput7818 canonicalOutput7818 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7819 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput7819 : ExponentCode := normalNode9117

theorem canonicalSound7819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7819.moment H = canonicalOutput7819.moment H :=
  canonical_of_padded canonicalInput7819 canonicalOutput7819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7820 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput7820 : ExponentCode := normalNode7985

theorem canonicalSound7820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7820.moment H = canonicalOutput7820.moment H :=
  canonical_of_padded canonicalInput7820 canonicalOutput7820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7821 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput7821 : ExponentCode := normalNode7480

theorem canonicalSound7821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7821.moment H = canonicalOutput7821.moment H :=
  canonical_of_padded canonicalInput7821 canonicalOutput7821 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7822 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput7822 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1300⟩

theorem canonicalSound7822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7822.moment H = canonicalOutput7822.moment H :=
  canonical_of_padded canonicalInput7822 canonicalOutput7822 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput7823 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, -1, 0], ![2, -2, 4, -4]]⟩

def canonicalOutput7823 : ExponentCode := normalNode9641

theorem canonicalSound7823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7823.moment H = canonicalOutput7823.moment H :=
  canonical_of_padded canonicalInput7823 canonicalOutput7823 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7824 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput7824 : ExponentCode := normalNode4122

theorem canonicalSound7824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7824.moment H = canonicalOutput7824.moment H :=
  canonical_of_padded canonicalInput7824 canonicalOutput7824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7825 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7825 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code258

theorem canonicalSound7825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7825.moment H = canonicalOutput7825.moment H :=
  canonical_of_padded canonicalInput7825 canonicalOutput7825 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7826 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput7826 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound7826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7826.moment H = canonicalOutput7826.moment H :=
  canonical_of_padded canonicalInput7826 canonicalOutput7826 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7827 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput7827 : ExponentCode := normalNode9741

theorem canonicalSound7827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7827.moment H = canonicalOutput7827.moment H :=
  canonical_of_padded canonicalInput7827 canonicalOutput7827 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7828 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput7828 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound7828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7828.moment H = canonicalOutput7828.moment H :=
  canonical_of_padded canonicalInput7828 canonicalOutput7828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7829 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput7829 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1319⟩

theorem canonicalSound7829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7829.moment H = canonicalOutput7829.moment H :=
  canonical_of_padded canonicalInput7829 canonicalOutput7829 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7830 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 0, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput7830 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1318⟩

theorem canonicalSound7830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7830.moment H = canonicalOutput7830.moment H :=
  canonical_of_padded canonicalInput7830 canonicalOutput7830 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7831 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 1, 1, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput7831 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound7831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7831.moment H = canonicalOutput7831.moment H :=
  canonical_of_padded canonicalInput7831 canonicalOutput7831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7832 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound7832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7832.moment H = canonicalOutput7832.moment H :=
  canonical_of_padded canonicalInput7832 canonicalOutput7832 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7833 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7833 : ExponentCode := normalNode3758

theorem canonicalSound7833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7833.moment H = canonicalOutput7833.moment H :=
  canonical_of_padded canonicalInput7833 canonicalOutput7833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7834 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7834 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound7834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7834.moment H = canonicalOutput7834.moment H :=
  canonical_of_padded canonicalInput7834 canonicalOutput7834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7835 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput7835 : ExponentCode := normalNode3784

theorem canonicalSound7835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7835.moment H = canonicalOutput7835.moment H :=
  canonical_of_padded canonicalInput7835 canonicalOutput7835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7836 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput7836 : ExponentCode := normalNode3786

theorem canonicalSound7836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7836.moment H = canonicalOutput7836.moment H :=
  canonical_of_padded canonicalInput7836 canonicalOutput7836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7837 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput7837 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound7837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7837.moment H = canonicalOutput7837.moment H :=
  canonical_of_padded canonicalInput7837 canonicalOutput7837 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7838 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput7838 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code250

theorem canonicalSound7838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7838.moment H = canonicalOutput7838.moment H :=
  canonical_of_padded canonicalInput7838 canonicalOutput7838 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7839 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -2, 1], ![1, 1, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput7839 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound7839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7839.moment H = canonicalOutput7839.moment H :=
  canonical_of_padded canonicalInput7839 canonicalOutput7839 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7840 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![0, 1, 3, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput7840 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2033⟩

theorem canonicalSound7840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7840.moment H = canonicalOutput7840.moment H :=
  canonical_of_padded canonicalInput7840 canonicalOutput7840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7841 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7841 : ExponentCode := normalNode10834

theorem canonicalSound7841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7841.moment H = canonicalOutput7841.moment H :=
  canonical_of_padded canonicalInput7841 canonicalOutput7841 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7842 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -2, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7842 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound7842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7842.moment H = canonicalOutput7842.moment H :=
  canonical_of_padded canonicalInput7842 canonicalOutput7842 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput7843 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7843 : ExponentCode := normalNode2413

theorem canonicalSound7843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7843.moment H = canonicalOutput7843.moment H :=
  canonical_of_padded canonicalInput7843 canonicalOutput7843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7844 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7844 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound7844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7844.moment H = canonicalOutput7844.moment H :=
  canonical_of_padded canonicalInput7844 canonicalOutput7844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7845 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2635⟩

theorem canonicalSound7845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7845.moment H = canonicalOutput7845.moment H :=
  canonical_of_padded canonicalInput7845 canonicalOutput7845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7846 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput7846 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7846.moment H = canonicalOutput7846.moment H :=
  canonical_of_padded canonicalInput7846 canonicalOutput7846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput7847 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7847 : ExponentCode := normalNode10579

theorem canonicalSound7847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7847.moment H = canonicalOutput7847.moment H :=
  canonical_of_padded canonicalInput7847 canonicalOutput7847 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7848 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput7848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound7848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7848.moment H = canonicalOutput7848.moment H :=
  canonical_of_padded canonicalInput7848 canonicalOutput7848 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7849 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7849 : ExponentCode := normalNode10560

theorem canonicalSound7849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7849.moment H = canonicalOutput7849.moment H :=
  canonical_of_padded canonicalInput7849 canonicalOutput7849 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7850 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput7850 : ExponentCode := normalNode4103

theorem canonicalSound7850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7850.moment H = canonicalOutput7850.moment H :=
  canonical_of_padded canonicalInput7850 canonicalOutput7850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7851 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 3, -4], ![2, -3, -1, 2]]⟩

def canonicalOutput7851 : ExponentCode := normalNode3910

theorem canonicalSound7851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7851.moment H = canonicalOutput7851.moment H :=
  canonical_of_padded canonicalInput7851 canonicalOutput7851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7852 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput7852 : ExponentCode := normalNode1332

theorem canonicalSound7852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7852.moment H = canonicalOutput7852.moment H :=
  canonical_of_padded canonicalInput7852 canonicalOutput7852 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7853 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7853 : ExponentCode := normalNode3912

theorem canonicalSound7853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7853.moment H = canonicalOutput7853.moment H :=
  canonical_of_padded canonicalInput7853 canonicalOutput7853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7854 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput7854 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2014⟩

theorem canonicalSound7854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7854.moment H = canonicalOutput7854.moment H :=
  canonical_of_padded canonicalInput7854 canonicalOutput7854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7855 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -3, 3, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7855 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2369⟩

theorem canonicalSound7855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7855.moment H = canonicalOutput7855.moment H :=
  canonical_of_padded canonicalInput7855 canonicalOutput7855 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7856 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7856 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2019⟩

theorem canonicalSound7856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7856.moment H = canonicalOutput7856.moment H :=
  canonical_of_padded canonicalInput7856 canonicalOutput7856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7857 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, 2, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7857 : ExponentCode := normalNode4463

theorem canonicalSound7857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7857.moment H = canonicalOutput7857.moment H :=
  canonical_of_padded canonicalInput7857 canonicalOutput7857 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7858 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7858 : ExponentCode := normalNode9079

theorem canonicalSound7858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7858.moment H = canonicalOutput7858.moment H :=
  canonical_of_padded canonicalInput7858 canonicalOutput7858 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7859 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput7859 : ExponentCode := normalNode3956

theorem canonicalSound7859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7859.moment H = canonicalOutput7859.moment H :=
  canonical_of_padded canonicalInput7859 canonicalOutput7859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7860 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput7860 : ExponentCode := normalNode3956

theorem canonicalSound7860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7860.moment H = canonicalOutput7860.moment H :=
  canonical_of_padded canonicalInput7860 canonicalOutput7860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7861 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput7861 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound7861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7861.moment H = canonicalOutput7861.moment H :=
  canonical_of_padded canonicalInput7861 canonicalOutput7861 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7862 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7862 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1698⟩

theorem canonicalSound7862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7862.moment H = canonicalOutput7862.moment H :=
  canonical_of_padded canonicalInput7862 canonicalOutput7862 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7863 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput7863 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2053⟩

theorem canonicalSound7863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7863.moment H = canonicalOutput7863.moment H :=
  canonical_of_padded canonicalInput7863 canonicalOutput7863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7864 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -3, 1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7864 : ExponentCode := normalNode3917

theorem canonicalSound7864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7864.moment H = canonicalOutput7864.moment H :=
  canonical_of_padded canonicalInput7864 canonicalOutput7864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7865 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -3, 3, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7865 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2369⟩

theorem canonicalSound7865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7865.moment H = canonicalOutput7865.moment H :=
  canonical_of_padded canonicalInput7865 canonicalOutput7865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput7866 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -2, 3, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput7866 : ExponentCode := normalNode3915

theorem canonicalSound7866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7866.moment H = canonicalOutput7866.moment H :=
  canonical_of_padded canonicalInput7866 canonicalOutput7866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7867 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7867 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2020⟩

theorem canonicalSound7867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7867.moment H = canonicalOutput7867.moment H :=
  canonical_of_padded canonicalInput7867 canonicalOutput7867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7868 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7868 : ExponentCode := normalNode3959

theorem canonicalSound7868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7868.moment H = canonicalOutput7868.moment H :=
  canonical_of_padded canonicalInput7868 canonicalOutput7868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7869 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -3, 0, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput7869 : ExponentCode := normalNode3268

theorem canonicalSound7869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7869.moment H = canonicalOutput7869.moment H :=
  canonical_of_padded canonicalInput7869 canonicalOutput7869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7870 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput7870 : ExponentCode := normalNode9852

theorem canonicalSound7870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7870.moment H = canonicalOutput7870.moment H :=
  canonical_of_padded canonicalInput7870 canonicalOutput7870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7871 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound7871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7871.moment H = canonicalOutput7871.moment H :=
  canonical_of_padded canonicalInput7871 canonicalOutput7871 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
