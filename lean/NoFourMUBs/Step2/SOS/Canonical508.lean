import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32512 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32512 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32512.moment H = canonicalOutput32512.moment H :=
  canonical_of_padded canonicalInput32512 canonicalOutput32512 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32513 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32513 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32513.moment H = canonicalOutput32513.moment H :=
  canonical_of_padded canonicalInput32513 canonicalOutput32513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32514 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32514 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32514.moment H = canonicalOutput32514.moment H :=
  canonical_of_padded canonicalInput32514 canonicalOutput32514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32515 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32515 : ExponentCode := normalNode8336

theorem canonicalSound32515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32515.moment H = canonicalOutput32515.moment H :=
  canonical_of_padded canonicalInput32515 canonicalOutput32515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput32516 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32516 : ExponentCode := normalNode8431

theorem canonicalSound32516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32516.moment H = canonicalOutput32516.moment H :=
  canonical_of_padded canonicalInput32516 canonicalOutput32516 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32517 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32517 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound32517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32517.moment H = canonicalOutput32517.moment H :=
  canonical_of_padded canonicalInput32517 canonicalOutput32517 (by decide) (by decide)
    ⟨false, true, canonicalPermutation230, canonicalPermutation359⟩ (by decide +kernel) hH

def canonicalInput32518 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1054⟩

theorem canonicalSound32518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32518.moment H = canonicalOutput32518.moment H :=
  canonical_of_padded canonicalInput32518 canonicalOutput32518 (by decide) (by decide)
    ⟨false, true, canonicalPermutation251, canonicalPermutation359⟩ (by decide +kernel) hH

def canonicalInput32519 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32519 : ExponentCode := normalNode8431

theorem canonicalSound32519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32519.moment H = canonicalOutput32519.moment H :=
  canonical_of_padded canonicalInput32519 canonicalOutput32519 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32520 : ExponentCode := ⟨6, 6, ![![0, 1, 0, -2, 1, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32520 : ExponentCode := normalNode8336

theorem canonicalSound32520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32520.moment H = canonicalOutput32520.moment H :=
  canonical_of_padded canonicalInput32520 canonicalOutput32520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput32521 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput32521 : ExponentCode := normalNode2474

theorem canonicalSound32521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32521.moment H = canonicalOutput32521.moment H :=
  canonical_of_padded canonicalInput32521 canonicalOutput32521 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation381, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32522 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32522 : ExponentCode := normalNode10179

theorem canonicalSound32522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32522.moment H = canonicalOutput32522.moment H :=
  canonical_of_padded canonicalInput32522 canonicalOutput32522 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32523 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32523 : ExponentCode := normalNode9791

theorem canonicalSound32523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32523.moment H = canonicalOutput32523.moment H :=
  canonical_of_padded canonicalInput32523 canonicalOutput32523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32524 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32524 : ExponentCode := normalNode3307

theorem canonicalSound32524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32524.moment H = canonicalOutput32524.moment H :=
  canonical_of_padded canonicalInput32524 canonicalOutput32524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32525 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32525 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3130⟩

theorem canonicalSound32525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32525.moment H = canonicalOutput32525.moment H :=
  canonical_of_padded canonicalInput32525 canonicalOutput32525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32526 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32526 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3364⟩

theorem canonicalSound32526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32526.moment H = canonicalOutput32526.moment H :=
  canonical_of_padded canonicalInput32526 canonicalOutput32526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32527 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32527 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3344⟩

theorem canonicalSound32527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32527.moment H = canonicalOutput32527.moment H :=
  canonical_of_padded canonicalInput32527 canonicalOutput32527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32528 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32528 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3116⟩

theorem canonicalSound32528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32528.moment H = canonicalOutput32528.moment H :=
  canonical_of_padded canonicalInput32528 canonicalOutput32528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32529 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput32529 : ExponentCode := normalNode1407

theorem canonicalSound32529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32529.moment H = canonicalOutput32529.moment H :=
  canonical_of_padded canonicalInput32529 canonicalOutput32529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32530 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput32530 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3344⟩

theorem canonicalSound32530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32530.moment H = canonicalOutput32530.moment H :=
  canonical_of_padded canonicalInput32530 canonicalOutput32530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32531 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput32531 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3116⟩

theorem canonicalSound32531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32531.moment H = canonicalOutput32531.moment H :=
  canonical_of_padded canonicalInput32531 canonicalOutput32531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32532 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32532 : ExponentCode := normalNode1407

theorem canonicalSound32532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32532.moment H = canonicalOutput32532.moment H :=
  canonical_of_padded canonicalInput32532 canonicalOutput32532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32533 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32533 : ExponentCode := normalNode4283

theorem canonicalSound32533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32533.moment H = canonicalOutput32533.moment H :=
  canonical_of_padded canonicalInput32533 canonicalOutput32533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation250, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32534 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32534 : ExponentCode := normalNode9275

theorem canonicalSound32534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32534.moment H = canonicalOutput32534.moment H :=
  canonical_of_padded canonicalInput32534 canonicalOutput32534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation250, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32535 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput32535 : ExponentCode := normalNode5286

theorem canonicalSound32535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32535.moment H = canonicalOutput32535.moment H :=
  canonical_of_padded canonicalInput32535 canonicalOutput32535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation87, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32536 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32536 : ExponentCode := normalNode1885

theorem canonicalSound32536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32536.moment H = canonicalOutput32536.moment H :=
  canonical_of_padded canonicalInput32536 canonicalOutput32536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32537 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput32537 : ExponentCode := normalNode3145

theorem canonicalSound32537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32537.moment H = canonicalOutput32537.moment H :=
  canonical_of_padded canonicalInput32537 canonicalOutput32537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32538 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput32538 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3002⟩

theorem canonicalSound32538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32538.moment H = canonicalOutput32538.moment H :=
  canonical_of_padded canonicalInput32538 canonicalOutput32538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput32539 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32539 : ExponentCode := normalNode2474

theorem canonicalSound32539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32539.moment H = canonicalOutput32539.moment H :=
  canonical_of_padded canonicalInput32539 canonicalOutput32539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32540 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32540 : ExponentCode := normalNode1882

theorem canonicalSound32540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32540.moment H = canonicalOutput32540.moment H :=
  canonical_of_padded canonicalInput32540 canonicalOutput32540 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32541 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32541 : ExponentCode := normalNode7271

theorem canonicalSound32541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32541.moment H = canonicalOutput32541.moment H :=
  canonical_of_padded canonicalInput32541 canonicalOutput32541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32542 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput32542 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound32542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32542.moment H = canonicalOutput32542.moment H :=
  canonical_of_padded canonicalInput32542 canonicalOutput32542 (by decide) (by decide)
    ⟨false, true, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput32543 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput32543 : ExponentCode := normalNode2918

theorem canonicalSound32543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32543.moment H = canonicalOutput32543.moment H :=
  canonical_of_padded canonicalInput32543 canonicalOutput32543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32544 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32544 : ExponentCode := normalNode3141

theorem canonicalSound32544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32544.moment H = canonicalOutput32544.moment H :=
  canonical_of_padded canonicalInput32544 canonicalOutput32544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32545 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput32545 : ExponentCode := normalNode1776

theorem canonicalSound32545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32545.moment H = canonicalOutput32545.moment H :=
  canonical_of_padded canonicalInput32545 canonicalOutput32545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32546 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput32546 : ExponentCode := normalNode3389

theorem canonicalSound32546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32546.moment H = canonicalOutput32546.moment H :=
  canonical_of_padded canonicalInput32546 canonicalOutput32546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32547 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput32547 : ExponentCode := normalNode3389

theorem canonicalSound32547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32547.moment H = canonicalOutput32547.moment H :=
  canonical_of_padded canonicalInput32547 canonicalOutput32547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32548 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput32548 : ExponentCode := normalNode7681

theorem canonicalSound32548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32548.moment H = canonicalOutput32548.moment H :=
  canonical_of_padded canonicalInput32548 canonicalOutput32548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32549 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput32549 : ExponentCode := normalNode1315

theorem canonicalSound32549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32549.moment H = canonicalOutput32549.moment H :=
  canonical_of_padded canonicalInput32549 canonicalOutput32549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32550 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 3, 0]]⟩

def canonicalOutput32550 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound32550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32550.moment H = canonicalOutput32550.moment H :=
  canonical_of_padded canonicalInput32550 canonicalOutput32550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32551 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput32551 : ExponentCode := normalNode1315

theorem canonicalSound32551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32551.moment H = canonicalOutput32551.moment H :=
  canonical_of_padded canonicalInput32551 canonicalOutput32551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32552 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32552 : ExponentCode := normalNode1315

theorem canonicalSound32552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32552.moment H = canonicalOutput32552.moment H :=
  canonical_of_padded canonicalInput32552 canonicalOutput32552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32553 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, -1, 3, 0]]⟩

def canonicalOutput32553 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound32553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32553.moment H = canonicalOutput32553.moment H :=
  canonical_of_padded canonicalInput32553 canonicalOutput32553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32554 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32554 : ExponentCode := normalNode1315

theorem canonicalSound32554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32554.moment H = canonicalOutput32554.moment H :=
  canonical_of_padded canonicalInput32554 canonicalOutput32554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32555 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -2, 4, 0]]⟩

def canonicalOutput32555 : ExponentCode := normalNode463

theorem canonicalSound32555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32555.moment H = canonicalOutput32555.moment H :=
  canonical_of_padded canonicalInput32555 canonicalOutput32555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32556 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput32556 : ExponentCode := normalNode2474

theorem canonicalSound32556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32556.moment H = canonicalOutput32556.moment H :=
  canonical_of_padded canonicalInput32556 canonicalOutput32556 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32557 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput32557 : ExponentCode := normalNode2102

theorem canonicalSound32557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32557.moment H = canonicalOutput32557.moment H :=
  canonical_of_padded canonicalInput32557 canonicalOutput32557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32558 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput32558 : ExponentCode := normalNode5908

theorem canonicalSound32558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32558.moment H = canonicalOutput32558.moment H :=
  canonical_of_padded canonicalInput32558 canonicalOutput32558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32559 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput32559 : ExponentCode := normalNode2103

theorem canonicalSound32559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32559.moment H = canonicalOutput32559.moment H :=
  canonical_of_padded canonicalInput32559 canonicalOutput32559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32560 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32560 : ExponentCode := normalNode10180

theorem canonicalSound32560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32560.moment H = canonicalOutput32560.moment H :=
  canonical_of_padded canonicalInput32560 canonicalOutput32560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32561 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32561 : ExponentCode := normalNode9792

theorem canonicalSound32561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32561.moment H = canonicalOutput32561.moment H :=
  canonical_of_padded canonicalInput32561 canonicalOutput32561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32562 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32562 : ExponentCode := normalNode3305

theorem canonicalSound32562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32562.moment H = canonicalOutput32562.moment H :=
  canonical_of_padded canonicalInput32562 canonicalOutput32562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32563 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32563 : ExponentCode := normalNode3537

theorem canonicalSound32563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32563.moment H = canonicalOutput32563.moment H :=
  canonical_of_padded canonicalInput32563 canonicalOutput32563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32564 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32564 : ExponentCode := normalNode7756

theorem canonicalSound32564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32564.moment H = canonicalOutput32564.moment H :=
  canonical_of_padded canonicalInput32564 canonicalOutput32564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32565 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32565 : ExponentCode := normalNode7324

theorem canonicalSound32565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32565.moment H = canonicalOutput32565.moment H :=
  canonical_of_padded canonicalInput32565 canonicalOutput32565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32566 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32566 : ExponentCode := normalNode3251

theorem canonicalSound32566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32566.moment H = canonicalOutput32566.moment H :=
  canonical_of_padded canonicalInput32566 canonicalOutput32566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32567 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput32567 : ExponentCode := normalNode1410

theorem canonicalSound32567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32567.moment H = canonicalOutput32567.moment H :=
  canonical_of_padded canonicalInput32567 canonicalOutput32567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32568 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput32568 : ExponentCode := normalNode7329

theorem canonicalSound32568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32568.moment H = canonicalOutput32568.moment H :=
  canonical_of_padded canonicalInput32568 canonicalOutput32568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32569 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput32569 : ExponentCode := normalNode3258

theorem canonicalSound32569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32569.moment H = canonicalOutput32569.moment H :=
  canonical_of_padded canonicalInput32569 canonicalOutput32569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32570 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32570 : ExponentCode := normalNode1405

theorem canonicalSound32570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32570.moment H = canonicalOutput32570.moment H :=
  canonical_of_padded canonicalInput32570 canonicalOutput32570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32571 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput32571 : ExponentCode := normalNode9788

theorem canonicalSound32571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32571.moment H = canonicalOutput32571.moment H :=
  canonical_of_padded canonicalInput32571 canonicalOutput32571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32572 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 0, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput32572 : ExponentCode := normalNode9788

theorem canonicalSound32572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32572.moment H = canonicalOutput32572.moment H :=
  canonical_of_padded canonicalInput32572 canonicalOutput32572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32573 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 0, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput32573 : ExponentCode := normalNode2427

theorem canonicalSound32573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32573.moment H = canonicalOutput32573.moment H :=
  canonical_of_padded canonicalInput32573 canonicalOutput32573 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32574 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, -2, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32574 : ExponentCode := normalNode9792

theorem canonicalSound32574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32574.moment H = canonicalOutput32574.moment H :=
  canonical_of_padded canonicalInput32574 canonicalOutput32574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32575 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 0, -3, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32575 : ExponentCode := normalNode3305

theorem canonicalSound32575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32575.moment H = canonicalOutput32575.moment H :=
  canonical_of_padded canonicalInput32575 canonicalOutput32575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
