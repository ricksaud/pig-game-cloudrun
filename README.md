# Pig Game – Cloud Run Deployment

## Project Overview
This project demonstrates the deployment of a cloud-native web application on **Google Cloud Platform** using **containerisation** and **automated CI/CD pipelines**.

The application is a static JavaScript browser game (Pig Game) built using **HTML, CSS, and JavaScript**. The focus of the project is not application complexity, but **cloud deployment, automation, and infrastructure configuration** using managed Google Cloud services.

---

## Technologies Used
- HTML, CSS, JavaScript
- Docker
- Nginx
- GitHub
- Google Cloud Run
- Google Cloud Build
- Artifact Registry

---

## Application Description
The Pig Game is a two-player dice game where players take turns rolling a dice to accumulate points. Players can choose to roll again or hold their score. If a player rolls a one, their turn score is lost and the turn passes to the other player. The first player to reach the winning score wins the game.

The game logic runs entirely on the client side, making it suitable for deployment as a static web application.

---

## Cloud Architecture
- Users access the application via a public HTTPS URL provided by **Cloud Run**
- The application runs inside a **Docker container** served by **Nginx**
- Source code is hosted on **GitHub**
- **Cloud Build** is triggered automatically on every push to the `main` branch
- Docker images are stored in **Artifact Registry**
- Cloud Run pulls the image and deploys the service automatically

---

## CI/CD Pipeline
1. Code is pushed to the `main` branch on GitHub
2. A Cloud Build trigger starts automatically
3. A Docker image is built using the Dockerfile
4. The image is pushed to Artifact Registry
5. Cloud Run deploys a new revision of the application

No manual deployment steps are required.

---

## Deployment
The application is deployed on **Google Cloud Run** and is accessible via a public HTTPS endpoint.

To trigger a new deployment:
```bash
git commit -am "Update application"
git push
