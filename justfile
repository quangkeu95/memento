start-worker:
	RUST_LOG=info cargo r --bin jito-workers -- --buckets jito-mainnet --max-workspaces 1 --ledger-path ~/workspaces/ledger

start-client:
	RUST_LOG=info cargo r --bin jito-replayer-backfill -- --config-file-path meteora-dynamic-pools-backfill.yaml --clickhouse-url tcp://localhost:9000 
