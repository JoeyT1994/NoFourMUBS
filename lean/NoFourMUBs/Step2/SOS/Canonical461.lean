import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29504 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput29504 : ExponentCode := normalNode2462

theorem canonicalSound29504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29504.moment H = canonicalOutput29504.moment H :=
  canonical_of_padded canonicalInput29504 canonicalOutput29504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29505 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29505 : ExponentCode := normalNode4264

theorem canonicalSound29505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29505.moment H = canonicalOutput29505.moment H :=
  canonical_of_padded canonicalInput29505 canonicalOutput29505 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29506 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 0, 1], ![-1, -1, -1, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29506 : ExponentCode := normalNode7857

theorem canonicalSound29506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29506.moment H = canonicalOutput29506.moment H :=
  canonical_of_padded canonicalInput29506 canonicalOutput29506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29507 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29507 : ExponentCode := normalNode6736

theorem canonicalSound29507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29507.moment H = canonicalOutput29507.moment H :=
  canonical_of_padded canonicalInput29507 canonicalOutput29507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29508 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, -2, -1, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput29508 : ExponentCode := normalNode9732

theorem canonicalSound29508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29508.moment H = canonicalOutput29508.moment H :=
  canonical_of_padded canonicalInput29508 canonicalOutput29508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29509 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29509 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2548⟩

theorem canonicalSound29509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29509.moment H = canonicalOutput29509.moment H :=
  canonical_of_padded canonicalInput29509 canonicalOutput29509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29510 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29510 : ExponentCode := normalNode2964

theorem canonicalSound29510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29510.moment H = canonicalOutput29510.moment H :=
  canonical_of_padded canonicalInput29510 canonicalOutput29510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29511 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29511 : ExponentCode := normalNode2330

theorem canonicalSound29511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29511.moment H = canonicalOutput29511.moment H :=
  canonical_of_padded canonicalInput29511 canonicalOutput29511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29512 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -2, 2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput29512 : ExponentCode := normalNode876

theorem canonicalSound29512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29512.moment H = canonicalOutput29512.moment H :=
  canonical_of_padded canonicalInput29512 canonicalOutput29512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29513 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29513 : ExponentCode := normalNode1971

theorem canonicalSound29513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29513.moment H = canonicalOutput29513.moment H :=
  canonical_of_padded canonicalInput29513 canonicalOutput29513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29514 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput29514 : ExponentCode := normalNode2683

theorem canonicalSound29514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29514.moment H = canonicalOutput29514.moment H :=
  canonical_of_padded canonicalInput29514 canonicalOutput29514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29515 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput29515 : ExponentCode := normalNode2749

theorem canonicalSound29515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29515.moment H = canonicalOutput29515.moment H :=
  canonical_of_padded canonicalInput29515 canonicalOutput29515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29516 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29516 : ExponentCode := normalNode4052

theorem canonicalSound29516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29516.moment H = canonicalOutput29516.moment H :=
  canonical_of_padded canonicalInput29516 canonicalOutput29516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29517 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29517 : ExponentCode := normalNode4471

theorem canonicalSound29517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29517.moment H = canonicalOutput29517.moment H :=
  canonical_of_padded canonicalInput29517 canonicalOutput29517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29518 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![1, 0, 3, -4]]⟩

def canonicalOutput29518 : ExponentCode := normalNode1344

theorem canonicalSound29518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29518.moment H = canonicalOutput29518.moment H :=
  canonical_of_padded canonicalInput29518 canonicalOutput29518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29519 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput29519 : ExponentCode := normalNode2684

theorem canonicalSound29519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29519.moment H = canonicalOutput29519.moment H :=
  canonical_of_padded canonicalInput29519 canonicalOutput29519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29520 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29520 : ExponentCode := normalNode3578

theorem canonicalSound29520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29520.moment H = canonicalOutput29520.moment H :=
  canonical_of_padded canonicalInput29520 canonicalOutput29520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29521 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput29521 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3216⟩

theorem canonicalSound29521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29521.moment H = canonicalOutput29521.moment H :=
  canonical_of_padded canonicalInput29521 canonicalOutput29521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29522 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29522 : ExponentCode := normalNode2331

theorem canonicalSound29522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29522.moment H = canonicalOutput29522.moment H :=
  canonical_of_padded canonicalInput29522 canonicalOutput29522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29523 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput29523 : ExponentCode := normalNode7955

theorem canonicalSound29523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29523.moment H = canonicalOutput29523.moment H :=
  canonical_of_padded canonicalInput29523 canonicalOutput29523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29524 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput29524 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3122⟩

theorem canonicalSound29524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29524.moment H = canonicalOutput29524.moment H :=
  canonical_of_padded canonicalInput29524 canonicalOutput29524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29525 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, -1, 1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29525 : ExponentCode := normalNode2686

theorem canonicalSound29525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29525.moment H = canonicalOutput29525.moment H :=
  canonical_of_padded canonicalInput29525 canonicalOutput29525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29526 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29526 : ExponentCode := normalNode864

theorem canonicalSound29526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29526.moment H = canonicalOutput29526.moment H :=
  canonical_of_padded canonicalInput29526 canonicalOutput29526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29527 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![1, 0, 3, -4]]⟩

def canonicalOutput29527 : ExponentCode := normalNode417

theorem canonicalSound29527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29527.moment H = canonicalOutput29527.moment H :=
  canonical_of_padded canonicalInput29527 canonicalOutput29527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29528 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29528 : ExponentCode := normalNode1973

theorem canonicalSound29528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29528.moment H = canonicalOutput29528.moment H :=
  canonical_of_padded canonicalInput29528 canonicalOutput29528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29529 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29529 : ExponentCode := normalNode2685

theorem canonicalSound29529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29529.moment H = canonicalOutput29529.moment H :=
  canonical_of_padded canonicalInput29529 canonicalOutput29529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29530 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29530 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3189⟩

theorem canonicalSound29530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29530.moment H = canonicalOutput29530.moment H :=
  canonical_of_padded canonicalInput29530 canonicalOutput29530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29531 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput29531 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3079⟩

theorem canonicalSound29531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29531.moment H = canonicalOutput29531.moment H :=
  canonical_of_padded canonicalInput29531 canonicalOutput29531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput29532 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29532 : ExponentCode := normalNode2473

theorem canonicalSound29532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29532.moment H = canonicalOutput29532.moment H :=
  canonical_of_padded canonicalInput29532 canonicalOutput29532 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29533 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput29533 : ExponentCode := normalNode6750

theorem canonicalSound29533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29533.moment H = canonicalOutput29533.moment H :=
  canonical_of_padded canonicalInput29533 canonicalOutput29533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29534 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput29534 : ExponentCode := normalNode9650

theorem canonicalSound29534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29534.moment H = canonicalOutput29534.moment H :=
  canonical_of_padded canonicalInput29534 canonicalOutput29534 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29535 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 0, 4, -2]]⟩

def canonicalOutput29535 : ExponentCode := normalNode3289

theorem canonicalSound29535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29535.moment H = canonicalOutput29535.moment H :=
  canonical_of_padded canonicalInput29535 canonicalOutput29535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29536 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29536 : ExponentCode := normalNode878

theorem canonicalSound29536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29536.moment H = canonicalOutput29536.moment H :=
  canonical_of_padded canonicalInput29536 canonicalOutput29536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29537 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29537 : ExponentCode := normalNode617

theorem canonicalSound29537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29537.moment H = canonicalOutput29537.moment H :=
  canonical_of_padded canonicalInput29537 canonicalOutput29537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29538 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, -1, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput29538 : ExponentCode := normalNode1346

theorem canonicalSound29538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29538.moment H = canonicalOutput29538.moment H :=
  canonical_of_padded canonicalInput29538 canonicalOutput29538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29539 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput29539 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3132⟩

theorem canonicalSound29539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29539.moment H = canonicalOutput29539.moment H :=
  canonical_of_padded canonicalInput29539 canonicalOutput29539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29540 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![1, -3, 3, -1]]⟩

def canonicalOutput29540 : ExponentCode := normalNode2332

theorem canonicalSound29540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29540.moment H = canonicalOutput29540.moment H :=
  canonical_of_padded canonicalInput29540 canonicalOutput29540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29541 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29541 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3203⟩

theorem canonicalSound29541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29541.moment H = canonicalOutput29541.moment H :=
  canonical_of_padded canonicalInput29541 canonicalOutput29541 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29542 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29542 : ExponentCode := normalNode5859

theorem canonicalSound29542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29542.moment H = canonicalOutput29542.moment H :=
  canonical_of_padded canonicalInput29542 canonicalOutput29542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29543 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29543 : ExponentCode := normalNode7907

theorem canonicalSound29543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29543.moment H = canonicalOutput29543.moment H :=
  canonical_of_padded canonicalInput29543 canonicalOutput29543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29544 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, -2, 2], ![-2, -1, 4, -1]]⟩

def canonicalOutput29544 : ExponentCode := normalNode1381

theorem canonicalSound29544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29544.moment H = canonicalOutput29544.moment H :=
  canonical_of_padded canonicalInput29544 canonicalOutput29544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29545 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29545 : ExponentCode := normalNode4353

theorem canonicalSound29545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29545.moment H = canonicalOutput29545.moment H :=
  canonical_of_padded canonicalInput29545 canonicalOutput29545 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29546 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -3, 1, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput29546 : ExponentCode := normalNode4334

theorem canonicalSound29546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29546.moment H = canonicalOutput29546.moment H :=
  canonical_of_padded canonicalInput29546 canonicalOutput29546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29547 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2], ![-1, 0, 2, -1]]⟩

def canonicalOutput29547 : ExponentCode := normalNode2537

theorem canonicalSound29547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29547.moment H = canonicalOutput29547.moment H :=
  canonical_of_padded canonicalInput29547 canonicalOutput29547 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29548 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -2, -1, 3]]⟩

def canonicalOutput29548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound29548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29548.moment H = canonicalOutput29548.moment H :=
  canonical_of_padded canonicalInput29548 canonicalOutput29548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29549 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput29549 : ExponentCode := normalNode6402

theorem canonicalSound29549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29549.moment H = canonicalOutput29549.moment H :=
  canonical_of_padded canonicalInput29549 canonicalOutput29549 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29550 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput29550 : ExponentCode := normalNode2344

theorem canonicalSound29550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29550.moment H = canonicalOutput29550.moment H :=
  canonical_of_padded canonicalInput29550 canonicalOutput29550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29551 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput29551 : ExponentCode := normalNode4053

theorem canonicalSound29551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29551.moment H = canonicalOutput29551.moment H :=
  canonical_of_padded canonicalInput29551 canonicalOutput29551 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29552 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput29552 : ExponentCode := normalNode4196

theorem canonicalSound29552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29552.moment H = canonicalOutput29552.moment H :=
  canonical_of_padded canonicalInput29552 canonicalOutput29552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29553 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29553 : ExponentCode := normalNode4266

theorem canonicalSound29553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29553.moment H = canonicalOutput29553.moment H :=
  canonical_of_padded canonicalInput29553 canonicalOutput29553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29554 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput29554 : ExponentCode := normalNode4474

theorem canonicalSound29554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29554.moment H = canonicalOutput29554.moment H :=
  canonical_of_padded canonicalInput29554 canonicalOutput29554 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29555 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput29555 : ExponentCode := normalNode4478

theorem canonicalSound29555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29555.moment H = canonicalOutput29555.moment H :=
  canonical_of_padded canonicalInput29555 canonicalOutput29555 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29556 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput29556 : ExponentCode := normalNode3748

theorem canonicalSound29556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29556.moment H = canonicalOutput29556.moment H :=
  canonical_of_padded canonicalInput29556 canonicalOutput29556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29557 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput29557 : ExponentCode := normalNode3706

theorem canonicalSound29557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29557.moment H = canonicalOutput29557.moment H :=
  canonical_of_padded canonicalInput29557 canonicalOutput29557 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29558 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29558 : ExponentCode := normalNode5421

theorem canonicalSound29558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29558.moment H = canonicalOutput29558.moment H :=
  canonical_of_padded canonicalInput29558 canonicalOutput29558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29559 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput29559 : ExponentCode := normalNode4335

theorem canonicalSound29559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29559.moment H = canonicalOutput29559.moment H :=
  canonical_of_padded canonicalInput29559 canonicalOutput29559 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29560 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput29560 : ExponentCode := normalNode4343

theorem canonicalSound29560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29560.moment H = canonicalOutput29560.moment H :=
  canonical_of_padded canonicalInput29560 canonicalOutput29560 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29561 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![1, 1, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput29561 : ExponentCode := normalNode4345

theorem canonicalSound29561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29561.moment H = canonicalOutput29561.moment H :=
  canonical_of_padded canonicalInput29561 canonicalOutput29561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29562 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29562 : ExponentCode := normalNode4472

theorem canonicalSound29562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29562.moment H = canonicalOutput29562.moment H :=
  canonical_of_padded canonicalInput29562 canonicalOutput29562 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29563 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, 1, 0], ![1, -2, 0, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29563 : ExponentCode := normalNode4146

theorem canonicalSound29563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29563.moment H = canonicalOutput29563.moment H :=
  canonical_of_padded canonicalInput29563 canonicalOutput29563 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29564 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29564 : ExponentCode := normalNode3725

theorem canonicalSound29564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29564.moment H = canonicalOutput29564.moment H :=
  canonical_of_padded canonicalInput29564 canonicalOutput29564 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29565 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput29565 : ExponentCode := normalNode7721

theorem canonicalSound29565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29565.moment H = canonicalOutput29565.moment H :=
  canonical_of_padded canonicalInput29565 canonicalOutput29565 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29566 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![1, 1, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29566 : ExponentCode := normalNode8811

theorem canonicalSound29566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29566.moment H = canonicalOutput29566.moment H :=
  canonical_of_padded canonicalInput29566 canonicalOutput29566 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29567 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput29567 : ExponentCode := normalNode6677

theorem canonicalSound29567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29567.moment H = canonicalOutput29567.moment H :=
  canonical_of_padded canonicalInput29567 canonicalOutput29567 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
