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
def state_2336939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
def hex_2336939 : String := "40444241434044050A05400A0A43060A414305404405070543064044420606420606064241434007070A43060A410743064044420606070644420A05420A07"
theorem cover_2336939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2336939)
  decide +kernel
#print axioms cover_2336939

def state_2337004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 88)))
def hex_2337004 : String := "42410A0A414340444205054241050A074405058343404442410A0A41430583430683420A41434044420505070583430683444206080A83"
theorem cover_2337004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2337004)
  decide +kernel
#print axioms cover_2337004

def state_2337059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 89)))
def hex_2337059 : String := "42410A0A4143074044090707434044420A4107430683420A07440A07404483420A4107080A"
theorem cover_2337059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2337059)
  decide +kernel
#print axioms cover_2337059

def state_2337096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_2337096 : String := "44420A41050A420A41070A"
theorem cover_2337096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2337096)
  decide +kernel
#print axioms cover_2337096

def state_2337107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_2337107 : String := "4241434044090709090A41074340444241070A0707074044420A41074307400807420807440A07"
theorem cover_2337107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2337107)
  decide +kernel
#print axioms cover_2337107

def state_2337146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_2337146 : String := "44420A41050A420A41070A"
theorem cover_2337146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2337146)
  decide +kernel
#print axioms cover_2337146

def state_2337158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2337158 : String := "40444206060606"
theorem cover_2337158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2337158)
  decide +kernel
#print axioms cover_2337158
end Mub6.Numerical.CircleFullD0.Forest
