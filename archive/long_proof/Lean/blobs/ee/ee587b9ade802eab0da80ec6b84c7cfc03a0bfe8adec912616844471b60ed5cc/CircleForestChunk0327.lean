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
def state_153872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_153872 : String := "4440414206094205064106054041420505054142050505"
theorem cover_153872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_153872)
  decide +kernel
#print axioms cover_153872

def state_153895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_153895 : String := "444041424306070942060606404142434408080808424305444007410605084305084142430A0A4308084243050A430508"
theorem cover_153895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_153895)
  decide +kernel
#print axioms cover_153895

def state_153946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_153946 : String := "404144420607094409420909414442064306064209434041440605050540094144060906440642054305410606"
theorem cover_153946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_153946)
  decide +kernel
#print axioms cover_153946

def state_153991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_153991 : String := "40414205094205430544090541420543050805"
theorem cover_153991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_153991)
  decide +kernel
#print axioms cover_153991

def state_154010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_154010 : String := "44404107074143440609070608"
theorem cover_154010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_154010)
  decide +kernel
#print axioms cover_154010

def state_154026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_154026 : String := "44424406400A41430506064406404109060A420A400907"
theorem cover_154026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_154026)
  decide +kernel
#print axioms cover_154026

def state_154049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_154049 : String := "4442434406400606440640094109064344064009060942430A4041090A41440909444243064109064306090A430A40094109440908"
theorem cover_154049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_154049)
  decide +kernel
#print axioms cover_154049

def state_154105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
def hex_154105 : String := "4041420A43080A4206434406400606064142430506084206430506"
theorem cover_154105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_154105)
  decide +kernel
#print axioms cover_154105
end Mub6.Numerical.CircleFullPrototype.Forest
