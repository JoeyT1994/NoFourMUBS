import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_184387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
def hex_184387 : String := "42404344050944424140440509080505420941404305440506090509400505"
theorem cover_184387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_184387)
  decide +kernel
#print axioms cover_184387

def state_184419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_184419 : String := "42404309060940434441424043070607074240430508050541080844414206400606424006064005050643444107090744410642090A06"
theorem cover_184419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_184419)
  decide +kernel
#print axioms cover_184419

def state_184474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
def hex_184474 : String := "4209404344050944414240050505054142060505430544414209050509"
theorem cover_184474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_184474)
  decide +kernel
#print axioms cover_184474

def state_184505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
def hex_184505 : String := "4240440A060A0A"
theorem cover_184505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_184505)
  decide +kernel
#print axioms cover_184505

def state_184513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 30)))
def hex_184513 : String := "404443424140440706080741404405070505420707434241064006064140060640050506444342080A0843420641090906"
theorem cover_184513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_184513)
  decide +kernel
#print axioms cover_184513

def state_184562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 30)))
def hex_184562 : String := "404443050A43414240050505054142060505440543410A050A"
theorem cover_184562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_184562)
  decide +kernel
#print axioms cover_184562

def state_184587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 31)))
def hex_184587 : String := "4142064006064240060640434441420605050606434441420605050606"
theorem cover_184587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_184587)
  decide +kernel
#print axioms cover_184587

def state_184616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
def hex_184616 : String := "4344410A42090509440A410642064043090609"
theorem cover_184616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_184616)
  decide +kernel
#print axioms cover_184616
end Mub6.Numerical.CircleFullPrototype.Forest
