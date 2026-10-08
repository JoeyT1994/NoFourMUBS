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
def state_147301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_147301 : String := "43444042434408090843440841090944084140080908424344084140090A0A4408414008420708084344414008060541404342094407074209444107080943420A44410605414007060A42444140080608094441404306440641420607080605414009430A414209440607090A40430A080A44084140424309084344080944080942434408094407094344414008434406414206060844084142084008430644064106060808414009434142094440094306410609090941420544400943414205440605094105090509400943090944414008440841420543400844084105080508084140414205430905094105420543444008414205430905070505400841420743090707400808400942094341090941444009420943090905094440084207444143080708414340420744080642074407410507050840064206410506"
theorem cover_147301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 23) (count := 319) (hex := hex_147301)
  decide +kernel
#print axioms cover_147301

def state_147623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_147623 : String := "4307440841424007430744084107080708"
theorem cover_147623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_147623)
  decide +kernel
#print axioms cover_147623

def state_147641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
def hex_147641 : String := "44054142400743440541070544054142400743070705050505"
theorem cover_147641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_147641)
  decide +kernel
#print axioms cover_147641


end Mub6.Numerical.CircleFullPrototype.Forest
