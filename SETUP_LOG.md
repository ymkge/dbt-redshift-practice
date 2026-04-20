# プロジェクトセットアップ記録

## 1. 完了した作業
- [x] Python 仮想環境 (`venv`) の再構築
    - 以前のプロジェクトパス（`dbt-redshift-practice`）に依存していた古い `venv` を削除し、現在のパス（`dbt-duckdb-practice`）で再作成。
- [x] `dbt-duckdb` のインストール
    - DuckDB用アダプター（`dbt-duckdb v1.10.1`）および `dbt-core v1.11.8` をインストール。
- [x] プロジェクト構成の整理
    - Redshift向けだった `README.md` を DuckDB 実装に合わせて更新。
    - `dbt_project/profiles.yml` を作成し、ローカルの DuckDB (`dev.duckdb`) への接続設定を完了。
- [x] 接続確認 (`dbt debug`)
    - `dbt_project` ディレクトリ内での接続テストに成功。

## 2. 現在の環境情報
- **Python バージョン**: 3.12.8
- **dbt-core バージョン**: 1.11.8
- **dbt-duckdb バージョン**: 1.10.1
- **DuckDB バージョン**: 1.5.2
- **データベースファイル**: `./dbt_project/dev.duckdb`

## 3. 作業の再開方法
作業を再開する際は、以下のコマンドで仮想環境を有効化してください。
```bash
source venv/bin/activate
```

dbtコマンドを実行する際は、`dbt_project` ディレクトリへ移動し、ローカルの `profiles.yml` を参照するために以下のフラグを付けて実行することを推奨します。
```bash
cd dbt_project
dbt run --profiles-dir .
```

## 4. 次回のステップ (TODO)
- [ ] `dbt seed` を実行して初期データをロードする。
- [ ] `models/example/` 内のサンプルモデルを実行し、DuckDB 内にテーブルが作成されるか確認する。
- [ ] DuckDB 固有の機能（外部 Parquet ファイルの読み込み等）の検証。

---
*最終更新日: 2026-04-20*
*作成者: Gemini CLI*
