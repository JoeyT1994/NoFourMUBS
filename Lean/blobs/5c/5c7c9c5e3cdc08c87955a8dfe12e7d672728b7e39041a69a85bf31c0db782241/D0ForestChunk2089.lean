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
def state_2581835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
def hex_2581835 : String := "41440608444243050809420843094041060806"
theorem cover_2581835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2581835)
  decide +kernel
#print axioms cover_2581835

def state_2581856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2581856 : String := "44064208434041064406080606"
theorem cover_2581856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2581856)
  decide +kernel
#print axioms cover_2581856

def state_2581870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 36)))
def hex_2581870 : String := "42434041440608444243400A08080A4208430A08410608404106440608064340410644060A0606"
theorem cover_2581870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2581870)
  decide +kernel
#print axioms cover_2581870

def state_2581909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 37)))
def hex_2581909 : String := "42434041080808084340414442080608440A42080A410644080840410844050508"
theorem cover_2581909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2581909)
  decide +kernel
#print axioms cover_2581909

def state_2581942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2581942 : String := "4106440608"
theorem cover_2581942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581942 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2581942)
  decide +kernel
#print axioms cover_2581942

def state_2581948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 19)))
def hex_2581948 : String := "4340414408074443420540060508060808"
theorem cover_2581948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2581948)
  decide +kernel
#print axioms cover_2581948

def state_2581968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
def hex_2581968 : String := "44424340410844080705084340DC4108084041084408070842074340070707"
theorem cover_2581968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2581968)
  decide +kernel
#print axioms cover_2581968

def state_2582000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 38)))
def hex_2582000 : String := "4243404441430508060608404408070843404441DC0A41DC06444142054305080A41080A404441420843400A08080A41070A440808"
theorem cover_2582000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2582000)
  decide +kernel
#print axioms cover_2582000

def state_2582053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 39)))
def hex_2582053 : String := "42430607434006410706400707"
theorem cover_2582053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2582053)
  decide +kernel
#print axioms cover_2582053

def state_2582066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
def hex_2582066 : String := "4108440808"
theorem cover_2582066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2582066)
  decide +kernel
#print axioms cover_2582066

def state_2582071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 19)))
def hex_2582071 : String := "40414408074442084340444108080708080708"
theorem cover_2582071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2582071)
  decide +kernel
#print axioms cover_2582071
end Mub6.Numerical.CircleFullD0.Forest
