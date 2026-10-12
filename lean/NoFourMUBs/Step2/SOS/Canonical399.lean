import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25536 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -2, -1, 3], ![0, 0, 2, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput25536 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound25536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25536.moment H = canonicalOutput25536.moment H :=
  canonical_of_padded canonicalInput25536 canonicalOutput25536 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25537 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25537 : ExponentCode := normalNode498

theorem canonicalSound25537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25537.moment H = canonicalOutput25537.moment H :=
  canonical_of_padded canonicalInput25537 canonicalOutput25537 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25538 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25538 : ExponentCode := normalNode2470

theorem canonicalSound25538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25538.moment H = canonicalOutput25538.moment H :=
  canonical_of_padded canonicalInput25538 canonicalOutput25538 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25539 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25539 : ExponentCode := normalNode2935

theorem canonicalSound25539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25539.moment H = canonicalOutput25539.moment H :=
  canonical_of_padded canonicalInput25539 canonicalOutput25539 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25540 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25540 : ExponentCode := normalNode396

theorem canonicalSound25540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25540.moment H = canonicalOutput25540.moment H :=
  canonical_of_padded canonicalInput25540 canonicalOutput25540 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25541 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![0, 0, 1, -1], ![-2, 1, 0, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25541 : ExponentCode := normalNode4457

theorem canonicalSound25541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25541.moment H = canonicalOutput25541.moment H :=
  canonical_of_padded canonicalInput25541 canonicalOutput25541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25542 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 1, -1, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput25542 : ExponentCode := normalNode837

theorem canonicalSound25542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25542.moment H = canonicalOutput25542.moment H :=
  canonical_of_padded canonicalInput25542 canonicalOutput25542 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25543 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput25543 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound25543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25543.moment H = canonicalOutput25543.moment H :=
  canonical_of_padded canonicalInput25543 canonicalOutput25543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25544 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25544 : ExponentCode := normalNode2436

theorem canonicalSound25544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25544.moment H = canonicalOutput25544.moment H :=
  canonical_of_padded canonicalInput25544 canonicalOutput25544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25545 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput25545 : ExponentCode := normalNode6915

theorem canonicalSound25545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25545.moment H = canonicalOutput25545.moment H :=
  canonical_of_padded canonicalInput25545 canonicalOutput25545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25546 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput25546 : ExponentCode := normalNode6200

theorem canonicalSound25546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25546.moment H = canonicalOutput25546.moment H :=
  canonical_of_padded canonicalInput25546 canonicalOutput25546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25547 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -2, 3, -1], ![0, 1, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput25547 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound25547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25547.moment H = canonicalOutput25547.moment H :=
  canonical_of_padded canonicalInput25547 canonicalOutput25547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25548 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput25548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound25548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25548.moment H = canonicalOutput25548.moment H :=
  canonical_of_padded canonicalInput25548 canonicalOutput25548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25549 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput25549 : ExponentCode := normalNode1771

theorem canonicalSound25549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25549.moment H = canonicalOutput25549.moment H :=
  canonical_of_padded canonicalInput25549 canonicalOutput25549 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25550 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput25550 : ExponentCode := normalNode3206

theorem canonicalSound25550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25550.moment H = canonicalOutput25550.moment H :=
  canonical_of_padded canonicalInput25550 canonicalOutput25550 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25551 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -1, 1, -2], ![-2, 2, 2, -2]]⟩

def canonicalOutput25551 : ExponentCode := normalNode2748

theorem canonicalSound25551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25551.moment H = canonicalOutput25551.moment H :=
  canonical_of_padded canonicalInput25551 canonicalOutput25551 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation272, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25552 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput25552 : ExponentCode := normalNode1775

theorem canonicalSound25552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25552.moment H = canonicalOutput25552.moment H :=
  canonical_of_padded canonicalInput25552 canonicalOutput25552 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25553 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25553 : ExponentCode := normalNode4696

theorem canonicalSound25553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25553.moment H = canonicalOutput25553.moment H :=
  canonical_of_padded canonicalInput25553 canonicalOutput25553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25554 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]⟩

def canonicalOutput25554 : ExponentCode := normalNode5720

theorem canonicalSound25554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25554.moment H = canonicalOutput25554.moment H :=
  canonical_of_padded canonicalInput25554 canonicalOutput25554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25555 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput25555 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound25555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25555.moment H = canonicalOutput25555.moment H :=
  canonical_of_padded canonicalInput25555 canonicalOutput25555 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25556 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25556 : ExponentCode := normalNode520

theorem canonicalSound25556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25556.moment H = canonicalOutput25556.moment H :=
  canonical_of_padded canonicalInput25556 canonicalOutput25556 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25557 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -1, 0, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput25557 : ExponentCode := normalNode4499

theorem canonicalSound25557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25557.moment H = canonicalOutput25557.moment H :=
  canonical_of_padded canonicalInput25557 canonicalOutput25557 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25558 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput25558 : ExponentCode := normalNode1228

theorem canonicalSound25558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25558.moment H = canonicalOutput25558.moment H :=
  canonical_of_padded canonicalInput25558 canonicalOutput25558 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25559 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25559 : ExponentCode := normalNode2899

theorem canonicalSound25559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25559.moment H = canonicalOutput25559.moment H :=
  canonical_of_padded canonicalInput25559 canonicalOutput25559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25560 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput25560 : ExponentCode := normalNode2898

theorem canonicalSound25560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25560.moment H = canonicalOutput25560.moment H :=
  canonical_of_padded canonicalInput25560 canonicalOutput25560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25561 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25561 : ExponentCode := normalNode3447

theorem canonicalSound25561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25561.moment H = canonicalOutput25561.moment H :=
  canonical_of_padded canonicalInput25561 canonicalOutput25561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25562 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput25562 : ExponentCode := normalNode3449

theorem canonicalSound25562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25562.moment H = canonicalOutput25562.moment H :=
  canonical_of_padded canonicalInput25562 canonicalOutput25562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25563 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25563 : ExponentCode := normalNode82

theorem canonicalSound25563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25563.moment H = canonicalOutput25563.moment H :=
  canonical_of_padded canonicalInput25563 canonicalOutput25563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25564 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![-1, 1, 1, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25564 : ExponentCode := normalNode91

theorem canonicalSound25564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25564.moment H = canonicalOutput25564.moment H :=
  canonical_of_padded canonicalInput25564 canonicalOutput25564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput25565 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25565 : ExponentCode := normalNode433

theorem canonicalSound25565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25565.moment H = canonicalOutput25565.moment H :=
  canonical_of_padded canonicalInput25565 canonicalOutput25565 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25566 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25566 : ExponentCode := normalNode6416

theorem canonicalSound25566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25566.moment H = canonicalOutput25566.moment H :=
  canonical_of_padded canonicalInput25566 canonicalOutput25566 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25567 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 1, -2, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25567 : ExponentCode := normalNode729

theorem canonicalSound25567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25567.moment H = canonicalOutput25567.moment H :=
  canonical_of_padded canonicalInput25567 canonicalOutput25567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25568 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 0, 3, -2], ![2, 2, -1, -3]]⟩

def canonicalOutput25568 : ExponentCode := normalNode650

theorem canonicalSound25568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25568.moment H = canonicalOutput25568.moment H :=
  canonical_of_padded canonicalInput25568 canonicalOutput25568 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25569 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput25569 : ExponentCode := normalNode3085

theorem canonicalSound25569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25569.moment H = canonicalOutput25569.moment H :=
  canonical_of_padded canonicalInput25569 canonicalOutput25569 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25570 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput25570 : ExponentCode := normalNode3060

theorem canonicalSound25570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25570.moment H = canonicalOutput25570.moment H :=
  canonical_of_padded canonicalInput25570 canonicalOutput25570 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25571 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25571 : ExponentCode := normalNode7157

theorem canonicalSound25571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25571.moment H = canonicalOutput25571.moment H :=
  canonical_of_padded canonicalInput25571 canonicalOutput25571 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25572 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput25572 : ExponentCode := normalNode10839

theorem canonicalSound25572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25572.moment H = canonicalOutput25572.moment H :=
  canonical_of_padded canonicalInput25572 canonicalOutput25572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25573 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25573 : ExponentCode := normalNode7307

theorem canonicalSound25573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25573.moment H = canonicalOutput25573.moment H :=
  canonical_of_padded canonicalInput25573 canonicalOutput25573 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25574 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25574 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2826⟩

theorem canonicalSound25574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25574.moment H = canonicalOutput25574.moment H :=
  canonical_of_padded canonicalInput25574 canonicalOutput25574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25575 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25575 : ExponentCode := normalNode3060

theorem canonicalSound25575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25575.moment H = canonicalOutput25575.moment H :=
  canonical_of_padded canonicalInput25575 canonicalOutput25575 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25576 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25576 : ExponentCode := normalNode3480

theorem canonicalSound25576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25576.moment H = canonicalOutput25576.moment H :=
  canonical_of_padded canonicalInput25576 canonicalOutput25576 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25577 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, 2, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput25577 : ExponentCode := normalNode6003

theorem canonicalSound25577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25577.moment H = canonicalOutput25577.moment H :=
  canonical_of_padded canonicalInput25577 canonicalOutput25577 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25578 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25578 : ExponentCode := normalNode7157

theorem canonicalSound25578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25578.moment H = canonicalOutput25578.moment H :=
  canonical_of_padded canonicalInput25578 canonicalOutput25578 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25579 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, 0, 0], ![0, 2, -1, -1], ![-2, -1, 3, 0], ![3, 0, -2, -1]]⟩

def canonicalOutput25579 : ExponentCode := normalNode6640

theorem canonicalSound25579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25579.moment H = canonicalOutput25579.moment H :=
  canonical_of_padded canonicalInput25579 canonicalOutput25579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25580 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25580 : ExponentCode := normalNode9608

theorem canonicalSound25580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25580.moment H = canonicalOutput25580.moment H :=
  canonical_of_padded canonicalInput25580 canonicalOutput25580 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25581 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25581 : ExponentCode := normalNode7707

theorem canonicalSound25581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25581.moment H = canonicalOutput25581.moment H :=
  canonical_of_padded canonicalInput25581 canonicalOutput25581 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25582 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25582 : ExponentCode := normalNode10472

theorem canonicalSound25582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25582.moment H = canonicalOutput25582.moment H :=
  canonical_of_padded canonicalInput25582 canonicalOutput25582 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25583 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25583 : ExponentCode := normalNode10915

theorem canonicalSound25583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25583.moment H = canonicalOutput25583.moment H :=
  canonical_of_padded canonicalInput25583 canonicalOutput25583 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25584 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 2, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput25584 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node905⟩

theorem canonicalSound25584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25584.moment H = canonicalOutput25584.moment H :=
  canonical_of_padded canonicalInput25584 canonicalOutput25584 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25585 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, 2, -1, -3]]⟩

def canonicalOutput25585 : ExponentCode := normalNode519

theorem canonicalSound25585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25585.moment H = canonicalOutput25585.moment H :=
  canonical_of_padded canonicalInput25585 canonicalOutput25585 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25586 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25586 : ExponentCode := normalNode2504

theorem canonicalSound25586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25586.moment H = canonicalOutput25586.moment H :=
  canonical_of_padded canonicalInput25586 canonicalOutput25586 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25587 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-2, 0, 2, 0], ![-1, 2, 0, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25587 : ExponentCode := normalNode6030

theorem canonicalSound25587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25587.moment H = canonicalOutput25587.moment H :=
  canonical_of_padded canonicalInput25587 canonicalOutput25587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25588 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-2, 1, 1, 0], ![-1, 1, 1, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput25588 : ExponentCode := normalNode6056

theorem canonicalSound25588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25588.moment H = canonicalOutput25588.moment H :=
  canonical_of_padded canonicalInput25588 canonicalOutput25588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25589 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![-2, 2, 0, 0], ![3, 1, -3, -1]]⟩

def canonicalOutput25589 : ExponentCode := normalNode6078

theorem canonicalSound25589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25589.moment H = canonicalOutput25589.moment H :=
  canonical_of_padded canonicalInput25589 canonicalOutput25589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation393, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25590 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput25590 : ExponentCode := normalNode3438

theorem canonicalSound25590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25590.moment H = canonicalOutput25590.moment H :=
  canonical_of_padded canonicalInput25590 canonicalOutput25590 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25591 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![-1, 2, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput25591 : ExponentCode := normalNode392

theorem canonicalSound25591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25591.moment H = canonicalOutput25591.moment H :=
  canonical_of_padded canonicalInput25591 canonicalOutput25591 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25592 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![-2, 1, 1, 0], ![3, 1, -3, -1]]⟩

def canonicalOutput25592 : ExponentCode := normalNode6056

theorem canonicalSound25592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25592.moment H = canonicalOutput25592.moment H :=
  canonical_of_padded canonicalInput25592 canonicalOutput25592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput25593 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput25593 : ExponentCode := normalNode3439

theorem canonicalSound25593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25593.moment H = canonicalOutput25593.moment H :=
  canonical_of_padded canonicalInput25593 canonicalOutput25593 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25594 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![-1, 2, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25594 : ExponentCode := normalNode6435

theorem canonicalSound25594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25594.moment H = canonicalOutput25594.moment H :=
  canonical_of_padded canonicalInput25594 canonicalOutput25594 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25595 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25595 : ExponentCode := normalNode871

theorem canonicalSound25595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25595.moment H = canonicalOutput25595.moment H :=
  canonical_of_padded canonicalInput25595 canonicalOutput25595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25596 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-2, 2, -2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput25596 : ExponentCode := normalNode390

theorem canonicalSound25596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25596.moment H = canonicalOutput25596.moment H :=
  canonical_of_padded canonicalInput25596 canonicalOutput25596 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25597 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput25597 : ExponentCode := normalNode6689

theorem canonicalSound25597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25597.moment H = canonicalOutput25597.moment H :=
  canonical_of_padded canonicalInput25597 canonicalOutput25597 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25598 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-2, 2, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25598 : ExponentCode := normalNode832

theorem canonicalSound25598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25598.moment H = canonicalOutput25598.moment H :=
  canonical_of_padded canonicalInput25598 canonicalOutput25598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25599 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput25599 : ExponentCode := normalNode7020

theorem canonicalSound25599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25599.moment H = canonicalOutput25599.moment H :=
  canonical_of_padded canonicalInput25599 canonicalOutput25599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
