import FourierPilotCircleTree001631
import FourierPilotCircleTree001632
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001630
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001631.state FourierPilotCircleTree001632.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001631.covered FourierPilotCircleTree001632.covered
#print axioms covered
end FourierPilotCircleTree001630
