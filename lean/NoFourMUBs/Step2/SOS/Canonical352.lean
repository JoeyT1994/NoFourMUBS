import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22528 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22528 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1379

theorem canonicalSound22528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22528.moment H = canonicalOutput22528.moment H :=
  canonical_of_padded canonicalInput22528 canonicalOutput22528 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22529 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![-1, 1, 4, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22529 : ExponentCode := normalNode9357

theorem canonicalSound22529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22529.moment H = canonicalOutput22529.moment H :=
  canonical_of_padded canonicalInput22529 canonicalOutput22529 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22530 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 0, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput22530 : ExponentCode := normalNode10547

theorem canonicalSound22530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22530.moment H = canonicalOutput22530.moment H :=
  canonical_of_padded canonicalInput22530 canonicalOutput22530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22531 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput22531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound22531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22531.moment H = canonicalOutput22531.moment H :=
  canonical_of_padded canonicalInput22531 canonicalOutput22531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22532 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22532 : ExponentCode := normalNode10564

theorem canonicalSound22532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22532.moment H = canonicalOutput22532.moment H :=
  canonical_of_padded canonicalInput22532 canonicalOutput22532 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22533 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput22533 : ExponentCode := normalNode10669

theorem canonicalSound22533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22533.moment H = canonicalOutput22533.moment H :=
  canonical_of_padded canonicalInput22533 canonicalOutput22533 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22534 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput22534 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩

theorem canonicalSound22534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22534.moment H = canonicalOutput22534.moment H :=
  canonical_of_padded canonicalInput22534 canonicalOutput22534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22535 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput22535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1282⟩

theorem canonicalSound22535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22535.moment H = canonicalOutput22535.moment H :=
  canonical_of_padded canonicalInput22535 canonicalOutput22535 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22536 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput22536 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound22536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22536.moment H = canonicalOutput22536.moment H :=
  canonical_of_padded canonicalInput22536 canonicalOutput22536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22537 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput22537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound22537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22537.moment H = canonicalOutput22537.moment H :=
  canonical_of_padded canonicalInput22537 canonicalOutput22537 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22538 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput22538 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound22538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22538.moment H = canonicalOutput22538.moment H :=
  canonical_of_padded canonicalInput22538 canonicalOutput22538 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22539 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22539 : ExponentCode := normalNode10996

theorem canonicalSound22539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22539.moment H = canonicalOutput22539.moment H :=
  canonical_of_padded canonicalInput22539 canonicalOutput22539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22540 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22540 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound22540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22540.moment H = canonicalOutput22540.moment H :=
  canonical_of_padded canonicalInput22540 canonicalOutput22540 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22541 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput22541 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound22541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22541.moment H = canonicalOutput22541.moment H :=
  canonical_of_padded canonicalInput22541 canonicalOutput22541 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22542 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound22542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22542.moment H = canonicalOutput22542.moment H :=
  canonical_of_padded canonicalInput22542 canonicalOutput22542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22543 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound22543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22543.moment H = canonicalOutput22543.moment H :=
  canonical_of_padded canonicalInput22543 canonicalOutput22543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22544 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput22544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound22544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22544.moment H = canonicalOutput22544.moment H :=
  canonical_of_padded canonicalInput22544 canonicalOutput22544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22545 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput22545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1094⟩

theorem canonicalSound22545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22545.moment H = canonicalOutput22545.moment H :=
  canonical_of_padded canonicalInput22545 canonicalOutput22545 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22546 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22546 : ExponentCode := normalNode9973

theorem canonicalSound22546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22546.moment H = canonicalOutput22546.moment H :=
  canonical_of_padded canonicalInput22546 canonicalOutput22546 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput22547 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22547 : ExponentCode := normalNode11140

theorem canonicalSound22547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22547.moment H = canonicalOutput22547.moment H :=
  canonical_of_padded canonicalInput22547 canonicalOutput22547 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22548 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound22548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22548.moment H = canonicalOutput22548.moment H :=
  canonical_of_padded canonicalInput22548 canonicalOutput22548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22549 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22549 : ExponentCode := normalNode9973

theorem canonicalSound22549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22549.moment H = canonicalOutput22549.moment H :=
  canonical_of_padded canonicalInput22549 canonicalOutput22549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22550 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22550 : ExponentCode := normalNode9748

theorem canonicalSound22550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22550.moment H = canonicalOutput22550.moment H :=
  canonical_of_padded canonicalInput22550 canonicalOutput22550 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22551 : ExponentCode := ⟨3, 4, ![![-1, 1, -3, 3], ![0, -1, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput22551 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound22551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22551.moment H = canonicalOutput22551.moment H :=
  canonical_of_padded canonicalInput22551 canonicalOutput22551 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22552 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22552 : ExponentCode := normalNode10980

theorem canonicalSound22552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22552.moment H = canonicalOutput22552.moment H :=
  canonical_of_padded canonicalInput22552 canonicalOutput22552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22553 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22553 : ExponentCode := normalNode10981

theorem canonicalSound22553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22553.moment H = canonicalOutput22553.moment H :=
  canonical_of_padded canonicalInput22553 canonicalOutput22553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22554 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22554 : ExponentCode := normalNode10987

theorem canonicalSound22554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22554.moment H = canonicalOutput22554.moment H :=
  canonical_of_padded canonicalInput22554 canonicalOutput22554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22555 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 0, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22555 : ExponentCode := normalNode10991

theorem canonicalSound22555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22555.moment H = canonicalOutput22555.moment H :=
  canonical_of_padded canonicalInput22555 canonicalOutput22555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22556 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput22556 : ExponentCode := normalNode9701

theorem canonicalSound22556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22556.moment H = canonicalOutput22556.moment H :=
  canonical_of_padded canonicalInput22556 canonicalOutput22556 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22557 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput22557 : ExponentCode := normalNode9730

theorem canonicalSound22557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22557.moment H = canonicalOutput22557.moment H :=
  canonical_of_padded canonicalInput22557 canonicalOutput22557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22558 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput22558 : ExponentCode := normalNode9706

theorem canonicalSound22558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22558.moment H = canonicalOutput22558.moment H :=
  canonical_of_padded canonicalInput22558 canonicalOutput22558 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22559 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22559 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node267⟩

theorem canonicalSound22559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22559.moment H = canonicalOutput22559.moment H :=
  canonical_of_padded canonicalInput22559 canonicalOutput22559 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22560 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 0, 0], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22560 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound22560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22560.moment H = canonicalOutput22560.moment H :=
  canonical_of_padded canonicalInput22560 canonicalOutput22560 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22561 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput22561 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound22561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22561.moment H = canonicalOutput22561.moment H :=
  canonical_of_padded canonicalInput22561 canonicalOutput22561 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22562 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput22562 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound22562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22562.moment H = canonicalOutput22562.moment H :=
  canonical_of_padded canonicalInput22562 canonicalOutput22562 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22563 : ExponentCode := ⟨3, 4, ![![-1, 1, -3, 3], ![0, 0, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22563 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node24⟩

theorem canonicalSound22563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22563.moment H = canonicalOutput22563.moment H :=
  canonical_of_padded canonicalInput22563 canonicalOutput22563 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22564 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22564 : ExponentCode := normalNode10944

theorem canonicalSound22564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22564.moment H = canonicalOutput22564.moment H :=
  canonical_of_padded canonicalInput22564 canonicalOutput22564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22565 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22565 : ExponentCode := normalNode10947

theorem canonicalSound22565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22565.moment H = canonicalOutput22565.moment H :=
  canonical_of_padded canonicalInput22565 canonicalOutput22565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22566 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22566 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩

theorem canonicalSound22566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22566.moment H = canonicalOutput22566.moment H :=
  canonical_of_padded canonicalInput22566 canonicalOutput22566 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22567 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput22567 : ExponentCode := normalNode10977

theorem canonicalSound22567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22567.moment H = canonicalOutput22567.moment H :=
  canonical_of_padded canonicalInput22567 canonicalOutput22567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22568 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22568 : ExponentCode := normalNode10994

theorem canonicalSound22568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22568.moment H = canonicalOutput22568.moment H :=
  canonical_of_padded canonicalInput22568 canonicalOutput22568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22569 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22569 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node267⟩

theorem canonicalSound22569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22569.moment H = canonicalOutput22569.moment H :=
  canonical_of_padded canonicalInput22569 canonicalOutput22569 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22570 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22570 : ExponentCode := normalNode7952

theorem canonicalSound22570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22570.moment H = canonicalOutput22570.moment H :=
  canonical_of_padded canonicalInput22570 canonicalOutput22570 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput22571 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 1, -1]]⟩

def canonicalOutput22571 : ExponentCode := normalNode11000

theorem canonicalSound22571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22571.moment H = canonicalOutput22571.moment H :=
  canonical_of_padded canonicalInput22571 canonicalOutput22571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22572 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput22572 : ExponentCode := normalNode7952

theorem canonicalSound22572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22572.moment H = canonicalOutput22572.moment H :=
  canonical_of_padded canonicalInput22572 canonicalOutput22572 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22573 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22573 : ExponentCode := normalNode10963

theorem canonicalSound22573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22573.moment H = canonicalOutput22573.moment H :=
  canonical_of_padded canonicalInput22573 canonicalOutput22573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22574 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput22574 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1218⟩

theorem canonicalSound22574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22574.moment H = canonicalOutput22574.moment H :=
  canonical_of_padded canonicalInput22574 canonicalOutput22574 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22575 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput22575 : ExponentCode := normalNode11140

theorem canonicalSound22575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22575.moment H = canonicalOutput22575.moment H :=
  canonical_of_padded canonicalInput22575 canonicalOutput22575 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22576 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput22576 : ExponentCode := normalNode10964

theorem canonicalSound22576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22576.moment H = canonicalOutput22576.moment H :=
  canonical_of_padded canonicalInput22576 canonicalOutput22576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22577 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput22577 : ExponentCode := normalNode10982

theorem canonicalSound22577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22577.moment H = canonicalOutput22577.moment H :=
  canonical_of_padded canonicalInput22577 canonicalOutput22577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22578 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -2, 0, 1]]⟩

def canonicalOutput22578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound22578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22578.moment H = canonicalOutput22578.moment H :=
  canonical_of_padded canonicalInput22578 canonicalOutput22578 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22579 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput22579 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1197⟩

theorem canonicalSound22579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22579.moment H = canonicalOutput22579.moment H :=
  canonical_of_padded canonicalInput22579 canonicalOutput22579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22580 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![0, 0, 1, -1]]⟩

def canonicalOutput22580 : ExponentCode := normalNode7952

theorem canonicalSound22580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22580.moment H = canonicalOutput22580.moment H :=
  canonical_of_padded canonicalInput22580 canonicalOutput22580 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22581 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22581 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node168⟩

theorem canonicalSound22581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22581.moment H = canonicalOutput22581.moment H :=
  canonical_of_padded canonicalInput22581 canonicalOutput22581 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22582 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput22582 : ExponentCode := normalNode11002

theorem canonicalSound22582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22582.moment H = canonicalOutput22582.moment H :=
  canonical_of_padded canonicalInput22582 canonicalOutput22582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22583 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22583 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1197⟩

theorem canonicalSound22583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22583.moment H = canonicalOutput22583.moment H :=
  canonical_of_padded canonicalInput22583 canonicalOutput22583 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22584 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22584 : ExponentCode := normalNode10949

theorem canonicalSound22584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22584.moment H = canonicalOutput22584.moment H :=
  canonical_of_padded canonicalInput22584 canonicalOutput22584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22585 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 0, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22585 : ExponentCode := normalNode10996

theorem canonicalSound22585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22585.moment H = canonicalOutput22585.moment H :=
  canonical_of_padded canonicalInput22585 canonicalOutput22585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22586 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22586 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound22586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22586.moment H = canonicalOutput22586.moment H :=
  canonical_of_padded canonicalInput22586 canonicalOutput22586 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22587 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput22587 : ExponentCode := normalNode11191

theorem canonicalSound22587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22587.moment H = canonicalOutput22587.moment H :=
  canonical_of_padded canonicalInput22587 canonicalOutput22587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22588 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22588 : ExponentCode := normalNode10969

theorem canonicalSound22588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22588.moment H = canonicalOutput22588.moment H :=
  canonical_of_padded canonicalInput22588 canonicalOutput22588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22589 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput22589 : ExponentCode := normalNode10969

theorem canonicalSound22589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22589.moment H = canonicalOutput22589.moment H :=
  canonical_of_padded canonicalInput22589 canonicalOutput22589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22590 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput22590 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node289⟩

theorem canonicalSound22590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22590.moment H = canonicalOutput22590.moment H :=
  canonical_of_padded canonicalInput22590 canonicalOutput22590 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22591 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22591 : ExponentCode := normalNode10945

theorem canonicalSound22591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22591.moment H = canonicalOutput22591.moment H :=
  canonical_of_padded canonicalInput22591 canonicalOutput22591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
