import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput576 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -4, 1, 1], ![1, 4, -3, -2]]⟩

def canonicalOutput576 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code92

theorem canonicalSound576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput576.moment H = canonicalOutput576.moment H :=
  canonical_of_padded canonicalInput576 canonicalOutput576 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput577 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -3, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput577 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput577.moment H = canonicalOutput577.moment H :=
  canonical_of_padded canonicalInput577 canonicalOutput577 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput578 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -2, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput578 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput578.moment H = canonicalOutput578.moment H :=
  canonical_of_padded canonicalInput578 canonicalOutput578 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput579 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -2, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput579 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput579.moment H = canonicalOutput579.moment H :=
  canonical_of_padded canonicalInput579 canonicalOutput579 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput580 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -2, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput580 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput580.moment H = canonicalOutput580.moment H :=
  canonical_of_padded canonicalInput580 canonicalOutput580 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput581 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![2, -2, 2, -2], ![1, 2, -4, 1]]⟩

def canonicalOutput581 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput581.moment H = canonicalOutput581.moment H :=
  canonical_of_padded canonicalInput581 canonicalOutput581 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput582 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![3, -3, 0, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput582 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput582.moment H = canonicalOutput582.moment H :=
  canonical_of_padded canonicalInput582 canonicalOutput582 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput583 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![-1, 2, -1], ![0, 1, -1], ![1, -2, 1], ![3, -1, -2]]⟩

def canonicalOutput583 : ExponentCode := normalNode5555

theorem canonicalSound583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput583.moment H = canonicalOutput583.moment H :=
  canonical_of_padded canonicalInput583 canonicalOutput583 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput584 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![-1, 2, -1], ![1, -2, 1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput584 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput584.moment H = canonicalOutput584.moment H :=
  canonical_of_padded canonicalInput584 canonicalOutput584 (by decide) (by decide)
    ⟨false, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput585 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -2, 2], ![0, 1, -1], ![3, 1, -4]]⟩

def canonicalOutput585 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput585.moment H = canonicalOutput585.moment H :=
  canonical_of_padded canonicalInput585 canonicalOutput585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput586 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, -2, 2], ![1, 0, -1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput586 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node309⟩

theorem canonicalSound586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput586.moment H = canonicalOutput586.moment H :=
  canonical_of_padded canonicalInput586 canonicalOutput586 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput587 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -2, 2], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput587 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code54

theorem canonicalSound587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput587.moment H = canonicalOutput587.moment H :=
  canonical_of_padded canonicalInput587 canonicalOutput587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput588 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![2, 3, -5]]⟩

def canonicalOutput588 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node304⟩

theorem canonicalSound588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput588.moment H = canonicalOutput588.moment H :=
  canonical_of_padded canonicalInput588 canonicalOutput588 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput589 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, -1, 1], ![1, -2, 1], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput589 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node310⟩

theorem canonicalSound589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput589.moment H = canonicalOutput589.moment H :=
  canonical_of_padded canonicalInput589 canonicalOutput589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput590 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -1, 1], ![1, -2, 1], ![2, 3, -5]]⟩

def canonicalOutput590 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput590.moment H = canonicalOutput590.moment H :=
  canonical_of_padded canonicalInput590 canonicalOutput590 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput591 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, -1, 1], ![1, -1, 0], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput591 : ExponentCode := normalNode164

theorem canonicalSound591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput591.moment H = canonicalOutput591.moment H :=
  canonical_of_padded canonicalInput591 canonicalOutput591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput592 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput592 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1132⟩

theorem canonicalSound592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput592.moment H = canonicalOutput592.moment H :=
  canonical_of_padded canonicalInput592 canonicalOutput592 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput593 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, -1, 1], ![1, 3, -4], ![2, -2, 0]]⟩

def canonicalOutput593 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput593.moment H = canonicalOutput593.moment H :=
  canonical_of_padded canonicalInput593 canonicalOutput593 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput594 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 0, 0], ![0, 1, -1], ![0, 1, -1], ![3, -2, -1]]⟩

def canonicalOutput594 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput594.moment H = canonicalOutput594.moment H :=
  canonical_of_padded canonicalInput594 canonicalOutput594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput595 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 0, 0], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput595 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput595.moment H = canonicalOutput595.moment H :=
  canonical_of_padded canonicalInput595 canonicalOutput595 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput596 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 1, -1], ![0, 0, 0], ![0, 1, -1], ![3, -2, -1]]⟩

def canonicalOutput596 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput596.moment H = canonicalOutput596.moment H :=
  canonical_of_padded canonicalInput596 canonicalOutput596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput597 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 1, -1], ![0, 1, -1], ![0, 0, 0], ![3, -2, -1]]⟩

def canonicalOutput597 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node188⟩

theorem canonicalSound597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput597.moment H = canonicalOutput597.moment H :=
  canonical_of_padded canonicalInput597 canonicalOutput597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput598 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 2, -2], ![0, 1, -1], ![1, 1, -2], ![2, -4, 2]]⟩

def canonicalOutput598 : ExponentCode := normalNode169

theorem canonicalSound598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput598.moment H = canonicalOutput598.moment H :=
  canonical_of_padded canonicalInput598 canonicalOutput598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput599 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 2, -2], ![1, -1, 0], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput599 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node351⟩

theorem canonicalSound599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput599.moment H = canonicalOutput599.moment H :=
  canonical_of_padded canonicalInput599 canonicalOutput599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput600 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 4, -4], ![1, -1, 0], ![1, -2, 1], ![1, -1, 0]]⟩

def canonicalOutput600 : ExponentCode := normalNode173

theorem canonicalSound600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput600.moment H = canonicalOutput600.moment H :=
  canonical_of_padded canonicalInput600 canonicalOutput600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput601 : ExponentCode := ⟨5, 3, ![![-3, 0, 3], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput601 : ExponentCode := normalNode173

theorem canonicalSound601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput601.moment H = canonicalOutput601.moment H :=
  canonical_of_padded canonicalInput601 canonicalOutput601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput602 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![0, 4, -4], ![2, -3, 1], ![1, -1, 0]]⟩

def canonicalOutput602 : ExponentCode := normalNode174

theorem canonicalSound602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput602.moment H = canonicalOutput602.moment H :=
  canonical_of_padded canonicalInput602 canonicalOutput602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput603 : ExponentCode := ⟨3, 3, ![![-3, 0, 3], ![0, 4, -4], ![3, -4, 1]]⟩

def canonicalOutput603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code44

theorem canonicalSound603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput603.moment H = canonicalOutput603.moment H :=
  canonical_of_padded canonicalInput603 canonicalOutput603 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput604 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![1, -1, 0], ![1, -2, 1], ![1, 3, -4]]⟩

def canonicalOutput604 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput604.moment H = canonicalOutput604.moment H :=
  canonical_of_padded canonicalInput604 canonicalOutput604 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput605 : ExponentCode := ⟨4, 3, ![![-3, 0, 3], ![1, 3, -4], ![1, -2, 1], ![1, -1, 0]]⟩

def canonicalOutput605 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput605.moment H = canonicalOutput605.moment H :=
  canonical_of_padded canonicalInput605 canonicalOutput605 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput606 : ExponentCode := ⟨3, 3, ![![-3, 0, 3], ![1, 4, -5], ![2, -4, 2]]⟩

def canonicalOutput606 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code27

theorem canonicalSound606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput606.moment H = canonicalOutput606.moment H :=
  canonical_of_padded canonicalInput606 canonicalOutput606 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput607 : ExponentCode := ⟨3, 3, ![![-3, 0, 3], ![2, -4, 2], ![1, 4, -5]]⟩

def canonicalOutput607 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code27

theorem canonicalSound607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput607.moment H = canonicalOutput607.moment H :=
  canonical_of_padded canonicalInput607 canonicalOutput607 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput608 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![-2, 2, -2, 2], ![5, -2, -1, -2]]⟩

def canonicalOutput608 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code22

theorem canonicalSound608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput608.moment H = canonicalOutput608.moment H :=
  canonical_of_padded canonicalInput608 canonicalOutput608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput609 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![-1, 2, -3, 2], ![4, -2, 0, -2]]⟩

def canonicalOutput609 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput609.moment H = canonicalOutput609.moment H :=
  canonical_of_padded canonicalInput609 canonicalOutput609 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput610 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![-1, 3, -1, -1], ![4, -3, -2, 1]]⟩

def canonicalOutput610 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node79⟩

theorem canonicalSound610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput610.moment H = canonicalOutput610.moment H :=
  canonical_of_padded canonicalInput610 canonicalOutput610 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput611 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![0, 2, -4, 2], ![3, -2, 1, -2]]⟩

def canonicalOutput611 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code36

theorem canonicalSound611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput611.moment H = canonicalOutput611.moment H :=
  canonical_of_padded canonicalInput611 canonicalOutput611 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput612 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![0, 2, -3, 1], ![3, -2, 0, -1]]⟩

def canonicalOutput612 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput612.moment H = canonicalOutput612.moment H :=
  canonical_of_padded canonicalInput612 canonicalOutput612 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput613 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![0, 3, -2, -1], ![3, -3, -1, 1]]⟩

def canonicalOutput613 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput613.moment H = canonicalOutput613.moment H :=
  canonical_of_padded canonicalInput613 canonicalOutput613 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput614 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![1, 2, -4, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput614 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput614.moment H = canonicalOutput614.moment H :=
  canonical_of_padded canonicalInput614 canonicalOutput614 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput615 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![1, 2, -2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput615 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput615.moment H = canonicalOutput615.moment H :=
  canonical_of_padded canonicalInput615 canonicalOutput615 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput616 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![2, -3, 0, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput616 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput616.moment H = canonicalOutput616.moment H :=
  canonical_of_padded canonicalInput616 canonicalOutput616 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput617 : ExponentCode := ⟨3, 4, ![![-3, 0, 3, 0], ![2, -2, 1, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput617 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput617.moment H = canonicalOutput617.moment H :=
  canonical_of_padded canonicalInput617 canonicalOutput617 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput618 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput618 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput618.moment H = canonicalOutput618.moment H :=
  canonical_of_padded canonicalInput618 canonicalOutput618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput619 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput619 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput619.moment H = canonicalOutput619.moment H :=
  canonical_of_padded canonicalInput619 canonicalOutput619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput620 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput620 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput620.moment H = canonicalOutput620.moment H :=
  canonical_of_padded canonicalInput620 canonicalOutput620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput621 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput621 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput621.moment H = canonicalOutput621.moment H :=
  canonical_of_padded canonicalInput621 canonicalOutput621 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput622 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput622 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput622.moment H = canonicalOutput622.moment H :=
  canonical_of_padded canonicalInput622 canonicalOutput622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput623 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput623 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput623.moment H = canonicalOutput623.moment H :=
  canonical_of_padded canonicalInput623 canonicalOutput623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput624 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput624 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput624.moment H = canonicalOutput624.moment H :=
  canonical_of_padded canonicalInput624 canonicalOutput624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation349, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput625 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput625 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput625.moment H = canonicalOutput625.moment H :=
  canonical_of_padded canonicalInput625 canonicalOutput625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput626 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput626 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput626.moment H = canonicalOutput626.moment H :=
  canonical_of_padded canonicalInput626 canonicalOutput626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput627 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput627 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput627.moment H = canonicalOutput627.moment H :=
  canonical_of_padded canonicalInput627 canonicalOutput627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput628 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput628 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput628.moment H = canonicalOutput628.moment H :=
  canonical_of_padded canonicalInput628 canonicalOutput628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput629 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput629 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput629.moment H = canonicalOutput629.moment H :=
  canonical_of_padded canonicalInput629 canonicalOutput629 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput630 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput630 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput630.moment H = canonicalOutput630.moment H :=
  canonical_of_padded canonicalInput630 canonicalOutput630 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput631 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput631 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput631.moment H = canonicalOutput631.moment H :=
  canonical_of_padded canonicalInput631 canonicalOutput631 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput632 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput632 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput632.moment H = canonicalOutput632.moment H :=
  canonical_of_padded canonicalInput632 canonicalOutput632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput633 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput633 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput633.moment H = canonicalOutput633.moment H :=
  canonical_of_padded canonicalInput633 canonicalOutput633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput634 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput634 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput634.moment H = canonicalOutput634.moment H :=
  canonical_of_padded canonicalInput634 canonicalOutput634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput635 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput635 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput635.moment H = canonicalOutput635.moment H :=
  canonical_of_padded canonicalInput635 canonicalOutput635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput636 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput636 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput636.moment H = canonicalOutput636.moment H :=
  canonical_of_padded canonicalInput636 canonicalOutput636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput637 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput637 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput637.moment H = canonicalOutput637.moment H :=
  canonical_of_padded canonicalInput637 canonicalOutput637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput638 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput638 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput638.moment H = canonicalOutput638.moment H :=
  canonical_of_padded canonicalInput638 canonicalOutput638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput639 : ExponentCode := ⟨6, 6, ![![-3, 0, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput639 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput639.moment H = canonicalOutput639.moment H :=
  canonical_of_padded canonicalInput639 canonicalOutput639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
