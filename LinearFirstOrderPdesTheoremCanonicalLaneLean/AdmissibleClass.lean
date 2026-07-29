import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure LinearPDEAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  smoothStructure : Prop
  vectorField : domain → domain  -- smooth vector field
  firstOrderOperator : (domain → ℝ) → (domain → ℝ)  -- linear first-order PDE operator
  sourceTerm : domain → ℝ
  solutionSpace : Set (domain → ℝ)
  cauchyData : domain → ℝ
  existsSolution : ∃ u : domain → ℝ, 
    (∀ x : domain, firstOrderOperator u x = sourceTerm x) ∧ u ∈ solutionSpace

structure AdmissibleClass where
  object : LinearPDEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.existsSolution) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse
