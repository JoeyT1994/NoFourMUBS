import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16768 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound16768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16768.moment H = canonicalOutput16768.moment H :=
  canonical_of_padded canonicalInput16768 canonicalOutput16768 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16769 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 0, 2, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound16769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16769.moment H = canonicalOutput16769.moment H :=
  canonical_of_padded canonicalInput16769 canonicalOutput16769 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16770 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound16770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16770.moment H = canonicalOutput16770.moment H :=
  canonical_of_padded canonicalInput16770 canonicalOutput16770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16771 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-2, -1, 3, -1, 1], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput16771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code778

theorem canonicalSound16771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16771.moment H = canonicalOutput16771.moment H :=
  canonical_of_padded canonicalInput16771 canonicalOutput16771 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16772 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-2, 1, 2, -1, 0], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput16772 : ExponentCode := normalNode4014

theorem canonicalSound16772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16772.moment H = canonicalOutput16772.moment H :=
  canonical_of_padded canonicalInput16772 canonicalOutput16772 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16773 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-1, -1, 3, -1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput16773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound16773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16773.moment H = canonicalOutput16773.moment H :=
  canonical_of_padded canonicalInput16773 canonicalOutput16773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16774 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-1, 1, 1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16774 : ExponentCode := normalNode4293

theorem canonicalSound16774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16774.moment H = canonicalOutput16774.moment H :=
  canonical_of_padded canonicalInput16774 canonicalOutput16774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16775 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-1, 1, 2, -1, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput16775 : ExponentCode := normalNode3991

theorem canonicalSound16775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16775.moment H = canonicalOutput16775.moment H :=
  canonical_of_padded canonicalInput16775 canonicalOutput16775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16776 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-1, 2, 1, -2, 0], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput16776 : ExponentCode := normalNode4305

theorem canonicalSound16776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16776.moment H = canonicalOutput16776.moment H :=
  canonical_of_padded canonicalInput16776 canonicalOutput16776 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16777 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, -1, 3, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound16777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16777.moment H = canonicalOutput16777.moment H :=
  canonical_of_padded canonicalInput16777 canonicalOutput16777 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16778 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16778 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound16778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16778.moment H = canonicalOutput16778.moment H :=
  canonical_of_padded canonicalInput16778 canonicalOutput16778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16779 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 0, 2, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16779 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound16779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16779.moment H = canonicalOutput16779.moment H :=
  canonical_of_padded canonicalInput16779 canonicalOutput16779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16780 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound16780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16780.moment H = canonicalOutput16780.moment H :=
  canonical_of_padded canonicalInput16780 canonicalOutput16780 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16781 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16781 : ExponentCode := normalNode9383

theorem canonicalSound16781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16781.moment H = canonicalOutput16781.moment H :=
  canonical_of_padded canonicalInput16781 canonicalOutput16781 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16782 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16782 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound16782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16782.moment H = canonicalOutput16782.moment H :=
  canonical_of_padded canonicalInput16782 canonicalOutput16782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16783 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16783 : ExponentCode := normalNode4385

theorem canonicalSound16783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16783.moment H = canonicalOutput16783.moment H :=
  canonical_of_padded canonicalInput16783 canonicalOutput16783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16784 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 2, 1, -2, -1], ![1, -2, 1, 0, 0]]⟩

def canonicalOutput16784 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound16784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16784.moment H = canonicalOutput16784.moment H :=
  canonical_of_padded canonicalInput16784 canonicalOutput16784 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16785 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![1, 1, 0, 0, -2], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput16785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound16785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16785.moment H = canonicalOutput16785.moment H :=
  canonical_of_padded canonicalInput16785 canonicalOutput16785 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16786 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, -1, 2, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16786 : ExponentCode := normalNode2822

theorem canonicalSound16786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16786.moment H = canonicalOutput16786.moment H :=
  canonical_of_padded canonicalInput16786 canonicalOutput16786 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16787 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, 0, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16787 : ExponentCode := normalNode2687

theorem canonicalSound16787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16787.moment H = canonicalOutput16787.moment H :=
  canonical_of_padded canonicalInput16787 canonicalOutput16787 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16788 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16788 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound16788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16788.moment H = canonicalOutput16788.moment H :=
  canonical_of_padded canonicalInput16788 canonicalOutput16788 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16789 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, -2, 2], ![0, 0, 2, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16789 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound16789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16789.moment H = canonicalOutput16789.moment H :=
  canonical_of_padded canonicalInput16789 canonicalOutput16789 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16790 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, 1, -1], ![-2, -1, 3, 0, 0], ![3, 1, -2, -2, 0]]⟩

def canonicalOutput16790 : ExponentCode := normalNode8873

theorem canonicalSound16790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16790.moment H = canonicalOutput16790.moment H :=
  canonical_of_padded canonicalInput16790 canonicalOutput16790 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16791 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, 1, -1], ![-1, -1, 3, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16791 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1374

theorem canonicalSound16791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16791.moment H = canonicalOutput16791.moment H :=
  canonical_of_padded canonicalInput16791 canonicalOutput16791 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16792 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16792 : ExponentCode := normalNode8964

theorem canonicalSound16792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16792.moment H = canonicalOutput16792.moment H :=
  canonical_of_padded canonicalInput16792 canonicalOutput16792 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16793 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput16793 : ExponentCode := normalNode8786

theorem canonicalSound16793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16793.moment H = canonicalOutput16793.moment H :=
  canonical_of_padded canonicalInput16793 canonicalOutput16793 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16794 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound16794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16794.moment H = canonicalOutput16794.moment H :=
  canonical_of_padded canonicalInput16794 canonicalOutput16794 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16795 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 0, -1], ![0, -1, 2, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16795 : ExponentCode := normalNode11088

theorem canonicalSound16795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16795.moment H = canonicalOutput16795.moment H :=
  canonical_of_padded canonicalInput16795 canonicalOutput16795 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16796 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 2, -3, 0], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput16796 : ExponentCode := normalNode11103

theorem canonicalSound16796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16796.moment H = canonicalOutput16796.moment H :=
  canonical_of_padded canonicalInput16796 canonicalOutput16796 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16797 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 1, -2], ![-1, -1, 2, -2, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput16797 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1113

theorem canonicalSound16797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16797.moment H = canonicalOutput16797.moment H :=
  canonical_of_padded canonicalInput16797 canonicalOutput16797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16798 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 1, -2], ![0, -1, 2, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16798 : ExponentCode := normalNode3784

theorem canonicalSound16798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16798.moment H = canonicalOutput16798.moment H :=
  canonical_of_padded canonicalInput16798 canonicalOutput16798 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16799 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16799 : ExponentCode := normalNode3901

theorem canonicalSound16799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16799.moment H = canonicalOutput16799.moment H :=
  canonical_of_padded canonicalInput16799 canonicalOutput16799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16800 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput16800 : ExponentCode := normalNode3784

theorem canonicalSound16800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16800.moment H = canonicalOutput16800.moment H :=
  canonical_of_padded canonicalInput16800 canonicalOutput16800 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16801 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![-1, 1, -2, 1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput16801 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound16801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16801.moment H = canonicalOutput16801.moment H :=
  canonical_of_padded canonicalInput16801 canonicalOutput16801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16802 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![-1, 1, 1, 0, -1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16802 : ExponentCode := normalNode4254

theorem canonicalSound16802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16802.moment H = canonicalOutput16802.moment H :=
  canonical_of_padded canonicalInput16802 canonicalOutput16802 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16803 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput16803 : ExponentCode := normalNode4206

theorem canonicalSound16803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16803.moment H = canonicalOutput16803.moment H :=
  canonical_of_padded canonicalInput16803 canonicalOutput16803 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16804 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 1, 1, -1, -1], ![-1, 1, -2, 1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16804 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1392

theorem canonicalSound16804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16804.moment H = canonicalOutput16804.moment H :=
  canonical_of_padded canonicalInput16804 canonicalOutput16804 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16805 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![-2, -1, 2, 1, 0], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput16805 : ExponentCode := normalNode4010

theorem canonicalSound16805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16805.moment H = canonicalOutput16805.moment H :=
  canonical_of_padded canonicalInput16805 canonicalOutput16805 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16806 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![-1, -1, 2, 1, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput16806 : ExponentCode := normalNode3753

theorem canonicalSound16806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16806.moment H = canonicalOutput16806.moment H :=
  canonical_of_padded canonicalInput16806 canonicalOutput16806 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16807 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -2, 1, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16807 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1142⟩

theorem canonicalSound16807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16807.moment H = canonicalOutput16807.moment H :=
  canonical_of_padded canonicalInput16807 canonicalOutput16807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16808 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, -1, 0], ![-2, -1, 3, -1, 1], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput16808 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1170

theorem canonicalSound16808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16808.moment H = canonicalOutput16808.moment H :=
  canonical_of_padded canonicalInput16808 canonicalOutput16808 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16809 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, -1, 0], ![-1, -1, 3, -1, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16809 : ExponentCode := normalNode5405

theorem canonicalSound16809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16809.moment H = canonicalOutput16809.moment H :=
  canonical_of_padded canonicalInput16809 canonicalOutput16809 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16810 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![-2, -1, 2, 1, 0], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16810 : ExponentCode := normalNode5430

theorem canonicalSound16810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16810.moment H = canonicalOutput16810.moment H :=
  canonical_of_padded canonicalInput16810 canonicalOutput16810 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16811 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![-2, 0, 3, -2, 1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16811 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1173

theorem canonicalSound16811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16811.moment H = canonicalOutput16811.moment H :=
  canonical_of_padded canonicalInput16811 canonicalOutput16811 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16812 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![-1, -1, 2, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput16812 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound16812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16812.moment H = canonicalOutput16812.moment H :=
  canonical_of_padded canonicalInput16812 canonicalOutput16812 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16813 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![-1, 0, 3, -2, 0], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16813 : ExponentCode := normalNode5437

theorem canonicalSound16813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16813.moment H = canonicalOutput16813.moment H :=
  canonical_of_padded canonicalInput16813 canonicalOutput16813 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16814 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![0, -1, 2, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16814 : ExponentCode := normalNode5432

theorem canonicalSound16814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16814.moment H = canonicalOutput16814.moment H :=
  canonical_of_padded canonicalInput16814 canonicalOutput16814 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16815 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![0, 0, -1, -2, 3], ![1, -1, 2, 1, -3]]⟩

def canonicalOutput16815 : ExponentCode := normalNode5433

theorem canonicalSound16815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16815.moment H = canonicalOutput16815.moment H :=
  canonical_of_padded canonicalInput16815 canonicalOutput16815 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16816 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![0, -1, 2, 1, -2]]⟩

def canonicalOutput16816 : ExponentCode := normalNode5432

theorem canonicalSound16816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16816.moment H = canonicalOutput16816.moment H :=
  canonical_of_padded canonicalInput16816 canonicalOutput16816 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16817 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -2, 0], ![-2, -1, 2, 0, 1], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput16817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1152

theorem canonicalSound16817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16817.moment H = canonicalOutput16817.moment H :=
  canonical_of_padded canonicalInput16817 canonicalOutput16817 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16818 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -2, 0], ![-2, -1, 2, 1, 0], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput16818 : ExponentCode := normalNode5396

theorem canonicalSound16818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16818.moment H = canonicalOutput16818.moment H :=
  canonical_of_padded canonicalInput16818 canonicalOutput16818 (by decide) (by decide)
    ⟨true, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16819 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -2, 0], ![-1, -1, 2, 1, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput16819 : ExponentCode := normalNode3753

theorem canonicalSound16819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16819.moment H = canonicalOutput16819.moment H :=
  canonical_of_padded canonicalInput16819 canonicalOutput16819 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16820 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16820 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1193

theorem canonicalSound16820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16820.moment H = canonicalOutput16820.moment H :=
  canonical_of_padded canonicalInput16820 canonicalOutput16820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16821 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -1, -1], ![-1, -1, 2, -1, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16821 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound16821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16821.moment H = canonicalOutput16821.moment H :=
  canonical_of_padded canonicalInput16821 canonicalOutput16821 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16822 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -1, -1], ![-1, -1, 2, 1, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput16822 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound16822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16822.moment H = canonicalOutput16822.moment H :=
  canonical_of_padded canonicalInput16822 canonicalOutput16822 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16823 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -1, -1], ![-1, 1, 2, -1, -1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput16823 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1123

theorem canonicalSound16823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16823.moment H = canonicalOutput16823.moment H :=
  canonical_of_padded canonicalInput16823 canonicalOutput16823 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16824 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, -1, -1], ![0, -1, 2, 1, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput16824 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2292⟩

theorem canonicalSound16824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16824.moment H = canonicalOutput16824.moment H :=
  canonical_of_padded canonicalInput16824 canonicalOutput16824 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16825 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![-1, -1, 3, -2, 1], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput16825 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1162

theorem canonicalSound16825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16825.moment H = canonicalOutput16825.moment H :=
  canonical_of_padded canonicalInput16825 canonicalOutput16825 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16826 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![0, -1, -2, 1, 2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput16826 : ExponentCode := normalNode5103

theorem canonicalSound16826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16826.moment H = canonicalOutput16826.moment H :=
  canonical_of_padded canonicalInput16826 canonicalOutput16826 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16827 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![0, -1, 3, -2, 0], ![1, 0, -3, 1, 1]]⟩

def canonicalOutput16827 : ExponentCode := normalNode5302

theorem canonicalSound16827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16827.moment H = canonicalOutput16827.moment H :=
  canonical_of_padded canonicalInput16827 canonicalOutput16827 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16828 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![0, 0, -2, 1, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16828 : ExponentCode := normalNode3877

theorem canonicalSound16828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16828.moment H = canonicalOutput16828.moment H :=
  canonical_of_padded canonicalInput16828 canonicalOutput16828 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16829 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![0, 0, 2, -2, 0]]⟩

def canonicalOutput16829 : ExponentCode := normalNode3753

theorem canonicalSound16829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16829.moment H = canonicalOutput16829.moment H :=
  canonical_of_padded canonicalInput16829 canonicalOutput16829 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16830 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![0, -1, 2, -2, 1]]⟩

def canonicalOutput16830 : ExponentCode := normalNode3790

theorem canonicalSound16830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16830.moment H = canonicalOutput16830.moment H :=
  canonical_of_padded canonicalInput16830 canonicalOutput16830 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16831 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![1, -1, -2, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16831 : ExponentCode := normalNode5050

theorem canonicalSound16831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16831.moment H = canonicalOutput16831.moment H :=
  canonical_of_padded canonicalInput16831 canonicalOutput16831 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation3⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
