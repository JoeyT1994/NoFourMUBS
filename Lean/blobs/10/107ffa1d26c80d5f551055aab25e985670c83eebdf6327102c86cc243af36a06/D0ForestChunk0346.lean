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
def state_1020390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
def hex_1020390 : String := "40440843084206084409430842414044094342060842060909094140080908"
theorem cover_1020390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1020390)
  decide +kernel
#print axioms cover_1020390

def state_1020421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 24)))
def hex_1020421 : String := "41404408430742410708074408430842414044080706400844084306060608"
theorem cover_1020421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020421 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1020421)
  decide +kernel
#print axioms cover_1020421

def state_1020456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1020456 : String := "444241400743070740430606434408074442060842060707420907"
theorem cover_1020456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1020456)
  decide +kernel
#print axioms cover_1020456

def state_1020485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1020485 : String := "414044070744434241050507424105400605074307094044060644434206414006440707064206414006440A0A064342064107064206410706"
theorem cover_1020485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1020485)
  decide +kernel
#print axioms cover_1020485

def state_1020542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1020542 : String := "410740074443074241070A07430707"
theorem cover_1020542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020542 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1020542)
  decide +kernel
#print axioms cover_1020542

def state_1020557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
def hex_1020557 : String := "420907"
theorem cover_1020557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1020557)
  decide +kernel
#print axioms cover_1020557

def state_1020561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1020561 : String := "444241404305050540430A444205410540080505054140070A4043084408070A42410505410740070A"
theorem cover_1020561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1020561)
  decide +kernel
#print axioms cover_1020561

def state_1020605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1020605 : String := "404443054205410540444305050505430505440505"
theorem cover_1020605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1020605)
  decide +kernel
#print axioms cover_1020605

def state_1020629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 102 else 100)))
def hex_1020629 : String := "42410505414044430505050540444306064305064443050505"
theorem cover_1020629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1020629)
  decide +kernel
#print axioms cover_1020629
end Mub6.Numerical.CircleFullD0.Forest
