import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14528 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput14528 : ExponentCode := normalNode7049

theorem canonicalSound14528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14528.moment H = canonicalOutput14528.moment H :=
  canonical_of_padded canonicalInput14528 canonicalOutput14528 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14529 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound14529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14529.moment H = canonicalOutput14529.moment H :=
  canonical_of_padded canonicalInput14529 canonicalOutput14529 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14530 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14530 : ExponentCode := normalNode7417

theorem canonicalSound14530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14530.moment H = canonicalOutput14530.moment H :=
  canonical_of_padded canonicalInput14530 canonicalOutput14530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14531 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput14531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound14531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14531.moment H = canonicalOutput14531.moment H :=
  canonical_of_padded canonicalInput14531 canonicalOutput14531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14532 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![1, 1, -2, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14532 : ExponentCode := normalNode7419

theorem canonicalSound14532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14532.moment H = canonicalOutput14532.moment H :=
  canonical_of_padded canonicalInput14532 canonicalOutput14532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14533 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, -1, 2, -1], ![1, 1, -1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput14533 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound14533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14533.moment H = canonicalOutput14533.moment H :=
  canonical_of_padded canonicalInput14533 canonicalOutput14533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14534 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14534 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2500⟩

theorem canonicalSound14534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14534.moment H = canonicalOutput14534.moment H :=
  canonical_of_padded canonicalInput14534 canonicalOutput14534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14535 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, -1, 4, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput14535 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound14535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14535.moment H = canonicalOutput14535.moment H :=
  canonical_of_padded canonicalInput14535 canonicalOutput14535 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14536 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14536 : ExponentCode := normalNode7364

theorem canonicalSound14536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14536.moment H = canonicalOutput14536.moment H :=
  canonical_of_padded canonicalInput14536 canonicalOutput14536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14537 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14537 : ExponentCode := normalNode7365

theorem canonicalSound14537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14537.moment H = canonicalOutput14537.moment H :=
  canonical_of_padded canonicalInput14537 canonicalOutput14537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14538 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14538 : ExponentCode := normalNode7353

theorem canonicalSound14538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14538.moment H = canonicalOutput14538.moment H :=
  canonical_of_padded canonicalInput14538 canonicalOutput14538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14539 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14539 : ExponentCode := normalNode7354

theorem canonicalSound14539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14539.moment H = canonicalOutput14539.moment H :=
  canonical_of_padded canonicalInput14539 canonicalOutput14539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14540 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput14540 : ExponentCode := normalNode5258

theorem canonicalSound14540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14540.moment H = canonicalOutput14540.moment H :=
  canonical_of_padded canonicalInput14540 canonicalOutput14540 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14541 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14541 : ExponentCode := normalNode5268

theorem canonicalSound14541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14541.moment H = canonicalOutput14541.moment H :=
  canonical_of_padded canonicalInput14541 canonicalOutput14541 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14542 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14542 : ExponentCode := normalNode5347

theorem canonicalSound14542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14542.moment H = canonicalOutput14542.moment H :=
  canonical_of_padded canonicalInput14542 canonicalOutput14542 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14543 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14543 : ExponentCode := normalNode4845

theorem canonicalSound14543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14543.moment H = canonicalOutput14543.moment H :=
  canonical_of_padded canonicalInput14543 canonicalOutput14543 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14544 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14544 : ExponentCode := normalNode7411

theorem canonicalSound14544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14544.moment H = canonicalOutput14544.moment H :=
  canonical_of_padded canonicalInput14544 canonicalOutput14544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14545 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14545 : ExponentCode := normalNode7443

theorem canonicalSound14545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14545.moment H = canonicalOutput14545.moment H :=
  canonical_of_padded canonicalInput14545 canonicalOutput14545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14546 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput14546 : ExponentCode := normalNode7444

theorem canonicalSound14546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14546.moment H = canonicalOutput14546.moment H :=
  canonical_of_padded canonicalInput14546 canonicalOutput14546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14547 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14547 : ExponentCode := normalNode7421

theorem canonicalSound14547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14547.moment H = canonicalOutput14547.moment H :=
  canonical_of_padded canonicalInput14547 canonicalOutput14547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14548 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput14548 : ExponentCode := normalNode7453

theorem canonicalSound14548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14548.moment H = canonicalOutput14548.moment H :=
  canonical_of_padded canonicalInput14548 canonicalOutput14548 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14549 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14549 : ExponentCode := normalNode7443

theorem canonicalSound14549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14549.moment H = canonicalOutput14549.moment H :=
  canonical_of_padded canonicalInput14549 canonicalOutput14549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14550 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14550 : ExponentCode := normalNode7447

theorem canonicalSound14550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14550.moment H = canonicalOutput14550.moment H :=
  canonical_of_padded canonicalInput14550 canonicalOutput14550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14551 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput14551 : ExponentCode := normalNode7452

theorem canonicalSound14551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14551.moment H = canonicalOutput14551.moment H :=
  canonical_of_padded canonicalInput14551 canonicalOutput14551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14552 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput14552 : ExponentCode := normalNode7451

theorem canonicalSound14552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14552.moment H = canonicalOutput14552.moment H :=
  canonical_of_padded canonicalInput14552 canonicalOutput14552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14553 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14553 : ExponentCode := normalNode7450

theorem canonicalSound14553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14553.moment H = canonicalOutput14553.moment H :=
  canonical_of_padded canonicalInput14553 canonicalOutput14553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14554 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput14554 : ExponentCode := normalNode7449

theorem canonicalSound14554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14554.moment H = canonicalOutput14554.moment H :=
  canonical_of_padded canonicalInput14554 canonicalOutput14554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14555 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14555 : ExponentCode := normalNode7390

theorem canonicalSound14555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14555.moment H = canonicalOutput14555.moment H :=
  canonical_of_padded canonicalInput14555 canonicalOutput14555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14556 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput14556 : ExponentCode := normalNode7454

theorem canonicalSound14556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14556.moment H = canonicalOutput14556.moment H :=
  canonical_of_padded canonicalInput14556 canonicalOutput14556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14557 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14557 : ExponentCode := normalNode7391

theorem canonicalSound14557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14557.moment H = canonicalOutput14557.moment H :=
  canonical_of_padded canonicalInput14557 canonicalOutput14557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14558 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14558 : ExponentCode := normalNode7443

theorem canonicalSound14558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14558.moment H = canonicalOutput14558.moment H :=
  canonical_of_padded canonicalInput14558 canonicalOutput14558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14559 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput14559 : ExponentCode := normalNode7454

theorem canonicalSound14559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14559.moment H = canonicalOutput14559.moment H :=
  canonical_of_padded canonicalInput14559 canonicalOutput14559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14560 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput14560 : ExponentCode := normalNode7451

theorem canonicalSound14560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14560.moment H = canonicalOutput14560.moment H :=
  canonical_of_padded canonicalInput14560 canonicalOutput14560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14561 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput14561 : ExponentCode := normalNode7455

theorem canonicalSound14561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14561.moment H = canonicalOutput14561.moment H :=
  canonical_of_padded canonicalInput14561 canonicalOutput14561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14562 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput14562 : ExponentCode := normalNode7453

theorem canonicalSound14562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14562.moment H = canonicalOutput14562.moment H :=
  canonical_of_padded canonicalInput14562 canonicalOutput14562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14563 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput14563 : ExponentCode := normalNode9586

theorem canonicalSound14563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14563.moment H = canonicalOutput14563.moment H :=
  canonical_of_padded canonicalInput14563 canonicalOutput14563 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14564 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![1, -1, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput14564 : ExponentCode := normalNode7457

theorem canonicalSound14564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14564.moment H = canonicalOutput14564.moment H :=
  canonical_of_padded canonicalInput14564 canonicalOutput14564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14565 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, -1, 1], ![1, -1, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput14565 : ExponentCode := normalNode7456

theorem canonicalSound14565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14565.moment H = canonicalOutput14565.moment H :=
  canonical_of_padded canonicalInput14565 canonicalOutput14565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14566 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound14566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14566.moment H = canonicalOutput14566.moment H :=
  canonical_of_padded canonicalInput14566 canonicalOutput14566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14567 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput14567 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node907⟩

theorem canonicalSound14567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14567.moment H = canonicalOutput14567.moment H :=
  canonical_of_padded canonicalInput14567 canonicalOutput14567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput14568 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14568 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound14568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14568.moment H = canonicalOutput14568.moment H :=
  canonical_of_padded canonicalInput14568 canonicalOutput14568 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14569 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14569 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound14569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14569.moment H = canonicalOutput14569.moment H :=
  canonical_of_padded canonicalInput14569 canonicalOutput14569 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14570 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14570 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound14570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14570.moment H = canonicalOutput14570.moment H :=
  canonical_of_padded canonicalInput14570 canonicalOutput14570 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14571 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput14571 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound14571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14571.moment H = canonicalOutput14571.moment H :=
  canonical_of_padded canonicalInput14571 canonicalOutput14571 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14572 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput14572 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound14572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14572.moment H = canonicalOutput14572.moment H :=
  canonical_of_padded canonicalInput14572 canonicalOutput14572 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14573 : ExponentCode := ⟨3, 4, ![![-1, -1, -2, 4], ![0, 0, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14573 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node16⟩

theorem canonicalSound14573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14573.moment H = canonicalOutput14573.moment H :=
  canonical_of_padded canonicalInput14573 canonicalOutput14573 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14574 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput14574 : ExponentCode := normalNode7339

theorem canonicalSound14574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14574.moment H = canonicalOutput14574.moment H :=
  canonical_of_padded canonicalInput14574 canonicalOutput14574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14575 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14575 : ExponentCode := normalNode1273

theorem canonicalSound14575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14575.moment H = canonicalOutput14575.moment H :=
  canonical_of_padded canonicalInput14575 canonicalOutput14575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14576 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14576 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2313⟩

theorem canonicalSound14576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14576.moment H = canonicalOutput14576.moment H :=
  canonical_of_padded canonicalInput14576 canonicalOutput14576 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14577 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14577 : ExponentCode := normalNode5639

theorem canonicalSound14577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14577.moment H = canonicalOutput14577.moment H :=
  canonical_of_padded canonicalInput14577 canonicalOutput14577 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14578 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14578 : ExponentCode := normalNode5348

theorem canonicalSound14578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14578.moment H = canonicalOutput14578.moment H :=
  canonical_of_padded canonicalInput14578 canonicalOutput14578 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14579 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14579 : ExponentCode := normalNode7396

theorem canonicalSound14579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14579.moment H = canonicalOutput14579.moment H :=
  canonical_of_padded canonicalInput14579 canonicalOutput14579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14580 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14580 : ExponentCode := normalNode7443

theorem canonicalSound14580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14580.moment H = canonicalOutput14580.moment H :=
  canonical_of_padded canonicalInput14580 canonicalOutput14580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14581 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14581 : ExponentCode := normalNode7443

theorem canonicalSound14581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14581.moment H = canonicalOutput14581.moment H :=
  canonical_of_padded canonicalInput14581 canonicalOutput14581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14582 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput14582 : ExponentCode := normalNode7446

theorem canonicalSound14582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14582.moment H = canonicalOutput14582.moment H :=
  canonical_of_padded canonicalInput14582 canonicalOutput14582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14583 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14583 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound14583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14583.moment H = canonicalOutput14583.moment H :=
  canonical_of_padded canonicalInput14583 canonicalOutput14583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14584 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14584 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound14584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14584.moment H = canonicalOutput14584.moment H :=
  canonical_of_padded canonicalInput14584 canonicalOutput14584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14585 : ExponentCode := ⟨4, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14585 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound14585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14585.moment H = canonicalOutput14585.moment H :=
  canonical_of_padded canonicalInput14585 canonicalOutput14585 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14586 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput14586 : ExponentCode := normalNode7441

theorem canonicalSound14586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14586.moment H = canonicalOutput14586.moment H :=
  canonical_of_padded canonicalInput14586 canonicalOutput14586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14587 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput14587 : ExponentCode := normalNode7381

theorem canonicalSound14587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14587.moment H = canonicalOutput14587.moment H :=
  canonical_of_padded canonicalInput14587 canonicalOutput14587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14588 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14588 : ExponentCode := normalNode7396

theorem canonicalSound14588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14588.moment H = canonicalOutput14588.moment H :=
  canonical_of_padded canonicalInput14588 canonicalOutput14588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14589 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩

theorem canonicalSound14589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14589.moment H = canonicalOutput14589.moment H :=
  canonical_of_padded canonicalInput14589 canonicalOutput14589 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14590 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14590 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2505⟩

theorem canonicalSound14590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14590.moment H = canonicalOutput14590.moment H :=
  canonical_of_padded canonicalInput14590 canonicalOutput14590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14591 : ExponentCode := ⟨5, 4, ![![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14591 : ExponentCode := normalNode7462

theorem canonicalSound14591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14591.moment H = canonicalOutput14591.moment H :=
  canonical_of_padded canonicalInput14591 canonicalOutput14591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
