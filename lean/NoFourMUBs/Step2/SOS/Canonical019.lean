import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1216 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1216 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1918⟩

theorem canonicalSound1216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1216.moment H = canonicalOutput1216.moment H :=
  canonical_of_padded canonicalInput1216 canonicalOutput1216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1217 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput1217 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node916⟩

theorem canonicalSound1217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1217.moment H = canonicalOutput1217.moment H :=
  canonical_of_padded canonicalInput1217 canonicalOutput1217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1218 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput1218 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code310

theorem canonicalSound1218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1218.moment H = canonicalOutput1218.moment H :=
  canonical_of_padded canonicalInput1218 canonicalOutput1218 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1219 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1219 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩

theorem canonicalSound1219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1219.moment H = canonicalOutput1219.moment H :=
  canonical_of_padded canonicalInput1219 canonicalOutput1219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1220 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1220 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩

theorem canonicalSound1220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1220.moment H = canonicalOutput1220.moment H :=
  canonical_of_padded canonicalInput1220 canonicalOutput1220 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1221 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1221 : ExponentCode := normalNode3153

theorem canonicalSound1221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1221.moment H = canonicalOutput1221.moment H :=
  canonical_of_padded canonicalInput1221 canonicalOutput1221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1222 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput1222 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound1222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1222.moment H = canonicalOutput1222.moment H :=
  canonical_of_padded canonicalInput1222 canonicalOutput1222 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1223 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1223 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1917⟩

theorem canonicalSound1223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1223.moment H = canonicalOutput1223.moment H :=
  canonical_of_padded canonicalInput1223 canonicalOutput1223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1224 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput1224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1275⟩

theorem canonicalSound1224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1224.moment H = canonicalOutput1224.moment H :=
  canonical_of_padded canonicalInput1224 canonicalOutput1224 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1225 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩

theorem canonicalSound1225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1225.moment H = canonicalOutput1225.moment H :=
  canonical_of_padded canonicalInput1225 canonicalOutput1225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1226 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput1226 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code301

theorem canonicalSound1226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1226.moment H = canonicalOutput1226.moment H :=
  canonical_of_padded canonicalInput1226 canonicalOutput1226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1227 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput1227 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node585⟩

theorem canonicalSound1227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1227.moment H = canonicalOutput1227.moment H :=
  canonical_of_padded canonicalInput1227 canonicalOutput1227 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1228 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node469⟩

theorem canonicalSound1228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1228.moment H = canonicalOutput1228.moment H :=
  canonical_of_padded canonicalInput1228 canonicalOutput1228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1229 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 2, -1], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1229 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code301

theorem canonicalSound1229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1229.moment H = canonicalOutput1229.moment H :=
  canonical_of_padded canonicalInput1229 canonicalOutput1229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1230 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput1230 : ExponentCode := normalNode11054

theorem canonicalSound1230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1230.moment H = canonicalOutput1230.moment H :=
  canonical_of_padded canonicalInput1230 canonicalOutput1230 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1231 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 2, -3, -1]]⟩

def canonicalOutput1231 : ExponentCode := normalNode6503

theorem canonicalSound1231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1231.moment H = canonicalOutput1231.moment H :=
  canonical_of_padded canonicalInput1231 canonicalOutput1231 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1232 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1232 : ExponentCode := normalNode10357

theorem canonicalSound1232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1232.moment H = canonicalOutput1232.moment H :=
  canonical_of_padded canonicalInput1232 canonicalOutput1232 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1233 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, -1, 3, -2], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1233 : ExponentCode := normalNode6462

theorem canonicalSound1233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1233.moment H = canonicalOutput1233.moment H :=
  canonical_of_padded canonicalInput1233 canonicalOutput1233 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1234 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1234 : ExponentCode := normalNode411

theorem canonicalSound1234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1234.moment H = canonicalOutput1234.moment H :=
  canonical_of_padded canonicalInput1234 canonicalOutput1234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1235 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput1235 : ExponentCode := normalNode6740

theorem canonicalSound1235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1235.moment H = canonicalOutput1235.moment H :=
  canonical_of_padded canonicalInput1235 canonicalOutput1235 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1236 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1236 : ExponentCode := normalNode423

theorem canonicalSound1236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1236.moment H = canonicalOutput1236.moment H :=
  canonical_of_padded canonicalInput1236 canonicalOutput1236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1237 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput1237 : ExponentCode := normalNode8924

theorem canonicalSound1237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1237.moment H = canonicalOutput1237.moment H :=
  canonical_of_padded canonicalInput1237 canonicalOutput1237 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1238 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1238 : ExponentCode := normalNode424

theorem canonicalSound1238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1238.moment H = canonicalOutput1238.moment H :=
  canonical_of_padded canonicalInput1238 canonicalOutput1238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1239 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, 1, 0, -3]]⟩

def canonicalOutput1239 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound1239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1239.moment H = canonicalOutput1239.moment H :=
  canonical_of_padded canonicalInput1239 canonicalOutput1239 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1240 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 1, -1, -2]]⟩

def canonicalOutput1240 : ExponentCode := normalNode9555

theorem canonicalSound1240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1240.moment H = canonicalOutput1240.moment H :=
  canonical_of_padded canonicalInput1240 canonicalOutput1240 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1241 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1241 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1455⟩

theorem canonicalSound1241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1241.moment H = canonicalOutput1241.moment H :=
  canonical_of_padded canonicalInput1241 canonicalOutput1241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1242 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1242 : ExponentCode := normalNode416

theorem canonicalSound1242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1242.moment H = canonicalOutput1242.moment H :=
  canonical_of_padded canonicalInput1242 canonicalOutput1242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1243 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound1243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1243.moment H = canonicalOutput1243.moment H :=
  canonical_of_padded canonicalInput1243 canonicalOutput1243 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1244 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput1244 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1029⟩

theorem canonicalSound1244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1244.moment H = canonicalOutput1244.moment H :=
  canonical_of_padded canonicalInput1244 canonicalOutput1244 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput1245 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput1245 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound1245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1245.moment H = canonicalOutput1245.moment H :=
  canonical_of_padded canonicalInput1245 canonicalOutput1245 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1246 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1070⟩

theorem canonicalSound1246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1246.moment H = canonicalOutput1246.moment H :=
  canonical_of_padded canonicalInput1246 canonicalOutput1246 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput1247 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput1247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound1247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1247.moment H = canonicalOutput1247.moment H :=
  canonical_of_padded canonicalInput1247 canonicalOutput1247 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1248 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1248 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound1248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1248.moment H = canonicalOutput1248.moment H :=
  canonical_of_padded canonicalInput1248 canonicalOutput1248 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1249 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 0, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput1249 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound1249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1249.moment H = canonicalOutput1249.moment H :=
  canonical_of_padded canonicalInput1249 canonicalOutput1249 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1250 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput1250 : ExponentCode := normalNode397

theorem canonicalSound1250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1250.moment H = canonicalOutput1250.moment H :=
  canonical_of_padded canonicalInput1250 canonicalOutput1250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1251 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1251 : ExponentCode := normalNode399

theorem canonicalSound1251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1251.moment H = canonicalOutput1251.moment H :=
  canonical_of_padded canonicalInput1251 canonicalOutput1251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1252 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1252 : ExponentCode := normalNode400

theorem canonicalSound1252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1252.moment H = canonicalOutput1252.moment H :=
  canonical_of_padded canonicalInput1252 canonicalOutput1252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1253 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1253 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound1253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1253.moment H = canonicalOutput1253.moment H :=
  canonical_of_padded canonicalInput1253 canonicalOutput1253 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1254 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1254 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node772⟩

theorem canonicalSound1254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1254.moment H = canonicalOutput1254.moment H :=
  canonical_of_padded canonicalInput1254 canonicalOutput1254 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1255 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node772⟩

theorem canonicalSound1255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1255.moment H = canonicalOutput1255.moment H :=
  canonical_of_padded canonicalInput1255 canonicalOutput1255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1256 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput1256 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node912⟩

theorem canonicalSound1256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1256.moment H = canonicalOutput1256.moment H :=
  canonical_of_padded canonicalInput1256 canonicalOutput1256 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1257 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1257 : ExponentCode := normalNode3327

theorem canonicalSound1257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1257.moment H = canonicalOutput1257.moment H :=
  canonical_of_padded canonicalInput1257 canonicalOutput1257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1258 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput1258 : ExponentCode := normalNode436

theorem canonicalSound1258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1258.moment H = canonicalOutput1258.moment H :=
  canonical_of_padded canonicalInput1258 canonicalOutput1258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1259 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1259 : ExponentCode := normalNode441

theorem canonicalSound1259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1259.moment H = canonicalOutput1259.moment H :=
  canonical_of_padded canonicalInput1259 canonicalOutput1259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1260 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput1260 : ExponentCode := normalNode445

theorem canonicalSound1260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1260.moment H = canonicalOutput1260.moment H :=
  canonical_of_padded canonicalInput1260 canonicalOutput1260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1261 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput1261 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1905⟩

theorem canonicalSound1261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1261.moment H = canonicalOutput1261.moment H :=
  canonical_of_padded canonicalInput1261 canonicalOutput1261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1262 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput1262 : ExponentCode := normalNode448

theorem canonicalSound1262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1262.moment H = canonicalOutput1262.moment H :=
  canonical_of_padded canonicalInput1262 canonicalOutput1262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1263 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1263 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1923⟩

theorem canonicalSound1263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1263.moment H = canonicalOutput1263.moment H :=
  canonical_of_padded canonicalInput1263 canonicalOutput1263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1264 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1472⟩

theorem canonicalSound1264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1264.moment H = canonicalOutput1264.moment H :=
  canonical_of_padded canonicalInput1264 canonicalOutput1264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1265 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput1265 : ExponentCode := normalNode6009

theorem canonicalSound1265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1265.moment H = canonicalOutput1265.moment H :=
  canonical_of_padded canonicalInput1265 canonicalOutput1265 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1266 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1266 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1911⟩

theorem canonicalSound1266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1266.moment H = canonicalOutput1266.moment H :=
  canonical_of_padded canonicalInput1266 canonicalOutput1266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1267 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput1267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1180⟩

theorem canonicalSound1267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1267.moment H = canonicalOutput1267.moment H :=
  canonical_of_padded canonicalInput1267 canonicalOutput1267 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1268 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1268 : ExponentCode := normalNode3150

theorem canonicalSound1268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1268.moment H = canonicalOutput1268.moment H :=
  canonical_of_padded canonicalInput1268 canonicalOutput1268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1269 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1269 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩

theorem canonicalSound1269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1269.moment H = canonicalOutput1269.moment H :=
  canonical_of_padded canonicalInput1269 canonicalOutput1269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1270 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1270 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩

theorem canonicalSound1270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1270.moment H = canonicalOutput1270.moment H :=
  canonical_of_padded canonicalInput1270 canonicalOutput1270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1271 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput1271 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1325⟩

theorem canonicalSound1271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1271.moment H = canonicalOutput1271.moment H :=
  canonical_of_padded canonicalInput1271 canonicalOutput1271 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1272 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1272 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node772⟩

theorem canonicalSound1272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1272.moment H = canonicalOutput1272.moment H :=
  canonical_of_padded canonicalInput1272 canonicalOutput1272 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1273 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput1273 : ExponentCode := normalNode10942

theorem canonicalSound1273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1273.moment H = canonicalOutput1273.moment H :=
  canonical_of_padded canonicalInput1273 canonicalOutput1273 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1274 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1274 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node787⟩

theorem canonicalSound1274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1274.moment H = canonicalOutput1274.moment H :=
  canonical_of_padded canonicalInput1274 canonicalOutput1274 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1275 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1275 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node773⟩

theorem canonicalSound1275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1275.moment H = canonicalOutput1275.moment H :=
  canonical_of_padded canonicalInput1275 canonicalOutput1275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1276 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput1276 : ExponentCode := normalNode440

theorem canonicalSound1276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1276.moment H = canonicalOutput1276.moment H :=
  canonical_of_padded canonicalInput1276 canonicalOutput1276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1277 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput1277 : ExponentCode := normalNode441

theorem canonicalSound1277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1277.moment H = canonicalOutput1277.moment H :=
  canonical_of_padded canonicalInput1277 canonicalOutput1277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1278 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1278 : ExponentCode := normalNode442

theorem canonicalSound1278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1278.moment H = canonicalOutput1278.moment H :=
  canonical_of_padded canonicalInput1278 canonicalOutput1278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1279 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput1279 : ExponentCode := normalNode443

theorem canonicalSound1279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1279.moment H = canonicalOutput1279.moment H :=
  canonical_of_padded canonicalInput1279 canonicalOutput1279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
