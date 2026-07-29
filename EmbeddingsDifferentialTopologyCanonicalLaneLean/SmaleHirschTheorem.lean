import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure SmaleHirschPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  sourceDimension : ℕ
  targetDimension : ℕ
  sourceSmooth : Prop
  targetSmooth : Prop
  formalImmersionClassified : Prop
  hPrincipleHolds : Prop
  dimensionCondition : sourceDimension < targetDimension ∨ (sourceDimension = targetDimension ∧ sourceDimension ≠ 4)
  mainTheorem : hPrincipleHolds

structure SmaleHirschEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (S : SmaleHirschPackage M N) where
  sourceSmoothClosed : S.sourceSmooth
  targetSmoothClosed : S.targetSmooth
  formalImmersionClassifiedClosed : S.formalImmersionClassified
  hPrincipleHoldsClosed : S.hPrincipleHolds

def SmaleHirschClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (S : SmaleHirschPackage M N) : Prop :=
  S.sourceSmooth ∧ S.targetSmooth ∧ S.formalImmersionClassified ∧ S.hPrincipleHolds

theorem smale_hirsch_closed_from_evidence
    {M N : Type u} [TopologicalSpace M] [TopologicalSpace N]
    (S : SmaleHirschPackage M N) (E : SmaleHirschEvidence S) :
    SmaleHirschClosed S := by
  exact And.intro E.sourceSmoothClosed (And.intro E.targetSmoothClosed
    (And.intro E.formalImmersionClassifiedClosed E.hPrincipleHoldsClosed))

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse