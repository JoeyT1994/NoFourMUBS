import FourierPilotCircleTree000072
import FourierPilotCircleTree000073
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000071
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 7, 6, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000072.state FourierPilotCircleTree000073.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000072.covered FourierPilotCircleTree000073.covered
#print axioms covered
end FourierPilotCircleTree000071
