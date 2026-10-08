import FourierPilotCircleTree001237
import FourierPilotCircleTree001238
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001236
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![80, 55, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001237.state FourierPilotCircleTree001238.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001237.covered FourierPilotCircleTree001238.covered
#print axioms covered
end FourierPilotCircleTree001236
