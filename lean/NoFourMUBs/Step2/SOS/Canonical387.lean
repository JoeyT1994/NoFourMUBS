import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24768 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput24768 : ExponentCode := normalNode2351

theorem canonicalSound24768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24768.moment H = canonicalOutput24768.moment H :=
  canonical_of_padded canonicalInput24768 canonicalOutput24768 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24769 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput24769 : ExponentCode := normalNode764

theorem canonicalSound24769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24769.moment H = canonicalOutput24769.moment H :=
  canonical_of_padded canonicalInput24769 canonicalOutput24769 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24770 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 2, 2, -2]]⟩

def canonicalOutput24770 : ExponentCode := normalNode5694

theorem canonicalSound24770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24770.moment H = canonicalOutput24770.moment H :=
  canonical_of_padded canonicalInput24770 canonicalOutput24770 (by decide) (by decide)
    ⟨false, true, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24771 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput24771 : ExponentCode := normalNode2355

theorem canonicalSound24771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24771.moment H = canonicalOutput24771.moment H :=
  canonical_of_padded canonicalInput24771 canonicalOutput24771 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24772 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput24772 : ExponentCode := normalNode1740

theorem canonicalSound24772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24772.moment H = canonicalOutput24772.moment H :=
  canonical_of_padded canonicalInput24772 canonicalOutput24772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24773 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput24773 : ExponentCode := normalNode807

theorem canonicalSound24773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24773.moment H = canonicalOutput24773.moment H :=
  canonical_of_padded canonicalInput24773 canonicalOutput24773 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24774 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput24774 : ExponentCode := normalNode4237

theorem canonicalSound24774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24774.moment H = canonicalOutput24774.moment H :=
  canonical_of_padded canonicalInput24774 canonicalOutput24774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24775 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput24775 : ExponentCode := normalNode712

theorem canonicalSound24775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24775.moment H = canonicalOutput24775.moment H :=
  canonical_of_padded canonicalInput24775 canonicalOutput24775 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24776 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput24776 : ExponentCode := normalNode2819

theorem canonicalSound24776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24776.moment H = canonicalOutput24776.moment H :=
  canonical_of_padded canonicalInput24776 canonicalOutput24776 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24777 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput24777 : ExponentCode := normalNode4545

theorem canonicalSound24777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24777.moment H = canonicalOutput24777.moment H :=
  canonical_of_padded canonicalInput24777 canonicalOutput24777 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24778 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput24778 : ExponentCode := normalNode2901

theorem canonicalSound24778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24778.moment H = canonicalOutput24778.moment H :=
  canonical_of_padded canonicalInput24778 canonicalOutput24778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24779 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput24779 : ExponentCode := normalNode4259

theorem canonicalSound24779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24779.moment H = canonicalOutput24779.moment H :=
  canonical_of_padded canonicalInput24779 canonicalOutput24779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24780 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput24780 : ExponentCode := normalNode4699

theorem canonicalSound24780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24780.moment H = canonicalOutput24780.moment H :=
  canonical_of_padded canonicalInput24780 canonicalOutput24780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24781 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput24781 : ExponentCode := normalNode5681

theorem canonicalSound24781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24781.moment H = canonicalOutput24781.moment H :=
  canonical_of_padded canonicalInput24781 canonicalOutput24781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24782 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput24782 : ExponentCode := normalNode2902

theorem canonicalSound24782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24782.moment H = canonicalOutput24782.moment H :=
  canonical_of_padded canonicalInput24782 canonicalOutput24782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24783 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput24783 : ExponentCode := normalNode5427

theorem canonicalSound24783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24783.moment H = canonicalOutput24783.moment H :=
  canonical_of_padded canonicalInput24783 canonicalOutput24783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24784 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput24784 : ExponentCode := normalNode1831

theorem canonicalSound24784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24784.moment H = canonicalOutput24784.moment H :=
  canonical_of_padded canonicalInput24784 canonicalOutput24784 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24785 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput24785 : ExponentCode := normalNode2903

theorem canonicalSound24785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24785.moment H = canonicalOutput24785.moment H :=
  canonical_of_padded canonicalInput24785 canonicalOutput24785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24786 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput24786 : ExponentCode := normalNode5292

theorem canonicalSound24786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24786.moment H = canonicalOutput24786.moment H :=
  canonical_of_padded canonicalInput24786 canonicalOutput24786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24787 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput24787 : ExponentCode := normalNode2897

theorem canonicalSound24787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24787.moment H = canonicalOutput24787.moment H :=
  canonical_of_padded canonicalInput24787 canonicalOutput24787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24788 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput24788 : ExponentCode := normalNode1833

theorem canonicalSound24788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24788.moment H = canonicalOutput24788.moment H :=
  canonical_of_padded canonicalInput24788 canonicalOutput24788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24789 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24789 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound24789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24789.moment H = canonicalOutput24789.moment H :=
  canonical_of_padded canonicalInput24789 canonicalOutput24789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24790 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -1, -1, 2]]⟩

def canonicalOutput24790 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound24790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24790.moment H = canonicalOutput24790.moment H :=
  canonical_of_padded canonicalInput24790 canonicalOutput24790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24791 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24791 : ExponentCode := normalNode6022

theorem canonicalSound24791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24791.moment H = canonicalOutput24791.moment H :=
  canonical_of_padded canonicalInput24791 canonicalOutput24791 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24792 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput24792 : ExponentCode := normalNode9293

theorem canonicalSound24792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24792.moment H = canonicalOutput24792.moment H :=
  canonical_of_padded canonicalInput24792 canonicalOutput24792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24793 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput24793 : ExponentCode := normalNode2906

theorem canonicalSound24793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24793.moment H = canonicalOutput24793.moment H :=
  canonical_of_padded canonicalInput24793 canonicalOutput24793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24794 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput24794 : ExponentCode := normalNode5424

theorem canonicalSound24794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24794.moment H = canonicalOutput24794.moment H :=
  canonical_of_padded canonicalInput24794 canonicalOutput24794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24795 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput24795 : ExponentCode := normalNode6649

theorem canonicalSound24795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24795.moment H = canonicalOutput24795.moment H :=
  canonical_of_padded canonicalInput24795 canonicalOutput24795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24796 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput24796 : ExponentCode := normalNode1742

theorem canonicalSound24796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24796.moment H = canonicalOutput24796.moment H :=
  canonical_of_padded canonicalInput24796 canonicalOutput24796 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24797 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput24797 : ExponentCode := normalNode7682

theorem canonicalSound24797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24797.moment H = canonicalOutput24797.moment H :=
  canonical_of_padded canonicalInput24797 canonicalOutput24797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24798 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput24798 : ExponentCode := normalNode10189

theorem canonicalSound24798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24798.moment H = canonicalOutput24798.moment H :=
  canonical_of_padded canonicalInput24798 canonicalOutput24798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24799 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput24799 : ExponentCode := normalNode5675

theorem canonicalSound24799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24799.moment H = canonicalOutput24799.moment H :=
  canonical_of_padded canonicalInput24799 canonicalOutput24799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24800 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput24800 : ExponentCode := normalNode4697

theorem canonicalSound24800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24800.moment H = canonicalOutput24800.moment H :=
  canonical_of_padded canonicalInput24800 canonicalOutput24800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24801 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput24801 : ExponentCode := normalNode2905

theorem canonicalSound24801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24801.moment H = canonicalOutput24801.moment H :=
  canonical_of_padded canonicalInput24801 canonicalOutput24801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24802 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput24802 : ExponentCode := normalNode7099

theorem canonicalSound24802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24802.moment H = canonicalOutput24802.moment H :=
  canonical_of_padded canonicalInput24802 canonicalOutput24802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24803 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput24803 : ExponentCode := normalNode6670

theorem canonicalSound24803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24803.moment H = canonicalOutput24803.moment H :=
  canonical_of_padded canonicalInput24803 canonicalOutput24803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24804 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput24804 : ExponentCode := normalNode4820

theorem canonicalSound24804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24804.moment H = canonicalOutput24804.moment H :=
  canonical_of_padded canonicalInput24804 canonicalOutput24804 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24805 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput24805 : ExponentCode := normalNode1744

theorem canonicalSound24805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24805.moment H = canonicalOutput24805.moment H :=
  canonical_of_padded canonicalInput24805 canonicalOutput24805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24806 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput24806 : ExponentCode := normalNode6685

theorem canonicalSound24806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24806.moment H = canonicalOutput24806.moment H :=
  canonical_of_padded canonicalInput24806 canonicalOutput24806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24807 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![-1, 2, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput24807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1336⟩

theorem canonicalSound24807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24807.moment H = canonicalOutput24807.moment H :=
  canonical_of_padded canonicalInput24807 canonicalOutput24807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24808 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24808 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound24808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24808.moment H = canonicalOutput24808.moment H :=
  canonical_of_padded canonicalInput24808 canonicalOutput24808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24809 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput24809 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1371⟩

theorem canonicalSound24809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24809.moment H = canonicalOutput24809.moment H :=
  canonical_of_padded canonicalInput24809 canonicalOutput24809 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24810 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput24810 : ExponentCode := normalNode3836

theorem canonicalSound24810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24810.moment H = canonicalOutput24810.moment H :=
  canonical_of_padded canonicalInput24810 canonicalOutput24810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24811 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput24811 : ExponentCode := normalNode4261

theorem canonicalSound24811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24811.moment H = canonicalOutput24811.moment H :=
  canonical_of_padded canonicalInput24811 canonicalOutput24811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24812 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput24812 : ExponentCode := normalNode752

theorem canonicalSound24812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24812.moment H = canonicalOutput24812.moment H :=
  canonical_of_padded canonicalInput24812 canonicalOutput24812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24813 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput24813 : ExponentCode := normalNode2294

theorem canonicalSound24813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24813.moment H = canonicalOutput24813.moment H :=
  canonical_of_padded canonicalInput24813 canonicalOutput24813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24814 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 3, 1, -2]]⟩

def canonicalOutput24814 : ExponentCode := normalNode5723

theorem canonicalSound24814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24814.moment H = canonicalOutput24814.moment H :=
  canonical_of_padded canonicalInput24814 canonicalOutput24814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24815 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput24815 : ExponentCode := normalNode3837

theorem canonicalSound24815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24815.moment H = canonicalOutput24815.moment H :=
  canonical_of_padded canonicalInput24815 canonicalOutput24815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24816 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput24816 : ExponentCode := normalNode744

theorem canonicalSound24816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24816.moment H = canonicalOutput24816.moment H :=
  canonical_of_padded canonicalInput24816 canonicalOutput24816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24817 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput24817 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound24817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24817.moment H = canonicalOutput24817.moment H :=
  canonical_of_padded canonicalInput24817 canonicalOutput24817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24818 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, -1, 0, 1]]⟩

def canonicalOutput24818 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound24818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24818.moment H = canonicalOutput24818.moment H :=
  canonical_of_padded canonicalInput24818 canonicalOutput24818 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24819 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, -1, 2]]⟩

def canonicalOutput24819 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound24819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24819.moment H = canonicalOutput24819.moment H :=
  canonical_of_padded canonicalInput24819 canonicalOutput24819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24820 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -1, -2, 3]]⟩

def canonicalOutput24820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound24820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24820.moment H = canonicalOutput24820.moment H :=
  canonical_of_padded canonicalInput24820 canonicalOutput24820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24821 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput24821 : ExponentCode := normalNode3829

theorem canonicalSound24821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24821.moment H = canonicalOutput24821.moment H :=
  canonical_of_padded canonicalInput24821 canonicalOutput24821 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24822 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput24822 : ExponentCode := normalNode6169

theorem canonicalSound24822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24822.moment H = canonicalOutput24822.moment H :=
  canonical_of_padded canonicalInput24822 canonicalOutput24822 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24823 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput24823 : ExponentCode := normalNode9338

theorem canonicalSound24823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24823.moment H = canonicalOutput24823.moment H :=
  canonical_of_padded canonicalInput24823 canonicalOutput24823 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24824 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, 1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput24824 : ExponentCode := normalNode2319

theorem canonicalSound24824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24824.moment H = canonicalOutput24824.moment H :=
  canonical_of_padded canonicalInput24824 canonicalOutput24824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24825 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput24825 : ExponentCode := normalNode6908

theorem canonicalSound24825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24825.moment H = canonicalOutput24825.moment H :=
  canonical_of_padded canonicalInput24825 canonicalOutput24825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24826 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, 2, -3], ![-2, 2, -2, 2]]⟩

def canonicalOutput24826 : ExponentCode := normalNode754

theorem canonicalSound24826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24826.moment H = canonicalOutput24826.moment H :=
  canonical_of_padded canonicalInput24826 canonicalOutput24826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24827 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, -2, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput24827 : ExponentCode := normalNode6849

theorem canonicalSound24827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24827.moment H = canonicalOutput24827.moment H :=
  canonical_of_padded canonicalInput24827 canonicalOutput24827 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24828 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput24828 : ExponentCode := normalNode746

theorem canonicalSound24828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24828.moment H = canonicalOutput24828.moment H :=
  canonical_of_padded canonicalInput24828 canonicalOutput24828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24829 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![1, 1, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput24829 : ExponentCode := normalNode5672

theorem canonicalSound24829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24829.moment H = canonicalOutput24829.moment H :=
  canonical_of_padded canonicalInput24829 canonicalOutput24829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24830 : ExponentCode := ⟨6, 4, ![![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput24830 : ExponentCode := normalNode745

theorem canonicalSound24830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24830.moment H = canonicalOutput24830.moment H :=
  canonical_of_padded canonicalInput24830 canonicalOutput24830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24831 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![0, 0, 2, -2], ![-1, 2, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput24831 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound24831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24831.moment H = canonicalOutput24831.moment H :=
  canonical_of_padded canonicalInput24831 canonicalOutput24831 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
