(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Transaction.t : Transactions contain an array of Operations that are attributable to the same TransactionIdentifier. 
 *)

type t =
  { transaction_identifier : Transaction_identifier.t
  ; operations : Operation.t list
  ; related_transactions : Related_transaction.t list
  ; (* Transactions that are related to other transactions (like a cross-shard transaction) should include the tranaction_identifier of these transactions in the metadata.  *)
    metadata : Yojson.Safe.t option [@default None]
  }
[@@deriving yojson { strict = false }, show, eq]

(** Transactions contain an array of Operations that are attributable to the same TransactionIdentifier.  *)
let create (transaction_identifier : Transaction_identifier.t)
    (operations : Operation.t list) : t =
  { transaction_identifier
  ; operations
  ; related_transactions = []
  ; metadata = None
  }
