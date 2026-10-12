import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10176 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10176 : ExponentCode := normalNode5664

theorem canonicalSound10176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10176.moment H = canonicalOutput10176.moment H :=
  canonical_of_padded canonicalInput10176 canonicalOutput10176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10177 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10177 : ExponentCode := normalNode5663

theorem canonicalSound10177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10177.moment H = canonicalOutput10177.moment H :=
  canonical_of_padded canonicalInput10177 canonicalOutput10177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10178 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput10178 : ExponentCode := normalNode9477

theorem canonicalSound10178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10178.moment H = canonicalOutput10178.moment H :=
  canonical_of_padded canonicalInput10178 canonicalOutput10178 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10179 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput10179 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound10179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10179.moment H = canonicalOutput10179.moment H :=
  canonical_of_padded canonicalInput10179 canonicalOutput10179 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput10180 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10180 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1157⟩

theorem canonicalSound10180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10180.moment H = canonicalOutput10180.moment H :=
  canonical_of_padded canonicalInput10180 canonicalOutput10180 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10181 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10181 : ExponentCode := normalNode9754

theorem canonicalSound10181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10181.moment H = canonicalOutput10181.moment H :=
  canonical_of_padded canonicalInput10181 canonicalOutput10181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10182 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10182 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound10182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10182.moment H = canonicalOutput10182.moment H :=
  canonical_of_padded canonicalInput10182 canonicalOutput10182 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput10183 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10183 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound10183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10183.moment H = canonicalOutput10183.moment H :=
  canonical_of_padded canonicalInput10183 canonicalOutput10183 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10184 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10184 : ExponentCode := normalNode9754

theorem canonicalSound10184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10184.moment H = canonicalOutput10184.moment H :=
  canonical_of_padded canonicalInput10184 canonicalOutput10184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10185 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10185 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound10185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10185.moment H = canonicalOutput10185.moment H :=
  canonical_of_padded canonicalInput10185 canonicalOutput10185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10186 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10186 : ExponentCode := normalNode10923

theorem canonicalSound10186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10186.moment H = canonicalOutput10186.moment H :=
  canonical_of_padded canonicalInput10186 canonicalOutput10186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10187 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10187 : ExponentCode := normalNode9743

theorem canonicalSound10187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10187.moment H = canonicalOutput10187.moment H :=
  canonical_of_padded canonicalInput10187 canonicalOutput10187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10188 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput10188 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1377⟩

theorem canonicalSound10188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10188.moment H = canonicalOutput10188.moment H :=
  canonical_of_padded canonicalInput10188 canonicalOutput10188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10189 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput10189 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound10189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10189.moment H = canonicalOutput10189.moment H :=
  canonical_of_padded canonicalInput10189 canonicalOutput10189 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10190 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10190 : ExponentCode := normalNode11147

theorem canonicalSound10190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10190.moment H = canonicalOutput10190.moment H :=
  canonical_of_padded canonicalInput10190 canonicalOutput10190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10191 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10191 : ExponentCode := normalNode11147

theorem canonicalSound10191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10191.moment H = canonicalOutput10191.moment H :=
  canonical_of_padded canonicalInput10191 canonicalOutput10191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10192 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput10192 : ExponentCode := normalNode4986

theorem canonicalSound10192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10192.moment H = canonicalOutput10192.moment H :=
  canonical_of_padded canonicalInput10192 canonicalOutput10192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10193 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, -2, 4, -4]]⟩

def canonicalOutput10193 : ExponentCode := normalNode6469

theorem canonicalSound10193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10193.moment H = canonicalOutput10193.moment H :=
  canonical_of_padded canonicalInput10193 canonicalOutput10193 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10194 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput10194 : ExponentCode := normalNode5179

theorem canonicalSound10194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10194.moment H = canonicalOutput10194.moment H :=
  canonical_of_padded canonicalInput10194 canonicalOutput10194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10195 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput10195 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code249

theorem canonicalSound10195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10195.moment H = canonicalOutput10195.moment H :=
  canonical_of_padded canonicalInput10195 canonicalOutput10195 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10196 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10196 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound10196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10196.moment H = canonicalOutput10196.moment H :=
  canonical_of_padded canonicalInput10196 canonicalOutput10196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10197 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput10197 : ExponentCode := normalNode6498

theorem canonicalSound10197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10197.moment H = canonicalOutput10197.moment H :=
  canonical_of_padded canonicalInput10197 canonicalOutput10197 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10198 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput10198 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1317⟩

theorem canonicalSound10198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10198.moment H = canonicalOutput10198.moment H :=
  canonical_of_padded canonicalInput10198 canonicalOutput10198 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10199 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput10199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound10199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10199.moment H = canonicalOutput10199.moment H :=
  canonical_of_padded canonicalInput10199 canonicalOutput10199 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10200 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput10200 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound10200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10200.moment H = canonicalOutput10200.moment H :=
  canonical_of_padded canonicalInput10200 canonicalOutput10200 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10201 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 1, 2, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput10201 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩

theorem canonicalSound10201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10201.moment H = canonicalOutput10201.moment H :=
  canonical_of_padded canonicalInput10201 canonicalOutput10201 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10202 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, 1, 3, -5], ![1, -2, 0, 1]]⟩

def canonicalOutput10202 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code249

theorem canonicalSound10202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10202.moment H = canonicalOutput10202.moment H :=
  canonical_of_padded canonicalInput10202 canonicalOutput10202 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10203 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput10203 : ExponentCode := normalNode5017

theorem canonicalSound10203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10203.moment H = canonicalOutput10203.moment H :=
  canonical_of_padded canonicalInput10203 canonicalOutput10203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10204 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10204 : ExponentCode := normalNode5127

theorem canonicalSound10204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10204.moment H = canonicalOutput10204.moment H :=
  canonical_of_padded canonicalInput10204 canonicalOutput10204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10205 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput10205 : ExponentCode := normalNode5141

theorem canonicalSound10205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10205.moment H = canonicalOutput10205.moment H :=
  canonical_of_padded canonicalInput10205 canonicalOutput10205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10206 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10206 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2321⟩

theorem canonicalSound10206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10206.moment H = canonicalOutput10206.moment H :=
  canonical_of_padded canonicalInput10206 canonicalOutput10206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10207 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput10207 : ExponentCode := normalNode11186

theorem canonicalSound10207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10207.moment H = canonicalOutput10207.moment H :=
  canonical_of_padded canonicalInput10207 canonicalOutput10207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10208 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput10208 : ExponentCode := normalNode11196

theorem canonicalSound10208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10208.moment H = canonicalOutput10208.moment H :=
  canonical_of_padded canonicalInput10208 canonicalOutput10208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10209 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput10209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound10209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10209.moment H = canonicalOutput10209.moment H :=
  canonical_of_padded canonicalInput10209 canonicalOutput10209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput10210 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10210 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound10210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10210.moment H = canonicalOutput10210.moment H :=
  canonical_of_padded canonicalInput10210 canonicalOutput10210 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput10211 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput10211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound10211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10211.moment H = canonicalOutput10211.moment H :=
  canonical_of_padded canonicalInput10211 canonicalOutput10211 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput10212 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput10212 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩

theorem canonicalSound10212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10212.moment H = canonicalOutput10212.moment H :=
  canonical_of_padded canonicalInput10212 canonicalOutput10212 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput10213 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10213 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound10213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10213.moment H = canonicalOutput10213.moment H :=
  canonical_of_padded canonicalInput10213 canonicalOutput10213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput10214 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10214 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound10214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10214.moment H = canonicalOutput10214.moment H :=
  canonical_of_padded canonicalInput10214 canonicalOutput10214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10215 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10215 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound10215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10215.moment H = canonicalOutput10215.moment H :=
  canonical_of_padded canonicalInput10215 canonicalOutput10215 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput10216 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10216 : ExponentCode := normalNode11209

theorem canonicalSound10216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10216.moment H = canonicalOutput10216.moment H :=
  canonical_of_padded canonicalInput10216 canonicalOutput10216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10217 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput10217 : ExponentCode := normalNode2404

theorem canonicalSound10217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10217.moment H = canonicalOutput10217.moment H :=
  canonical_of_padded canonicalInput10217 canonicalOutput10217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10218 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10218 : ExponentCode := normalNode2407

theorem canonicalSound10218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10218.moment H = canonicalOutput10218.moment H :=
  canonical_of_padded canonicalInput10218 canonicalOutput10218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10219 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10219 : ExponentCode := normalNode2408

theorem canonicalSound10219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10219.moment H = canonicalOutput10219.moment H :=
  canonical_of_padded canonicalInput10219 canonicalOutput10219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10220 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10220 : ExponentCode := normalNode11122

theorem canonicalSound10220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10220.moment H = canonicalOutput10220.moment H :=
  canonical_of_padded canonicalInput10220 canonicalOutput10220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10221 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 0, 0, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput10221 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1311⟩

theorem canonicalSound10221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10221.moment H = canonicalOutput10221.moment H :=
  canonical_of_padded canonicalInput10221 canonicalOutput10221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10222 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput10222 : ExponentCode := normalNode2375

theorem canonicalSound10222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10222.moment H = canonicalOutput10222.moment H :=
  canonical_of_padded canonicalInput10222 canonicalOutput10222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10223 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10223 : ExponentCode := normalNode2414

theorem canonicalSound10223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10223.moment H = canonicalOutput10223.moment H :=
  canonical_of_padded canonicalInput10223 canonicalOutput10223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10224 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10224 : ExponentCode := normalNode11123

theorem canonicalSound10224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10224.moment H = canonicalOutput10224.moment H :=
  canonical_of_padded canonicalInput10224 canonicalOutput10224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10225 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound10225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10225.moment H = canonicalOutput10225.moment H :=
  canonical_of_padded canonicalInput10225 canonicalOutput10225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10226 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10226 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound10226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10226.moment H = canonicalOutput10226.moment H :=
  canonical_of_padded canonicalInput10226 canonicalOutput10226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10227 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10227 : ExponentCode := normalNode11124

theorem canonicalSound10227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10227.moment H = canonicalOutput10227.moment H :=
  canonical_of_padded canonicalInput10227 canonicalOutput10227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10228 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10228 : ExponentCode := normalNode11145

theorem canonicalSound10228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10228.moment H = canonicalOutput10228.moment H :=
  canonical_of_padded canonicalInput10228 canonicalOutput10228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10229 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10229 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩

theorem canonicalSound10229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10229.moment H = canonicalOutput10229.moment H :=
  canonical_of_padded canonicalInput10229 canonicalOutput10229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10230 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput10230 : ExponentCode := normalNode5223

theorem canonicalSound10230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10230.moment H = canonicalOutput10230.moment H :=
  canonical_of_padded canonicalInput10230 canonicalOutput10230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10231 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10231 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2192⟩

theorem canonicalSound10231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10231.moment H = canonicalOutput10231.moment H :=
  canonical_of_padded canonicalInput10231 canonicalOutput10231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10232 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput10232 : ExponentCode := normalNode2378

theorem canonicalSound10232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10232.moment H = canonicalOutput10232.moment H :=
  canonical_of_padded canonicalInput10232 canonicalOutput10232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10233 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10233 : ExponentCode := normalNode2411

theorem canonicalSound10233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10233.moment H = canonicalOutput10233.moment H :=
  canonical_of_padded canonicalInput10233 canonicalOutput10233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10234 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput10234 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1740⟩

theorem canonicalSound10234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10234.moment H = canonicalOutput10234.moment H :=
  canonical_of_padded canonicalInput10234 canonicalOutput10234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10235 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput10235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound10235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10235.moment H = canonicalOutput10235.moment H :=
  canonical_of_padded canonicalInput10235 canonicalOutput10235 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10236 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10236 : ExponentCode := normalNode6294

theorem canonicalSound10236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10236.moment H = canonicalOutput10236.moment H :=
  canonical_of_padded canonicalInput10236 canonicalOutput10236 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10237 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![1, -2, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10237 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound10237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10237.moment H = canonicalOutput10237.moment H :=
  canonical_of_padded canonicalInput10237 canonicalOutput10237 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10238 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput10238 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound10238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10238.moment H = canonicalOutput10238.moment H :=
  canonical_of_padded canonicalInput10238 canonicalOutput10238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10239 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput10239 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound10239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10239.moment H = canonicalOutput10239.moment H :=
  canonical_of_padded canonicalInput10239 canonicalOutput10239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
