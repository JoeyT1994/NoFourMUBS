import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6208 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6208 : ExponentCode := normalNode8983

theorem canonicalSound6208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6208.moment H = canonicalOutput6208.moment H :=
  canonical_of_padded canonicalInput6208 canonicalOutput6208 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6209 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6209 : ExponentCode := normalNode8983

theorem canonicalSound6209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6209.moment H = canonicalOutput6209.moment H :=
  canonical_of_padded canonicalInput6209 canonicalOutput6209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6210 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6210 : ExponentCode := normalNode7434

theorem canonicalSound6210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6210.moment H = canonicalOutput6210.moment H :=
  canonical_of_padded canonicalInput6210 canonicalOutput6210 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput6211 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput6211 : ExponentCode := normalNode10328

theorem canonicalSound6211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6211.moment H = canonicalOutput6211.moment H :=
  canonical_of_padded canonicalInput6211 canonicalOutput6211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6212 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6212 : ExponentCode := normalNode7445

theorem canonicalSound6212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6212.moment H = canonicalOutput6212.moment H :=
  canonical_of_padded canonicalInput6212 canonicalOutput6212 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6213 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6213 : ExponentCode := normalNode7951

theorem canonicalSound6213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6213.moment H = canonicalOutput6213.moment H :=
  canonical_of_padded canonicalInput6213 canonicalOutput6213 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6214 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6214 : ExponentCode := normalNode7927

theorem canonicalSound6214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6214.moment H = canonicalOutput6214.moment H :=
  canonical_of_padded canonicalInput6214 canonicalOutput6214 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6215 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6215 : ExponentCode := normalNode9045

theorem canonicalSound6215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6215.moment H = canonicalOutput6215.moment H :=
  canonical_of_padded canonicalInput6215 canonicalOutput6215 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6216 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6216 : ExponentCode := normalNode10542

theorem canonicalSound6216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6216.moment H = canonicalOutput6216.moment H :=
  canonical_of_padded canonicalInput6216 canonicalOutput6216 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6217 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6217 : ExponentCode := normalNode10557

theorem canonicalSound6217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6217.moment H = canonicalOutput6217.moment H :=
  canonical_of_padded canonicalInput6217 canonicalOutput6217 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6218 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput6218 : ExponentCode := normalNode10576

theorem canonicalSound6218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6218.moment H = canonicalOutput6218.moment H :=
  canonical_of_padded canonicalInput6218 canonicalOutput6218 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6219 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6219 : ExponentCode := normalNode10606

theorem canonicalSound6219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6219.moment H = canonicalOutput6219.moment H :=
  canonical_of_padded canonicalInput6219 canonicalOutput6219 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6220 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6220 : ExponentCode := normalNode10241

theorem canonicalSound6220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6220.moment H = canonicalOutput6220.moment H :=
  canonical_of_padded canonicalInput6220 canonicalOutput6220 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6221 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput6221 : ExponentCode := normalNode9865

theorem canonicalSound6221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6221.moment H = canonicalOutput6221.moment H :=
  canonical_of_padded canonicalInput6221 canonicalOutput6221 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6222 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6222 : ExponentCode := normalNode9896

theorem canonicalSound6222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6222.moment H = canonicalOutput6222.moment H :=
  canonical_of_padded canonicalInput6222 canonicalOutput6222 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6223 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def canonicalOutput6223 : ExponentCode := normalNode9970

theorem canonicalSound6223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6223.moment H = canonicalOutput6223.moment H :=
  canonical_of_padded canonicalInput6223 canonicalOutput6223 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6224 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6224 : ExponentCode := normalNode9666

theorem canonicalSound6224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6224.moment H = canonicalOutput6224.moment H :=
  canonical_of_padded canonicalInput6224 canonicalOutput6224 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6225 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 1, 3, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput6225 : ExponentCode := normalNode9741

theorem canonicalSound6225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6225.moment H = canonicalOutput6225.moment H :=
  canonical_of_padded canonicalInput6225 canonicalOutput6225 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6226 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![0, 2, 2, -4], ![2, -2, 1, -1]]⟩

def canonicalOutput6226 : ExponentCode := normalNode10932

theorem canonicalSound6226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6226.moment H = canonicalOutput6226.moment H :=
  canonical_of_padded canonicalInput6226 canonicalOutput6226 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6227 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput6227 : ExponentCode := normalNode7971

theorem canonicalSound6227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6227.moment H = canonicalOutput6227.moment H :=
  canonical_of_padded canonicalInput6227 canonicalOutput6227 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6228 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput6228 : ExponentCode := normalNode9104

theorem canonicalSound6228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6228.moment H = canonicalOutput6228.moment H :=
  canonical_of_padded canonicalInput6228 canonicalOutput6228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6229 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6229 : ExponentCode := normalNode9720

theorem canonicalSound6229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6229.moment H = canonicalOutput6229.moment H :=
  canonical_of_padded canonicalInput6229 canonicalOutput6229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput6230 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6230 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1178⟩

theorem canonicalSound6230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6230.moment H = canonicalOutput6230.moment H :=
  canonical_of_padded canonicalInput6230 canonicalOutput6230 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput6231 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6231 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound6231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6231.moment H = canonicalOutput6231.moment H :=
  canonical_of_padded canonicalInput6231 canonicalOutput6231 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6232 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6232 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound6232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6232.moment H = canonicalOutput6232.moment H :=
  canonical_of_padded canonicalInput6232 canonicalOutput6232 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput6233 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput6233 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound6233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6233.moment H = canonicalOutput6233.moment H :=
  canonical_of_padded canonicalInput6233 canonicalOutput6233 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6234 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6234 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound6234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6234.moment H = canonicalOutput6234.moment H :=
  canonical_of_padded canonicalInput6234 canonicalOutput6234 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput6235 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6235 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound6235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6235.moment H = canonicalOutput6235.moment H :=
  canonical_of_padded canonicalInput6235 canonicalOutput6235 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6236 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6236 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound6236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6236.moment H = canonicalOutput6236.moment H :=
  canonical_of_padded canonicalInput6236 canonicalOutput6236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6237 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6237 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound6237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6237.moment H = canonicalOutput6237.moment H :=
  canonical_of_padded canonicalInput6237 canonicalOutput6237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6238 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6238 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound6238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6238.moment H = canonicalOutput6238.moment H :=
  canonical_of_padded canonicalInput6238 canonicalOutput6238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6239 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6239 : ExponentCode := normalNode3236

theorem canonicalSound6239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6239.moment H = canonicalOutput6239.moment H :=
  canonical_of_padded canonicalInput6239 canonicalOutput6239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6240 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput6240 : ExponentCode := normalNode10699

theorem canonicalSound6240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6240.moment H = canonicalOutput6240.moment H :=
  canonical_of_padded canonicalInput6240 canonicalOutput6240 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6241 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6241 : ExponentCode := normalNode7445

theorem canonicalSound6241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6241.moment H = canonicalOutput6241.moment H :=
  canonical_of_padded canonicalInput6241 canonicalOutput6241 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6242 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput6242 : ExponentCode := normalNode9077

theorem canonicalSound6242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6242.moment H = canonicalOutput6242.moment H :=
  canonical_of_padded canonicalInput6242 canonicalOutput6242 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6243 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6243 : ExponentCode := normalNode9744

theorem canonicalSound6243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6243.moment H = canonicalOutput6243.moment H :=
  canonical_of_padded canonicalInput6243 canonicalOutput6243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6244 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6244 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound6244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6244.moment H = canonicalOutput6244.moment H :=
  canonical_of_padded canonicalInput6244 canonicalOutput6244 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6245 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6245 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound6245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6245.moment H = canonicalOutput6245.moment H :=
  canonical_of_padded canonicalInput6245 canonicalOutput6245 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput6246 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩

theorem canonicalSound6246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6246.moment H = canonicalOutput6246.moment H :=
  canonical_of_padded canonicalInput6246 canonicalOutput6246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput6247 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput6247 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2820⟩

theorem canonicalSound6247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6247.moment H = canonicalOutput6247.moment H :=
  canonical_of_padded canonicalInput6247 canonicalOutput6247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6248 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6248 : ExponentCode := normalNode10322

theorem canonicalSound6248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6248.moment H = canonicalOutput6248.moment H :=
  canonical_of_padded canonicalInput6248 canonicalOutput6248 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6249 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput6249 : ExponentCode := normalNode7945

theorem canonicalSound6249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6249.moment H = canonicalOutput6249.moment H :=
  canonical_of_padded canonicalInput6249 canonicalOutput6249 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6250 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6250 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2596⟩

theorem canonicalSound6250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6250.moment H = canonicalOutput6250.moment H :=
  canonical_of_padded canonicalInput6250 canonicalOutput6250 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6251 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput6251 : ExponentCode := normalNode9091

theorem canonicalSound6251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6251.moment H = canonicalOutput6251.moment H :=
  canonical_of_padded canonicalInput6251 canonicalOutput6251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6252 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6252 : ExponentCode := normalNode9744

theorem canonicalSound6252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6252.moment H = canonicalOutput6252.moment H :=
  canonical_of_padded canonicalInput6252 canonicalOutput6252 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput6253 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput6253 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2820⟩

theorem canonicalSound6253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6253.moment H = canonicalOutput6253.moment H :=
  canonical_of_padded canonicalInput6253 canonicalOutput6253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6254 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6254 : ExponentCode := normalNode10830

theorem canonicalSound6254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6254.moment H = canonicalOutput6254.moment H :=
  canonical_of_padded canonicalInput6254 canonicalOutput6254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6255 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6255 : ExponentCode := normalNode10846

theorem canonicalSound6255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6255.moment H = canonicalOutput6255.moment H :=
  canonical_of_padded canonicalInput6255 canonicalOutput6255 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6256 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6256 : ExponentCode := normalNode10604

theorem canonicalSound6256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6256.moment H = canonicalOutput6256.moment H :=
  canonical_of_padded canonicalInput6256 canonicalOutput6256 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6257 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput6257 : ExponentCode := normalNode9744

theorem canonicalSound6257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6257.moment H = canonicalOutput6257.moment H :=
  canonical_of_padded canonicalInput6257 canonicalOutput6257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6258 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput6258 : ExponentCode := normalNode10683

theorem canonicalSound6258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6258.moment H = canonicalOutput6258.moment H :=
  canonical_of_padded canonicalInput6258 canonicalOutput6258 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6259 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput6259 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1920⟩

theorem canonicalSound6259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6259.moment H = canonicalOutput6259.moment H :=
  canonical_of_padded canonicalInput6259 canonicalOutput6259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6260 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6260 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1472⟩

theorem canonicalSound6260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6260.moment H = canonicalOutput6260.moment H :=
  canonical_of_padded canonicalInput6260 canonicalOutput6260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput6261 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6261 : ExponentCode := normalNode9914

theorem canonicalSound6261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6261.moment H = canonicalOutput6261.moment H :=
  canonical_of_padded canonicalInput6261 canonicalOutput6261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6262 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput6262 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1169⟩

theorem canonicalSound6262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6262.moment H = canonicalOutput6262.moment H :=
  canonical_of_padded canonicalInput6262 canonicalOutput6262 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6263 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput6263 : ExponentCode := normalNode10929

theorem canonicalSound6263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6263.moment H = canonicalOutput6263.moment H :=
  canonical_of_padded canonicalInput6263 canonicalOutput6263 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6264 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput6264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1484⟩

theorem canonicalSound6264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6264.moment H = canonicalOutput6264.moment H :=
  canonical_of_padded canonicalInput6264 canonicalOutput6264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6265 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput6265 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩

theorem canonicalSound6265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6265.moment H = canonicalOutput6265.moment H :=
  canonical_of_padded canonicalInput6265 canonicalOutput6265 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6266 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput6266 : ExponentCode := normalNode3201

theorem canonicalSound6266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6266.moment H = canonicalOutput6266.moment H :=
  canonical_of_padded canonicalInput6266 canonicalOutput6266 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6267 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput6267 : ExponentCode := normalNode3281

theorem canonicalSound6267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6267.moment H = canonicalOutput6267.moment H :=
  canonical_of_padded canonicalInput6267 canonicalOutput6267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6268 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput6268 : ExponentCode := normalNode7458

theorem canonicalSound6268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6268.moment H = canonicalOutput6268.moment H :=
  canonical_of_padded canonicalInput6268 canonicalOutput6268 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6269 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6269 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound6269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6269.moment H = canonicalOutput6269.moment H :=
  canonical_of_padded canonicalInput6269 canonicalOutput6269 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput6270 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput6270 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node786⟩

theorem canonicalSound6270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6270.moment H = canonicalOutput6270.moment H :=
  canonical_of_padded canonicalInput6270 canonicalOutput6270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput6271 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6271 : ExponentCode := normalNode9103

theorem canonicalSound6271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6271.moment H = canonicalOutput6271.moment H :=
  canonical_of_padded canonicalInput6271 canonicalOutput6271 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
