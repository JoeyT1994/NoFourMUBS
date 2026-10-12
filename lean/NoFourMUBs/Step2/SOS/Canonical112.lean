import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7168 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-3, 2, 3, -2], ![5, -2, -3, 0]]⟩

def canonicalOutput7168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound7168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7168.moment H = canonicalOutput7168.moment H :=
  canonical_of_padded canonicalInput7168 canonicalOutput7168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7169 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-2, -2, 2, 2], ![4, 2, -2, -4]]⟩

def canonicalOutput7169 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound7169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7169.moment H = canonicalOutput7169.moment H :=
  canonical_of_padded canonicalInput7169 canonicalOutput7169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7170 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-2, -2, 3, 1], ![4, 2, -3, -3]]⟩

def canonicalOutput7170 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code234

theorem canonicalSound7170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7170.moment H = canonicalOutput7170.moment H :=
  canonical_of_padded canonicalInput7170 canonicalOutput7170 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7171 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-2, -2, 4, 0], ![4, 2, -4, -2]]⟩

def canonicalOutput7171 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code235

theorem canonicalSound7171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7171.moment H = canonicalOutput7171.moment H :=
  canonical_of_padded canonicalInput7171 canonicalOutput7171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7172 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-1, -2, 5, -2], ![3, 2, -5, 0]]⟩

def canonicalOutput7172 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound7172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7172.moment H = canonicalOutput7172.moment H :=
  canonical_of_padded canonicalInput7172 canonicalOutput7172 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7173 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![-1, 2, 2, -3], ![3, -2, -2, 1]]⟩

def canonicalOutput7173 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node182⟩

theorem canonicalSound7173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7173.moment H = canonicalOutput7173.moment H :=
  canonical_of_padded canonicalInput7173 canonicalOutput7173 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7174 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![0, -4, 4, 0], ![2, 4, -4, -2]]⟩

def canonicalOutput7174 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1041

theorem canonicalSound7174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7174.moment H = canonicalOutput7174.moment H :=
  canonical_of_padded canonicalInput7174 canonicalOutput7174 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7175 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput7175 : ExponentCode := normalNode3943

theorem canonicalSound7175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7175.moment H = canonicalOutput7175.moment H :=
  canonical_of_padded canonicalInput7175 canonicalOutput7175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7176 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7176 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2038⟩

theorem canonicalSound7176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7176.moment H = canonicalOutput7176.moment H :=
  canonical_of_padded canonicalInput7176 canonicalOutput7176 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7177 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 1, 2], ![1, 1, 2, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput7177 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code122

theorem canonicalSound7177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7177.moment H = canonicalOutput7177.moment H :=
  canonical_of_padded canonicalInput7177 canonicalOutput7177 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7178 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7178 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩

theorem canonicalSound7178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7178.moment H = canonicalOutput7178.moment H :=
  canonical_of_padded canonicalInput7178 canonicalOutput7178 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7179 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput7179 : ExponentCode := normalNode3492

theorem canonicalSound7179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7179.moment H = canonicalOutput7179.moment H :=
  canonical_of_padded canonicalInput7179 canonicalOutput7179 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7180 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7180 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound7180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7180.moment H = canonicalOutput7180.moment H :=
  canonical_of_padded canonicalInput7180 canonicalOutput7180 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7181 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, -1, 0], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7181 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound7181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7181.moment H = canonicalOutput7181.moment H :=
  canonical_of_padded canonicalInput7181 canonicalOutput7181 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7182 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7182 : ExponentCode := normalNode3607

theorem canonicalSound7182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7182.moment H = canonicalOutput7182.moment H :=
  canonical_of_padded canonicalInput7182 canonicalOutput7182 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7183 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput7183 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1957⟩

theorem canonicalSound7183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7183.moment H = canonicalOutput7183.moment H :=
  canonical_of_padded canonicalInput7183 canonicalOutput7183 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7184 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput7184 : ExponentCode := normalNode3471

theorem canonicalSound7184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7184.moment H = canonicalOutput7184.moment H :=
  canonical_of_padded canonicalInput7184 canonicalOutput7184 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7185 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7185 : ExponentCode := normalNode3509

theorem canonicalSound7185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7185.moment H = canonicalOutput7185.moment H :=
  canonical_of_padded canonicalInput7185 canonicalOutput7185 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7186 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7186 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1958⟩

theorem canonicalSound7186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7186.moment H = canonicalOutput7186.moment H :=
  canonical_of_padded canonicalInput7186 canonicalOutput7186 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7187 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7187 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code832

theorem canonicalSound7187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7187.moment H = canonicalOutput7187.moment H :=
  canonical_of_padded canonicalInput7187 canonicalOutput7187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7188 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput7188 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code912

theorem canonicalSound7188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7188.moment H = canonicalOutput7188.moment H :=
  canonical_of_padded canonicalInput7188 canonicalOutput7188 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7189 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7189 : ExponentCode := normalNode3451

theorem canonicalSound7189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7189.moment H = canonicalOutput7189.moment H :=
  canonical_of_padded canonicalInput7189 canonicalOutput7189 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7190 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7190 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code833

theorem canonicalSound7190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7190.moment H = canonicalOutput7190.moment H :=
  canonical_of_padded canonicalInput7190 canonicalOutput7190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7191 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput7191 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code762

theorem canonicalSound7191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7191.moment H = canonicalOutput7191.moment H :=
  canonical_of_padded canonicalInput7191 canonicalOutput7191 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7192 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7192 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩

theorem canonicalSound7192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7192.moment H = canonicalOutput7192.moment H :=
  canonical_of_padded canonicalInput7192 canonicalOutput7192 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7193 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, -1, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7193 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code834

theorem canonicalSound7193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7193.moment H = canonicalOutput7193.moment H :=
  canonical_of_padded canonicalInput7193 canonicalOutput7193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7194 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7194 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩

theorem canonicalSound7194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7194.moment H = canonicalOutput7194.moment H :=
  canonical_of_padded canonicalInput7194 canonicalOutput7194 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7195 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7195 : ExponentCode := normalNode3475

theorem canonicalSound7195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7195.moment H = canonicalOutput7195.moment H :=
  canonical_of_padded canonicalInput7195 canonicalOutput7195 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7196 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 2, 1, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput7196 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code401

theorem canonicalSound7196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7196.moment H = canonicalOutput7196.moment H :=
  canonical_of_padded canonicalInput7196 canonicalOutput7196 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7197 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, -3, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput7197 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code399

theorem canonicalSound7197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7197.moment H = canonicalOutput7197.moment H :=
  canonical_of_padded canonicalInput7197 canonicalOutput7197 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7198 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7198 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound7198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7198.moment H = canonicalOutput7198.moment H :=
  canonical_of_padded canonicalInput7198 canonicalOutput7198 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7199 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, -1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7199 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound7199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7199.moment H = canonicalOutput7199.moment H :=
  canonical_of_padded canonicalInput7199 canonicalOutput7199 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7200 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1967⟩

theorem canonicalSound7200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7200.moment H = canonicalOutput7200.moment H :=
  canonical_of_padded canonicalInput7200 canonicalOutput7200 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7201 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7201 : ExponentCode := normalNode3722

theorem canonicalSound7201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7201.moment H = canonicalOutput7201.moment H :=
  canonical_of_padded canonicalInput7201 canonicalOutput7201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7202 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput7202 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code278

theorem canonicalSound7202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7202.moment H = canonicalOutput7202.moment H :=
  canonical_of_padded canonicalInput7202 canonicalOutput7202 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7203 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput7203 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1183

theorem canonicalSound7203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7203.moment H = canonicalOutput7203.moment H :=
  canonical_of_padded canonicalInput7203 canonicalOutput7203 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7204 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput7204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code277

theorem canonicalSound7204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7204.moment H = canonicalOutput7204.moment H :=
  canonical_of_padded canonicalInput7204 canonicalOutput7204 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7205 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput7205 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound7205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7205.moment H = canonicalOutput7205.moment H :=
  canonical_of_padded canonicalInput7205 canonicalOutput7205 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7206 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput7206 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound7206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7206.moment H = canonicalOutput7206.moment H :=
  canonical_of_padded canonicalInput7206 canonicalOutput7206 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7207 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 1, 1, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput7207 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound7207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7207.moment H = canonicalOutput7207.moment H :=
  canonical_of_padded canonicalInput7207 canonicalOutput7207 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7208 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput7208 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound7208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7208.moment H = canonicalOutput7208.moment H :=
  canonical_of_padded canonicalInput7208 canonicalOutput7208 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7209 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 2, 0, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound7209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7209.moment H = canonicalOutput7209.moment H :=
  canonical_of_padded canonicalInput7209 canonicalOutput7209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7210 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7210 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1183

theorem canonicalSound7210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7210.moment H = canonicalOutput7210.moment H :=
  canonical_of_padded canonicalInput7210 canonicalOutput7210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7211 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 3, 0, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput7211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node461⟩

theorem canonicalSound7211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7211.moment H = canonicalOutput7211.moment H :=
  canonical_of_padded canonicalInput7211 canonicalOutput7211 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7212 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput7212 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code436

theorem canonicalSound7212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7212.moment H = canonicalOutput7212.moment H :=
  canonical_of_padded canonicalInput7212 canonicalOutput7212 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7213 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7213 : ExponentCode := normalNode5494

theorem canonicalSound7213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7213.moment H = canonicalOutput7213.moment H :=
  canonical_of_padded canonicalInput7213 canonicalOutput7213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7214 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7214 : ExponentCode := normalNode4045

theorem canonicalSound7214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7214.moment H = canonicalOutput7214.moment H :=
  canonical_of_padded canonicalInput7214 canonicalOutput7214 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7215 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput7215 : ExponentCode := normalNode5210

theorem canonicalSound7215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7215.moment H = canonicalOutput7215.moment H :=
  canonical_of_padded canonicalInput7215 canonicalOutput7215 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7216 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput7216 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2370⟩

theorem canonicalSound7216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7216.moment H = canonicalOutput7216.moment H :=
  canonical_of_padded canonicalInput7216 canonicalOutput7216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7217 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7217 : ExponentCode := normalNode5494

theorem canonicalSound7217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7217.moment H = canonicalOutput7217.moment H :=
  canonical_of_padded canonicalInput7217 canonicalOutput7217 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7218 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7218 : ExponentCode := normalNode5960

theorem canonicalSound7218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7218.moment H = canonicalOutput7218.moment H :=
  canonical_of_padded canonicalInput7218 canonicalOutput7218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7219 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7219 : ExponentCode := normalNode5471

theorem canonicalSound7219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7219.moment H = canonicalOutput7219.moment H :=
  canonical_of_padded canonicalInput7219 canonicalOutput7219 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7220 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7220 : ExponentCode := normalNode4102

theorem canonicalSound7220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7220.moment H = canonicalOutput7220.moment H :=
  canonical_of_padded canonicalInput7220 canonicalOutput7220 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7221 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput7221 : ExponentCode := normalNode5954

theorem canonicalSound7221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7221.moment H = canonicalOutput7221.moment H :=
  canonical_of_padded canonicalInput7221 canonicalOutput7221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput7222 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7222 : ExponentCode := normalNode5936

theorem canonicalSound7222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7222.moment H = canonicalOutput7222.moment H :=
  canonical_of_padded canonicalInput7222 canonicalOutput7222 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7223 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7223 : ExponentCode := normalNode5948

theorem canonicalSound7223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7223.moment H = canonicalOutput7223.moment H :=
  canonical_of_padded canonicalInput7223 canonicalOutput7223 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7224 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7224 : ExponentCode := normalNode3720

theorem canonicalSound7224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7224.moment H = canonicalOutput7224.moment H :=
  canonical_of_padded canonicalInput7224 canonicalOutput7224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7225 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7225 : ExponentCode := normalNode5471

theorem canonicalSound7225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7225.moment H = canonicalOutput7225.moment H :=
  canonical_of_padded canonicalInput7225 canonicalOutput7225 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7226 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7226 : ExponentCode := normalNode5961

theorem canonicalSound7226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7226.moment H = canonicalOutput7226.moment H :=
  canonical_of_padded canonicalInput7226 canonicalOutput7226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7227 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7227 : ExponentCode := normalNode4102

theorem canonicalSound7227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7227.moment H = canonicalOutput7227.moment H :=
  canonical_of_padded canonicalInput7227 canonicalOutput7227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput7228 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7228 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound7228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7228.moment H = canonicalOutput7228.moment H :=
  canonical_of_padded canonicalInput7228 canonicalOutput7228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7229 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -3, 3, 0], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput7229 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound7229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7229.moment H = canonicalOutput7229.moment H :=
  canonical_of_padded canonicalInput7229 canonicalOutput7229 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7230 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![0, -3, 5, -2], ![2, 3, -5, 0]]⟩

def canonicalOutput7230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1046

theorem canonicalSound7230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7230.moment H = canonicalOutput7230.moment H :=
  canonical_of_padded canonicalInput7230 canonicalOutput7230 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7231 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, -1, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput7231 : ExponentCode := normalNode3333

theorem canonicalSound7231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7231.moment H = canonicalOutput7231.moment H :=
  canonical_of_padded canonicalInput7231 canonicalOutput7231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
