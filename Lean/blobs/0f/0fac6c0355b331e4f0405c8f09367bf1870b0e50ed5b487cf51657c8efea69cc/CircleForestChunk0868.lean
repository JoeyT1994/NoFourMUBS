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
def state_1508934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
def hex_1508934 : String := "414305424440054105430542060505054305424440410543054205054143054244400A0605054305420A050505"
theorem cover_1508934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1508934)
  decide +kernel
#print axioms cover_1508934

def state_1508979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
def hex_1508979 : String := "41434244080505424440410643060606064408054308424440410808080608"
theorem cover_1508979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1508979)
  decide +kernel
#print axioms cover_1508979

def state_1509011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
def hex_1509011 : String := "4244404108080840414305424440050805054305420A0541080808"
theorem cover_1509011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1509011)
  decide +kernel
#print axioms cover_1509011

def state_1509039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 30)))
def hex_1509039 : String := "44400A0A40414342440A07444041050508054207440A40070A430A0A41434206080A0A"
theorem cover_1509039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1509039)
  decide +kernel
#print axioms cover_1509039

def state_1509074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 30)))
def hex_1509074 : String := "4440414308420A080808404143420505424440414305420A0543050941080805440805430842440A050841430842440840410808060808"
theorem cover_1509074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1509074)
  decide +kernel
#print axioms cover_1509074

def state_1509129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
def hex_1509129 : String := "4143424408060842444041060A06064408404143080608064308420A08"
theorem cover_1509129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1509129)
  decide +kernel
#print axioms cover_1509129
end Mub6.Numerical.CircleFullD0.Forest
