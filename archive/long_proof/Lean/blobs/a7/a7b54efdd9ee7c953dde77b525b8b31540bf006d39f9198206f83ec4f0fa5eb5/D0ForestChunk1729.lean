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
def state_2288152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288152 : String := "42434409410A070A0A"
theorem cover_2288152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2288152)
  decide +kernel
#print axioms cover_2288152

def state_2288161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 94)))
def hex_2288161 : String := "424344414009420843050909414042080A08404207094206434406064409414009060644410A09410A400A42440943060544090A434409410A4009090A"
theorem cover_2288161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2288161)
  decide +kernel
#print axioms cover_2288161

def state_2288223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
def hex_2288223 : String := "0A"
theorem cover_2288223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2288223)
  decide +kernel
#print axioms cover_2288223

def state_2288225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 37 else (if j.val < 4 then 97 else 95)))
def hex_2288225 : String := "424443410A050505440A43410A40050A05"
theorem cover_2288225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2288225)
  decide +kernel
#print axioms cover_2288225

def state_2288243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 74 else (if j.val < 4 then 97 else 95)))
def hex_2288243 : String := "4443414042080A084042054443414007060641050543060506410A4005420544430A0505434108400506410505"
theorem cover_2288243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288243 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2288243)
  decide +kernel
#print axioms cover_2288243

def state_2288289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 75 else (if j.val < 4 then 97 else 190)))
def hex_2288289 : String := "43410A40424443410A090A43410A4005060A440943410A090A42444341404206060606410A064306410A0644434107090A434107060A0A"
theorem cover_2288289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2288289)
  decide +kernel
#print axioms cover_2288289

def state_2288344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 75 else (if j.val < 4 then 97 else 191)))
def hex_2288344 : String := "43410A4042444341050505054443410A4005060A43410A0505420644434107060A43060A0A"
theorem cover_2288344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2288344)
  decide +kernel
#print axioms cover_2288344

def state_2288382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 47)))
def hex_2288382 : String := "430844410840420643084408080608"
theorem cover_2288382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2288382)
  decide +kernel
#print axioms cover_2288382
end Mub6.Numerical.CircleFullD0.Forest
