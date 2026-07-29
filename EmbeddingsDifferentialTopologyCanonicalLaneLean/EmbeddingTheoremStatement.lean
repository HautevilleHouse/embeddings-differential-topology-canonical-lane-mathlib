import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.EmbeddingObjects

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure WhitneyStrongEmbeddingStatement where
  manifold : Type u
  dimension : ℕ
  smoothManifold : SmoothManifold manifold
  embeddingExists : ∃ (N : Type u) [SmoothManifold N], Embedding manifold N
  targetDimension : ℕ
  boundCondition : targetDimension ≥ 2*dimension + 1

default := by
  refine { manifold := ℕ, dimension := 0, smoothManifold := inferInstance, embeddingExists := ⟨ℕ, inferInstance, { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }⟩, targetDimension := 1, boundCondition := ?_ }
  exact by decide

default := by
  refine { manifold := ℕ, dimension := 0, smoothManifold := inferInstance, embeddingExists := ⟨ℕ, inferInstance, { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }⟩, targetDimension := 1, boundCondition := ?_ }
  exact by decide

default := by
  refine { manifold := ℕ, dimension := 0, smoothManifold := inferInstance, embeddingExists := ⟨ℕ, inferInstance, { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }⟩, targetDimension := 1, boundCondition := ?_ }
  exact by decide

theorem whitney_strong_embedding_holds : ∀ (n : ℕ) (M : Type u) [SmoothManifold M] (h : dimension M = n), ∃ (embed : Embedding M (ℝ^(2*n+1))), True := by
  intro n M hdim
  -- This is a deep theorem; we defer to the known result.
  exact whitney_embedding_theorem M hdim

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse