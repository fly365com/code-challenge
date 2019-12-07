# Fly365 DevOps Challenge Completed

I forked this repository to use as a basis for the challenge.

## The challenge

commit to the pupblic repo `https://github.com/Eslam1141/code-challenge.git`
on branch `dev` or `master`
## thier are two ways to have DEV and PROD Enviroment

- installed jenkins as linux service not as docker cause to connect docker to call docker to build will need 2 ways 
  1 - DND ( Docker in Docker ) to use docker service API inside docker container ( time limited )
  2 - to use the docker API socket with the docker for the container to act as one socket ( time limited )
- to deploy in other Cluster ( limited resourses )
- to deploy in diffrent namespace but that not the best thing ( limited resourses )

## to use view the job on jenkins 

login to `http://63.35.40.18:8080/` using credintials was sent in the mail 
and see on the provided server `ssh -v -i DevOps-Challenge.pem ubuntu@63.35.40.18`
the pods are running on minikube cluster

## Thanks for this Challenge
