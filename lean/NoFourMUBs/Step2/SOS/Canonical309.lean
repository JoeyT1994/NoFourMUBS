import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19776 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19776 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2806⟩

theorem canonicalSound19776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19776.moment H = canonicalOutput19776.moment H :=
  canonical_of_padded canonicalInput19776 canonicalOutput19776 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19777 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![1, 0, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput19777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound19777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19777.moment H = canonicalOutput19777.moment H :=
  canonical_of_padded canonicalInput19777 canonicalOutput19777 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19778 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![1, 0, 2, 0, -3], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19778 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩

theorem canonicalSound19778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19778.moment H = canonicalOutput19778.moment H :=
  canonical_of_padded canonicalInput19778 canonicalOutput19778 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19779 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, -1, 2], ![0, 0, 2, -1, -1], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput19779 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound19779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19779.moment H = canonicalOutput19779.moment H :=
  canonical_of_padded canonicalInput19779 canonicalOutput19779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19780 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, -1, 2], ![0, 1, 2, -2, -1], ![1, 0, -1, 3, -3]]⟩

def canonicalOutput19780 : ExponentCode := normalNode699

theorem canonicalSound19780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19780.moment H = canonicalOutput19780.moment H :=
  canonical_of_padded canonicalInput19780 canonicalOutput19780 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19781 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19781 : ExponentCode := normalNode8361

theorem canonicalSound19781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19781.moment H = canonicalOutput19781.moment H :=
  canonical_of_padded canonicalInput19781 canonicalOutput19781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19782 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19782 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2734⟩

theorem canonicalSound19782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19782.moment H = canonicalOutput19782.moment H :=
  canonical_of_padded canonicalInput19782 canonicalOutput19782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19783 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19783 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound19783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19783.moment H = canonicalOutput19783.moment H :=
  canonical_of_padded canonicalInput19783 canonicalOutput19783 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19784 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19784 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound19784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19784.moment H = canonicalOutput19784.moment H :=
  canonical_of_padded canonicalInput19784 canonicalOutput19784 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19785 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound19785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19785.moment H = canonicalOutput19785.moment H :=
  canonical_of_padded canonicalInput19785 canonicalOutput19785 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19786 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput19786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound19786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19786.moment H = canonicalOutput19786.moment H :=
  canonical_of_padded canonicalInput19786 canonicalOutput19786 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19787 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19787 : ExponentCode := normalNode8387

theorem canonicalSound19787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19787.moment H = canonicalOutput19787.moment H :=
  canonical_of_padded canonicalInput19787 canonicalOutput19787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput19788 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput19788 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound19788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19788.moment H = canonicalOutput19788.moment H :=
  canonical_of_padded canonicalInput19788 canonicalOutput19788 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19789 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput19789 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound19789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19789.moment H = canonicalOutput19789.moment H :=
  canonical_of_padded canonicalInput19789 canonicalOutput19789 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19790 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput19790 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound19790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19790.moment H = canonicalOutput19790.moment H :=
  canonical_of_padded canonicalInput19790 canonicalOutput19790 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19791 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput19791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound19791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19791.moment H = canonicalOutput19791.moment H :=
  canonical_of_padded canonicalInput19791 canonicalOutput19791 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19792 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput19792 : ExponentCode := normalNode8949

theorem canonicalSound19792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19792.moment H = canonicalOutput19792.moment H :=
  canonical_of_padded canonicalInput19792 canonicalOutput19792 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19793 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19793 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1752⟩

theorem canonicalSound19793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19793.moment H = canonicalOutput19793.moment H :=
  canonical_of_padded canonicalInput19793 canonicalOutput19793 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19794 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound19794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19794.moment H = canonicalOutput19794.moment H :=
  canonical_of_padded canonicalInput19794 canonicalOutput19794 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19795 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19795 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound19795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19795.moment H = canonicalOutput19795.moment H :=
  canonical_of_padded canonicalInput19795 canonicalOutput19795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19796 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19796 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound19796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19796.moment H = canonicalOutput19796.moment H :=
  canonical_of_padded canonicalInput19796 canonicalOutput19796 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19797 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound19797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19797.moment H = canonicalOutput19797.moment H :=
  canonical_of_padded canonicalInput19797 canonicalOutput19797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19798 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound19798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19798.moment H = canonicalOutput19798.moment H :=
  canonical_of_padded canonicalInput19798 canonicalOutput19798 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19799 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19799 : ExponentCode := normalNode9079

theorem canonicalSound19799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19799.moment H = canonicalOutput19799.moment H :=
  canonical_of_padded canonicalInput19799 canonicalOutput19799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19800 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 2, -1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19800 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound19800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19800.moment H = canonicalOutput19800.moment H :=
  canonical_of_padded canonicalInput19800 canonicalOutput19800 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19801 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![1, 0, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput19801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound19801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19801.moment H = canonicalOutput19801.moment H :=
  canonical_of_padded canonicalInput19801 canonicalOutput19801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19802 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![1, 0, 1, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19802 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1752⟩

theorem canonicalSound19802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19802.moment H = canonicalOutput19802.moment H :=
  canonical_of_padded canonicalInput19802 canonicalOutput19802 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19803 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![1, 0, 2, -1, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput19803 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound19803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19803.moment H = canonicalOutput19803.moment H :=
  canonical_of_padded canonicalInput19803 canonicalOutput19803 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19804 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![0, 0, -1, 2, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput19804 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound19804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19804.moment H = canonicalOutput19804.moment H :=
  canonical_of_padded canonicalInput19804 canonicalOutput19804 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19805 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1823⟩

theorem canonicalSound19805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19805.moment H = canonicalOutput19805.moment H :=
  canonical_of_padded canonicalInput19805 canonicalOutput19805 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19806 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput19806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound19806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19806.moment H = canonicalOutput19806.moment H :=
  canonical_of_padded canonicalInput19806 canonicalOutput19806 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19807 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19807 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1825⟩

theorem canonicalSound19807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19807.moment H = canonicalOutput19807.moment H :=
  canonical_of_padded canonicalInput19807 canonicalOutput19807 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19808 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![1, 0, -1, 2, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19808 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound19808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19808.moment H = canonicalOutput19808.moment H :=
  canonical_of_padded canonicalInput19808 canonicalOutput19808 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19809 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19809 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound19809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19809.moment H = canonicalOutput19809.moment H :=
  canonical_of_padded canonicalInput19809 canonicalOutput19809 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19810 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 0, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19810 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound19810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19810.moment H = canonicalOutput19810.moment H :=
  canonical_of_padded canonicalInput19810 canonicalOutput19810 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19811 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -3, 2], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput19811 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2176⟩

theorem canonicalSound19811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19811.moment H = canonicalOutput19811.moment H :=
  canonical_of_padded canonicalInput19811 canonicalOutput19811 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19812 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput19812 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound19812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19812.moment H = canonicalOutput19812.moment H :=
  canonical_of_padded canonicalInput19812 canonicalOutput19812 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19813 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput19813 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound19813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19813.moment H = canonicalOutput19813.moment H :=
  canonical_of_padded canonicalInput19813 canonicalOutput19813 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19814 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19814 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1748⟩

theorem canonicalSound19814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19814.moment H = canonicalOutput19814.moment H :=
  canonical_of_padded canonicalInput19814 canonicalOutput19814 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19815 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19815 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound19815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19815.moment H = canonicalOutput19815.moment H :=
  canonical_of_padded canonicalInput19815 canonicalOutput19815 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19816 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19816 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound19816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19816.moment H = canonicalOutput19816.moment H :=
  canonical_of_padded canonicalInput19816 canonicalOutput19816 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19817 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19817.moment H = canonicalOutput19817.moment H :=
  canonical_of_padded canonicalInput19817 canonicalOutput19817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19818 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19818 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19818.moment H = canonicalOutput19818.moment H :=
  canonical_of_padded canonicalInput19818 canonicalOutput19818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19819 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19819 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound19819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19819.moment H = canonicalOutput19819.moment H :=
  canonical_of_padded canonicalInput19819 canonicalOutput19819 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19820 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19820 : ExponentCode := normalNode9460

theorem canonicalSound19820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19820.moment H = canonicalOutput19820.moment H :=
  canonical_of_padded canonicalInput19820 canonicalOutput19820 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19821 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19821 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound19821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19821.moment H = canonicalOutput19821.moment H :=
  canonical_of_padded canonicalInput19821 canonicalOutput19821 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19822 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![1, 0, 0, -3, 2], ![0, 1, 0, 2, -3]]⟩

def canonicalOutput19822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩

theorem canonicalSound19822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19822.moment H = canonicalOutput19822.moment H :=
  canonical_of_padded canonicalInput19822 canonicalOutput19822 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19823 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![1, 0, 0, 1, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19823.moment H = canonicalOutput19823.moment H :=
  canonical_of_padded canonicalInput19823 canonicalOutput19823 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19824 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput19824 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound19824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19824.moment H = canonicalOutput19824.moment H :=
  canonical_of_padded canonicalInput19824 canonicalOutput19824 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19825 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 0, -1, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput19825 : ExponentCode := normalNode888

theorem canonicalSound19825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19825.moment H = canonicalOutput19825.moment H :=
  canonical_of_padded canonicalInput19825 canonicalOutput19825 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19826 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput19826 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2344⟩

theorem canonicalSound19826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19826.moment H = canonicalOutput19826.moment H :=
  canonical_of_padded canonicalInput19826 canonicalOutput19826 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19827 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19827 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1740⟩

theorem canonicalSound19827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19827.moment H = canonicalOutput19827.moment H :=
  canonical_of_padded canonicalInput19827 canonicalOutput19827 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19828 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19828 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2633⟩

theorem canonicalSound19828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19828.moment H = canonicalOutput19828.moment H :=
  canonical_of_padded canonicalInput19828 canonicalOutput19828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19829 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19829 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2635⟩

theorem canonicalSound19829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19829.moment H = canonicalOutput19829.moment H :=
  canonical_of_padded canonicalInput19829 canonicalOutput19829 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput19830 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19830 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound19830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19830.moment H = canonicalOutput19830.moment H :=
  canonical_of_padded canonicalInput19830 canonicalOutput19830 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19831 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput19831 : ExponentCode := normalNode5791

theorem canonicalSound19831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19831.moment H = canonicalOutput19831.moment H :=
  canonical_of_padded canonicalInput19831 canonicalOutput19831 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19832 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 1, 2, -2], ![1, 0, -1, -1, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19832 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound19832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19832.moment H = canonicalOutput19832.moment H :=
  canonical_of_padded canonicalInput19832 canonicalOutput19832 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19833 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19833 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound19833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19833.moment H = canonicalOutput19833.moment H :=
  canonical_of_padded canonicalInput19833 canonicalOutput19833 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19834 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19834 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound19834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19834.moment H = canonicalOutput19834.moment H :=
  canonical_of_padded canonicalInput19834 canonicalOutput19834 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19835 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 2, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19835 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2611⟩

theorem canonicalSound19835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19835.moment H = canonicalOutput19835.moment H :=
  canonical_of_padded canonicalInput19835 canonicalOutput19835 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput19836 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput19836 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound19836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19836.moment H = canonicalOutput19836.moment H :=
  canonical_of_padded canonicalInput19836 canonicalOutput19836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19837 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19837 : ExponentCode := normalNode8949

theorem canonicalSound19837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19837.moment H = canonicalOutput19837.moment H :=
  canonical_of_padded canonicalInput19837 canonicalOutput19837 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19838 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, -1, 3, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19838 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1626⟩

theorem canonicalSound19838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19838.moment H = canonicalOutput19838.moment H :=
  canonical_of_padded canonicalInput19838 canonicalOutput19838 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19839 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19839 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound19839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19839.moment H = canonicalOutput19839.moment H :=
  canonical_of_padded canonicalInput19839 canonicalOutput19839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
