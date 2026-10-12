import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14208 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 2, -1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput14208 : ExponentCode := normalNode10886

theorem canonicalSound14208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14208.moment H = canonicalOutput14208.moment H :=
  canonical_of_padded canonicalInput14208 canonicalOutput14208 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14209 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 2, -1], ![1, -1, 1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput14209 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code482

theorem canonicalSound14209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14209.moment H = canonicalOutput14209.moment H :=
  canonical_of_padded canonicalInput14209 canonicalOutput14209 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14210 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput14210 : ExponentCode := normalNode7193

theorem canonicalSound14210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14210.moment H = canonicalOutput14210.moment H :=
  canonical_of_padded canonicalInput14210 canonicalOutput14210 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14211 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 2, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound14211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14211.moment H = canonicalOutput14211.moment H :=
  canonical_of_padded canonicalInput14211 canonicalOutput14211 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14212 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14212 : ExponentCode := normalNode7197

theorem canonicalSound14212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14212.moment H = canonicalOutput14212.moment H :=
  canonical_of_padded canonicalInput14212 canonicalOutput14212 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14213 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![-1, 0, 3, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14213 : ExponentCode := normalNode3890

theorem canonicalSound14213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14213.moment H = canonicalOutput14213.moment H :=
  canonical_of_padded canonicalInput14213 canonicalOutput14213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14214 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput14214 : ExponentCode := normalNode9445

theorem canonicalSound14214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14214.moment H = canonicalOutput14214.moment H :=
  canonical_of_padded canonicalInput14214 canonicalOutput14214 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14215 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 0, 3, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14215 : ExponentCode := normalNode6328

theorem canonicalSound14215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14215.moment H = canonicalOutput14215.moment H :=
  canonical_of_padded canonicalInput14215 canonicalOutput14215 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14216 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput14216 : ExponentCode := normalNode7171

theorem canonicalSound14216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14216.moment H = canonicalOutput14216.moment H :=
  canonical_of_padded canonicalInput14216 canonicalOutput14216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14217 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14217 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code262

theorem canonicalSound14217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14217.moment H = canonicalOutput14217.moment H :=
  canonical_of_padded canonicalInput14217 canonicalOutput14217 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14218 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput14218 : ExponentCode := normalNode7227

theorem canonicalSound14218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14218.moment H = canonicalOutput14218.moment H :=
  canonical_of_padded canonicalInput14218 canonicalOutput14218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14219 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 1, -1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14219 : ExponentCode := normalNode7226

theorem canonicalSound14219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14219.moment H = canonicalOutput14219.moment H :=
  canonical_of_padded canonicalInput14219 canonicalOutput14219 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14220 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14220 : ExponentCode := normalNode7169

theorem canonicalSound14220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14220.moment H = canonicalOutput14220.moment H :=
  canonical_of_padded canonicalInput14220 canonicalOutput14220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14221 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput14221 : ExponentCode := normalNode9373

theorem canonicalSound14221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14221.moment H = canonicalOutput14221.moment H :=
  canonical_of_padded canonicalInput14221 canonicalOutput14221 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14222 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14222 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code262

theorem canonicalSound14222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14222.moment H = canonicalOutput14222.moment H :=
  canonical_of_padded canonicalInput14222 canonicalOutput14222 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14223 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput14223 : ExponentCode := normalNode7170

theorem canonicalSound14223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14223.moment H = canonicalOutput14223.moment H :=
  canonical_of_padded canonicalInput14223 canonicalOutput14223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14224 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14224 : ExponentCode := normalNode9443

theorem canonicalSound14224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14224.moment H = canonicalOutput14224.moment H :=
  canonical_of_padded canonicalInput14224 canonicalOutput14224 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14225 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput14225 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code263

theorem canonicalSound14225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14225.moment H = canonicalOutput14225.moment H :=
  canonical_of_padded canonicalInput14225 canonicalOutput14225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14226 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14226 : ExponentCode := normalNode7224

theorem canonicalSound14226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14226.moment H = canonicalOutput14226.moment H :=
  canonical_of_padded canonicalInput14226 canonicalOutput14226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14227 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 2, 1, -2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14227 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code252

theorem canonicalSound14227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14227.moment H = canonicalOutput14227.moment H :=
  canonical_of_padded canonicalInput14227 canonicalOutput14227 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14228 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 2, 1, -2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14228 : ExponentCode := normalNode6295

theorem canonicalSound14228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14228.moment H = canonicalOutput14228.moment H :=
  canonical_of_padded canonicalInput14228 canonicalOutput14228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14229 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14229 : ExponentCode := normalNode7194

theorem canonicalSound14229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14229.moment H = canonicalOutput14229.moment H :=
  canonical_of_padded canonicalInput14229 canonicalOutput14229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14230 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14230 : ExponentCode := normalNode7154

theorem canonicalSound14230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14230.moment H = canonicalOutput14230.moment H :=
  canonical_of_padded canonicalInput14230 canonicalOutput14230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14231 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14231 : ExponentCode := normalNode7159

theorem canonicalSound14231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14231.moment H = canonicalOutput14231.moment H :=
  canonical_of_padded canonicalInput14231 canonicalOutput14231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14232 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14232 : ExponentCode := normalNode7178

theorem canonicalSound14232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14232.moment H = canonicalOutput14232.moment H :=
  canonical_of_padded canonicalInput14232 canonicalOutput14232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14233 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput14233 : ExponentCode := normalNode7181

theorem canonicalSound14233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14233.moment H = canonicalOutput14233.moment H :=
  canonical_of_padded canonicalInput14233 canonicalOutput14233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14234 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14234 : ExponentCode := normalNode7183

theorem canonicalSound14234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14234.moment H = canonicalOutput14234.moment H :=
  canonical_of_padded canonicalInput14234 canonicalOutput14234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14235 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput14235 : ExponentCode := normalNode9589

theorem canonicalSound14235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14235.moment H = canonicalOutput14235.moment H :=
  canonical_of_padded canonicalInput14235 canonicalOutput14235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14236 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, -1, 2, -1], ![1, 1, 0, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput14236 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩

theorem canonicalSound14236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14236.moment H = canonicalOutput14236.moment H :=
  canonical_of_padded canonicalInput14236 canonicalOutput14236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14237 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, -1, 2, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput14237 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound14237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14237.moment H = canonicalOutput14237.moment H :=
  canonical_of_padded canonicalInput14237 canonicalOutput14237 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14238 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14238 : ExponentCode := normalNode6328

theorem canonicalSound14238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14238.moment H = canonicalOutput14238.moment H :=
  canonical_of_padded canonicalInput14238 canonicalOutput14238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14239 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14239 : ExponentCode := normalNode6331

theorem canonicalSound14239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14239.moment H = canonicalOutput14239.moment H :=
  canonical_of_padded canonicalInput14239 canonicalOutput14239 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14240 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14240 : ExponentCode := normalNode7172

theorem canonicalSound14240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14240.moment H = canonicalOutput14240.moment H :=
  canonical_of_padded canonicalInput14240 canonicalOutput14240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14241 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14241 : ExponentCode := normalNode7168

theorem canonicalSound14241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14241.moment H = canonicalOutput14241.moment H :=
  canonical_of_padded canonicalInput14241 canonicalOutput14241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14242 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14242 : ExponentCode := normalNode5293

theorem canonicalSound14242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14242.moment H = canonicalOutput14242.moment H :=
  canonical_of_padded canonicalInput14242 canonicalOutput14242 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14243 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14243 : ExponentCode := normalNode5341

theorem canonicalSound14243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14243.moment H = canonicalOutput14243.moment H :=
  canonical_of_padded canonicalInput14243 canonicalOutput14243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14244 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14244 : ExponentCode := normalNode7190

theorem canonicalSound14244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14244.moment H = canonicalOutput14244.moment H :=
  canonical_of_padded canonicalInput14244 canonicalOutput14244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14245 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14245 : ExponentCode := normalNode7191

theorem canonicalSound14245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14245.moment H = canonicalOutput14245.moment H :=
  canonical_of_padded canonicalInput14245 canonicalOutput14245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14246 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14246 : ExponentCode := normalNode7203

theorem canonicalSound14246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14246.moment H = canonicalOutput14246.moment H :=
  canonical_of_padded canonicalInput14246 canonicalOutput14246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14247 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput14247 : ExponentCode := normalNode7204

theorem canonicalSound14247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14247.moment H = canonicalOutput14247.moment H :=
  canonical_of_padded canonicalInput14247 canonicalOutput14247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14248 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14248 : ExponentCode := normalNode7190

theorem canonicalSound14248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14248.moment H = canonicalOutput14248.moment H :=
  canonical_of_padded canonicalInput14248 canonicalOutput14248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14249 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14249 : ExponentCode := normalNode7203

theorem canonicalSound14249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14249.moment H = canonicalOutput14249.moment H :=
  canonical_of_padded canonicalInput14249 canonicalOutput14249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14250 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14250 : ExponentCode := normalNode7207

theorem canonicalSound14250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14250.moment H = canonicalOutput14250.moment H :=
  canonical_of_padded canonicalInput14250 canonicalOutput14250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14251 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput14251 : ExponentCode := normalNode7211

theorem canonicalSound14251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14251.moment H = canonicalOutput14251.moment H :=
  canonical_of_padded canonicalInput14251 canonicalOutput14251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14252 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput14252 : ExponentCode := normalNode7210

theorem canonicalSound14252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14252.moment H = canonicalOutput14252.moment H :=
  canonical_of_padded canonicalInput14252 canonicalOutput14252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14253 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput14253 : ExponentCode := normalNode7178

theorem canonicalSound14253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14253.moment H = canonicalOutput14253.moment H :=
  canonical_of_padded canonicalInput14253 canonicalOutput14253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14254 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput14254 : ExponentCode := normalNode7211

theorem canonicalSound14254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14254.moment H = canonicalOutput14254.moment H :=
  canonical_of_padded canonicalInput14254 canonicalOutput14254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14255 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput14255 : ExponentCode := normalNode7214

theorem canonicalSound14255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14255.moment H = canonicalOutput14255.moment H :=
  canonical_of_padded canonicalInput14255 canonicalOutput14255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14256 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14256 : ExponentCode := normalNode7213

theorem canonicalSound14256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14256.moment H = canonicalOutput14256.moment H :=
  canonical_of_padded canonicalInput14256 canonicalOutput14256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14257 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput14257 : ExponentCode := normalNode6318

theorem canonicalSound14257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14257.moment H = canonicalOutput14257.moment H :=
  canonical_of_padded canonicalInput14257 canonicalOutput14257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14258 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput14258 : ExponentCode := normalNode7193

theorem canonicalSound14258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14258.moment H = canonicalOutput14258.moment H :=
  canonical_of_padded canonicalInput14258 canonicalOutput14258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14259 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput14259 : ExponentCode := normalNode9588

theorem canonicalSound14259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14259.moment H = canonicalOutput14259.moment H :=
  canonical_of_padded canonicalInput14259 canonicalOutput14259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14260 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![1, -1, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput14260 : ExponentCode := normalNode6318

theorem canonicalSound14260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14260.moment H = canonicalOutput14260.moment H :=
  canonical_of_padded canonicalInput14260 canonicalOutput14260 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14261 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 0, 1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput14261 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node237⟩

theorem canonicalSound14261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14261.moment H = canonicalOutput14261.moment H :=
  canonical_of_padded canonicalInput14261 canonicalOutput14261 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14262 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput14262 : ExponentCode := normalNode7208

theorem canonicalSound14262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14262.moment H = canonicalOutput14262.moment H :=
  canonical_of_padded canonicalInput14262 canonicalOutput14262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14263 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput14263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node888⟩

theorem canonicalSound14263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14263.moment H = canonicalOutput14263.moment H :=
  canonical_of_padded canonicalInput14263 canonicalOutput14263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14264 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14264 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound14264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14264.moment H = canonicalOutput14264.moment H :=
  canonical_of_padded canonicalInput14264 canonicalOutput14264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14265 : ExponentCode := ⟨3, 4, ![![-1, -1, -3, 5], ![0, 0, 4, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput14265 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node236⟩

theorem canonicalSound14265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14265.moment H = canonicalOutput14265.moment H :=
  canonical_of_padded canonicalInput14265 canonicalOutput14265 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14266 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14266 : ExponentCode := normalNode7173

theorem canonicalSound14266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14266.moment H = canonicalOutput14266.moment H :=
  canonical_of_padded canonicalInput14266 canonicalOutput14266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14267 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput14267 : ExponentCode := normalNode7213

theorem canonicalSound14267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14267.moment H = canonicalOutput14267.moment H :=
  canonical_of_padded canonicalInput14267 canonicalOutput14267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14268 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput14268 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound14268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14268.moment H = canonicalOutput14268.moment H :=
  canonical_of_padded canonicalInput14268 canonicalOutput14268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14269 : ExponentCode := ⟨4, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14269 : ExponentCode := normalNode7223

theorem canonicalSound14269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14269.moment H = canonicalOutput14269.moment H :=
  canonical_of_padded canonicalInput14269 canonicalOutput14269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14270 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14270 : ExponentCode := normalNode7192

theorem canonicalSound14270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14270.moment H = canonicalOutput14270.moment H :=
  canonical_of_padded canonicalInput14270 canonicalOutput14270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14271 : ExponentCode := ⟨5, 4, ![![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 0, 2, -2]]⟩

def canonicalOutput14271 : ExponentCode := normalNode7218

theorem canonicalSound14271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14271.moment H = canonicalOutput14271.moment H :=
  canonical_of_padded canonicalInput14271 canonicalOutput14271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
