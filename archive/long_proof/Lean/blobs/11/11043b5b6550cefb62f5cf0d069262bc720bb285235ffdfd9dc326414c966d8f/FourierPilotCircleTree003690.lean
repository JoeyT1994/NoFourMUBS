import FourierPilotCircleTree003691
import FourierPilotCircleTree003692
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003690
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![98, 46, 32, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003691.state FourierPilotCircleTree003692.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003691.covered FourierPilotCircleTree003692.covered
#print axioms covered
end FourierPilotCircleTree003690
