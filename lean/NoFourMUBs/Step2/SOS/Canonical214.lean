import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13696 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput13696 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code861

theorem canonicalSound13696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13696.moment H = canonicalOutput13696.moment H :=
  canonical_of_padded canonicalInput13696 canonicalOutput13696 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13697 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13697 : ExponentCode := normalNode6851

theorem canonicalSound13697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13697.moment H = canonicalOutput13697.moment H :=
  canonical_of_padded canonicalInput13697 canonicalOutput13697 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13698 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13698 : ExponentCode := normalNode6851

theorem canonicalSound13698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13698.moment H = canonicalOutput13698.moment H :=
  canonical_of_padded canonicalInput13698 canonicalOutput13698 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13699 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13699 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound13699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13699.moment H = canonicalOutput13699.moment H :=
  canonical_of_padded canonicalInput13699 canonicalOutput13699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput13700 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13700 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1789⟩

theorem canonicalSound13700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13700.moment H = canonicalOutput13700.moment H :=
  canonical_of_padded canonicalInput13700 canonicalOutput13700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13701 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1795⟩

theorem canonicalSound13701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13701.moment H = canonicalOutput13701.moment H :=
  canonical_of_padded canonicalInput13701 canonicalOutput13701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13702 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1811⟩

theorem canonicalSound13702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13702.moment H = canonicalOutput13702.moment H :=
  canonical_of_padded canonicalInput13702 canonicalOutput13702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13703 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1812⟩

theorem canonicalSound13703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13703.moment H = canonicalOutput13703.moment H :=
  canonical_of_padded canonicalInput13703 canonicalOutput13703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13704 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput13704 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩

theorem canonicalSound13704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13704.moment H = canonicalOutput13704.moment H :=
  canonical_of_padded canonicalInput13704 canonicalOutput13704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13705 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13705 : ExponentCode := normalNode7730

theorem canonicalSound13705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13705.moment H = canonicalOutput13705.moment H :=
  canonical_of_padded canonicalInput13705 canonicalOutput13705 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13706 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput13706 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1827⟩

theorem canonicalSound13706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13706.moment H = canonicalOutput13706.moment H :=
  canonical_of_padded canonicalInput13706 canonicalOutput13706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13707 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1830⟩

theorem canonicalSound13707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13707.moment H = canonicalOutput13707.moment H :=
  canonical_of_padded canonicalInput13707 canonicalOutput13707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13708 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13708 : ExponentCode := normalNode9305

theorem canonicalSound13708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13708.moment H = canonicalOutput13708.moment H :=
  canonical_of_padded canonicalInput13708 canonicalOutput13708 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13709 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput13709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound13709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13709.moment H = canonicalOutput13709.moment H :=
  canonical_of_padded canonicalInput13709 canonicalOutput13709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13710 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13710 : ExponentCode := normalNode9314

theorem canonicalSound13710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13710.moment H = canonicalOutput13710.moment H :=
  canonical_of_padded canonicalInput13710 canonicalOutput13710 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13711 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput13711 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound13711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13711.moment H = canonicalOutput13711.moment H :=
  canonical_of_padded canonicalInput13711 canonicalOutput13711 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13712 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13712 : ExponentCode := normalNode9307

theorem canonicalSound13712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13712.moment H = canonicalOutput13712.moment H :=
  canonical_of_padded canonicalInput13712 canonicalOutput13712 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13713 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13713 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound13713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13713.moment H = canonicalOutput13713.moment H :=
  canonical_of_padded canonicalInput13713 canonicalOutput13713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13714 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13714 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound13714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13714.moment H = canonicalOutput13714.moment H :=
  canonical_of_padded canonicalInput13714 canonicalOutput13714 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13715 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound13715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13715.moment H = canonicalOutput13715.moment H :=
  canonical_of_padded canonicalInput13715 canonicalOutput13715 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13716 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, -1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput13716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound13716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13716.moment H = canonicalOutput13716.moment H :=
  canonical_of_padded canonicalInput13716 canonicalOutput13716 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13717 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13717 : ExponentCode := normalNode10497

theorem canonicalSound13717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13717.moment H = canonicalOutput13717.moment H :=
  canonical_of_padded canonicalInput13717 canonicalOutput13717 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13718 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound13718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13718.moment H = canonicalOutput13718.moment H :=
  canonical_of_padded canonicalInput13718 canonicalOutput13718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13719 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13719 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound13719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13719.moment H = canonicalOutput13719.moment H :=
  canonical_of_padded canonicalInput13719 canonicalOutput13719 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13720 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13720 : ExponentCode := normalNode2649

theorem canonicalSound13720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13720.moment H = canonicalOutput13720.moment H :=
  canonical_of_padded canonicalInput13720 canonicalOutput13720 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13721 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13721 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1803⟩

theorem canonicalSound13721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13721.moment H = canonicalOutput13721.moment H :=
  canonical_of_padded canonicalInput13721 canonicalOutput13721 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13722 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13722 : ExponentCode := normalNode5398

theorem canonicalSound13722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13722.moment H = canonicalOutput13722.moment H :=
  canonical_of_padded canonicalInput13722 canonicalOutput13722 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13723 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13723 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound13723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13723.moment H = canonicalOutput13723.moment H :=
  canonical_of_padded canonicalInput13723 canonicalOutput13723 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13724 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13724 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound13724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13724.moment H = canonicalOutput13724.moment H :=
  canonical_of_padded canonicalInput13724 canonicalOutput13724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13725 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput13725 : ExponentCode := normalNode6867

theorem canonicalSound13725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13725.moment H = canonicalOutput13725.moment H :=
  canonical_of_padded canonicalInput13725 canonicalOutput13725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13726 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound13726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13726.moment H = canonicalOutput13726.moment H :=
  canonical_of_padded canonicalInput13726 canonicalOutput13726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13727 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13727 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound13727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13727.moment H = canonicalOutput13727.moment H :=
  canonical_of_padded canonicalInput13727 canonicalOutput13727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13728 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2208⟩

theorem canonicalSound13728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13728.moment H = canonicalOutput13728.moment H :=
  canonical_of_padded canonicalInput13728 canonicalOutput13728 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13729 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput13729 : ExponentCode := normalNode11016

theorem canonicalSound13729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13729.moment H = canonicalOutput13729.moment H :=
  canonical_of_padded canonicalInput13729 canonicalOutput13729 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13730 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13730 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound13730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13730.moment H = canonicalOutput13730.moment H :=
  canonical_of_padded canonicalInput13730 canonicalOutput13730 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13731 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13731 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound13731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13731.moment H = canonicalOutput13731.moment H :=
  canonical_of_padded canonicalInput13731 canonicalOutput13731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13732 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 2, -3, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput13732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code643

theorem canonicalSound13732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13732.moment H = canonicalOutput13732.moment H :=
  canonical_of_padded canonicalInput13732 canonicalOutput13732 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13733 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1776⟩

theorem canonicalSound13733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13733.moment H = canonicalOutput13733.moment H :=
  canonical_of_padded canonicalInput13733 canonicalOutput13733 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13734 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13734 : ExponentCode := normalNode5107

theorem canonicalSound13734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13734.moment H = canonicalOutput13734.moment H :=
  canonical_of_padded canonicalInput13734 canonicalOutput13734 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13735 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput13735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound13735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13735.moment H = canonicalOutput13735.moment H :=
  canonical_of_padded canonicalInput13735 canonicalOutput13735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13736 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13736 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound13736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13736.moment H = canonicalOutput13736.moment H :=
  canonical_of_padded canonicalInput13736 canonicalOutput13736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13737 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound13737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13737.moment H = canonicalOutput13737.moment H :=
  canonical_of_padded canonicalInput13737 canonicalOutput13737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13738 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput13738 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound13738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13738.moment H = canonicalOutput13738.moment H :=
  canonical_of_padded canonicalInput13738 canonicalOutput13738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13739 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput13739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound13739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13739.moment H = canonicalOutput13739.moment H :=
  canonical_of_padded canonicalInput13739 canonicalOutput13739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13740 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput13740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound13740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13740.moment H = canonicalOutput13740.moment H :=
  canonical_of_padded canonicalInput13740 canonicalOutput13740 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13741 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput13741 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound13741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13741.moment H = canonicalOutput13741.moment H :=
  canonical_of_padded canonicalInput13741 canonicalOutput13741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13742 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 2, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound13742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13742.moment H = canonicalOutput13742.moment H :=
  canonical_of_padded canonicalInput13742 canonicalOutput13742 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13743 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13743 : ExponentCode := normalNode2700

theorem canonicalSound13743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13743.moment H = canonicalOutput13743.moment H :=
  canonical_of_padded canonicalInput13743 canonicalOutput13743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13744 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13744 : ExponentCode := normalNode2706

theorem canonicalSound13744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13744.moment H = canonicalOutput13744.moment H :=
  canonical_of_padded canonicalInput13744 canonicalOutput13744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13745 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13745 : ExponentCode := normalNode2822

theorem canonicalSound13745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13745.moment H = canonicalOutput13745.moment H :=
  canonical_of_padded canonicalInput13745 canonicalOutput13745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13746 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput13746 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound13746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13746.moment H = canonicalOutput13746.moment H :=
  canonical_of_padded canonicalInput13746 canonicalOutput13746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13747 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1787⟩

theorem canonicalSound13747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13747.moment H = canonicalOutput13747.moment H :=
  canonical_of_padded canonicalInput13747 canonicalOutput13747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13748 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound13748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13748.moment H = canonicalOutput13748.moment H :=
  canonical_of_padded canonicalInput13748 canonicalOutput13748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13749 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13749 : ExponentCode := normalNode2807

theorem canonicalSound13749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13749.moment H = canonicalOutput13749.moment H :=
  canonical_of_padded canonicalInput13749 canonicalOutput13749 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13750 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput13750 : ExponentCode := normalNode2804

theorem canonicalSound13750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13750.moment H = canonicalOutput13750.moment H :=
  canonical_of_padded canonicalInput13750 canonicalOutput13750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13751 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput13751 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1029

theorem canonicalSound13751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13751.moment H = canonicalOutput13751.moment H :=
  canonical_of_padded canonicalInput13751 canonicalOutput13751 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13752 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1810⟩

theorem canonicalSound13752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13752.moment H = canonicalOutput13752.moment H :=
  canonical_of_padded canonicalInput13752 canonicalOutput13752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13753 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1810⟩

theorem canonicalSound13753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13753.moment H = canonicalOutput13753.moment H :=
  canonical_of_padded canonicalInput13753 canonicalOutput13753 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13754 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput13754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound13754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13754.moment H = canonicalOutput13754.moment H :=
  canonical_of_padded canonicalInput13754 canonicalOutput13754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13755 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput13755 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1309

theorem canonicalSound13755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13755.moment H = canonicalOutput13755.moment H :=
  canonical_of_padded canonicalInput13755 canonicalOutput13755 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13756 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput13756 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound13756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13756.moment H = canonicalOutput13756.moment H :=
  canonical_of_padded canonicalInput13756 canonicalOutput13756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13757 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound13757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13757.moment H = canonicalOutput13757.moment H :=
  canonical_of_padded canonicalInput13757 canonicalOutput13757 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13758 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput13758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound13758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13758.moment H = canonicalOutput13758.moment H :=
  canonical_of_padded canonicalInput13758 canonicalOutput13758 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13759 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 1, 2, -2], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound13759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13759.moment H = canonicalOutput13759.moment H :=
  canonical_of_padded canonicalInput13759 canonicalOutput13759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
