import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2260027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2260027 : String := "4142400808404405430508054240440A08094044430A420A41050A43420A41050A4241080A41404405084405080A444305420905434208054208410509"
theorem cover_2260027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2260027)
  decide +kernel
#print axioms cover_2260027

def state_2260089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
def hex_2260089 : String := "4209404443410542090541074209074308410809440708"
theorem cover_2260089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2260089)
  decide +kernel
#print axioms cover_2260089

def state_2260113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2260113 : String := "40444309060609"
theorem cover_2260113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2260113)
  decide +kernel
#print axioms cover_2260113

def state_2260122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
def hex_2260122 : String := "43424140440A09090A414044054305420905440505400A0A42414044060606064140440743420607060740440A06440A06"
theorem cover_2260122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2260122)
  decide +kernel
#print axioms cover_2260122

def state_2260171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2260171 : String := "43424106064140444342060506060940440A0644060642064140060606"
theorem cover_2260171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2260171)
  decide +kernel
#print axioms cover_2260171

def state_2260200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
def hex_2260200 : String := "4443420941050A42090743420641090909"
theorem cover_2260200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2260200)
  decide +kernel
#print axioms cover_2260200

def state_2260218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 13)))
def hex_2260218 : String := "44400A0A4007430A06"
theorem cover_2260218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2260218)
  decide +kernel
#print axioms cover_2260218

def state_2260228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2260228 : String := "40430A420A440840080A430A420A440A400A0A"
theorem cover_2260228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2260228)
  decide +kernel
#print axioms cover_2260228

def state_2260248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2260248 : String := "43420740070A42400541440605054041440A07074144430A0A430A050A"
theorem cover_2260248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2260248)
  decide +kernel
#print axioms cover_2260248
end Mub6.Numerical.CircleFullD0.Forest
