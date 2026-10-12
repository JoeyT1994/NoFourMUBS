import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17536 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17536 : ExponentCode := normalNode4311

theorem canonicalSound17536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17536.moment H = canonicalOutput17536.moment H :=
  canonical_of_padded canonicalInput17536 canonicalOutput17536 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17537 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17537 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound17537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17537.moment H = canonicalOutput17537.moment H :=
  canonical_of_padded canonicalInput17537 canonicalOutput17537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17538 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![1, 0, 1, -1, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput17538 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound17538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17538.moment H = canonicalOutput17538.moment H :=
  canonical_of_padded canonicalInput17538 canonicalOutput17538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17539 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![1, 0, 1, 0, -2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17539 : ExponentCode := normalNode4310

theorem canonicalSound17539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17539.moment H = canonicalOutput17539.moment H :=
  canonical_of_padded canonicalInput17539 canonicalOutput17539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17540 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, 1, -1], ![-1, 0, 1, -2, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput17540 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code664

theorem canonicalSound17540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17540.moment H = canonicalOutput17540.moment H :=
  canonical_of_padded canonicalInput17540 canonicalOutput17540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17541 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, 1, -1], ![0, 0, 1, -3, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17541 : ExponentCode := normalNode1865

theorem canonicalSound17541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17541.moment H = canonicalOutput17541.moment H :=
  canonical_of_padded canonicalInput17541 canonicalOutput17541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17542 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17542 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound17542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17542.moment H = canonicalOutput17542.moment H :=
  canonical_of_padded canonicalInput17542 canonicalOutput17542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17543 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, 1, -1], ![1, 0, 1, -3, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput17543 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound17543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17543.moment H = canonicalOutput17543.moment H :=
  canonical_of_padded canonicalInput17543 canonicalOutput17543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17544 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17544 : ExponentCode := normalNode8335

theorem canonicalSound17544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17544.moment H = canonicalOutput17544.moment H :=
  canonical_of_padded canonicalInput17544 canonicalOutput17544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput17545 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17545 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node670⟩

theorem canonicalSound17545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17545.moment H = canonicalOutput17545.moment H :=
  canonical_of_padded canonicalInput17545 canonicalOutput17545 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17546 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-2, 2, -1, -1, 2], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput17546 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code989

theorem canonicalSound17546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17546.moment H = canonicalOutput17546.moment H :=
  canonical_of_padded canonicalInput17546 canonicalOutput17546 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17547 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-1, 1, -2, 0, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput17547 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound17547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17547.moment H = canonicalOutput17547.moment H :=
  canonical_of_padded canonicalInput17547 canonicalOutput17547 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17548 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-1, 1, -1, -1, 2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput17548 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound17548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17548.moment H = canonicalOutput17548.moment H :=
  canonical_of_padded canonicalInput17548 canonicalOutput17548 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17549 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-1, 1, 0, -2, 2], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput17549 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code899

theorem canonicalSound17549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17549.moment H = canonicalOutput17549.moment H :=
  canonical_of_padded canonicalInput17549 canonicalOutput17549 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17550 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-1, 2, -1, -1, 1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput17550 : ExponentCode := normalNode4498

theorem canonicalSound17550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17550.moment H = canonicalOutput17550.moment H :=
  canonical_of_padded canonicalInput17550 canonicalOutput17550 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17551 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![-1, 2, 0, 0, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17551 : ExponentCode := normalNode4090

theorem canonicalSound17551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17551.moment H = canonicalOutput17551.moment H :=
  canonical_of_padded canonicalInput17551 canonicalOutput17551 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17552 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, -3, 0, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17552 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1961⟩

theorem canonicalSound17552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17552.moment H = canonicalOutput17552.moment H :=
  canonical_of_padded canonicalInput17552 canonicalOutput17552 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17553 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17553 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound17553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17553.moment H = canonicalOutput17553.moment H :=
  canonical_of_padded canonicalInput17553 canonicalOutput17553 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17554 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput17554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2080⟩

theorem canonicalSound17554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17554.moment H = canonicalOutput17554.moment H :=
  canonical_of_padded canonicalInput17554 canonicalOutput17554 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17555 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, -1, -1, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17555 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound17555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17555.moment H = canonicalOutput17555.moment H :=
  canonical_of_padded canonicalInput17555 canonicalOutput17555 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17556 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, -3, 2], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput17556 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2028⟩

theorem canonicalSound17556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17556.moment H = canonicalOutput17556.moment H :=
  canonical_of_padded canonicalInput17556 canonicalOutput17556 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17557 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17557 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound17557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17557.moment H = canonicalOutput17557.moment H :=
  canonical_of_padded canonicalInput17557 canonicalOutput17557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17558 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17558 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound17558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17558.moment H = canonicalOutput17558.moment H :=
  canonical_of_padded canonicalInput17558 canonicalOutput17558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17559 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput17559 : ExponentCode := normalNode3888

theorem canonicalSound17559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17559.moment H = canonicalOutput17559.moment H :=
  canonical_of_padded canonicalInput17559 canonicalOutput17559 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17560 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 0, 0, 0, -1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17560 : ExponentCode := normalNode10569

theorem canonicalSound17560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17560.moment H = canonicalOutput17560.moment H :=
  canonical_of_padded canonicalInput17560 canonicalOutput17560 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17561 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 1, -3, 0, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput17561 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound17561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17561.moment H = canonicalOutput17561.moment H :=
  canonical_of_padded canonicalInput17561 canonicalOutput17561 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17562 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 1, -1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput17562 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound17562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17562.moment H = canonicalOutput17562.moment H :=
  canonical_of_padded canonicalInput17562 canonicalOutput17562 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17563 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 1, 0, -3, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput17563 : ExponentCode := normalNode4055

theorem canonicalSound17563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17563.moment H = canonicalOutput17563.moment H :=
  canonical_of_padded canonicalInput17563 canonicalOutput17563 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17564 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![1, 1, 0, 0, -2], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput17564 : ExponentCode := normalNode3968

theorem canonicalSound17564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17564.moment H = canonicalOutput17564.moment H :=
  canonical_of_padded canonicalInput17564 canonicalOutput17564 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17565 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, 0, -2], ![-1, 2, -2, -1, 2]]⟩

def canonicalOutput17565 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound17565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17565.moment H = canonicalOutput17565.moment H :=
  canonical_of_padded canonicalInput17565 canonicalOutput17565 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17566 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 1, -2, 0, 2], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput17566 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code860

theorem canonicalSound17566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17566.moment H = canonicalOutput17566.moment H :=
  canonical_of_padded canonicalInput17566 canonicalOutput17566 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17567 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 1, -1, -2, 3], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput17567 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code856

theorem canonicalSound17567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17567.moment H = canonicalOutput17567.moment H :=
  canonical_of_padded canonicalInput17567 canonicalOutput17567 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17568 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 1, -1, -1, 2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput17568 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound17568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17568.moment H = canonicalOutput17568.moment H :=
  canonical_of_padded canonicalInput17568 canonicalOutput17568 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17569 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 1, 0, -2, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput17569 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code863

theorem canonicalSound17569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17569.moment H = canonicalOutput17569.moment H :=
  canonical_of_padded canonicalInput17569 canonicalOutput17569 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17570 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 2, -1, 0, 0], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput17570 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound17570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17570.moment H = canonicalOutput17570.moment H :=
  canonical_of_padded canonicalInput17570 canonicalOutput17570 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17571 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 2, 0, -1, 0], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17571.moment H = canonicalOutput17571.moment H :=
  canonical_of_padded canonicalInput17571 canonicalOutput17571 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17572 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![-1, 3, -1, -1, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput17572 : ExponentCode := normalNode4211

theorem canonicalSound17572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17572.moment H = canonicalOutput17572.moment H :=
  canonical_of_padded canonicalInput17572 canonicalOutput17572 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17573 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 0, -2, 0, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput17573 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound17573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17573.moment H = canonicalOutput17573.moment H :=
  canonical_of_padded canonicalInput17573 canonicalOutput17573 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17574 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 0, -1, -2, 3], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput17574 : ExponentCode := normalNode3786

theorem canonicalSound17574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17574.moment H = canonicalOutput17574.moment H :=
  canonical_of_padded canonicalInput17574 canonicalOutput17574 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17575 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 0, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17575 : ExponentCode := normalNode4212

theorem canonicalSound17575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17575.moment H = canonicalOutput17575.moment H :=
  canonical_of_padded canonicalInput17575 canonicalOutput17575 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17576 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 0, 0, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17576 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound17576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17576.moment H = canonicalOutput17576.moment H :=
  canonical_of_padded canonicalInput17576 canonicalOutput17576 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17577 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17577 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound17577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17577.moment H = canonicalOutput17577.moment H :=
  canonical_of_padded canonicalInput17577 canonicalOutput17577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17578 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17578 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound17578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17578.moment H = canonicalOutput17578.moment H :=
  canonical_of_padded canonicalInput17578 canonicalOutput17578 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17579 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, -1, -2, 2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17579 : ExponentCode := normalNode3784

theorem canonicalSound17579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17579.moment H = canonicalOutput17579.moment H :=
  canonical_of_padded canonicalInput17579 canonicalOutput17579 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17580 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, -1, -1, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17580 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound17580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17580.moment H = canonicalOutput17580.moment H :=
  canonical_of_padded canonicalInput17580 canonicalOutput17580 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17581 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput17581 : ExponentCode := normalNode9491

theorem canonicalSound17581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17581.moment H = canonicalOutput17581.moment H :=
  canonical_of_padded canonicalInput17581 canonicalOutput17581 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput17582 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17582 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound17582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17582.moment H = canonicalOutput17582.moment H :=
  canonical_of_padded canonicalInput17582 canonicalOutput17582 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17583 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17583 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound17583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17583.moment H = canonicalOutput17583.moment H :=
  canonical_of_padded canonicalInput17583 canonicalOutput17583 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17584 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput17584 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17584.moment H = canonicalOutput17584.moment H :=
  canonical_of_padded canonicalInput17584 canonicalOutput17584 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17585 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput17585 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound17585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17585.moment H = canonicalOutput17585.moment H :=
  canonical_of_padded canonicalInput17585 canonicalOutput17585 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17586 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![0, 3, -1, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput17586 : ExponentCode := normalNode4211

theorem canonicalSound17586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17586.moment H = canonicalOutput17586.moment H :=
  canonical_of_padded canonicalInput17586 canonicalOutput17586 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17587 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 0, -2, 0, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput17587 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17587.moment H = canonicalOutput17587.moment H :=
  canonical_of_padded canonicalInput17587 canonicalOutput17587 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17588 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 0, -1, -2, 2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput17588 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17588.moment H = canonicalOutput17588.moment H :=
  canonical_of_padded canonicalInput17588 canonicalOutput17588 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17589 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 0, -1, -1, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput17589 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound17589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17589.moment H = canonicalOutput17589.moment H :=
  canonical_of_padded canonicalInput17589 canonicalOutput17589 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17590 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput17590 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound17590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17590.moment H = canonicalOutput17590.moment H :=
  canonical_of_padded canonicalInput17590 canonicalOutput17590 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17591 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 1, -2, 1, -1], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput17591 : ExponentCode := normalNode3373

theorem canonicalSound17591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17591.moment H = canonicalOutput17591.moment H :=
  canonical_of_padded canonicalInput17591 canonicalOutput17591 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17592 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 1, 0, -1, -1], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput17592 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound17592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17592.moment H = canonicalOutput17592.moment H :=
  canonical_of_padded canonicalInput17592 canonicalOutput17592 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17593 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 2, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput17593 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node646⟩

theorem canonicalSound17593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17593.moment H = canonicalOutput17593.moment H :=
  canonical_of_padded canonicalInput17593 canonicalOutput17593 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17594 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, -1, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17594 : ExponentCode := normalNode9146

theorem canonicalSound17594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17594.moment H = canonicalOutput17594.moment H :=
  canonical_of_padded canonicalInput17594 canonicalOutput17594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput17595 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, -1, 3], ![0, 0, 2, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound17595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17595.moment H = canonicalOutput17595.moment H :=
  canonical_of_padded canonicalInput17595 canonicalOutput17595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17596 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, -1, 3], ![0, 1, 0, -1, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput17596 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound17596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17596.moment H = canonicalOutput17596.moment H :=
  canonical_of_padded canonicalInput17596 canonicalOutput17596 (by decide) (by decide)
    ⟨true, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17597 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, -1, 3], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17597 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound17597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17597.moment H = canonicalOutput17597.moment H :=
  canonical_of_padded canonicalInput17597 canonicalOutput17597 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17598 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, -1, 3], ![0, 1, 2, -1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17598 : ExponentCode := normalNode9919

theorem canonicalSound17598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17598.moment H = canonicalOutput17598.moment H :=
  canonical_of_padded canonicalInput17598 canonicalOutput17598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17599 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17599 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound17599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17599.moment H = canonicalOutput17599.moment H :=
  canonical_of_padded canonicalInput17599 canonicalOutput17599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
