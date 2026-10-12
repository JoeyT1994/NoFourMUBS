import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9152 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput9152 : ExponentCode := normalNode4212

theorem canonicalSound9152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9152.moment H = canonicalOutput9152.moment H :=
  canonical_of_padded canonicalInput9152 canonicalOutput9152 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9153 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 0, 1], ![1, 1, 1, -2, -1], ![1, -2, 0, 1, 0]]⟩

def canonicalOutput9153 : ExponentCode := normalNode4498

theorem canonicalSound9153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9153.moment H = canonicalOutput9153.moment H :=
  canonical_of_padded canonicalInput9153 canonicalOutput9153 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9154 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, -3, 1, 1, 1], ![2, 2, 0, -3, -1]]⟩

def canonicalOutput9154 : ExponentCode := normalNode4081

theorem canonicalSound9154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9154.moment H = canonicalOutput9154.moment H :=
  canonical_of_padded canonicalInput9154 canonicalOutput9154 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9155 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, -2, 0, 0, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9155 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound9155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9155.moment H = canonicalOutput9155.moment H :=
  canonical_of_padded canonicalInput9155 canonicalOutput9155 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9156 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, -2, 1, -1, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput9156 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound9156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9156.moment H = canonicalOutput9156.moment H :=
  canonical_of_padded canonicalInput9156 canonicalOutput9156 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9157 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, -2, 1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput9157 : ExponentCode := normalNode4090

theorem canonicalSound9157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9157.moment H = canonicalOutput9157.moment H :=
  canonical_of_padded canonicalInput9157 canonicalOutput9157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9158 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput9158 : ExponentCode := normalNode4091

theorem canonicalSound9158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9158.moment H = canonicalOutput9158.moment H :=
  canonical_of_padded canonicalInput9158 canonicalOutput9158 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9159 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput9159 : ExponentCode := normalNode3901

theorem canonicalSound9159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9159.moment H = canonicalOutput9159.moment H :=
  canonical_of_padded canonicalInput9159 canonicalOutput9159 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9160 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, -2, 0, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9160 : ExponentCode := normalNode4498

theorem canonicalSound9160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9160.moment H = canonicalOutput9160.moment H :=
  canonical_of_padded canonicalInput9160 canonicalOutput9160 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9161 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, -2, 1, -1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput9161 : ExponentCode := normalNode4385

theorem canonicalSound9161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9161.moment H = canonicalOutput9161.moment H :=
  canonical_of_padded canonicalInput9161 canonicalOutput9161 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9162 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 1, 1, -1, -2], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput9162 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound9162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9162.moment H = canonicalOutput9162.moment H :=
  canonical_of_padded canonicalInput9162 canonicalOutput9162 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9163 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -1, 1, -1], ![0, -3, 1, 1, 1], ![2, 2, -1, -3, 0]]⟩

def canonicalOutput9163 : ExponentCode := normalNode3944

theorem canonicalSound9163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9163.moment H = canonicalOutput9163.moment H :=
  canonical_of_padded canonicalInput9163 canonicalOutput9163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9164 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, -3, 1], ![2, -2, -1, 1, 0]]⟩

def canonicalOutput9164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2019⟩

theorem canonicalSound9164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9164.moment H = canonicalOutput9164.moment H :=
  canonical_of_padded canonicalInput9164 canonicalOutput9164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9165 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -1, 1, -1], ![1, -2, 1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput9165 : ExponentCode := normalNode4385

theorem canonicalSound9165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9165.moment H = canonicalOutput9165.moment H :=
  canonical_of_padded canonicalInput9165 canonicalOutput9165 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9166 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, -1, 1, -1], ![1, 1, -1, -1, 0], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput9166 : ExponentCode := normalNode4396

theorem canonicalSound9166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9166.moment H = canonicalOutput9166.moment H :=
  canonical_of_padded canonicalInput9166 canonicalOutput9166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9167 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, 0, 1, -2], ![0, 1, -2, -1, 2], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput9167 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code863

theorem canonicalSound9167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9167.moment H = canonicalOutput9167.moment H :=
  canonical_of_padded canonicalInput9167 canonicalOutput9167 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9168 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, 0, 1, -2], ![0, 1, -2, 0, 1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9168 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound9168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9168.moment H = canonicalOutput9168.moment H :=
  canonical_of_padded canonicalInput9168 canonicalOutput9168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9169 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, -1, 1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput9169 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound9169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9169.moment H = canonicalOutput9169.moment H :=
  canonical_of_padded canonicalInput9169 canonicalOutput9169 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9170 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9170 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound9170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9170.moment H = canonicalOutput9170.moment H :=
  canonical_of_padded canonicalInput9170 canonicalOutput9170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9171 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -3, 1, 0], ![1, -2, 1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput9171 : ExponentCode := normalNode4489

theorem canonicalSound9171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9171.moment H = canonicalOutput9171.moment H :=
  canonical_of_padded canonicalInput9171 canonicalOutput9171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9172 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![-1, -2, 1, 1, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput9172 : ExponentCode := normalNode3607

theorem canonicalSound9172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9172.moment H = canonicalOutput9172.moment H :=
  canonical_of_padded canonicalInput9172 canonicalOutput9172 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9173 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![0, -3, 1, 1, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput9173 : ExponentCode := normalNode3509

theorem canonicalSound9173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9173.moment H = canonicalOutput9173.moment H :=
  canonical_of_padded canonicalInput9173 canonicalOutput9173 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9174 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![0, -1, 1, -2, 2], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput9174 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound9174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9174.moment H = canonicalOutput9174.moment H :=
  canonical_of_padded canonicalInput9174 canonicalOutput9174 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9175 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![0, 0, 0, -2, 2], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9175 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code838

theorem canonicalSound9175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9175.moment H = canonicalOutput9175.moment H :=
  canonical_of_padded canonicalInput9175 canonicalOutput9175 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9176 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, -2, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput9176 : ExponentCode := normalNode4269

theorem canonicalSound9176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9176.moment H = canonicalOutput9176.moment H :=
  canonical_of_padded canonicalInput9176 canonicalOutput9176 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9177 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput9177 : ExponentCode := normalNode3873

theorem canonicalSound9177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9177.moment H = canonicalOutput9177.moment H :=
  canonical_of_padded canonicalInput9177 canonicalOutput9177 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9178 : ExponentCode := ⟨3, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -2, 1, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9178 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound9178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9178.moment H = canonicalOutput9178.moment H :=
  canonical_of_padded canonicalInput9178 canonicalOutput9178 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9179 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, -1, 0], ![0, -1, -1, 3, -1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput9179 : ExponentCode := normalNode4062

theorem canonicalSound9179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9179.moment H = canonicalOutput9179.moment H :=
  canonical_of_padded canonicalInput9179 canonicalOutput9179 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9180 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, 0, -1], ![0, -3, 1, 1, 1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput9180 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound9180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9180.moment H = canonicalOutput9180.moment H :=
  canonical_of_padded canonicalInput9180 canonicalOutput9180 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9181 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, 0, -1], ![0, -1, 1, -2, 2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput9181 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound9181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9181.moment H = canonicalOutput9181.moment H :=
  canonical_of_padded canonicalInput9181 canonicalOutput9181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9182 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, 0, -1], ![0, 1, 1, -3, 1], ![2, -3, -1, 2, 0]]⟩

def canonicalOutput9182 : ExponentCode := normalNode3542

theorem canonicalSound9182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9182.moment H = canonicalOutput9182.moment H :=
  canonical_of_padded canonicalInput9182 canonicalOutput9182 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9183 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, 0, -1], ![1, -3, 1, 1, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput9183 : ExponentCode := normalNode3521

theorem canonicalSound9183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9183.moment H = canonicalOutput9183.moment H :=
  canonical_of_padded canonicalInput9183 canonicalOutput9183 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9184 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput9184 : ExponentCode := normalNode4311

theorem canonicalSound9184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9184.moment H = canonicalOutput9184.moment H :=
  canonical_of_padded canonicalInput9184 canonicalOutput9184 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9185 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, 0, 0, -2], ![0, -1, -2, 1, 2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput9185 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound9185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9185.moment H = canonicalOutput9185.moment H :=
  canonical_of_padded canonicalInput9185 canonicalOutput9185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9186 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, 0, 0, -2], ![0, 0, -2, 1, 1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9186 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound9186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9186.moment H = canonicalOutput9186.moment H :=
  canonical_of_padded canonicalInput9186 canonicalOutput9186 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9187 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput9187 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound9187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9187.moment H = canonicalOutput9187.moment H :=
  canonical_of_padded canonicalInput9187 canonicalOutput9187 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9188 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9188 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound9188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9188.moment H = canonicalOutput9188.moment H :=
  canonical_of_padded canonicalInput9188 canonicalOutput9188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9189 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![-1, 1, -2, 1, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9189 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound9189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9189.moment H = canonicalOutput9189.moment H :=
  canonical_of_padded canonicalInput9189 canonicalOutput9189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9190 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![-1, 2, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput9190 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound9190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9190.moment H = canonicalOutput9190.moment H :=
  canonical_of_padded canonicalInput9190 canonicalOutput9190 (by decide) (by decide)
    ⟨true, false, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9191 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![0, 0, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput9191 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound9191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9191.moment H = canonicalOutput9191.moment H :=
  canonical_of_padded canonicalInput9191 canonicalOutput9191 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9192 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput9192 : ExponentCode := normalNode4498

theorem canonicalSound9192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9192.moment H = canonicalOutput9192.moment H :=
  canonical_of_padded canonicalInput9192 canonicalOutput9192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9193 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput9193 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound9193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9193.moment H = canonicalOutput9193.moment H :=
  canonical_of_padded canonicalInput9193 canonicalOutput9193 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9194 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![1, 0, -2, 1, 0], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput9194 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound9194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9194.moment H = canonicalOutput9194.moment H :=
  canonical_of_padded canonicalInput9194 canonicalOutput9194 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9195 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 0, 1], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput9195 : ExponentCode := normalNode4498

theorem canonicalSound9195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9195.moment H = canonicalOutput9195.moment H :=
  canonical_of_padded canonicalInput9195 canonicalOutput9195 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9196 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![-2, 1, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput9196 : ExponentCode := normalNode4504

theorem canonicalSound9196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9196.moment H = canonicalOutput9196.moment H :=
  canonical_of_padded canonicalInput9196 canonicalOutput9196 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9197 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![-1, 2, -2, -1, 2], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput9197 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code899

theorem canonicalSound9197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9197.moment H = canonicalOutput9197.moment H :=
  canonical_of_padded canonicalInput9197 canonicalOutput9197 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9198 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![-1, 2, -2, 0, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput9198 : ExponentCode := normalNode4058

theorem canonicalSound9198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9198.moment H = canonicalOutput9198.moment H :=
  canonical_of_padded canonicalInput9198 canonicalOutput9198 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9199 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![0, 0, -2, 0, 2], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput9199 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound9199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9199.moment H = canonicalOutput9199.moment H :=
  canonical_of_padded canonicalInput9199 canonicalOutput9199 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9200 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![0, 1, -2, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput9200 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound9200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9200.moment H = canonicalOutput9200.moment H :=
  canonical_of_padded canonicalInput9200 canonicalOutput9200 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9201 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![0, 2, -2, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput9201 : ExponentCode := normalNode3901

theorem canonicalSound9201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9201.moment H = canonicalOutput9201.moment H :=
  canonical_of_padded canonicalInput9201 canonicalOutput9201 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9202 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![1, 0, -2, 0, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput9202 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound9202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9202.moment H = canonicalOutput9202.moment H :=
  canonical_of_padded canonicalInput9202 canonicalOutput9202 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9203 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -2, 0, 1, 0], ![1, 1, -2, -1, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput9203 : ExponentCode := normalNode4385

theorem canonicalSound9203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9203.moment H = canonicalOutput9203.moment H :=
  canonical_of_padded canonicalInput9203 canonicalOutput9203 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9204 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -1, -1, 1, 0], ![0, -1, 1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput9204 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound9204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9204.moment H = canonicalOutput9204.moment H :=
  canonical_of_padded canonicalInput9204 canonicalOutput9204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9205 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -1, -1, 1, 0], ![1, -1, 1, -2, 1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput9205 : ExponentCode := normalNode4311

theorem canonicalSound9205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9205.moment H = canonicalOutput9205.moment H :=
  canonical_of_padded canonicalInput9205 canonicalOutput9205 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9206 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -1, 0, 1, -1], ![0, -1, 1, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput9206 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound9206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9206.moment H = canonicalOutput9206.moment H :=
  canonical_of_padded canonicalInput9206 canonicalOutput9206 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9207 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, -1, 0, 1, -1], ![1, -1, 1, -2, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput9207 : ExponentCode := normalNode4269

theorem canonicalSound9207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9207.moment H = canonicalOutput9207.moment H :=
  canonical_of_padded canonicalInput9207 canonicalOutput9207 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9208 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 0, 1], ![-1, 2, 1, -2, 0], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput9208 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2241⟩

theorem canonicalSound9208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9208.moment H = canonicalOutput9208.moment H :=
  canonical_of_padded canonicalInput9208 canonicalOutput9208 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9209 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![-1, 2, 1, -1, -1], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput9209 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2225⟩

theorem canonicalSound9209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9209.moment H = canonicalOutput9209.moment H :=
  canonical_of_padded canonicalInput9209 canonicalOutput9209 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9210 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![0, -2, 1, -1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput9210 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound9210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9210.moment H = canonicalOutput9210.moment H :=
  canonical_of_padded canonicalInput9210 canonicalOutput9210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9211 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![0, 2, 0, 0, -2], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput9211 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound9211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9211.moment H = canonicalOutput9211.moment H :=
  canonical_of_padded canonicalInput9211 canonicalOutput9211 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9212 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![0, 2, 1, -1, -2], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput9212 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound9212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9212.moment H = canonicalOutput9212.moment H :=
  canonical_of_padded canonicalInput9212 canonicalOutput9212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9213 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![1, -2, 1, -1, 1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput9213 : ExponentCode := normalNode3994

theorem canonicalSound9213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9213.moment H = canonicalOutput9213.moment H :=
  canonical_of_padded canonicalInput9213 canonicalOutput9213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput9214 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -2, 1, 0], ![1, 2, 0, 0, -3], ![0, -2, 1, -2, 3]]⟩

def canonicalOutput9214 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound9214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9214.moment H = canonicalOutput9214.moment H :=
  canonical_of_padded canonicalInput9214 canonicalOutput9214 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9215 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![1, 0, -1, 0, 0], ![0, 2, 1, -2, -1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput9215 : ExponentCode := normalNode11115

theorem canonicalSound9215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9215.moment H = canonicalOutput9215.moment H :=
  canonical_of_padded canonicalInput9215 canonicalOutput9215 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
