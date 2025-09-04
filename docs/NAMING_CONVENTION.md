# Next Friday – Naming Convention

This document defines the company-wide naming standards used across Next Friday Co., Ltd.  
It ensures consistency, clarity, and scalability across repositories, databases, storage,  
infrastructure, application services, monitoring, domains, and collaboration tools.

---

## 1. GitHub Repository (Anchor)

### Repository Structure

```text
<org>-<project_name>-<tech>-<module>-<purpose>-<optional>[-lab]
```

### Repository Examples

```text
nfd-officialsite-nextjs-frontend
nfd-officialsite-nextjs-backoffice
nfd-order-nestjs-backend
nfd-core-qdrant-docker-template
nfd-experiment-nextjs-backend-lab
nfd-aiassistant-ollama-line-assistant
nfd-payment-nestjs-backend
nfd-auth-nestjs-backend
nfd-barber-nextjs-booking-frontend
nfd-amulet-core-ingest-service
```

---

## 2. Database (SQL / NoSQL / Vector)

### Database Structure

```text
<org>_<project_name>_<tech>_<module>_<purpose>_<dbtype>_<env>
```

### Database Examples

```text
nfd_officialsite_nextjs_frontend_mysql_prod
nfd_officialsite_nextjs_backoffice_pg_sit
nfd_order_nestjs_backend_pg_dev
nfd_order_nestjs_backend_pg_prod
nfd_payment_nestjs_backend_mysql_staging
nfd_auth_nestjs_backend_mongo_prod
nfd_core_qdrant_docker_template_qdrant_prod
nfd_aiassistant_ollama_line_assistant_pg_prod
nfd_experiment_nextjs_backend_pg_dev
nfd_barber_nextjs_booking_pg_prod
```

---

## 3. Object Storage (Filebase / S3 / MinIO)

### Storage Structure

```text
<org>_<project_name>_<tech>_<module>_<purpose>_<storage>_<env>
```

### Storage Examples

```text
nfd_officialsite_nextjs_frontend_uploads_filebase_prod
nfd_officialsite_nextjs_backoffice_backup_s3_dev
nfd_order_nestjs_backend_media_filebase_staging
nfd_payment_nestjs_backend_private_minio_prod
nfd_auth_nestjs_backend_exports_s3_dev
nfd_core_qdrant_docker_template_snapshots_minio_prod
nfd_aiassistant_ollama_line_assistant_uploads_filebase_prod
nfd_experiment_nextjs_backend_results_s3_staging
nfd_barber_nextjs_booking_assets_minio_prod
nfd_amulet_core_ingest_private_minio_staging
```

---

## 4. Cloud / Infra Resources

### Cloud Structure

```text
<org>-<project_name>-<tech>-<module>-<purpose>-<env>
```

### Cloud Examples

```text
nfd-officialsite-nextjs-frontend-prod
nfd-officialsite-nextjs-backoffice-sit
nfd-order-nestjs-backend-dev
nfd-order-nestjs-backend-prod
nfd-payment-nestjs-backend-staging
nfd-auth-nestjs-backend-prod
nfd-core-qdrant-docker-template-staging
nfd-aiassistant-ollama-line-assistant-prod
nfd-experiment-nextjs-backend-lab
nfd-barber-nextjs-booking-sit
```

---

## 5. Application Services (API / Microservices / Queues / Jobs)

### Service Structure

```text
<org>_<project_name>_<tech>_<module>_<purpose>_<service>_<env>
```

### Service Examples

```text
nfd_officialsite_nextjs_frontend_api_prod
nfd_officialsite_nextjs_backoffice_worker_queue_dev
nfd_order_nestjs_backend_api_prod
nfd_order_nestjs_backend_queue_dev
nfd_payment_nestjs_backend_cron_staging
nfd_auth_nestjs_backend_api_prod
nfd_core_qdrant_docker_template_service_prod
nfd_aiassistant_ollama_line_assistant_gateway_service_prod
nfd_experiment_nextjs_backend_api_dev
nfd_barber_nextjs_booking_api_prod
```

---

## 6. Monitoring / Logging

### Monitoring Structure

```text
<org>_<project_name>_<tech>_<module>_<purpose>_<tool>_<env>
```

### Monitoring Examples

```text
nfd_officialsite_nextjs_frontend_logs_prod
nfd_officialsite_nextjs_backoffice_metrics_sit
nfd_order_nestjs_backend_logs_dev
nfd_order_nestjs_backend_metrics_prod
nfd_payment_nestjs_backend_alerts_staging
nfd_auth_nestjs_backend_logs_prod
nfd_core_qdrant_docker_template_alerts_prod
nfd_aiassistant_ollama_line_assistant_monitor_prod
nfd_experiment_nextjs_backend_metrics_dev
nfd_barber_nextjs_booking_logs_prod
```

---

## 7. Front-facing (Domain / Subdomain / Chatbot ID)

### Domain Structure

```text
<env>.<project_name>.<org>.com
```

### Domain Examples

```text
prod.officialsite.nfd.com
sit.officialsite.nfd.com
dev.order.nfd.com
prod.order.nfd.com
staging.payment.nfd.com
prod.auth.nfd.com
staging.core.nfd.com
prod.aiassistant.nfd.com
dev.experiment.nfd.com
prod.barber.nfd.com
```

---

## 8. Collaboration Tools (Slack / Docs / Folders)

### Collaboration Structure

```text
<project_name>-<tech>-<module>-<purpose>-<env>
```

### Collaboration Examples

```text
officialsite-nextjs-frontend-prod
officialsite-nextjs-backoffice-sit
order-nestjs-backend-dev
order-nestjs-backend-prod
payment-nestjs-backend-staging
auth-nestjs-backend-prod
core-qdrant-docker-template-staging
aiassistant-ollama-line-assistant-prod
experiment-nextjs-backend-dev
barber-nextjs-booking-prod
```

---

## Summary

- GitHub Repository names are the **anchor** for all other resources.
- Database, storage, infra, services, monitoring, domains, and collaboration assets must derive  
  their names directly from the repository.
- Each resource type appends its own suffix (`_pg`, `_filebase`, `_logs`, `_api`, `_queue`, etc.) and  
  environment (`_dev`, `_prod`).
- This ensures **1:1 traceability** between repositories and associated resources.
