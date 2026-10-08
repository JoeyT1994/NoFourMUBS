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
def state_19637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 40)))
def hex_19637 : String := "44410943420705074143420909420909434240444109074142430807430809A344094109A340440541080544094108A3424043440741090707430907400A0A"
theorem cover_19637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_19637)
  decide +kernel
#print axioms cover_19637

def state_19700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 40)))
def hex_19700 : String := "4044050A444109054143080943050A"
theorem cover_19700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_19700)
  decide +kernel
#print axioms cover_19700

def state_19717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_19717 : String := "41430806434442404106A34108A34005080606"
theorem cover_19717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_19717)
  decide +kernel
#print axioms cover_19717

def state_19736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_19736 : String := "41430844420640064308060643444240414243080608A34142430844090608A340084108A342400608074442400643414206440906A306400A43410A0A0A06"
theorem cover_19736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_19736)
  decide +kernel
#print axioms cover_19736

def state_19799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
def hex_19799 : String := "40410843080A414307440A074308440A07"
theorem cover_19799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_19799)
  decide +kernel
#print axioms cover_19799

def state_19817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 58) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_19817 : String := "43084409424041054308050507"
theorem cover_19817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_19817)
  decide +kernel
#print axioms cover_19817

def state_19831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 20)))
def hex_19831 : String := "4442404306440641080606064240080807"
theorem cover_19831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_19831)
  decide +kernel
#print axioms cover_19831

def state_19849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 40)))
def hex_19849 : String := "4240440941094342090942090909404409410943090909"
theorem cover_19849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_19849)
  decide +kernel
#print axioms cover_19849

def state_19875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 118) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_19875 : String := "43084442050905"
theorem cover_19875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_19875)
  decide +kernel
#print axioms cover_19875
end Mub6.Numerical.CircleFullPrototype.Forest
