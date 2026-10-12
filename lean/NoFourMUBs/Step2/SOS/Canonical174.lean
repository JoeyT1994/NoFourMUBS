import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11136 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 1, -2, 0]]⟩

def canonicalOutput11136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound11136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11136.moment H = canonicalOutput11136.moment H :=
  canonical_of_padded canonicalInput11136 canonicalOutput11136 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11137 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 1, -3, 1]]⟩

def canonicalOutput11137 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound11137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11137.moment H = canonicalOutput11137.moment H :=
  canonical_of_padded canonicalInput11137 canonicalOutput11137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11138 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -2, -3, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput11138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1187⟩

theorem canonicalSound11138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11138.moment H = canonicalOutput11138.moment H :=
  canonical_of_padded canonicalInput11138 canonicalOutput11138 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11139 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput11139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound11139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11139.moment H = canonicalOutput11139.moment H :=
  canonical_of_padded canonicalInput11139 canonicalOutput11139 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11140 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput11140 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound11140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11140.moment H = canonicalOutput11140.moment H :=
  canonical_of_padded canonicalInput11140 canonicalOutput11140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11141 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput11141 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1203

theorem canonicalSound11141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11141.moment H = canonicalOutput11141.moment H :=
  canonical_of_padded canonicalInput11141 canonicalOutput11141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11142 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput11142 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound11142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11142.moment H = canonicalOutput11142.moment H :=
  canonical_of_padded canonicalInput11142 canonicalOutput11142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11143 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 2, -1, -1], ![1, -2, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput11143 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound11143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11143.moment H = canonicalOutput11143.moment H :=
  canonical_of_padded canonicalInput11143 canonicalOutput11143 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11144 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![1, -4, 1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput11144 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound11144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11144.moment H = canonicalOutput11144.moment H :=
  canonical_of_padded canonicalInput11144 canonicalOutput11144 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11145 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![1, -3, 0, 2], ![0, 0, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput11145 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound11145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11145.moment H = canonicalOutput11145.moment H :=
  canonical_of_padded canonicalInput11145 canonicalOutput11145 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11146 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput11146 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound11146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11146.moment H = canonicalOutput11146.moment H :=
  canonical_of_padded canonicalInput11146 canonicalOutput11146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11147 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![1, -2, -1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11147 : ExponentCode := normalNode5174

theorem canonicalSound11147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11147.moment H = canonicalOutput11147.moment H :=
  canonical_of_padded canonicalInput11147 canonicalOutput11147 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11148 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![1, -1, -2, 2], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11148 : ExponentCode := normalNode5627

theorem canonicalSound11148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11148.moment H = canonicalOutput11148.moment H :=
  canonical_of_padded canonicalInput11148 canonicalOutput11148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11149 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![1, -1, -2, 2], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput11149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound11149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11149.moment H = canonicalOutput11149.moment H :=
  canonical_of_padded canonicalInput11149 canonicalOutput11149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11150 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![1, -1, -1, 1], ![0, -1, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11150 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound11150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11150.moment H = canonicalOutput11150.moment H :=
  canonical_of_padded canonicalInput11150 canonicalOutput11150 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11151 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput11151 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound11151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11151.moment H = canonicalOutput11151.moment H :=
  canonical_of_padded canonicalInput11151 canonicalOutput11151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11152 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![1, -1, -1, 1], ![0, 1, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput11152 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound11152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11152.moment H = canonicalOutput11152.moment H :=
  canonical_of_padded canonicalInput11152 canonicalOutput11152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11153 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput11153 : ExponentCode := normalNode6626

theorem canonicalSound11153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11153.moment H = canonicalOutput11153.moment H :=
  canonical_of_padded canonicalInput11153 canonicalOutput11153 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput11154 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, -1, 1, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput11154 : ExponentCode := normalNode9569

theorem canonicalSound11154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11154.moment H = canonicalOutput11154.moment H :=
  canonical_of_padded canonicalInput11154 canonicalOutput11154 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput11155 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, -1, 1, -3, 3], ![0, 0, 0, 3, -3], ![1, 0, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput11155 : ExponentCode := normalNode9243

theorem canonicalSound11155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11155.moment H = canonicalOutput11155.moment H :=
  canonical_of_padded canonicalInput11155 canonicalOutput11155 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput11156 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, -1, 1, -3, 3], ![0, 1, -1, 3, -3], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput11156 : ExponentCode := normalNode9565

theorem canonicalSound11156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11156.moment H = canonicalOutput11156.moment H :=
  canonical_of_padded canonicalInput11156 canonicalOutput11156 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput11157 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, -1, 1, 3, -3], ![1, -1, 0, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput11157 : ExponentCode := normalNode9569

theorem canonicalSound11157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11157.moment H = canonicalOutput11157.moment H :=
  canonical_of_padded canonicalInput11157 canonicalOutput11157 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput11158 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput11158 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code812

theorem canonicalSound11158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11158.moment H = canonicalOutput11158.moment H :=
  canonical_of_padded canonicalInput11158 canonicalOutput11158 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput11159 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, -2, 1, 1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput11159 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code812

theorem canonicalSound11159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11159.moment H = canonicalOutput11159.moment H :=
  canonical_of_padded canonicalInput11159 canonicalOutput11159 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput11160 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput11160 : ExponentCode := normalNode9567

theorem canonicalSound11160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11160.moment H = canonicalOutput11160.moment H :=
  canonical_of_padded canonicalInput11160 canonicalOutput11160 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput11161 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, 0, 0], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput11161 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound11161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11161.moment H = canonicalOutput11161.moment H :=
  canonical_of_padded canonicalInput11161 canonicalOutput11161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput11162 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 1, 1, 1, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11162 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11162.moment H = canonicalOutput11162.moment H :=
  canonical_of_padded canonicalInput11162 canonicalOutput11162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation367⟩ (by decide +kernel) hH

def canonicalInput11163 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 1, 1, 1, 0], ![2, 1, -2, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11163 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11163.moment H = canonicalOutput11163.moment H :=
  canonical_of_padded canonicalInput11163 canonicalOutput11163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11164 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 1, 1, 1, 0], ![2, 1, -2, 1, -2, 0], ![1, 0, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11164.moment H = canonicalOutput11164.moment H :=
  canonical_of_padded canonicalInput11164 canonicalOutput11164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11165 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11165 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11165.moment H = canonicalOutput11165.moment H :=
  canonical_of_padded canonicalInput11165 canonicalOutput11165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11166 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 2, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11166 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11166.moment H = canonicalOutput11166.moment H :=
  canonical_of_padded canonicalInput11166 canonicalOutput11166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11167 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 2, 1, 0, 0], ![2, 1, -4, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11167 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound11167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11167.moment H = canonicalOutput11167.moment H :=
  canonical_of_padded canonicalInput11167 canonicalOutput11167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11168 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -2, 2, 1, 0, 0], ![2, 1, -1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound11168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11168.moment H = canonicalOutput11168.moment H :=
  canonical_of_padded canonicalInput11168 canonicalOutput11168 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11169 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11169 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11169.moment H = canonicalOutput11169.moment H :=
  canonical_of_padded canonicalInput11169 canonicalOutput11169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11170 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11170 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11170.moment H = canonicalOutput11170.moment H :=
  canonical_of_padded canonicalInput11170 canonicalOutput11170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11171 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 1, 1, 0, 0], ![2, -1, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11171 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound11171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11171.moment H = canonicalOutput11171.moment H :=
  canonical_of_padded canonicalInput11171 canonicalOutput11171 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput11172 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 1, 1, 0, 0], ![2, 2, -2, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11172 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound11172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11172.moment H = canonicalOutput11172.moment H :=
  canonical_of_padded canonicalInput11172 canonicalOutput11172 (by decide) (by decide)
    ⟨true, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation295⟩ (by decide +kernel) hH

def canonicalInput11173 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11173 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11173.moment H = canonicalOutput11173.moment H :=
  canonical_of_padded canonicalInput11173 canonicalOutput11173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11174 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11174 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11174.moment H = canonicalOutput11174.moment H :=
  canonical_of_padded canonicalInput11174 canonicalOutput11174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11175 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11175 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11175.moment H = canonicalOutput11175.moment H :=
  canonical_of_padded canonicalInput11175 canonicalOutput11175 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11176 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11176 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound11176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11176.moment H = canonicalOutput11176.moment H :=
  canonical_of_padded canonicalInput11176 canonicalOutput11176 (by decide) (by decide)
    ⟨false, true, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11177 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11177 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11177.moment H = canonicalOutput11177.moment H :=
  canonical_of_padded canonicalInput11177 canonicalOutput11177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11178 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11178 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound11178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11178.moment H = canonicalOutput11178.moment H :=
  canonical_of_padded canonicalInput11178 canonicalOutput11178 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput11179 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11179 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound11179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11179.moment H = canonicalOutput11179.moment H :=
  canonical_of_padded canonicalInput11179 canonicalOutput11179 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput11180 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11180 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound11180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11180.moment H = canonicalOutput11180.moment H :=
  canonical_of_padded canonicalInput11180 canonicalOutput11180 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11181 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 1, 2, 0, 0], ![0, 3, -2, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11181 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound11181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11181.moment H = canonicalOutput11181.moment H :=
  canonical_of_padded canonicalInput11181 canonicalOutput11181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11182 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 1, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11182 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11182.moment H = canonicalOutput11182.moment H :=
  canonical_of_padded canonicalInput11182 canonicalOutput11182 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11183 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 1, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11183 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11183.moment H = canonicalOutput11183.moment H :=
  canonical_of_padded canonicalInput11183 canonicalOutput11183 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11184 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 1, 2, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11184 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound11184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11184.moment H = canonicalOutput11184.moment H :=
  canonical_of_padded canonicalInput11184 canonicalOutput11184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11185 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11185 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound11185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11185.moment H = canonicalOutput11185.moment H :=
  canonical_of_padded canonicalInput11185 canonicalOutput11185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11186 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11186 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11186.moment H = canonicalOutput11186.moment H :=
  canonical_of_padded canonicalInput11186 canonicalOutput11186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11187 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11187 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11187.moment H = canonicalOutput11187.moment H :=
  canonical_of_padded canonicalInput11187 canonicalOutput11187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11188 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11188 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound11188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11188.moment H = canonicalOutput11188.moment H :=
  canonical_of_padded canonicalInput11188 canonicalOutput11188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11189 : ExponentCode := ⟨4, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 0, 0, 2], ![0, 0, 0, -1, 2, -1], ![2, 1, -1, 1, -2, -1]]⟩

def canonicalOutput11189 : ExponentCode := normalNode3874

theorem canonicalSound11189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11189.moment H = canonicalOutput11189.moment H :=
  canonical_of_padded canonicalInput11189 canonicalOutput11189 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11190 : ExponentCode := ⟨4, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 0, 0, 2], ![1, 1, 1, -2, 1, -2], ![1, 0, -2, 2, -1, 0]]⟩

def canonicalOutput11190 : ExponentCode := normalNode3970

theorem canonicalSound11190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11190.moment H = canonicalOutput11190.moment H :=
  canonical_of_padded canonicalInput11190 canonicalOutput11190 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11191 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 2, 0, 0], ![0, 1, 0, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11191 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound11191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11191.moment H = canonicalOutput11191.moment H :=
  canonical_of_padded canonicalInput11191 canonicalOutput11191 (by decide) (by decide)
    ⟨false, false, canonicalPermutation11, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11192 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11192 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11192.moment H = canonicalOutput11192.moment H :=
  canonical_of_padded canonicalInput11192 canonicalOutput11192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11193 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11193 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11193.moment H = canonicalOutput11193.moment H :=
  canonical_of_padded canonicalInput11193 canonicalOutput11193 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11194 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 0, 2, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11194 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound11194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11194.moment H = canonicalOutput11194.moment H :=
  canonical_of_padded canonicalInput11194 canonicalOutput11194 (by decide) (by decide)
    ⟨true, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11195 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, -1, 2, 0], ![0, 1, -2, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11195 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11195.moment H = canonicalOutput11195.moment H :=
  canonical_of_padded canonicalInput11195 canonicalOutput11195 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11196 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11196 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11196.moment H = canonicalOutput11196.moment H :=
  canonical_of_padded canonicalInput11196 canonicalOutput11196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation346⟩ (by decide +kernel) hH

def canonicalInput11197 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11197 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11197.moment H = canonicalOutput11197.moment H :=
  canonical_of_padded canonicalInput11197 canonicalOutput11197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation346⟩ (by decide +kernel) hH

def canonicalInput11198 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, -1, 2, 0], ![3, 1, -2, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11198 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11198.moment H = canonicalOutput11198.moment H :=
  canonical_of_padded canonicalInput11198 canonicalOutput11198 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11199 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![0, -2, 1, 2, -1, 0], ![0, 1, -2, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11199 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11199.moment H = canonicalOutput11199.moment H :=
  canonical_of_padded canonicalInput11199 canonicalOutput11199 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
