import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18176 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput18176 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound18176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18176.moment H = canonicalOutput18176.moment H :=
  canonical_of_padded canonicalInput18176 canonicalOutput18176 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18177 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput18177 : ExponentCode := normalNode9084

theorem canonicalSound18177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18177.moment H = canonicalOutput18177.moment H :=
  canonical_of_padded canonicalInput18177 canonicalOutput18177 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18178 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput18178 : ExponentCode := normalNode7070

theorem canonicalSound18178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18178.moment H = canonicalOutput18178.moment H :=
  canonical_of_padded canonicalInput18178 canonicalOutput18178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18179 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput18179 : ExponentCode := normalNode9453

theorem canonicalSound18179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18179.moment H = canonicalOutput18179.moment H :=
  canonical_of_padded canonicalInput18179 canonicalOutput18179 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18180 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18180 : ExponentCode := normalNode10335

theorem canonicalSound18180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18180.moment H = canonicalOutput18180.moment H :=
  canonical_of_padded canonicalInput18180 canonicalOutput18180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18181 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18181 : ExponentCode := normalNode9464

theorem canonicalSound18181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18181.moment H = canonicalOutput18181.moment H :=
  canonical_of_padded canonicalInput18181 canonicalOutput18181 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18182 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput18182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound18182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18182.moment H = canonicalOutput18182.moment H :=
  canonical_of_padded canonicalInput18182 canonicalOutput18182 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18183 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput18183 : ExponentCode := normalNode10657

theorem canonicalSound18183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18183.moment H = canonicalOutput18183.moment H :=
  canonical_of_padded canonicalInput18183 canonicalOutput18183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18184 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput18184 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound18184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18184.moment H = canonicalOutput18184.moment H :=
  canonical_of_padded canonicalInput18184 canonicalOutput18184 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18185 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput18185 : ExponentCode := normalNode7922

theorem canonicalSound18185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18185.moment H = canonicalOutput18185.moment H :=
  canonical_of_padded canonicalInput18185 canonicalOutput18185 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18186 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput18186 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound18186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18186.moment H = canonicalOutput18186.moment H :=
  canonical_of_padded canonicalInput18186 canonicalOutput18186 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18187 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput18187 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18187.moment H = canonicalOutput18187.moment H :=
  canonical_of_padded canonicalInput18187 canonicalOutput18187 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18188 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput18188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound18188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18188.moment H = canonicalOutput18188.moment H :=
  canonical_of_padded canonicalInput18188 canonicalOutput18188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18189 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput18189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound18189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18189.moment H = canonicalOutput18189.moment H :=
  canonical_of_padded canonicalInput18189 canonicalOutput18189 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18190 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput18190 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound18190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18190.moment H = canonicalOutput18190.moment H :=
  canonical_of_padded canonicalInput18190 canonicalOutput18190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18191 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![1, 0, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput18191 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound18191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18191.moment H = canonicalOutput18191.moment H :=
  canonical_of_padded canonicalInput18191 canonicalOutput18191 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18192 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput18192 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound18192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18192.moment H = canonicalOutput18192.moment H :=
  canonical_of_padded canonicalInput18192 canonicalOutput18192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18193 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![1, 1, -2, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput18193 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound18193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18193.moment H = canonicalOutput18193.moment H :=
  canonical_of_padded canonicalInput18193 canonicalOutput18193 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18194 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![-1, 3, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput18194 : ExponentCode := normalNode9345

theorem canonicalSound18194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18194.moment H = canonicalOutput18194.moment H :=
  canonical_of_padded canonicalInput18194 canonicalOutput18194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18195 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18195 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound18195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18195.moment H = canonicalOutput18195.moment H :=
  canonical_of_padded canonicalInput18195 canonicalOutput18195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18196 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18196 : ExponentCode := normalNode9467

theorem canonicalSound18196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18196.moment H = canonicalOutput18196.moment H :=
  canonical_of_padded canonicalInput18196 canonicalOutput18196 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18197 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput18197 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1349⟩

theorem canonicalSound18197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18197.moment H = canonicalOutput18197.moment H :=
  canonical_of_padded canonicalInput18197 canonicalOutput18197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18198 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18198 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound18198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18198.moment H = canonicalOutput18198.moment H :=
  canonical_of_padded canonicalInput18198 canonicalOutput18198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18199 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound18199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18199.moment H = canonicalOutput18199.moment H :=
  canonical_of_padded canonicalInput18199 canonicalOutput18199 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18200 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![0, 0, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput18200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound18200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18200.moment H = canonicalOutput18200.moment H :=
  canonical_of_padded canonicalInput18200 canonicalOutput18200 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation187⟩ (by decide +kernel) hH

def canonicalInput18201 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, -1, 0, 0], ![0, 1, -3, 2]]⟩

def canonicalOutput18201 : ExponentCode := normalNode9421

theorem canonicalSound18201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18201.moment H = canonicalOutput18201.moment H :=
  canonical_of_padded canonicalInput18201 canonicalOutput18201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18202 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput18202 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound18202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18202.moment H = canonicalOutput18202.moment H :=
  canonical_of_padded canonicalInput18202 canonicalOutput18202 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18203 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18203 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound18203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18203.moment H = canonicalOutput18203.moment H :=
  canonical_of_padded canonicalInput18203 canonicalOutput18203 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18204 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 0, 1], ![0, 3, 1, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput18204 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound18204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18204.moment H = canonicalOutput18204.moment H :=
  canonical_of_padded canonicalInput18204 canonicalOutput18204 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18205 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18205 : ExponentCode := normalNode11100

theorem canonicalSound18205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18205.moment H = canonicalOutput18205.moment H :=
  canonical_of_padded canonicalInput18205 canonicalOutput18205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18206 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18206 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2783⟩

theorem canonicalSound18206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18206.moment H = canonicalOutput18206.moment H :=
  canonical_of_padded canonicalInput18206 canonicalOutput18206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18207 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput18207 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2779⟩

theorem canonicalSound18207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18207.moment H = canonicalOutput18207.moment H :=
  canonical_of_padded canonicalInput18207 canonicalOutput18207 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18208 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 2, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput18208 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩

theorem canonicalSound18208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18208.moment H = canonicalOutput18208.moment H :=
  canonical_of_padded canonicalInput18208 canonicalOutput18208 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18209 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput18209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound18209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18209.moment H = canonicalOutput18209.moment H :=
  canonical_of_padded canonicalInput18209 canonicalOutput18209 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18210 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18210 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound18210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18210.moment H = canonicalOutput18210.moment H :=
  canonical_of_padded canonicalInput18210 canonicalOutput18210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18211 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput18211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound18211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18211.moment H = canonicalOutput18211.moment H :=
  canonical_of_padded canonicalInput18211 canonicalOutput18211 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18212 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, -1, -3, 3]]⟩

def canonicalOutput18212 : ExponentCode := normalNode7893

theorem canonicalSound18212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18212.moment H = canonicalOutput18212.moment H :=
  canonical_of_padded canonicalInput18212 canonicalOutput18212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18213 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput18213 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound18213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18213.moment H = canonicalOutput18213.moment H :=
  canonical_of_padded canonicalInput18213 canonicalOutput18213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18214 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput18214 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound18214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18214.moment H = canonicalOutput18214.moment H :=
  canonical_of_padded canonicalInput18214 canonicalOutput18214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18215 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput18215 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound18215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18215.moment H = canonicalOutput18215.moment H :=
  canonical_of_padded canonicalInput18215 canonicalOutput18215 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18216 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput18216 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound18216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18216.moment H = canonicalOutput18216.moment H :=
  canonical_of_padded canonicalInput18216 canonicalOutput18216 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18217 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 2, -4, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput18217 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound18217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18217.moment H = canonicalOutput18217.moment H :=
  canonical_of_padded canonicalInput18217 canonicalOutput18217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18218 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18218 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1099⟩

theorem canonicalSound18218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18218.moment H = canonicalOutput18218.moment H :=
  canonical_of_padded canonicalInput18218 canonicalOutput18218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18219 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18219 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound18219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18219.moment H = canonicalOutput18219.moment H :=
  canonical_of_padded canonicalInput18219 canonicalOutput18219 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18220 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput18220 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound18220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18220.moment H = canonicalOutput18220.moment H :=
  canonical_of_padded canonicalInput18220 canonicalOutput18220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18221 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput18221 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18221.moment H = canonicalOutput18221.moment H :=
  canonical_of_padded canonicalInput18221 canonicalOutput18221 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18222 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, 3, -2], ![0, 2, -4, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput18222 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound18222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18222.moment H = canonicalOutput18222.moment H :=
  canonical_of_padded canonicalInput18222 canonicalOutput18222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18223 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, -1, 4, -3], ![1, 2, -5, 2]]⟩

def canonicalOutput18223 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound18223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18223.moment H = canonicalOutput18223.moment H :=
  canonical_of_padded canonicalInput18223 canonicalOutput18223 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18224 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, 0, -4, 4], ![1, 1, 3, -5]]⟩

def canonicalOutput18224 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node236⟩

theorem canonicalSound18224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18224.moment H = canonicalOutput18224.moment H :=
  canonical_of_padded canonicalInput18224 canonicalOutput18224 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18225 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound18225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18225.moment H = canonicalOutput18225.moment H :=
  canonical_of_padded canonicalInput18225 canonicalOutput18225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18226 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -3, 3], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput18226 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound18226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18226.moment H = canonicalOutput18226.moment H :=
  canonical_of_padded canonicalInput18226 canonicalOutput18226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18227 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -3, 3], ![1, -1, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput18227 : ExponentCode := normalNode9441

theorem canonicalSound18227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18227.moment H = canonicalOutput18227.moment H :=
  canonical_of_padded canonicalInput18227 canonicalOutput18227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18228 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput18228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1040⟩

theorem canonicalSound18228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18228.moment H = canonicalOutput18228.moment H :=
  canonical_of_padded canonicalInput18228 canonicalOutput18228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18229 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput18229 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound18229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18229.moment H = canonicalOutput18229.moment H :=
  canonical_of_padded canonicalInput18229 canonicalOutput18229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18230 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 3, -1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput18230 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound18230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18230.moment H = canonicalOutput18230.moment H :=
  canonical_of_padded canonicalInput18230 canonicalOutput18230 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18231 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 3, 1, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput18231 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound18231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18231.moment H = canonicalOutput18231.moment H :=
  canonical_of_padded canonicalInput18231 canonicalOutput18231 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18232 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, 0, -2, 2], ![1, -1, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput18232 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound18232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18232.moment H = canonicalOutput18232.moment H :=
  canonical_of_padded canonicalInput18232 canonicalOutput18232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18233 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18233 : ExponentCode := normalNode9326

theorem canonicalSound18233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18233.moment H = canonicalOutput18233.moment H :=
  canonical_of_padded canonicalInput18233 canonicalOutput18233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18234 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![-1, 2, -3, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput18234 : ExponentCode := normalNode4922

theorem canonicalSound18234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18234.moment H = canonicalOutput18234.moment H :=
  canonical_of_padded canonicalInput18234 canonicalOutput18234 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18235 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18235 : ExponentCode := normalNode9414

theorem canonicalSound18235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18235.moment H = canonicalOutput18235.moment H :=
  canonical_of_padded canonicalInput18235 canonicalOutput18235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18236 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18236 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound18236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18236.moment H = canonicalOutput18236.moment H :=
  canonical_of_padded canonicalInput18236 canonicalOutput18236 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18237 : ExponentCode := ⟨6, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput18237 : ExponentCode := normalNode1239

theorem canonicalSound18237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18237.moment H = canonicalOutput18237.moment H :=
  canonical_of_padded canonicalInput18237 canonicalOutput18237 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18238 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput18238 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2643⟩

theorem canonicalSound18238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18238.moment H = canonicalOutput18238.moment H :=
  canonical_of_padded canonicalInput18238 canonicalOutput18238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18239 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1]]⟩

def canonicalOutput18239 : ExponentCode := normalNode9460

theorem canonicalSound18239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18239.moment H = canonicalOutput18239.moment H :=
  canonical_of_padded canonicalInput18239 canonicalOutput18239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
