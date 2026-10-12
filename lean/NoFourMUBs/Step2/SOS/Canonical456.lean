import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29184 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput29184 : ExponentCode := normalNode3900

theorem canonicalSound29184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29184.moment H = canonicalOutput29184.moment H :=
  canonical_of_padded canonicalInput29184 canonicalOutput29184 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29185 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput29185 : ExponentCode := normalNode6194

theorem canonicalSound29185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29185.moment H = canonicalOutput29185.moment H :=
  canonical_of_padded canonicalInput29185 canonicalOutput29185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29186 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput29186 : ExponentCode := normalNode9340

theorem canonicalSound29186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29186.moment H = canonicalOutput29186.moment H :=
  canonical_of_padded canonicalInput29186 canonicalOutput29186 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29187 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![0, -1, 2, -1], ![-2, 1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput29187 : ExponentCode := normalNode2406

theorem canonicalSound29187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29187.moment H = canonicalOutput29187.moment H :=
  canonical_of_padded canonicalInput29187 canonicalOutput29187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29188 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput29188 : ExponentCode := normalNode6911

theorem canonicalSound29188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29188.moment H = canonicalOutput29188.moment H :=
  canonical_of_padded canonicalInput29188 canonicalOutput29188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29189 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, -1, 0, 0], ![0, 1, 2, -3], ![-2, 2, -2, 2]]⟩

def canonicalOutput29189 : ExponentCode := normalNode785

theorem canonicalSound29189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29189.moment H = canonicalOutput29189.moment H :=
  canonical_of_padded canonicalInput29189 canonicalOutput29189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29190 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput29190 : ExponentCode := normalNode2650

theorem canonicalSound29190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29190.moment H = canonicalOutput29190.moment H :=
  canonical_of_padded canonicalInput29190 canonicalOutput29190 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29191 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput29191 : ExponentCode := normalNode3886

theorem canonicalSound29191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29191.moment H = canonicalOutput29191.moment H :=
  canonical_of_padded canonicalInput29191 canonicalOutput29191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29192 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput29192 : ExponentCode := normalNode4453

theorem canonicalSound29192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29192.moment H = canonicalOutput29192.moment H :=
  canonical_of_padded canonicalInput29192 canonicalOutput29192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29193 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput29193 : ExponentCode := normalNode4375

theorem canonicalSound29193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29193.moment H = canonicalOutput29193.moment H :=
  canonical_of_padded canonicalInput29193 canonicalOutput29193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29194 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput29194 : ExponentCode := normalNode2643

theorem canonicalSound29194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29194.moment H = canonicalOutput29194.moment H :=
  canonical_of_padded canonicalInput29194 canonicalOutput29194 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29195 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29195 : ExponentCode := normalNode8857

theorem canonicalSound29195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29195.moment H = canonicalOutput29195.moment H :=
  canonical_of_padded canonicalInput29195 canonicalOutput29195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29196 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput29196 : ExponentCode := normalNode9318

theorem canonicalSound29196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29196.moment H = canonicalOutput29196.moment H :=
  canonical_of_padded canonicalInput29196 canonicalOutput29196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29197 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput29197 : ExponentCode := normalNode7808

theorem canonicalSound29197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29197.moment H = canonicalOutput29197.moment H :=
  canonical_of_padded canonicalInput29197 canonicalOutput29197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29198 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, 1, 1, -1], ![-1, -2, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput29198 : ExponentCode := normalNode6876

theorem canonicalSound29198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29198.moment H = canonicalOutput29198.moment H :=
  canonical_of_padded canonicalInput29198 canonicalOutput29198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29199 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![0, -2, 1, 1], ![1, 1, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput29199 : ExponentCode := normalNode2500

theorem canonicalSound29199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29199.moment H = canonicalOutput29199.moment H :=
  canonical_of_padded canonicalInput29199 canonicalOutput29199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29200 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![0, -1, -1, 2], ![1, 1, 0, -2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29200 : ExponentCode := normalNode5680

theorem canonicalSound29200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29200.moment H = canonicalOutput29200.moment H :=
  canonical_of_padded canonicalInput29200 canonicalOutput29200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29201 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput29201 : ExponentCode := normalNode5123

theorem canonicalSound29201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29201.moment H = canonicalOutput29201.moment H :=
  canonical_of_padded canonicalInput29201 canonicalOutput29201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29202 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29202 : ExponentCode := normalNode2348

theorem canonicalSound29202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29202.moment H = canonicalOutput29202.moment H :=
  canonical_of_padded canonicalInput29202 canonicalOutput29202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29203 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput29203 : ExponentCode := normalNode2653

theorem canonicalSound29203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29203.moment H = canonicalOutput29203.moment H :=
  canonical_of_padded canonicalInput29203 canonicalOutput29203 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29204 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29204 : ExponentCode := normalNode5203

theorem canonicalSound29204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29204.moment H = canonicalOutput29204.moment H :=
  canonical_of_padded canonicalInput29204 canonicalOutput29204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29205 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29205 : ExponentCode := normalNode11012

theorem canonicalSound29205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29205.moment H = canonicalOutput29205.moment H :=
  canonical_of_padded canonicalInput29205 canonicalOutput29205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29206 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 3, 0, -2]]⟩

def canonicalOutput29206 : ExponentCode := normalNode6679

theorem canonicalSound29206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29206.moment H = canonicalOutput29206.moment H :=
  canonical_of_padded canonicalInput29206 canonicalOutput29206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29207 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput29207 : ExponentCode := normalNode1709

theorem canonicalSound29207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29207.moment H = canonicalOutput29207.moment H :=
  canonical_of_padded canonicalInput29207 canonicalOutput29207 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29208 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput29208 : ExponentCode := normalNode6922

theorem canonicalSound29208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29208.moment H = canonicalOutput29208.moment H :=
  canonical_of_padded canonicalInput29208 canonicalOutput29208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29209 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput29209 : ExponentCode := normalNode5876

theorem canonicalSound29209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29209.moment H = canonicalOutput29209.moment H :=
  canonical_of_padded canonicalInput29209 canonicalOutput29209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29210 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput29210 : ExponentCode := normalNode2648

theorem canonicalSound29210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29210.moment H = canonicalOutput29210.moment H :=
  canonical_of_padded canonicalInput29210 canonicalOutput29210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29211 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 3, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29211 : ExponentCode := normalNode855

theorem canonicalSound29211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29211.moment H = canonicalOutput29211.moment H :=
  canonical_of_padded canonicalInput29211 canonicalOutput29211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29212 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput29212 : ExponentCode := normalNode1819

theorem canonicalSound29212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29212.moment H = canonicalOutput29212.moment H :=
  canonical_of_padded canonicalInput29212 canonicalOutput29212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29213 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput29213 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3071⟩

theorem canonicalSound29213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29213.moment H = canonicalOutput29213.moment H :=
  canonical_of_padded canonicalInput29213 canonicalOutput29213 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29214 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput29214 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2951⟩

theorem canonicalSound29214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29214.moment H = canonicalOutput29214.moment H :=
  canonical_of_padded canonicalInput29214 canonicalOutput29214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29215 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput29215 : ExponentCode := normalNode3791

theorem canonicalSound29215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29215.moment H = canonicalOutput29215.moment H :=
  canonical_of_padded canonicalInput29215 canonicalOutput29215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29216 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput29216 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3069⟩

theorem canonicalSound29216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29216.moment H = canonicalOutput29216.moment H :=
  canonical_of_padded canonicalInput29216 canonicalOutput29216 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29217 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput29217 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3065⟩

theorem canonicalSound29217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29217.moment H = canonicalOutput29217.moment H :=
  canonical_of_padded canonicalInput29217 canonicalOutput29217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29218 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput29218 : ExponentCode := normalNode3870

theorem canonicalSound29218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29218.moment H = canonicalOutput29218.moment H :=
  canonical_of_padded canonicalInput29218 canonicalOutput29218 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29219 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput29219 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3426⟩

theorem canonicalSound29219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29219.moment H = canonicalOutput29219.moment H :=
  canonical_of_padded canonicalInput29219 canonicalOutput29219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29220 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput29220 : ExponentCode := normalNode3870

theorem canonicalSound29220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29220.moment H = canonicalOutput29220.moment H :=
  canonical_of_padded canonicalInput29220 canonicalOutput29220 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput29221 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput29221 : ExponentCode := normalNode4454

theorem canonicalSound29221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29221.moment H = canonicalOutput29221.moment H :=
  canonical_of_padded canonicalInput29221 canonicalOutput29221 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29222 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput29222 : ExponentCode := normalNode4378

theorem canonicalSound29222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29222.moment H = canonicalOutput29222.moment H :=
  canonical_of_padded canonicalInput29222 canonicalOutput29222 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29223 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput29223 : ExponentCode := normalNode5397

theorem canonicalSound29223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29223.moment H = canonicalOutput29223.moment H :=
  canonical_of_padded canonicalInput29223 canonicalOutput29223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29224 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput29224 : ExponentCode := normalNode4378

theorem canonicalSound29224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29224.moment H = canonicalOutput29224.moment H :=
  canonical_of_padded canonicalInput29224 canonicalOutput29224 (by decide) (by decide)
    ⟨false, false, canonicalPermutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29225 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput29225 : ExponentCode := normalNode6165

theorem canonicalSound29225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29225.moment H = canonicalOutput29225.moment H :=
  canonical_of_padded canonicalInput29225 canonicalOutput29225 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29226 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput29226 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3055⟩

theorem canonicalSound29226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29226.moment H = canonicalOutput29226.moment H :=
  canonical_of_padded canonicalInput29226 canonicalOutput29226 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29227 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29227 : ExponentCode := normalNode7703

theorem canonicalSound29227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29227.moment H = canonicalOutput29227.moment H :=
  canonical_of_padded canonicalInput29227 canonicalOutput29227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation150, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput29228 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput29228 : ExponentCode := normalNode6166

theorem canonicalSound29228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29228.moment H = canonicalOutput29228.moment H :=
  canonical_of_padded canonicalInput29228 canonicalOutput29228 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29229 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput29229 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3060⟩

theorem canonicalSound29229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29229.moment H = canonicalOutput29229.moment H :=
  canonical_of_padded canonicalInput29229 canonicalOutput29229 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29230 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput29230 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3064⟩

theorem canonicalSound29230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29230.moment H = canonicalOutput29230.moment H :=
  canonical_of_padded canonicalInput29230 canonicalOutput29230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29231 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput29231 : ExponentCode := normalNode10567

theorem canonicalSound29231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29231.moment H = canonicalOutput29231.moment H :=
  canonical_of_padded canonicalInput29231 canonicalOutput29231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29232 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput29232 : ExponentCode := normalNode8868

theorem canonicalSound29232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29232.moment H = canonicalOutput29232.moment H :=
  canonical_of_padded canonicalInput29232 canonicalOutput29232 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29233 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, -1, 1, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput29233 : ExponentCode := normalNode7715

theorem canonicalSound29233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29233.moment H = canonicalOutput29233.moment H :=
  canonical_of_padded canonicalInput29233 canonicalOutput29233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29234 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput29234 : ExponentCode := normalNode9335

theorem canonicalSound29234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29234.moment H = canonicalOutput29234.moment H :=
  canonical_of_padded canonicalInput29234 canonicalOutput29234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29235 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput29235 : ExponentCode := normalNode8868

theorem canonicalSound29235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29235.moment H = canonicalOutput29235.moment H :=
  canonical_of_padded canonicalInput29235 canonicalOutput29235 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29236 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 0, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput29236 : ExponentCode := normalNode7731

theorem canonicalSound29236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29236.moment H = canonicalOutput29236.moment H :=
  canonical_of_padded canonicalInput29236 canonicalOutput29236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation319, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29237 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 3, -2, 0]]⟩

def canonicalOutput29237 : ExponentCode := normalNode9819

theorem canonicalSound29237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29237.moment H = canonicalOutput29237.moment H :=
  canonical_of_padded canonicalInput29237 canonicalOutput29237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29238 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, -1, -1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput29238 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3236⟩

theorem canonicalSound29238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29238.moment H = canonicalOutput29238.moment H :=
  canonical_of_padded canonicalInput29238 canonicalOutput29238 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29239 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -2, -1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput29239 : ExponentCode := normalNode9339

theorem canonicalSound29239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29239.moment H = canonicalOutput29239.moment H :=
  canonical_of_padded canonicalInput29239 canonicalOutput29239 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29240 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29240 : ExponentCode := normalNode11012

theorem canonicalSound29240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29240.moment H = canonicalOutput29240.moment H :=
  canonical_of_padded canonicalInput29240 canonicalOutput29240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29241 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput29241 : ExponentCode := normalNode5104

theorem canonicalSound29241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29241.moment H = canonicalOutput29241.moment H :=
  canonical_of_padded canonicalInput29241 canonicalOutput29241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation321, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29242 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, -2, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput29242 : ExponentCode := normalNode2501

theorem canonicalSound29242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29242.moment H = canonicalOutput29242.moment H :=
  canonical_of_padded canonicalInput29242 canonicalOutput29242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29243 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, -1, -1], ![-2, 2, 0, 0]]⟩

def canonicalOutput29243 : ExponentCode := normalNode3948

theorem canonicalSound29243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29243.moment H = canonicalOutput29243.moment H :=
  canonical_of_padded canonicalInput29243 canonicalOutput29243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29244 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput29244 : ExponentCode := normalNode2405

theorem canonicalSound29244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29244.moment H = canonicalOutput29244.moment H :=
  canonical_of_padded canonicalInput29244 canonicalOutput29244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29245 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, -2, 3], ![1, 1, 0, -2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29245 : ExponentCode := normalNode5665

theorem canonicalSound29245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29245.moment H = canonicalOutput29245.moment H :=
  canonical_of_padded canonicalInput29245 canonicalOutput29245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29246 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, -1, 2], ![1, 1, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29246 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3250⟩

theorem canonicalSound29246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29246.moment H = canonicalOutput29246.moment H :=
  canonical_of_padded canonicalInput29246 canonicalOutput29246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29247 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, -1, 2], ![1, 1, 0, -2], ![-2, 1, 1, 0]]⟩

def canonicalOutput29247 : ExponentCode := normalNode5619

theorem canonicalSound29247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29247.moment H = canonicalOutput29247.moment H :=
  canonical_of_padded canonicalInput29247 canonicalOutput29247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
