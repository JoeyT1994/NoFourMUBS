import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2260026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2260026 : String := "434142400808404405430508054240440A08094044430A420A41050A43420A41050A4241080A41404405084405080A4443054209054342080542084105094142094044434105420905410742090743084108094407084240444309060609404443424140440A09090A414044054305420905440505400A0A42414044060606064140440743420607060740440A06440A0643424106064140444342060506060940440A06440606420641400606064443420941050A42090743420641090909"
theorem cover_2260026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 191) (hex := hex_2260026)
  decide +kernel
#print axioms cover_2260026

def state_2260217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2260217 : String := "4244400A0A4007430A064440430A420A440840080A430A420A440A400A0A4043420740070A42400541440605054041440A07074144430A0A430A050A43420A4041440A0A0A0A4240410605410606404144430A42060A430A060A4144430A42060A430A060A"
theorem cover_2260217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 101) (hex := hex_2260217)
  decide +kernel
#print axioms cover_2260217

def state_2260320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
def hex_2260320 : String := "44404341444042094341444042094309090909444042050A42060A400506414409050542064341094409064109090944404205430A0506054144400509050543410906410906400606"
theorem cover_2260320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 73) (hex := hex_2260320)
  decide +kernel
#print axioms cover_2260320


end Mub6.Numerical.CircleFullD0.Forest
