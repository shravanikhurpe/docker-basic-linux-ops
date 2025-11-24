# docker-basic-linux-ops

Dockerfile with basic Linux commands + DevOps concepts



Docker Basic Linux Operations



1\. Five DevOps Concepts



1\. CI/CD (Continuous Integration \& Continuous Deployment)

Automating the process of building, testing, and deploying software so changes reach production faster and more reliably.



&nbsp;2. Containerization

Using Docker to package an application with its dependencies so it runs consistently anywhere.



&nbsp;3. Infrastructure as Code (IaC)

Managing infrastructure through code using tools like Terraform or CloudFormation, instead of manual setup.



4\. Version Control (Git/GitHub)

Tracking changes, collaborating with others, and maintaining code history using Git.



\### 5. Continuous Monitoring

Keeping track of system health, logs, and performance using tools like Prometheus, Grafana, CloudWatch, etc.



---



&nbsp;2. How This Assignment Was Done (Step-by-Step Explanation)



I completed the assignment using Docker, Linux commands inside the container, Git, and GitHub.  

Below are the exact steps and commands used:



Step 1 — Create GitHub Repository

&nbsp;Created a new repository named `docker-basic-linux-ops`

&nbsp;Cloned it to my local machine



```

git clone https://github.com/<your-username>/docker-basic-linux-ops.git

cd docker-basic-linux-ops

```



Step 2 — Create Dockerfile



```

New-Item -Path . -Name "Dockerfile" -ItemType "file"

notepad Dockerfile

```



Added this content:



```

FROM ubuntu:latest



RUN apt-get update \&\& apt-get install -y \\

&nbsp;   curl \\

&nbsp;   wget \\

&nbsp;   nano \\

&nbsp;   iputils-ping \\

&nbsp;   tree



RUN mkdir /demo \&\& echo "Hello from inside Docker!" > /demo/message.txt



CMD \["/bin/bash"]

```



Step 3 — Build Docker Image



```

docker build -t basic-linux-ops:1.0 .

```



Step 4 — Run Docker Container



```

docker run -it basic-linux-ops:1.0

```



Inside container, ran:



```

ls

tree /

cat /demo/message.txt

```



Step 5 — Exit Container



```

exit

```



Step 6 — Update README.md



```

notepad README.md

```

Step 7 — Push to GitHub



```

git add .

git commit -m "Completed Docker assignment"

git push origin main

```



---

&nbsp;3. How This Assignment Helps Me Learn DevOps



&nbsp;✔ Docker  

I learned how to create a Dockerfile, build an image, run a container, and test Linux commands inside it.



✔ Linux  

I practiced basic Linux commands like `ls`, `cat`, `tree`, directory creation, etc.



✔ Git \& GitHub  

I learned how to clone a repository, add files, commit changes, and push them to GitHub.



✔ DevOps Skills  

This assignment teaches real-world DevOps workflows:

\- Making reproducible environments  

\- Using containers  

\- Following version control  

\- Writing documentation  

\- Running commands across Docker \& Linux  



---



✔ Assignment Completed Successfully!









