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
def state_1341775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
def hex_1341775 : String := "4342440A070742440A41400843070A070A"
theorem cover_1341775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1341775)
  decide +kernel
#print axioms cover_1341775

def state_1341792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
def hex_1341792 : String := "43424406414007050644090742440641434044060706404442060A4241430808060A440642064143064006060606440A4143070A07"
theorem cover_1341792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1341792)
  decide +kernel
#print axioms cover_1341792

def state_1341846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_1341846 : String := "41054243060505"
theorem cover_1341846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341846 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1341846)
  decide +kernel
#print axioms cover_1341846

def state_1341855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
def hex_1341855 : String := "434407404144054207054442070542080541074407420743404407410742074340050705070707"
theorem cover_1341855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 39) (hex := hex_1341855)
  decide +kernel
#print axioms cover_1341855

def state_1341894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_1341894 : String := "434405400541054244434005070543400544410742070941420705424340440641050606074340050905050505"
theorem cover_1341894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 45) (hex := hex_1341894)
  decide +kernel
#print axioms cover_1341894

def state_1341941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_1341941 : String := "4440414206050606404441420843400544050805084142084308050844414206430607064142430607434044060806404407410508074206430608"
theorem cover_1341941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1341941)
  decide +kernel
#print axioms cover_1341941

def state_1342000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
def hex_1342000 : String := "44400507404344410508080543440741070807"
theorem cover_1342000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1342000)
  decide +kernel
#print axioms cover_1342000

def state_1342021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 10)))
def hex_1342021 : String := "400542414306050609"
theorem cover_1342021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1342021)
  decide +kernel
#print axioms cover_1342021
end Mub6.Numerical.CircleFullD0.Forest
