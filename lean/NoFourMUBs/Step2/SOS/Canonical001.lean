import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical1
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput64 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![2, -2, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput64 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound64 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput64.moment H = canonicalOutput64.moment H :=
  canonical_of_padded canonicalInput64 canonicalOutput64 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput65 : ExponentCode := ⟨6, 6, ![![-4, 1, 2, 1, 0, 0], ![2, -2, 2, -2, 0, 0], ![2, 1, -4, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput65 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound65 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput65.moment H = canonicalOutput65.moment H :=
  canonical_of_padded canonicalInput65 canonicalOutput65 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput66 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![4, -2, -2]]⟩

def canonicalOutput66 : ExponentCode := normalNode972

theorem canonicalSound66 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput66.moment H = canonicalOutput66.moment H :=
  canonical_of_padded canonicalInput66 canonicalOutput66 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput67 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![3, -2, -1]]⟩

def canonicalOutput67 : ExponentCode := normalNode2998

theorem canonicalSound67 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput67.moment H = canonicalOutput67.moment H :=
  canonical_of_padded canonicalInput67 canonicalOutput67 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput68 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![2, 1, -3]]⟩

def canonicalOutput68 : ExponentCode := normalNode4599

theorem canonicalSound68 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput68.moment H = canonicalOutput68.moment H :=
  canonical_of_padded canonicalInput68 canonicalOutput68 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput69 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![2, 2, -4]]⟩

def canonicalOutput69 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node428⟩

theorem canonicalSound69 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput69.moment H = canonicalOutput69.moment H :=
  canonical_of_padded canonicalInput69 canonicalOutput69 (by decide) (by decide)
    ⟨false, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput70 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, -1, 1], ![1, -1, 0], ![1, 2, -3], ![2, -1, -1]]⟩

def canonicalOutput70 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node540⟩

theorem canonicalSound70 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput70.moment H = canonicalOutput70.moment H :=
  canonical_of_padded canonicalInput70 canonicalOutput70 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput71 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, -1, 1], ![1, 2, -3], ![3, -2, -1]]⟩

def canonicalOutput71 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound71 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput71.moment H = canonicalOutput71.moment H :=
  canonical_of_padded canonicalInput71 canonicalOutput71 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput72 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 0, 0], ![0, 1, -1], ![0, 1, -1], ![4, -3, -1]]⟩

def canonicalOutput72 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound72 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput72.moment H = canonicalOutput72.moment H :=
  canonical_of_padded canonicalInput72 canonicalOutput72 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput73 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 0, 0], ![0, 1, -1], ![1, 1, -2], ![3, -3, 0]]⟩

def canonicalOutput73 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound73 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput73.moment H = canonicalOutput73.moment H :=
  canonical_of_padded canonicalInput73 canonicalOutput73 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput74 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 0, 0], ![0, 1, -1], ![4, -3, -1]]⟩

def canonicalOutput74 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound74 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput74.moment H = canonicalOutput74.moment H :=
  canonical_of_padded canonicalInput74 canonicalOutput74 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput75 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 0, 0], ![1, 1, -2], ![3, -3, 0]]⟩

def canonicalOutput75 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound75 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput75.moment H = canonicalOutput75.moment H :=
  canonical_of_padded canonicalInput75 canonicalOutput75 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput76 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![0, 0, 0], ![4, -3, -1]]⟩

def canonicalOutput76 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩

theorem canonicalSound76 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput76.moment H = canonicalOutput76.moment H :=
  canonical_of_padded canonicalInput76 canonicalOutput76 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput77 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![4, -4, 0]]⟩

def canonicalOutput77 : ExponentCode := normalNode140

theorem canonicalSound77 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput77.moment H = canonicalOutput77.moment H :=
  canonical_of_padded canonicalInput77 canonicalOutput77 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput78 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![1, -2, 1], ![3, -1, -2]]⟩

def canonicalOutput78 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node694⟩

theorem canonicalSound78 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput78.moment H = canonicalOutput78.moment H :=
  canonical_of_padded canonicalInput78 canonicalOutput78 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput79 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![3, -2, -1]]⟩

def canonicalOutput79 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩

theorem canonicalSound79 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput79.moment H = canonicalOutput79.moment H :=
  canonical_of_padded canonicalInput79 canonicalOutput79 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput80 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![1, 0, -1], ![3, -3, 0]]⟩

def canonicalOutput80 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩

theorem canonicalSound80 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput80.moment H = canonicalOutput80.moment H :=
  canonical_of_padded canonicalInput80 canonicalOutput80 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput81 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput81 : ExponentCode := normalNode5573

theorem canonicalSound81 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput81.moment H = canonicalOutput81.moment H :=
  canonical_of_padded canonicalInput81 canonicalOutput81 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput82 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 1, -1], ![1, 1, -2], ![3, -3, 0]]⟩

def canonicalOutput82 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound82 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput82.moment H = canonicalOutput82.moment H :=
  canonical_of_padded canonicalInput82 canonicalOutput82 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput83 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 1, -1], ![2, -3, 1], ![2, 1, -3]]⟩

def canonicalOutput83 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound83 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput83.moment H = canonicalOutput83.moment H :=
  canonical_of_padded canonicalInput83 canonicalOutput83 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput84 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 2, -2], ![0, 1, -1], ![1, -2, 1], ![3, -2, -1]]⟩

def canonicalOutput84 : ExponentCode := normalNode6

theorem canonicalSound84 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput84.moment H = canonicalOutput84.moment H :=
  canonical_of_padded canonicalInput84 canonicalOutput84 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput85 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw54step0⟩

def canonicalOutput85 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩

theorem canonicalSound85 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput85.moment H = canonicalOutput85.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw54step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw54step0 = OAI.MUB6.Certificate.PairSemantics.raw54.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw54).trans (OAI.MUB6.Certificate.PairSemantics.canonical54 hH)

def canonicalInput86 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 2, -2], ![1, -1, 0], ![1, -1, 0], ![2, -1, -1]]⟩

def canonicalOutput86 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node314⟩

theorem canonicalSound86 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput86.moment H = canonicalOutput86.moment H :=
  canonical_of_padded canonicalInput86 canonicalOutput86 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput87 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![0, 2, -2], ![1, -1, 0], ![3, -2, -1]]⟩

def canonicalOutput87 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound87 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput87.moment H = canonicalOutput87.moment H :=
  canonical_of_padded canonicalInput87 canonicalOutput87 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput88 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 3, -3], ![1, -1, 0], ![1, -2, 1], ![2, -1, -1]]⟩

def canonicalOutput88 : ExponentCode := normalNode8

theorem canonicalSound88 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput88.moment H = canonicalOutput88.moment H :=
  canonical_of_padded canonicalInput88 canonicalOutput88 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput89 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0], ![2, -2, 0]]⟩

def canonicalOutput89 : ExponentCode := normalNode126

theorem canonicalSound89 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput89.moment H = canonicalOutput89.moment H :=
  canonical_of_padded canonicalInput89 canonicalOutput89 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput90 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -2, 1], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput90 : ExponentCode := normalNode5

theorem canonicalSound90 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput90.moment H = canonicalOutput90.moment H :=
  canonical_of_padded canonicalInput90 canonicalOutput90 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput91 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -2, 1], ![1, -1, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput91 : ExponentCode := normalNode3012

theorem canonicalSound91 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput91.moment H = canonicalOutput91.moment H :=
  canonical_of_padded canonicalInput91 canonicalOutput91 (by decide) (by decide)
    ⟨false, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput92 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -2, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput92 : ExponentCode := normalNode5574

theorem canonicalSound92 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput92.moment H = canonicalOutput92.moment H :=
  canonical_of_padded canonicalInput92 canonicalOutput92 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput93 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![1, -2, 1], ![1, -1, 0], ![2, 2, -4]]⟩

def canonicalOutput93 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound93 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput93.moment H = canonicalOutput93.moment H :=
  canonical_of_padded canonicalInput93 canonicalOutput93 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput94 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![1, -2, 1], ![1, 2, -3], ![2, -1, -1]]⟩

def canonicalOutput94 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound94 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput94.moment H = canonicalOutput94.moment H :=
  canonical_of_padded canonicalInput94 canonicalOutput94 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput95 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -1, 0], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput95 : ExponentCode := normalNode5

theorem canonicalSound95 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput95.moment H = canonicalOutput95.moment H :=
  canonical_of_padded canonicalInput95 canonicalOutput95 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput96 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -1, 0], ![1, -1, 0], ![1, -2, 1], ![1, 3, -4]]⟩

def canonicalOutput96 : ExponentCode := normalNode5

theorem canonicalSound96 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput96.moment H = canonicalOutput96.moment H :=
  canonical_of_padded canonicalInput96 canonicalOutput96 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput97 : ExponentCode := ⟨5, 3, ![![-4, 1, 3], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput97 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩

theorem canonicalSound97 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput97.moment H = canonicalOutput97.moment H :=
  canonical_of_padded canonicalInput97 canonicalOutput97 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput98 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![1, 0, -1], ![1, 2, -3], ![2, -3, 1]]⟩

def canonicalOutput98 : ExponentCode := normalNode216

theorem canonicalSound98 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput98.moment H = canonicalOutput98.moment H :=
  canonical_of_padded canonicalInput98 canonicalOutput98 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput99 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![1, 1, -2], ![1, 1, -2], ![2, -3, 1]]⟩

def canonicalOutput99 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound99 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput99.moment H = canonicalOutput99.moment H :=
  canonical_of_padded canonicalInput99 canonicalOutput99 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput100 : ExponentCode := ⟨4, 3, ![![-4, 1, 3], ![1, 2, -3], ![1, -2, 1], ![2, -1, -1]]⟩

def canonicalOutput100 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput100.moment H = canonicalOutput100.moment H :=
  canonical_of_padded canonicalInput100 canonicalOutput100 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput101 : ExponentCode := ⟨3, 3, ![![-4, 1, 3], ![1, 2, -3], ![3, -3, 0]]⟩

def canonicalOutput101 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩

theorem canonicalSound101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput101.moment H = canonicalOutput101.moment H :=
  canonical_of_padded canonicalInput101 canonicalOutput101 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput102 : ExponentCode := ⟨3, 3, ![![-4, 1, 3], ![2, -3, 1], ![2, 2, -4]]⟩

def canonicalOutput102 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node22⟩

theorem canonicalSound102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput102.moment H = canonicalOutput102.moment H :=
  canonical_of_padded canonicalInput102 canonicalOutput102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput103 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput103 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput103.moment H = canonicalOutput103.moment H :=
  canonical_of_padded canonicalInput103 canonicalOutput103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput104 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput104 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput104.moment H = canonicalOutput104.moment H :=
  canonical_of_padded canonicalInput104 canonicalOutput104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput105 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput105 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput105.moment H = canonicalOutput105.moment H :=
  canonical_of_padded canonicalInput105 canonicalOutput105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation306, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput106 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -2, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput106 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput106.moment H = canonicalOutput106.moment H :=
  canonical_of_padded canonicalInput106 canonicalOutput106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput107 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![2, -4, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput107 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code954

theorem canonicalSound107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput107.moment H = canonicalOutput107.moment H :=
  canonical_of_padded canonicalInput107 canonicalOutput107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput108 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![2, -4, 1, 1, 0, 0], ![2, 2, -2, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput108 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput108.moment H = canonicalOutput108.moment H :=
  canonical_of_padded canonicalInput108 canonicalOutput108 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation297, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput109 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![2, -1, 1, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput109 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput109.moment H = canonicalOutput109.moment H :=
  canonical_of_padded canonicalInput109 canonicalOutput109 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput110 : ExponentCode := ⟨6, 6, ![![-4, 2, 1, 1, 0, 0], ![2, -1, 1, -2, 0, 0], ![2, -1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput110 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput110.moment H = canonicalOutput110.moment H :=
  canonical_of_padded canonicalInput110 canonicalOutput110 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput111 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![0, 1, -1], ![4, -1, -3]]⟩

def canonicalOutput111 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput111.moment H = canonicalOutput111.moment H :=
  canonical_of_padded canonicalInput111 canonicalOutput111 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput112 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![1, -1, 0], ![3, 1, -4]]⟩

def canonicalOutput112 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput112.moment H = canonicalOutput112.moment H :=
  canonical_of_padded canonicalInput112 canonicalOutput112 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw55step0⟩

def canonicalOutput113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩

theorem canonicalSound113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput113.moment H = canonicalOutput113.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw55step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw55step0 = OAI.MUB6.Certificate.PairSemantics.raw55.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw55).trans (OAI.MUB6.Certificate.PairSemantics.canonical55 hH)

def canonicalInput114 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![2, -1, -1], ![2, 1, -3]]⟩

def canonicalOutput114 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput114.moment H = canonicalOutput114.moment H :=
  canonical_of_padded canonicalInput114 canonicalOutput114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput115 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -2, 2], ![2, 1, -3], ![2, -1, -1]]⟩

def canonicalOutput115 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node136⟩

theorem canonicalSound115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput115.moment H = canonicalOutput115.moment H :=
  canonical_of_padded canonicalInput115 canonicalOutput115 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput116 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![4, -2, -2]]⟩

def canonicalOutput116 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput116.moment H = canonicalOutput116.moment H :=
  canonical_of_padded canonicalInput116 canonicalOutput116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput117 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 0, 0], ![1, 1, -2], ![3, -2, -1]]⟩

def canonicalOutput117 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput117.moment H = canonicalOutput117.moment H :=
  canonical_of_padded canonicalInput117 canonicalOutput117 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput118 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 0, 0], ![2, -2, 0], ![2, 1, -3]]⟩

def canonicalOutput118 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput118.moment H = canonicalOutput118.moment H :=
  canonical_of_padded canonicalInput118 canonicalOutput118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput119 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![4, -2, -2]]⟩

def canonicalOutput119 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput119.moment H = canonicalOutput119.moment H :=
  canonical_of_padded canonicalInput119 canonicalOutput119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput120 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![4, -3, -1]]⟩

def canonicalOutput120 : ExponentCode := normalNode972

theorem canonicalSound120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput120.moment H = canonicalOutput120.moment H :=
  canonical_of_padded canonicalInput120 canonicalOutput120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput121 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![3, -2, -1]]⟩

def canonicalOutput121 : ExponentCode := normalNode969

theorem canonicalSound121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput121.moment H = canonicalOutput121.moment H :=
  canonical_of_padded canonicalInput121 canonicalOutput121 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput122 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![3, -3, 0]]⟩

def canonicalOutput122 : ExponentCode := normalNode971

theorem canonicalSound122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput122.moment H = canonicalOutput122.moment H :=
  canonical_of_padded canonicalInput122 canonicalOutput122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput123 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![2, 0, -2]]⟩

def canonicalOutput123 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node420⟩

theorem canonicalSound123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput123.moment H = canonicalOutput123.moment H :=
  canonical_of_padded canonicalInput123 canonicalOutput123 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput124 : ExponentCode := ⟨4, 3, ![![-4, 2, 2], ![0, -1, 1], ![0, 1, -1], ![4, -2, -2]]⟩

def canonicalOutput124 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput124.moment H = canonicalOutput124.moment H :=
  canonical_of_padded canonicalInput124 canonicalOutput124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput125 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![1, -1, 0], ![1, -2, 1], ![2, 2, -4]]⟩

def canonicalOutput125 : ExponentCode := normalNode24

theorem canonicalSound125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput125.moment H = canonicalOutput125.moment H :=
  canonical_of_padded canonicalInput125 canonicalOutput125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput126 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput126 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node362⟩

theorem canonicalSound126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput126.moment H = canonicalOutput126.moment H :=
  canonical_of_padded canonicalInput126 canonicalOutput126 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput127 : ExponentCode := ⟨5, 3, ![![-4, 2, 2], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput127 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node419⟩

theorem canonicalSound127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput127.moment H = canonicalOutput127.moment H :=
  canonical_of_padded canonicalInput127 canonicalOutput127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
