import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10752 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -2, 1], ![2, -2, -2, 2]]⟩

def canonicalOutput10752 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code719

theorem canonicalSound10752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10752.moment H = canonicalOutput10752.moment H :=
  canonical_of_padded canonicalInput10752 canonicalOutput10752 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10753 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput10753 : ExponentCode := normalNode5546

theorem canonicalSound10753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10753.moment H = canonicalOutput10753.moment H :=
  canonical_of_padded canonicalInput10753 canonicalOutput10753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10754 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput10754 : ExponentCode := normalNode5548

theorem canonicalSound10754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10754.moment H = canonicalOutput10754.moment H :=
  canonical_of_padded canonicalInput10754 canonicalOutput10754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10755 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -2, -3, 3]]⟩

def canonicalOutput10755 : ExponentCode := normalNode9040

theorem canonicalSound10755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10755.moment H = canonicalOutput10755.moment H :=
  canonical_of_padded canonicalInput10755 canonicalOutput10755 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10756 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, -2, -1, 2], ![1, 1, -3, 1]]⟩

def canonicalOutput10756 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1135

theorem canonicalSound10756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10756.moment H = canonicalOutput10756.moment H :=
  canonical_of_padded canonicalInput10756 canonicalOutput10756 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10757 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, -1, -3, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput10757 : ExponentCode := normalNode9755

theorem canonicalSound10757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10757.moment H = canonicalOutput10757.moment H :=
  canonical_of_padded canonicalInput10757 canonicalOutput10757 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10758 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput10758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1338⟩

theorem canonicalSound10758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10758.moment H = canonicalOutput10758.moment H :=
  canonical_of_padded canonicalInput10758 canonicalOutput10758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10759 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput10759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1353⟩

theorem canonicalSound10759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10759.moment H = canonicalOutput10759.moment H :=
  canonical_of_padded canonicalInput10759 canonicalOutput10759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10760 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, 0, -4, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput10760 : ExponentCode := normalNode11150

theorem canonicalSound10760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10760.moment H = canonicalOutput10760.moment H :=
  canonical_of_padded canonicalInput10760 canonicalOutput10760 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10761 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, 0, -3, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput10761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1353⟩

theorem canonicalSound10761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10761.moment H = canonicalOutput10761.moment H :=
  canonical_of_padded canonicalInput10761 canonicalOutput10761 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10762 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 4, -4], ![1, 1, -4, 2], ![1, -2, 0, 1]]⟩

def canonicalOutput10762 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1200

theorem canonicalSound10762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10762.moment H = canonicalOutput10762.moment H :=
  canonical_of_padded canonicalInput10762 canonicalOutput10762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10763 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![0, 0, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput10763 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code728

theorem canonicalSound10763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10763.moment H = canonicalOutput10763.moment H :=
  canonical_of_padded canonicalInput10763 canonicalOutput10763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10764 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![0, 0, 3, -3], ![2, -2, 1, -1]]⟩

def canonicalOutput10764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1196

theorem canonicalSound10764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10764.moment H = canonicalOutput10764.moment H :=
  canonical_of_padded canonicalInput10764 canonicalOutput10764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10765 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![1, -2, 2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10765 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1136

theorem canonicalSound10765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10765.moment H = canonicalOutput10765.moment H :=
  canonical_of_padded canonicalInput10765 canonicalOutput10765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10766 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput10766 : ExponentCode := normalNode11190

theorem canonicalSound10766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10766.moment H = canonicalOutput10766.moment H :=
  canonical_of_padded canonicalInput10766 canonicalOutput10766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10767 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput10767 : ExponentCode := normalNode11171

theorem canonicalSound10767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10767.moment H = canonicalOutput10767.moment H :=
  canonical_of_padded canonicalInput10767 canonicalOutput10767 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10768 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -4, 3], ![1, -1, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput10768 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1202

theorem canonicalSound10768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10768.moment H = canonicalOutput10768.moment H :=
  canonical_of_padded canonicalInput10768 canonicalOutput10768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10769 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10769 : ExponentCode := normalNode5540

theorem canonicalSound10769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10769.moment H = canonicalOutput10769.moment H :=
  canonical_of_padded canonicalInput10769 canonicalOutput10769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10770 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10770 : ExponentCode := normalNode5541

theorem canonicalSound10770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10770.moment H = canonicalOutput10770.moment H :=
  canonical_of_padded canonicalInput10770 canonicalOutput10770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10771 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![0, 0, 3, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput10771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound10771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10771.moment H = canonicalOutput10771.moment H :=
  canonical_of_padded canonicalInput10771 canonicalOutput10771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10772 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![0, 0, 4, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput10772 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1199

theorem canonicalSound10772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10772.moment H = canonicalOutput10772.moment H :=
  canonical_of_padded canonicalInput10772 canonicalOutput10772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10773 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10773 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound10773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10773.moment H = canonicalOutput10773.moment H :=
  canonical_of_padded canonicalInput10773 canonicalOutput10773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10774 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput10774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1148

theorem canonicalSound10774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10774.moment H = canonicalOutput10774.moment H :=
  canonical_of_padded canonicalInput10774 canonicalOutput10774 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10775 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput10775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound10775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10775.moment H = canonicalOutput10775.moment H :=
  canonical_of_padded canonicalInput10775 canonicalOutput10775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10776 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput10776 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound10776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10776.moment H = canonicalOutput10776.moment H :=
  canonical_of_padded canonicalInput10776 canonicalOutput10776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10777 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10777 : ExponentCode := normalNode4211

theorem canonicalSound10777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10777.moment H = canonicalOutput10777.moment H :=
  canonical_of_padded canonicalInput10777 canonicalOutput10777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10778 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10778 : ExponentCode := normalNode3419

theorem canonicalSound10778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10778.moment H = canonicalOutput10778.moment H :=
  canonical_of_padded canonicalInput10778 canonicalOutput10778 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10779 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput10779 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound10779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10779.moment H = canonicalOutput10779.moment H :=
  canonical_of_padded canonicalInput10779 canonicalOutput10779 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10780 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10780 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code955

theorem canonicalSound10780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10780.moment H = canonicalOutput10780.moment H :=
  canonical_of_padded canonicalInput10780 canonicalOutput10780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10781 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node613⟩

theorem canonicalSound10781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10781.moment H = canonicalOutput10781.moment H :=
  canonical_of_padded canonicalInput10781 canonicalOutput10781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10782 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput10782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound10782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10782.moment H = canonicalOutput10782.moment H :=
  canonical_of_padded canonicalInput10782 canonicalOutput10782 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10783 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10783 : ExponentCode := normalNode3434

theorem canonicalSound10783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10783.moment H = canonicalOutput10783.moment H :=
  canonical_of_padded canonicalInput10783 canonicalOutput10783 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10784 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput10784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound10784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10784.moment H = canonicalOutput10784.moment H :=
  canonical_of_padded canonicalInput10784 canonicalOutput10784 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10785 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput10785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound10785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10785.moment H = canonicalOutput10785.moment H :=
  canonical_of_padded canonicalInput10785 canonicalOutput10785 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10786 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound10786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10786.moment H = canonicalOutput10786.moment H :=
  canonical_of_padded canonicalInput10786 canonicalOutput10786 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10787 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput10787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound10787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10787.moment H = canonicalOutput10787.moment H :=
  canonical_of_padded canonicalInput10787 canonicalOutput10787 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10788 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -1, -3, 3], ![1, -1, 4, -4]]⟩

def canonicalOutput10788 : ExponentCode := normalNode9358

theorem canonicalSound10788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10788.moment H = canonicalOutput10788.moment H :=
  canonical_of_padded canonicalInput10788 canonicalOutput10788 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10789 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput10789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound10789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10789.moment H = canonicalOutput10789.moment H :=
  canonical_of_padded canonicalInput10789 canonicalOutput10789 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10790 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput10790 : ExponentCode := normalNode2634

theorem canonicalSound10790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10790.moment H = canonicalOutput10790.moment H :=
  canonical_of_padded canonicalInput10790 canonicalOutput10790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10791 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput10791 : ExponentCode := normalNode4504

theorem canonicalSound10791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10791.moment H = canonicalOutput10791.moment H :=
  canonical_of_padded canonicalInput10791 canonicalOutput10791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10792 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput10792 : ExponentCode := normalNode3591

theorem canonicalSound10792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10792.moment H = canonicalOutput10792.moment H :=
  canonical_of_padded canonicalInput10792 canonicalOutput10792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10793 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput10793 : ExponentCode := normalNode3529

theorem canonicalSound10793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10793.moment H = canonicalOutput10793.moment H :=
  canonical_of_padded canonicalInput10793 canonicalOutput10793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10794 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput10794 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound10794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10794.moment H = canonicalOutput10794.moment H :=
  canonical_of_padded canonicalInput10794 canonicalOutput10794 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10795 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput10795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound10795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10795.moment H = canonicalOutput10795.moment H :=
  canonical_of_padded canonicalInput10795 canonicalOutput10795 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10796 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput10796 : ExponentCode := normalNode9441

theorem canonicalSound10796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10796.moment H = canonicalOutput10796.moment H :=
  canonical_of_padded canonicalInput10796 canonicalOutput10796 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10797 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput10797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound10797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10797.moment H = canonicalOutput10797.moment H :=
  canonical_of_padded canonicalInput10797 canonicalOutput10797 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10798 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput10798 : ExponentCode := normalNode9441

theorem canonicalSound10798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10798.moment H = canonicalOutput10798.moment H :=
  canonical_of_padded canonicalInput10798 canonicalOutput10798 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10799 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput10799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound10799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10799.moment H = canonicalOutput10799.moment H :=
  canonical_of_padded canonicalInput10799 canonicalOutput10799 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10800 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10800 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10800.moment H = canonicalOutput10800.moment H :=
  canonical_of_padded canonicalInput10800 canonicalOutput10800 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10801 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput10801 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound10801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10801.moment H = canonicalOutput10801.moment H :=
  canonical_of_padded canonicalInput10801 canonicalOutput10801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10802 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput10802 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound10802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10802.moment H = canonicalOutput10802.moment H :=
  canonical_of_padded canonicalInput10802 canonicalOutput10802 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10803 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput10803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound10803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10803.moment H = canonicalOutput10803.moment H :=
  canonical_of_padded canonicalInput10803 canonicalOutput10803 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10804 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -2, -3, 4], ![1, 0, 1, -2]]⟩

def canonicalOutput10804 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1078

theorem canonicalSound10804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10804.moment H = canonicalOutput10804.moment H :=
  canonical_of_padded canonicalInput10804 canonicalOutput10804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10805 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound10805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10805.moment H = canonicalOutput10805.moment H :=
  canonical_of_padded canonicalInput10805 canonicalOutput10805 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10806 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput10806 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound10806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10806.moment H = canonicalOutput10806.moment H :=
  canonical_of_padded canonicalInput10806 canonicalOutput10806 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10807 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput10807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound10807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10807.moment H = canonicalOutput10807.moment H :=
  canonical_of_padded canonicalInput10807 canonicalOutput10807 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10808 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10808 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound10808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10808.moment H = canonicalOutput10808.moment H :=
  canonical_of_padded canonicalInput10808 canonicalOutput10808 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10809 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput10809 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound10809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10809.moment H = canonicalOutput10809.moment H :=
  canonical_of_padded canonicalInput10809 canonicalOutput10809 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10810 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput10810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound10810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10810.moment H = canonicalOutput10810.moment H :=
  canonical_of_padded canonicalInput10810 canonicalOutput10810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10811 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10811.moment H = canonicalOutput10811.moment H :=
  canonical_of_padded canonicalInput10811 canonicalOutput10811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10812 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 2, 2, -4], ![1, -3, -1, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput10812 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1275⟩

theorem canonicalSound10812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10812.moment H = canonicalOutput10812.moment H :=
  canonical_of_padded canonicalInput10812 canonicalOutput10812 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10813 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 2, 2, -4], ![1, -3, 0, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput10813 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound10813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10813.moment H = canonicalOutput10813.moment H :=
  canonical_of_padded canonicalInput10813 canonicalOutput10813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10814 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -3, 4], ![0, 0, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput10814 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code770

theorem canonicalSound10814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10814.moment H = canonicalOutput10814.moment H :=
  canonical_of_padded canonicalInput10814 canonicalOutput10814 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput10815 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![1, -2, -3, 4], ![0, 0, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput10815 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1077

theorem canonicalSound10815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10815.moment H = canonicalOutput10815.moment H :=
  canonical_of_padded canonicalInput10815 canonicalOutput10815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
