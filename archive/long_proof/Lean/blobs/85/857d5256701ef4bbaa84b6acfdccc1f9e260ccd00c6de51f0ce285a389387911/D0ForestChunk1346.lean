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
def state_1623742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 66)))
def hex_1623742 : String := "434142400707404408434108420708084408434106090742400707404443414209090A090A440943410905074108420709"
theorem cover_1623742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1623742)
  decide +kernel
#print axioms cover_1623742

def state_1623791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 67)))
def hex_1623791 : String := "4341420740440A0A44430607064207400A4443050705410707"
theorem cover_1623791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1623791)
  decide +kernel
#print axioms cover_1623791

def state_1623817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 33)))
def hex_1623817 : String := "4443414240064408080606064341420A0A0A0A"
theorem cover_1623817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1623817)
  decide +kernel
#print axioms cover_1623817

def state_1623839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 66)))
def hex_1623839 : String := "42404408434108420808084408434108090840440808440843410842080808"
theorem cover_1623839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1623839)
  decide +kernel
#print axioms cover_1623839

def state_1623870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 66)))
def hex_1623870 : String := "4240444341424006080606064341420A0A0A0A44094341420909420509094006440643414209060606"
theorem cover_1623870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1623870)
  decide +kernel
#print axioms cover_1623870

def state_1623911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 195 else 66)))
def hex_1623911 : String := "41084240060906"
theorem cover_1623911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1623911)
  decide +kernel
#print axioms cover_1623911

def state_1623921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 194 else 67)))
def hex_1623921 : String := "40444341080A080A44434108424008054008050843410642050541080A"
theorem cover_1623921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1623921)
  decide +kernel
#print axioms cover_1623921

def state_1623950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 211 else (if j.val < 4 then 194 else 67)))
def hex_1623950 : String := "4044434108420A06084341080A0A444341084240080840080808434142080842400A054044080A054108420808"
theorem cover_1623950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1623950)
  decide +kernel
#print axioms cover_1623950
end Mub6.Numerical.CircleFullD0.Forest
