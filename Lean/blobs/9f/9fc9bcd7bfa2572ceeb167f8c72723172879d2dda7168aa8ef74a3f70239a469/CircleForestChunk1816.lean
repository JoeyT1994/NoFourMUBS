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
def state_2308992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 21)))
def hex_2308992 : String := "424340440543050A0540070A4340440542430541050A050540444207430507424341050707434105404405420743050705414044050505074405420A05"
theorem cover_2308992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2308992)
  decide +kernel
#print axioms cover_2308992

def state_2309053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 10)))
def hex_2309053 : String := "40414407424307060607414442074305400605424340410507050A434041054405420605054006094407420743404407420741434006050607440A0A40070A"
theorem cover_2309053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2309053)
  decide +kernel
#print axioms cover_2309053

def state_2309123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 22)))
def hex_2309123 : String := "4044074143070707440A410A07"
theorem cover_2309123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2309123)
  decide +kernel
#print axioms cover_2309123

def state_2309138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 44)))
def hex_2309138 : String := "41434207404407410607440541050742074006440641060707"
theorem cover_2309138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2309138)
  decide +kernel
#print axioms cover_2309138

def state_2309166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 45)))
def hex_2309166 : String := "444007410A07404143420744074007410807070741430A0A0A"
theorem cover_2309166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2309166)
  decide +kernel
#print axioms cover_2309166

def state_2309192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 90)))
def hex_2309192 : String := "404143424406060606074143420A05420A06430A0A"
theorem cover_2309192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2309192)
  decide +kernel
#print axioms cover_2309192

def state_2309214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 91)))
def hex_2309214 : String := "4143424440064106074006410608440608064342070807"
theorem cover_2309214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2309214)
  decide +kernel
#print axioms cover_2309214
end Mub6.Numerical.CircleFullD0.Forest
