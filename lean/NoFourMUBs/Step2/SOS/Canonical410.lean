import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26240 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, 1, -1], ![-2, -1, 3, 0, 0], ![3, 1, -3, -2, 1]]⟩

def canonicalOutput26240 : ExponentCode := normalNode9051

theorem canonicalSound26240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26240.moment H = canonicalOutput26240.moment H :=
  canonical_of_padded canonicalInput26240 canonicalOutput26240 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26241 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, 1, -1], ![-1, -1, 2, 0, 0], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput26241 : ExponentCode := normalNode9064

theorem canonicalSound26241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26241.moment H = canonicalOutput26241.moment H :=
  canonical_of_padded canonicalInput26241 canonicalOutput26241 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26242 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, 1, -1], ![-1, -1, 3, 0, -1], ![2, 1, -3, -2, 2]]⟩

def canonicalOutput26242 : ExponentCode := normalNode9052

theorem canonicalSound26242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26242.moment H = canonicalOutput26242.moment H :=
  canonical_of_padded canonicalInput26242 canonicalOutput26242 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26243 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, 1, -1], ![0, -1, 2, 0, -1], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput26243 : ExponentCode := normalNode9064

theorem canonicalSound26243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26243.moment H = canonicalOutput26243.moment H :=
  canonical_of_padded canonicalInput26243 canonicalOutput26243 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26244 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, -2, 1], ![-1, 1, -2, 1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput26244 : ExponentCode := normalNode9002

theorem canonicalSound26244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26244.moment H = canonicalOutput26244.moment H :=
  canonical_of_padded canonicalInput26244 canonicalOutput26244 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26245 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, -1, 0], ![-1, 1, -2, 1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput26245 : ExponentCode := normalNode11100

theorem canonicalSound26245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26245.moment H = canonicalOutput26245.moment H :=
  canonical_of_padded canonicalInput26245 canonicalOutput26245 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26246 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, -1, 0], ![0, -1, -2, 1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput26246 : ExponentCode := normalNode11092

theorem canonicalSound26246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26246.moment H = canonicalOutput26246.moment H :=
  canonical_of_padded canonicalInput26246 canonicalOutput26246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26247 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, -1, 0], ![1, -1, -2, 1, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput26247 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2856⟩

theorem canonicalSound26247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26247.moment H = canonicalOutput26247.moment H :=
  canonical_of_padded canonicalInput26247 canonicalOutput26247 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26248 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, 0, -1], ![-1, 1, -3, 1, 2], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput26248 : ExponentCode := normalNode10307

theorem canonicalSound26248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26248.moment H = canonicalOutput26248.moment H :=
  canonical_of_padded canonicalInput26248 canonicalOutput26248 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26249 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, 0, -1], ![0, -1, 1, -2, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26249 : ExponentCode := normalNode10302

theorem canonicalSound26249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26249.moment H = canonicalOutput26249.moment H :=
  canonical_of_padded canonicalInput26249 canonicalOutput26249 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26250 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, 0, -1], ![0, 1, -3, 1, 1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput26250 : ExponentCode := normalNode10308

theorem canonicalSound26250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26250.moment H = canonicalOutput26250.moment H :=
  canonical_of_padded canonicalInput26250 canonicalOutput26250 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26251 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 1, 0, -1], ![1, -1, 1, -2, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26251 : ExponentCode := normalNode9088

theorem canonicalSound26251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26251.moment H = canonicalOutput26251.moment H :=
  canonical_of_padded canonicalInput26251 canonicalOutput26251 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26252 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -2, 1], ![-2, -1, 2, 0, 1], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput26252 : ExponentCode := normalNode9544

theorem canonicalSound26252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26252.moment H = canonicalOutput26252.moment H :=
  canonical_of_padded canonicalInput26252 canonicalOutput26252 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26253 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![-2, 0, 2, -1, 1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput26253 : ExponentCode := normalNode11173

theorem canonicalSound26253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26253.moment H = canonicalOutput26253.moment H :=
  canonical_of_padded canonicalInput26253 canonicalOutput26253 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26254 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![-1, -1, 2, -1, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput26254 : ExponentCode := normalNode11126

theorem canonicalSound26254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26254.moment H = canonicalOutput26254.moment H :=
  canonical_of_padded canonicalInput26254 canonicalOutput26254 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26255 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![-1, -1, 2, 1, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput26255 : ExponentCode := normalNode11115

theorem canonicalSound26255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26255.moment H = canonicalOutput26255.moment H :=
  canonical_of_padded canonicalInput26255 canonicalOutput26255 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26256 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![-1, 1, 2, -1, -1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput26256 : ExponentCode := normalNode11174

theorem canonicalSound26256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26256.moment H = canonicalOutput26256.moment H :=
  canonical_of_padded canonicalInput26256 canonicalOutput26256 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26257 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![0, -1, -2, 1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput26257 : ExponentCode := normalNode11116

theorem canonicalSound26257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26257.moment H = canonicalOutput26257.moment H :=
  canonical_of_padded canonicalInput26257 canonicalOutput26257 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26258 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, -1, 0], ![1, -1, -2, 1, 1], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput26258 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2828⟩

theorem canonicalSound26258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26258.moment H = canonicalOutput26258.moment H :=
  canonical_of_padded canonicalInput26258 canonicalOutput26258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26259 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, 0, -1], ![0, -1, -2, 1, 2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput26259 : ExponentCode := normalNode10345

theorem canonicalSound26259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26259.moment H = canonicalOutput26259.moment H :=
  canonical_of_padded canonicalInput26259 canonicalOutput26259 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26260 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![0, 0, 2, -2, 0]]⟩

def canonicalOutput26260 : ExponentCode := normalNode10900

theorem canonicalSound26260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26260.moment H = canonicalOutput26260.moment H :=
  canonical_of_padded canonicalInput26260 canonicalOutput26260 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26261 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, -2, 0, 3], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput26261 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound26261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26261.moment H = canonicalOutput26261.moment H :=
  canonical_of_padded canonicalInput26261 canonicalOutput26261 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput26262 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, -2, 0, 3], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput26262 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound26262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26262.moment H = canonicalOutput26262.moment H :=
  canonical_of_padded canonicalInput26262 canonicalOutput26262 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput26263 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, -1, 1, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput26263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound26263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26263.moment H = canonicalOutput26263.moment H :=
  canonical_of_padded canonicalInput26263 canonicalOutput26263 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26264 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput26264 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound26264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26264.moment H = canonicalOutput26264.moment H :=
  canonical_of_padded canonicalInput26264 canonicalOutput26264 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26265 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, 1, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput26265 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound26265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26265.moment H = canonicalOutput26265.moment H :=
  canonical_of_padded canonicalInput26265 canonicalOutput26265 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput26266 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, -1, 1, 1, -1], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput26266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound26266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26266.moment H = canonicalOutput26266.moment H :=
  canonical_of_padded canonicalInput26266 canonicalOutput26266 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26267 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, -2, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput26267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound26267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26267.moment H = canonicalOutput26267.moment H :=
  canonical_of_padded canonicalInput26267 canonicalOutput26267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26268 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput26268 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound26268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26268.moment H = canonicalOutput26268.moment H :=
  canonical_of_padded canonicalInput26268 canonicalOutput26268 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26269 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26269 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound26269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26269.moment H = canonicalOutput26269.moment H :=
  canonical_of_padded canonicalInput26269 canonicalOutput26269 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26270 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -3, 2], ![0, 0, 2, 0, -2], ![0, 1, -3, 2, 0]]⟩

def canonicalOutput26270 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1193⟩

theorem canonicalSound26270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26270.moment H = canonicalOutput26270.moment H :=
  canonical_of_padded canonicalInput26270 canonicalOutput26270 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26271 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1]]⟩

def canonicalOutput26271 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound26271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26271.moment H = canonicalOutput26271.moment H :=
  canonical_of_padded canonicalInput26271 canonicalOutput26271 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26272 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![-1, 1, -1, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput26272 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound26272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26272.moment H = canonicalOutput26272.moment H :=
  canonical_of_padded canonicalInput26272 canonicalOutput26272 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26273 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![-1, 1, 0, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput26273 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1280⟩

theorem canonicalSound26273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26273.moment H = canonicalOutput26273.moment H :=
  canonical_of_padded canonicalInput26273 canonicalOutput26273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput26274 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 0, 0, 0, 0]]⟩

def canonicalOutput26274 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound26274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26274.moment H = canonicalOutput26274.moment H :=
  canonical_of_padded canonicalInput26274 canonicalOutput26274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput26275 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![0, 0, -1, 0, 1]]⟩

def canonicalOutput26275 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1280⟩

theorem canonicalSound26275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26275.moment H = canonicalOutput26275.moment H :=
  canonical_of_padded canonicalInput26275 canonicalOutput26275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26276 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![-1, 1, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26276 : ExponentCode := normalNode10008

theorem canonicalSound26276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26276.moment H = canonicalOutput26276.moment H :=
  canonical_of_padded canonicalInput26276 canonicalOutput26276 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput26277 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![-1, 1, 1, 0, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26277 : ExponentCode := normalNode8057

theorem canonicalSound26277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26277.moment H = canonicalOutput26277.moment H :=
  canonical_of_padded canonicalInput26277 canonicalOutput26277 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput26278 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![0, -1, -2, 0, 3]]⟩

def canonicalOutput26278 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2813⟩

theorem canonicalSound26278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26278.moment H = canonicalOutput26278.moment H :=
  canonical_of_padded canonicalInput26278 canonicalOutput26278 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput26279 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 1, 0, -1, 0], ![-1, -1, 2, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26279 : ExponentCode := normalNode11121

theorem canonicalSound26279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26279.moment H = canonicalOutput26279.moment H :=
  canonical_of_padded canonicalInput26279 canonicalOutput26279 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26280 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 1, 1, -2, 0], ![-2, 1, -2, 1, 2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput26280 : ExponentCode := normalNode11117

theorem canonicalSound26280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26280.moment H = canonicalOutput26280.moment H :=
  canonical_of_padded canonicalInput26280 canonicalOutput26280 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26281 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 1, 1, -2, 0], ![-1, 1, -2, 1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput26281 : ExponentCode := normalNode9425

theorem canonicalSound26281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26281.moment H = canonicalOutput26281.moment H :=
  canonical_of_padded canonicalInput26281 canonicalOutput26281 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26282 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 1, 1, -1, -1], ![-2, 1, -2, 1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput26282 : ExponentCode := normalNode11089

theorem canonicalSound26282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26282.moment H = canonicalOutput26282.moment H :=
  canonical_of_padded canonicalInput26282 canonicalOutput26282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26283 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 1, 1, -1, -1], ![-1, 1, -2, 1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput26283 : ExponentCode := normalNode9467

theorem canonicalSound26283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26283.moment H = canonicalOutput26283.moment H :=
  canonical_of_padded canonicalInput26283 canonicalOutput26283 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26284 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -2, 0], ![-3, -1, 2, 0, 2], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput26284 : ExponentCode := normalNode11214

theorem canonicalSound26284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26284.moment H = canonicalOutput26284.moment H :=
  canonical_of_padded canonicalInput26284 canonicalOutput26284 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26285 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -2, 0], ![-2, -1, 2, 0, 1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput26285 : ExponentCode := normalNode11216

theorem canonicalSound26285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26285.moment H = canonicalOutput26285.moment H :=
  canonical_of_padded canonicalInput26285 canonicalOutput26285 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26286 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-3, 0, 2, -1, 2], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput26286 : ExponentCode := normalNode11107

theorem canonicalSound26286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26286.moment H = canonicalOutput26286.moment H :=
  canonical_of_padded canonicalInput26286 canonicalOutput26286 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26287 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-2, -1, 2, -1, 2], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput26287 : ExponentCode := normalNode11117

theorem canonicalSound26287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26287.moment H = canonicalOutput26287.moment H :=
  canonical_of_padded canonicalInput26287 canonicalOutput26287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26288 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-2, -1, 2, 1, 0], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput26288 : ExponentCode := normalNode11116

theorem canonicalSound26288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26288.moment H = canonicalOutput26288.moment H :=
  canonical_of_padded canonicalInput26288 canonicalOutput26288 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26289 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-2, 0, 2, -1, 1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput26289 : ExponentCode := normalNode11116

theorem canonicalSound26289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26289.moment H = canonicalOutput26289.moment H :=
  canonical_of_padded canonicalInput26289 canonicalOutput26289 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26290 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-2, 1, 2, -1, 0], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput26290 : ExponentCode := normalNode11175

theorem canonicalSound26290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26290.moment H = canonicalOutput26290.moment H :=
  canonical_of_padded canonicalInput26290 canonicalOutput26290 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26291 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-1, -1, 2, -1, 1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput26291 : ExponentCode := normalNode9414

theorem canonicalSound26291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26291.moment H = canonicalOutput26291.moment H :=
  canonical_of_padded canonicalInput26291 canonicalOutput26291 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26292 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-1, -1, 2, 1, -1], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput26292 : ExponentCode := normalNode11115

theorem canonicalSound26292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26292.moment H = canonicalOutput26292.moment H :=
  canonical_of_padded canonicalInput26292 canonicalOutput26292 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26293 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![0, 2, 0, -1, -1], ![-1, 1, 2, -1, -1], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput26293 : ExponentCode := normalNode11174

theorem canonicalSound26293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26293.moment H = canonicalOutput26293.moment H :=
  canonical_of_padded canonicalInput26293 canonicalOutput26293 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26294 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![1, 1, 0, -1, -1], ![-2, -1, 2, -1, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26294 : ExponentCode := normalNode11089

theorem canonicalSound26294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26294.moment H = canonicalOutput26294.moment H :=
  canonical_of_padded canonicalInput26294 canonicalOutput26294 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26295 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![1, 1, 0, -1, -1], ![-1, -1, 2, -1, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26295 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2643⟩

theorem canonicalSound26295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26295.moment H = canonicalOutput26295.moment H :=
  canonical_of_padded canonicalInput26295 canonicalOutput26295 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26296 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-3, 2, 2, -1, 0], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput26296 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node698⟩

theorem canonicalSound26296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26296.moment H = canonicalOutput26296.moment H :=
  canonical_of_padded canonicalInput26296 canonicalOutput26296 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26297 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-2, -1, 1, -1, 3], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput26297 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound26297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26297.moment H = canonicalOutput26297.moment H :=
  canonical_of_padded canonicalInput26297 canonicalOutput26297 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26298 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-2, -1, 2, -2, 3], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput26298 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1049

theorem canonicalSound26298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26298.moment H = canonicalOutput26298.moment H :=
  canonical_of_padded canonicalInput26298 canonicalOutput26298 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26299 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-2, -1, 2, -1, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput26299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound26299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26299.moment H = canonicalOutput26299.moment H :=
  canonical_of_padded canonicalInput26299 canonicalOutput26299 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26300 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-2, 1, 2, -1, 0], ![0, -1, -1, -1, 3], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput26300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code936

theorem canonicalSound26300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26300.moment H = canonicalOutput26300.moment H :=
  canonical_of_padded canonicalInput26300 canonicalOutput26300 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26301 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-2, 2, -2, 0, 2], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput26301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1056

theorem canonicalSound26301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26301.moment H = canonicalOutput26301.moment H :=
  canonical_of_padded canonicalInput26301 canonicalOutput26301 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26302 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![-2, 2, 2, -1, -1], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput26302 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound26302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26302.moment H = canonicalOutput26302.moment H :=
  canonical_of_padded canonicalInput26302 canonicalOutput26302 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26303 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![-1, -1, 1, -1, 2], ![0, 1, -2, -1, 2], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput26303 : ExponentCode := normalNode4251

theorem canonicalSound26303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26303.moment H = canonicalOutput26303.moment H :=
  canonical_of_padded canonicalInput26303 canonicalOutput26303 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
