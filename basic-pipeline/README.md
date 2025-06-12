### 📁 Project: Jenkins Basic Pipeline — Summary

This project demonstrates a **simple Jenkins pipeline setup** on an AWS EC2 instance using Terraform and Git.

#### ✅ Steps Completed:

1. **Created AWS EC2 Instance**

   * Provisioned via **Terraform** with `.tf` files.
   * Key pair generated for SSH access.
   * Inbound port `22` (SSH) and `8080` (Jenkins) opened in Security Group.

2. **Installed Jenkins on EC2**

   * Accessed Jenkins via: `http://<public-ip>:8080`
   * Installed required plugin: **Docker Pipeline**

3. **Set Up Git Project Structure**

   * Created GitHub repo: `Jenkins_Project_01`
   * Inside it, created 3 folders:

     * `basic-pipeline/` → (this project)
     * `multistage-docker-pipeline/`
     * `advanced-pipeline/`

4. **Created Jenkinsfile**

   * Added a sample `Jenkinsfile` to the `basic-pipeline/` folder.
   * The file defines a basic pipeline structure (can be customized later).

5. **Used Git for Version Control**

   * Initialized Git repo and connected to GitHub.
   * Created `.gitignore` to ignore:

     * Terraform state files
     * PEM/SSH key files
     * Hidden environment or system files

6. **Best Practices Followed**

   * Avoided pushing sensitive files (e.g., `.pem`, `.tfstate`) by using `.gitignore`.
   * Used `ls -a` and `git status` before staging and pushing code.
   * Structured folders cleanly for future multistage and advanced projects.


