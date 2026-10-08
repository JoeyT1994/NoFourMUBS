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
def state_2243646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_2243646 : String := "424340414405074408080507434041054405424340410508054041050705430540060505400605"
theorem cover_2243646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2243646)
  decide +kernel
#print axioms cover_2243646

def state_2243685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_2243685 : String := "4207434044410742074340444107420743404441054243400A070743E6400A070A44050707070707070707"
theorem cover_2243685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 43) (hex := hex_2243685)
  decide +kernel
#print axioms cover_2243685

def state_2243729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_2243729 : String := "42430840080843404144084208434041440842084340414405420843E609080840090808084009080808400908"
theorem cover_2243729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 45) (hex := hex_2243729)
  decide +kernel
#print axioms cover_2243729

def state_2243775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 11)))
def hex_2243775 : String := "4340414442074308070744080541070807"
theorem cover_2243775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2243775)
  decide +kernel
#print axioms cover_2243775

def state_2243797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 8 else 22)))
def hex_2243797 : String := "434041444207434041070607070744080541070807"
theorem cover_2243797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2243797)
  decide +kernel
#print axioms cover_2243797

def state_2243823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 16 else 44)))
def hex_2243823 : String := "43404144420743400A0707074408054107084041070707"
theorem cover_2243823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2243823)
  decide +kernel
#print axioms cover_2243823

def state_2243848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 32 else 44)))
def hex_2243848 : String := "414442434041440A074408420505410708400A0743E6404144090709410744080742074344E605074442084341E6050905"
theorem cover_2243848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2243848)
  decide +kernel
#print axioms cover_2243848
end Mub6.Numerical.CircleFullD0.Forest
