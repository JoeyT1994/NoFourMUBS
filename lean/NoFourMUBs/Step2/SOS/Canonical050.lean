import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3200 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 0, 1, -1], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3200 : ExponentCode := normalNode10062

theorem canonicalSound3200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3200.moment H = canonicalOutput3200.moment H :=
  canonical_of_padded canonicalInput3200 canonicalOutput3200 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3201 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput3201 : ExponentCode := normalNode10429

theorem canonicalSound3201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3201.moment H = canonicalOutput3201.moment H :=
  canonical_of_padded canonicalInput3201 canonicalOutput3201 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3202 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3202 : ExponentCode := normalNode7552

theorem canonicalSound3202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3202.moment H = canonicalOutput3202.moment H :=
  canonical_of_padded canonicalInput3202 canonicalOutput3202 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3203 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3203 : ExponentCode := normalNode8404

theorem canonicalSound3203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3203.moment H = canonicalOutput3203.moment H :=
  canonical_of_padded canonicalInput3203 canonicalOutput3203 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3204 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3204 : ExponentCode := normalNode8680

theorem canonicalSound3204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3204.moment H = canonicalOutput3204.moment H :=
  canonical_of_padded canonicalInput3204 canonicalOutput3204 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3205 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3205 : ExponentCode := normalNode8677

theorem canonicalSound3205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3205.moment H = canonicalOutput3205.moment H :=
  canonical_of_padded canonicalInput3205 canonicalOutput3205 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3206 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput3206 : ExponentCode := normalNode9248

theorem canonicalSound3206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3206.moment H = canonicalOutput3206.moment H :=
  canonical_of_padded canonicalInput3206 canonicalOutput3206 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3207 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3207 : ExponentCode := normalNode10410

theorem canonicalSound3207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3207.moment H = canonicalOutput3207.moment H :=
  canonical_of_padded canonicalInput3207 canonicalOutput3207 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3208 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3208 : ExponentCode := normalNode9223

theorem canonicalSound3208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3208.moment H = canonicalOutput3208.moment H :=
  canonical_of_padded canonicalInput3208 canonicalOutput3208 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3209 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3209 : ExponentCode := normalNode8715

theorem canonicalSound3209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3209.moment H = canonicalOutput3209.moment H :=
  canonical_of_padded canonicalInput3209 canonicalOutput3209 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3210 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3210 : ExponentCode := normalNode8658

theorem canonicalSound3210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3210.moment H = canonicalOutput3210.moment H :=
  canonical_of_padded canonicalInput3210 canonicalOutput3210 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3211 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3211 : ExponentCode := normalNode8721

theorem canonicalSound3211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3211.moment H = canonicalOutput3211.moment H :=
  canonical_of_padded canonicalInput3211 canonicalOutput3211 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3212 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3212 : ExponentCode := normalNode9494

theorem canonicalSound3212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3212.moment H = canonicalOutput3212.moment H :=
  canonical_of_padded canonicalInput3212 canonicalOutput3212 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3213 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3213 : ExponentCode := normalNode9487

theorem canonicalSound3213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3213.moment H = canonicalOutput3213.moment H :=
  canonical_of_padded canonicalInput3213 canonicalOutput3213 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3214 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput3214 : ExponentCode := normalNode9212

theorem canonicalSound3214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3214.moment H = canonicalOutput3214.moment H :=
  canonical_of_padded canonicalInput3214 canonicalOutput3214 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3215 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput3215 : ExponentCode := normalNode9490

theorem canonicalSound3215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3215.moment H = canonicalOutput3215.moment H :=
  canonical_of_padded canonicalInput3215 canonicalOutput3215 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3216 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3216 : ExponentCode := normalNode8722

theorem canonicalSound3216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3216.moment H = canonicalOutput3216.moment H :=
  canonical_of_padded canonicalInput3216 canonicalOutput3216 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3217 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 0, 1], ![1, -1, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput3217 : ExponentCode := normalNode8522

theorem canonicalSound3217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3217.moment H = canonicalOutput3217.moment H :=
  canonical_of_padded canonicalInput3217 canonicalOutput3217 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3218 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 0, 1, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput3218 : ExponentCode := normalNode8581

theorem canonicalSound3218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3218.moment H = canonicalOutput3218.moment H :=
  canonical_of_padded canonicalInput3218 canonicalOutput3218 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3219 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 0, 1, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput3219 : ExponentCode := normalNode9147

theorem canonicalSound3219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3219.moment H = canonicalOutput3219.moment H :=
  canonical_of_padded canonicalInput3219 canonicalOutput3219 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3220 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3220 : ExponentCode := normalNode9247

theorem canonicalSound3220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3220.moment H = canonicalOutput3220.moment H :=
  canonical_of_padded canonicalInput3220 canonicalOutput3220 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3221 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3221 : ExponentCode := normalNode10159

theorem canonicalSound3221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3221.moment H = canonicalOutput3221.moment H :=
  canonical_of_padded canonicalInput3221 canonicalOutput3221 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3222 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3222 : ExponentCode := normalNode8723

theorem canonicalSound3222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3222.moment H = canonicalOutput3222.moment H :=
  canonical_of_padded canonicalInput3222 canonicalOutput3222 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3223 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 0, 1, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput3223 : ExponentCode := normalNode8649

theorem canonicalSound3223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3223.moment H = canonicalOutput3223.moment H :=
  canonical_of_padded canonicalInput3223 canonicalOutput3223 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3224 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3224 : ExponentCode := normalNode8679

theorem canonicalSound3224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3224.moment H = canonicalOutput3224.moment H :=
  canonical_of_padded canonicalInput3224 canonicalOutput3224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3225 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 0, 1, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3225 : ExponentCode := normalNode8731

theorem canonicalSound3225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3225.moment H = canonicalOutput3225.moment H :=
  canonical_of_padded canonicalInput3225 canonicalOutput3225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3226 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput3226 : ExponentCode := normalNode8732

theorem canonicalSound3226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3226.moment H = canonicalOutput3226.moment H :=
  canonical_of_padded canonicalInput3226 canonicalOutput3226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3227 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3227 : ExponentCode := normalNode8661

theorem canonicalSound3227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3227.moment H = canonicalOutput3227.moment H :=
  canonical_of_padded canonicalInput3227 canonicalOutput3227 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3228 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3228 : ExponentCode := normalNode8726

theorem canonicalSound3228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3228.moment H = canonicalOutput3228.moment H :=
  canonical_of_padded canonicalInput3228 canonicalOutput3228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3229 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3229 : ExponentCode := normalNode8727

theorem canonicalSound3229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3229.moment H = canonicalOutput3229.moment H :=
  canonical_of_padded canonicalInput3229 canonicalOutput3229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3230 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3230 : ExponentCode := normalNode8663

theorem canonicalSound3230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3230.moment H = canonicalOutput3230.moment H :=
  canonical_of_padded canonicalInput3230 canonicalOutput3230 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3231 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3231 : ExponentCode := normalNode8727

theorem canonicalSound3231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3231.moment H = canonicalOutput3231.moment H :=
  canonical_of_padded canonicalInput3231 canonicalOutput3231 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3232 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3232 : ExponentCode := normalNode8547

theorem canonicalSound3232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3232.moment H = canonicalOutput3232.moment H :=
  canonical_of_padded canonicalInput3232 canonicalOutput3232 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3233 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3233 : ExponentCode := normalNode8415

theorem canonicalSound3233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3233.moment H = canonicalOutput3233.moment H :=
  canonical_of_padded canonicalInput3233 canonicalOutput3233 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3234 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3234 : ExponentCode := normalNode8415

theorem canonicalSound3234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3234.moment H = canonicalOutput3234.moment H :=
  canonical_of_padded canonicalInput3234 canonicalOutput3234 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3235 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3235 : ExponentCode := normalNode9765

theorem canonicalSound3235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3235.moment H = canonicalOutput3235.moment H :=
  canonical_of_padded canonicalInput3235 canonicalOutput3235 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3236 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3236 : ExponentCode := normalNode8590

theorem canonicalSound3236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3236.moment H = canonicalOutput3236.moment H :=
  canonical_of_padded canonicalInput3236 canonicalOutput3236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3237 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3237 : ExponentCode := normalNode8509

theorem canonicalSound3237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3237.moment H = canonicalOutput3237.moment H :=
  canonical_of_padded canonicalInput3237 canonicalOutput3237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3238 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3238 : ExponentCode := normalNode8569

theorem canonicalSound3238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3238.moment H = canonicalOutput3238.moment H :=
  canonical_of_padded canonicalInput3238 canonicalOutput3238 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3239 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3239 : ExponentCode := normalNode10032

theorem canonicalSound3239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3239.moment H = canonicalOutput3239.moment H :=
  canonical_of_padded canonicalInput3239 canonicalOutput3239 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3240 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3240 : ExponentCode := normalNode8728

theorem canonicalSound3240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3240.moment H = canonicalOutput3240.moment H :=
  canonical_of_padded canonicalInput3240 canonicalOutput3240 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3241 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3241 : ExponentCode := normalNode8728

theorem canonicalSound3241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3241.moment H = canonicalOutput3241.moment H :=
  canonical_of_padded canonicalInput3241 canonicalOutput3241 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3242 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 1, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3242 : ExponentCode := normalNode8641

theorem canonicalSound3242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3242.moment H = canonicalOutput3242.moment H :=
  canonical_of_padded canonicalInput3242 canonicalOutput3242 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput3243 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3243 : ExponentCode := normalNode10046

theorem canonicalSound3243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3243.moment H = canonicalOutput3243.moment H :=
  canonical_of_padded canonicalInput3243 canonicalOutput3243 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3244 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3244 : ExponentCode := normalNode8214

theorem canonicalSound3244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3244.moment H = canonicalOutput3244.moment H :=
  canonical_of_padded canonicalInput3244 canonicalOutput3244 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3245 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3245 : ExponentCode := normalNode8174

theorem canonicalSound3245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3245.moment H = canonicalOutput3245.moment H :=
  canonical_of_padded canonicalInput3245 canonicalOutput3245 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3246 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3246 : ExponentCode := normalNode7584

theorem canonicalSound3246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3246.moment H = canonicalOutput3246.moment H :=
  canonical_of_padded canonicalInput3246 canonicalOutput3246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3247 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput3247 : ExponentCode := normalNode7241

theorem canonicalSound3247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3247.moment H = canonicalOutput3247.moment H :=
  canonical_of_padded canonicalInput3247 canonicalOutput3247 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3248 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3248 : ExponentCode := normalNode8213

theorem canonicalSound3248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3248.moment H = canonicalOutput3248.moment H :=
  canonical_of_padded canonicalInput3248 canonicalOutput3248 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3249 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, -1, 1, 1, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3249 : ExponentCode := normalNode8198

theorem canonicalSound3249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3249.moment H = canonicalOutput3249.moment H :=
  canonical_of_padded canonicalInput3249 canonicalOutput3249 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3250 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3250 : ExponentCode := normalNode9193

theorem canonicalSound3250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3250.moment H = canonicalOutput3250.moment H :=
  canonical_of_padded canonicalInput3250 canonicalOutput3250 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3251 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, -2, 1, 1], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3251 : ExponentCode := normalNode6550

theorem canonicalSound3251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3251.moment H = canonicalOutput3251.moment H :=
  canonical_of_padded canonicalInput3251 canonicalOutput3251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3252 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3252 : ExponentCode := normalNode8427

theorem canonicalSound3252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3252.moment H = canonicalOutput3252.moment H :=
  canonical_of_padded canonicalInput3252 canonicalOutput3252 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3253 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, -1, 1, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput3253 : ExponentCode := normalNode8419

theorem canonicalSound3253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3253.moment H = canonicalOutput3253.moment H :=
  canonical_of_padded canonicalInput3253 canonicalOutput3253 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3254 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, -1, 1], ![1, 0, 1, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3254 : ExponentCode := normalNode10361

theorem canonicalSound3254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3254.moment H = canonicalOutput3254.moment H :=
  canonical_of_padded canonicalInput3254 canonicalOutput3254 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput3255 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3255 : ExponentCode := normalNode7627

theorem canonicalSound3255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3255.moment H = canonicalOutput3255.moment H :=
  canonical_of_padded canonicalInput3255 canonicalOutput3255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3256 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![1, 0, -1, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3256 : ExponentCode := normalNode9769

theorem canonicalSound3256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3256.moment H = canonicalOutput3256.moment H :=
  canonical_of_padded canonicalInput3256 canonicalOutput3256 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3257 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![1, 0, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3257 : ExponentCode := normalNode8423

theorem canonicalSound3257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3257.moment H = canonicalOutput3257.moment H :=
  canonical_of_padded canonicalInput3257 canonicalOutput3257 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3258 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3258 : ExponentCode := normalNode9171

theorem canonicalSound3258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3258.moment H = canonicalOutput3258.moment H :=
  canonical_of_padded canonicalInput3258 canonicalOutput3258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3259 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3259 : ExponentCode := normalNode6580

theorem canonicalSound3259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3259.moment H = canonicalOutput3259.moment H :=
  canonical_of_padded canonicalInput3259 canonicalOutput3259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3260 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3260 : ExponentCode := normalNode9168

theorem canonicalSound3260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3260.moment H = canonicalOutput3260.moment H :=
  canonical_of_padded canonicalInput3260 canonicalOutput3260 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3261 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3261 : ExponentCode := normalNode6579

theorem canonicalSound3261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3261.moment H = canonicalOutput3261.moment H :=
  canonical_of_padded canonicalInput3261 canonicalOutput3261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3262 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 0, 0, -1, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3262 : ExponentCode := normalNode8417

theorem canonicalSound3262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3262.moment H = canonicalOutput3262.moment H :=
  canonical_of_padded canonicalInput3262 canonicalOutput3262 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3263 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput3263 : ExponentCode := normalNode8230

theorem canonicalSound3263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3263.moment H = canonicalOutput3263.moment H :=
  canonical_of_padded canonicalInput3263 canonicalOutput3263 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
