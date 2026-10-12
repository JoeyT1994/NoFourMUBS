import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1280 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1280 : ExponentCode := normalNode444

theorem canonicalSound1280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1280.moment H = canonicalOutput1280.moment H :=
  canonical_of_padded canonicalInput1280 canonicalOutput1280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1281 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1281 : ExponentCode := normalNode441

theorem canonicalSound1281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1281.moment H = canonicalOutput1281.moment H :=
  canonical_of_padded canonicalInput1281 canonicalOutput1281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1282 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput1282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩

theorem canonicalSound1282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1282.moment H = canonicalOutput1282.moment H :=
  canonical_of_padded canonicalInput1282 canonicalOutput1282 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1283 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput1283 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code296

theorem canonicalSound1283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1283.moment H = canonicalOutput1283.moment H :=
  canonical_of_padded canonicalInput1283 canonicalOutput1283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1284 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput1284 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node394⟩

theorem canonicalSound1284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1284.moment H = canonicalOutput1284.moment H :=
  canonical_of_padded canonicalInput1284 canonicalOutput1284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1285 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput1285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code125

theorem canonicalSound1285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1285.moment H = canonicalOutput1285.moment H :=
  canonical_of_padded canonicalInput1285 canonicalOutput1285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1286 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 1, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput1286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code128

theorem canonicalSound1286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1286.moment H = canonicalOutput1286.moment H :=
  canonical_of_padded canonicalInput1286 canonicalOutput1286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1287 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 3, -3, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput1287 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code296

theorem canonicalSound1287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1287.moment H = canonicalOutput1287.moment H :=
  canonical_of_padded canonicalInput1287 canonicalOutput1287 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1288 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1288 : ExponentCode := normalNode462

theorem canonicalSound1288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1288.moment H = canonicalOutput1288.moment H :=
  canonical_of_padded canonicalInput1288 canonicalOutput1288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1289 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1289 : ExponentCode := normalNode466

theorem canonicalSound1289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1289.moment H = canonicalOutput1289.moment H :=
  canonical_of_padded canonicalInput1289 canonicalOutput1289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1290 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput1290 : ExponentCode := normalNode7149

theorem canonicalSound1290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1290.moment H = canonicalOutput1290.moment H :=
  canonical_of_padded canonicalInput1290 canonicalOutput1290 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1291 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1291 : ExponentCode := normalNode6010

theorem canonicalSound1291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1291.moment H = canonicalOutput1291.moment H :=
  canonical_of_padded canonicalInput1291 canonicalOutput1291 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1292 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1292 : ExponentCode := normalNode464

theorem canonicalSound1292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1292.moment H = canonicalOutput1292.moment H :=
  canonical_of_padded canonicalInput1292 canonicalOutput1292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1293 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1293 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node399⟩

theorem canonicalSound1293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1293.moment H = canonicalOutput1293.moment H :=
  canonical_of_padded canonicalInput1293 canonicalOutput1293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1294 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1294 : ExponentCode := normalNode7149

theorem canonicalSound1294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1294.moment H = canonicalOutput1294.moment H :=
  canonical_of_padded canonicalInput1294 canonicalOutput1294 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1295 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1295 : ExponentCode := normalNode6010

theorem canonicalSound1295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1295.moment H = canonicalOutput1295.moment H :=
  canonical_of_padded canonicalInput1295 canonicalOutput1295 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1296 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 3, -3], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1296 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code134

theorem canonicalSound1296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1296.moment H = canonicalOutput1296.moment H :=
  canonical_of_padded canonicalInput1296 canonicalOutput1296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1297 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1297 : ExponentCode := normalNode469

theorem canonicalSound1297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1297.moment H = canonicalOutput1297.moment H :=
  canonical_of_padded canonicalInput1297 canonicalOutput1297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1298 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, 1, -3, 0]]⟩

def canonicalOutput1298 : ExponentCode := normalNode6014

theorem canonicalSound1298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1298.moment H = canonicalOutput1298.moment H :=
  canonical_of_padded canonicalInput1298 canonicalOutput1298 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1299 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 0, 4, -4], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1299 : ExponentCode := normalNode468

theorem canonicalSound1299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1299.moment H = canonicalOutput1299.moment H :=
  canonical_of_padded canonicalInput1299 canonicalOutput1299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1300 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput1300 : ExponentCode := normalNode6014

theorem canonicalSound1300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1300.moment H = canonicalOutput1300.moment H :=
  canonical_of_padded canonicalInput1300 canonicalOutput1300 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1301 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput1301 : ExponentCode := normalNode6731

theorem canonicalSound1301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1301.moment H = canonicalOutput1301.moment H :=
  canonical_of_padded canonicalInput1301 canonicalOutput1301 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1302 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput1302 : ExponentCode := normalNode6805

theorem canonicalSound1302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1302.moment H = canonicalOutput1302.moment H :=
  canonical_of_padded canonicalInput1302 canonicalOutput1302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1303 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput1303 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code142

theorem canonicalSound1303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1303.moment H = canonicalOutput1303.moment H :=
  canonical_of_padded canonicalInput1303 canonicalOutput1303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1304 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput1304 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node403⟩

theorem canonicalSound1304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1304.moment H = canonicalOutput1304.moment H :=
  canonical_of_padded canonicalInput1304 canonicalOutput1304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1305 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput1305 : ExponentCode := normalNode470

theorem canonicalSound1305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1305.moment H = canonicalOutput1305.moment H :=
  canonical_of_padded canonicalInput1305 canonicalOutput1305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1306 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput1306 : ExponentCode := normalNode6731

theorem canonicalSound1306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1306.moment H = canonicalOutput1306.moment H :=
  canonical_of_padded canonicalInput1306 canonicalOutput1306 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1307 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput1307 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1494⟩

theorem canonicalSound1307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1307.moment H = canonicalOutput1307.moment H :=
  canonical_of_padded canonicalInput1307 canonicalOutput1307 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1308 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput1308 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1725⟩

theorem canonicalSound1308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1308.moment H = canonicalOutput1308.moment H :=
  canonical_of_padded canonicalInput1308 canonicalOutput1308 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1309 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1309 : ExponentCode := normalNode1285

theorem canonicalSound1309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1309.moment H = canonicalOutput1309.moment H :=
  canonical_of_padded canonicalInput1309 canonicalOutput1309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1310 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput1310 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩

theorem canonicalSound1310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1310.moment H = canonicalOutput1310.moment H :=
  canonical_of_padded canonicalInput1310 canonicalOutput1310 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1311 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1311 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1777⟩

theorem canonicalSound1311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1311.moment H = canonicalOutput1311.moment H :=
  canonical_of_padded canonicalInput1311 canonicalOutput1311 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1312 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput1312 : ExponentCode := normalNode475

theorem canonicalSound1312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1312.moment H = canonicalOutput1312.moment H :=
  canonical_of_padded canonicalInput1312 canonicalOutput1312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1313 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1313 : ExponentCode := normalNode3225

theorem canonicalSound1313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1313.moment H = canonicalOutput1313.moment H :=
  canonical_of_padded canonicalInput1313 canonicalOutput1313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1314 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1314 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩

theorem canonicalSound1314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1314.moment H = canonicalOutput1314.moment H :=
  canonical_of_padded canonicalInput1314 canonicalOutput1314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1315 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput1315 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node814⟩

theorem canonicalSound1315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1315.moment H = canonicalOutput1315.moment H :=
  canonical_of_padded canonicalInput1315 canonicalOutput1315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1316 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput1316 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node830⟩

theorem canonicalSound1316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1316.moment H = canonicalOutput1316.moment H :=
  canonical_of_padded canonicalInput1316 canonicalOutput1316 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1317 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1317 : ExponentCode := normalNode3230

theorem canonicalSound1317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1317.moment H = canonicalOutput1317.moment H :=
  canonical_of_padded canonicalInput1317 canonicalOutput1317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1318 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1318 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node821⟩

theorem canonicalSound1318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1318.moment H = canonicalOutput1318.moment H :=
  canonical_of_padded canonicalInput1318 canonicalOutput1318 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1319 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput1319 : ExponentCode := normalNode6720

theorem canonicalSound1319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1319.moment H = canonicalOutput1319.moment H :=
  canonical_of_padded canonicalInput1319 canonicalOutput1319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1320 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput1320 : ExponentCode := normalNode6805

theorem canonicalSound1320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1320.moment H = canonicalOutput1320.moment H :=
  canonical_of_padded canonicalInput1320 canonicalOutput1320 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1321 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, -1, 0], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput1321 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node813⟩

theorem canonicalSound1321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1321.moment H = canonicalOutput1321.moment H :=
  canonical_of_padded canonicalInput1321 canonicalOutput1321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1322 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1322 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩

theorem canonicalSound1322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1322.moment H = canonicalOutput1322.moment H :=
  canonical_of_padded canonicalInput1322 canonicalOutput1322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1323 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1323 : ExponentCode := normalNode6524

theorem canonicalSound1323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1323.moment H = canonicalOutput1323.moment H :=
  canonical_of_padded canonicalInput1323 canonicalOutput1323 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1324 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput1324 : ExponentCode := normalNode8937

theorem canonicalSound1324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1324.moment H = canonicalOutput1324.moment H :=
  canonical_of_padded canonicalInput1324 canonicalOutput1324 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1325 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1325 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1485⟩

theorem canonicalSound1325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1325.moment H = canonicalOutput1325.moment H :=
  canonical_of_padded canonicalInput1325 canonicalOutput1325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1326 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1326 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node465⟩

theorem canonicalSound1326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1326.moment H = canonicalOutput1326.moment H :=
  canonical_of_padded canonicalInput1326 canonicalOutput1326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1327 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1327 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩

theorem canonicalSound1327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1327.moment H = canonicalOutput1327.moment H :=
  canonical_of_padded canonicalInput1327 canonicalOutput1327 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1328 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 2, -3], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput1328 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code144

theorem canonicalSound1328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1328.moment H = canonicalOutput1328.moment H :=
  canonical_of_padded canonicalInput1328 canonicalOutput1328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1329 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1329 : ExponentCode := normalNode475

theorem canonicalSound1329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1329.moment H = canonicalOutput1329.moment H :=
  canonical_of_padded canonicalInput1329 canonicalOutput1329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1330 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1330 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1483⟩

theorem canonicalSound1330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1330.moment H = canonicalOutput1330.moment H :=
  canonical_of_padded canonicalInput1330 canonicalOutput1330 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1331 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput1331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node814⟩

theorem canonicalSound1331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1331.moment H = canonicalOutput1331.moment H :=
  canonical_of_padded canonicalInput1331 canonicalOutput1331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1332 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput1332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code471

theorem canonicalSound1332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1332.moment H = canonicalOutput1332.moment H :=
  canonical_of_padded canonicalInput1332 canonicalOutput1332 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1333 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput1333 : ExponentCode := normalNode9120

theorem canonicalSound1333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1333.moment H = canonicalOutput1333.moment H :=
  canonical_of_padded canonicalInput1333 canonicalOutput1333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1334 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1334 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node813⟩

theorem canonicalSound1334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1334.moment H = canonicalOutput1334.moment H :=
  canonical_of_padded canonicalInput1334 canonicalOutput1334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1335 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 1, 3, -4], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1335 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node813⟩

theorem canonicalSound1335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1335.moment H = canonicalOutput1335.moment H :=
  canonical_of_padded canonicalInput1335 canonicalOutput1335 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput1336 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput1336 : ExponentCode := normalNode10218

theorem canonicalSound1336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1336.moment H = canonicalOutput1336.moment H :=
  canonical_of_padded canonicalInput1336 canonicalOutput1336 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1337 : ExponentCode := ⟨5, 4, ![![-2, -2, 0, 4], ![0, 2, -2, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1337 : ExponentCode := normalNode478

theorem canonicalSound1337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1337.moment H = canonicalOutput1337.moment H :=
  canonical_of_padded canonicalInput1337 canonicalOutput1337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1338 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1338 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound1338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1338.moment H = canonicalOutput1338.moment H :=
  canonical_of_padded canonicalInput1338 canonicalOutput1338 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1339 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1339 : ExponentCode := normalNode9117

theorem canonicalSound1339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1339.moment H = canonicalOutput1339.moment H :=
  canonical_of_padded canonicalInput1339 canonicalOutput1339 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1340 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1029⟩

theorem canonicalSound1340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1340.moment H = canonicalOutput1340.moment H :=
  canonical_of_padded canonicalInput1340 canonicalOutput1340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1341 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 3, -2, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1341 : ExponentCode := normalNode6459

theorem canonicalSound1341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1341.moment H = canonicalOutput1341.moment H :=
  canonical_of_padded canonicalInput1341 canonicalOutput1341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1342 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 3, -2, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput1342 : ExponentCode := normalNode6721

theorem canonicalSound1342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1342.moment H = canonicalOutput1342.moment H :=
  canonical_of_padded canonicalInput1342 canonicalOutput1342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput1343 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![0, 3, -1, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1076⟩

theorem canonicalSound1343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1343.moment H = canonicalOutput1343.moment H :=
  canonical_of_padded canonicalInput1343 canonicalOutput1343 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
