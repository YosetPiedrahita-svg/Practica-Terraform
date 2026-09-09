# Práctica de Terraform: Infraestructura como Código en Google Cloud Platform

Este repositorio contiene la configuración de Terraform para el aprovisionamiento automatizado e idempotente de infraestructura en Google Cloud Platform (GCP).

## Estructura del Proyecto

- `main.tf`: Declaración principal de los proveedores y recursos de GCP.
- `variables.tf`: Definición de variables parametrizables (IDs de proyecto, regiones, zonas).
- `outputs.tf`: Salida de datos relevantes post-ejecución (IPs públicas, IDs de instancias).
- `evidencias/`: Capturas de pantalla con las validaciones de despliegue y estado de la consola de GCP.

## Requisitos Previos

- Cuenta de Google Cloud Platform con créditos o suscripción activa.
- Google Cloud Shell habilitado.
- Repositorio clonado localmente para el desarrollo y en Cloud Shell para la ejecución.

## Flujo de Trabajo y Comandos

1. **Sincronizar cambios en Cloud Shell:**
   ```bash
   git pull
   ```
