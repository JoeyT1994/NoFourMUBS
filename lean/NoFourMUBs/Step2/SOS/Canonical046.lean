import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2944 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2944 : ExponentCode := normalNode8015

theorem canonicalSound2944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2944.moment H = canonicalOutput2944.moment H :=
  canonical_of_padded canonicalInput2944 canonicalOutput2944 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2945 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2945 : ExponentCode := normalNode6538

theorem canonicalSound2945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2945.moment H = canonicalOutput2945.moment H :=
  canonical_of_padded canonicalInput2945 canonicalOutput2945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2946 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2946 : ExponentCode := normalNode6539

theorem canonicalSound2946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2946.moment H = canonicalOutput2946.moment H :=
  canonical_of_padded canonicalInput2946 canonicalOutput2946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2947 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2947 : ExponentCode := normalNode10374

theorem canonicalSound2947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2947.moment H = canonicalOutput2947.moment H :=
  canonical_of_padded canonicalInput2947 canonicalOutput2947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2948 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput2948 : ExponentCode := normalNode8021

theorem canonicalSound2948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2948.moment H = canonicalOutput2948.moment H :=
  canonical_of_padded canonicalInput2948 canonicalOutput2948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2949 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2949 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code341

theorem canonicalSound2949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2949.moment H = canonicalOutput2949.moment H :=
  canonical_of_padded canonicalInput2949 canonicalOutput2949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput2950 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2950 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code343

theorem canonicalSound2950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2950.moment H = canonicalOutput2950.moment H :=
  canonical_of_padded canonicalInput2950 canonicalOutput2950 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2951 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2951 : ExponentCode := normalNode6534

theorem canonicalSound2951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2951.moment H = canonicalOutput2951.moment H :=
  canonical_of_padded canonicalInput2951 canonicalOutput2951 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2952 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2952 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code344

theorem canonicalSound2952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2952.moment H = canonicalOutput2952.moment H :=
  canonical_of_padded canonicalInput2952 canonicalOutput2952 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput2953 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 0, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2953 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code340

theorem canonicalSound2953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2953.moment H = canonicalOutput2953.moment H :=
  canonical_of_padded canonicalInput2953 canonicalOutput2953 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2954 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 0, 0, -2], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2954 : ExponentCode := normalNode10386

theorem canonicalSound2954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2954.moment H = canonicalOutput2954.moment H :=
  canonical_of_padded canonicalInput2954 canonicalOutput2954 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput2955 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 2, 1, 0, -3], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2955 : ExponentCode := normalNode8215

theorem canonicalSound2955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2955.moment H = canonicalOutput2955.moment H :=
  canonical_of_padded canonicalInput2955 canonicalOutput2955 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput2956 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput2956 : ExponentCode := normalNode9560

theorem canonicalSound2956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2956.moment H = canonicalOutput2956.moment H :=
  canonical_of_padded canonicalInput2956 canonicalOutput2956 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2957 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput2957 : ExponentCode := normalNode10379

theorem canonicalSound2957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2957.moment H = canonicalOutput2957.moment H :=
  canonical_of_padded canonicalInput2957 canonicalOutput2957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2958 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2958 : ExponentCode := normalNode9140

theorem canonicalSound2958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2958.moment H = canonicalOutput2958.moment H :=
  canonical_of_padded canonicalInput2958 canonicalOutput2958 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput2959 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 0, 1, -1], ![1, 0, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2959 : ExponentCode := normalNode8345

theorem canonicalSound2959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2959.moment H = canonicalOutput2959.moment H :=
  canonical_of_padded canonicalInput2959 canonicalOutput2959 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput2960 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 0, -1, 1, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput2960 : ExponentCode := normalNode9557

theorem canonicalSound2960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2960.moment H = canonicalOutput2960.moment H :=
  canonical_of_padded canonicalInput2960 canonicalOutput2960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2961 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 0, 0, 1, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput2961 : ExponentCode := normalNode9571

theorem canonicalSound2961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2961.moment H = canonicalOutput2961.moment H :=
  canonical_of_padded canonicalInput2961 canonicalOutput2961 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2962 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput2962 : ExponentCode := normalNode9559

theorem canonicalSound2962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2962.moment H = canonicalOutput2962.moment H :=
  canonical_of_padded canonicalInput2962 canonicalOutput2962 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2963 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput2963 : ExponentCode := normalNode10378

theorem canonicalSound2963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2963.moment H = canonicalOutput2963.moment H :=
  canonical_of_padded canonicalInput2963 canonicalOutput2963 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2964 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, 0, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2964 : ExponentCode := normalNode6528

theorem canonicalSound2964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2964.moment H = canonicalOutput2964.moment H :=
  canonical_of_padded canonicalInput2964 canonicalOutput2964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput2965 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2965 : ExponentCode := normalNode6529

theorem canonicalSound2965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2965.moment H = canonicalOutput2965.moment H :=
  canonical_of_padded canonicalInput2965 canonicalOutput2965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput2966 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![1, -1, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2966 : ExponentCode := normalNode8143

theorem canonicalSound2966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2966.moment H = canonicalOutput2966.moment H :=
  canonical_of_padded canonicalInput2966 canonicalOutput2966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput2967 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2967 : ExponentCode := normalNode9995

theorem canonicalSound2967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2967.moment H = canonicalOutput2967.moment H :=
  canonical_of_padded canonicalInput2967 canonicalOutput2967 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2968 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2968 : ExponentCode := normalNode9987

theorem canonicalSound2968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2968.moment H = canonicalOutput2968.moment H :=
  canonical_of_padded canonicalInput2968 canonicalOutput2968 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2969 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2969 : ExponentCode := normalNode9988

theorem canonicalSound2969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2969.moment H = canonicalOutput2969.moment H :=
  canonical_of_padded canonicalInput2969 canonicalOutput2969 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2970 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput2970 : ExponentCode := normalNode8719

theorem canonicalSound2970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2970.moment H = canonicalOutput2970.moment H :=
  canonical_of_padded canonicalInput2970 canonicalOutput2970 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2971 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2971 : ExponentCode := normalNode8501

theorem canonicalSound2971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2971.moment H = canonicalOutput2971.moment H :=
  canonical_of_padded canonicalInput2971 canonicalOutput2971 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2972 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2972 : ExponentCode := normalNode7493

theorem canonicalSound2972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2972.moment H = canonicalOutput2972.moment H :=
  canonical_of_padded canonicalInput2972 canonicalOutput2972 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2973 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2973 : ExponentCode := normalNode7998

theorem canonicalSound2973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2973.moment H = canonicalOutput2973.moment H :=
  canonical_of_padded canonicalInput2973 canonicalOutput2973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2974 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 0, 1, -1], ![0, 2, -2, 0, 0], ![1, -1, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2974 : ExponentCode := normalNode8026

theorem canonicalSound2974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2974.moment H = canonicalOutput2974.moment H :=
  canonical_of_padded canonicalInput2974 canonicalOutput2974 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2975 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2975 : ExponentCode := normalNode7531

theorem canonicalSound2975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2975.moment H = canonicalOutput2975.moment H :=
  canonical_of_padded canonicalInput2975 canonicalOutput2975 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput2976 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2976 : ExponentCode := normalNode7997

theorem canonicalSound2976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2976.moment H = canonicalOutput2976.moment H :=
  canonical_of_padded canonicalInput2976 canonicalOutput2976 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2977 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![1, -1, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2977 : ExponentCode := normalNode7549

theorem canonicalSound2977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2977.moment H = canonicalOutput2977.moment H :=
  canonical_of_padded canonicalInput2977 canonicalOutput2977 (by decide) (by decide)
    ⟨false, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput2978 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2978 : ExponentCode := normalNode10368

theorem canonicalSound2978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2978.moment H = canonicalOutput2978.moment H :=
  canonical_of_padded canonicalInput2978 canonicalOutput2978 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2979 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 2, -2, 0], ![0, 0, 0, 1, -1], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2979 : ExponentCode := normalNode6531

theorem canonicalSound2979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2979.moment H = canonicalOutput2979.moment H :=
  canonical_of_padded canonicalInput2979 canonicalOutput2979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput2980 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2980 : ExponentCode := normalNode8015

theorem canonicalSound2980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2980.moment H = canonicalOutput2980.moment H :=
  canonical_of_padded canonicalInput2980 canonicalOutput2980 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2981 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2981 : ExponentCode := normalNode6539

theorem canonicalSound2981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2981.moment H = canonicalOutput2981.moment H :=
  canonical_of_padded canonicalInput2981 canonicalOutput2981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput2982 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2982 : ExponentCode := normalNode7546

theorem canonicalSound2982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2982.moment H = canonicalOutput2982.moment H :=
  canonical_of_padded canonicalInput2982 canonicalOutput2982 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput2983 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2983 : ExponentCode := normalNode6541

theorem canonicalSound2983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2983.moment H = canonicalOutput2983.moment H :=
  canonical_of_padded canonicalInput2983 canonicalOutput2983 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2984 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -2, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput2984 : ExponentCode := normalNode7999

theorem canonicalSound2984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2984.moment H = canonicalOutput2984.moment H :=
  canonical_of_padded canonicalInput2984 canonicalOutput2984 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2985 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -2, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2985 : ExponentCode := normalNode9989

theorem canonicalSound2985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2985.moment H = canonicalOutput2985.moment H :=
  canonical_of_padded canonicalInput2985 canonicalOutput2985 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2986 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -2, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2986 : ExponentCode := normalNode8137

theorem canonicalSound2986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2986.moment H = canonicalOutput2986.moment H :=
  canonical_of_padded canonicalInput2986 canonicalOutput2986 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput2987 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput2987 : ExponentCode := normalNode8681

theorem canonicalSound2987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2987.moment H = canonicalOutput2987.moment H :=
  canonical_of_padded canonicalInput2987 canonicalOutput2987 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2988 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2988 : ExponentCode := normalNode8665

theorem canonicalSound2988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2988.moment H = canonicalOutput2988.moment H :=
  canonical_of_padded canonicalInput2988 canonicalOutput2988 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2989 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput2989 : ExponentCode := normalNode9220

theorem canonicalSound2989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2989.moment H = canonicalOutput2989.moment H :=
  canonical_of_padded canonicalInput2989 canonicalOutput2989 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2990 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput2990 : ExponentCode := normalNode8666

theorem canonicalSound2990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2990.moment H = canonicalOutput2990.moment H :=
  canonical_of_padded canonicalInput2990 canonicalOutput2990 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2991 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2991 : ExponentCode := normalNode8634

theorem canonicalSound2991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2991.moment H = canonicalOutput2991.moment H :=
  canonical_of_padded canonicalInput2991 canonicalOutput2991 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2992 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, 1, 0], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput2992 : ExponentCode := normalNode8309

theorem canonicalSound2992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2992.moment H = canonicalOutput2992.moment H :=
  canonical_of_padded canonicalInput2992 canonicalOutput2992 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput2993 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2993 : ExponentCode := normalNode8684

theorem canonicalSound2993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2993.moment H = canonicalOutput2993.moment H :=
  canonical_of_padded canonicalInput2993 canonicalOutput2993 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2994 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput2994 : ExponentCode := normalNode7994

theorem canonicalSound2994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2994.moment H = canonicalOutput2994.moment H :=
  canonical_of_padded canonicalInput2994 canonicalOutput2994 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2995 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, -2, 2, -1]]⟩

def canonicalOutput2995 : ExponentCode := normalNode8666

theorem canonicalSound2995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2995.moment H = canonicalOutput2995.moment H :=
  canonical_of_padded canonicalInput2995 canonicalOutput2995 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2996 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput2996 : ExponentCode := normalNode8667

theorem canonicalSound2996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2996.moment H = canonicalOutput2996.moment H :=
  canonical_of_padded canonicalInput2996 canonicalOutput2996 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2997 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![1, -1, 2, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput2997 : ExponentCode := normalNode8669

theorem canonicalSound2997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2997.moment H = canonicalOutput2997.moment H :=
  canonical_of_padded canonicalInput2997 canonicalOutput2997 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2998 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput2998 : ExponentCode := normalNode8025

theorem canonicalSound2998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2998.moment H = canonicalOutput2998.moment H :=
  canonical_of_padded canonicalInput2998 canonicalOutput2998 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2999 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![1, -1, -2, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2999 : ExponentCode := normalNode6537

theorem canonicalSound2999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2999.moment H = canonicalOutput2999.moment H :=
  canonical_of_padded canonicalInput2999 canonicalOutput2999 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3000 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-2, 2, 1, 0, -1], ![2, -1, -2, 1, 0], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code187

theorem canonicalSound3000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3000.moment H = canonicalOutput3000.moment H :=
  canonical_of_padded canonicalInput3000 canonicalOutput3000 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3001 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-2, 2, 1, 0, -1], ![2, -1, 1, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput3001 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code188

theorem canonicalSound3001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3001.moment H = canonicalOutput3001.moment H :=
  canonical_of_padded canonicalInput3001 canonicalOutput3001 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3002 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, -1, 1, 1, 0], ![0, 2, -2, 0, 0], ![3, 0, 1, -2, -2]]⟩

def canonicalOutput3002 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1152

theorem canonicalSound3002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3002.moment H = canonicalOutput3002.moment H :=
  canonical_of_padded canonicalInput3002 canonicalOutput3002 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3003 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, -1, 3, 0, -1], ![0, 2, -2, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput3003 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code48

theorem canonicalSound3003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3003.moment H = canonicalOutput3003.moment H :=
  canonical_of_padded canonicalInput3003 canonicalOutput3003 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput3004 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput3004 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code969

theorem canonicalSound3004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3004.moment H = canonicalOutput3004.moment H :=
  canonical_of_padded canonicalInput3004 canonicalOutput3004 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3005 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 0, 3, -2, 0], ![0, 2, -2, 1, -1], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput3005 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code48

theorem canonicalSound3005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3005.moment H = canonicalOutput3005.moment H :=
  canonical_of_padded canonicalInput3005 canonicalOutput3005 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3006 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 1, 0, 1, -1], ![1, 1, -2, 0, 0], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput3006 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code885

theorem canonicalSound3006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3006.moment H = canonicalOutput3006.moment H :=
  canonical_of_padded canonicalInput3006 canonicalOutput3006 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3007 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![-1, 1, 1, -1, 0], ![0, 1, -2, 1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput3007 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1153

theorem canonicalSound3007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3007.moment H = canonicalOutput3007.moment H :=
  canonical_of_padded canonicalInput3007 canonicalOutput3007 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
