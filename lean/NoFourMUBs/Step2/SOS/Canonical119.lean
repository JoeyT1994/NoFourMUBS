import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7616 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput7616 : ExponentCode := normalNode1013

theorem canonicalSound7616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7616.moment H = canonicalOutput7616.moment H :=
  canonical_of_padded canonicalInput7616 canonicalOutput7616 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7617 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7617 : ExponentCode := normalNode7204

theorem canonicalSound7617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7617.moment H = canonicalOutput7617.moment H :=
  canonical_of_padded canonicalInput7617 canonicalOutput7617 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7618 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput7618 : ExponentCode := normalNode3082

theorem canonicalSound7618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7618.moment H = canonicalOutput7618.moment H :=
  canonical_of_padded canonicalInput7618 canonicalOutput7618 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7619 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput7619 : ExponentCode := normalNode1014

theorem canonicalSound7619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7619.moment H = canonicalOutput7619.moment H :=
  canonical_of_padded canonicalInput7619 canonicalOutput7619 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7620 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput7620 : ExponentCode := normalNode3052

theorem canonicalSound7620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7620.moment H = canonicalOutput7620.moment H :=
  canonical_of_padded canonicalInput7620 canonicalOutput7620 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7621 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7621 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound7621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7621.moment H = canonicalOutput7621.moment H :=
  canonical_of_padded canonicalInput7621 canonicalOutput7621 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7622 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput7622 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound7622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7622.moment H = canonicalOutput7622.moment H :=
  canonical_of_padded canonicalInput7622 canonicalOutput7622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7623 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput7623 : ExponentCode := normalNode8947

theorem canonicalSound7623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7623.moment H = canonicalOutput7623.moment H :=
  canonical_of_padded canonicalInput7623 canonicalOutput7623 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7624 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput7624 : ExponentCode := normalNode9953

theorem canonicalSound7624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7624.moment H = canonicalOutput7624.moment H :=
  canonical_of_padded canonicalInput7624 canonicalOutput7624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7625 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput7625 : ExponentCode := normalNode2931

theorem canonicalSound7625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7625.moment H = canonicalOutput7625.moment H :=
  canonical_of_padded canonicalInput7625 canonicalOutput7625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7626 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7626 : ExponentCode := normalNode9075

theorem canonicalSound7626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7626.moment H = canonicalOutput7626.moment H :=
  canonical_of_padded canonicalInput7626 canonicalOutput7626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7627 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput7627 : ExponentCode := normalNode10852

theorem canonicalSound7627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7627.moment H = canonicalOutput7627.moment H :=
  canonical_of_padded canonicalInput7627 canonicalOutput7627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7628 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7628 : ExponentCode := normalNode10313

theorem canonicalSound7628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7628.moment H = canonicalOutput7628.moment H :=
  canonical_of_padded canonicalInput7628 canonicalOutput7628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7629 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput7629 : ExponentCode := normalNode10701

theorem canonicalSound7629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7629.moment H = canonicalOutput7629.moment H :=
  canonical_of_padded canonicalInput7629 canonicalOutput7629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7630 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7630 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2601⟩

theorem canonicalSound7630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7630.moment H = canonicalOutput7630.moment H :=
  canonical_of_padded canonicalInput7630 canonicalOutput7630 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7631 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput7631 : ExponentCode := normalNode7959

theorem canonicalSound7631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7631.moment H = canonicalOutput7631.moment H :=
  canonical_of_padded canonicalInput7631 canonicalOutput7631 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7632 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput7632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2825⟩

theorem canonicalSound7632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7632.moment H = canonicalOutput7632.moment H :=
  canonical_of_padded canonicalInput7632 canonicalOutput7632 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7633 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -2, 1], ![2, -1, 3, -4]]⟩

def canonicalOutput7633 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node763⟩

theorem canonicalSound7633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7633.moment H = canonicalOutput7633.moment H :=
  canonical_of_padded canonicalInput7633 canonicalOutput7633 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7634 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7634 : ExponentCode := normalNode10701

theorem canonicalSound7634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7634.moment H = canonicalOutput7634.moment H :=
  canonical_of_padded canonicalInput7634 canonicalOutput7634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7635 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput7635 : ExponentCode := normalNode3043

theorem canonicalSound7635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7635.moment H = canonicalOutput7635.moment H :=
  canonical_of_padded canonicalInput7635 canonicalOutput7635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7636 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput7636 : ExponentCode := normalNode4046

theorem canonicalSound7636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7636.moment H = canonicalOutput7636.moment H :=
  canonical_of_padded canonicalInput7636 canonicalOutput7636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7637 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput7637 : ExponentCode := normalNode4022

theorem canonicalSound7637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7637.moment H = canonicalOutput7637.moment H :=
  canonical_of_padded canonicalInput7637 canonicalOutput7637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7638 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput7638 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound7638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7638.moment H = canonicalOutput7638.moment H :=
  canonical_of_padded canonicalInput7638 canonicalOutput7638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7639 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput7639 : ExponentCode := normalNode3866

theorem canonicalSound7639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7639.moment H = canonicalOutput7639.moment H :=
  canonical_of_padded canonicalInput7639 canonicalOutput7639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7640 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound7640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7640.moment H = canonicalOutput7640.moment H :=
  canonical_of_padded canonicalInput7640 canonicalOutput7640 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7641 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7641 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2810⟩

theorem canonicalSound7641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7641.moment H = canonicalOutput7641.moment H :=
  canonical_of_padded canonicalInput7641 canonicalOutput7641 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7642 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7642 : ExponentCode := normalNode10834

theorem canonicalSound7642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7642.moment H = canonicalOutput7642.moment H :=
  canonical_of_padded canonicalInput7642 canonicalOutput7642 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7643 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput7643 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2814⟩

theorem canonicalSound7643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7643.moment H = canonicalOutput7643.moment H :=
  canonical_of_padded canonicalInput7643 canonicalOutput7643 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7644 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput7644 : ExponentCode := normalNode3731

theorem canonicalSound7644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7644.moment H = canonicalOutput7644.moment H :=
  canonical_of_padded canonicalInput7644 canonicalOutput7644 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7645 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput7645 : ExponentCode := normalNode3125

theorem canonicalSound7645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7645.moment H = canonicalOutput7645.moment H :=
  canonical_of_padded canonicalInput7645 canonicalOutput7645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7646 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput7646 : ExponentCode := normalNode8948

theorem canonicalSound7646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7646.moment H = canonicalOutput7646.moment H :=
  canonical_of_padded canonicalInput7646 canonicalOutput7646 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7647 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7647 : ExponentCode := normalNode9550

theorem canonicalSound7647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7647.moment H = canonicalOutput7647.moment H :=
  canonical_of_padded canonicalInput7647 canonicalOutput7647 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7648 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7648 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound7648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7648.moment H = canonicalOutput7648.moment H :=
  canonical_of_padded canonicalInput7648 canonicalOutput7648 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7649 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput7649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2769⟩

theorem canonicalSound7649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7649.moment H = canonicalOutput7649.moment H :=
  canonical_of_padded canonicalInput7649 canonicalOutput7649 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7650 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7650 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2614⟩

theorem canonicalSound7650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7650.moment H = canonicalOutput7650.moment H :=
  canonical_of_padded canonicalInput7650 canonicalOutput7650 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7651 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7651 : ExponentCode := normalNode9930

theorem canonicalSound7651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7651.moment H = canonicalOutput7651.moment H :=
  canonical_of_padded canonicalInput7651 canonicalOutput7651 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7652 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7652 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node802⟩

theorem canonicalSound7652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7652.moment H = canonicalOutput7652.moment H :=
  canonical_of_padded canonicalInput7652 canonicalOutput7652 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7653 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7653 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2689⟩

theorem canonicalSound7653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7653.moment H = canonicalOutput7653.moment H :=
  canonical_of_padded canonicalInput7653 canonicalOutput7653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7654 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7654 : ExponentCode := normalNode2934

theorem canonicalSound7654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7654.moment H = canonicalOutput7654.moment H :=
  canonical_of_padded canonicalInput7654 canonicalOutput7654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7655 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput7655 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1753⟩

theorem canonicalSound7655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7655.moment H = canonicalOutput7655.moment H :=
  canonical_of_padded canonicalInput7655 canonicalOutput7655 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7656 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput7656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound7656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7656.moment H = canonicalOutput7656.moment H :=
  canonical_of_padded canonicalInput7656 canonicalOutput7656 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7657 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -3, 2, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput7657 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩

theorem canonicalSound7657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7657.moment H = canonicalOutput7657.moment H :=
  canonical_of_padded canonicalInput7657 canonicalOutput7657 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7658 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput7658 : ExponentCode := normalNode6318

theorem canonicalSound7658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7658.moment H = canonicalOutput7658.moment H :=
  canonical_of_padded canonicalInput7658 canonicalOutput7658 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7659 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput7659 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node769⟩

theorem canonicalSound7659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7659.moment H = canonicalOutput7659.moment H :=
  canonical_of_padded canonicalInput7659 canonicalOutput7659 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7660 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput7660 : ExponentCode := normalNode3464

theorem canonicalSound7660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7660.moment H = canonicalOutput7660.moment H :=
  canonical_of_padded canonicalInput7660 canonicalOutput7660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7661 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound7661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7661.moment H = canonicalOutput7661.moment H :=
  canonical_of_padded canonicalInput7661 canonicalOutput7661 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7662 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, -1, 4, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput7662 : ExponentCode := normalNode6486

theorem canonicalSound7662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7662.moment H = canonicalOutput7662.moment H :=
  canonical_of_padded canonicalInput7662 canonicalOutput7662 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7663 : ExponentCode := ⟨6, 4, ![![-2, 0, 0, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput7663 : ExponentCode := normalNode3124

theorem canonicalSound7663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7663.moment H = canonicalOutput7663.moment H :=
  canonical_of_padded canonicalInput7663 canonicalOutput7663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7664 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput7664 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound7664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7664.moment H = canonicalOutput7664.moment H :=
  canonical_of_padded canonicalInput7664 canonicalOutput7664 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput7665 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound7665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7665.moment H = canonicalOutput7665.moment H :=
  canonical_of_padded canonicalInput7665 canonicalOutput7665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput7666 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7666 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7666.moment H = canonicalOutput7666.moment H :=
  canonical_of_padded canonicalInput7666 canonicalOutput7666 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput7667 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput7667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound7667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7667.moment H = canonicalOutput7667.moment H :=
  canonical_of_padded canonicalInput7667 canonicalOutput7667 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput7668 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7668 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1040⟩

theorem canonicalSound7668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7668.moment H = canonicalOutput7668.moment H :=
  canonical_of_padded canonicalInput7668 canonicalOutput7668 (by decide) (by decide)
    ⟨false, true, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7669 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput7669 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound7669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7669.moment H = canonicalOutput7669.moment H :=
  canonical_of_padded canonicalInput7669 canonicalOutput7669 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7670 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound7670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7670.moment H = canonicalOutput7670.moment H :=
  canonical_of_padded canonicalInput7670 canonicalOutput7670 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7671 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩

theorem canonicalSound7671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7671.moment H = canonicalOutput7671.moment H :=
  canonical_of_padded canonicalInput7671 canonicalOutput7671 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7672 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput7672 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound7672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7672.moment H = canonicalOutput7672.moment H :=
  canonical_of_padded canonicalInput7672 canonicalOutput7672 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7673 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1175⟩

theorem canonicalSound7673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7673.moment H = canonicalOutput7673.moment H :=
  canonical_of_padded canonicalInput7673 canonicalOutput7673 (by decide) (by decide)
    ⟨false, true, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7674 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput7674 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node197⟩

theorem canonicalSound7674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7674.moment H = canonicalOutput7674.moment H :=
  canonical_of_padded canonicalInput7674 canonicalOutput7674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7675 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7675 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7675.moment H = canonicalOutput7675.moment H :=
  canonical_of_padded canonicalInput7675 canonicalOutput7675 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput7676 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -2, 3, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput7676 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound7676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7676.moment H = canonicalOutput7676.moment H :=
  canonical_of_padded canonicalInput7676 canonicalOutput7676 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput7677 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput7677 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound7677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7677.moment H = canonicalOutput7677.moment H :=
  canonical_of_padded canonicalInput7677 canonicalOutput7677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7678 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput7678 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2762⟩

theorem canonicalSound7678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7678.moment H = canonicalOutput7678.moment H :=
  canonical_of_padded canonicalInput7678 canonicalOutput7678 (by decide) (by decide)
    ⟨false, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7679 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, 0, 1, -1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput7679 : ExponentCode := normalNode7867

theorem canonicalSound7679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7679.moment H = canonicalOutput7679.moment H :=
  canonical_of_padded canonicalInput7679 canonicalOutput7679 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
