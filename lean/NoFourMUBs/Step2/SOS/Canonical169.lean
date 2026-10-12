import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10816 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -3, 4], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput10816 : ExponentCode := normalNode10941

theorem canonicalSound10816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10816.moment H = canonicalOutput10816.moment H :=
  canonical_of_padded canonicalInput10816 canonicalOutput10816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10817 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -2, 3], ![0, 0, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩

theorem canonicalSound10817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10817.moment H = canonicalOutput10817.moment H :=
  canonical_of_padded canonicalInput10817 canonicalOutput10817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10818 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, 0, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10818 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code249

theorem canonicalSound10818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10818.moment H = canonicalOutput10818.moment H :=
  canonical_of_padded canonicalInput10818 canonicalOutput10818 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10819 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10819 : ExponentCode := normalNode5252

theorem canonicalSound10819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10819.moment H = canonicalOutput10819.moment H :=
  canonical_of_padded canonicalInput10819 canonicalOutput10819 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10820 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10820 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound10820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10820.moment H = canonicalOutput10820.moment H :=
  canonical_of_padded canonicalInput10820 canonicalOutput10820 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10821 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -1, 2], ![0, 0, 4, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput10821 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1135

theorem canonicalSound10821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10821.moment H = canonicalOutput10821.moment H :=
  canonical_of_padded canonicalInput10821 canonicalOutput10821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10822 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 2, -1], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput10822 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound10822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10822.moment H = canonicalOutput10822.moment H :=
  canonical_of_padded canonicalInput10822 canonicalOutput10822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10823 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![1, -2, 2, -1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2241⟩

theorem canonicalSound10823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10823.moment H = canonicalOutput10823.moment H :=
  canonical_of_padded canonicalInput10823 canonicalOutput10823 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10824 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 2, -1], ![0, 1, -4, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput10824 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1136

theorem canonicalSound10824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10824.moment H = canonicalOutput10824.moment H :=
  canonical_of_padded canonicalInput10824 canonicalOutput10824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10825 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 2, -1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10825 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound10825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10825.moment H = canonicalOutput10825.moment H :=
  canonical_of_padded canonicalInput10825 canonicalOutput10825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10826 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 2, -1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput10826 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10826.moment H = canonicalOutput10826.moment H :=
  canonical_of_padded canonicalInput10826 canonicalOutput10826 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10827 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 3, -2], ![0, 0, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput10827 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1188

theorem canonicalSound10827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10827.moment H = canonicalOutput10827.moment H :=
  canonical_of_padded canonicalInput10827 canonicalOutput10827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10828 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 4, -3], ![0, 0, -3, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput10828 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1150

theorem canonicalSound10828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10828.moment H = canonicalOutput10828.moment H :=
  canonical_of_padded canonicalInput10828 canonicalOutput10828 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10829 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, 4, -3], ![0, 1, -4, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10829 : ExponentCode := normalNode11190

theorem canonicalSound10829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10829.moment H = canonicalOutput10829.moment H :=
  canonical_of_padded canonicalInput10829 canonicalOutput10829 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10830 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -3, 3], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput10830 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound10830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10830.moment H = canonicalOutput10830.moment H :=
  canonical_of_padded canonicalInput10830 canonicalOutput10830 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10831 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -3, 3], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput10831 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1206

theorem canonicalSound10831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10831.moment H = canonicalOutput10831.moment H :=
  canonical_of_padded canonicalInput10831 canonicalOutput10831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10832 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -2, 2], ![0, -1, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10832 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code263

theorem canonicalSound10832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10832.moment H = canonicalOutput10832.moment H :=
  canonical_of_padded canonicalInput10832 canonicalOutput10832 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10833 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -2, 2], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10833 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩

theorem canonicalSound10833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10833.moment H = canonicalOutput10833.moment H :=
  canonical_of_padded canonicalInput10833 canonicalOutput10833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10834 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![1, -1, -1, 1], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10834 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2263⟩

theorem canonicalSound10834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10834.moment H = canonicalOutput10834.moment H :=
  canonical_of_padded canonicalInput10834 canonicalOutput10834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10835 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -1, 1], ![0, -1, 3, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound10835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10835.moment H = canonicalOutput10835.moment H :=
  canonical_of_padded canonicalInput10835 canonicalOutput10835 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10836 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -1, 1], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput10836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound10836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10836.moment H = canonicalOutput10836.moment H :=
  canonical_of_padded canonicalInput10836 canonicalOutput10836 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10837 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, -1, 1], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput10837 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound10837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10837.moment H = canonicalOutput10837.moment H :=
  canonical_of_padded canonicalInput10837 canonicalOutput10837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10838 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput10838 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound10838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10838.moment H = canonicalOutput10838.moment H :=
  canonical_of_padded canonicalInput10838 canonicalOutput10838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10839 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 2, -2], ![0, 1, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput10839 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound10839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10839.moment H = canonicalOutput10839.moment H :=
  canonical_of_padded canonicalInput10839 canonicalOutput10839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10840 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 2, -2], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput10840 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound10840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10840.moment H = canonicalOutput10840.moment H :=
  canonical_of_padded canonicalInput10840 canonicalOutput10840 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10841 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 3, -3], ![0, 1, -4, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput10841 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1202

theorem canonicalSound10841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10841.moment H = canonicalOutput10841.moment H :=
  canonical_of_padded canonicalInput10841 canonicalOutput10841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10842 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 3, -3], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput10842 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound10842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10842.moment H = canonicalOutput10842.moment H :=
  canonical_of_padded canonicalInput10842 canonicalOutput10842 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10843 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -1, 4, -4], ![0, 1, -3, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput10843 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1148

theorem canonicalSound10843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10843.moment H = canonicalOutput10843.moment H :=
  canonical_of_padded canonicalInput10843 canonicalOutput10843 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10844 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, 0, -3, 2], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput10844 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10844.moment H = canonicalOutput10844.moment H :=
  canonical_of_padded canonicalInput10844 canonicalOutput10844 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10845 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, 0, -3, 2], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput10845 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound10845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10845.moment H = canonicalOutput10845.moment H :=
  canonical_of_padded canonicalInput10845 canonicalOutput10845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10846 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, 0, 2, -3], ![0, 1, -2, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput10846 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound10846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10846.moment H = canonicalOutput10846.moment H :=
  canonical_of_padded canonicalInput10846 canonicalOutput10846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10847 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, 0, 3, -4], ![0, 1, -3, 2], ![1, -2, 0, 1]]⟩

def canonicalOutput10847 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound10847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10847.moment H = canonicalOutput10847.moment H :=
  canonical_of_padded canonicalInput10847 canonicalOutput10847 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10848 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, -1, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput10848 : ExponentCode := normalNode6536

theorem canonicalSound10848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10848.moment H = canonicalOutput10848.moment H :=
  canonical_of_padded canonicalInput10848 canonicalOutput10848 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput10849 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput10849 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code831

theorem canonicalSound10849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10849.moment H = canonicalOutput10849.moment H :=
  canonical_of_padded canonicalInput10849 canonicalOutput10849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10850 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput10850 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code362

theorem canonicalSound10850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10850.moment H = canonicalOutput10850.moment H :=
  canonical_of_padded canonicalInput10850 canonicalOutput10850 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput10851 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 0, -2, 1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput10851 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code820

theorem canonicalSound10851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10851.moment H = canonicalOutput10851.moment H :=
  canonical_of_padded canonicalInput10851 canonicalOutput10851 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput10852 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput10852 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code820

theorem canonicalSound10852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10852.moment H = canonicalOutput10852.moment H :=
  canonical_of_padded canonicalInput10852 canonicalOutput10852 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput10853 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput10853 : ExponentCode := normalNode8175

theorem canonicalSound10853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10853.moment H = canonicalOutput10853.moment H :=
  canonical_of_padded canonicalInput10853 canonicalOutput10853 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput10854 : ExponentCode := ⟨5, 5, ![![-2, 1, 0, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, -1, 2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput10854 : ExponentCode := normalNode10758

theorem canonicalSound10854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10854.moment H = canonicalOutput10854.moment H :=
  canonical_of_padded canonicalInput10854 canonicalOutput10854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

def canonicalInput10855 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10855 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound10855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10855.moment H = canonicalOutput10855.moment H :=
  canonical_of_padded canonicalInput10855 canonicalOutput10855 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10856 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10856 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound10856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10856.moment H = canonicalOutput10856.moment H :=
  canonical_of_padded canonicalInput10856 canonicalOutput10856 (by decide) (by decide)
    ⟨true, false, canonicalPermutation96, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput10857 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10857 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound10857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10857.moment H = canonicalOutput10857.moment H :=
  canonical_of_padded canonicalInput10857 canonicalOutput10857 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput10858 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10858 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound10858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10858.moment H = canonicalOutput10858.moment H :=
  canonical_of_padded canonicalInput10858 canonicalOutput10858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation327⟩ (by decide +kernel) hH

def canonicalInput10859 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10859 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound10859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10859.moment H = canonicalOutput10859.moment H :=
  canonical_of_padded canonicalInput10859 canonicalOutput10859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation327⟩ (by decide +kernel) hH

def canonicalInput10860 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10860 : ExponentCode := normalNode4310

theorem canonicalSound10860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10860.moment H = canonicalOutput10860.moment H :=
  canonical_of_padded canonicalInput10860 canonicalOutput10860 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput10861 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10861 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound10861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10861.moment H = canonicalOutput10861.moment H :=
  canonical_of_padded canonicalInput10861 canonicalOutput10861 (by decide) (by decide)
    ⟨true, false, canonicalPermutation97, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10862 : ExponentCode := ⟨6, 6, ![![-2, 1, 0, 2, -1, 0], ![1, -2, 3, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10862 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound10862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10862.moment H = canonicalOutput10862.moment H :=
  canonical_of_padded canonicalInput10862 canonicalOutput10862 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10863 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, -3, 4], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput10863 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound10863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10863.moment H = canonicalOutput10863.moment H :=
  canonical_of_padded canonicalInput10863 canonicalOutput10863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10864 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, -3, 4], ![2, -1, -1], ![1, 3, -4]]⟩

def canonicalOutput10864 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound10864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10864.moment H = canonicalOutput10864.moment H :=
  canonical_of_padded canonicalInput10864 canonicalOutput10864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10865 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -2, 3], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput10865 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound10865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10865.moment H = canonicalOutput10865.moment H :=
  canonical_of_padded canonicalInput10865 canonicalOutput10865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10866 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -2, 3], ![0, 3, -3], ![2, -2, 0], ![1, 0, -1]]⟩

def canonicalOutput10866 : ExponentCode := normalNode4598

theorem canonicalSound10866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10866.moment H = canonicalOutput10866.moment H :=
  canonical_of_padded canonicalInput10866 canonicalOutput10866 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10867 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, -2, 3], ![0, 3, -3], ![3, -2, -1]]⟩

def canonicalOutput10867 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound10867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10867.moment H = canonicalOutput10867.moment H :=
  canonical_of_padded canonicalInput10867 canonicalOutput10867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10868 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, -2, 3], ![1, -2, 1], ![2, 3, -5]]⟩

def canonicalOutput10868 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound10868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10868.moment H = canonicalOutput10868.moment H :=
  canonical_of_padded canonicalInput10868 canonicalOutput10868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10869 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -2, 3], ![1, -1, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput10869 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩

theorem canonicalSound10869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10869.moment H = canonicalOutput10869.moment H :=
  canonical_of_padded canonicalInput10869 canonicalOutput10869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10870 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -2, 3], ![1, 0, -1], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput10870 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩

theorem canonicalSound10870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10870.moment H = canonicalOutput10870.moment H :=
  canonical_of_padded canonicalInput10870 canonicalOutput10870 (by decide) (by decide)
    ⟨false, false, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10871 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -2, 3], ![1, 2, -3], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput10871 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩

theorem canonicalSound10871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10871.moment H = canonicalOutput10871.moment H :=
  canonical_of_padded canonicalInput10871 canonicalOutput10871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10872 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw2508step0⟩

def canonicalOutput10872 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound10872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10872.moment H = canonicalOutput10872.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw2508step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw2508step0 = OAI.MUB6.Certificate.PairSemantics.raw2508.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw2508).trans (OAI.MUB6.Certificate.PairSemantics.canonical2508 hH)

def canonicalInput10873 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, -2, 2], ![1, 0, -1], ![2, 2, -4]]⟩

def canonicalOutput10873 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node417⟩

theorem canonicalSound10873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10873.moment H = canonicalOutput10873.moment H :=
  canonical_of_padded canonicalInput10873 canonicalOutput10873 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10874 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, -2, 2], ![2, -1, -1], ![1, 3, -4]]⟩

def canonicalOutput10874 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1208

theorem canonicalSound10874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10874.moment H = canonicalOutput10874.moment H :=
  canonical_of_padded canonicalInput10874 canonicalOutput10874 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10875 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, 0, 0], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput10875 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound10875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10875.moment H = canonicalOutput10875.moment H :=
  canonical_of_padded canonicalInput10875 canonicalOutput10875 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10876 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 1, -2], ![2, -2, 0]]⟩

def canonicalOutput10876 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound10876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10876.moment H = canonicalOutput10876.moment H :=
  canonical_of_padded canonicalInput10876 canonicalOutput10876 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10877 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, 2, -2], ![2, -3, 1], ![1, 1, -2]]⟩

def canonicalOutput10877 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound10877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10877.moment H = canonicalOutput10877.moment H :=
  canonical_of_padded canonicalInput10877 canonicalOutput10877 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10878 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![0, 3, -3], ![2, -3, 1], ![1, 0, -1]]⟩

def canonicalOutput10878 : ExponentCode := normalNode2997

theorem canonicalSound10878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10878.moment H = canonicalOutput10878.moment H :=
  canonical_of_padded canonicalInput10878 canonicalOutput10878 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10879 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, -1, 2], ![1, -3, 2], ![2, 3, -5]]⟩

def canonicalOutput10879 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound10879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10879.moment H = canonicalOutput10879.moment H :=
  canonical_of_padded canonicalInput10879 canonicalOutput10879 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
