import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound18
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26624 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![1, 1, -2]]⟩

def canonicalOutput26624 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2099⟩

theorem canonicalSound26624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26624.moment H = canonicalOutput26624.moment H :=
  canonical_of_padded canonicalInput26624 canonicalOutput26624 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26625 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 0, -1], ![-1, 3, -2]]⟩

def canonicalOutput26625 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1432⟩

theorem canonicalSound26625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26625.moment H = canonicalOutput26625.moment H :=
  canonical_of_padded canonicalInput26625 canonicalOutput26625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation91, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26626 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![-1, 2, -1]]⟩

def canonicalOutput26626 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2099⟩

theorem canonicalSound26626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26626.moment H = canonicalOutput26626.moment H :=
  canonical_of_padded canonicalInput26626 canonicalOutput26626 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26627 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 1, 1], ![-1, -1, 2], ![1, 3, -4]]⟩

def canonicalOutput26627 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2294⟩

theorem canonicalSound26627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26627.moment H = canonicalOutput26627.moment H :=
  canonical_of_padded canonicalInput26627 canonicalOutput26627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26628 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![0, -1, 1], ![-2, 0, 2], ![0, 4, -4]]⟩

def canonicalOutput26628 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2134⟩

theorem canonicalSound26628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26628.moment H = canonicalOutput26628.moment H :=
  canonical_of_padded canonicalInput26628 canonicalOutput26628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26629 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![0, 0, 0], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26629 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound26629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26629.moment H = canonicalOutput26629.moment H :=
  canonical_of_padded canonicalInput26629 canonicalOutput26629 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26630 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![-3, 0, 3], ![0, 4, -4]]⟩

def canonicalOutput26630 : ExponentCode := normalNode163

theorem canonicalSound26630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26630.moment H = canonicalOutput26630.moment H :=
  canonical_of_padded canonicalInput26630 canonicalOutput26630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26631 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-3, -1, 4], ![0, 4, -4]]⟩

def canonicalOutput26631 : ExponentCode := normalNode119

theorem canonicalSound26631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26631.moment H = canonicalOutput26631.moment H :=
  canonical_of_padded canonicalInput26631 canonicalOutput26631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26632 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-2, -1, 3], ![2, -1, -1], ![-2, 4, -2]]⟩

def canonicalOutput26632 : ExponentCode := normalNode22

theorem canonicalSound26632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26632.moment H = canonicalOutput26632.moment H :=
  canonical_of_padded canonicalInput26632 canonicalOutput26632 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26633 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-2, 0, 2], ![-1, -1, 2], ![1, 3, -4]]⟩

def canonicalOutput26633 : ExponentCode := normalNode117

theorem canonicalSound26633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26633.moment H = canonicalOutput26633.moment H :=
  canonical_of_padded canonicalInput26633 canonicalOutput26633 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26634 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -2, 3], ![1, 3, -4]]⟩

def canonicalOutput26634 : ExponentCode := normalNode5552

theorem canonicalSound26634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26634.moment H = canonicalOutput26634.moment H :=
  canonical_of_padded canonicalInput26634 canonicalOutput26634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26635 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 2, -3]]⟩

def canonicalOutput26635 : ExponentCode := normalNode3001

theorem canonicalSound26635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26635.moment H = canonicalOutput26635.moment H :=
  canonical_of_padded canonicalInput26635 canonicalOutput26635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26636 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![1, -1, 0], ![-2, 4, -2]]⟩

def canonicalOutput26636 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1530⟩

theorem canonicalSound26636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26636.moment H = canonicalOutput26636.moment H :=
  canonical_of_padded canonicalInput26636 canonicalOutput26636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26637 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![2, -1, -1], ![-3, 4, -1]]⟩

def canonicalOutput26637 : ExponentCode := normalNode5568

theorem canonicalSound26637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26637.moment H = canonicalOutput26637.moment H :=
  canonical_of_padded canonicalInput26637 canonicalOutput26637 (by decide) (by decide)
    ⟨false, true, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26638 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![0, 0, 0], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput26638 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound26638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26638.moment H = canonicalOutput26638.moment H :=
  canonical_of_padded canonicalInput26638 canonicalOutput26638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation174, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26639 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, -1, 0], ![-2, -1, 3], ![-1, 4, -3]]⟩

def canonicalOutput26639 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1869⟩

theorem canonicalSound26639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26639.moment H = canonicalOutput26639.moment H :=
  canonical_of_padded canonicalInput26639 canonicalOutput26639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26640 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, -2, 4], ![-1, 4, -3]]⟩

def canonicalOutput26640 : ExponentCode := normalNode979

theorem canonicalSound26640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26640.moment H = canonicalOutput26640.moment H :=
  canonical_of_padded canonicalInput26640 canonicalOutput26640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26641 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![-1, 3, -2]]⟩

def canonicalOutput26641 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1425⟩

theorem canonicalSound26641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26641.moment H = canonicalOutput26641.moment H :=
  canonical_of_padded canonicalInput26641 canonicalOutput26641 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26642 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![0, 0, 0], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput26642 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound26642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26642.moment H = canonicalOutput26642.moment H :=
  canonical_of_padded canonicalInput26642 canonicalOutput26642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation182, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26643 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -2, 3], ![-2, 4, -2]]⟩

def canonicalOutput26643 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1535⟩

theorem canonicalSound26643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26643.moment H = canonicalOutput26643.moment H :=
  canonical_of_padded canonicalInput26643 canonicalOutput26643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26644 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![0, 0, 0], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput26644 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound26644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26644.moment H = canonicalOutput26644.moment H :=
  canonical_of_padded canonicalInput26644 canonicalOutput26644 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26645 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, -1, 0], ![-1, -2, 3], ![-2, 4, -2]]⟩

def canonicalOutput26645 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1535⟩

theorem canonicalSound26645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26645.moment H = canonicalOutput26645.moment H :=
  canonical_of_padded canonicalInput26645 canonicalOutput26645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26646 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-1, -3, 4], ![-2, 4, -2]]⟩

def canonicalOutput26646 : ExponentCode := normalNode5969

theorem canonicalSound26646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26646.moment H = canonicalOutput26646.moment H :=
  canonical_of_padded canonicalInput26646 canonicalOutput26646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26647 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-1, -2, 3], ![-2, 3, -1]]⟩

def canonicalOutput26647 : ExponentCode := normalNode243

theorem canonicalSound26647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26647.moment H = canonicalOutput26647.moment H :=
  canonical_of_padded canonicalInput26647 canonicalOutput26647 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26648 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-3, 4, -1]]⟩

def canonicalOutput26648 : ExponentCode := normalNode131

theorem canonicalSound26648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26648.moment H = canonicalOutput26648.moment H :=
  canonical_of_padded canonicalInput26648 canonicalOutput26648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26649 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![-1, 0, 0, 1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput26649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2846⟩

theorem canonicalSound26649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26649.moment H = canonicalOutput26649.moment H :=
  canonical_of_padded canonicalInput26649 canonicalOutput26649 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput26650 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput26650 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩

theorem canonicalSound26650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26650.moment H = canonicalOutput26650.moment H :=
  canonical_of_padded canonicalInput26650 canonicalOutput26650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26651 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 2, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound26651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26651.moment H = canonicalOutput26651.moment H :=
  canonical_of_padded canonicalInput26651 canonicalOutput26651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26652 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![0, 0, 0, 1, -1], ![-1, 1, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput26652 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound26652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26652.moment H = canonicalOutput26652.moment H :=
  canonical_of_padded canonicalInput26652 canonicalOutput26652 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput26653 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput26653 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1349⟩

theorem canonicalSound26653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26653.moment H = canonicalOutput26653.moment H :=
  canonical_of_padded canonicalInput26653 canonicalOutput26653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26654 : ExponentCode := ⟨4, 5, ![![0, -1, 1, -1, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26654 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound26654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26654.moment H = canonicalOutput26654.moment H :=
  canonical_of_padded canonicalInput26654 canonicalOutput26654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26655 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-4, -1, 1, 4], ![4, 2, -2, -4]]⟩

def canonicalOutput26655 : ExponentCode := normalNode9521

theorem canonicalSound26655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26655.moment H = canonicalOutput26655.moment H :=
  canonical_of_padded canonicalInput26655 canonicalOutput26655 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26656 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-4, 2, -2, 4], ![4, -1, 1, -4]]⟩

def canonicalOutput26656 : ExponentCode := normalNode9521

theorem canonicalSound26656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26656.moment H = canonicalOutput26656.moment H :=
  canonical_of_padded canonicalInput26656 canonicalOutput26656 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26657 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-4, 3, -2, 3], ![4, -2, 1, -3]]⟩

def canonicalOutput26657 : ExponentCode := normalNode7139

theorem canonicalSound26657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26657.moment H = canonicalOutput26657.moment H :=
  canonical_of_padded canonicalInput26657 canonicalOutput26657 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26658 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-4, 4, -2, 2], ![4, -3, 1, -2]]⟩

def canonicalOutput26658 : ExponentCode := normalNode6285

theorem canonicalSound26658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26658.moment H = canonicalOutput26658.moment H :=
  canonical_of_padded canonicalInput26658 canonicalOutput26658 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26659 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-4, 4, 1, -1], ![4, -3, -2, 1]]⟩

def canonicalOutput26659 : ExponentCode := normalNode6292

theorem canonicalSound26659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26659.moment H = canonicalOutput26659.moment H :=
  canonical_of_padded canonicalInput26659 canonicalOutput26659 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26660 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-3, -1, 2, 2], ![3, 2, -3, -2]]⟩

def canonicalOutput26660 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound26660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26660.moment H = canonicalOutput26660.moment H :=
  canonical_of_padded canonicalInput26660 canonicalOutput26660 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26661 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-3, -1, 3, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput26661 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node251⟩

theorem canonicalSound26661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26661.moment H = canonicalOutput26661.moment H :=
  canonical_of_padded canonicalInput26661 canonicalOutput26661 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26662 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-3, 2, 2, -1], ![3, -1, -3, 1]]⟩

def canonicalOutput26662 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound26662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26662.moment H = canonicalOutput26662.moment H :=
  canonical_of_padded canonicalInput26662 canonicalOutput26662 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26663 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-3, 4, -2, 1], ![3, -3, 1, -1]]⟩

def canonicalOutput26663 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node251⟩

theorem canonicalSound26663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26663.moment H = canonicalOutput26663.moment H :=
  canonical_of_padded canonicalInput26663 canonicalOutput26663 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26664 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-3, 4, 1, -2], ![3, -3, -2, 2]]⟩

def canonicalOutput26664 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩

theorem canonicalSound26664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26664.moment H = canonicalOutput26664.moment H :=
  canonical_of_padded canonicalInput26664 canonicalOutput26664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26665 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-2, -2, 2, 2], ![2, 3, -3, -2]]⟩

def canonicalOutput26665 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound26665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26665.moment H = canonicalOutput26665.moment H :=
  canonical_of_padded canonicalInput26665 canonicalOutput26665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26666 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-2, -2, 3, 1], ![2, 3, -4, -1]]⟩

def canonicalOutput26666 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node250⟩

theorem canonicalSound26666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26666.moment H = canonicalOutput26666.moment H :=
  canonical_of_padded canonicalInput26666 canonicalOutput26666 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26667 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-2, 2, 2, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput26667 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound26667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26667.moment H = canonicalOutput26667.moment H :=
  canonical_of_padded canonicalInput26667 canonicalOutput26667 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26668 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-1, -3, 3, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput26668 : ExponentCode := normalNode6289

theorem canonicalSound26668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26668.moment H = canonicalOutput26668.moment H :=
  canonical_of_padded canonicalInput26668 canonicalOutput26668 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26669 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-1, -2, 4, -1], ![1, 3, -5, 1]]⟩

def canonicalOutput26669 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node237⟩

theorem canonicalSound26669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26669.moment H = canonicalOutput26669.moment H :=
  canonical_of_padded canonicalInput26669 canonicalOutput26669 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26670 : ExponentCode := ⟨3, 4, ![![0, -1, 1, 0], ![-1, -1, 4, -2], ![1, 2, -5, 2]]⟩

def canonicalOutput26670 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node238⟩

theorem canonicalSound26670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26670.moment H = canonicalOutput26670.moment H :=
  canonical_of_padded canonicalInput26670 canonicalOutput26670 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26671 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26671 : ExponentCode := normalNode9694

theorem canonicalSound26671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26671.moment H = canonicalOutput26671.moment H :=
  canonical_of_padded canonicalInput26671 canonicalOutput26671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26672 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput26672 : ExponentCode := normalNode9697

theorem canonicalSound26672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26672.moment H = canonicalOutput26672.moment H :=
  canonical_of_padded canonicalInput26672 canonicalOutput26672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26673 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput26673 : ExponentCode := normalNode9698

theorem canonicalSound26673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26673.moment H = canonicalOutput26673.moment H :=
  canonical_of_padded canonicalInput26673 canonicalOutput26673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26674 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26674 : ExponentCode := normalNode9700

theorem canonicalSound26674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26674.moment H = canonicalOutput26674.moment H :=
  canonical_of_padded canonicalInput26674 canonicalOutput26674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26675 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput26675 : ExponentCode := normalNode9706

theorem canonicalSound26675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26675.moment H = canonicalOutput26675.moment H :=
  canonical_of_padded canonicalInput26675 canonicalOutput26675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26676 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput26676 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound26676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26676.moment H = canonicalOutput26676.moment H :=
  canonical_of_padded canonicalInput26676 canonicalOutput26676 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26677 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26677 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound26677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26677.moment H = canonicalOutput26677.moment H :=
  canonical_of_padded canonicalInput26677 canonicalOutput26677 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26678 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput26678 : ExponentCode := normalNode9914

theorem canonicalSound26678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26678.moment H = canonicalOutput26678.moment H :=
  canonical_of_padded canonicalInput26678 canonicalOutput26678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1204⟩

def canonicalOutput26679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound26679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26679.moment H = canonicalOutput26679.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1204 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1204
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1204 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1204 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1204 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1204 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1204)

def canonicalInput26680 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput26680 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1082⟩

theorem canonicalSound26680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26680.moment H = canonicalOutput26680.moment H :=
  canonical_of_padded canonicalInput26680 canonicalOutput26680 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26681 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput26681 : ExponentCode := normalNode1241

theorem canonicalSound26681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26681.moment H = canonicalOutput26681.moment H :=
  canonical_of_padded canonicalInput26681 canonicalOutput26681 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26682 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput26682 : ExponentCode := normalNode10286

theorem canonicalSound26682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26682.moment H = canonicalOutput26682.moment H :=
  canonical_of_padded canonicalInput26682 canonicalOutput26682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26683 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26683 : ExponentCode := normalNode1245

theorem canonicalSound26683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26683.moment H = canonicalOutput26683.moment H :=
  canonical_of_padded canonicalInput26683 canonicalOutput26683 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26684 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26684 : ExponentCode := normalNode7284

theorem canonicalSound26684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26684.moment H = canonicalOutput26684.moment H :=
  canonical_of_padded canonicalInput26684 canonicalOutput26684 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26685 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26685 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound26685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26685.moment H = canonicalOutput26685.moment H :=
  canonical_of_padded canonicalInput26685 canonicalOutput26685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26686 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput26686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound26686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26686.moment H = canonicalOutput26686.moment H :=
  canonical_of_padded canonicalInput26686 canonicalOutput26686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26687 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![-1, 0, 2, -1], ![0, 3, 0, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput26687 : ExponentCode := normalNode6807

theorem canonicalSound26687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26687.moment H = canonicalOutput26687.moment H :=
  canonical_of_padded canonicalInput26687 canonicalOutput26687 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
