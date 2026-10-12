import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24512 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound24512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24512.moment H = canonicalOutput24512.moment H :=
  canonical_of_padded canonicalInput24512 canonicalOutput24512 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput24513 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24513 : ExponentCode := normalNode10887

theorem canonicalSound24513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24513.moment H = canonicalOutput24513.moment H :=
  canonical_of_padded canonicalInput24513 canonicalOutput24513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24514 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24514 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1307⟩

theorem canonicalSound24514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24514.moment H = canonicalOutput24514.moment H :=
  canonical_of_padded canonicalInput24514 canonicalOutput24514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24515 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24515 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound24515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24515.moment H = canonicalOutput24515.moment H :=
  canonical_of_padded canonicalInput24515 canonicalOutput24515 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput24516 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24516 : ExponentCode := normalNode7408

theorem canonicalSound24516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24516.moment H = canonicalOutput24516.moment H :=
  canonical_of_padded canonicalInput24516 canonicalOutput24516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput24517 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24517 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound24517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24517.moment H = canonicalOutput24517.moment H :=
  canonical_of_padded canonicalInput24517 canonicalOutput24517 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24518 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![-1, 2, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput24518 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound24518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24518.moment H = canonicalOutput24518.moment H :=
  canonical_of_padded canonicalInput24518 canonicalOutput24518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24519 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![-1, 2, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput24519 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound24519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24519.moment H = canonicalOutput24519.moment H :=
  canonical_of_padded canonicalInput24519 canonicalOutput24519 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24520 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput24520 : ExponentCode := normalNode10562

theorem canonicalSound24520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24520.moment H = canonicalOutput24520.moment H :=
  canonical_of_padded canonicalInput24520 canonicalOutput24520 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24521 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24521 : ExponentCode := normalNode10620

theorem canonicalSound24521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24521.moment H = canonicalOutput24521.moment H :=
  canonical_of_padded canonicalInput24521 canonicalOutput24521 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24522 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput24522 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound24522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24522.moment H = canonicalOutput24522.moment H :=
  canonical_of_padded canonicalInput24522 canonicalOutput24522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24523 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, -1, 2, -1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput24523 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound24523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24523.moment H = canonicalOutput24523.moment H :=
  canonical_of_padded canonicalInput24523 canonicalOutput24523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24524 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![0, -1, 4, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput24524 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node42⟩

theorem canonicalSound24524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24524.moment H = canonicalOutput24524.moment H :=
  canonical_of_padded canonicalInput24524 canonicalOutput24524 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24525 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24525 : ExponentCode := normalNode11029

theorem canonicalSound24525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24525.moment H = canonicalOutput24525.moment H :=
  canonical_of_padded canonicalInput24525 canonicalOutput24525 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24526 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24526 : ExponentCode := normalNode11130

theorem canonicalSound24526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24526.moment H = canonicalOutput24526.moment H :=
  canonical_of_padded canonicalInput24526 canonicalOutput24526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24527 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24527 : ExponentCode := normalNode11091

theorem canonicalSound24527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24527.moment H = canonicalOutput24527.moment H :=
  canonical_of_padded canonicalInput24527 canonicalOutput24527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24528 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24528 : ExponentCode := normalNode9710

theorem canonicalSound24528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24528.moment H = canonicalOutput24528.moment H :=
  canonical_of_padded canonicalInput24528 canonicalOutput24528 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput24529 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput24529 : ExponentCode := normalNode11029

theorem canonicalSound24529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24529.moment H = canonicalOutput24529.moment H :=
  canonical_of_padded canonicalInput24529 canonicalOutput24529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24530 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24530 : ExponentCode := normalNode11091

theorem canonicalSound24530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24530.moment H = canonicalOutput24530.moment H :=
  canonical_of_padded canonicalInput24530 canonicalOutput24530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24531 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput24531 : ExponentCode := normalNode11139

theorem canonicalSound24531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24531.moment H = canonicalOutput24531.moment H :=
  canonical_of_padded canonicalInput24531 canonicalOutput24531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24532 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput24532 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node742⟩

theorem canonicalSound24532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24532.moment H = canonicalOutput24532.moment H :=
  canonical_of_padded canonicalInput24532 canonicalOutput24532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24533 : ExponentCode := ⟨5, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput24533 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node732⟩

theorem canonicalSound24533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24533.moment H = canonicalOutput24533.moment H :=
  canonical_of_padded canonicalInput24533 canonicalOutput24533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24534 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput24534 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node51⟩

theorem canonicalSound24534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24534.moment H = canonicalOutput24534.moment H :=
  canonical_of_padded canonicalInput24534 canonicalOutput24534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24535 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput24535 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound24535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24535.moment H = canonicalOutput24535.moment H :=
  canonical_of_padded canonicalInput24535 canonicalOutput24535 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24536 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput24536 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound24536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24536.moment H = canonicalOutput24536.moment H :=
  canonical_of_padded canonicalInput24536 canonicalOutput24536 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24537 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 0, 2, -2], ![0, 2, 1, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput24537 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound24537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24537.moment H = canonicalOutput24537.moment H :=
  canonical_of_padded canonicalInput24537 canonicalOutput24537 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24538 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24538 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound24538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24538.moment H = canonicalOutput24538.moment H :=
  canonical_of_padded canonicalInput24538 canonicalOutput24538 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput24539 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24539 : ExponentCode := normalNode7408

theorem canonicalSound24539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24539.moment H = canonicalOutput24539.moment H :=
  canonical_of_padded canonicalInput24539 canonicalOutput24539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput24540 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24540 : ExponentCode := normalNode9748

theorem canonicalSound24540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24540.moment H = canonicalOutput24540.moment H :=
  canonical_of_padded canonicalInput24540 canonicalOutput24540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput24541 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24541 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound24541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24541.moment H = canonicalOutput24541.moment H :=
  canonical_of_padded canonicalInput24541 canonicalOutput24541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24542 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput24542 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound24542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24542.moment H = canonicalOutput24542.moment H :=
  canonical_of_padded canonicalInput24542 canonicalOutput24542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24543 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound24543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24543.moment H = canonicalOutput24543.moment H :=
  canonical_of_padded canonicalInput24543 canonicalOutput24543 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24544 : ExponentCode := ⟨4, 4, ![![0, -1, -3, 4], ![0, 1, 1, -2], ![0, 1, 2, -3], ![0, -1, 0, 1]]⟩

def canonicalOutput24544 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound24544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24544.moment H = canonicalOutput24544.moment H :=
  canonical_of_padded canonicalInput24544 canonicalOutput24544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24545 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput24545 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound24545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24545.moment H = canonicalOutput24545.moment H :=
  canonical_of_padded canonicalInput24545 canonicalOutput24545 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput24546 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![0, 2, 1, -3], ![0, -1, 2, -1]]⟩

def canonicalOutput24546 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound24546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24546.moment H = canonicalOutput24546.moment H :=
  canonical_of_padded canonicalInput24546 canonicalOutput24546 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24547 : ExponentCode := ⟨3, 4, ![![0, -1, -3, 4], ![0, 2, 2, -4], ![0, -1, 1, 0]]⟩

def canonicalOutput24547 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound24547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24547.moment H = canonicalOutput24547.moment H :=
  canonical_of_padded canonicalInput24547 canonicalOutput24547 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24548 : ExponentCode := ⟨4, 5, ![![0, -1, -2, -1, 4], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput24548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node449⟩

theorem canonicalSound24548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24548.moment H = canonicalOutput24548.moment H :=
  canonical_of_padded canonicalInput24548 canonicalOutput24548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24549 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 0, 3], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput24549 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound24549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24549.moment H = canonicalOutput24549.moment H :=
  canonical_of_padded canonicalInput24549 canonicalOutput24549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24550 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput24550 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound24550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24550.moment H = canonicalOutput24550.moment H :=
  canonical_of_padded canonicalInput24550 canonicalOutput24550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24551 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 1, 2], ![0, -1, 0, -1, 2], ![0, 0, 2, 1, -3], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput24551 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound24551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24551.moment H = canonicalOutput24551.moment H :=
  canonical_of_padded canonicalInput24551 canonicalOutput24551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24552 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24552 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound24552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24552.moment H = canonicalOutput24552.moment H :=
  canonical_of_padded canonicalInput24552 canonicalOutput24552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24553 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput24553 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound24553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24553.moment H = canonicalOutput24553.moment H :=
  canonical_of_padded canonicalInput24553 canonicalOutput24553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24554 : ExponentCode := ⟨4, 5, ![![0, -1, -2, 2, 1], ![0, -1, 0, -1, 2], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput24554 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound24554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24554.moment H = canonicalOutput24554.moment H :=
  canonical_of_padded canonicalInput24554 canonicalOutput24554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24555 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, -1, 0, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput24555 : ExponentCode := normalNode8922

theorem canonicalSound24555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24555.moment H = canonicalOutput24555.moment H :=
  canonical_of_padded canonicalInput24555 canonicalOutput24555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24556 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput24556 : ExponentCode := normalNode9368

theorem canonicalSound24556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24556.moment H = canonicalOutput24556.moment H :=
  canonical_of_padded canonicalInput24556 canonicalOutput24556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24557 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, -1, 1, 1], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput24557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound24557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24557.moment H = canonicalOutput24557.moment H :=
  canonical_of_padded canonicalInput24557 canonicalOutput24557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24558 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput24558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound24558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24558.moment H = canonicalOutput24558.moment H :=
  canonical_of_padded canonicalInput24558 canonicalOutput24558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24559 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput24559 : ExponentCode := normalNode7904

theorem canonicalSound24559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24559.moment H = canonicalOutput24559.moment H :=
  canonical_of_padded canonicalInput24559 canonicalOutput24559 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24560 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24560 : ExponentCode := normalNode10242

theorem canonicalSound24560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24560.moment H = canonicalOutput24560.moment H :=
  canonical_of_padded canonicalInput24560 canonicalOutput24560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24561 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput24561 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2436⟩

theorem canonicalSound24561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24561.moment H = canonicalOutput24561.moment H :=
  canonical_of_padded canonicalInput24561 canonicalOutput24561 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24562 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 0, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24562 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2737⟩

theorem canonicalSound24562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24562.moment H = canonicalOutput24562.moment H :=
  canonical_of_padded canonicalInput24562 canonicalOutput24562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24563 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 0, 1], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput24563 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound24563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24563.moment H = canonicalOutput24563.moment H :=
  canonical_of_padded canonicalInput24563 canonicalOutput24563 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24564 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 0, 1], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24564 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1178⟩

theorem canonicalSound24564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24564.moment H = canonicalOutput24564.moment H :=
  canonical_of_padded canonicalInput24564 canonicalOutput24564 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24565 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24565 : ExponentCode := normalNode10664

theorem canonicalSound24565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24565.moment H = canonicalOutput24565.moment H :=
  canonical_of_padded canonicalInput24565 canonicalOutput24565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24566 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24566 : ExponentCode := normalNode10662

theorem canonicalSound24566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24566.moment H = canonicalOutput24566.moment H :=
  canonical_of_padded canonicalInput24566 canonicalOutput24566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24567 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 1, 0], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24567 : ExponentCode := normalNode10665

theorem canonicalSound24567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24567.moment H = canonicalOutput24567.moment H :=
  canonical_of_padded canonicalInput24567 canonicalOutput24567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24568 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput24568 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound24568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24568.moment H = canonicalOutput24568.moment H :=
  canonical_of_padded canonicalInput24568 canonicalOutput24568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24569 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24569 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound24569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24569.moment H = canonicalOutput24569.moment H :=
  canonical_of_padded canonicalInput24569 canonicalOutput24569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24570 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput24570 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound24570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24570.moment H = canonicalOutput24570.moment H :=
  canonical_of_padded canonicalInput24570 canonicalOutput24570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24571 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24571 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound24571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24571.moment H = canonicalOutput24571.moment H :=
  canonical_of_padded canonicalInput24571 canonicalOutput24571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24572 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![-1, 0, 4, -3], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24572 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1175⟩

theorem canonicalSound24572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24572.moment H = canonicalOutput24572.moment H :=
  canonical_of_padded canonicalInput24572 canonicalOutput24572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24573 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24573 : ExponentCode := normalNode10656

theorem canonicalSound24573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24573.moment H = canonicalOutput24573.moment H :=
  canonical_of_padded canonicalInput24573 canonicalOutput24573 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24574 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput24574 : ExponentCode := normalNode11085

theorem canonicalSound24574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24574.moment H = canonicalOutput24574.moment H :=
  canonical_of_padded canonicalInput24574 canonicalOutput24574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24575 : ExponentCode := ⟨5, 4, ![![0, -1, -2, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput24575 : ExponentCode := normalNode11086

theorem canonicalSound24575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24575.moment H = canonicalOutput24575.moment H :=
  canonical_of_padded canonicalInput24575 canonicalOutput24575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
