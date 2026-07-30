import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceActionPotentialsLemmaCanonicalLaneLean.HodgkinHuxleyEquations

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure PropagationPackage where
  axonGeometry : Type u
  cableProperties : ℝ × ℝ × ℝ
  stimulationSite : ℝ
  recordingSite : ℝ
  conductionVelocity : ℝ

structure PropagationEvidence (P : PropagationPackage) where
  geometryNonEmpty : True
  cablePropertiesPositive : P.cableProperties.1 > 0 ∧ P.cableProperties.2.1 > 0 ∧ P.cableProperties.2.2 > 0
  conductionVelocityPositive : P.conductionVelocity > 0

def PropagationClosed (P : PropagationPackage) : Prop :=
  P.conductionVelocity > 0

theorem propagation_closed_from_evidence (P : PropagationPackage) (E : PropagationEvidence P) :
    PropagationClosed P :=
  E.conductionVelocityPositive

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse