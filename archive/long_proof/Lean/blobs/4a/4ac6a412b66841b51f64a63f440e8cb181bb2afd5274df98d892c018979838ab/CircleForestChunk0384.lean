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
def state_167661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
def hex_167661 : String := "4442430A41050A430A41400A44430A42054140054405050A0A0A0A"
theorem cover_167661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_167661)
  decide +kernel
#print axioms cover_167661

def state_167691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 30)))
def hex_167691 : String := "434041074442084307400A080A410744080940054105440806"
theorem cover_167691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_167691)
  decide +kernel
#print axioms cover_167691

def state_167716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 30)))
def hex_167716 : String := "43074041444307050644434240410544430A05054107440807074205404105440505410644434205070506430706410644434240410608060742060606"
theorem cover_167716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_167716)
  decide +kernel
#print axioms cover_167716

def state_167777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 31)))
def hex_167777 : String := "4243070607"
theorem cover_167777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_167777)
  decide +kernel
#print axioms cover_167777

def state_167784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 30)))
def hex_167784 : String := "43400A094041444205434005080542054309050909"
theorem cover_167784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_167784)
  decide +kernel
#print axioms cover_167784

def state_167806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 30)))
def hex_167806 : String := "404144420A0A070A41444209050709"
theorem cover_167806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_167806)
  decide +kernel
#print axioms cover_167806

def state_167825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 94 else 60)))
def hex_167825 : String := "42400A41440809094041444307420A07070A41444307424041070A0807074443094209400A090A"
theorem cover_167825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_167825)
  decide +kernel
#print axioms cover_167825

def state_167865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 98 else (if j.val < 4 then 95 else 60)))
def hex_167865 : String := "40054105440909"
theorem cover_167865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_167865)
  decide +kernel
#print axioms cover_167865

def state_167873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 60)))
def hex_167873 : String := "41444342058F0543420507054443420A0A42058F430A42050A"
theorem cover_167873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 25) (hex := hex_167873)
  decide +kernel
#print axioms cover_167873
end Mub6.Numerical.CircleFullPrototype.Forest
