import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26496 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 0, 2], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput26496 : ExponentCode := normalNode4623

theorem canonicalSound26496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26496.moment H = canonicalOutput26496.moment H :=
  canonical_of_padded canonicalInput26496 canonicalOutput26496 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26497 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 0, 2], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput26497 : ExponentCode := normalNode4624

theorem canonicalSound26497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26497.moment H = canonicalOutput26497.moment H :=
  canonical_of_padded canonicalInput26497 canonicalOutput26497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26498 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 1, 1], ![-1, 2, -1], ![2, 1, -3]]⟩

def canonicalOutput26498 : ExponentCode := normalNode3003

theorem canonicalSound26498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26498.moment H = canonicalOutput26498.moment H :=
  canonical_of_padded canonicalInput26498 canonicalOutput26498 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26499 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 1, 1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput26499 : ExponentCode := normalNode5600

theorem canonicalSound26499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26499.moment H = canonicalOutput26499.moment H :=
  canonical_of_padded canonicalInput26499 canonicalOutput26499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26500 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 1, 1], ![2, 0, -2], ![-1, 3, -2]]⟩

def canonicalOutput26500 : ExponentCode := normalNode4602

theorem canonicalSound26500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26500.moment H = canonicalOutput26500.moment H :=
  canonical_of_padded canonicalInput26500 canonicalOutput26500 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26501 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 5, -5]]⟩

def canonicalOutput26501 : ExponentCode := normalNode4626

theorem canonicalSound26501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26501.moment H = canonicalOutput26501.moment H :=
  canonical_of_padded canonicalInput26501 canonicalOutput26501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26502 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 0, -1], ![-3, 1, 2], ![1, 3, -4]]⟩

def canonicalOutput26502 : ExponentCode := normalNode205

theorem canonicalSound26502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26502.moment H = canonicalOutput26502.moment H :=
  canonical_of_padded canonicalInput26502 canonicalOutput26502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26503 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 0, -1], ![-3, 2, 1], ![1, 2, -3]]⟩

def canonicalOutput26503 : ExponentCode := normalNode222

theorem canonicalSound26503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26503.moment H = canonicalOutput26503.moment H :=
  canonical_of_padded canonicalInput26503 canonicalOutput26503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26504 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 1, -2], ![-3, 1, 2], ![1, 2, -3]]⟩

def canonicalOutput26504 : ExponentCode := normalNode206

theorem canonicalSound26504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26504.moment H = canonicalOutput26504.moment H :=
  canonical_of_padded canonicalInput26504 canonicalOutput26504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26505 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 1, -2], ![1, 1, -2], ![-3, 2, 1]]⟩

def canonicalOutput26505 : ExponentCode := normalNode223

theorem canonicalSound26505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26505.moment H = canonicalOutput26505.moment H :=
  canonical_of_padded canonicalInput26505 canonicalOutput26505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26506 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-3, 1, 2], ![-1, 3, -2], ![3, -1, -2]]⟩

def canonicalOutput26506 : ExponentCode := normalNode186

theorem canonicalSound26506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26506.moment H = canonicalOutput26506.moment H :=
  canonical_of_padded canonicalInput26506 canonicalOutput26506 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26507 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, -1, 3], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput26507 : ExponentCode := normalNode3022

theorem canonicalSound26507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26507.moment H = canonicalOutput26507.moment H :=
  canonical_of_padded canonicalInput26507 canonicalOutput26507 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26508 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, -1, 3], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput26508 : ExponentCode := normalNode3023

theorem canonicalSound26508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26508.moment H = canonicalOutput26508.moment H :=
  canonical_of_padded canonicalInput26508 canonicalOutput26508 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26509 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![2, 1, -3]]⟩

def canonicalOutput26509 : ExponentCode := normalNode2993

theorem canonicalSound26509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26509.moment H = canonicalOutput26509.moment H :=
  canonical_of_padded canonicalInput26509 canonicalOutput26509 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26510 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 1, -1], ![1, 2, -3]]⟩

def canonicalOutput26510 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2128⟩

theorem canonicalSound26510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26510.moment H = canonicalOutput26510.moment H :=
  canonical_of_padded canonicalInput26510 canonicalOutput26510 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26511 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput26511 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2130⟩

theorem canonicalSound26511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26511.moment H = canonicalOutput26511.moment H :=
  canonical_of_padded canonicalInput26511 canonicalOutput26511 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26512 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 0, -1], ![0, 3, -3]]⟩

def canonicalOutput26512 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2132⟩

theorem canonicalSound26512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26512.moment H = canonicalOutput26512.moment H :=
  canonical_of_padded canonicalInput26512 canonicalOutput26512 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26513 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput26513 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2130⟩

theorem canonicalSound26513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26513.moment H = canonicalOutput26513.moment H :=
  canonical_of_padded canonicalInput26513 canonicalOutput26513 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26514 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![2, 0, -2], ![-1, 3, -2]]⟩

def canonicalOutput26514 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1420⟩

theorem canonicalSound26514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26514.moment H = canonicalOutput26514.moment H :=
  canonical_of_padded canonicalInput26514 canonicalOutput26514 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26515 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-2, 3, -1], ![3, -1, -2]]⟩

def canonicalOutput26515 : ExponentCode := normalNode3006

theorem canonicalSound26515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26515.moment H = canonicalOutput26515.moment H :=
  canonical_of_padded canonicalInput26515 canonicalOutput26515 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26516 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 1, 0], ![2, 1, -3]]⟩

def canonicalOutput26516 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1430⟩

theorem canonicalSound26516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26516.moment H = canonicalOutput26516.moment H :=
  canonical_of_padded canonicalInput26516 canonicalOutput26516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation368, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26517 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 2, -1], ![2, 0, -2]]⟩

def canonicalOutput26517 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2099⟩

theorem canonicalSound26517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26517.moment H = canonicalOutput26517.moment H :=
  canonical_of_padded canonicalInput26517 canonicalOutput26517 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26518 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 3, -2], ![2, -1, -1]]⟩

def canonicalOutput26518 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1868⟩

theorem canonicalSound26518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26518.moment H = canonicalOutput26518.moment H :=
  canonical_of_padded canonicalInput26518 canonicalOutput26518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26519 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![0, 1, -1], ![1, 1, -2]]⟩

def canonicalOutput26519 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2305⟩

theorem canonicalSound26519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26519.moment H = canonicalOutput26519.moment H :=
  canonical_of_padded canonicalInput26519 canonicalOutput26519 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26520 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![0, 2, -2], ![1, 0, -1]]⟩

def canonicalOutput26520 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2301⟩

theorem canonicalSound26520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26520.moment H = canonicalOutput26520.moment H :=
  canonical_of_padded canonicalInput26520 canonicalOutput26520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26521 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, -1, -1], ![-1, 3, -2]]⟩

def canonicalOutput26521 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1868⟩

theorem canonicalSound26521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26521.moment H = canonicalOutput26521.moment H :=
  canonical_of_padded canonicalInput26521 canonicalOutput26521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26522 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 0, -2], ![-1, 2, -1]]⟩

def canonicalOutput26522 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2099⟩

theorem canonicalSound26522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26522.moment H = canonicalOutput26522.moment H :=
  canonical_of_padded canonicalInput26522 canonicalOutput26522 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26523 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![-3, 2, 1], ![2, 2, -4]]⟩

def canonicalOutput26523 : ExponentCode := normalNode219

theorem canonicalSound26523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26523.moment H = canonicalOutput26523.moment H :=
  canonical_of_padded canonicalInput26523 canonicalOutput26523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26524 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![-2, 0, 2], ![1, 4, -5]]⟩

def canonicalOutput26524 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2123⟩

theorem canonicalSound26524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26524.moment H = canonicalOutput26524.moment H :=
  canonical_of_padded canonicalInput26524 canonicalOutput26524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26525 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![-1, -1, 2], ![0, 5, -5]]⟩

def canonicalOutput26525 : ExponentCode := normalNode9527

theorem canonicalSound26525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26525.moment H = canonicalOutput26525.moment H :=
  canonical_of_padded canonicalInput26525 canonicalOutput26525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26526 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -2, 1], ![-2, 0, 2], ![0, 5, -5]]⟩

def canonicalOutput26526 : ExponentCode := normalNode4626

theorem canonicalSound26526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26526.moment H = canonicalOutput26526.moment H :=
  canonical_of_padded canonicalInput26526 canonicalOutput26526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26527 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-4, 2, 2], ![2, 2, -4]]⟩

def canonicalOutput26527 : ExponentCode := normalNode17

theorem canonicalSound26527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26527.moment H = canonicalOutput26527.moment H :=
  canonical_of_padded canonicalInput26527 canonicalOutput26527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26528 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-3, 0, 3], ![1, 4, -5]]⟩

def canonicalOutput26528 : ExponentCode := normalNode157

theorem canonicalSound26528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26528.moment H = canonicalOutput26528.moment H :=
  canonical_of_padded canonicalInput26528 canonicalOutput26528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26529 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-3, 2, 1], ![1, 2, -3]]⟩

def canonicalOutput26529 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1433⟩

theorem canonicalSound26529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26529.moment H = canonicalOutput26529.moment H :=
  canonical_of_padded canonicalInput26529 canonicalOutput26529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26530 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![0, 5, -5]]⟩

def canonicalOutput26530 : ExponentCode := normalNode3024

theorem canonicalSound26530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26530.moment H = canonicalOutput26530.moment H :=
  canonical_of_padded canonicalInput26530 canonicalOutput26530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26531 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![-1, 5, -4]]⟩

def canonicalOutput26531 : ExponentCode := normalNode5981

theorem canonicalSound26531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26531.moment H = canonicalOutput26531.moment H :=
  canonical_of_padded canonicalInput26531 canonicalOutput26531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26532 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 0, 3], ![1, 3, -4]]⟩

def canonicalOutput26532 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1385⟩

theorem canonicalSound26532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26532.moment H = canonicalOutput26532.moment H :=
  canonical_of_padded canonicalInput26532 canonicalOutput26532 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation393, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26533 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-3, 2, 1], ![1, 1, -2]]⟩

def canonicalOutput26533 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1434⟩

theorem canonicalSound26533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26533.moment H = canonicalOutput26533.moment H :=
  canonical_of_padded canonicalInput26533 canonicalOutput26533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26534 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2], ![-3, 2, 1]]⟩

def canonicalOutput26534 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1434⟩

theorem canonicalSound26534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26534.moment H = canonicalOutput26534.moment H :=
  canonical_of_padded canonicalInput26534 canonicalOutput26534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26535 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![-3, 0, 3], ![1, 2, -3]]⟩

def canonicalOutput26535 : ExponentCode := normalNode158

theorem canonicalSound26535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26535.moment H = canonicalOutput26535.moment H :=
  canonical_of_padded canonicalInput26535 canonicalOutput26535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26536 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![-3, 1, 2], ![1, 1, -2]]⟩

def canonicalOutput26536 : ExponentCode := normalNode208

theorem canonicalSound26536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26536.moment H = canonicalOutput26536.moment H :=
  canonical_of_padded canonicalInput26536 canonicalOutput26536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26537 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 0, -1], ![-3, 2, 1]]⟩

def canonicalOutput26537 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1434⟩

theorem canonicalSound26537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26537.moment H = canonicalOutput26537.moment H :=
  canonical_of_padded canonicalInput26537 canonicalOutput26537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26538 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2], ![-3, 1, 2]]⟩

def canonicalOutput26538 : ExponentCode := normalNode208

theorem canonicalSound26538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26538.moment H = canonicalOutput26538.moment H :=
  canonical_of_padded canonicalInput26538 canonicalOutput26538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26539 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![-1, -1, 2], ![2, -1, -1], ![-2, 4, -2]]⟩

def canonicalOutput26539 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1532⟩

theorem canonicalSound26539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26539.moment H = canonicalOutput26539.moment H :=
  canonical_of_padded canonicalInput26539 canonicalOutput26539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26540 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![0, 0, 0], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26540 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node553⟩

theorem canonicalSound26540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26540.moment H = canonicalOutput26540.moment H :=
  canonical_of_padded canonicalInput26540 canonicalOutput26540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26541 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, -1, 0], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26541 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1879⟩

theorem canonicalSound26541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26541.moment H = canonicalOutput26541.moment H :=
  canonical_of_padded canonicalInput26541 canonicalOutput26541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26542 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-3, -1, 4], ![1, 3, -4]]⟩

def canonicalOutput26542 : ExponentCode := normalNode111

theorem canonicalSound26542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26542.moment H = canonicalOutput26542.moment H :=
  canonical_of_padded canonicalInput26542 canonicalOutput26542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26543 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -2, 4], ![0, 4, -4]]⟩

def canonicalOutput26543 : ExponentCode := normalNode996

theorem canonicalSound26543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26543.moment H = canonicalOutput26543.moment H :=
  canonical_of_padded canonicalInput26543 canonicalOutput26543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26544 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3], ![-2, -2, 4]]⟩

def canonicalOutput26544 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node432⟩

theorem canonicalSound26544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26544.moment H = canonicalOutput26544.moment H :=
  canonical_of_padded canonicalInput26544 canonicalOutput26544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26545 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, -1, 0], ![-1, 2, -1], ![-2, -1, 3], ![2, 1, -3]]⟩

def canonicalOutput26545 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩

theorem canonicalSound26545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26545.moment H = canonicalOutput26545.moment H :=
  canonical_of_padded canonicalInput26545 canonicalOutput26545 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26546 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, -1, 0], ![-1, 2, -1], ![-1, -2, 3], ![1, 2, -3]]⟩

def canonicalOutput26546 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node867⟩

theorem canonicalSound26546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26546.moment H = canonicalOutput26546.moment H :=
  canonical_of_padded canonicalInput26546 canonicalOutput26546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26547 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, -1, 0], ![1, -1, 0], ![-3, 0, 3], ![1, 3, -4]]⟩

def canonicalOutput26547 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩

theorem canonicalSound26547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26547.moment H = canonicalOutput26547.moment H :=
  canonical_of_padded canonicalInput26547 canonicalOutput26547 (by decide) (by decide)
    ⟨false, true, canonicalPermutation326, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26548 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26548 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound26548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26548.moment H = canonicalOutput26548.moment H :=
  canonical_of_padded canonicalInput26548 canonicalOutput26548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation214, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26549 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput26549 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound26549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26549.moment H = canonicalOutput26549.moment H :=
  canonical_of_padded canonicalInput26549 canonicalOutput26549 (by decide) (by decide)
    ⟨false, false, canonicalPermutation327, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26550 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![-2, 0, 2], ![2, -2, 0], ![-1, 3, -2]]⟩

def canonicalOutput26550 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node369⟩

theorem canonicalSound26550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26550.moment H = canonicalOutput26550.moment H :=
  canonical_of_padded canonicalInput26550 canonicalOutput26550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26551 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![2, 1, -3]]⟩

def canonicalOutput26551 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node870⟩

theorem canonicalSound26551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26551.moment H = canonicalOutput26551.moment H :=
  canonical_of_padded canonicalInput26551 canonicalOutput26551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26552 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![-2, 1, 1], ![0, 3, -3], ![1, -3, 2]]⟩

def canonicalOutput26552 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node696⟩

theorem canonicalSound26552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26552.moment H = canonicalOutput26552.moment H :=
  canonical_of_padded canonicalInput26552 canonicalOutput26552 (by decide) (by decide)
    ⟨false, false, canonicalPermutation226, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26553 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![-1, 2, -1], ![1, 1, -2], ![-1, -2, 3]]⟩

def canonicalOutput26553 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node870⟩

theorem canonicalSound26553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26553.moment H = canonicalOutput26553.moment H :=
  canonical_of_padded canonicalInput26553 canonicalOutput26553 (by decide) (by decide)
    ⟨false, false, canonicalPermutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26554 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput26554 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound26554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26554.moment H = canonicalOutput26554.moment H :=
  canonical_of_padded canonicalInput26554 canonicalOutput26554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26555 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-2, -2, 4]]⟩

def canonicalOutput26555 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node435⟩

theorem canonicalSound26555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26555.moment H = canonicalOutput26555.moment H :=
  canonical_of_padded canonicalInput26555 canonicalOutput26555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26556 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![-1, 1, 0], ![0, 1, -1], ![-3, 1, 2], ![4, -3, -1]]⟩

def canonicalOutput26556 : ExponentCode := normalNode2992

theorem canonicalSound26556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26556.moment H = canonicalOutput26556.moment H :=
  canonical_of_padded canonicalInput26556 canonicalOutput26556 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26557 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, -1, 1], ![1, -1, 0], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26557 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1875⟩

theorem canonicalSound26557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26557.moment H = canonicalOutput26557.moment H :=
  canonical_of_padded canonicalInput26557 canonicalOutput26557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26558 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, -1, 1], ![1, -1, 0], ![-1, -2, 3], ![0, 4, -4]]⟩

def canonicalOutput26558 : ExponentCode := normalNode7142

theorem canonicalSound26558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26558.moment H = canonicalOutput26558.moment H :=
  canonical_of_padded canonicalInput26558 canonicalOutput26558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26559 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, 1, -1], ![0, -1, 1], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput26559 : ExponentCode := normalNode6286

theorem canonicalSound26559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26559.moment H = canonicalOutput26559.moment H :=
  canonical_of_padded canonicalInput26559 canonicalOutput26559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
