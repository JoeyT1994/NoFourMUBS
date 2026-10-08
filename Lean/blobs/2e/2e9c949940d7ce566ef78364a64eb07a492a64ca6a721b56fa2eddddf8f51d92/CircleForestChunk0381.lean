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
def state_166905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 95 else 59)))
def hex_166905 : String := "42054041054443420509054342054005410544050505414408430705440843420840410708084205400508"
theorem cover_166905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_166905)
  decide +kernel
#print axioms cover_166905

def state_166948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
def hex_166948 : String := "41440843080644084308420808"
theorem cover_166948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_166948)
  decide +kernel
#print axioms cover_166948

def state_166962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 28)))
def hex_166962 : String := "420806"
theorem cover_166962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_166962)
  decide +kernel
#print axioms cover_166962

def state_166966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 29)))
def hex_166966 : String := "43404144060806084041440742054308050708"
theorem cover_166966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_166966)
  decide +kernel
#print axioms cover_166966

def state_166986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 29)))
def hex_166986 : String := "404144064243064006084305400641440607050641440842080509"
theorem cover_166986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_166986)
  decide +kernel
#print axioms cover_166986

def state_167016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 58)))
def hex_167016 : String := "4306420706"
theorem cover_167016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_167016)
  decide +kernel
#print axioms cover_167016

def state_167022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 94 else 59)))
def hex_167022 : String := "424041440643080806084041440643064240064108064006414406070606414408434208074208404108060806"
theorem cover_167022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_167022)
  decide +kernel
#print axioms cover_167022

def state_167068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 98 else (if j.val < 4 then 95 else 59)))
def hex_167068 : String := "4041050708"
theorem cover_167068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_167068)
  decide +kernel
#print axioms cover_167068

def state_167074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 59)))
def hex_167074 : String := "414443064205400508434240054105084041440505064144088F060544064306420506"
theorem cover_167074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_167074)
  decide +kernel
#print axioms cover_167074

def state_167109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 59)))
def hex_167109 : String := "4144084342084041080808420540410544088F0844064342084006084207404144068F0608"
theorem cover_167109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_167109)
  decide +kernel
#print axioms cover_167109

def state_167146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 29)))
def hex_167146 : String := "4406430607"
theorem cover_167146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_167146)
  decide +kernel
#print axioms cover_167146
end Mub6.Numerical.CircleFullPrototype.Forest
