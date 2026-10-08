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
def state_2558704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 190) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 194)))
def hex_2558704 : String := "42434144400A42090A0A444005420643090905414440420808420808400542090A444005080543410A44400542430A0A0A054144400A4208080A4440050805"
theorem cover_2558704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2558704)
  decide +kernel
#print axioms cover_2558704

def state_2558767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 190) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 194)))
def hex_2558767 : String := "42434107064144404208070707440840420607064341074440420707070741440707444008074042070707"
theorem cover_2558767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2558767)
  decide +kernel
#print axioms cover_2558767

def state_2558810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 190) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 195)))
def hex_2558810 : String := "4042430A0A0A4243060707"
theorem cover_2558810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2558810)
  decide +kernel
#print axioms cover_2558810

def state_2558821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 191) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 97)))
def hex_2558821 : String := "44404243050543050542430641440806064341444042064306080606064144084005070840054206430505"
theorem cover_2558821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2558821)
  decide +kernel
#print axioms cover_2558821

def state_2558865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 116 else 97)))
def hex_2558865 : String := "4144400A070A4440424305054305054243064107064307074005420607"
theorem cover_2558865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2558865)
  decide +kernel
#print axioms cover_2558865

def state_2558895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 190) else (if j.val < 3 then 115 else (if j.val < 4 then 117 else 97)))
def hex_2558895 : String := "444042430A410A44400508050A42430741074440080707430707400A07"
theorem cover_2558895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2558895)
  decide +kernel
#print axioms cover_2558895
end Mub6.Numerical.CircleFullD0.Forest
