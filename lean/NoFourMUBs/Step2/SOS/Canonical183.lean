import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11712 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, 0, -2, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput11712 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node411⟩

theorem canonicalSound11712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11712.moment H = canonicalOutput11712.moment H :=
  canonical_of_padded canonicalInput11712 canonicalOutput11712 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11713 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11713 : ExponentCode := normalNode4133

theorem canonicalSound11713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11713.moment H = canonicalOutput11713.moment H :=
  canonical_of_padded canonicalInput11713 canonicalOutput11713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11714 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11714 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2037⟩

theorem canonicalSound11714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11714.moment H = canonicalOutput11714.moment H :=
  canonical_of_padded canonicalInput11714 canonicalOutput11714 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11715 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput11715 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code190

theorem canonicalSound11715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11715.moment H = canonicalOutput11715.moment H :=
  canonical_of_padded canonicalInput11715 canonicalOutput11715 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11716 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput11716 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code542

theorem canonicalSound11716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11716.moment H = canonicalOutput11716.moment H :=
  canonical_of_padded canonicalInput11716 canonicalOutput11716 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11717 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11717 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node611⟩

theorem canonicalSound11717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11717.moment H = canonicalOutput11717.moment H :=
  canonical_of_padded canonicalInput11717 canonicalOutput11717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11718 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11718 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound11718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11718.moment H = canonicalOutput11718.moment H :=
  canonical_of_padded canonicalInput11718 canonicalOutput11718 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11719 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -2, 3], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11719 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code657

theorem canonicalSound11719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11719.moment H = canonicalOutput11719.moment H :=
  canonical_of_padded canonicalInput11719 canonicalOutput11719 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11720 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11720 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound11720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11720.moment H = canonicalOutput11720.moment H :=
  canonical_of_padded canonicalInput11720 canonicalOutput11720 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11721 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput11721 : ExponentCode := normalNode5710

theorem canonicalSound11721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11721.moment H = canonicalOutput11721.moment H :=
  canonical_of_padded canonicalInput11721 canonicalOutput11721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11722 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -2, 0, 2], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput11722 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1247

theorem canonicalSound11722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11722.moment H = canonicalOutput11722.moment H :=
  canonical_of_padded canonicalInput11722 canonicalOutput11722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11723 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, -1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput11723 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code204

theorem canonicalSound11723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11723.moment H = canonicalOutput11723.moment H :=
  canonical_of_padded canonicalInput11723 canonicalOutput11723 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11724 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11724 : ExponentCode := normalNode4871

theorem canonicalSound11724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11724.moment H = canonicalOutput11724.moment H :=
  canonical_of_padded canonicalInput11724 canonicalOutput11724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11725 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11725 : ExponentCode := normalNode4871

theorem canonicalSound11725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11725.moment H = canonicalOutput11725.moment H :=
  canonical_of_padded canonicalInput11725 canonicalOutput11725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11726 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2167⟩

theorem canonicalSound11726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11726.moment H = canonicalOutput11726.moment H :=
  canonical_of_padded canonicalInput11726 canonicalOutput11726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11727 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput11727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound11727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11727.moment H = canonicalOutput11727.moment H :=
  canonical_of_padded canonicalInput11727 canonicalOutput11727 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11728 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput11728 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1127

theorem canonicalSound11728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11728.moment H = canonicalOutput11728.moment H :=
  canonical_of_padded canonicalInput11728 canonicalOutput11728 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11729 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput11729 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code192

theorem canonicalSound11729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11729.moment H = canonicalOutput11729.moment H :=
  canonical_of_padded canonicalInput11729 canonicalOutput11729 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11730 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput11730 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound11730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11730.moment H = canonicalOutput11730.moment H :=
  canonical_of_padded canonicalInput11730 canonicalOutput11730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11731 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11731 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound11731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11731.moment H = canonicalOutput11731.moment H :=
  canonical_of_padded canonicalInput11731 canonicalOutput11731 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11732 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, 2, -1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput11732 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code192

theorem canonicalSound11732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11732.moment H = canonicalOutput11732.moment H :=
  canonical_of_padded canonicalInput11732 canonicalOutput11732 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11733 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11733 : ExponentCode := normalNode5711

theorem canonicalSound11733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11733.moment H = canonicalOutput11733.moment H :=
  canonical_of_padded canonicalInput11733 canonicalOutput11733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11734 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput11734 : ExponentCode := normalNode5714

theorem canonicalSound11734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11734.moment H = canonicalOutput11734.moment H :=
  canonical_of_padded canonicalInput11734 canonicalOutput11734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11735 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput11735 : ExponentCode := normalNode5721

theorem canonicalSound11735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11735.moment H = canonicalOutput11735.moment H :=
  canonical_of_padded canonicalInput11735 canonicalOutput11735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11736 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11736 : ExponentCode := normalNode4868

theorem canonicalSound11736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11736.moment H = canonicalOutput11736.moment H :=
  canonical_of_padded canonicalInput11736 canonicalOutput11736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11737 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11737 : ExponentCode := normalNode10678

theorem canonicalSound11737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11737.moment H = canonicalOutput11737.moment H :=
  canonical_of_padded canonicalInput11737 canonicalOutput11737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11738 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2162⟩

theorem canonicalSound11738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11738.moment H = canonicalOutput11738.moment H :=
  canonical_of_padded canonicalInput11738 canonicalOutput11738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11739 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11739 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound11739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11739.moment H = canonicalOutput11739.moment H :=
  canonical_of_padded canonicalInput11739 canonicalOutput11739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11740 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 0, 0, 0], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11740 : ExponentCode := normalNode10350

theorem canonicalSound11740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11740.moment H = canonicalOutput11740.moment H :=
  canonical_of_padded canonicalInput11740 canonicalOutput11740 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput11741 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11741 : ExponentCode := normalNode4898

theorem canonicalSound11741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11741.moment H = canonicalOutput11741.moment H :=
  canonical_of_padded canonicalInput11741 canonicalOutput11741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11742 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput11742 : ExponentCode := normalNode4898

theorem canonicalSound11742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11742.moment H = canonicalOutput11742.moment H :=
  canonical_of_padded canonicalInput11742 canonicalOutput11742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11743 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput11743 : ExponentCode := normalNode4891

theorem canonicalSound11743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11743.moment H = canonicalOutput11743.moment H :=
  canonical_of_padded canonicalInput11743 canonicalOutput11743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11744 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput11744 : ExponentCode := normalNode11202

theorem canonicalSound11744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11744.moment H = canonicalOutput11744.moment H :=
  canonical_of_padded canonicalInput11744 canonicalOutput11744 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11745 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![1, -1, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput11745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1342⟩

theorem canonicalSound11745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11745.moment H = canonicalOutput11745.moment H :=
  canonical_of_padded canonicalInput11745 canonicalOutput11745 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11746 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput11746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound11746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11746.moment H = canonicalOutput11746.moment H :=
  canonical_of_padded canonicalInput11746 canonicalOutput11746 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11747 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11747 : ExponentCode := normalNode10350

theorem canonicalSound11747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11747.moment H = canonicalOutput11747.moment H :=
  canonical_of_padded canonicalInput11747 canonicalOutput11747 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11748 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput11748 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code191

theorem canonicalSound11748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11748.moment H = canonicalOutput11748.moment H :=
  canonical_of_padded canonicalInput11748 canonicalOutput11748 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11749 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput11749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound11749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11749.moment H = canonicalOutput11749.moment H :=
  canonical_of_padded canonicalInput11749 canonicalOutput11749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11750 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput11750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound11750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11750.moment H = canonicalOutput11750.moment H :=
  canonical_of_padded canonicalInput11750 canonicalOutput11750 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput11751 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, -2, -2, 2]]⟩

def canonicalOutput11751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound11751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11751.moment H = canonicalOutput11751.moment H :=
  canonical_of_padded canonicalInput11751 canonicalOutput11751 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput11752 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput11752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩

theorem canonicalSound11752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11752.moment H = canonicalOutput11752.moment H :=
  canonical_of_padded canonicalInput11752 canonicalOutput11752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11753 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput11753 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound11753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11753.moment H = canonicalOutput11753.moment H :=
  canonical_of_padded canonicalInput11753 canonicalOutput11753 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11754 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![1, -3, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput11754 : ExponentCode := normalNode7991

theorem canonicalSound11754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11754.moment H = canonicalOutput11754.moment H :=
  canonical_of_padded canonicalInput11754 canonicalOutput11754 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11755 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput11755 : ExponentCode := normalNode9978

theorem canonicalSound11755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11755.moment H = canonicalOutput11755.moment H :=
  canonical_of_padded canonicalInput11755 canonicalOutput11755 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11756 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput11756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound11756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11756.moment H = canonicalOutput11756.moment H :=
  canonical_of_padded canonicalInput11756 canonicalOutput11756 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11757 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput11757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩

theorem canonicalSound11757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11757.moment H = canonicalOutput11757.moment H :=
  canonical_of_padded canonicalInput11757 canonicalOutput11757 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput11758 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput11758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound11758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11758.moment H = canonicalOutput11758.moment H :=
  canonical_of_padded canonicalInput11758 canonicalOutput11758 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput11759 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 0, 0, 0], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput11759 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound11759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11759.moment H = canonicalOutput11759.moment H :=
  canonical_of_padded canonicalInput11759 canonicalOutput11759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11760 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -3, -2, 3]]⟩

def canonicalOutput11760 : ExponentCode := normalNode7972

theorem canonicalSound11760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11760.moment H = canonicalOutput11760.moment H :=
  canonical_of_padded canonicalInput11760 canonicalOutput11760 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11761 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput11761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound11761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11761.moment H = canonicalOutput11761.moment H :=
  canonical_of_padded canonicalInput11761 canonicalOutput11761 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11762 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput11762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩

theorem canonicalSound11762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11762.moment H = canonicalOutput11762.moment H :=
  canonical_of_padded canonicalInput11762 canonicalOutput11762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput11763 : ExponentCode := ⟨5, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput11763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound11763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11763.moment H = canonicalOutput11763.moment H :=
  canonical_of_padded canonicalInput11763 canonicalOutput11763 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput11764 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -3, -2, 3]]⟩

def canonicalOutput11764 : ExponentCode := normalNode7972

theorem canonicalSound11764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11764.moment H = canonicalOutput11764.moment H :=
  canonical_of_padded canonicalInput11764 canonicalOutput11764 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11765 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -3, -3, 4]]⟩

def canonicalOutput11765 : ExponentCode := normalNode7439

theorem canonicalSound11765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11765.moment H = canonicalOutput11765.moment H :=
  canonical_of_padded canonicalInput11765 canonicalOutput11765 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11766 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -3, -2, 4], ![1, 1, -1, -1]]⟩

def canonicalOutput11766 : ExponentCode := normalNode7425

theorem canonicalSound11766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11766.moment H = canonicalOutput11766.moment H :=
  canonical_of_padded canonicalInput11766 canonicalOutput11766 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11767 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 1, -2, 0]]⟩

def canonicalOutput11767 : ExponentCode := normalNode7905

theorem canonicalSound11767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11767.moment H = canonicalOutput11767.moment H :=
  canonical_of_padded canonicalInput11767 canonicalOutput11767 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11768 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput11768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩

theorem canonicalSound11768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11768.moment H = canonicalOutput11768.moment H :=
  canonical_of_padded canonicalInput11768 canonicalOutput11768 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11769 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput11769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound11769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11769.moment H = canonicalOutput11769.moment H :=
  canonical_of_padded canonicalInput11769 canonicalOutput11769 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11770 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput11770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩

theorem canonicalSound11770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11770.moment H = canonicalOutput11770.moment H :=
  canonical_of_padded canonicalInput11770 canonicalOutput11770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11771 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput11771 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound11771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11771.moment H = canonicalOutput11771.moment H :=
  canonical_of_padded canonicalInput11771 canonicalOutput11771 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11772 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, -2, 2]]⟩

def canonicalOutput11772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound11772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11772.moment H = canonicalOutput11772.moment H :=
  canonical_of_padded canonicalInput11772 canonicalOutput11772 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11773 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 2, 0, -2], ![1, -3, -2, 4], ![1, 0, -1, 0]]⟩

def canonicalOutput11773 : ExponentCode := normalNode10880

theorem canonicalSound11773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11773.moment H = canonicalOutput11773.moment H :=
  canonical_of_padded canonicalInput11773 canonicalOutput11773 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11774 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 2, 0, -2], ![1, -3, -1, 3], ![1, 0, -2, 1]]⟩

def canonicalOutput11774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code774

theorem canonicalSound11774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11774.moment H = canonicalOutput11774.moment H :=
  canonical_of_padded canonicalInput11774 canonicalOutput11774 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11775 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 2, 0, -2], ![1, -2, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput11775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1087

theorem canonicalSound11775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11775.moment H = canonicalOutput11775.moment H :=
  canonical_of_padded canonicalInput11775 canonicalOutput11775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
