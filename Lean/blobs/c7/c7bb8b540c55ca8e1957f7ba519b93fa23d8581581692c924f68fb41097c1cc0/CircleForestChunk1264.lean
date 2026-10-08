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
def state_1603810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
def hex_1603810 : String := "404241094344424009090942404309099F09444240099F09424041094309069F400609094241089F08"
theorem cover_1603810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1603810)
  decide +kernel
#print axioms cover_1603810

def state_1603852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
def hex_1603852 : String := "42414308444240060806064344424043410844420707074109079F4009084240434107050705084442404106069F4006084240069F064108430806"
theorem cover_1603852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1603852)
  decide +kernel
#print axioms cover_1603852

def state_1603911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
def hex_1603911 : String := "4241089F08"
theorem cover_1603911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1603911)
  decide +kernel
#print axioms cover_1603911

def state_1603922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 200)))
def hex_1603922 : String := "424043410944420609424043060706094109444208094240079F40079F9F404309099F"
theorem cover_1603922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1603922)
  decide +kernel
#print axioms cover_1603922

def state_1603957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 201)))
def hex_1603957 : String := "4240434144424007090942400705074442400705070741444240079F070744420707079F40434109074107079F"
theorem cover_1603957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1603957)
  decide +kernel
#print axioms cover_1603957

def state_1604002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 118 else 100)))
def hex_1604002 : String := "44424041434406420640070608089F404143440907444240079F0707434442060707089F4240414344420507054407050505404107079F"
theorem cover_1604002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1604002)
  decide +kernel
#print axioms cover_1604002
end Mub6.Numerical.CircleFullD0.Forest
