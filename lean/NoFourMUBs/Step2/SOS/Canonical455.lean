import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29120 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29120 : ExponentCode := normalNode11055

theorem canonicalSound29120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29120.moment H = canonicalOutput29120.moment H :=
  canonical_of_padded canonicalInput29120 canonicalOutput29120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29121 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29121 : ExponentCode := normalNode11187

theorem canonicalSound29121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29121.moment H = canonicalOutput29121.moment H :=
  canonical_of_padded canonicalInput29121 canonicalOutput29121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29122 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![-2, 0, 3, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput29122 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3131⟩

theorem canonicalSound29122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29122.moment H = canonicalOutput29122.moment H :=
  canonical_of_padded canonicalInput29122 canonicalOutput29122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29123 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 3, 0], ![2, -1, -3, 2]]⟩

def canonicalOutput29123 : ExponentCode := normalNode1949

theorem canonicalSound29123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29123.moment H = canonicalOutput29123.moment H :=
  canonical_of_padded canonicalInput29123 canonicalOutput29123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29124 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -2, -3, 3]]⟩

def canonicalOutput29124 : ExponentCode := normalNode3567

theorem canonicalSound29124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29124.moment H = canonicalOutput29124.moment H :=
  canonical_of_padded canonicalInput29124 canonicalOutput29124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29125 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput29125 : ExponentCode := normalNode7947

theorem canonicalSound29125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29125.moment H = canonicalOutput29125.moment H :=
  canonical_of_padded canonicalInput29125 canonicalOutput29125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29126 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput29126 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node432⟩

theorem canonicalSound29126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29126.moment H = canonicalOutput29126.moment H :=
  canonical_of_padded canonicalInput29126 canonicalOutput29126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29127 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, -2, 0, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29127 : ExponentCode := normalNode3936

theorem canonicalSound29127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29127.moment H = canonicalOutput29127.moment H :=
  canonical_of_padded canonicalInput29127 canonicalOutput29127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29128 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, -1, 1], ![-2, -1, 2, 1]]⟩

def canonicalOutput29128 : ExponentCode := normalNode2498

theorem canonicalSound29128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29128.moment H = canonicalOutput29128.moment H :=
  canonical_of_padded canonicalInput29128 canonicalOutput29128 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29129 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, 0, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput29129 : ExponentCode := normalNode3926

theorem canonicalSound29129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29129.moment H = canonicalOutput29129.moment H :=
  canonical_of_padded canonicalInput29129 canonicalOutput29129 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29130 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, -1, 1, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput29130 : ExponentCode := normalNode2446

theorem canonicalSound29130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29130.moment H = canonicalOutput29130.moment H :=
  canonical_of_padded canonicalInput29130 canonicalOutput29130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29131 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput29131 : ExponentCode := normalNode2445

theorem canonicalSound29131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29131.moment H = canonicalOutput29131.moment H :=
  canonical_of_padded canonicalInput29131 canonicalOutput29131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29132 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 2, -2, 2]]⟩

def canonicalOutput29132 : ExponentCode := normalNode772

theorem canonicalSound29132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29132.moment H = canonicalOutput29132.moment H :=
  canonical_of_padded canonicalInput29132 canonicalOutput29132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29133 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput29133 : ExponentCode := normalNode1952

theorem canonicalSound29133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29133.moment H = canonicalOutput29133.moment H :=
  canonical_of_padded canonicalInput29133 canonicalOutput29133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29134 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29134 : ExponentCode := normalNode5202

theorem canonicalSound29134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29134.moment H = canonicalOutput29134.moment H :=
  canonical_of_padded canonicalInput29134 canonicalOutput29134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29135 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 2, -1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput29135 : ExponentCode := normalNode2443

theorem canonicalSound29135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29135.moment H = canonicalOutput29135.moment H :=
  canonical_of_padded canonicalInput29135 canonicalOutput29135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29136 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, -2, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput29136 : ExponentCode := normalNode4934

theorem canonicalSound29136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29136.moment H = canonicalOutput29136.moment H :=
  canonical_of_padded canonicalInput29136 canonicalOutput29136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29137 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput29137 : ExponentCode := normalNode2644

theorem canonicalSound29137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29137.moment H = canonicalOutput29137.moment H :=
  canonical_of_padded canonicalInput29137 canonicalOutput29137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29138 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput29138 : ExponentCode := normalNode2645

theorem canonicalSound29138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29138.moment H = canonicalOutput29138.moment H :=
  canonical_of_padded canonicalInput29138 canonicalOutput29138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29139 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29139 : ExponentCode := normalNode850

theorem canonicalSound29139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29139.moment H = canonicalOutput29139.moment H :=
  canonical_of_padded canonicalInput29139 canonicalOutput29139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29140 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput29140 : ExponentCode := normalNode1199

theorem canonicalSound29140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29140.moment H = canonicalOutput29140.moment H :=
  canonical_of_padded canonicalInput29140 canonicalOutput29140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29141 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput29141 : ExponentCode := normalNode10507

theorem canonicalSound29141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29141.moment H = canonicalOutput29141.moment H :=
  canonical_of_padded canonicalInput29141 canonicalOutput29141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29142 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput29142 : ExponentCode := normalNode4937

theorem canonicalSound29142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29142.moment H = canonicalOutput29142.moment H :=
  canonical_of_padded canonicalInput29142 canonicalOutput29142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29143 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -2, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput29143 : ExponentCode := normalNode770

theorem canonicalSound29143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29143.moment H = canonicalOutput29143.moment H :=
  canonical_of_padded canonicalInput29143 canonicalOutput29143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29144 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput29144 : ExponentCode := normalNode2445

theorem canonicalSound29144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29144.moment H = canonicalOutput29144.moment H :=
  canonical_of_padded canonicalInput29144 canonicalOutput29144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29145 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -3, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput29145 : ExponentCode := normalNode4933

theorem canonicalSound29145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29145.moment H = canonicalOutput29145.moment H :=
  canonical_of_padded canonicalInput29145 canonicalOutput29145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29146 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29146 : ExponentCode := normalNode5201

theorem canonicalSound29146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29146.moment H = canonicalOutput29146.moment H :=
  canonical_of_padded canonicalInput29146 canonicalOutput29146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29147 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29147 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3060⟩

theorem canonicalSound29147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29147.moment H = canonicalOutput29147.moment H :=
  canonical_of_padded canonicalInput29147 canonicalOutput29147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29148 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29148 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3062⟩

theorem canonicalSound29148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29148.moment H = canonicalOutput29148.moment H :=
  canonical_of_padded canonicalInput29148 canonicalOutput29148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29149 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29149 : ExponentCode := normalNode10507

theorem canonicalSound29149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29149.moment H = canonicalOutput29149.moment H :=
  canonical_of_padded canonicalInput29149 canonicalOutput29149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29150 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput29150 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3063⟩

theorem canonicalSound29150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29150.moment H = canonicalOutput29150.moment H :=
  canonical_of_padded canonicalInput29150 canonicalOutput29150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29151 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput29151 : ExponentCode := normalNode1953

theorem canonicalSound29151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29151.moment H = canonicalOutput29151.moment H :=
  canonical_of_padded canonicalInput29151 canonicalOutput29151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29152 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput29152 : ExponentCode := normalNode1200

theorem canonicalSound29152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29152.moment H = canonicalOutput29152.moment H :=
  canonical_of_padded canonicalInput29152 canonicalOutput29152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29153 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29153 : ExponentCode := normalNode2335

theorem canonicalSound29153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29153.moment H = canonicalOutput29153.moment H :=
  canonical_of_padded canonicalInput29153 canonicalOutput29153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29154 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -2, -1, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput29154 : ExponentCode := normalNode4931

theorem canonicalSound29154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29154.moment H = canonicalOutput29154.moment H :=
  canonical_of_padded canonicalInput29154 canonicalOutput29154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29155 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29155 : ExponentCode := normalNode5199

theorem canonicalSound29155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29155.moment H = canonicalOutput29155.moment H :=
  canonical_of_padded canonicalInput29155 canonicalOutput29155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29156 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29156 : ExponentCode := normalNode845

theorem canonicalSound29156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29156.moment H = canonicalOutput29156.moment H :=
  canonical_of_padded canonicalInput29156 canonicalOutput29156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29157 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29157 : ExponentCode := normalNode594

theorem canonicalSound29157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29157.moment H = canonicalOutput29157.moment H :=
  canonical_of_padded canonicalInput29157 canonicalOutput29157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29158 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput29158 : ExponentCode := normalNode4936

theorem canonicalSound29158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29158.moment H = canonicalOutput29158.moment H :=
  canonical_of_padded canonicalInput29158 canonicalOutput29158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29159 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput29159 : ExponentCode := normalNode5041

theorem canonicalSound29159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29159.moment H = canonicalOutput29159.moment H :=
  canonical_of_padded canonicalInput29159 canonicalOutput29159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29160 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29160 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3161⟩

theorem canonicalSound29160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29160.moment H = canonicalOutput29160.moment H :=
  canonical_of_padded canonicalInput29160 canonicalOutput29160 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29161 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29161 : ExponentCode := normalNode5089

theorem canonicalSound29161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29161.moment H = canonicalOutput29161.moment H :=
  canonical_of_padded canonicalInput29161 canonicalOutput29161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29162 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput29162 : ExponentCode := normalNode10634

theorem canonicalSound29162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29162.moment H = canonicalOutput29162.moment H :=
  canonical_of_padded canonicalInput29162 canonicalOutput29162 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29163 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -2, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput29163 : ExponentCode := normalNode4932

theorem canonicalSound29163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29163.moment H = canonicalOutput29163.moment H :=
  canonical_of_padded canonicalInput29163 canonicalOutput29163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29164 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29164 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3259⟩

theorem canonicalSound29164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29164.moment H = canonicalOutput29164.moment H :=
  canonical_of_padded canonicalInput29164 canonicalOutput29164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29165 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29165 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3198⟩

theorem canonicalSound29165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29165.moment H = canonicalOutput29165.moment H :=
  canonical_of_padded canonicalInput29165 canonicalOutput29165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29166 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29166 : ExponentCode := normalNode848

theorem canonicalSound29166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29166.moment H = canonicalOutput29166.moment H :=
  canonical_of_padded canonicalInput29166 canonicalOutput29166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29167 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput29167 : ExponentCode := normalNode597

theorem canonicalSound29167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29167.moment H = canonicalOutput29167.moment H :=
  canonical_of_padded canonicalInput29167 canonicalOutput29167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29168 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput29168 : ExponentCode := normalNode410

theorem canonicalSound29168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29168.moment H = canonicalOutput29168.moment H :=
  canonical_of_padded canonicalInput29168 canonicalOutput29168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29169 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-2, -3, 2, 3]]⟩

def canonicalOutput29169 : ExponentCode := normalNode263

theorem canonicalSound29169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29169.moment H = canonicalOutput29169.moment H :=
  canonical_of_padded canonicalInput29169 canonicalOutput29169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29170 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput29170 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3235⟩

theorem canonicalSound29170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29170.moment H = canonicalOutput29170.moment H :=
  canonical_of_padded canonicalInput29170 canonicalOutput29170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29171 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -2, 2], ![1, -3, 2, 0]]⟩

def canonicalOutput29171 : ExponentCode := normalNode771

theorem canonicalSound29171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29171.moment H = canonicalOutput29171.moment H :=
  canonical_of_padded canonicalInput29171 canonicalOutput29171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29172 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 1, 1]]⟩

def canonicalOutput29172 : ExponentCode := normalNode2444

theorem canonicalSound29172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29172.moment H = canonicalOutput29172.moment H :=
  canonical_of_padded canonicalInput29172 canonicalOutput29172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29173 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput29173 : ExponentCode := normalNode10595

theorem canonicalSound29173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29173.moment H = canonicalOutput29173.moment H :=
  canonical_of_padded canonicalInput29173 canonicalOutput29173 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29174 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput29174 : ExponentCode := normalNode847

theorem canonicalSound29174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29174.moment H = canonicalOutput29174.moment H :=
  canonical_of_padded canonicalInput29174 canonicalOutput29174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29175 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput29175 : ExponentCode := normalNode598

theorem canonicalSound29175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29175.moment H = canonicalOutput29175.moment H :=
  canonical_of_padded canonicalInput29175 canonicalOutput29175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29176 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput29176 : ExponentCode := normalNode10502

theorem canonicalSound29176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29176.moment H = canonicalOutput29176.moment H :=
  canonical_of_padded canonicalInput29176 canonicalOutput29176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29177 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29177 : ExponentCode := normalNode844

theorem canonicalSound29177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29177.moment H = canonicalOutput29177.moment H :=
  canonical_of_padded canonicalInput29177 canonicalOutput29177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29178 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput29178 : ExponentCode := normalNode599

theorem canonicalSound29178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29178.moment H = canonicalOutput29178.moment H :=
  canonical_of_padded canonicalInput29178 canonicalOutput29178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29179 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -3, 1], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29179 : ExponentCode := normalNode2646

theorem canonicalSound29179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29179.moment H = canonicalOutput29179.moment H :=
  canonical_of_padded canonicalInput29179 canonicalOutput29179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29180 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput29180 : ExponentCode := normalNode1954

theorem canonicalSound29180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29180.moment H = canonicalOutput29180.moment H :=
  canonical_of_padded canonicalInput29180 canonicalOutput29180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29181 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput29181 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3063⟩

theorem canonicalSound29181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29181.moment H = canonicalOutput29181.moment H :=
  canonical_of_padded canonicalInput29181 canonicalOutput29181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29182 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -2, -1, 3]]⟩

def canonicalOutput29182 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node168⟩

theorem canonicalSound29182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29182.moment H = canonicalOutput29182.moment H :=
  canonical_of_padded canonicalInput29182 canonicalOutput29182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29183 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, -2, -2, 4]]⟩

def canonicalOutput29183 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound29183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29183.moment H = canonicalOutput29183.moment H :=
  canonical_of_padded canonicalInput29183 canonicalOutput29183 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
