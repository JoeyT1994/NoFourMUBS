import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13760 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, 2, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput13760 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1309

theorem canonicalSound13760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13760.moment H = canonicalOutput13760.moment H :=
  canonical_of_padded canonicalInput13760 canonicalOutput13760 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13761 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput13761 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound13761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13761.moment H = canonicalOutput13761.moment H :=
  canonical_of_padded canonicalInput13761 canonicalOutput13761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13762 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound13762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13762.moment H = canonicalOutput13762.moment H :=
  canonical_of_padded canonicalInput13762 canonicalOutput13762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13763 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13763 : ExponentCode := normalNode5114

theorem canonicalSound13763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13763.moment H = canonicalOutput13763.moment H :=
  canonical_of_padded canonicalInput13763 canonicalOutput13763 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13764 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput13764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound13764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13764.moment H = canonicalOutput13764.moment H :=
  canonical_of_padded canonicalInput13764 canonicalOutput13764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13765 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13765 : ExponentCode := normalNode3989

theorem canonicalSound13765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13765.moment H = canonicalOutput13765.moment H :=
  canonical_of_padded canonicalInput13765 canonicalOutput13765 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13766 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound13766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13766.moment H = canonicalOutput13766.moment H :=
  canonical_of_padded canonicalInput13766 canonicalOutput13766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13767 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13767 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1809⟩

theorem canonicalSound13767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13767.moment H = canonicalOutput13767.moment H :=
  canonical_of_padded canonicalInput13767 canonicalOutput13767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13768 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput13768 : ExponentCode := normalNode6664

theorem canonicalSound13768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13768.moment H = canonicalOutput13768.moment H :=
  canonical_of_padded canonicalInput13768 canonicalOutput13768 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13769 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput13769 : ExponentCode := normalNode6847

theorem canonicalSound13769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13769.moment H = canonicalOutput13769.moment H :=
  canonical_of_padded canonicalInput13769 canonicalOutput13769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13770 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound13770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13770.moment H = canonicalOutput13770.moment H :=
  canonical_of_padded canonicalInput13770 canonicalOutput13770 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13771 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1830⟩

theorem canonicalSound13771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13771.moment H = canonicalOutput13771.moment H :=
  canonical_of_padded canonicalInput13771 canonicalOutput13771 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13772 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound13772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13772.moment H = canonicalOutput13772.moment H :=
  canonical_of_padded canonicalInput13772 canonicalOutput13772 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13773 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound13773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13773.moment H = canonicalOutput13773.moment H :=
  canonical_of_padded canonicalInput13773 canonicalOutput13773 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13774 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput13774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code644

theorem canonicalSound13774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13774.moment H = canonicalOutput13774.moment H :=
  canonical_of_padded canonicalInput13774 canonicalOutput13774 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13775 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput13775 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound13775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13775.moment H = canonicalOutput13775.moment H :=
  canonical_of_padded canonicalInput13775 canonicalOutput13775 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13776 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13776 : ExponentCode := normalNode6847

theorem canonicalSound13776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13776.moment H = canonicalOutput13776.moment H :=
  canonical_of_padded canonicalInput13776 canonicalOutput13776 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13777 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩

theorem canonicalSound13777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13777.moment H = canonicalOutput13777.moment H :=
  canonical_of_padded canonicalInput13777 canonicalOutput13777 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13778 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, -1, 0], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput13778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound13778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13778.moment H = canonicalOutput13778.moment H :=
  canonical_of_padded canonicalInput13778 canonicalOutput13778 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13779 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13779 : ExponentCode := normalNode4305

theorem canonicalSound13779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13779.moment H = canonicalOutput13779.moment H :=
  canonical_of_padded canonicalInput13779 canonicalOutput13779 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13780 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13780 : ExponentCode := normalNode4294

theorem canonicalSound13780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13780.moment H = canonicalOutput13780.moment H :=
  canonical_of_padded canonicalInput13780 canonicalOutput13780 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13781 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13781 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound13781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13781.moment H = canonicalOutput13781.moment H :=
  canonical_of_padded canonicalInput13781 canonicalOutput13781 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13782 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13782 : ExponentCode := normalNode5428

theorem canonicalSound13782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13782.moment H = canonicalOutput13782.moment H :=
  canonical_of_padded canonicalInput13782 canonicalOutput13782 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13783 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput13783 : ExponentCode := normalNode5432

theorem canonicalSound13783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13783.moment H = canonicalOutput13783.moment H :=
  canonical_of_padded canonicalInput13783 canonicalOutput13783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13784 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound13784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13784.moment H = canonicalOutput13784.moment H :=
  canonical_of_padded canonicalInput13784 canonicalOutput13784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13785 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound13785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13785.moment H = canonicalOutput13785.moment H :=
  canonical_of_padded canonicalInput13785 canonicalOutput13785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13786 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13786 : ExponentCode := normalNode4550

theorem canonicalSound13786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13786.moment H = canonicalOutput13786.moment H :=
  canonical_of_padded canonicalInput13786 canonicalOutput13786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13787 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput13787 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1026

theorem canonicalSound13787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13787.moment H = canonicalOutput13787.moment H :=
  canonical_of_padded canonicalInput13787 canonicalOutput13787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13788 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13788 : ExponentCode := normalNode10495

theorem canonicalSound13788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13788.moment H = canonicalOutput13788.moment H :=
  canonical_of_padded canonicalInput13788 canonicalOutput13788 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13789 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13789 : ExponentCode := normalNode2687

theorem canonicalSound13789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13789.moment H = canonicalOutput13789.moment H :=
  canonical_of_padded canonicalInput13789 canonicalOutput13789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13790 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13790 : ExponentCode := normalNode6905

theorem canonicalSound13790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13790.moment H = canonicalOutput13790.moment H :=
  canonical_of_padded canonicalInput13790 canonicalOutput13790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13791 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput13791 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound13791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13791.moment H = canonicalOutput13791.moment H :=
  canonical_of_padded canonicalInput13791 canonicalOutput13791 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13792 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13792 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13792.moment H = canonicalOutput13792.moment H :=
  canonical_of_padded canonicalInput13792 canonicalOutput13792 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13793 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 1, -2], ![1, 1, -3, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput13793 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1316

theorem canonicalSound13793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13793.moment H = canonicalOutput13793.moment H :=
  canonical_of_padded canonicalInput13793 canonicalOutput13793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13794 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13794 : ExponentCode := normalNode6910

theorem canonicalSound13794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13794.moment H = canonicalOutput13794.moment H :=
  canonical_of_padded canonicalInput13794 canonicalOutput13794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13795 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13795 : ExponentCode := normalNode6909

theorem canonicalSound13795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13795.moment H = canonicalOutput13795.moment H :=
  canonical_of_padded canonicalInput13795 canonicalOutput13795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13796 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![2, 1, -2, -1]]⟩

def canonicalOutput13796 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code173

theorem canonicalSound13796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13796.moment H = canonicalOutput13796.moment H :=
  canonical_of_padded canonicalInput13796 canonicalOutput13796 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13797 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13797 : ExponentCode := normalNode2602

theorem canonicalSound13797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13797.moment H = canonicalOutput13797.moment H :=
  canonical_of_padded canonicalInput13797 canonicalOutput13797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13798 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 0, -2, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput13798 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code577

theorem canonicalSound13798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13798.moment H = canonicalOutput13798.moment H :=
  canonical_of_padded canonicalInput13798 canonicalOutput13798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13799 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound13799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13799.moment H = canonicalOutput13799.moment H :=
  canonical_of_padded canonicalInput13799 canonicalOutput13799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13800 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput13800 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound13800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13800.moment H = canonicalOutput13800.moment H :=
  canonical_of_padded canonicalInput13800 canonicalOutput13800 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput13801 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput13801 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1030

theorem canonicalSound13801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13801.moment H = canonicalOutput13801.moment H :=
  canonical_of_padded canonicalInput13801 canonicalOutput13801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13802 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13802 : ExponentCode := normalNode6181

theorem canonicalSound13802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13802.moment H = canonicalOutput13802.moment H :=
  canonical_of_padded canonicalInput13802 canonicalOutput13802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13803 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![2, -1, -1, 0]]⟩

def canonicalOutput13803 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound13803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13803.moment H = canonicalOutput13803.moment H :=
  canonical_of_padded canonicalInput13803 canonicalOutput13803 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13804 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput13804 : ExponentCode := normalNode6178

theorem canonicalSound13804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13804.moment H = canonicalOutput13804.moment H :=
  canonical_of_padded canonicalInput13804 canonicalOutput13804 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13805 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput13805 : ExponentCode := normalNode6921

theorem canonicalSound13805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13805.moment H = canonicalOutput13805.moment H :=
  canonical_of_padded canonicalInput13805 canonicalOutput13805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13806 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput13806 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound13806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13806.moment H = canonicalOutput13806.moment H :=
  canonical_of_padded canonicalInput13806 canonicalOutput13806 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13807 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput13807 : ExponentCode := normalNode7067

theorem canonicalSound13807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13807.moment H = canonicalOutput13807.moment H :=
  canonical_of_padded canonicalInput13807 canonicalOutput13807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13808 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput13808 : ExponentCode := normalNode9472

theorem canonicalSound13808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13808.moment H = canonicalOutput13808.moment H :=
  canonical_of_padded canonicalInput13808 canonicalOutput13808 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13809 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput13809 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound13809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13809.moment H = canonicalOutput13809.moment H :=
  canonical_of_padded canonicalInput13809 canonicalOutput13809 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13810 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput13810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound13810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13810.moment H = canonicalOutput13810.moment H :=
  canonical_of_padded canonicalInput13810 canonicalOutput13810 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13811 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 2, 2, -3], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput13811 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound13811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13811.moment H = canonicalOutput13811.moment H :=
  canonical_of_padded canonicalInput13811 canonicalOutput13811 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13812 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13812 : ExponentCode := normalNode5115

theorem canonicalSound13812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13812.moment H = canonicalOutput13812.moment H :=
  canonical_of_padded canonicalInput13812 canonicalOutput13812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13813 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, -2, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13813 : ExponentCode := normalNode4013

theorem canonicalSound13813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13813.moment H = canonicalOutput13813.moment H :=
  canonical_of_padded canonicalInput13813 canonicalOutput13813 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13814 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13814 : ExponentCode := normalNode5079

theorem canonicalSound13814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13814.moment H = canonicalOutput13814.moment H :=
  canonical_of_padded canonicalInput13814 canonicalOutput13814 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13815 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13815 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound13815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13815.moment H = canonicalOutput13815.moment H :=
  canonical_of_padded canonicalInput13815 canonicalOutput13815 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput13816 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13816 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound13816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13816.moment H = canonicalOutput13816.moment H :=
  canonical_of_padded canonicalInput13816 canonicalOutput13816 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13817 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput13817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound13817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13817.moment H = canonicalOutput13817.moment H :=
  canonical_of_padded canonicalInput13817 canonicalOutput13817 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13818 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound13818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13818.moment H = canonicalOutput13818.moment H :=
  canonical_of_padded canonicalInput13818 canonicalOutput13818 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13819 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput13819 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code643

theorem canonicalSound13819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13819.moment H = canonicalOutput13819.moment H :=
  canonical_of_padded canonicalInput13819 canonicalOutput13819 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13820 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, -1, -1], ![1, 0, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput13820 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound13820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13820.moment H = canonicalOutput13820.moment H :=
  canonical_of_padded canonicalInput13820 canonicalOutput13820 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13821 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 3, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13821 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩

theorem canonicalSound13821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13821.moment H = canonicalOutput13821.moment H :=
  canonical_of_padded canonicalInput13821 canonicalOutput13821 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13822 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, 1, -3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13822 : ExponentCode := normalNode10192

theorem canonicalSound13822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13822.moment H = canonicalOutput13822.moment H :=
  canonical_of_padded canonicalInput13822 canonicalOutput13822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13823 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13823 : ExponentCode := normalNode4128

theorem canonicalSound13823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13823.moment H = canonicalOutput13823.moment H :=
  canonical_of_padded canonicalInput13823 canonicalOutput13823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
