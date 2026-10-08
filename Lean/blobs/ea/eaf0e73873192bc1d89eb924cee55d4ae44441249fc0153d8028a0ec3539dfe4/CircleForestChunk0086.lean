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
def state_20617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_20617 : String := "424344070606434441404206A34207A34005070606"
theorem cover_20617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_20617)
  decide +kernel
#print axioms cover_20617

def state_20639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 60) else (if j.val < 3 then 118 else (if j.val < 4 then 41 else 41)))
def hex_20639 : String := "43440741064006440706440706"
theorem cover_20639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_20639)
  decide +kernel
#print axioms cover_20639

def state_20652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 60) else (if j.val < 3 then 119 else (if j.val < 4 then 41 else 41)))
def hex_20652 : String := "434441404241434407060607A342414344070A0707A340074207A341400644424106430906A3064009444209090944414006070706"
theorem cover_20652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_20652)
  decide +kernel
#print axioms cover_20652

def state_20705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 61) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_20705 : String := "4042074309084243440709074344070908"
theorem cover_20705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_20705)
  decide +kernel
#print axioms cover_20705

def state_20723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_20723 : String := "4344070A44074140420543440705050507"
theorem cover_20723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_20723)
  decide +kernel
#print axioms cover_20723

def state_20741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 20)))
def hex_20741 : String := "4441404306440642070606064140430A420A44410A0A410A0A0A40430A420A440A0A0A"
theorem cover_20741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_20741)
  decide +kernel
#print axioms cover_20741

def state_20777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 40)))
def hex_20777 : String := "4140070707"
theorem cover_20777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_20777)
  decide +kernel
#print axioms cover_20777

def state_20785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 118 else (if j.val < 4 then 41 else 41)))
def hex_20785 : String := "43440741050A440705"
theorem cover_20785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_20785)
  decide +kernel
#print axioms cover_20785

def state_20795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 119 else (if j.val < 4 then 82 else 41)))
def hex_20795 : String := "4441404241430A0707A342410A0AA3404207A34207A34140444241050AA34205A3444205A305404442430907A342090944420AA30A"
theorem cover_20795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 53) (hex := hex_20795)
  decide +kernel
#print axioms cover_20795

def state_20848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 119 else (if j.val < 4 then 83 else 41)))
def hex_20848 : String := "44414007434205A30507414006054043440806064344080505"
theorem cover_20848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_20848)
  decide +kernel
#print axioms cover_20848
end Mub6.Numerical.CircleFullPrototype.Forest
