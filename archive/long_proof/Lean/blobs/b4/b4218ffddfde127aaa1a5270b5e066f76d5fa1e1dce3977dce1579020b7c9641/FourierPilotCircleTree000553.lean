import FourierPilotCircleTree000554
import FourierPilotCircleTree000555
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000553
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![5, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000554.state FourierPilotCircleTree000555.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000554.covered FourierPilotCircleTree000555.covered
#print axioms covered
end FourierPilotCircleTree000553
