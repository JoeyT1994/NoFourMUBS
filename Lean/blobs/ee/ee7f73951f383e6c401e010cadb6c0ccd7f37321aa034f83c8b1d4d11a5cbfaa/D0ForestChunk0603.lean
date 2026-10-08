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
def state_1333460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 206 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 190 else 204)))
def hex_1333460 : String := "4142434440084108050844400841080508434440084108060844400841084243060743060A08420543440605440705"
theorem cover_1333460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1333460)
  decide +kernel
#print axioms cover_1333460

def state_1333507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 207 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 190 else 204)))
def hex_1333507 : String := "414243440640410705064440410A420506064041080541070643440606440A4041084243060A43060A0A4243060506"
theorem cover_1333507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1333507)
  decide +kernel
#print axioms cover_1333507

def state_1333554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 190 else 205)))
def hex_1333554 : String := "404108054142430744400807074307444041070807074205434406074440050605"
theorem cover_1333554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1333554)
  decide +kernel
#print axioms cover_1333554

def state_1333588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 191 else 204)))
def hex_1333588 : String := "404142434440050A0807434440070A0844070807414243440A09090A42054344400706404142050A05060A"
theorem cover_1333588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1333588)
  decide +kernel
#print axioms cover_1333588

def state_1333631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 191 else 205)))
def hex_1333631 : String := "4041080541420943444008090909420543444005410905054440050905"
theorem cover_1333631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1333631)
  decide +kernel
#print axioms cover_1333631

def state_1333660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 103)))
def hex_1333660 : String := "41084205434044410805050740444108050509"
theorem cover_1333660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1333660)
  decide +kernel
#print axioms cover_1333660
end Mub6.Numerical.CircleFullD0.Forest
