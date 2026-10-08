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
def state_17664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 30) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_17664 : String := "4043440509074344074142400643090640094309440706094407410606"
theorem cover_17664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_17664)
  decide +kernel
#print axioms cover_17664

def state_17693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
def hex_17693 : String := "40430544050643440541404305094342090542444140054206050506440509054407414006420643444106050606400909"
theorem cover_17693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_17693)
  decide +kernel
#print axioms cover_17693

def state_17742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 31) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_17742 : String := "4240050705"
theorem cover_17742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_17742)
  decide +kernel
#print axioms cover_17742

def state_17747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
def hex_17747 : String := "424106064144420640064309060609"
theorem cover_17747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_17747)
  decide +kernel
#print axioms cover_17747

def state_17762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 10)))
def hex_17762 : String := "444207414342064006440706060706"
theorem cover_17762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_17762)
  decide +kernel
#print axioms cover_17762

def state_17778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_17778 : String := "434405414206050544410A0506"
theorem cover_17778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_17778)
  decide +kernel
#print axioms cover_17778

def state_17792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
def hex_17792 : String := "44414240054305440541424005434405410605444106050605050505414244404305064341420905054106090907420905"
theorem cover_17792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_17792)
  decide +kernel
#print axioms cover_17792

def state_17841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
def hex_17841 : String := "444142434044050644410A0541064206050A0A42080541420643440A060642430906430506"
theorem cover_17841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_17841)
  decide +kernel
#print axioms cover_17841

def state_17878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_17878 : String := "41420606420644400643070606"
theorem cover_17878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_17878)
  decide +kernel
#print axioms cover_17878

def state_17891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
def hex_17891 : String := "444142060642064340064408060606"
theorem cover_17891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_17891)
  decide +kernel
#print axioms cover_17891
end Mub6.Numerical.CircleFullPrototype.Forest
