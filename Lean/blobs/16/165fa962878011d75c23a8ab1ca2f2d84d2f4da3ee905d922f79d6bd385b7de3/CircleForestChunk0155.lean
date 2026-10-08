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
def state_58544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
def hex_58544 : String := "44434207400A074240080740414407430A090841070743420A400A414407090A420A404144430A420A92430A050A4144430742060743420A92420692440A0A"
theorem cover_58544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_58544)
  decide +kernel
#print axioms cover_58544

def state_58607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
def hex_58607 : String := "0A"
theorem cover_58607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_58607)
  decide +kernel
#print axioms cover_58607

def state_58608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
def hex_58608 : String := "414407434207410707420641404406060640440743070606440543094208400A05"
theorem cover_58608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_58608)
  decide +kernel
#print axioms cover_58608

def state_58643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
def hex_58643 : String := "4443400641424409080606094340060840410542440905064142440905084244434009410842440643060906094308054443060908"
theorem cover_58643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_58643)
  decide +kernel
#print axioms cover_58643

def state_58697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 16)))
def hex_58697 : String := "43064140064244094306090640064244060606"
theorem cover_58697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_58697)
  decide +kernel
#print axioms cover_58697

def state_58716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 17)))
def hex_58716 : String := "4306414042440606064244430641094006420A0643414006420A060641400542444341050605054406054006420A0606400642444306414006420806060A06"
theorem cover_58716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_58716)
  decide +kernel
#print axioms cover_58716
end Mub6.Numerical.CircleFullPrototype.Forest
