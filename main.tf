resource "google_project_service" "ressource_manager" {
    service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "ressource_usage" {
    service = "serviceusage.googleapis.com"
    depends_on = [ google_project_service.ressource_manager ]
}

resource "google_project_service" "artifact" {
    service = "artifactregistry.googleapis.com"
    depends_on = [ google_project_service.ressource_manager ]
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-central1"
  repository_id = "website-tools"
  description   = "Exemple de repo Docker"
  format        = "DOCKER"

  depends_on = [ google_project_service.artifact ]
}

 # Création d'une bd MySQL
resource "google_sql_database" "wordpress" {
  name     = "wordpress"
  instance = "main-instance"
}

# Création d'un utilisateur de bd MySQL
resource "google_sql_user" "wordpress" {
   name     = "wordpress"
   instance = "main-instance"
   password = "ilovedevops"
}

 #Création du bucket
 #resource "google_storage_bucket" "default" {
 #    name          = "devops-session6-tp" 
 #    location      = "EU"
 #    force_destroy = true
 #   versioning {
 #       enabled = true
 #   }     
 #}


