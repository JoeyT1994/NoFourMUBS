import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1591063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_1591063 : String := "414342064406404306410707064244070A44404107090740410A0A07430642444008060A44404143060A080640410A0A4143060706"
theorem cover_1591063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1591063)
  decide +kernel
#print axioms cover_1591063

def state_1591120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 25)))
def hex_1591120 : String := "4443410A0A0A43410A0A0A"
theorem cover_1591120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1591120)
  decide +kernel
#print axioms cover_1591120

def state_1591134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 50)))
def hex_1591134 : String := "40420A4409434009090A42440A0A440943410940090941090A"
theorem cover_1591134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1591134)
  decide +kernel
#print axioms cover_1591134

def state_1591159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 50)))
def hex_1591159 : String := "40420A44434109090A434140090A0A0A42440A0A44434109064109400906434140420A0942050940420A44090A05410A400A0A"
theorem cover_1591159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1591159)
  decide +kernel
#print axioms cover_1591159

def state_1591210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 50)))
def hex_1591210 : String := "41400A0A400A0A"
theorem cover_1591210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1591210)
  decide +kernel
#print axioms cover_1591210

def state_1591219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 51)))
def hex_1591219 : String := "40420A444340060A060642440A05444341400A08400A05410A0A43410805410A0A"
theorem cover_1591219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1591219)
  decide +kernel
#print axioms cover_1591219

def state_1591252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 51)))
def hex_1591252 : String := "40420A444341400A0A400A0A0A434140060A4007050A4205444341404205440A050505410A0A05"
theorem cover_1591252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1591252)
  decide +kernel
#print axioms cover_1591252

def state_1591291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 51)))
def hex_1591291 : String := "4140060A400A0A"
theorem cover_1591291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1591291)
  decide +kernel
#print axioms cover_1591291

def state_1591298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 25)))
def hex_1591298 : String := "420A440A0A"
theorem cover_1591298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1591298)
  decide +kernel
#print axioms cover_1591298

def state_1591305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 25)))
def hex_1591305 : String := "440A410A05"
theorem cover_1591305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1591305)
  decide +kernel
#print axioms cover_1591305
end Mub6.Numerical.CircleFullD0.Forest
