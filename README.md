## Jaffle Shop Simple Contracts

A demonstration of simple SQL-based contracts using, but not highly coupled to dbt.

Thanks to [dbt-labs' Jaffle Shop](https://github.com/dbt-labs/jaffle_shop) for the base dbt project.

## Getting Started

Pre-Reqs:
- `dbt`
- `duckdb` (for convenience a profile is provided, you can change it to point to any database you want)

After cloning the repository:
- `dbt build` will seed and deploy the pipeline, then run the tests including the example contract tests.

## The Contracts

Example contract tests for a recommender and a marketing consumer are provided in [tests/contracts](tests/contracts).

```bashsession
$ dbt build|grep --color=never  assert
20:38:39  20 of 31 START test assert_all_statuses ........................................ [RUN]
20:38:39  20 of 31 PASS assert_all_statuses .............................................. [PASS in 0.04s]
20:38:39  21 of 31 START test assert_training_query_columns .............................. [RUN]
20:38:39  21 of 31 PASS assert_training_query_columns .................................... [PASS in 0.04s]
20:38:39  22 of 31 START test assert_training_query_status ............................... [RUN]
20:38:39  22 of 31 PASS assert_training_query_status ..................................... [PASS in 0.04s]
```