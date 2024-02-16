start-worker:
	RUST_LOG=info cargo r --bin jito-workers -- --buckets jito-mainnet --max-workspaces 1 --slack-url https://hooks.slack.com/services/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 --ledger-path ~/workspaces/ledger

start-client:
	RUST_LOG=info cargo r --bin jito-replayer-backfill -- --config-file-path meteora-dynamic-pools-backfill.yaml --clickhouse-url tcp://localhost:9000 --slack-url https://hooks.slack.com/services/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
