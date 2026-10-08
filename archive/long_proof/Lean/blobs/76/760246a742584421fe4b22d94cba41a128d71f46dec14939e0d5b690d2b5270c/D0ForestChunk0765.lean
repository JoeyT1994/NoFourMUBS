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
def state_1484456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 27)))
def hex_1484456 : String := "444043424109054144080944054006054205414405404342050A4205410A050905430942054109054043094209410944404309410905090909"
theorem cover_1484456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1484456)
  decide +kernel
#print axioms cover_1484456

def state_1484514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 27)))
def hex_1484514 : String := "40434142054405400705050505"
theorem cover_1484514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1484514)
  decide +kernel
#print axioms cover_1484514

def state_1484529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 27)))
def hex_1484529 : String := "414244054043410A0641420506420505430941090544064006430A410A0642440540060506"
theorem cover_1484529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1484529)
  decide +kernel
#print axioms cover_1484529

def state_1484566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 27)))
def hex_1484566 : String := "4142440540080544054043410A0641084205064341424405090A42050641420544050A0542054405400605"
theorem cover_1484566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1484566)
  decide +kernel
#print axioms cover_1484566

def state_1484610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 27)))
def hex_1484610 : String := "4142440509444043060508404309410942094405090942054405404306414205060509"
theorem cover_1484610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1484610)
  decide +kernel
#print axioms cover_1484610

def state_1484645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 27)))
def hex_1484645 : String := "41420544054043414209444043060509094205440509414205440509050905"
theorem cover_1484645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1484645)
  decide +kernel
#print axioms cover_1484645
end Mub6.Numerical.CircleFullD0.Forest
