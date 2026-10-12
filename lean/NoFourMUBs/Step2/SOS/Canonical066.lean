import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4224 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, -1, 1], ![0, 2, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput4224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node486⟩

theorem canonicalSound4224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4224.moment H = canonicalOutput4224.moment H :=
  canonical_of_padded canonicalInput4224 canonicalOutput4224 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4225 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 1, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound4225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4225.moment H = canonicalOutput4225.moment H :=
  canonical_of_padded canonicalInput4225 canonicalOutput4225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4226 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 1, -1], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4226 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound4226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4226.moment H = canonicalOutput4226.moment H :=
  canonical_of_padded canonicalInput4226 canonicalOutput4226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput4227 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 1, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput4227 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code768

theorem canonicalSound4227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4227.moment H = canonicalOutput4227.moment H :=
  canonical_of_padded canonicalInput4227 canonicalOutput4227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4228 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 2, -2], ![0, 2, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4228 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound4228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4228.moment H = canonicalOutput4228.moment H :=
  canonical_of_padded canonicalInput4228 canonicalOutput4228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4229 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 2, -2], ![0, 3, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput4229 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code512

theorem canonicalSound4229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4229.moment H = canonicalOutput4229.moment H :=
  canonical_of_padded canonicalInput4229 canonicalOutput4229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4230 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 3, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput4230 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code485

theorem canonicalSound4230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4230.moment H = canonicalOutput4230.moment H :=
  canonical_of_padded canonicalInput4230 canonicalOutput4230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4231 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 3, -3], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4231 : ExponentCode := normalNode10884

theorem canonicalSound4231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4231.moment H = canonicalOutput4231.moment H :=
  canonical_of_padded canonicalInput4231 canonicalOutput4231 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4232 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 3, -3], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4232 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩

theorem canonicalSound4232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4232.moment H = canonicalOutput4232.moment H :=
  canonical_of_padded canonicalInput4232 canonicalOutput4232 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4233 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput4233 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound4233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4233.moment H = canonicalOutput4233.moment H :=
  canonical_of_padded canonicalInput4233 canonicalOutput4233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4234 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 3, -3], ![0, 3, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput4234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code513

theorem canonicalSound4234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4234.moment H = canonicalOutput4234.moment H :=
  canonical_of_padded canonicalInput4234 canonicalOutput4234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4235 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 4, -4], ![0, 1, -2, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput4235 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code142

theorem canonicalSound4235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4235.moment H = canonicalOutput4235.moment H :=
  canonical_of_padded canonicalInput4235 canonicalOutput4235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4236 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 4, -4], ![0, 2, -3, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4236 : ExponentCode := normalNode6015

theorem canonicalSound4236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4236.moment H = canonicalOutput4236.moment H :=
  canonical_of_padded canonicalInput4236 canonicalOutput4236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput4237 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, -1, 4, -4], ![0, 2, -2, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4237 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code139

theorem canonicalSound4237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4237.moment H = canonicalOutput4237.moment H :=
  canonical_of_padded canonicalInput4237 canonicalOutput4237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4238 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, -3, 2], ![0, 2, 0, -2], ![1, -1, 3, -3]]⟩

def canonicalOutput4238 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code509

theorem canonicalSound4238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4238.moment H = canonicalOutput4238.moment H :=
  canonical_of_padded canonicalInput4238 canonicalOutput4238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4239 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, -2, 1], ![0, 1, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput4239 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound4239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4239.moment H = canonicalOutput4239.moment H :=
  canonical_of_padded canonicalInput4239 canonicalOutput4239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4240 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, -2, 1], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput4240 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound4240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4240.moment H = canonicalOutput4240.moment H :=
  canonical_of_padded canonicalInput4240 canonicalOutput4240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4241 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 1, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound4241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4241.moment H = canonicalOutput4241.moment H :=
  canonical_of_padded canonicalInput4241 canonicalOutput4241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4242 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 1, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput4242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound4242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4242.moment H = canonicalOutput4242.moment H :=
  canonical_of_padded canonicalInput4242 canonicalOutput4242 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4243 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 1, -2], ![0, 3, -2, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput4243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code767

theorem canonicalSound4243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4243.moment H = canonicalOutput4243.moment H :=
  canonical_of_padded canonicalInput4243 canonicalOutput4243 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4244 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 2, -3], ![0, 2, -3, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput4244 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩

theorem canonicalSound4244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4244.moment H = canonicalOutput4244.moment H :=
  canonical_of_padded canonicalInput4244 canonicalOutput4244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4245 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 2, -3], ![0, 3, -3, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput4245 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code511

theorem canonicalSound4245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4245.moment H = canonicalOutput4245.moment H :=
  canonical_of_padded canonicalInput4245 canonicalOutput4245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4246 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 3, -4], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1158⟩

theorem canonicalSound4246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4246.moment H = canonicalOutput4246.moment H :=
  canonical_of_padded canonicalInput4246 canonicalOutput4246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4247 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 0, 3, -4], ![0, 2, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput4247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node486⟩

theorem canonicalSound4247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4247.moment H = canonicalOutput4247.moment H :=
  canonical_of_padded canonicalInput4247 canonicalOutput4247 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4248 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput4248 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code490

theorem canonicalSound4248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4248.moment H = canonicalOutput4248.moment H :=
  canonical_of_padded canonicalInput4248 canonicalOutput4248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4249 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput4249 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code507

theorem canonicalSound4249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4249.moment H = canonicalOutput4249.moment H :=
  canonical_of_padded canonicalInput4249 canonicalOutput4249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4250 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, -2, 0], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput4250 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node493⟩

theorem canonicalSound4250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4250.moment H = canonicalOutput4250.moment H :=
  canonical_of_padded canonicalInput4250 canonicalOutput4250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4251 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, -2, 0], ![0, 2, -1, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput4251 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound4251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4251.moment H = canonicalOutput4251.moment H :=
  canonical_of_padded canonicalInput4251 canonicalOutput4251 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4252 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, 0, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput4252 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound4252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4252.moment H = canonicalOutput4252.moment H :=
  canonical_of_padded canonicalInput4252 canonicalOutput4252 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4253 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, 0, -2], ![0, 2, -2, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput4253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound4253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4253.moment H = canonicalOutput4253.moment H :=
  canonical_of_padded canonicalInput4253 canonicalOutput4253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4254 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, 1, -3], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput4254 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code500

theorem canonicalSound4254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4254.moment H = canonicalOutput4254.moment H :=
  canonical_of_padded canonicalInput4254 canonicalOutput4254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4255 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![1, 1, 2, -4], ![0, 2, -2, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput4255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound4255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4255.moment H = canonicalOutput4255.moment H :=
  canonical_of_padded canonicalInput4255 canonicalOutput4255 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4256 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![-1, 2, 2, -2, -1], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput4256 : ExponentCode := normalNode211

theorem canonicalSound4256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4256.moment H = canonicalOutput4256.moment H :=
  canonical_of_padded canonicalInput4256 canonicalOutput4256 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4257 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![0, -1, 2, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput4257 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node379⟩

theorem canonicalSound4257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4257.moment H = canonicalOutput4257.moment H :=
  canonical_of_padded canonicalInput4257 canonicalOutput4257 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4258 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![0, 2, -2, -1, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput4258 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node367⟩

theorem canonicalSound4258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4258.moment H = canonicalOutput4258.moment H :=
  canonical_of_padded canonicalInput4258 canonicalOutput4258 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4259 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![0, 3, -2, -2, 1], ![2, -2, 2, -1, -1]]⟩

def canonicalOutput4259 : ExponentCode := normalNode200

theorem canonicalSound4259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4259.moment H = canonicalOutput4259.moment H :=
  canonical_of_padded canonicalInput4259 canonicalOutput4259 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4260 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![1, -1, 2, -1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput4260 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound4260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4260.moment H = canonicalOutput4260.moment H :=
  canonical_of_padded canonicalInput4260 canonicalOutput4260 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4261 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 3, 0], ![1, 2, -2, 0, -1], ![1, -1, 2, -3, 1]]⟩

def canonicalOutput4261 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node345⟩

theorem canonicalSound4261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4261.moment H = canonicalOutput4261.moment H :=
  canonical_of_padded canonicalInput4261 canonicalOutput4261 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4262 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput4262 : ExponentCode := normalNode10381

theorem canonicalSound4262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4262.moment H = canonicalOutput4262.moment H :=
  canonical_of_padded canonicalInput4262 canonicalOutput4262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4263 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4263 : ExponentCode := normalNode10756

theorem canonicalSound4263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4263.moment H = canonicalOutput4263.moment H :=
  canonical_of_padded canonicalInput4263 canonicalOutput4263 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4264 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput4264 : ExponentCode := normalNode6544

theorem canonicalSound4264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4264.moment H = canonicalOutput4264.moment H :=
  canonical_of_padded canonicalInput4264 canonicalOutput4264 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput4265 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput4265 : ExponentCode := normalNode8048

theorem canonicalSound4265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4265.moment H = canonicalOutput4265.moment H :=
  canonical_of_padded canonicalInput4265 canonicalOutput4265 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4266 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput4266 : ExponentCode := normalNode9252

theorem canonicalSound4266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4266.moment H = canonicalOutput4266.moment H :=
  canonical_of_padded canonicalInput4266 canonicalOutput4266 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4267 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4267 : ExponentCode := normalNode7504

theorem canonicalSound4267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4267.moment H = canonicalOutput4267.moment H :=
  canonical_of_padded canonicalInput4267 canonicalOutput4267 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4268 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4268 : ExponentCode := normalNode6543

theorem canonicalSound4268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4268.moment H = canonicalOutput4268.moment H :=
  canonical_of_padded canonicalInput4268 canonicalOutput4268 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4269 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput4269 : ExponentCode := normalNode9156

theorem canonicalSound4269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4269.moment H = canonicalOutput4269.moment H :=
  canonical_of_padded canonicalInput4269 canonicalOutput4269 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput4270 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4270 : ExponentCode := normalNode9155

theorem canonicalSound4270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4270.moment H = canonicalOutput4270.moment H :=
  canonical_of_padded canonicalInput4270 canonicalOutput4270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4271 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4271 : ExponentCode := normalNode8005

theorem canonicalSound4271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4271.moment H = canonicalOutput4271.moment H :=
  canonical_of_padded canonicalInput4271 canonicalOutput4271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4272 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4272 : ExponentCode := normalNode8478

theorem canonicalSound4272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4272.moment H = canonicalOutput4272.moment H :=
  canonical_of_padded canonicalInput4272 canonicalOutput4272 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4273 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4273 : ExponentCode := normalNode8009

theorem canonicalSound4273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4273.moment H = canonicalOutput4273.moment H :=
  canonical_of_padded canonicalInput4273 canonicalOutput4273 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4274 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4274 : ExponentCode := normalNode8099

theorem canonicalSound4274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4274.moment H = canonicalOutput4274.moment H :=
  canonical_of_padded canonicalInput4274 canonicalOutput4274 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4275 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, -1, -1, 3, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4275 : ExponentCode := normalNode8003

theorem canonicalSound4275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4275.moment H = canonicalOutput4275.moment H :=
  canonical_of_padded canonicalInput4275 canonicalOutput4275 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4276 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4276 : ExponentCode := normalNode7498

theorem canonicalSound4276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4276.moment H = canonicalOutput4276.moment H :=
  canonical_of_padded canonicalInput4276 canonicalOutput4276 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4277 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, -1, 3, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4277 : ExponentCode := normalNode10003

theorem canonicalSound4277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4277.moment H = canonicalOutput4277.moment H :=
  canonical_of_padded canonicalInput4277 canonicalOutput4277 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4278 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 3, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4278 : ExponentCode := normalNode10001

theorem canonicalSound4278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4278.moment H = canonicalOutput4278.moment H :=
  canonical_of_padded canonicalInput4278 canonicalOutput4278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4279 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -2, 2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4279 : ExponentCode := normalNode8638

theorem canonicalSound4279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4279.moment H = canonicalOutput4279.moment H :=
  canonical_of_padded canonicalInput4279 canonicalOutput4279 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4280 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, -2, 3, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4280 : ExponentCode := normalNode8640

theorem canonicalSound4280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4280.moment H = canonicalOutput4280.moment H :=
  canonical_of_padded canonicalInput4280 canonicalOutput4280 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput4281 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, -2, 2, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4281 : ExponentCode := normalNode8645

theorem canonicalSound4281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4281.moment H = canonicalOutput4281.moment H :=
  canonical_of_padded canonicalInput4281 canonicalOutput4281 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4282 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, -1, 3], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, -2, 2, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4282 : ExponentCode := normalNode7529

theorem canonicalSound4282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4282.moment H = canonicalOutput4282.moment H :=
  canonical_of_padded canonicalInput4282 canonicalOutput4282 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4283 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4283 : ExponentCode := normalNode7519

theorem canonicalSound4283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4283.moment H = canonicalOutput4283.moment H :=
  canonical_of_padded canonicalInput4283 canonicalOutput4283 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput4284 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput4284 : ExponentCode := normalNode9247

theorem canonicalSound4284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4284.moment H = canonicalOutput4284.moment H :=
  canonical_of_padded canonicalInput4284 canonicalOutput4284 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4285 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput4285 : ExponentCode := normalNode9216

theorem canonicalSound4285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4285.moment H = canonicalOutput4285.moment H :=
  canonical_of_padded canonicalInput4285 canonicalOutput4285 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput4286 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4286 : ExponentCode := normalNode8468

theorem canonicalSound4286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4286.moment H = canonicalOutput4286.moment H :=
  canonical_of_padded canonicalInput4286 canonicalOutput4286 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput4287 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4287 : ExponentCode := normalNode8483

theorem canonicalSound4287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4287.moment H = canonicalOutput4287.moment H :=
  canonical_of_padded canonicalInput4287 canonicalOutput4287 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
