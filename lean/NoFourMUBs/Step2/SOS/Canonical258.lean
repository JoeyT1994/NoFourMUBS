import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16512 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput16512 : ExponentCode := normalNode3912

theorem canonicalSound16512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16512.moment H = canonicalOutput16512.moment H :=
  canonical_of_padded canonicalInput16512 canonicalOutput16512 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16513 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput16513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound16513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16513.moment H = canonicalOutput16513.moment H :=
  canonical_of_padded canonicalInput16513 canonicalOutput16513 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16514 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16514 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2014⟩

theorem canonicalSound16514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16514.moment H = canonicalOutput16514.moment H :=
  canonical_of_padded canonicalInput16514 canonicalOutput16514 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16515 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16515 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound16515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16515.moment H = canonicalOutput16515.moment H :=
  canonical_of_padded canonicalInput16515 canonicalOutput16515 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16516 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -2, 1], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput16516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound16516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16516.moment H = canonicalOutput16516.moment H :=
  canonical_of_padded canonicalInput16516 canonicalOutput16516 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16517 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16517 : ExponentCode := normalNode10834

theorem canonicalSound16517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16517.moment H = canonicalOutput16517.moment H :=
  canonical_of_padded canonicalInput16517 canonicalOutput16517 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16518 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -3, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16518 : ExponentCode := normalNode4347

theorem canonicalSound16518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16518.moment H = canonicalOutput16518.moment H :=
  canonical_of_padded canonicalInput16518 canonicalOutput16518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16519 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound16519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16519.moment H = canonicalOutput16519.moment H :=
  canonical_of_padded canonicalInput16519 canonicalOutput16519 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16520 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16520 : ExponentCode := normalNode4348

theorem canonicalSound16520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16520.moment H = canonicalOutput16520.moment H :=
  canonical_of_padded canonicalInput16520 canonicalOutput16520 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16521 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 2, -3, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16521 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound16521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16521.moment H = canonicalOutput16521.moment H :=
  canonical_of_padded canonicalInput16521 canonicalOutput16521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16522 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16522 : ExponentCode := normalNode10834

theorem canonicalSound16522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16522.moment H = canonicalOutput16522.moment H :=
  canonical_of_padded canonicalInput16522 canonicalOutput16522 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput16523 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, -2, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput16523 : ExponentCode := normalNode4254

theorem canonicalSound16523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16523.moment H = canonicalOutput16523.moment H :=
  canonical_of_padded canonicalInput16523 canonicalOutput16523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16524 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, 0, -3], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16524 : ExponentCode := normalNode4253

theorem canonicalSound16524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16524.moment H = canonicalOutput16524.moment H :=
  canonical_of_padded canonicalInput16524 canonicalOutput16524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16525 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 2, 2, -1, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput16525 : ExponentCode := normalNode3828

theorem canonicalSound16525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16525.moment H = canonicalOutput16525.moment H :=
  canonical_of_padded canonicalInput16525 canonicalOutput16525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16526 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![1, 0, 2, 0, -3], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput16526 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound16526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16526.moment H = canonicalOutput16526.moment H :=
  canonical_of_padded canonicalInput16526 canonicalOutput16526 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16527 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -2, 3], ![0, 0, 2, -1, -1], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput16527 : ExponentCode := normalNode4558

theorem canonicalSound16527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16527.moment H = canonicalOutput16527.moment H :=
  canonical_of_padded canonicalInput16527 canonicalOutput16527 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16528 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput16528 : ExponentCode := normalNode2835

theorem canonicalSound16528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16528.moment H = canonicalOutput16528.moment H :=
  canonical_of_padded canonicalInput16528 canonicalOutput16528 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16529 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16529 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound16529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16529.moment H = canonicalOutput16529.moment H :=
  canonical_of_padded canonicalInput16529 canonicalOutput16529 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16530 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput16530 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2448⟩

theorem canonicalSound16530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16530.moment H = canonicalOutput16530.moment H :=
  canonical_of_padded canonicalInput16530 canonicalOutput16530 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16531 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16531 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1823⟩

theorem canonicalSound16531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16531.moment H = canonicalOutput16531.moment H :=
  canonical_of_padded canonicalInput16531 canonicalOutput16531 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16532 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 2, -3], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16532 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound16532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16532.moment H = canonicalOutput16532.moment H :=
  canonical_of_padded canonicalInput16532 canonicalOutput16532 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16533 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -2, 0], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput16533 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩

theorem canonicalSound16533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16533.moment H = canonicalOutput16533.moment H :=
  canonical_of_padded canonicalInput16533 canonicalOutput16533 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16534 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput16534 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound16534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16534.moment H = canonicalOutput16534.moment H :=
  canonical_of_padded canonicalInput16534 canonicalOutput16534 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16535 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16535 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound16535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16535.moment H = canonicalOutput16535.moment H :=
  canonical_of_padded canonicalInput16535 canonicalOutput16535 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16536 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, 1, -3], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16536 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1715⟩

theorem canonicalSound16536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16536.moment H = canonicalOutput16536.moment H :=
  canonical_of_padded canonicalInput16536 canonicalOutput16536 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16537 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -2, 2, -1], ![1, 0, 3, -2, -2]]⟩

def canonicalOutput16537 : ExponentCode := normalNode2821

theorem canonicalSound16537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16537.moment H = canonicalOutput16537.moment H :=
  canonical_of_padded canonicalInput16537 canonicalOutput16537 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16538 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![1, 0, 2, 1, -4]]⟩

def canonicalOutput16538 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1553⟩

theorem canonicalSound16538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16538.moment H = canonicalOutput16538.moment H :=
  canonical_of_padded canonicalInput16538 canonicalOutput16538 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16539 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput16539 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2580⟩

theorem canonicalSound16539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16539.moment H = canonicalOutput16539.moment H :=
  canonical_of_padded canonicalInput16539 canonicalOutput16539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16540 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 1, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16540 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound16540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16540.moment H = canonicalOutput16540.moment H :=
  canonical_of_padded canonicalInput16540 canonicalOutput16540 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16541 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 2, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput16541 : ExponentCode := normalNode2822

theorem canonicalSound16541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16541.moment H = canonicalOutput16541.moment H :=
  canonical_of_padded canonicalInput16541 canonicalOutput16541 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16542 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16542 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound16542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16542.moment H = canonicalOutput16542.moment H :=
  canonical_of_padded canonicalInput16542 canonicalOutput16542 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16543 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16543 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound16543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16543.moment H = canonicalOutput16543.moment H :=
  canonical_of_padded canonicalInput16543 canonicalOutput16543 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16544 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16544 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1825⟩

theorem canonicalSound16544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16544.moment H = canonicalOutput16544.moment H :=
  canonical_of_padded canonicalInput16544 canonicalOutput16544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16545 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 2, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16545 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound16545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16545.moment H = canonicalOutput16545.moment H :=
  canonical_of_padded canonicalInput16545 canonicalOutput16545 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16546 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -2, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16546 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound16546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16546.moment H = canonicalOutput16546.moment H :=
  canonical_of_padded canonicalInput16546 canonicalOutput16546 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16547 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16547 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1825⟩

theorem canonicalSound16547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16547.moment H = canonicalOutput16547.moment H :=
  canonical_of_padded canonicalInput16547 canonicalOutput16547 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16548 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16548 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound16548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16548.moment H = canonicalOutput16548.moment H :=
  canonical_of_padded canonicalInput16548 canonicalOutput16548 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16549 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![1, 0, 2, -2, -1], ![0, 1, -1, 2, -2]]⟩

def canonicalOutput16549 : ExponentCode := normalNode2822

theorem canonicalSound16549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16549.moment H = canonicalOutput16549.moment H :=
  canonical_of_padded canonicalInput16549 canonicalOutput16549 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16550 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![1, 0, 2, -1, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16550 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound16550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16550.moment H = canonicalOutput16550.moment H :=
  canonical_of_padded canonicalInput16550 canonicalOutput16550 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16551 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16551 : ExponentCode := normalNode8527

theorem canonicalSound16551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16551.moment H = canonicalOutput16551.moment H :=
  canonical_of_padded canonicalInput16551 canonicalOutput16551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16552 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput16552 : ExponentCode := normalNode10124

theorem canonicalSound16552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16552.moment H = canonicalOutput16552.moment H :=
  canonical_of_padded canonicalInput16552 canonicalOutput16552 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16553 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16553 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound16553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16553.moment H = canonicalOutput16553.moment H :=
  canonical_of_padded canonicalInput16553 canonicalOutput16553 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16554 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound16554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16554.moment H = canonicalOutput16554.moment H :=
  canonical_of_padded canonicalInput16554 canonicalOutput16554 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16555 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16555 : ExponentCode := normalNode8979

theorem canonicalSound16555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16555.moment H = canonicalOutput16555.moment H :=
  canonical_of_padded canonicalInput16555 canonicalOutput16555 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16556 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16556 : ExponentCode := normalNode9073

theorem canonicalSound16556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16556.moment H = canonicalOutput16556.moment H :=
  canonical_of_padded canonicalInput16556 canonicalOutput16556 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16557 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 1, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput16557 : ExponentCode := normalNode9084

theorem canonicalSound16557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16557.moment H = canonicalOutput16557.moment H :=
  canonical_of_padded canonicalInput16557 canonicalOutput16557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16558 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16558 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound16558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16558.moment H = canonicalOutput16558.moment H :=
  canonical_of_padded canonicalInput16558 canonicalOutput16558 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16559 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16559 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound16559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16559.moment H = canonicalOutput16559.moment H :=
  canonical_of_padded canonicalInput16559 canonicalOutput16559 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16560 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16560 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound16560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16560.moment H = canonicalOutput16560.moment H :=
  canonical_of_padded canonicalInput16560 canonicalOutput16560 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16561 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16561 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound16561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16561.moment H = canonicalOutput16561.moment H :=
  canonical_of_padded canonicalInput16561 canonicalOutput16561 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16562 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16562 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound16562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16562.moment H = canonicalOutput16562.moment H :=
  canonical_of_padded canonicalInput16562 canonicalOutput16562 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16563 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16563 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound16563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16563.moment H = canonicalOutput16563.moment H :=
  canonical_of_padded canonicalInput16563 canonicalOutput16563 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16564 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, 0, -3], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput16564 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2534⟩

theorem canonicalSound16564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16564.moment H = canonicalOutput16564.moment H :=
  canonical_of_padded canonicalInput16564 canonicalOutput16564 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16565 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16565 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2846⟩

theorem canonicalSound16565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16565.moment H = canonicalOutput16565.moment H :=
  canonical_of_padded canonicalInput16565 canonicalOutput16565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16566 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16566 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound16566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16566.moment H = canonicalOutput16566.moment H :=
  canonical_of_padded canonicalInput16566 canonicalOutput16566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16567 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16567 : ExponentCode := normalNode9005

theorem canonicalSound16567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16567.moment H = canonicalOutput16567.moment H :=
  canonical_of_padded canonicalInput16567 canonicalOutput16567 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16568 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16568 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound16568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16568.moment H = canonicalOutput16568.moment H :=
  canonical_of_padded canonicalInput16568 canonicalOutput16568 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16569 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16569 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound16569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16569.moment H = canonicalOutput16569.moment H :=
  canonical_of_padded canonicalInput16569 canonicalOutput16569 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16570 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16570 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound16570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16570.moment H = canonicalOutput16570.moment H :=
  canonical_of_padded canonicalInput16570 canonicalOutput16570 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16571 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound16571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16571.moment H = canonicalOutput16571.moment H :=
  canonical_of_padded canonicalInput16571 canonicalOutput16571 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16572 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16572 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1107⟩

theorem canonicalSound16572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16572.moment H = canonicalOutput16572.moment H :=
  canonical_of_padded canonicalInput16572 canonicalOutput16572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16573 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, -1, 0], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput16573 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2436⟩

theorem canonicalSound16573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16573.moment H = canonicalOutput16573.moment H :=
  canonical_of_padded canonicalInput16573 canonicalOutput16573 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16574 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput16574 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2778⟩

theorem canonicalSound16574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16574.moment H = canonicalOutput16574.moment H :=
  canonical_of_padded canonicalInput16574 canonicalOutput16574 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16575 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16575 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound16575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16575.moment H = canonicalOutput16575.moment H :=
  canonical_of_padded canonicalInput16575 canonicalOutput16575 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
