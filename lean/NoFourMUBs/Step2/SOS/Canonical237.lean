import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15168 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput15168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound15168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15168.moment H = canonicalOutput15168.moment H :=
  canonical_of_padded canonicalInput15168 canonicalOutput15168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15169 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 3, -2], ![1, 3, -2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput15169 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code442

theorem canonicalSound15169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15169.moment H = canonicalOutput15169.moment H :=
  canonical_of_padded canonicalInput15169 canonicalOutput15169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15170 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15170 : ExponentCode := normalNode7923

theorem canonicalSound15170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15170.moment H = canonicalOutput15170.moment H :=
  canonical_of_padded canonicalInput15170 canonicalOutput15170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15171 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15171 : ExponentCode := normalNode7923

theorem canonicalSound15171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15171.moment H = canonicalOutput15171.moment H :=
  canonical_of_padded canonicalInput15171 canonicalOutput15171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15172 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput15172 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound15172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15172.moment H = canonicalOutput15172.moment H :=
  canonical_of_padded canonicalInput15172 canonicalOutput15172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15173 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2563⟩

theorem canonicalSound15173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15173.moment H = canonicalOutput15173.moment H :=
  canonical_of_padded canonicalInput15173 canonicalOutput15173 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15174 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15174 : ExponentCode := normalNode7921

theorem canonicalSound15174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15174.moment H = canonicalOutput15174.moment H :=
  canonical_of_padded canonicalInput15174 canonicalOutput15174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15175 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput15175 : ExponentCode := normalNode7734

theorem canonicalSound15175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15175.moment H = canonicalOutput15175.moment H :=
  canonical_of_padded canonicalInput15175 canonicalOutput15175 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15176 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15176 : ExponentCode := normalNode7920

theorem canonicalSound15176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15176.moment H = canonicalOutput15176.moment H :=
  canonical_of_padded canonicalInput15176 canonicalOutput15176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15177 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput15177 : ExponentCode := normalNode7920

theorem canonicalSound15177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15177.moment H = canonicalOutput15177.moment H :=
  canonical_of_padded canonicalInput15177 canonicalOutput15177 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15178 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15178 : ExponentCode := normalNode3488

theorem canonicalSound15178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15178.moment H = canonicalOutput15178.moment H :=
  canonical_of_padded canonicalInput15178 canonicalOutput15178 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15179 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15179 : ExponentCode := normalNode3961

theorem canonicalSound15179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15179.moment H = canonicalOutput15179.moment H :=
  canonical_of_padded canonicalInput15179 canonicalOutput15179 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15180 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15180 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2010⟩

theorem canonicalSound15180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15180.moment H = canonicalOutput15180.moment H :=
  canonical_of_padded canonicalInput15180 canonicalOutput15180 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15181 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15181 : ExponentCode := normalNode4400

theorem canonicalSound15181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15181.moment H = canonicalOutput15181.moment H :=
  canonical_of_padded canonicalInput15181 canonicalOutput15181 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15182 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput15182 : ExponentCode := normalNode4309

theorem canonicalSound15182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15182.moment H = canonicalOutput15182.moment H :=
  canonical_of_padded canonicalInput15182 canonicalOutput15182 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15183 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput15183 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code626

theorem canonicalSound15183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15183.moment H = canonicalOutput15183.moment H :=
  canonical_of_padded canonicalInput15183 canonicalOutput15183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15184 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput15184 : ExponentCode := normalNode7922

theorem canonicalSound15184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15184.moment H = canonicalOutput15184.moment H :=
  canonical_of_padded canonicalInput15184 canonicalOutput15184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15185 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 0, 4, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15185 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩

theorem canonicalSound15185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15185.moment H = canonicalOutput15185.moment H :=
  canonical_of_padded canonicalInput15185 canonicalOutput15185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15186 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput15186 : ExponentCode := normalNode7976

theorem canonicalSound15186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15186.moment H = canonicalOutput15186.moment H :=
  canonical_of_padded canonicalInput15186 canonicalOutput15186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15187 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![0, 0, 3, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput15187 : ExponentCode := normalNode7981

theorem canonicalSound15187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15187.moment H = canonicalOutput15187.moment H :=
  canonical_of_padded canonicalInput15187 canonicalOutput15187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15188 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput15188 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1109

theorem canonicalSound15188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15188.moment H = canonicalOutput15188.moment H :=
  canonical_of_padded canonicalInput15188 canonicalOutput15188 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15189 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![0, 1, 3, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput15189 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1149

theorem canonicalSound15189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15189.moment H = canonicalOutput15189.moment H :=
  canonical_of_padded canonicalInput15189 canonicalOutput15189 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15190 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput15190 : ExponentCode := normalNode9373

theorem canonicalSound15190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15190.moment H = canonicalOutput15190.moment H :=
  canonical_of_padded canonicalInput15190 canonicalOutput15190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15191 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput15191 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1329

theorem canonicalSound15191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15191.moment H = canonicalOutput15191.moment H :=
  canonical_of_padded canonicalInput15191 canonicalOutput15191 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15192 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput15192 : ExponentCode := normalNode7989

theorem canonicalSound15192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15192.moment H = canonicalOutput15192.moment H :=
  canonical_of_padded canonicalInput15192 canonicalOutput15192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15193 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput15193 : ExponentCode := normalNode7989

theorem canonicalSound15193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15193.moment H = canonicalOutput15193.moment H :=
  canonical_of_padded canonicalInput15193 canonicalOutput15193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15194 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -2, 2], ![1, 1, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput15194 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1329

theorem canonicalSound15194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15194.moment H = canonicalOutput15194.moment H :=
  canonical_of_padded canonicalInput15194 canonicalOutput15194 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15195 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15195 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2518⟩

theorem canonicalSound15195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15195.moment H = canonicalOutput15195.moment H :=
  canonical_of_padded canonicalInput15195 canonicalOutput15195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15196 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15196 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2509⟩

theorem canonicalSound15196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15196.moment H = canonicalOutput15196.moment H :=
  canonical_of_padded canonicalInput15196 canonicalOutput15196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15197 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15197 : ExponentCode := normalNode7983

theorem canonicalSound15197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15197.moment H = canonicalOutput15197.moment H :=
  canonical_of_padded canonicalInput15197 canonicalOutput15197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15198 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput15198 : ExponentCode := normalNode7985

theorem canonicalSound15198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15198.moment H = canonicalOutput15198.moment H :=
  canonical_of_padded canonicalInput15198 canonicalOutput15198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15199 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput15199 : ExponentCode := normalNode1759

theorem canonicalSound15199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15199.moment H = canonicalOutput15199.moment H :=
  canonical_of_padded canonicalInput15199 canonicalOutput15199 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15200 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2509⟩

theorem canonicalSound15200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15200.moment H = canonicalOutput15200.moment H :=
  canonical_of_padded canonicalInput15200 canonicalOutput15200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15201 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput15201 : ExponentCode := normalNode1980

theorem canonicalSound15201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15201.moment H = canonicalOutput15201.moment H :=
  canonical_of_padded canonicalInput15201 canonicalOutput15201 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15202 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput15202 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound15202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15202.moment H = canonicalOutput15202.moment H :=
  canonical_of_padded canonicalInput15202 canonicalOutput15202 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15203 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15203 : ExponentCode := normalNode7784

theorem canonicalSound15203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15203.moment H = canonicalOutput15203.moment H :=
  canonical_of_padded canonicalInput15203 canonicalOutput15203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15204 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput15204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1324

theorem canonicalSound15204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15204.moment H = canonicalOutput15204.moment H :=
  canonical_of_padded canonicalInput15204 canonicalOutput15204 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15205 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput15205 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound15205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15205.moment H = canonicalOutput15205.moment H :=
  canonical_of_padded canonicalInput15205 canonicalOutput15205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15206 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput15206 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound15206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15206.moment H = canonicalOutput15206.moment H :=
  canonical_of_padded canonicalInput15206 canonicalOutput15206 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15207 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput15207 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code331

theorem canonicalSound15207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15207.moment H = canonicalOutput15207.moment H :=
  canonical_of_padded canonicalInput15207 canonicalOutput15207 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15208 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput15208 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node987⟩

theorem canonicalSound15208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15208.moment H = canonicalOutput15208.moment H :=
  canonical_of_padded canonicalInput15208 canonicalOutput15208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15209 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, 1, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput15209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node924⟩

theorem canonicalSound15209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15209.moment H = canonicalOutput15209.moment H :=
  canonical_of_padded canonicalInput15209 canonicalOutput15209 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15210 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput15210 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound15210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15210.moment H = canonicalOutput15210.moment H :=
  canonical_of_padded canonicalInput15210 canonicalOutput15210 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15211 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound15211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15211.moment H = canonicalOutput15211.moment H :=
  canonical_of_padded canonicalInput15211 canonicalOutput15211 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15212 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15212 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩

theorem canonicalSound15212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15212.moment H = canonicalOutput15212.moment H :=
  canonical_of_padded canonicalInput15212 canonicalOutput15212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15213 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 0, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15213 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound15213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15213.moment H = canonicalOutput15213.moment H :=
  canonical_of_padded canonicalInput15213 canonicalOutput15213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15214 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput15214 : ExponentCode := normalNode6855

theorem canonicalSound15214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15214.moment H = canonicalOutput15214.moment H :=
  canonical_of_padded canonicalInput15214 canonicalOutput15214 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15215 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput15215 : ExponentCode := normalNode6856

theorem canonicalSound15215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15215.moment H = canonicalOutput15215.moment H :=
  canonical_of_padded canonicalInput15215 canonicalOutput15215 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15216 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15216 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound15216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15216.moment H = canonicalOutput15216.moment H :=
  canonical_of_padded canonicalInput15216 canonicalOutput15216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15217 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15217 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound15217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15217.moment H = canonicalOutput15217.moment H :=
  canonical_of_padded canonicalInput15217 canonicalOutput15217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15218 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15218 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound15218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15218.moment H = canonicalOutput15218.moment H :=
  canonical_of_padded canonicalInput15218 canonicalOutput15218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15219 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15219 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound15219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15219.moment H = canonicalOutput15219.moment H :=
  canonical_of_padded canonicalInput15219 canonicalOutput15219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15220 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15220 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node926⟩

theorem canonicalSound15220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15220.moment H = canonicalOutput15220.moment H :=
  canonical_of_padded canonicalInput15220 canonicalOutput15220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15221 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput15221 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node673⟩

theorem canonicalSound15221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15221.moment H = canonicalOutput15221.moment H :=
  canonical_of_padded canonicalInput15221 canonicalOutput15221 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15222 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15222 : ExponentCode := normalNode6883

theorem canonicalSound15222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15222.moment H = canonicalOutput15222.moment H :=
  canonical_of_padded canonicalInput15222 canonicalOutput15222 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput15223 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput15223 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1357

theorem canonicalSound15223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15223.moment H = canonicalOutput15223.moment H :=
  canonical_of_padded canonicalInput15223 canonicalOutput15223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15224 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 1, -1], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput15224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound15224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15224.moment H = canonicalOutput15224.moment H :=
  canonical_of_padded canonicalInput15224 canonicalOutput15224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15225 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2528⟩

theorem canonicalSound15225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15225.moment H = canonicalOutput15225.moment H :=
  canonical_of_padded canonicalInput15225 canonicalOutput15225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15226 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2527⟩

theorem canonicalSound15226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15226.moment H = canonicalOutput15226.moment H :=
  canonical_of_padded canonicalInput15226 canonicalOutput15226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15227 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput15227 : ExponentCode := normalNode7813

theorem canonicalSound15227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15227.moment H = canonicalOutput15227.moment H :=
  canonical_of_padded canonicalInput15227 canonicalOutput15227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15228 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput15228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound15228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15228.moment H = canonicalOutput15228.moment H :=
  canonical_of_padded canonicalInput15228 canonicalOutput15228 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15229 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15229 : ExponentCode := normalNode7815

theorem canonicalSound15229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15229.moment H = canonicalOutput15229.moment H :=
  canonical_of_padded canonicalInput15229 canonicalOutput15229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15230 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15230 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2522⟩

theorem canonicalSound15230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15230.moment H = canonicalOutput15230.moment H :=
  canonical_of_padded canonicalInput15230 canonicalOutput15230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15231 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15231 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound15231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15231.moment H = canonicalOutput15231.moment H :=
  canonical_of_padded canonicalInput15231 canonicalOutput15231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
