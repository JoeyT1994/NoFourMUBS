import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6656 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2418⟩

theorem canonicalSound6656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6656.moment H = canonicalOutput6656.moment H :=
  canonical_of_padded canonicalInput6656 canonicalOutput6656 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6657 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6657 : ExponentCode := normalNode9916

theorem canonicalSound6657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6657.moment H = canonicalOutput6657.moment H :=
  canonical_of_padded canonicalInput6657 canonicalOutput6657 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6658 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput6658 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩

theorem canonicalSound6658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6658.moment H = canonicalOutput6658.moment H :=
  canonical_of_padded canonicalInput6658 canonicalOutput6658 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6659 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6659 : ExponentCode := normalNode9694

theorem canonicalSound6659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6659.moment H = canonicalOutput6659.moment H :=
  canonical_of_padded canonicalInput6659 canonicalOutput6659 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6660 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput6660 : ExponentCode := normalNode7193

theorem canonicalSound6660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6660.moment H = canonicalOutput6660.moment H :=
  canonical_of_padded canonicalInput6660 canonicalOutput6660 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6661 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound6661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6661.moment H = canonicalOutput6661.moment H :=
  canonical_of_padded canonicalInput6661 canonicalOutput6661 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6662 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6662 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound6662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6662.moment H = canonicalOutput6662.moment H :=
  canonical_of_padded canonicalInput6662 canonicalOutput6662 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6663 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6663 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node982⟩

theorem canonicalSound6663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6663.moment H = canonicalOutput6663.moment H :=
  canonical_of_padded canonicalInput6663 canonicalOutput6663 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6664 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, -1, 1], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6664 : ExponentCode := normalNode6519

theorem canonicalSound6664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6664.moment H = canonicalOutput6664.moment H :=
  canonical_of_padded canonicalInput6664 canonicalOutput6664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6665 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput6665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound6665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6665.moment H = canonicalOutput6665.moment H :=
  canonical_of_padded canonicalInput6665 canonicalOutput6665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput6666 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput6666 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound6666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6666.moment H = canonicalOutput6666.moment H :=
  canonical_of_padded canonicalInput6666 canonicalOutput6666 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput6667 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput6667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound6667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6667.moment H = canonicalOutput6667.moment H :=
  canonical_of_padded canonicalInput6667 canonicalOutput6667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput6668 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6668 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1267⟩

theorem canonicalSound6668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6668.moment H = canonicalOutput6668.moment H :=
  canonical_of_padded canonicalInput6668 canonicalOutput6668 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput6669 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound6669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6669.moment H = canonicalOutput6669.moment H :=
  canonical_of_padded canonicalInput6669 canonicalOutput6669 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput6670 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6670 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound6670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6670.moment H = canonicalOutput6670.moment H :=
  canonical_of_padded canonicalInput6670 canonicalOutput6670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6671 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound6671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6671.moment H = canonicalOutput6671.moment H :=
  canonical_of_padded canonicalInput6671 canonicalOutput6671 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput6672 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound6672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6672.moment H = canonicalOutput6672.moment H :=
  canonical_of_padded canonicalInput6672 canonicalOutput6672 (by decide) (by decide)
    ⟨false, true, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6673 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput6673 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound6673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6673.moment H = canonicalOutput6673.moment H :=
  canonical_of_padded canonicalInput6673 canonicalOutput6673 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6674 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6674 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound6674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6674.moment H = canonicalOutput6674.moment H :=
  canonical_of_padded canonicalInput6674 canonicalOutput6674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput6675 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput6675 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound6675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6675.moment H = canonicalOutput6675.moment H :=
  canonical_of_padded canonicalInput6675 canonicalOutput6675 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6676 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6676 : ExponentCode := normalNode10860

theorem canonicalSound6676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6676.moment H = canonicalOutput6676.moment H :=
  canonical_of_padded canonicalInput6676 canonicalOutput6676 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6677 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6677 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2529⟩

theorem canonicalSound6677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6677.moment H = canonicalOutput6677.moment H :=
  canonical_of_padded canonicalInput6677 canonicalOutput6677 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6678 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6678 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2597⟩

theorem canonicalSound6678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6678.moment H = canonicalOutput6678.moment H :=
  canonical_of_padded canonicalInput6678 canonicalOutput6678 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6679 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound6679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6679.moment H = canonicalOutput6679.moment H :=
  canonical_of_padded canonicalInput6679 canonicalOutput6679 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6680 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput6680 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound6680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6680.moment H = canonicalOutput6680.moment H :=
  canonical_of_padded canonicalInput6680 canonicalOutput6680 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6681 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6681 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound6681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6681.moment H = canonicalOutput6681.moment H :=
  canonical_of_padded canonicalInput6681 canonicalOutput6681 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6682 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput6682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2676⟩

theorem canonicalSound6682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6682.moment H = canonicalOutput6682.moment H :=
  canonical_of_padded canonicalInput6682 canonicalOutput6682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6683 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6683 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2608⟩

theorem canonicalSound6683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6683.moment H = canonicalOutput6683.moment H :=
  canonical_of_padded canonicalInput6683 canonicalOutput6683 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6684 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6684 : ExponentCode := normalNode10890

theorem canonicalSound6684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6684.moment H = canonicalOutput6684.moment H :=
  canonical_of_padded canonicalInput6684 canonicalOutput6684 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6685 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6685 : ExponentCode := normalNode10894

theorem canonicalSound6685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6685.moment H = canonicalOutput6685.moment H :=
  canonical_of_padded canonicalInput6685 canonicalOutput6685 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6686 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6686 : ExponentCode := normalNode10898

theorem canonicalSound6686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6686.moment H = canonicalOutput6686.moment H :=
  canonical_of_padded canonicalInput6686 canonicalOutput6686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6687 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput6687 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1317⟩

theorem canonicalSound6687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6687.moment H = canonicalOutput6687.moment H :=
  canonical_of_padded canonicalInput6687 canonicalOutput6687 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6688 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput6688 : ExponentCode := normalNode10860

theorem canonicalSound6688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6688.moment H = canonicalOutput6688.moment H :=
  canonical_of_padded canonicalInput6688 canonicalOutput6688 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6689 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound6689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6689.moment H = canonicalOutput6689.moment H :=
  canonical_of_padded canonicalInput6689 canonicalOutput6689 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput6690 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -2, 3, -3]]⟩

def canonicalOutput6690 : ExponentCode := normalNode3599

theorem canonicalSound6690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6690.moment H = canonicalOutput6690.moment H :=
  canonical_of_padded canonicalInput6690 canonicalOutput6690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6691 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound6691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6691.moment H = canonicalOutput6691.moment H :=
  canonical_of_padded canonicalInput6691 canonicalOutput6691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6692 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput6692 : ExponentCode := normalNode10829

theorem canonicalSound6692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6692.moment H = canonicalOutput6692.moment H :=
  canonical_of_padded canonicalInput6692 canonicalOutput6692 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6693 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6693 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound6693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6693.moment H = canonicalOutput6693.moment H :=
  canonical_of_padded canonicalInput6693 canonicalOutput6693 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6694 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound6694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6694.moment H = canonicalOutput6694.moment H :=
  canonical_of_padded canonicalInput6694 canonicalOutput6694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6695 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2767⟩

theorem canonicalSound6695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6695.moment H = canonicalOutput6695.moment H :=
  canonical_of_padded canonicalInput6695 canonicalOutput6695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6696 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2579⟩

theorem canonicalSound6696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6696.moment H = canonicalOutput6696.moment H :=
  canonical_of_padded canonicalInput6696 canonicalOutput6696 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6697 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput6697 : ExponentCode := normalNode10296

theorem canonicalSound6697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6697.moment H = canonicalOutput6697.moment H :=
  canonical_of_padded canonicalInput6697 canonicalOutput6697 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6698 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6698 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound6698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6698.moment H = canonicalOutput6698.moment H :=
  canonical_of_padded canonicalInput6698 canonicalOutput6698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6699 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6699 : ExponentCode := normalNode9927

theorem canonicalSound6699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6699.moment H = canonicalOutput6699.moment H :=
  canonical_of_padded canonicalInput6699 canonicalOutput6699 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6700 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -2, 3, -3]]⟩

def canonicalOutput6700 : ExponentCode := normalNode11194

theorem canonicalSound6700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6700.moment H = canonicalOutput6700.moment H :=
  canonical_of_padded canonicalInput6700 canonicalOutput6700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6701 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput6701 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound6701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6701.moment H = canonicalOutput6701.moment H :=
  canonical_of_padded canonicalInput6701 canonicalOutput6701 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6702 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound6702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6702.moment H = canonicalOutput6702.moment H :=
  canonical_of_padded canonicalInput6702 canonicalOutput6702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6703 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound6703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6703.moment H = canonicalOutput6703.moment H :=
  canonical_of_padded canonicalInput6703 canonicalOutput6703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6704 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput6704 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1700⟩

theorem canonicalSound6704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6704.moment H = canonicalOutput6704.moment H :=
  canonical_of_padded canonicalInput6704 canonicalOutput6704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6705 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6705 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound6705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6705.moment H = canonicalOutput6705.moment H :=
  canonical_of_padded canonicalInput6705 canonicalOutput6705 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6706 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput6706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound6706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6706.moment H = canonicalOutput6706.moment H :=
  canonical_of_padded canonicalInput6706 canonicalOutput6706 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6707 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput6707 : ExponentCode := normalNode7970

theorem canonicalSound6707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6707.moment H = canonicalOutput6707.moment H :=
  canonical_of_padded canonicalInput6707 canonicalOutput6707 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6708 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6708 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2589⟩

theorem canonicalSound6708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6708.moment H = canonicalOutput6708.moment H :=
  canonical_of_padded canonicalInput6708 canonicalOutput6708 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6709 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6709 : ExponentCode := normalNode10893

theorem canonicalSound6709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6709.moment H = canonicalOutput6709.moment H :=
  canonical_of_padded canonicalInput6709 canonicalOutput6709 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6710 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput6710 : ExponentCode := normalNode3611

theorem canonicalSound6710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6710.moment H = canonicalOutput6710.moment H :=
  canonical_of_padded canonicalInput6710 canonicalOutput6710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6711 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput6711 : ExponentCode := normalNode10293

theorem canonicalSound6711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6711.moment H = canonicalOutput6711.moment H :=
  canonical_of_padded canonicalInput6711 canonicalOutput6711 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6712 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput6712 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound6712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6712.moment H = canonicalOutput6712.moment H :=
  canonical_of_padded canonicalInput6712 canonicalOutput6712 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6713 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput6713 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1705⟩

theorem canonicalSound6713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6713.moment H = canonicalOutput6713.moment H :=
  canonical_of_padded canonicalInput6713 canonicalOutput6713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6714 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput6714 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2827⟩

theorem canonicalSound6714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6714.moment H = canonicalOutput6714.moment H :=
  canonical_of_padded canonicalInput6714 canonicalOutput6714 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6715 : ExponentCode := ⟨4, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput6715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1313⟩

theorem canonicalSound6715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6715.moment H = canonicalOutput6715.moment H :=
  canonical_of_padded canonicalInput6715 canonicalOutput6715 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6716 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput6716 : ExponentCode := normalNode10842

theorem canonicalSound6716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6716.moment H = canonicalOutput6716.moment H :=
  canonical_of_padded canonicalInput6716 canonicalOutput6716 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6717 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2763⟩

theorem canonicalSound6717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6717.moment H = canonicalOutput6717.moment H :=
  canonical_of_padded canonicalInput6717 canonicalOutput6717 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6718 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2763⟩

theorem canonicalSound6718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6718.moment H = canonicalOutput6718.moment H :=
  canonical_of_padded canonicalInput6718 canonicalOutput6718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6719 : ExponentCode := ⟨5, 4, ![![-2, 0, -1, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6719 : ExponentCode := normalNode10629

theorem canonicalSound6719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6719.moment H = canonicalOutput6719.moment H :=
  canonical_of_padded canonicalInput6719 canonicalOutput6719 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
