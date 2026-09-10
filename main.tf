# Proveedor
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.0"
    }
  }
}

# Parámetros Globales de Conexión
provider "google" {
  project = var.proyecto
  region  = "us-central1"
  zone    = var.zona
}

# Creación de la Regla de Cortafuegos
resource "google_compute_firewall" "permitir_http" {
  name    = "permitir-http-yoset"
  network = "default"

  # Puertos
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # Filtro
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["servidor-web"]
}

# Creación de la máquina virtual
resource "google_compute_instance" "web" {
  name         = "web-tf-yoset"
  machine_type = var.tipo_maquina
  tags         = ["servidor-web"]
  allow_stopping_for_update   = true

  # Disco duro y sistema operativo
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  # Interfaz de red e IP asignada
  network_interface {
    network = "default"
    access_config {}
  }

  # Ejecutar el script al iniciar 
  metadata_startup_script = file("startup.sh")
}