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
def state_1333680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 94 else 51)))
def hex_1333680 : String := "404441080908444142430744400805070542434406064440090640410709074306440640090607"
theorem cover_1333680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1333680)
  decide +kernel
#print axioms cover_1333680

def state_1333720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
def hex_1333720 : String := "444108424340094409410842050940074407410807430940074407DB08"
theorem cover_1333720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1333720)
  decide +kernel
#print axioms cover_1333720

def state_1333751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 102)))
def hex_1333751 : String := "42434440080508440A0805"
theorem cover_1333751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1333751)
  decide +kernel
#print axioms cover_1333751

def state_1333765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 190 else 204)))
def hex_1333765 : String := "404142434409084440080A084309440908424309440740074142430644060606060941424306440640410806060506"
theorem cover_1333765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1333765)
  decide +kernel
#print axioms cover_1333765

def state_1333813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 206 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 190 else 205)))
def hex_1333813 : String := "41084243444009064005410705444041080541424344060505DB054005410805DB"
theorem cover_1333813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1333813)
  decide +kernel
#print axioms cover_1333813

def state_1333846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 207 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 190 else 205)))
def hex_1333846 : String := "41424307444041074208080707DB424306440640414243074440050505070506DB"
theorem cover_1333846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333846 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1333846)
  decide +kernel
#print axioms cover_1333846

def state_1333880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 191 else 204)))
def hex_1333880 : String := "40414243440A080A43440A080A07410A4243440640410A06060A43060A"
theorem cover_1333880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1333880)
  decide +kernel
#print axioms cover_1333880

def state_1333910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 206 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 191 else 205)))
def hex_1333910 : String := "41084243444007414205DB05400541080544074005410805DB"
theorem cover_1333910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1333910)
  decide +kernel
#print axioms cover_1333910
end Mub6.Numerical.CircleFullD0.Forest
