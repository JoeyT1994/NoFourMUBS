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
def state_380761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
def hex_380761 : String := "44414440424306060A0A06444007060606"
theorem cover_380761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_380761)
  decide +kernel
#print axioms cover_380761

def state_380781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
def hex_380781 : String := "44404241444307400742060706070742060A400706"
theorem cover_380781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_380781)
  decide +kernel
#print axioms cover_380781

def state_380802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
def hex_380802 : String := "44404241434440050507440540070507414307070742414344400505064405400505430605410A430A0540074206414306444007060606"
theorem cover_380802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_380802)
  decide +kernel
#print axioms cover_380802

def state_380857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_380857 : String := "430744400742050507"
theorem cover_380857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_380857)
  decide +kernel
#print axioms cover_380857

def state_380866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
def hex_380866 : String := "41430640070606"
theorem cover_380866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_380866)
  decide +kernel
#print axioms cover_380866

def state_380873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
def hex_380873 : String := "4344410A42070A410606444142430A4440070A40070A0A420743070741424306070807"
theorem cover_380873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_380873)
  decide +kernel
#print axioms cover_380873

def state_380908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_380908 : String := "07"
theorem cover_380908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_380908)
  decide +kernel
#print axioms cover_380908

def state_380909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_380909 : String := "4142430644404143064442060A06060606430A440A0642064344404206050506440506"
theorem cover_380909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_380909)
  decide +kernel
#print axioms cover_380909

def state_380944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_380944 : String := "40414206060606"
theorem cover_380944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_380944)
  decide +kernel
#print axioms cover_380944

def state_380952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_380952 : String := "4344404441420643440506064206074106064405060606"
theorem cover_380952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_380952)
  decide +kernel
#print axioms cover_380952
end Mub6.Numerical.CircleFullPrototype.Forest
